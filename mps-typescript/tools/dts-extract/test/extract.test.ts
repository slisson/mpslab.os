import { describe, it } from "node:test";
import * as assert from "node:assert/strict";
import * as path from "node:path";
import { extract } from "../src/extract.js";
import type { StubDeclaration, StubModule, StubObjectType, StubType } from "../src/schema.js";

// The npm project itself: the `node_modules` holding `@types/node` is what the specifiers resolve against.
const projectRoot = path.resolve(import.meta.dirname, "../../..");

const [punycode, nodePath] = extract({ cwd: projectRoot, specifiers: ["punycode", "path"] }) as [
  StubModule,
  StubModule,
];

function declaration(module: StubModule, kind: StubDeclaration["kind"], name: string): StubDeclaration {
  const found = module.declarations.find((d) => d.kind === kind && d.name === name);
  assert.ok(found, `${module.specifier} has no ${kind} declaration named ${name}`);
  return found;
}

function object(type: StubType): StubObjectType {
  assert.equal(type.kind, "object");
  return type as StubObjectType;
}

function member(type: StubType, name: string) {
  const found = object(type).members.find((m) => m.name === name);
  assert.ok(found, `no member named ${name}`);
  return found;
}

describe("punycode", () => {
  it("exports its four functions as values", () => {
    for (const name of ["decode", "encode", "toUnicode", "toASCII"]) {
      assert.deepEqual(declaration(punycode, "value", name).type, {
        kind: "function",
        parameters: [
          {
            name: name === "decode" || name === "encode" ? "string" : "domain",
            optional: false,
            rest: false,
            type: { kind: "primitive", name: "string" },
          },
        ],
        returnType: { kind: "primitive", name: "string" },
      });
    }
  });

  it("types version as a string", () => {
    assert.deepEqual(declaration(punycode, "value", "version").type, {
      kind: "primitive",
      name: "string",
    });
  });

  it("splits the merged ucs2 symbol into a value and a type", () => {
    assert.deepEqual(declaration(punycode, "value", "ucs2").type, { kind: "reference", name: "ucs2" });
    assert.equal(declaration(punycode, "type", "ucs2").type.kind, "object");
  });

  it("has no export equals", () => {
    assert.equal(punycode.exportEquals, undefined);
  });
});

describe("path", () => {
  it("resolves export = to the type of the exported value", () => {
    assert.deepEqual(nodePath.exportEquals, { kind: "reference", name: "PlatformPath" });
  });

  it("expands ParsedPath into plain string members", () => {
    const type = declaration(nodePath, "type", "ParsedPath").type;
    assert.deepEqual(
      object(type).members,
      ["root", "dir", "base", "ext", "name"].map((name) => ({
        name,
        optional: false,
        type: { kind: "primitive", name: "string" },
      })),
    );
  });

  it("carries optionality on the member and drops the redundant | undefined", () => {
    const type = declaration(nodePath, "type", "FormatInputPathObject").type;
    for (const m of object(type).members) {
      assert.equal(m.optional, true, `${m.name} should be optional`);
      assert.deepEqual(m.type, { kind: "primitive", name: "string" });
    }
  });

  describe("PlatformPath", () => {
    const platformPath = declaration(nodePath, "type", "PlatformPath").type;

    it("converts a rest parameter to an array", () => {
      assert.deepEqual(member(platformPath, "resolve").type, {
        kind: "function",
        parameters: [
          {
            name: "paths",
            optional: false,
            rest: true,
            type: { kind: "array", element: { kind: "primitive", name: "string" } },
          },
        ],
        returnType: { kind: "primitive", name: "string" },
      });
    });

    it("converts an optional parameter", () => {
      assert.deepEqual(member(platformPath, "basename").type, {
        kind: "function",
        parameters: [
          { name: "path", optional: false, rest: false, type: { kind: "primitive", name: "string" } },
          { name: "suffix", optional: true, rest: false, type: { kind: "primitive", name: "string" } },
        ],
        returnType: { kind: "primitive", name: "string" },
      });
    });

    it("types a boolean return as boolean rather than as a union of literals", () => {
      const matchesGlob = member(platformPath, "matchesGlob").type;
      assert.equal(matchesGlob.kind, "function");
      assert.deepEqual((matchesGlob as { returnType: StubType }).returnType, {
        kind: "primitive",
        name: "boolean",
      });
    });

    it("references a named type rather than expanding it", () => {
      const parse = member(platformPath, "parse").type;
      assert.deepEqual((parse as { returnType: StubType }).returnType, {
        kind: "reference",
        name: "ParsedPath",
      });
    });

    it("references itself, which is what proves binding rather than inlining", () => {
      assert.deepEqual(member(platformPath, "posix").type, {
        kind: "reference",
        name: "PlatformPath",
      });
      assert.deepEqual(member(platformPath, "win32").type, {
        kind: "reference",
        name: "PlatformPath",
      });
    });

    // The whole unsupported surface of this fixture. If it grows, something stopped converting.
    it("names the construct behind exactly the two string-literal unions", () => {
      const gaps = object(platformPath).members.filter(
        (m) => m.type.kind === "union" && m.type.members.some((t) => t.kind === "unsupported"),
      );
      assert.deepEqual(
        gaps.map((m) => m.name),
        ["sep", "delimiter"],
      );
      assert.deepEqual(member(platformPath, "sep").type, {
        kind: "union",
        members: [
          { kind: "unsupported", text: '"/"', missing: "literal-type" },
          { kind: "unsupported", text: '"\\\\"', missing: "literal-type" },
        ],
      });
    });
  });
});
