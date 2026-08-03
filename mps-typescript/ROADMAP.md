# Roadmap — `de.q60.mps.lang.typescript`

The order below is chosen so that the expensive, hard-to-retrofit decisions land while the
language is still small, and so that every later feature is a repeat of an established
pattern rather than a new one.

## Where we are today

| Aspect      | State                                                                                                                                                                          |
|-------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| structure   | `TSModule` (root, named) → `TSIStatement*`: expression statement, `TSBlock`, `let`/`const`/`var` declarations, assignment, `if`/`else if`/`else`. `TSITrailingChildOwner` (`TSIfStatement`, `TSElseIfClause`) declares which child a construct's notation ends with, which is what lets a nested block hand a side transform back to the construct it closes without knowing what that is. Expressions: identifier (a reference to a `TSIDeclaration`), dot expression, call operation, `console` + `console.log` as bespoke concepts. All twenty-five binary operators, grouped under the abstract `TSArithmeticOperation` / `TSComparisonOperation` / `TSEqualityOperation` / `TSLogicalOperation` / `TSBitwiseOperation`; the prefix operators `! - + ~ typeof void` under `TSUnaryOperation`; parentheses; ternary. Literals: string, number (`TSNumberValue`-constrained text covering the decimal, hex, binary, octal, separator and bigint forms), `true`/`false`, `null`, `undefined`, template literals as a head plus a span per interpolation. `TSIBinaryLike` extends `TSIExpression`, which is what lets the precedence machinery ask a one-sided operator for its level. Types: `boolean`, `number`, `string`, `console`, `null`, `undefined`, union, array. |
| editor      | The real investment so far: precedence-aware typing, tree rebalancing on operator entry, incomplete-paren concepts (`TSIncompleteLeftParen`/`RightParen`) that resolve into `TSParenthesizedExpression`, ternary insertion and wrapping. Optional cells (type annotation, initializer, `else`, `else if`) render only when filled, and are reached by typing `:` / `=` / `else{` / `else if` — default transformation menus with RIGHT side-transform sections on `TSVariableDeclaration`, `TSIType` and `TSIfStatement`, plus one `TransformationMenuContribution` to `BaseConcept`'s default menu that hands a transform typed after a nested construct to whatever that construct closes. Types compose the same way: `|` on the `TSIType` menu wraps a type in a union — lengthening a union that is already there is MPS's own doing, since it binds a one-character list separator as an insert key on every element cell. And there is now a **delete story**, seven `CellActionMapDeclaration`s of it: a binary operation collapses to the operand the caret is not in, a prefix operation to its operand, parentheses unwrap rather than take the expression with them, an annotation or an initializer goes away rather than leaving a hole, and a union member takes the union with it when one member would be left. |
| behavior    | `TSPrecedence` — the whole precedence scale as instances carrying level *and* associativity, and the only place a priority number is written — the parenthesis machinery written against `TSIBinaryLike` rather than against binary operations, `TSTypeUtil.union` normalizing every union that is built — members deduplicated by structural match, ordered by presentation — `ScopeProvider.getScope` on `TSModule` and `TSBlock` — the declarations of a statement list that precede the referring statement, composed with the enclosing scope — `TSITrailingChildOwner.trailingChild` for the `else` side transforms, `needsSpaceBeforeOperand` and `needsParenthesesAsArrayElement` (each asked by both the editor and the textgen, so what is shown and what is generated cannot drift), and `TSNameUtil.isValidName`. Types present themselves through `BaseConcept.getPresentation`, overridden only where the notation is more than a keyword — the alias is already the default. |
| typesystem  | Per-operator typing lives in an `OverloadedOpRulesContainer` table, which `typeof_TSBinaryOperation` consults through `operation-type` — so an operand combination with no row *is* the "cannot be applied" error, rather than a separate set of operand checks. Overriding rules for equality, `in`, `,` and `&& \|\| ??`, whose results do not depend on their operands. `typeof` rules for every literal, the prefix operators, the ternary, parens, declarations and identifiers. Non-typesystem checks: priority violations, a prefix operator immediately left of `**` (TS17006 — a syntax restriction, not a precedence one), `??` mixed with `\|\|`/`&&`, stray incomplete parens, `const` reassignment, a declaration with neither annotation nor initializer, a number literal still in an intermediate typing state, and a union of fewer than two members — that last one written for the generator rather than for the editor, which can no longer build one. Two quick fixes. One subtyping relation, and it is the only one: `TSIType_subtypeOf_TSUnionType`, an `InequationReplacementRule` that makes every member of a union a subtype of it — see *The one subtyping rule* below for why it is a replacement rule rather than a `SubtypingRule`, and why its sub-type side is declared as `BaseConcept`. |
| constraints | `TSIdentifier.declaration` declares the inherited scope, which is what makes the `ScopeProvider`s above take effect; `TSIDeclaration.name` is validated as a TypeScript identifier, which is what lets `:` and `=` leave the name cell instead of extending the name; the unitTest language restricts assertions to test methods. |
| generator   | Empty (`main` mapping configuration only).                                                                                                                                       |
| textgen     | 29 `ConceptTextGenDeclaration`s; the twenty-five binary operators share one on `TSBinaryOperation`, the six prefix operators one on `TSUnaryOperation`, `true`/`false` one on `TSBooleanLiteral` and the three declaration kinds one on `TSVariableDeclaration` — all writing the concept alias, so an operator added later needs no textgen at all. `TSModule` writes `<name>.ts`. The model uses `jetbrains.mps.lang.behavior`, since two of these ask a behavior method rather than deciding spacing or bracketing for themselves. |
| intentions  | Add a type annotation, an initializer, an `else` branch, an `else if` branch — the four optional cells the editor hides when empty — and add a template-literal interpolation. Kept beside the side transforms, which are the primary way in for the first four: Alt+Enter still lists them, and it is the only way in when the caret is not at the anchor cell. For the interpolation it is the *only* way in, which is a gap rather than a design — see *Cross-cutting*. |
| tests       | 40 editor tests and 21 nodes tests — 95 JUnit tests between them — plus 23 TypeScript tests that run the generated output. They cover precedence, parens and the ternary, left- and right-associativity, the two ways a pending side transform commits, typing `const` and an identifier, decimal points and exponents, the optional-cell side transforms and the one case that must not forward; and on the types side every operator result the overload table produces, the union of `&&`/`\|\|` in both operand orders (which is the normalization check), the error when the table has no row, and — for the subtyping rule — a member and a narrower union assigned to a union written in a different member order, against a non-member that must still be an error. Typing and deleting a union member are two tests each way, since a delete that collapses and a delete that must not are different code paths. Grouped by feature rather than by test kind with `virtualPackage` — `expressions{,.precedence,.ternary,.numbers,.unary}`, `statements{,.control_flow}`, `declarations{,.scopes}`, `unit_test_language` — since the concept already says which kind a test is. |
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
2. **Who writes TypeScript here?** ✅ **Decided: mostly a generation target.** The primary
   consumer is another MPS language reducing into TypeScript, so extensibility — open
   interface concepts, a verbatim escape hatch, stable generator entry points — outranks
   hand-written code, and **phase 8 can be pulled ahead of phase 3**.
   What this does *not* mean: it is not a licence to skip editor work. Being a generation
   target says something narrower — that `tsc` is the backstop for *diagnostics*, so a check
   MPS would only duplicate can be left to the compiler (decision 1 said the same thing from
   the other side). Every construct still has to be typeable, and by the definition of done
   in 0.4 a concept without a way to type it is not finished. The union annotation is the
   case that made the distinction concrete: the subtyping rule made it *check*, and it took a
   side transform before anyone could *write* one.
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

The syntax half was as cheap as 0.3 promised. The type half was not, and it is what re-ordered the
rest of this document: see *What phase 1 learned about phase 5* below.

- ✅ **Operators by precedence group**: `%`, `< > <= >=`, `!= === !==`, `&& || ??`,
  `& | ^ << >> >>>`, `,`, `in` — twenty-five in all, each one structure concept plus one behavior
  root naming a `TSPrecedence` level. Everything else — editor, textgen, side transforms,
  substitution — is inherited. (`instanceof` waits for classes; `**` landed with 0.3 as the
  right-associativity test case.)
- ✅ **Grouped, so the type rules are five roots rather than twenty-five.** `TSArithmeticOperation`,
  `TSComparisonOperation`, `TSEqualityOperation`, `TSLogicalOperation` and `TSBitwiseOperation` are
  abstract intermediates under `TSBinaryOperation`. `in` and `,` stay direct children, since neither
  shares a rule with anything.
- ✅ **Unary**: `~`, `typeof`, `void`. (`!` and unary `-`/`+` landed with 0.3; `++`/`--` need
  assignability → phase 2.) The spacing rule had to grow for them: `needsSpaceBeforeOperand` now
  asks whether the alias and the operand would run together into one token — always after an alias
  ending in a letter, otherwise only where `--` or `++` would appear. So `typeof 5` and `- -5`, but
  `~~5` and `!!5`. One behavior method, which the editor and the textgen both call.
- ✅ **Literals**: `true`/`false` under an abstract `TSBooleanLiteral`; template literals, modelled
  as TypeScript's own AST models them — a head of text and a span per interpolation, each carrying
  the text after it, so the two cannot fall out of alternation; and `TSNumberValue` widened for
  `0x`/`0b`/`0o`, numeric separators and `bigint`, with `check_TSNumberLiteral` reporting what the
  datatype has to admit as an intermediate typing state.
- ✅ **The type rules, via MPS's overloaded-operator mechanism** — which is the find of this phase.
  `OverloadedOpRulesContainer` holds the per-operator typing as a *table*: `+` with a string operand
  → `string` (one `OverloadedOpTypeRule_OneTypeSpecified` row covering string+string, string+number
  and number+string), arithmetic and bitwise (number, number) → `number`, comparison (number, number)
  and (string, string) → `boolean`. `typeof_TSBinaryOperation` is then a single rule that waits for
  both operand types, asks the table, and reports otherwise.

  **The operand checks are not a second set of rules.** A combination with no row in the table *is*
  what "cannot be applied to these operands" means, so the checking and the typing cannot disagree —
  they are the same table. `Operator '*' cannot be applied to 'string' and 'number'`.
- ✅ The four operators whose result does not depend on their operands override that rule instead of
  adding rows: equality → `boolean` (carrying the same-type check the old `typeof_TSEqualsExpression`
  had, now generalized to all four), `in` → `boolean`, `,` → its right operand, and `&& || ??` → the
  union of both operands.
- ✅ **The types those rules needed**: `TSUnionType`, `TSNullType`, `TSUndefinedType`, `TSArrayType`.
  `TSTypeUtil.union` is the only place a union is constructed — it flattens, deduplicates and sorts,
  because MPS compares types as trees and `number|string` is only the same type as `string|number` if
  both are always built the same way round. The two halves of that are deliberately different
  questions: **whether two members are the same is a structural match** (`EqualsStructurallyExpression`,
  which is `MatchingUtil.matchNodes` — the comparison the typesystem itself makes, so the dedup
  cannot merge two types the solver keeps apart), and **what order the survivors read in is
  `presentation`**, which is a question about text. An earlier cut had a private `key()` building an
  ad-hoc string for both, which was a second definition of type identity kept in step with the first
  by hand.
- ✅ **Type syntax has a precedence of its own**, which nothing in phase 0 anticipated. The array
  suffix binds tighter than a union, so `number | string[]` is TypeScript for `number | (string[])`.
  `TSIType.needsParenthesesAsArrayElement` is the one virtual method that decides it, asked by both
  the presentation and the textgen. Function types will override it in phase 3. If a third such
  question appears, types want their own `TSPrecedence`.

- ✅ **The member-of-union subtyping rule** — `let x: number | string = 1` type-checks, and so does
  a union assigned to a wider union. *The one subtyping rule* below is what it cost.
- ✅ **`null` and `undefined` literals**: `TSNullLiteral` and `TSUndefinedLiteral`, one editor, one
  textgen and one inference rule each — no shared abstract superconcept, because the two have
  different types and would share nothing but the alias-rendering their editors already do. The
  four concepts that now spell `null` and `undefined` (literal and type) carry short-descriptions,
  since each alias is a collision.

- ✅ **A union annotation can be typed, and unmade again.** A RIGHT side transform on `TSIType` for
  `|`, in the same default menu as the `=` one: it wraps the type it anchors on in a `TSUnionType`
  and puts the caret in the new member. Which type gets wrapped is decided by where the caret is,
  not by a flag — `string[]` with the caret after `string` is inside the array and unions the element
  type, after the `[]` it is the array and unions that.

  **Half of it MPS already did.** A first cut also appended a member when the anchor was already in
  a union, and that branch was dead code: for a list whose separator is a single character, MPS
  installs `RefNodeListHandlerElementKeyMap` on every element cell, binding that character to
  insert-an-element, and it runs before a side transform would. The branch is gone and the menu now
  declines inside a union outright, because the one case where it *had* fired would have nested a
  union in a union — two trees reading the same, which is the thing this language keeps refusing to
  allow. The test that types `|` on a member stays: it pins MPS's behaviour, which the language now
  depends on.

  **Deleting is the other half, and it does not fall out of anything.** MPS's built-in list delete
  detaches the member and stops, which leaves a union of one — a tree that reads as the surviving
  type, generates the same text as it, and *is not* that type. `TSUnionType_DeleteMember` on the
  list's `elementActionMap` takes the union with it when one member would be left. Two editor tests,
  one per branch; the collapsing one doubles as the proof that an `elementActionMap` beats the
  built-in delete at all. A checking rule covers the way in that the editor no longer has —
  see the typesystem row.

Still open, and the order they should be done in:

1. **`[]` for arrays**, the twin of the `|` transform above: a RIGHT side transform on `TSIType`
   wrapping the type in a `TSArrayType`. Nothing new is needed for it — `needsParenthesesAsArrayElement`
   already decides the bracketing both the editor and the textgen use.
2. **The tests phase 1 still owes**: `TSTestCase` roots running the new operators as real TypeScript,
   and editor tests for the alias-collision groups (see *Cross-cutting* below).
3. **Array literals** — moved to phase 5, see below.
4. **Object literals** — moved to phase 5, see below.

### The one subtyping rule

Getting `number` to be a subtype of `number | string` is not a `SubtypingRule`, and the reason is
worth writing down before someone tries it again. MPS's `SubtypingRule` answers *what are the
supertypes of this type* — the solver walks **up** from the sub-type — and there is no rule kind that
walks down from the super-type. From `number` the set of unions containing it is infinite, so there
is nothing to return.

`InequationReplacementRule` is the mechanism: it intercepts the inequation itself, and MPS's own
`JoinType_supertypeOf_arguments` in `jetbrains.mps.lang.typesystem` is the exact precedent — a join
*is* a union, and that rule is what our rule is shaped after.

Three things it taught, none of them guessable:

- **The rule is applicable only when it can say yes.** `isApplicableClause` does the whole membership
  test, and the body then creates one `part :<=: member` inequation per part. A rule that claimed the
  inequation and left the body empty would report *success* for a type the union does not cover —
  silently, because the solver takes an unhandled-but-claimed inequation as satisfied. The negative
  test is what pins this down: `let x: number | string = true` must still be an error.
- **The sub-type side is `BaseConcept`, not `TSIType`, with an instance test in the clause.** MPS
  looks a replacement rule up along the sub-type's **superconcept chain only, never along the
  interfaces it implements** (`DoubleTermRules.allSuperConcepts` — MPS's own source carries a comment
  admitting it does not know why). A rule declared on `TSIType` is found for nothing at all, and
  nothing warns you: the write is accepted, the language builds, and the error stays exactly where it
  was. The `JoinType` rule uses `BaseConcept` for this reason.
- **`TSTypeUtil.parts` is now shared** with the rule — the sequence of a type's members, or the type
  itself when it is not a union. Both the loop that builds a union and the loop that consumes one go
  through it, so union-vs-union assignability is the same three lines as member-vs-union.

One probe that lies, for the next person: `TypeChecker.getInstance().getSubtypingManager()
.isSubtype(a, b)` from the console answers `false` for a pair the checker accepts, because the
language scope is collected from the *type nodes handed in* and a bare leaf type carries none. Check
the rule by writing the tree and reading what the checkers say about it, not by asking the subtyping
manager.

### What phase 1 learned about phase 5

Two of phase 1's own bullets turned out to need types phase 5 owns, and pretending otherwise would
have shipped something wrong:

- **The array literal** is fine for `[1, 2, 3]` (→ `number[]`) and, now that unions exist, for
  `[1, "a"]` (→ `(number | string)[]`). It is `[]` that has no answer here: TypeScript types it
  `never[]`, and `never` is phase 5. Array covariance — what makes `never[]` assignable to
  `number[]` — is phase 5's structural subtyping. So the literal moves to phase 5 and arrives with
  the types that can state it.
- **The object literal** is worse, and the reason is not the type system at all: `{a: 1}` needs a
  `TSObjectType` with property signatures, and *nothing can read such a type* until member access
  exists, which is phase 3. A type no expression can consume is not worth shipping.

Neither is a large piece of work once its prerequisites exist. Both are listed under phase 5 now.

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

- `any` / `unknown` / `never` / `void` with strict-null semantics. `null` and `undefined` are
  already here as types and as literals, and with only the union rule for subtyping the language is
  *already* strict about them: `null` is assignable to nothing but a union that names it, which is
  what `--strictNullChecks` means. What is left for them is narrowing, below.
- Structural subtyping rule; object types, `interface`, `type` aliases, optional properties,
  index signatures. **The object literal lands here**, not in phase 1: `{a: 1}` needs a
  `TSObjectType` with property signatures, and no expression can read such a type until member
  access exists in phase 3.
- Intersections and literal types. Unions themselves are already here from phase 1, normalized by
  `TSTypeUtil.union` and with the member-of-union subtyping rule that phase 5 owed them — that one
  was small and blocking, so it was done with phase 1. What is left for phase 5 is the subtyping
  *lattice* around it: everything above still has exactly one subtyping relation.
- Arrays and tuples. **The array literal lands here too**, for one reason only: `[]` is `never[]`
  in TypeScript, and assigning it to `number[]` needs array covariance. The non-empty cases already
  work with what phase 1 built.
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

- **Two small debts phase 1 left, neither worth a phase of its own.** `${` cannot be typed into a
  template literal's text cell — a free-text property accepts the keystroke, so no side transform
  ever fires there, and the intention is the only way in until that cell is given something that
  refuses it. And a negative number *literal* is now a second spelling of unary minus applied to a
  positive one, because `TSNumberValue` still admits a leading `-` from before `TSUnaryMinusExpression`
  existed; the output is identical either way, but two trees render the same text, and the `-?`
  should go the next time a migration is being written anyway.
- **What delete does, and the one gesture no test can reach.** Until this was written the language
  had no delete behaviour at all: every `Delete` fell through to MPS's default, which removes the
  node under the caret and leaves a hole — so deleting the right operand of `1 + 2` lost the
  operator *and* left `1 + <hole>`, deleting a bracket took the whole parenthesised expression, and
  deleting a type annotation did nothing whatsoever, since a constant cell has no delete of its own.
  Seven action maps now do what baseLanguage does, attached to cells through the `actionMap`
  reference the notation prints only as `# other ref`:

  | cell | Delete | Backspace |
  |---|---|---|
  | binary operand | collapse to the *other* operand | same, from the left operand |
  | binary operator | collapse to the left operand | collapse to the right operand |
  | prefix operator | collapse to the operand | — |
  | `(` and `)` | unwrap | unwrap |
  | type annotation / initializer | remove it, caret back to the name | — |
  | union member | remove it; collapse the union at one member | same |

  Six editor tests cover the addressable ones, and three of them were watched failing first — the
  annotation one reported `Different children count in role: declaredType [was: 1, expected: 0]`,
  which is the default doing nothing, in one line.

  **The operator cells cannot be tested.** `AnonymousCellAnnotation` places a caret only through
  `findCellWithId`, and a `component alias` cell produces no cell that carries an id — an
  `EditorCellId` on that cell model is dropped, and the test dies with `No cell with id operator
  found`. baseLanguage does not hit this because its `UnaryMinus_Editor` writes the `-` as a plain
  constant; ours is the alias component, and that is not negotiable — the whole precedence-typing
  machinery reads the operator from it. The action maps are there anyway, because the gesture exists
  whether or not a test can press the key, and an editor where the operand collapses and the
  operator does not is worse than either. An attempt to dodge it by putting the prefix action on the
  *operand* cell as a backspace failed honestly: at position 0 of a label with cells in front of it,
  MPS backspaces into the previous cell rather than consulting the action map, and the test said so.
- **A list separator is styled through `separatorStyle`, a child the notation does not print.** The
  union rendered as `null| number` because the generator gives every separator cell
  `punctuation-left`, which is right for a comma and wrong for an operator. The fix is not the
  separator *text*: `CellModel_ListWithRole` has a `separatorStyle` child holding an
  `InlineStyleDeclaration`, and its items are applied after the defaults — so one
  `punctuation-left` item set to false undoes it. baseLanguage's `AlternativeType` (Java's `A | B`)
  is written exactly that way. The catch is that the editor notation prints the child only as
  `# other child`, which does not parse back, so it has to be attached from `run_code` — and this
  editor root must not be rewritten from text afterwards or the child goes with it.
- **An operator whose alias is a prefix of another one cannot be tested by typing it alone.** `?`
  before `??`, `!` before `!=`/`!==`, `<` before `<=`/`<<`, `>` before `>=`/`>>`/`>>>`, `&` before
  `&&`, `|` before `||` — MPS holds the side transform *pending* while a longer alias could still
  match, and commits it when the edit ends. In the editor that is the next keystroke or the caret
  leaving the cell; in an `EditorTestCase` it is `InvokeActionStatement` with `MoveRight`.
  `PressKeyStatement` with `VK_RIGHT` does **not** work, and fails as though the keystroke did
  nothing. Every operator added from here on is in one of those families.
- Intentions and quick fixes alongside each phase (the ternary paren quick fix is the model).
- Migration scripts for every structural rename — the concept-prefix rename and the
  `TSConsoleLog` removal show the cost of not having them.
- Editor tests for every typing interaction; nodes tests for every type rule.
- Optional side track once the structure is broad enough: a `.ts` **importer** (parse real
  TypeScript into MPS nodes), which is also the fastest way to build a large test corpus.
  This is now step 2 of phase 9 rather than a track of its own.
