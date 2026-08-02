# Roadmap — `de.q60.mps.lang.typescript`

The order below is chosen so that the expensive, hard-to-retrofit decisions land while the
language is still small, and so that every later feature is a repeat of an established
pattern rather than a new one.

## Where we are today

| Aspect      | State                                                                                                                                                                          |
|-------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| structure   | `TSModule` (root, named) → `TSIStatement*`: expression statement, `TSBlock`, `let`/`const`/`var` declarations, assignment, `if`/`else if`/`else`. `TSITrailingChildOwner` (`TSIfStatement`, `TSElseIfClause`) declares which child a construct's notation ends with, which is what lets a nested block hand a side transform back to the construct it closes without knowing what that is. Expressions: string literal, number literal (integer or floating point, `TSNumberValue`-constrained text rather than an `integer` property), identifier (a reference to a `TSIDeclaration`), dot expression, call operation, `console` + `console.log` as bespoke concepts, `+ - * / **`, `==`, the prefix operators `! - +` under an abstract `TSUnaryOperation`, parentheses, ternary. `TSIBinaryLike` extends `TSIExpression`, which is what lets the precedence machinery ask a one-sided operator for its level. Types: `boolean`, `number`, `string`, `console`. |
| editor      | The real investment so far: precedence-aware typing, tree rebalancing on operator entry, incomplete-paren concepts (`TSIncompleteLeftParen`/`RightParen`) that resolve into `TSParenthesizedExpression`, ternary insertion and wrapping. Optional cells (type annotation, initializer, `else`, `else if`) render only when filled, and are reached by typing `:` / `=` / `else{` / `else if` — default transformation menus with RIGHT side-transform sections on `TSVariableDeclaration`, `TSIType` and `TSIfStatement`, plus one `TransformationMenuContribution` to `BaseConcept`'s default menu that hands a transform typed after a nested construct to whatever that construct closes. |
| behavior    | `TSPrecedence` — the whole precedence scale as named constants, and the only place a priority number is written — the parenthesis machinery written against `TSIBinaryLike` rather than against binary operations, `ScopeProvider.getScope` on `TSModule` and `TSBlock` — the declarations of a statement list that precede the referring statement, composed with the enclosing scope — `TSITrailingChildOwner.trailingChild` for the `else` side transforms, and `TSNameUtil.isValidName`. |
| typesystem  | `typeof` inference rules for literals, binary operations, `==`, the prefix operators (`number`, overridden to `boolean` for `!`), ternary, parentheses, declarations and identifiers; non-typesystem checks for priority violations, a prefix operator immediately left of `**` (TS17006, a syntax restriction rather than a precedence one), stray incomplete parens, `const` reassignment, a declaration with neither annotation nor initializer, and a number literal that stops at its exponent; one quick fix. No subtyping rules. Operand types are not constrained yet — that arrives with the type rules in phase 1. |
| constraints | `TSIdentifier.declaration` declares the inherited scope, which is what makes the `ScopeProvider`s above take effect; `TSIDeclaration.name` is validated as a TypeScript identifier, which is what lets `:` and `=` leave the name cell instead of extending the name; the unitTest language restricts assertions to test methods. |
| generator   | Empty (`main` mapping configuration only).                                                                                                                                       |
| textgen     | 20 `ConceptTextGenDeclaration`s; the binary operators share one on `TSBinaryOperation` and the three declaration kinds one on `TSVariableDeclaration`, both writing the concept alias. `TSModule` writes `<name>.ts`. Done in phase 0.1.             |
| intentions  | Add a type annotation, an initializer, an `else` branch, an `else if` branch — the four optional cells the editor hides when empty. Kept beside the side transforms, which are now the primary way in: Alt+Enter still lists them, and it is the only way in when the caret is not at the anchor cell. |
| tests       | 27 editor tests (precedence/parens/ternary, left- and right-associativity, typing a prefix operator, typing `const`, typing an identifier, typing a decimal point and an exponent, the add-else intention, the six side transforms for the optional cells and the one case that must not forward), 14 nodes tests (expression, prefix-operator and declaration types, floating point literals, scoping in and out, ternary conditions, the const/annotation/initializer/exponent checks, the two unitTest checks) — 59 JUnit tests between them. Grouped by feature rather than by test kind with `virtualPackage` — `expressions{,.precedence,.ternary,.numbers,.unary}`, `statements{,.control_flow}`, `declarations{,.scopes}`, `unit_test_language` — since the concept already says which kind a test is. |
| unit tests  | A second language, `de.q60.mps.lang.typescript.unitTest`: `TSTestCase` (root) → `TSTestMethod` → `TSAssertTrue`/`False`/`Equals`/`NotEquals`/`TSFail`. Done in phase 0.2.          |

The gap that dominates the ordering is now the standard library: `console` is still a
concept and `TSCallOperation.name` is still a string, so the only callable thing in the
language is the one that is hardcoded.

## Open decisions to settle first

1. **Checker or producer?** Re-implementing TypeScript's checker in the MPS typesystem is
   an unbounded project (structural types, generics, flow-sensitive narrowing, conditional
   types). *Recommendation:* be a **producer** — guarantee well-formed, well-typed-by-
   construction output and run `tsc --noEmit` in the build as the ground truth. Implement in
   MPS only the checks that make *editing* good: arity, obvious assignability, definite
   return. This caps phase 5 and lets narrowing stay approximate.
2. **Who writes TypeScript here?** If the primary consumer is another MPS language
   generating into TypeScript, then extensibility (open interface concepts, a verbatim
   escape hatch, stable generator entry points) outranks editor polish for hand-written
   code. Both are worth having; the answer decides whether phase 1 or phase 8 comes first.
3. **The standard library.** `console` cannot stay a concept. Decide between a hand-written
   ambient-declaration model (a small `lib.d.ts` equivalent, written in the language itself)
   and importing real `.d.ts` files. *Recommendation:* hand-written minimal lib in phase 3;
   real `.d.ts` import in phase 9, which subsumes it once it works.

## Phase 0 — foundations (before any new syntax)

Everything here gets cheaper the earlier it happens, and more expensive per concept added.

- **0.1 TextGen aspect.** ✅ Done. `ConceptTextGenDeclaration` for every concrete concept
  that can appear under a `TSModule`; `TSModule` → `<name>.ts`. Parenthesisation on output is
  already explicit in the tree, so this was mechanical today and never again. Not covered,
  deliberately: the four `TSIType` concepts (no syntax produces them yet — they arrive with
  type annotations in phase 2) and the two incomplete-paren attributes (an error state).
  The five binary operators share one declaration on the abstract `TSBinaryOperation` that
  writes `node.concept.getConceptAlias()` — the same source the editor renders with
  `component alias`, so the generated operator cannot drift from the typed one. That also
  means every operator added in phase 1 needs no textgen of its own.
- **0.2 `tsc` in the build, and a unit-test language.** ✅ Done, and the two turned out to be
  one task: a compiler that only type-checks proves the output parses, a test runner proves
  it *means* something, and both need the same npm project. `mps-typescript/` is now that
  project — `package.json` + `tsconfig.json` over the modules' `source_gen`, `npm test` =
  `tsc` then `node --test`, run after `./gradlew build` in CI.
  - `de.q60.mps.lang.typescript.unitTest` is a separate language extending the core one, the
    way `jetbrains.mps.baseLanguage.unitTest` sits beside baseLanguage: `TSTestCase` (root,
    named) holds `TSTestMethod`s, whose bodies hold statements and the four assertions
    (`assert true` / `assert false` / `assert equals` / `assert not equals`). TextGen writes
    `<name>.test.ts`: a `describe` per test case, a `test` per method, `assert.ok` /
    `assert.deepStrictEqual` per assertion, over `node:test` and `node:assert`. Keeping it
    out of the core language matters for decision 2 — a language reducing *into* TypeScript
    gets the expressions without the test vocabulary.
  - Two checks came with it: an assertion is only a legal child inside a `TSTestMethod`
    (`canBeChild`), and an assertion's condition must be `boolean`. The second exists because
    `tsc --strict` rejects a non-boolean condition (TS2872, "always truthy") — the check
    catches in the editor what the compiler would otherwise catch minutes later. It found a
    real one on its first run: the `ternary` sandbox root used `1 + 2` as a condition.
  - The `TSTestCase` roots live in their own solution, `test.ex.de.q60.mps.lang.typescript`,
    not in the sandbox — the sandbox demonstrates notation, these are executed.
  - `fail` was left out at first because nothing could reach it without control flow; it
    came back with `if`. Assertion messages are still out (they need a conditional cell for
    the optional child, and `node:assert` already prints actual/expected), and so are
    `beforeEach`/`afterEach` — those are now buildable, since declarations exist, and are
    worth adding the next time a test wants shared setup. Editor tests for typing the
    assertion aliases are still owed; the concepts are covered by nodes tests and by the
    generated tests themselves.
- **0.3 Generalize the precedence machinery.** ✅ Done. Priority was never in the checking rules
  as this document claimed — it was already a virtual `getPriority()` on `TSIExpression` — but the
  values were bare numbers (`10`, `11`, `8`, `5`, `90`, `100`) spread over nine behavior roots with
  the scale as a whole written down nowhere, and left-associativity was hard-coded in three places.
  That is what made adding an operator a design task: you had to reconstruct the order before you
  could place a new level in it.
  - **`TSPrecedence` is a value class and its constants are instances of it.** Each level carries
    both facts at once — how tightly it binds and which way it associates — so a row of the table
    reads `EXPONENTIATION = rightAssociative(140)` and an operator that picks a level cannot pick
    the binding and forget the associativity. Adding a level is one line, rather than a line plus
    an entry in a disjunction elsewhere that has to be kept in step with it; that duplication was
    the first cut of this and it was the same mistake the phase set out to remove.
    The numbers are **private**. Nothing outside the class compares them, because `isTighterThan`
    and `isSameLevelAs` are the only two questions anyone asks; they stay spaced by ten so an
    unforeseen level fits between two without renumbering the rest. `ATOM` sits *above* `GROUPING`,
    not at the bottom: nothing binds more tightly than a leaf, and the default on `TSIExpression`
    should say so rather than say "zero". The behavior method is `getPrecedence(): TSPrecedence` —
    it hands back the level itself, so no number travels and nothing has to look one up again.
    Three named factories build the rows: `leftAssociative(n)`, `rightAssociative(n)` and
    `noAssociativity(n)`. The third is what makes MDN's **n/a** sayable — prefix, postfix, `new`
    without arguments and grouping *decline* to answer, rather than answering "left", which is what
    a bare boolean had quietly made them do.

    **What that table is, exactly.** ECMAScript has no precedence table: it gives the expression
    grammar as layered productions, and precedence and associativity are what the *shape* of those
    productions comes to — a left-recursive production is what "left-associative" means. TypeScript
    has no maintained specification of its own (the last one was archived in 2016) and inherits that
    grammar. So MDN's table is a summary and the best reference there is, not an authority, and a
    departure from it is a decision worth writing down. There is one so far, and it is deliberate:
    the scale keeps `POSTFIX` and `NEW_WITHOUT_ARGUMENTS` as levels nothing occupies yet.
  - **Associativity is taken from the level — but that is a property of this operator set, not a
    rule.** `TSIBinaryLike.isRightAssociative()` is `thisNode.getPrecedence().isRightAssociative()`,
    so an operator that picks a row gets its associativity by construction. That works only because
    **no JavaScript precedence level mixes the two associativities** — checked against MDN's column,
    not assumed. Languages exist where it would not: Haskell's `infixl 5` and `infixr 5` are one
    precedence with two fixities. Which is why `isRightAssociative()` is **virtual**: the level is
    the default, and an operator that has to disagree with its level can. `TSIBinaryLike` had to
    start extending `TSIExpression` for any of this, which it should always have done — the paren
    algorithm casts one to the other throughout.

    The one-operand levels answer `hasAssociativity() == false`. Nothing branches on it: both
    callers of `isRightAssociative()` reach it with a binary operation, and no binary operator sits
    at those levels. It is there so that "these rows never answer" is a checkable property of the
    table rather than a claim in a comment.
  - **The three places that assumed left-associativity.** `isBadPriority` now reads "looser than the
    parent is always bad; equal is bad on the right for a left-associative parent and on the left
    for a right-associative one". `processLeftTransform`'s complex rotation — the one that makes
    `a + b` with `+` typed left of `b` become `a + <hole> + b` — is skipped for a right-associative
    operator, which wants to nest into the right operand instead, and the plain transform beneath it
    already does that. And `parenthesiseIfNecessary` calls `isBadPriority` rather than the weaker
    rule of its own it used to carry, so the editor and the checking rule can no longer disagree.
  - **One-sided operators.** `rotateTree`, `isBadPriority` and `checkOperationParentWRTPriority` are
    written against `TSIBinaryLike` and its syntactic accessors rather than against
    `TSBinaryOperation.leftExpression`/`rightExpression`, which is what lets a prefix operator — left
    side `null`, throwing setter — take part. Two new statics, `isBadlyPlaced` and
    `rotateTreeToMatchText`, are the single predicate and the single repair that the checking rule,
    the quick fix and the editor now all go through; the typesystem model cannot call behavior
    methods, so keeping the side-picking inside the util is what made that possible at all.
  - **The proof.** `**` for right-associativity — the editor test types `2**3**4` and gets
    `2 ** (3 ** 4)`, with `*3*4` beside it as the left-associative control so the pair cannot pass
    vacuously — and `!`, unary `-`, unary `+` for the one-sided case. `2 ** 3 ** 2 === 512` and
    `- -5 === 5` run as real TypeScript.
  - **`??` is on `||`'s level, and that is not enough.** MDN puts nullish coalescing at the same
    precedence as logical OR, so `NULLISH` holds the same number as `LOGICAL_OR`. It does not follow
    that `a ?? b || c` is legal — TypeScript refuses to parse `??` beside `||` or `&&` without
    parentheses whichever way the tree leans — so those operators need a checking rule of their own
    when phase 1 adds them, shaped like `check_TSExponentExpression` rather than like a priority.
  - **Two things a prefix operator needed that precedence does not explain.** TypeScript rejects
    `-2 ** 2` outright (TS17006) even though the prefix operator does bind tighter, so a checking
    rule asks for the parentheses — a syntax restriction, not a priority question, which is why the
    priority check does not catch it. And `- -a` must not be written `--a`, which is the decrement
    token: both the textGen and the editor emit the separating space when a prefix operator's
    operand is itself one. baseLanguage does neither.
  - **Left for phase 2, where the operators are.** Postfix. `TSIBinaryLike` already models the
    mirror case — a null *right* side — and `findTurn`/`rebalance` are written for both, but nothing
    instantiates it, and an abstract concept with no operator under it is untested machinery.
    `++`/`--` need an assignable target, which is what phase 2 is for.
- **0.4 Definition of done, per concept.** ✅ Written down, and it is the list below. A concept is
  not done until it has all of it; anything left out is named in the commit that adds the concept.
  1. **structure** — the concept, its alias, and a `short-description` wherever the alias collides
     with another concept's (`-` is both binary and unary; the completion shows the description).
  2. **editor** — a cell, and the style items that make the spacing read as TypeScript writes it.
  3. **a way to type it** — a substitute menu entry or a side transform. Inheriting one from an
     abstract superconcept counts, and is the point of having the abstract superconcept.
  4. **typesystem** — an inference rule for its type, and a checking rule for anything `tsc` would
     reject that the structure permits.
  5. **textgen** — or an inherited declaration that already covers it, as `TSBinaryOperation`'s does
     for every binary operator.
  6. **one editor test and one nodes test.** Editor tests earn their place: the two added with
     phase 2 found a scoping bug that a sandbox, a test solution and a review had all missed.
  7. **a `TSTestCase` that runs the construct as real TypeScript**, wherever it can be evaluated.
     This is the one that catches what MPS is happy with and `tsc --strict` is not — `!(1 == 2)` was
     rejected as TS2367, comparing literal types with no overlap, and had to go through a `const`.

  The 59 MPS tests and 20 TypeScript tests are the model to keep.

## Phase 1 — finish the expression language

Cheap once 0.3 is done, and it exercises the machinery under load. Each of the operators below is
now one structure concept plus one behavior root naming a `TSPrecedence` level; everything else —
editor, textgen, side transforms, substitution, the result-type rule — it inherits.

- Operators by precedence group: `%`, `< > <= >=`, `!= === !==`, `&& || ??`,
  `& | ^ << >> >>>`, `,`, `in`. (`instanceof` waits for classes. `**` landed with 0.3 as the
  right-associativity test case.)
- Unary: `~`, `typeof`, `void`. (`!` and unary `-`/`+` landed with 0.3 as the one-sided test case;
  `++`/`--` need assignability → phase 2.)
- Literals: `true`/`false`, `null`, `undefined`, template literals, array literal, object
  literal. Number literals cover the decimal forms, integer and floating point; `0x`/`0b`/
  `0o`, numeric separators and `bigint` are a widening of the `TSNumberValue` datatype and
  of `check_TSNumberLiteral` beside it.
- Type rules that come with them: numeric operands, the `number + string → string` overload,
  comparisons → `boolean`, the union results of `&&`/`||`/`??`.

## Phase 2 — names, declarations, scopes (architectural)

The second retrofit-expensive change. Mostly done; what remains is listed at the end.

- ✅ `TSIDeclaration` (`INamedConcept`), and `TSIdentifier` turned into a smart reference to
  it. No unresolved-identifier fallback: an identifier is a reference or it is nothing.
  No migration script either — there were no `TSIdentifier` instances anywhere to migrate,
  and a migration keyed to a language version nothing has reached is dead code.
- ✅ **A `ScopeProvider` is not enough on its own — the reference has to ask for it.**
  Implementing `getScope` changes nothing by itself: with no constraint on the reference,
  MPS falls back to the default model-wide scope and offers every `TSIDeclaration` in the
  model and its imports. What installs the inherited scope is one declaration in the
  constraints aspect:

      §ConceptConstraints {
        concept -> TSIdentifier
        referent: §NodeReferentConstraint {
          applicableLink -> declaration
          searchScopeFactory: §InheritedNodeScopeFactory { kind -> TSIDeclaration }
        }
      }

  Without it the language looks fine in a model that declares each name once — which is why
  this survived a sandbox, a test solution and a review. It shows up where a name is
  declared twice: the completion offers both, an ambiguous match binds to neither, and
  typing the name appears to do nothing at all. An editor test in a model holding a
  before-tree and an after-tree is exactly that situation, which is how it was found.

  Two things followed from the fix. `RefScopeChecker` now reports an out-of-scope reference
  on its own, so the `check_TSIdentifier` rule written to compensate is gone — MPS does
  validate against an inherited scope, once the scope is declared. And the default
  substitute menu is all a smart reference needs: the `SubstituteMenuPart_ReferenceScope`
  menu added while chasing this was unnecessary and has been removed.
- ✅ Scopes: `ScopeProvider.getScope` on `TSModule`, `TSBlock` and (in the unitTest language)
  `TSTestMethod`. Each returns the declarations of its own statement list that precede the
  referring statement, composed with the enclosing scope — MPS's ancestor walk stops at the
  first provider that answers, so a block that did not compose would hide everything outside
  it. One deviation worth knowing: **`var` is treated like `let`.** TypeScript hoists `var`
  and gives it `undefined` before its declaration; here it is out of scope, which is
  stricter than TypeScript and rejects code TypeScript accepts. Nobody should be writing
  that, but it is a deviation.
- ✅ `let` / `const` / `var` with optional type annotation and initializer; inference from the
  initializer; `const` reassignment check; a declaration must have an annotation or an
  initializer, since the language has no `any` to fall back on and `--strict` rejects the
  implicit one.
- ✅ Assignment `=`. The target is a `TSIdentifier`, not an arbitrary expression, so the
  "is assignable target" predicate is one `isInstanceOf` rather than a design. It becomes a
  real question with property access and element access.
- ✅ Type annotations are writable: `boolean` / `number` / `string` have editors and textgen,
  and the built-in subconcept substitution offers them. `TSTypeReference` waits for
  something to reference.
- Still open: compound assignment and `++`/`--`; assignment as an *expression* (it is a
  statement here, which is where the precedence question was avoided); TDZ proper.

## Phase 3 — functions

- `TSFunctionDeclaration`: parameters (typed, optional, default, rest), return type, body.
- `return` statement; function types `(a: number) => string`; arrow functions.
- Turn `TSCallOperation` into a real call on any callable expression, checked for arity and
  argument assignability, replacing the name-string form.
- **Retire `TSConsole` / `TSConsoleOp_Log`** in favour of an ambient `declare const console`
  in the lib model — the first proof that the general machinery subsumes the special case.

## Phase 4 — statements and control flow

- ✅ `TSBlock` and `if` / `else if` / `else`. The else-if chain is modelled as baseLanguage
  models it — a list of `TSElseIfClause` beside an optional else block — rather than as a
  nested if in the else, so the editor and textgen write the flat chain the source has.
  The condition takes any expression, consistent with the ternary (commit 325a097): TS
  coerces, and `tsc` objects only to the *always*-truthy ones, which is a narrower rule than
  "must be boolean" and not one worth duplicating.
- ✅ `fail` in the unitTest language, which was waiting for a branch that could reach it.
- Still open: `while`, `do`/`while`, `for`, `for-of`, `for-in`, `switch`, `break`/`continue`,
  `throw`, `try`/`catch`/`finally`.
- Dataflow aspect on top: unreachable code, missing return, unused variable, use before
  assignment. This is where MPS gives something `tsc` does not — live, in-editor.

## Phase 5 — the type system proper

The largest and most open-ended phase; scope it by decision 1 above.

- `any` / `unknown` / `never` / `void` / `null` / `undefined` with strict-null semantics.
- Structural subtyping rule; object types, `interface`, `type` aliases, optional properties,
  index signatures.
- Unions and intersections; literal types.
- Arrays and tuples.
- **Narrowing** (`typeof` guards, truthiness, discriminated unions, `as`, `!`). MPS's
  typesystem is not flow-sensitive; this needs its own design — most likely a behavior-level
  narrowed type per reference computed from the dataflow graph, not an inference rule. Treat
  it as a milestone, not a task.
- Generics: type parameters on functions/aliases/classes, constraints, inference at call
  sites. Also a milestone of its own; conditional and mapped types are explicitly out of
  scope for now.

## Phase 6 — classes and modules

- `class`, fields, methods, constructor, `this`, `extends`/`implements`, `new`,
  `instanceof`, getters/setters, `static`, `abstract`, access modifiers.
- Modules: `import`/`export`, cross-model references, one MPS model per `.ts` file, and the
  generation-plan/checkpoint work that cross-model references imply.

## Phase 7 — TypeScript-specific sugar

`enum`, namespaces, destructuring, spread, optional chaining `?.`, non-null `!`,
`async`/`await` + `Promise`, generators, `satisfies`, `keyof`/`typeof` type operators,
decorators.

## Phase 8 — as a target language (can be pulled forward — see decision 2)

- Keep the statement/expression interface concepts open and documented as extension points.
- A verbatim/raw-text escape hatch concept for the cases the structure does not cover yet.
- Comments and `TRACE` support so generated TypeScript is debuggable back to its source.
- A stable set of generator entry points and mapping labels for languages reducing into
  TypeScript.

## Phase 9 — interop: stub models from external TypeScript

The Java analogue is exact: MPS reads `.class` files and `.java` sources into read-only stub
models so that hand-written code can reference libraries it did not author. TypeScript needs
the same, and it is what unblocks decision 3 — once real `.d.ts` files can be read, the
hand-written lib model of phase 3 stops being the standard library and becomes a bootstrap.

**Decided: a Node subprocess as the parser, and a real stub model root as the MPS side.**
The two alternatives on each axis, and why they lost, are recorded below so the decision does
not get re-opened for free.

### The input is `.d.ts`, never `.ts`

A stub is signatures without bodies, and TypeScript already has that format. For a package,
the `.d.ts` ships with it or comes from `@types/*`. For loose implementation sources, run
`tsc --declaration --emitDeclarationOnly` (or the LanguageService's `getEmitOutput` with
`emitOnlyDtsFiles`) and let TypeScript's own inference reduce the file first, then import the
result. That makes this the `.class` path rather than the `.java`-source path: the grammar to
cover shrinks to the declaration subset, and none of TypeScript's inference has to be
reimplemented to get a signature out of an untyped-but-inferable function.

### Read the checker's symbols, not the syntax tree

Declaration files lean on declaration merging, `export * from` chains, `export =` and ambient
module augmentation, and a syntactic walk gets all of them wrong. Build a `ts.Program` and go
through the checker instead: `ts.resolveModuleName` to find the file behind an import
specifier, `checker.getExportsOfModule(moduleSymbol)` for the flattened export list — that
list is the stub model's roots, one to one — then `getTypeOfSymbolAtLocation` and, where the
structure cannot hold the type, `typeToString`.

### The parser: a Node subprocess

`typescript` is Apache 2.0 and already a dependency here (`typescript@5.9.3` in
`package.json`), and the project already requires Node to run `npm test`, so the sidecar adds
no dependency a contributor does not already have. The extractor is a small TS program living
beside the existing npm project; it speaks a request/response JSON protocol over stdio, and it
emits **our own stub schema, shaped like our concepts** — not `ts.Node`. Serialising the real
AST is not an option anyway: it is cyclic through `parent` and far larger than what a stub
needs. Keep it behind one interface on the JVM side; long-lived with a reused `LanguageService`
for interactive re-import, spawn-and-exit for a one-shot.

Rejected: **GraalJS in process**, which does run `typescript.js` and would let a custom
`CompilerHost` read through MPS's VFS, but runs interpreter-only on JBR — far too slow for a
file the size of `lib.dom.d.ts`. Worth keeping as a no-Node-required fallback, not as the
default. **IntelliJ's own TS PSI** is not available: MPS is built on the Community platform and
JavaScript/TypeScript support is a closed-source plugin bundled only with the commercial IDEs
(confirm against the target distribution before relying on the absence). **A JVM-native TS
parser** does not exist in maintained form, and the Rust parsers (swc, oxc) are syntax-only,
which is exactly the level ruled out above. **`typescript-go` / TS 7** is the one to revisit —
much faster, but its public surface is still LSP-shaped rather than "hand me the program",
which is the other reason for the interface.

### The MPS side: a real stub model root

`node_modules/` and declaration directories should appear as read-only models that reload when
the files change, not as a one-time paste into the project. The extension point is
`mps.modelRootFactory`, and there are two implementations to work from in the MPS sources:

- `samples/propertyPersistence/.../persistence/` is the worked sample and the closest fit —
  `ModelRootFactory`, `ModelRoot`, `ModelDescriptor`, `DataSource`, plus `ModelRootEntry` and
  its factory for the module-settings UI. All six are ~440 lines of *generated* Java together.
- `plugins/mps-java/core/modules/jetbrains.mps.java.core/.../sourceStubs/` is the production
  one, registered as `rootType="java_source_stubs"`. `JavaSourceStubModelDescriptor.createModel()`
  is the method to copy: build an `SModel`, fill it from the data source, return
  `ModelLoadingState.NO_IMPLEMENTATION` — signatures, no bodies. Note that it parses with MPS's
  own `jetbrains.mps.java.core.newparser.JavaParser` rather than through IntelliJ PSI, which is
  the same shape as the sidecar: parse outside the platform, build `SNode`s directly.

Build an importer *action* over the same extractor first, though. It writes an ordinary model
and needs none of the plumbing above, so it makes the extractor and the JSON schema testable
on their own — and it is the fastest way to get a large corpus of real TypeScript into MPS,
which is the point the cross-cutting section already made about a `.ts` importer.

### The part that is actually hard

Not the parsing — the impedance. TypeScript's types are structural, and real `.d.ts` files use
generics, overloads, unions, conditional and mapped types freely; phase 5 will not represent
all of that and should not try. A stub only has to support three things: name binding and
scopes, MPS-side checking, and emitting a correct `import`. The first and third need names and
module paths only, and the second is a dial. So the stub language gets a `TSRawType` holding
the `typeToString` text as opaque payload: an unrepresentable type still round-trips, still
renders, still generates correctly, and simply does not participate in MPS type checking. The
importer then has no failure mode on an exotic type — which is the same producer-not-checker
stance as decision 1.

Budget for scale from the start: `lib.dom.d.ts` is on the order of 20k declarations, so the
model root has to be lazy per model and filtered, or the first import against a real project
hangs.

### Order of work

1. The extractor (`Program` → `getExportsOfModule` → stub JSON) in the existing npm project.
2. The JVM reader and an import action producing an ordinary model, with `TSRawType` as the
   catch-all.
3. A round-trip test that costs nothing to build: the language generates `.ts`, `tsc` declares
   it, the importer reads the `.d.ts` back, and the result is asserted against the nodes it
   came from. A `@types` package is the second corpus.
4. Only then the model-root plumbing, once the schema has stopped moving.

## Cross-cutting, ongoing

- Intentions and quick fixes alongside each phase (the ternary paren quick fix is the model).
- Migration scripts for every structural rename — the concept-prefix rename and the
  `TSConsoleLog` removal show the cost of not having them.
- Editor tests for every typing interaction; nodes tests for every type rule.
- Optional side track once the structure is broad enough: a `.ts` **importer** (parse real
  TypeScript into MPS nodes), which is also the fastest way to build a large test corpus.
  This is now step 2 of phase 9 rather than a track of its own.
