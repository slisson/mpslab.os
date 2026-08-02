# Roadmap — `de.q60.mps.lang.typescript`

The order below is chosen so that the expensive, hard-to-retrofit decisions land while the
language is still small, and so that every later feature is a repeat of an established
pattern rather than a new one.

## Where we are today

| Aspect      | State                                                                                                                                                                          |
|-------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| structure   | `TSModule` (root, named) → `TSIStatement*`: expression statement, `TSBlock`, `let`/`const`/`var` declarations, assignment, `if`/`else if`/`else`. Expressions: string/number literal, identifier (a reference to a `TSIDeclaration`), dot expression, call operation, `console` + `console.log` as bespoke concepts, `+ - * /`, `==`, parentheses, ternary. Types: `boolean`, `number`, `string`, `console`. |
| editor      | The real investment so far: precedence-aware typing, tree rebalancing on operator entry, incomplete-paren concepts (`TSIncompleteLeftParen`/`RightParen`) that resolve into `TSParenthesizedExpression`, ternary insertion and wrapping. Optional cells (type annotation, initializer, `else`) render only when filled and are added by intention. |
| behavior    | Operator priority, the parenthesis machinery, and `ScopeProvider.getScope` on `TSModule` and `TSBlock` — the declarations of a statement list that precede the referring statement, composed with the enclosing scope. |
| typesystem  | `typeof` inference rules for literals, binary operations, `==`, ternary, parentheses, declarations and identifiers; non-typesystem checks for priority violations, stray incomplete parens, `const` reassignment, and a declaration with neither annotation nor initializer; one quick fix. No subtyping rules. |
| constraints | `TSIdentifier.declaration` declares the inherited scope, which is what makes the `ScopeProvider`s above take effect; the unitTest language restricts assertions to test methods. |
| generator   | Empty (`main` mapping configuration only).                                                                                                                                       |
| textgen     | 20 `ConceptTextGenDeclaration`s; the binary operators share one on `TSBinaryOperation` and the three declaration kinds one on `TSVariableDeclaration`, both writing the concept alias. `TSModule` writes `<name>.ts`. Done in phase 0.1.             |
| intentions  | Add a type annotation, an initializer, an `else` branch, an `else if` branch — the four optional cells the editor hides when empty.                                                |
| tests       | 15 editor tests (precedence/parens/ternary, typing `const`, typing an identifier, the add-else intention), 11 nodes tests (expression and declaration types, scoping in and out, ternary conditions, the const/annotation/initializer checks, the two unitTest checks). |
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
   revisit `.d.ts` import much later.

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
- **0.3 Generalize the precedence machinery.** Today priority lives in checking rules and
  side transforms per concept. Move it to a single source of truth — a behavior method
  `priority()` plus `isRightAssociative()` on `TSIBinaryLike`, with unary/prefix/postfix
  supported — so that adding the remaining ~30 operators is a table entry, not a design task.
- **0.4 Definition of done, per concept.** Write it down and follow it: structure + editor
  cell + substitute/side transform + typesystem rule + textgen + at least one editor test
  and one nodes test — and, now that 0.2 is in, a `TSTestCase` that runs the construct as
  real TypeScript wherever it can be evaluated. The current 36 MPS tests and 13 TypeScript
  tests are the model to keep. Editor tests earn their place: the two added with phase 2
  found a scoping bug that a sandbox, a test solution and a review had all missed.

## Phase 1 — finish the expression language

Cheap once 0.3 is done, and it exercises the machinery under load.

- Operators by precedence group: `%`, `**` (first right-associative operator — the
  associativity test case), `< > <= >=`, `!= === !==`, `&& || ??`, `& | ^ << >> >>>`,
  `,`, `in`. (`instanceof` waits for classes.)
- Unary: `!`, unary `-`/`+`, `~`, `typeof`, `void`. (`++`/`--` need assignability → phase 2.)
- Literals: `true`/`false`, `null`, `undefined`, template literals, array literal, object
  literal.
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

## Cross-cutting, ongoing

- Intentions and quick fixes alongside each phase (the ternary paren quick fix is the model).
- Migration scripts for every structural rename — the concept-prefix rename and the
  `TSConsoleLog` removal show the cost of not having them.
- Editor tests for every typing interaction; nodes tests for every type rule.
- Optional side track once the structure is broad enough: a `.ts` **importer** (parse real
  TypeScript into MPS nodes), which is also the fastest way to build a large test corpus.
