import { describe, it } from "node:test";
import * as assert from "node:assert/strict";
import * as path from "node:path";
import { extract } from "../src/extract.js";
import { planImport } from "../src/notation.js";
import type { StubModule } from "../src/schema.js";

const projectRoot = path.resolve(import.meta.dirname, "../../..");

const [punycode, nodePath] = extract({ cwd: projectRoot, specifiers: ["punycode", "path"] }) as [
  StubModule,
  StubModule,
];

describe("planImport", () => {
  it("imports the whole of punycode, merged symbol included", () => {
    const plan = planImport(punycode);
    assert.deepEqual(plan.imported, [
      "decode",
      "encode",
      "toUnicode",
      "toASCII",
      "ucs2",
      "ucs2",
      "version",
    ]);
    assert.deepEqual(plan.skipped, []);
  });

  it("binds the merged ucs2 value to the type alias beside it", () => {
    assert.match(planImport(punycode).root!, /declaredType: §TSTypeReference \{\n\s+declaration -> ucs2\n/);
  });

  it("imports path's two plain interfaces, and says what stops the third", () => {
    const plan = planImport(nodePath);
    assert.deepEqual(plan.imported, ["ParsedPath", "FormatInputPathObject"]);
    assert.deepEqual(plan.skipped, [
      { name: "PlatformPath", kind: "type", blockedBy: "literal-type" },
      { name: "export=", kind: "export=", blockedBy: "export= declaration" },
    ]);
  });

  // Pinned against what MPS accepted through write_root: the closing brace of a node aligns with
  // the line that opened it, and a role is repeated once per child.
  it("emits one root holding every declaration, in the generic syntax MPS reads back", () => {
    const root = planImport(punycode).root;
    assert.ok(root !== null);
    assert.ok(root.startsWith('§TSDeclarationFile {\n  name = "punycode"\n'));
    assert.equal(root.split("\n").filter((l) => l.startsWith("  declarations:")).length, 7);
    assert.ok(
      root.endsWith(
        [
          "  declarations: §TSAmbientDeclaration {",
          '    name = "version"',
          "    declaredType: §TSStringType {",
          "    }",
          "  }",
          "}",
        ].join("\n"),
      ),
      root,
    );
  });
});
