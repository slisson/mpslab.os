/**
 * The stub schema: shaped like the MPS concepts that consume it, not like `ts.Node`.
 *
 * Anything TypeScript can say and this schema cannot becomes `unsupported`, naming the construct
 * rather than only its text, so the gaps read as a work list. See *The part that is actually hard*
 * in ROADMAP.md.
 *
 * What the *language* can build today is a separate and faster-moving question, and deliberately
 * not encoded here: the importer answers it by walking this tree.
 */

export interface StubModule {
  /** What a consumer writes in `from "..."`. */
  specifier: string;
  declarations: StubDeclaration[];
  /** Type of an `export =` value, as `path` and most CommonJS declarations have. */
  exportEquals?: StubType;
}

export type StubDeclaration = StubValueDeclaration | StubTypeDeclaration;

/** A name that exists at runtime: `declare const`, `declare function`. */
export interface StubValueDeclaration {
  kind: "value";
  name: string;
  type: StubType;
}

/** A name that exists only in type position. Interfaces arrive here already merged. */
export interface StubTypeDeclaration {
  kind: "type";
  name: string;
  type: StubType;
}

export type StubType =
  | StubPrimitiveType
  | StubArrayType
  | StubUnionType
  | StubObjectType
  | StubFunctionType
  | StubReferenceType
  | StubUnsupportedType;

export type PrimitiveName =
  | "string"
  | "number"
  | "boolean"
  | "void"
  | "null"
  | "undefined"
  | "unknown"
  | "never";

export interface StubPrimitiveType {
  kind: "primitive";
  name: PrimitiveName;
}

export interface StubArrayType {
  kind: "array";
  element: StubType;
}

export interface StubUnionType {
  kind: "union";
  members: StubType[];
}

export interface StubObjectType {
  kind: "object";
  members: StubMember[];
}

export interface StubFunctionType {
  kind: "function";
  parameters: StubParameter[];
  returnType: StubType;
}

/** A reference to a `StubTypeDeclaration` by name. What makes the import list computable. */
export interface StubReferenceType {
  kind: "reference";
  name: string;
}

/**
 * A type this schema cannot express, carried as the checker's own rendering of it plus the
 * TypeScript construct responsible. The text keeps it round-trippable; `missing` is the work list.
 */
export interface StubUnsupportedType {
  kind: "unsupported";
  text: string;
  missing: MissingConstruct;
}

export type MissingConstruct =
  | "any-type"
  | "callable-object"
  | "conditional-type"
  | "constructor-type"
  | "generic-type"
  | "index-signature"
  | "indexed-access-type"
  | "intersection-type"
  | "literal-type"
  | "overloaded-function"
  | "recursion-limit"
  | "recursive-type"
  | "template-literal-type"
  | "tuple-type"
  | "type-parameter"
  | "unresolved-type"
  | "other";

export interface StubMember {
  name: string;
  optional: boolean;
  type: StubType;
}

/** One `unsupported` type, with the path through the stub tree that reaches it. */
export interface Gap {
  module: string;
  path: string;
  missing: MissingConstruct;
  text: string;
}

export interface StubParameter {
  name: string;
  optional: boolean;
  rest: boolean;
  type: StubType;
}
