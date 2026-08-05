import { API, SignatureKind, SymbolFlags, TypeFlags } from "typescript/unstable/sync";
import type {
  Checker,
  Symbol as TsSymbol,
  Type,
} from "typescript/unstable/sync";
import { SyntaxKind } from "typescript/unstable/ast";
import type { __String, ParameterDeclaration } from "typescript/unstable/ast";
import * as path from "node:path";
import type {
  MissingConstruct,
  PrimitiveName,
  StubDeclaration,
  StubMember,
  StubModule,
  StubParameter,
  StubType,
} from "./schema.js";

export interface ExtractOptions {
  /** Directory the module specifiers resolve from; must contain the `node_modules` to read. */
  cwd: string;
  specifiers: string[];
}

const ENTRY = "__dts_extract_entry__.ts";
const CONFIG = "__dts_extract_tsconfig__.json";

const TYPE_SYMBOL = SymbolFlags.Interface | SymbolFlags.TypeAlias | SymbolFlags.Class | SymbolFlags.Enum;
const VALUE_SYMBOL =
  SymbolFlags.Variable |
  SymbolFlags.BlockScopedVariable |
  SymbolFlags.FunctionScopedVariable |
  SymbolFlags.Function |
  SymbolFlags.Class |
  SymbolFlags.Enum;

const PRIMITIVES: ReadonlyArray<readonly [number, PrimitiveName]> = [
  [TypeFlags.String, "string"],
  [TypeFlags.Number, "number"],
  [TypeFlags.Boolean, "boolean"],
  [TypeFlags.Void, "void"],
  [TypeFlags.Undefined, "undefined"],
  [TypeFlags.Null, "null"],
  [TypeFlags.Never, "never"],
  [TypeFlags.Unknown, "unknown"],
];

export function extract(options: ExtractOptions): StubModule[] {
  const entryFile = path.join(options.cwd, ENTRY);
  const configFile = path.join(options.cwd, CONFIG);
  const entry = buildEntry(options.specifiers);

  // Overlaid rather than written to disk: extraction must not touch the caller's tree.
  // Returning undefined for anything else is what falls the server back to the real FS.
  const overlay = new Map<string, string>([
    [entryFile, entry.text],
    [configFile, JSON.stringify(CONFIG_CONTENT)],
  ]);
  const api = new API({
    cwd: options.cwd,
    fs: {
      readFile: (file) => overlay.get(file),
      fileExists: (file) => (overlay.has(file) ? true : undefined),
    },
  });

  try {
    const project = api.updateSnapshot({ openProjects: [configFile] }).getProjects()[0];
    if (!project) throw new Error(`no project opened for ${options.cwd}`);
    const checker = project.checker;
    return options.specifiers.map((specifier, i) => {
      const moduleSymbol = checker.getSymbolAtPosition(entryFile, entry.offsets[i]!);
      if (!moduleSymbol) throw new Error(`cannot resolve module "${specifier}" from ${options.cwd}`);
      return convertModule(checker, moduleSymbol, specifier);
    });
  } finally {
    api.close();
  }
}

const CONFIG_CONTENT = {
  compilerOptions: {
    target: "es2022",
    module: "nodenext",
    moduleResolution: "nodenext",
    types: ["node"],
    strict: true,
    noEmit: true,
    skipLibCheck: true,
  },
  files: [ENTRY],
};

/** One import per specifier, with the offset of each specifier string recorded for lookup. */
function buildEntry(specifiers: string[]): { text: string; offsets: number[] } {
  const offsets: number[] = [];
  let text = "";
  specifiers.forEach((specifier, i) => {
    const line = `import * as m${i} from ${JSON.stringify(specifier)};\n`;
    offsets.push(text.length + line.indexOf('"') + 1);
    text += line;
  });
  return { text, offsets };
}

interface Context {
  checker: Checker;
  /** Symbol id → declared name, for every type this module emits as a named declaration. */
  namedTypes: Map<number, string>;
  /** Type ids on the current conversion path, so a cycle outside `namedTypes` cannot hang. */
  visiting: Set<number>;
}

function convertModule(checker: Checker, moduleSymbol: TsSymbol, specifier: string): StubModule {
  const exported = checker.getExportsOfModule(moduleSymbol).map((s) => resolveAlias(checker, s));
  const context: Context = {
    checker,
    namedTypes: new Map(
      exported.filter((s) => s.flags & TYPE_SYMBOL).map((s) => [s.id, s.name] as const),
    ),
    visiting: new Set(),
  };

  const declarations = exported.flatMap((symbol) => convertExport(context, symbol));

  // `export =` is not in the export table's named entries; its value is the module itself.
  const exportEquals = moduleSymbol.getExports().get("export=" as __String);
  const exportEqualsType = exportEquals
    ? checker.getTypeOfSymbol(resolveAlias(checker, exportEquals))
    : undefined;

  return {
    specifier,
    declarations,
    ...(exportEqualsType ? { exportEquals: convertType(context, exportEqualsType) } : {}),
  };
}

function resolveAlias(checker: Checker, symbol: TsSymbol): TsSymbol {
  if (!(symbol.flags & SymbolFlags.Alias)) return symbol;
  const target = checker.getAliasedSymbol(symbol);
  return checker.isUnknownSymbol(target) ? symbol : target;
}

/** A merged symbol is both, and owes a declaration of each kind — `punycode.ucs2` is one. */
function convertExport(context: Context, symbol: TsSymbol): StubDeclaration[] {
  const declarations: StubDeclaration[] = [];
  if (symbol.flags & TYPE_SYMBOL) {
    const declared = context.checker.getDeclaredTypeOfSymbol(symbol);
    declarations.push({
      kind: "type",
      name: symbol.name,
      type: declared.isErrorType()
        ? unsupported(context, declared, "unresolved-type")
        : convertStructure(context, declared),
    });
  }
  if (symbol.flags & VALUE_SYMBOL) {
    const type = context.checker.getTypeOfSymbol(symbol);
    declarations.push({
      kind: "value",
      name: symbol.name,
      type: type ? convertType(context, type) : { kind: "unsupported", text: "unknown", missing: "other" },
    });
  }
  return declarations;
}

/** A named type is referenced rather than expanded — the whole of what makes binding work. */
function convertType(context: Context, type: Type): StubType {
  const name = context.namedTypes.get(type.getSymbol()?.id ?? -1);
  if (name !== undefined) return { kind: "reference", name };
  if (context.visiting.has(type.id)) return unsupported(context, type, "recursive-type");
  context.visiting.add(type.id);
  try {
    return convertStructure(context, type);
  } finally {
    context.visiting.delete(type.id);
  }
}

function convertStructure(context: Context, type: Type): StubType {
  const { checker } = context;

  // Before the union check: `boolean` is a union of two literal types internally.
  for (const [flag, name] of PRIMITIVES) {
    if (type.flags & flag) return { kind: "primitive", name };
  }

  if (checker.isArrayType(type)) {
    const element = checker.getTypeArguments(type as never)[0];
    return element
      ? { kind: "array", element: convertType(context, element) }
      : unsupported(context, type, "generic-type");
  }

  if (type.isUnionType()) {
    const members = type.getTypes();
    if (!members?.length) return unsupported(context, type, "other");
    return { kind: "union", members: members.map((m) => convertType(context, m)) };
  }

  const properties = checker.getPropertiesOfType(type);
  const callSignatures = checker.getSignaturesOfType(type, SignatureKind.Call);
  const constructSignatures = checker.getSignaturesOfType(type, SignatureKind.Construct);
  const indexInfos = checker.getIndexInfosOfType(type);

  // Structural conversion only where properties or a single call signature are the whole of it.
  // Anything else — overloads, index signatures, callable objects — goes out unsupported rather
  // than silently losing the part that does not fit.
  if (constructSignatures.length === 0 && indexInfos.length === 0) {
    if (callSignatures.length === 1 && properties.length === 0) {
      const signature = callSignatures[0]!;
      const returnType = checker.getReturnTypeOfSignature(signature);
      return {
        kind: "function",
        parameters: signature.getParameters().map((p) => convertParameter(context, p)),
        returnType: returnType ? convertType(context, returnType) : { kind: "primitive", name: "void" },
      };
    }
    if (callSignatures.length === 0 && type.isObjectType()) {
      return { kind: "object", members: properties.map((p) => convertMember(context, p)) };
    }
  }

  // Only an object type is described by its signatures. A string literal answers
  // `getIndexInfosOfType` from its apparent type, and would otherwise report as one.
  if (type.isObjectType()) {
    if (constructSignatures.length > 0) return unsupported(context, type, "constructor-type");
    if (indexInfos.length > 0) return unsupported(context, type, "index-signature");
    if (callSignatures.length > 1) return unsupported(context, type, "overloaded-function");
    if (callSignatures.length === 1) return unsupported(context, type, "callable-object");
  }
  return unsupported(context, type, classify(checker, type));
}

/** Which TypeScript construct a type that reached no branch above actually is. */
function classify(checker: Checker, type: Type): MissingConstruct {
  if (type.isErrorType()) return "unresolved-type";
  if (type.flags & TypeFlags.Any) return "any-type";
  if (type.isTypeParameter()) return "type-parameter";
  if (type.isLiteralType()) return "literal-type";
  if (type.isTupleType()) return "tuple-type";
  if (type.isIntersectionType()) return "intersection-type";
  if (type.isConditionalType()) return "conditional-type";
  if (type.isIndexType() || type.isIndexedAccessType()) return "indexed-access-type";
  if (type.isTemplateLiteralType() || type.isStringMappingType()) return "template-literal-type";
  if (type.isTypeReference() && checker.getTypeArguments(type).length > 0) return "generic-type";
  return "other";
}

function convertMember(context: Context, symbol: TsSymbol): StubMember {
  const optional = Boolean(symbol.flags & SymbolFlags.Optional);
  const type = context.checker.getTypeOfSymbol(symbol);
  return {
    name: symbol.name,
    optional,
    type: declaredType(context, type, optional),
  };
}

/**
 * `SymbolFlags.Optional` is set on optional properties but not on optional parameters, so `?`
 * and `...` are read off the declaration instead.
 */
function convertParameter(context: Context, symbol: TsSymbol): StubParameter {
  const declaration = parameterDeclaration(symbol);
  const optional = Boolean(declaration?.questionToken ?? declaration?.initializer);
  const type = context.checker.getTypeOfSymbol(symbol);
  return {
    name: symbol.name,
    optional,
    rest: Boolean(declaration?.dotDotDotToken),
    type: declaredType(context, type, optional),
  };
}

function parameterDeclaration(symbol: TsSymbol): ParameterDeclaration | undefined {
  const node = symbol.valueDeclaration?.resolve();
  return node?.kind === SyntaxKind.Parameter ? (node as ParameterDeclaration) : undefined;
}

/**
 * `?` and `| undefined` say the same thing twice: the checker gives `string | undefined` for a
 * `suffix?: string`, and the language carries the optionality on the declaration instead.
 */
function declaredType(context: Context, type: Type | undefined, optional: boolean): StubType {
  if (!type) return { kind: "unsupported", text: "unknown", missing: "other" };
  const converted = convertType(context, type);
  if (!optional || converted.kind !== "union") return converted;
  const members = converted.members.filter(
    (m) => !(m.kind === "primitive" && m.name === "undefined"),
  );
  if (members.length === 0) return converted;
  return members.length === 1 ? members[0]! : { kind: "union", members };
}

function unsupported(context: Context, type: Type, missing: MissingConstruct): StubType {
  return { kind: "unsupported", text: context.checker.typeToString(type), missing };
}
