import type { StubModule, StubType } from "./schema.js";
import { blockerOf } from "./notation.js";

/**
 * A node-construction stream: one tab-separated record per line, read by a stack machine.
 *
 *   N <role> <concept>   begin a node in that role of the current node; role is empty for the root
 *   P <name> <value>     set a property on the current node
 *   R <link> <name>      set a reference, resolved by name once the tree is built
 *   E                    end the current node
 *
 * The JVM side has no JSON dependency, and a parser written in BaseLanguage would be a great deal
 * of work for a format only this program produces. See *Importing a .d.ts* in ROADMAP.md.
 */

const PRIMITIVE_CONCEPT: Record<string, string> = {
  string: "TSStringType",
  number: "TSNumberType",
  boolean: "TSBooleanType",
  void: "TSVoidType",
  null: "TSNullType",
  undefined: "TSUndefinedType",
  unknown: "TSUnknownType",
  never: "TSNeverType",
};

export function streamOf(module: StubModule): string {
  const out: string[] = [];
  out.push(record("N", "", "TSDeclarationFile"));
  out.push(record("P", "name", module.specifier));
  for (const declaration of module.declarations) {
    if (blockerOf(declaration.type)) continue;
    const [concept, role] =
      declaration.kind === "type"
        ? (["TSTypeAlias", "aliasedType"] as const)
        : (["TSAmbientDeclaration", "declaredType"] as const);
    out.push(record("N", "declarations", concept));
    out.push(record("P", "name", declaration.name));
    emitType(declaration.type, role, out);
    out.push("E");
  }
  out.push("E");
  return out.join("\n") + "\n";
}

function emitType(type: StubType, role: string, out: string[]): void {
  switch (type.kind) {
    case "primitive":
      out.push(record("N", role, PRIMITIVE_CONCEPT[type.name]!));
      out.push("E");
      return;
    case "reference":
      out.push(record("N", role, "TSTypeReference"));
      out.push(record("R", "declaration", type.name));
      out.push("E");
      return;
    case "array":
      out.push(record("N", role, "TSArrayType"));
      emitType(type.element, "elementType", out);
      out.push("E");
      return;
    case "union":
      out.push(record("N", role, "TSUnionType"));
      for (const member of type.members) emitType(member, "types", out);
      out.push("E");
      return;
    case "object":
      out.push(record("N", role, "TSObjectType"));
      for (const member of type.members) {
        out.push(record("N", "members", "TSPropertySignature"));
        if (member.optional) out.push(record("P", "isOptional", "true"));
        out.push(record("P", "name", member.name));
        emitType(member.type, "declaredType", out);
        out.push("E");
      }
      out.push("E");
      return;
    case "function":
      out.push(record("N", role, "TSFunctionType"));
      for (const parameter of type.parameters) {
        out.push(record("N", "parameters", "TSFunctionTypeParameter"));
        if (parameter.optional) out.push(record("P", "isOptional", "true"));
        if (parameter.rest) out.push(record("P", "isRest", "true"));
        out.push(record("P", "name", parameter.name));
        emitType(parameter.type, "declaredType", out);
        out.push("E");
      }
      emitType(type.returnType, "returnType", out);
      out.push("E");
      return;
    default:
      throw new Error(`not buildable: ${type.kind} — streamOf should have skipped it`);
  }
}

function record(...fields: string[]): string {
  return fields.map(escape).join("\t");
}

function escape(value: string): string {
  return value.replace(/\\/g, "\\\\").replace(/\t/g, "\\t").replace(/\n/g, "\\n");
}
