# Roadmap — `de.q60.mps.lang.typescript`

The order below is chosen so that the expensive, hard-to-retrofit decisions land while the
language is still small, and so that every later feature is a repeat of an established
pattern rather than a new one.

## Where we are today

| Aspect      | State                                                                                                                                                                          |
|-------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| structure   | `TSModule` (root, named) → `TSIStatement*`; only `TSExpressionStatement`. Expressions: string/number literal, identifier (plain `name` property), dot expression, call operation, `console` + `console.log` as bespoke concepts, `+ - * /`, `===`, parentheses, ternary. Types: `boolean`, `number`, `string`, `console`. |
| editor      | The real investment so far: precedence-aware typing, tree rebalancing on operator entry, incomplete-paren concepts (`TSIncompleteLeftParen`/`RightParen`) that resolve into `TSParenthesizedExpression`, ternary insertion and wrapping. |
| typesystem  | `typeof` inference rules for literals, binary operations, `===`, ternary, parentheses; non-typesystem checks for priority violations and stray incomplete parens; one quick fix. No subtyping rules. |
| constraints | Empty.                                                                                                                                                                          |
| generator   | Empty (`main` mapping configuration only).                                                                                                                                       |
| textgen     | 12 `ConceptTextGenDeclaration`s; the binary operators share one on `TSBinaryOperation` that writes the concept alias. `TSModule` writes `<name>.ts`. Done in phase 0.1.             |
| tests       | 13 editor tests around precedence/parens/ternary, 1 nodes test for expression types.                                                                                             |

Two gaps dominate the ordering: there is no text output, and there is no name binding
(`TSIdentifier.name` and `TSCallOperation.name` are strings, `console` is hardcoded as a
concept).

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
- **0.2 `tsc` in the build.** A Gradle task that runs `tsc --noEmit --strict` over the
  generated sandbox output. This is the regression net for every phase that follows; without
  it, type-system and textgen bugs are invisible.
- **0.3 Generalize the precedence machinery.** Today priority lives in checking rules and
  side transforms per concept. Move it to a single source of truth — a behavior method
  `priority()` plus `isRightAssociative()` on `TSIBinaryLike`, with unary/prefix/postfix
  supported — so that adding the remaining ~30 operators is a table entry, not a design task.
- **0.4 Definition of done, per concept.** Write it down and follow it: structure + editor
  cell + substitute/side transform + typesystem rule + textgen + at least one editor test
  and one nodes test. The current 14 tests are the model to keep.

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

The second retrofit-expensive change. Do it before anything that declares a name.

- `TSIDeclaration` (`INamedConcept`), and turn `TSIdentifier` into a smart reference to it,
  keeping an unresolved-identifier fallback so editing stays fluid.
- Scopes: `ScopeProvider.getScope` on `TSModule` and, once blocks exist, on blocks —
  including TDZ/hoisting rules for `var` vs `let`/`const`.
- `let` / `const` / `var` with optional type annotation and initializer; inference from the
  initializer; `const` reassignment check.
- Assignment `=`, compound assignment, `++`/`--` — needs an "is assignable target" predicate.
- Type annotations become writable: substitute menu for `TSIType`, plus `TSTypeReference`.
- A migration script for the `TSIdentifier` property → reference change.

## Phase 3 — functions

- `TSFunctionDeclaration`: parameters (typed, optional, default, rest), return type, body.
- `return` statement; function types `(a: number) => string`; arrow functions.
- Turn `TSCallOperation` into a real call on any callable expression, checked for arity and
  argument assignability, replacing the name-string form.
- **Retire `TSConsole` / `TSConsoleOp_Log`** in favour of an ambient `declare const console`
  in the lib model — the first proof that the general machinery subsumes the special case.

## Phase 4 — statements and control flow

- `TSBlock`, `if`/`else`, `while`, `do`/`while`, `for`, `for-of`, `for-in`, `switch`,
  `break`/`continue`, `throw`, `try`/`catch`/`finally`.
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
