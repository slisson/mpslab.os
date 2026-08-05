import type { PrimitiveName, StubDeclaration, StubModule, StubType } from "./schema.js";

/**
 * Turns a stub module into MPS roots, in the generic `§Concept { … }` syntax that `write_root`
 * reads. Only what the language can build today is emitted; everything else is reported, so a
 * skipped declaration reads as a work item rather than as silence.
 */

const PRIMITIVE_CONCEPT: Record<PrimitiveName, string> = {
  string: "TSStringType",
  number: "TSNumberType",
  boolean: "TSBooleanType",
  void: "TSVoidType",
  null: "TSNullType",
  undefined: "TSUndefinedType",
  unknown: "TSUnknownType",
  never: "TSNeverType",
};

export interface ImportPlan {
  specifier: string;
  /** The names that made it into the single `TSDeclarationFile` root, in declaration order. */
  imported: string[];
  /** That root, in MPS's generic syntax — empty when nothing could be imported. */
  root: string | null;
  skipped: SkippedDeclaration[];
}

export interface SkippedDeclaration {
  name: string;
  kind: StubDeclaration["kind"] | "export=";
  /** The first thing in it the language has no concept for. */
  blockedBy: string;
}

export function planImport(module: StubModule): ImportPlan {
  const imported: string[] = [];
  const declarations: string[] = [];
  const skipped: SkippedDeclaration[] = [];

  for (const declaration of module.declarations) {
    const blocked = blockerOf(declaration.type);
    if (blocked) {
      skipped.push({ name: declaration.name, kind: declaration.kind, blockedBy: blocked });
      continue;
    }
    imported.push(declaration.name);
    const [concept, role] =
      declaration.kind === "type"
        ? (["TSTypeAlias", "aliasedType"] as const)
        : (["TSAmbientDeclaration", "declaredType"] as const);
    declarations.push(
      `declarations: ${block(
        concept,
        [`name = ${JSON.stringify(declaration.name)}`, `${role}: ${render(declaration.type, 4)}`],
        2,
      )}`,
    );
  }

  // A declaration file has nowhere to put one, whatever its type turns out to be.
  if (module.exportEquals) {
    skipped.push({
      name: "export=",
      kind: "export=",
      blockedBy: blockerOf(module.exportEquals) ?? "export= declaration",
    });
  }

  // One `.d.ts` is one file of many declarations, so one module is one root.
  const root =
    declarations.length === 0
      ? null
      : block(
          "TSDeclarationFile",
          [`name = ${JSON.stringify(module.specifier)}`, ...declarations],
          0,
        );

  return { specifier: module.specifier, imported, root, skipped };
}

/** The first construct in a type that has no concept in the language, or null if it is buildable. */
export function blockerOf(type: StubType): string | null {
  switch (type.kind) {
    case "unsupported":
      return type.missing;
    case "array":
      return blockerOf(type.element);
    case "union":
      // A union of one is a tree that reads as its single member and is not that member.
      if (type.members.length < 2) return "union of fewer than two members";
      return first(type.members.map(blockerOf));
    case "object":
      return first(type.members.map((m) => blockerOf(m.type)));
    case "function":
      return first([...type.parameters.map((p) => blockerOf(p.type)), blockerOf(type.returnType)]);
    default:
      return null;
  }
}

function first(blockers: (string | null)[]): string | null {
  return blockers.find((b) => b !== null) ?? null;
}

function render(type: StubType, indent: number): string {
  switch (type.kind) {
    case "primitive":
      return block(PRIMITIVE_CONCEPT[type.name], [], indent);
    // Resolved by name against the declaration file's own scope, so a stub's types bind inside it.
    case "reference":
      return block("TSTypeReference", [`declaration -> ${type.name}`], indent);
    case "array":
      return block("TSArrayType", [`elementType: ${render(type.element, indent + 2)}`], indent);
    case "union":
      return block(
        "TSUnionType",
        type.members.map((m) => `types: ${render(m, indent + 2)}`),
        indent,
      );
    case "object":
      return block(
        "TSObjectType",
        type.members.map((m) =>
          `members: ${block(
            "TSPropertySignature",
            [
              ...(m.optional ? ['isOptional = "true"'] : []),
              `name = ${JSON.stringify(m.name)}`,
              `declaredType: ${render(m.type, indent + 4)}`,
            ],
            indent + 2,
          )}`,
        ),
        indent,
      );
    case "function":
      return block(
        "TSFunctionType",
        [
          ...type.parameters.map((p) =>
            `parameters: ${block(
              "TSFunctionTypeParameter",
              [
                ...(p.optional ? ['isOptional = "true"'] : []),
                ...(p.rest ? ['isRest = "true"'] : []),
                `name = ${JSON.stringify(p.name)}`,
                `declaredType: ${render(p.type, indent + 4)}`,
              ],
              indent + 2,
            )}`,
          ),
          `returnType: ${render(type.returnType, indent + 2)}`,
        ],
        indent,
      );
    default:
      throw new Error(`not buildable: ${type.kind} — planImport should have skipped it`);
  }
}

/** The closing brace aligns with the line that opened the node, as `read_model` writes it. */
function block(concept: string, body: string[], indent: number): string {
  const pad = " ".repeat(indent);
  if (body.length === 0) return `§${concept} {\n${pad}}`;
  return `§${concept} {\n${body.map((line) => `${pad}  ${line}`).join("\n")}\n${pad}}`;
}
