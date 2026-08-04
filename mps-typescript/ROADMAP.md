# Roadmap — `de.q60.mps.lang.typescript`

The order below is chosen so that the expensive, hard-to-retrofit decisions land while the
language is still small, and so that every later feature is a repeat of an established
pattern rather than a new one.

## Where we are today

| Aspect      | State                                                                                                                                                                          |
|-------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| structure   | `TSModule` (root, named) → `TSIStatement*`: expression statement, `TSBlock`, `let`/`const`/`var` declarations, `if`/`else if`/`else`. `TSITrailingChildOwner` (`TSIfStatement`, `TSElseIfClause`) declares which child a construct's notation ends with, which is what lets a nested block hand a side transform back to the construct it closes without knowing what that is. Functions: `TSFunctionDeclaration` (statement, declaration, scope provider and trailing-child owner) and `TSArrowFunction`, sharing the parameter list and return type through `TSIFunctionLike`; `TSParameter` (a `TSIDeclaration`, so identifiers bind to one for free) with `isOptional`, `isRest` and a default value; `TSReturnStatement`; `TSIConciseBody` with `TSBlock` and `TSExpressionBody` under it. Expressions: identifier (a reference to a `TSIDeclaration`), dot expression, `TSCallExpression` on any callee, `console` + `console.log` as bespoke concepts still, awaiting object types. All twenty-five binary operators, grouped under the abstract `TSArithmeticOperation` / `TSComparisonOperation` / `TSEqualityOperation` / `TSLogicalOperation` / `TSBitwiseOperation`; the prefix operators `! - + ~ typeof void` under `TSUnaryOperation`; parentheses; ternary. Writing to a variable is sixteen operators under `TSAssignmentOperation` — `=` and the fifteen compound ones, grouped again under `TSCompoundAssignmentOperation` as arithmetic, bitwise and logical — plus `++`/`--` in both positions: `TSPrefixIncrementOperation` under `TSUnaryOperation`, and `TSPostfixOperation`, which is the first concept to implement `TSIBinaryLike` with a syntactic *left* side and a null right one. Literals: string — whose `escapedValue` holds the source text between the quotes rather than the string it means, see *A string literal stores its own spelling* below — number (`TSNumberValue`-constrained text covering the decimal, hex, binary, octal, separator and bigint forms), `true`/`false`, `null`, `undefined`, template literals as a head plus a span per interpolation. `TSIBinaryLike` extends `TSIExpression`, which is what lets the precedence machinery ask a one-sided operator for its level. Types: `boolean`, `number`, `string`, `console`, `null`, `undefined`, `void`, union, array, function type, and `TSObjectType` over `TSPropertySignature`s — optional ones included — under a `TSITypeMember` interface that index and call signatures can join. `TSObjectLiteral` over `TSPropertyAssignment`s produces one; `TSMemberAccess` reads a member off one, by *name* rather than by reference, for the reason under *Reading a member off a type*. |
| editor      | The real investment so far: precedence-aware typing, tree rebalancing on operator entry, incomplete-paren concepts (`TSIncompleteLeftParen`/`RightParen`) that resolve into `TSParenthesizedExpression`, ternary insertion and wrapping. Optional cells (type annotation, initializer, `else`, `else if`) render only when filled, and are reached by typing `:` / `=` / `else{` / `else if` — default transformation menus with RIGHT side-transform sections on `TSVariableDeclaration`, `TSIType` and `TSIfStatement`, plus one `TransformationMenuContribution` to `BaseConcept`'s default menu that hands a transform typed after a nested construct to whatever that construct closes. A second contribution puts `++`/`--` after an expression, written as two spelled-out actions because a named substitute menu cannot be referenced from text at all — see *The reference that cannot be written from text* under phase 2. Types compose the same way: `|` and `[]` on the `TSIType` menu wrap a type in a union and in an array — lengthening a union that is already there is MPS's own doing, since it binds a one-character list separator as an insert key on every element cell. `TSArrayType`'s editor brackets an element that binds looser than the suffix, through the same `needsParenthesesAsArrayElement` the presentation and the textgen ask, so `(number \| string)[]` reads in the editor as it generates. And there is now a **delete story**, nine `CellActionMapDeclaration`s of it, written so that deleting retraces typing: an operand, a union member, an annotation and an initializer each empty out first and take their construct with them only on the second keystroke, while parentheses, the array suffix and the operator cells collapse in one. See *What delete does* under **Cross-cutting**. Every one of them, and every side transform beside them, also says where the **caret** goes — the caret ends where the text the edit produced ends, so the next keystroke carries on rather than being corrected first. That is asserted rather than assumed now: `EditorText.withCaret` renders the whole editor with a `\|` in it. See *Where the caret lands* under **Cross-cutting**. |
| behavior    | `TSPrecedence` — the whole precedence scale as instances carrying level *and* associativity, and the only place a priority number is written — the parenthesis machinery written against `TSIBinaryLike` rather than against binary operations, `TSTypeUtil.union` normalizing every union that is built — members deduplicated by structural match, ordered by presentation — `ScopeProvider.getScope` on `TSModule` and `TSBlock` — the declarations of a statement list that precede the referring statement, composed with the enclosing scope — `TSITrailingChildOwner.trailingChild` for the `else` side transforms, `TSTypeUtil.declarationToInitialize` for the one behind a union annotation, `needsSpaceBeforeOperand` and `needsParenthesesAsArrayElement` (each asked by both the editor and the textgen, so what is shown and what is generated cannot drift), and `TSNameUtil.isValidName`. Types present themselves through `BaseConcept.getPresentation`, overridden only where the notation is more than a keyword — the alias is already the default, and `TSFunctionType` is the third to need it. `TSFunctionUtil` is the signature side: which function a `return` belongs to, the returns that belong to one function rather than to a nested one, the `TSFunctionType` a function's signature comes to, and the three questions a call asks — how many arguments are required, whether a count is admissible, and what type the argument in position *n* must have. `TSScopeUtil.declarationsVisibleIn` now exempts function declarations from the position rule, because they hoist. `TSAssignmentUtil` is what may be written to, asked once by all twenty operators that write — see *What may be written to is one method* below. `TSTypeUtil.memberNamed` and `.propertiesOf` are the object-type half: one lookup that member access, the structural subtyping rule and the duplicate-name check all go through. `TSTypeUtil.typeTheCaretIsBehind` is the union-climb that `declarationToInitialize` and `parameterToDefault` both needed. |
| typesystem  | Per-operator typing lives in an `OverloadedOpRulesContainer` table, which `typeof_TSBinaryOperation` consults through `operation-type` — so an operand combination with no row *is* the "cannot be applied" error, rather than a separate set of operand checks. Overriding rules for equality, `in`, `,`, `&& \|\| ??`, assignment and the three logical compound assignments, whose results do not depend on their operands. The twelve arithmetic and bitwise compound assignments need no rule at all — four more rows in the same table are the whole of their typing, see *A compound assignment is a row in the table, not a rule of its own* below — and `++`/`--` are `typeof_TSUnaryOperation` and a mirror of it on `TSPostfixOperation`, plus one checking rule each for what may be written to. `typeof` rules for every literal, the prefix operators, the ternary, parens, declarations and identifiers. Non-typesystem checks: priority violations, a prefix operator immediately left of `**` (TS17006 — a syntax restriction, not a precedence one), `??` mixed with `\|\|`/`&&`, stray incomplete parens, `const` reassignment, a declaration with neither annotation nor initializer, a number literal still in an intermediate typing state, a string literal ending in an unfinished escape, and a union of fewer than two members — that last one written for the generator rather than for the editor, which can no longer build one. Functions add: the type of a declaration and of an arrow, of a parameter and of a `return`; `typeof_TSCallExpression`, which is the whole call story — a `when concrete` on the callee, a not-a-function-type gate, arity before assignability, and a result type outside the arity branch; and the checking rules for a return in the wrong place or shape, a function that promises a value and never returns one, and the four parameter-list shapes TypeScript's grammar refuses. Two quick fixes. Three subtyping relations, and every assignment-shaped rule now says `:<<=:` rather than `:~:` — see *Assignability is not comparability* under phase 5, which is the correction to know about before reading any of them. `TSIType_subtypeOf_TSUnionType` is an `InequationReplacementRule` that makes every member of a union a subtype of it — see *The one subtyping rule* below for why it is a replacement rule rather than a `SubtypingRule`, and why its sub-type side is declared as `BaseConcept`. |
| constraints | `TSIdentifier.declaration` declares the inherited scope, which is what makes the `ScopeProvider`s above take effect; `TSIDeclaration.name` is validated as a TypeScript identifier, which is what lets `:` and `=` leave the name cell instead of extending the name; `TSStringLiteral.escapedValue` is validated as text that may still be *being* typed, which is a weaker question than whether it is finished — see *A string literal stores its own spelling* below; `TSIConciseBody` names `TSExpressionBody` as its `defaultConcreteConcept`, so a fresh arrow function opens with the body form that can be typed into; the unitTest language restricts assertions to test methods. |
| generator   | Empty (`main` mapping configuration only).                                                                                                                                       |
| textgen     | 43 `ConceptTextGenDeclaration`s; the forty-one binary operators share one on `TSBinaryOperation`, the eight prefix operators one on `TSUnaryOperation`, the two postfix ones one on `TSPostfixOperation`, `true`/`false` one on `TSBooleanLiteral` and the three declaration kinds one on `TSVariableDeclaration` — all writing the concept alias, so an operator added later needs no textgen at all. `TSModule` writes `<name>.ts`. The model uses `jetbrains.mps.lang.behavior`, since two of these ask a behavior method rather than deciding spacing or bracketing for themselves. |
| intentions  | Add a type annotation, an initializer, an `else` branch, an `else if` branch — the four optional cells the editor hides when empty — add a template-literal interpolation, and swap an arrow function between a block body and an expression body, which is the one construct in the language whose two forms no keystroke can reach. Kept beside the side transforms, which are the primary way in for the first four: Alt+Enter still lists them, and it is the only way in when the caret is not at the anchor cell. For the interpolation it is the *only* way in, which is a gap rather than a design — see *Cross-cutting*. |
| tests       | 129 editor tests and 48 nodes tests — 247 JUnit tests between them — plus 72 TypeScript tests, in eighteen `TSTestCase` roots, that run the generated output. They cover precedence, parens and the ternary, left- and right-associativity, the two ways a pending side transform commits, typing `const` and an identifier, decimal points and exponents, the optional-cell side transforms and the one case that must not forward; and on the types side every operator result the overload table produces, the union of `&&`/`\|\|` in both operand orders (which is the normalization check), the error when the table has no row, and — for the subtyping rule — a member and a narrower union assigned to a union written in a different member order, against a non-member that must still be an error. Typing and deleting are covered gesture by gesture, including the intermediate state a two-step delete leaves — pinned by typing into it rather than by asserting a tree with a placeholder in it, which the writer refuses. Twenty-one of them are about **where the caret ends up** rather than what the tree becomes: seventeen assert the whole editor with the caret written into it, four chain a further keystroke that only a correct caret makes meaningful, and four were watched failing against the two placement bugs they were written for. Thirty-two more are about the **alias-collision families** — every operator whose alias is a prefix of another one, typed keystroke by keystroke, which after compound assignment is very nearly every operator there is — see *An operator whose alias is a prefix of another one* under **Cross-cutting**. And every expression concept phase 1 added is now *evaluated*, not merely typed: see *What the TypeScript tests run* below. Three of them, in `programs`, are different in kind from the rest: they start from an empty `TSModule` and type keystroke by keystroke, which is the only way to ask what using this editor is actually like — see *What typing a whole program costs today* below, and *What the second program test says about navigation* under phase 5. That second one is what found that an object type's properties could not be typed at all, which is the standing argument for writing them. Grouped by feature rather than by test kind with `virtualPackage` — `expressions{,.precedence,.ternary,.numbers,.unary,.operator_aliases,.increments,.templates}`, `statements{,.control_flow}`, `declarations{,.scopes}`, `functions{,.calls,.parameters,.arrows,.scopes}`, `caret{.expressions,.declarations,.types,.functions}`, `types.objects`, `programs`, `unit_test_language` — since the concept already says which kind a test is. The function tests cover the gestures one by one — the open paren that makes a call, the value typed after `return`, `?` and `...` and `=` on a parameter, `=>` in an empty hole — the type of a function and of a call, wrong arity in both directions and against a rest parameter, an argument of the wrong type, calling something that is not a function, the three return shapes, the four parameter-list shapes the grammar refuses, a function fitting a function type whose parameter is named differently with the void-result escape beside it and the negative that must still fail, hoisting in both of its forms, and an arrow function both inferring its return type and being passed to something that calls it. |
| unit tests  | A second language, `de.q60.mps.lang.typescript.unitTest`: `TSTestCase` (root) → `TSTestMethod` → `TSAssertTrue`/`False`/`Equals`/`NotEquals`/`TSFail`. Done in phase 0.2.          |

**Object types are here**, which closes the gap that dominated the ordering for three phases:
`TSObjectType` with property signatures, `TSObjectLiteral` to produce a value of one,
`TSMemberAccess` to read a member off one, and the structural subtyping rule that makes any of it
mean anything. What is left before `console` can stop being a concept is `unknown` — an ambient
`declare const console` needs a type for `log`'s parameter, and none of the three primitives phase 5
owns has arrived yet. See *Reading a member off a type* under phase 5.

That work also found a bug older than itself, and it is the one to know about before reading any
type rule here: **assignability is not comparability, and MPS's weak subtyping is not assignability
either**. See *Assignability is not comparability* under phase 5.

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
   and importing real `.d.ts` files. *Recommendation:* hand-written minimal lib, then real
   `.d.ts` import in phase 9, which subsumes it once it works.
   **The decision stands; only its phase has moved.** It was to land in phase 3 and now lands with
   object types in phase 5 — not because the machinery is missing, since phase 3 built all of it,
   but because an ambient declaration has to *say* something and `{ log(…): void }` is a type this
   language cannot yet write. The mechanism to use when it does is an **accessory model**: a model
   listed in the language's `.mpl` that is implicitly imported into every model using the language.
   That is exactly how `java.lang` reaches every baseLanguage model and how `jetbrains.mps.kotlin`
   ships the Kotlin stdlib, and `jetbrains.mps.kotlin.sourceSets` is the precedent for one written
   in the language's own concepts rather than derived from bytecode. It costs a `TSModule.getScope`
   that also offers what the model imports, and a `.model/.isReadOnly()` guard on any quick fix, so
   that none of them offers to edit the lib.

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
    the quick fix and the editor now all go through; keeping the side-picking in one util is what
    made that possible at all.
    **A correction, because this sentence used to give the wrong reason.** It said the typesystem
    model *cannot* call behavior methods. It can — it needs `jetbrains.mps.lang.behavior` among its
    used languages, which the textGen model has had all along and the typesystem model simply did
    not. The statics are still the right shape here, because the question is about two nodes rather
    than about one, but "cannot" was never true and phase 3 believed it long enough to build a
    pointless delegate on the strength of it. `check_TSIFunctionLike` now calls
    `hasStatementBody()` directly.
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
  - **Left for phase 2, where the operators are.** ✅ Done, and the machinery held. Postfix
    `++`/`--` are `TSPostfixOperation`, the first thing to instantiate `TSIBinaryLike`'s mirror
    case — a syntactic *left* side and a null right one — and `findTurn`, `rebalance` and
    `isBadPriority` needed **no change at all**: typing `i+++1` in one run gives `i++ + 1`, which
    is TypeScript's own maximal-munch reading, and nothing rotates because POSTFIX binds tighter
    than every binary level. Writing those three against `TSIBinaryLike` rather than against
    `leftExpression`/`rightExpression` is what bought that, three phases before anything used it.
    `POSTFIX` is no longer an unoccupied row; `NEW_WITHOUT_ARGUMENTS` still is.
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

  The 247 MPS tests and 72 TypeScript tests are the model to keep.

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
  the presentation and the textgen. Function types override it, as this predicted. If a third such
  question appears, types want their own `TSPrecedence` — the second one nearly arrived with
  functions and did not: `(a: number) => string[]` is a function returning an array, so the arrow
  swallows everything to its right and one boolean still answers it.

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

- ✅ **An array annotation can be typed, and unmade again.** A RIGHT side transform on `TSIType` for
  `[]`, the third action in the same default menu, wrapping the type it anchors on in a `TSArrayType`.
  It carries **no condition at all**, and each case that leaves open reads correctly: after a union
  member it arrays that member, which is what `number | string[]` means, and after an array it arrays
  the array, which is `number[][]`. The array of a *whole* union is the one thing that cannot be typed,
  and it is also the one the caret cannot ask for — a union owns no cell of its own past its last
  member. Deleting is one step rather than two, as it is for a parenthesis: the suffix was never
  reached through a hole, so there is none to give back.

  **The label is the pair, and a two-character label is not the prefix case.** `?`/`??` and `!`/`!=`
  are one label that is a prefix of another, and MPS holds those pending and commits when the edit
  ends. `[` is not a label at all, so it matches nothing and commits nothing however the edit ends —
  typing it alone leaves the type exactly as it was, and it is the `]` that fires the transform.

  **The editor was the third answer to a question two others already had.** This document claimed
  `needsParenthesesAsArrayElement` decided the bracketing "both the editor and the textgen use". Only
  two of the three asked it: `getPresentation` and the textgen bracketed, and the editor wrote its
  element and its `[]` unconditionally — so a `TSArrayType` over a `TSUnionType` was projected as
  `number | string[]`, which reads as a different type from the one the tree holds and from the one
  `tsc` was handed. Two `renderingCondition`s on constant cells fix it, and they call the same
  behavior method, so the three renderings are now one decision. Nothing could *type* that tree
  before — completion could still build it, which is how it survived — and the `[]` transform is what
  would have made it easy to reach.

  **A punctuation seam loses its caret position, and which side gets it back is a real decision.**
  `StyleAttributesUtil` reads `punctuation-left` as "no first position" and `punctuation-right` as
  "no last position" — the mechanism that stops two adjacent cells claiming one visual spot. Where
  *both* sides declare it, as the element cell (punctuation-right) and `[]` (punctuation-left) do,
  the spot goes away entirely: neither the end of `number` nor the start of `[]` is a legal position,
  and an `AnonymousCellAnnotation` aimed at either fails with `Position N is not allowed for
  EditorCell_Label`. That is over-specified spacing, not a decision anyone made — and
  `StyleAttributesUtil` consults `first-position-allowed` / `last-position-allowed` *before* the
  punctuation flags, so the caret can be handed back without giving up the space.

  **The side to hand it to is the element's, and the reason is what can be typed there, not comfort.**
  A caret at the *start* of `[]` sits in a cell of the `TSArrayType`, so a transform typed there is a
  LEFT one on the array — of which this language has none, leaving the position good for deleting and
  nothing else. A caret at the *end* of the element sits in a cell of the element type, which is
  where the `|` menu's own comment always said the interesting case was: `string[]` with the caret
  after `string` unions the element and gives `(string | number)[]`, where after the `[]` it unions
  the array and gives `string[] | number`. Until the position existed, half of that comment described
  something no keystroke could reach. So `last-position-allowed` on the element cell (and on the `)`,
  for the seam before the suffix), and nothing on `[]` — one caret per seam, on the side that can do
  more than delete.

  **Which then leaves `Delete` there with nothing to do, so the map goes on that cell too.**
  `TSArrayType_Actions` is attached to the element cell as well as to the `[]` constant, and needs no
  guard: an action map is inherited down the cell tree but shadowed by any inner cell that declares
  one, and every composite type here declares one — a union's members carry `TSUnionType_DeleteMember`
  through `elementActionMap`, a nested array carries this same map for its own suffix. So `Delete` at
  the end of `number` in `number[]` unwraps, while `Delete` at the end of `string` in
  `(number | string)[]` is answered by the union and empties the member. That second one is a test
  rather than a claim, because the reasoning is about shadowing rather than about the tree, and a
  composite type added later without a delete story of its own is what would break it.

- ✅ **The tests phase 1 owed**: `TSTestCase` roots running the new operators as real TypeScript, and
  editor tests for every alias-collision group. *What the TypeScript tests run* below is what the
  first of those found; the second is seventeen tests in `expressions.operator_aliases`.

Still open, and the order they should be done in:

1. **Array literals** — moved to phase 5, see below. Until they exist nothing can *evaluate* an array,
   so the `arrays` sandbox module is annotations only: it proves the textgen against `tsc --strict`
   (`(number | string)[] | null`, `number[][] | null`) and nothing more.
2. **Object literals** — moved to phase 5, see below.

### What the TypeScript tests run

Six new `TSTestCase` roots — `relational`, `equality`, `logical`, `bitwise`, `literals`, `sequence` —
plus methods added to `arithmetic` (`%`) and to `unary` (`typeof`, `void`). Between them **every
concrete expression concept the language has is now evaluated by `node --test` against a
`tsc --strict` build**, with one exception named below. Three things that only running the output
could have said:

- **`const yes: boolean = true` is not of type `boolean` to `tsc`.** Control-flow analysis narrows
  the `const` to the literal type `true` in spite of the annotation, so `yes !== no` is TS2367 — the
  same no-overlap error the definition of done already recorded for `!(1 == 2)`, arriving from the
  one direction an explicit annotation looked like it had closed off. The assertions about the
  boolean literals go through `assert equals` rather than through a comparison.
- **`in` is the one operator that cannot be evaluated**, and not for want of a rule: its right
  operand has to be an object, and this language has no type that is one. It arrives with object
  types in phase 5. Its MPS-side typing — `in` → `boolean`, overriding the overload table — is what
  the nodes tests cover, and that is all that can be said about it here.
- **`,` can be evaluated, but only just.** `tsc` reports TS2695 for a comma expression whose left
  operand has no side effects, which rules out every literal and every identifier this language can
  write. `void` happens to be the one prefix operator TypeScript's `isSideEffectFree` does not
  answer for, so `(void 0, 42)` is the shape the test uses — inside explicit parentheses, since a
  bare comma expression as an argument would be read as an argument separator. Worth knowing before
  the next construct is written off as unevaluable.

### A string literal stores its own spelling

`TSStringLiteral.escapedValue` holds the source text between the quotes — `a \"quote\"` — and not
the string that spells. That is the opposite of the instinct a semantic model gives you, and it is
the right way round here for one reason: **it is the only arrangement in which nothing has to
escape.** The editor renders the property, the textgen writes the property, and with no conversion
between them there is nothing for them to disagree about. The language got there the other way round
first, storing the meaning and escaping at generation time, and the `escapes` sandbox is what that
cost: it rendered as `"a "quote", a \backslash and a` with the closing quote stranded on the next
line, reading as a different string from the one it generated. That is the same drift the array
suffix produced, and the fix turned out to be removing the escaping step rather than adding a second
one.

Both reference languages store it this way — baseLanguage's `StringLiteral.value` really does hold
`-classpath \"` — and the one complaint to make about them is the name. `value` says nothing about
which side of the escaping it is on, and neither of them ever converts back, so
`getCompileTimeConstantValue` and iets3's `getStringValue()` both hand out the escaped text without
saying so. `escapedValue` and `unescapedValue()` are the pair that keeps that honest here.

**The checking is two tiers, and the split is the whole of what makes it typeable.** A validator that
rejects everything invalid cannot work on a plain property cell: `a\` is half of a typed escape, so
refusing it means the backslash of a `\"` can never be typed at all. iets3's validator does exactly
that, and escapes the consequence only by not using a plain cell — `SplittableCell` with a
`StringLiteralTokenizer` from grammarcells replaces MPS's text handling. baseLanguage has no
validator and reports afterwards through `check_StringLiteral`. So:

- **the property constraint admits what typing passes through** — `isValidWhileTyping`, which allows
  a trailing backslash — and refuses a bare quote, which is never a state on the way to anything
  since a quote in a string is always written `\"`;
- **`check_TSStringLiteral` reports the unfinished escapes left behind**, through `isValidEscaping`.

`TSNumberValue` and `check_TSNumberLiteral` are the same pair for the same reason: the datatype has
to admit `1e` for `1e5` to be typeable at all. Two aspects, one question, split by *when* it is
asked.

Refusing the bare quote buys the gesture as well as the correctness: `"hi"` types over the literal's
own closing quote instead of putting a second one in the text, so no arrow key. And the escapes
themselves type — two backslashes for one, `\"` for a quote — which took three wrong conclusions to
establish, all of them the same mistake. See *The escaping layers* under **Cross-cutting**.

### The template literal was the concept nobody had ever instantiated

Its textgen, its typing and its intention were all written in phase 1 and there was **not one
`TSTemplateLiteral` node in the repository** until the test above wrote one. Writing it found three
bugs, none of which the generated output could show — the `.ts` was right the whole time, which is
the standing argument for the definition of done asking for an editor test as well as a
`TSTestCase`.

- **An empty `head` rendered as a red `<no head>`, and so did an empty `tail`.** Both are ordinary
  TypeScript — `` `${x}` `` is a template literal with an empty head and one span with an empty
  tail, and an empty head is the state *every* template literal starts in, so this was on the main
  path rather than in a corner. A plain `CellModel_Property` shows `<no ROLE>` for an unset value;
  the two properties that turn that off are `emptyNoTargetText` and `allowEmptyText`, and neither
  has a slot in the editor's tailored notation — they are written from the generic syntax or from
  `run_code`. `jetbrains.mps.lang.text`'s `Word_Editor` is the precedent, and it also shows the
  other half of the recipe: a property cell that may be empty needs `first-position-allowed` and
  `last-position-allowed`, because once the placeholder text is gone the cell has no width, and the
  `punctuation-left`/`punctuation-right` that suppress the spaces around it would otherwise leave it
  with no caret position at all — an empty head that can never be filled in.
- **The caret could not reach either end of an interpolated expression.** `${` and `}` carry
  punctuation on both sides and so did the expression cell between them, so `${1}` had no position
  after the `1` — which means no operator could ever be typed inside an interpolation. The tell is
  the same one the array suffix produced: `Position 1 is not allowed for EditorCell_Label: "1"`,
  out of a test whose caret looked perfectly ordinary. The seam goes to the expression cell, by the
  rule under *Cross-cutting*: a caret at the end of the expression is a RIGHT transform on the
  expression, which is every operator in the language, while a caret at the start of `}` would be a
  LEFT transform on the span, of which there are none. Three editor tests hold it: the rendering as
  one string, typing the head while it is still empty, and `+2` after the interpolated `1`.
- **A null obligatory child is not a hole, and the difference is invisible until you try to type.**
  `AddTemplateInterpolation` did `new node<TSTemplateSpan>()` and added it, leaving `expression`
  null — so a freshly added interpolation could not be typed into at all. Every other hole in this
  language is a **placeholder node**, an instance of the abstract concept the role declares, and the
  two render almost alike: `${ | }` for the placeholder against `$|{ _ }` for the null child, where
  the caret has been pushed into the middle of the `${` token because the only cell that would take
  it is not one the caret can enter. The comparison is the whole diagnosis — a hole made by
  backspacing over `${1}` was always fine, which is why nothing else in the language had ever hit
  this. The structure checker says the same thing more plainly (`No child in the obligatory role
  'expression'`), and textgen fails on it, so a sandbox root holding one breaks the build.

  **`set-new` cannot write the fix**, because its concept scope offers only instantiable concepts
  and the placeholder's concept is abstract by definition. `concept/TSIExpression/.new-instance` can,
  and it is plain `jetbrains.mps.lang.smodel` — no reaching into `SNodeFactoryOperations`, which is
  what `set-new` compiles to anyway.

  **And an intention that opens a hole owes a caret, exactly as a side transform does.** This one
  now ends in a `SelectInEditorOperation` on the new placeholder, so the gesture is Alt+Enter and
  then the expression, with no arrow key in between — which the test asserts by typing `1`
  immediately after the intention and comparing the tree. Reaching `editorContext` from an
  `ExecuteBlock` needs **two** language imports on the intentions model, and the error names
  neither: `jetbrains.mps.lang.editor` for `SelectInEditorOperation`, and
  `jetbrains.mps.lang.sharedConcepts` for the `editorContext` parameter itself. Without the second,
  the writer reports `Cannot resolve editorContext as variableDeclaration ... (in scope: span…)` —
  a scope list of locals, which reads like a typo rather than a missing import.

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
  exists. ✅ Both landed together in phase 5, which is what this bullet was asking for. A type no expression can consume is not worth shipping. This said "which is phase 3" when
  it was written, and phase 3 turned out not to own member access at all — a call is on any
  expression whose *type* is a function type, so calls needed nothing from the dot. Member access
  is phase 5's too, and the two now arrive together, which is what this bullet was really asking
  for.

Neither is a large piece of work once its prerequisites exist. Both are listed under phase 5 now.

## Phase 2 — names, declarations, scopes (architectural)

The second retrofit-expensive change. Done, apart from TDZ.

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
- ✅ Assignment `=`, **as an expression**. It began as `TSAssignmentStatement`, a statement
  with a `TSIdentifier` target — which made the "is assignable target" predicate one link
  type rather than a design, and avoided the precedence question. That shortcut is what
  *An assignment was a statement, and that was the whole bug* below is about; it is now
  `TSAssignmentExpression`, a `TSBinaryOperation` at the `ASSIGNMENT` level, and the
  assignable-target question is the checking rule it always should have been.
- ✅ Type annotations are writable: `boolean` / `number` / `string` have editors and textgen,
  and the built-in subconcept substitution offers them. `TSTypeReference` waits for
  something to reference.
- ✅ **Compound assignment** — fifteen operators, and the phase was right that making assignment
  an operator first is what made them cheap. `TSAssignmentOperation` is a new abstract concept
  under `TSBinaryOperation`; `TSAssignmentExpression` moved onto it and
  `TSCompoundAssignmentOperation` sits beside it with the three groups the type rules need.
  Editor, textgen and the RIGHT side transform are all inherited, so what the fifteen concepts
  carry is an alias. See *A compound assignment is a row in the table, not a rule of its own*
  below.
- ✅ **`++`/`--`, prefix and postfix.** The prefix pair is two concepts under
  `TSPrefixIncrementOperation` and nothing else. The postfix pair is what phase 0.3 built and
  could not test — see the 0.3 bullet above, and *What may be written to is one method* below
  for the half both of them share with the sixteen assignment operators.
- Still open: TDZ proper.

### A compound assignment is a row in the table, not a rule of its own

The fifteen operators needed **no new inference rule** for twelve of them. A row in
`TS_BinaryOperations` keyed on `TSArithmeticAssignmentOperation` or
`TSBitwiseAssignmentOperation` is all it takes, because `typeof_TSBinaryOperation` already waits
for both operand types, asks the table and reports when there is no row. So `x -= "a"` is refused
by the *absence* of a row exactly as `x - "a"` is, with the same message — the compound operator
and the operator it compounds cannot come to disagree about what their operands may be, because
they are reading the same table.

**`+=` is the one that had to be written out, and the asymmetry is the point.** `+` is an
`OverloadedOpTypeRule_OneTypeSpecified` row: a string on *either* side makes the whole thing a
string. `+=` cannot be one, because its left operand is the target being written to. `s += 1` is
legal TypeScript and `n += "a"` is not, so it is two ordinary rows — `string += string` and
`string += number` — rather than one specified-operand row. That also means no separate
"is the result assignable to the target" rule is needed: the rows that exist are exactly the
combinations that are assignable back.

`&&= ||= ??=` override the table instead, as `&& || ??` do, and for the same reason: they choose
between their operands rather than computing anything from them. What they require is that the
right operand can be written to the target, and the whole expression is the target's type —
`a ||= b` is `a || (a = b)`, and the value that survives either branch is one the target could
hold.

**What it cost elsewhere was one caret test, and the reason is language-wide.** `+` is now a
prefix of `+=`, so typing it alone stays *pending* instead of opening a hole — and so do
`- * / % ^ ** && || ?? >>>`, every one of which was terminal before this. The families under
*An operator whose alias is a prefix of another one* are no longer seven; they are effectively
all of them. There is no keystroke that commits a pending transform *without moving the caret* —
`MoveRight` carries the caret past the hole it just committed, and the operand itself fills the
hole — so a test that asserts where a freshly opened hole's caret sits has to use a terminal
operator. `Typing_an_operator_puts_the_caret_in_the_operand_it_opens` now uses `<=`, which stays
terminal because `<<=` diverges from it at the second character.

### What may be written to is one method

Twenty nodes ask it now — the sixteen assignment operators and the four increments and
decrements — so `TSAssignmentUtil` answers it once. It hands back a **message rather than a
boolean**, because a typesystem rule cannot call `ReportErrorStatement` from inside a util and
because the two refusals want different words: an assignment names its left-hand side, and
`++`/`--` name their operand, there being a side of those operators with no operand at all.

Writing it down as one method is what found that the check was **stricter than `tsc`**. `(x) = 1`
and `(x)++` are both legal TypeScript — parentheses do not stop an expression being a write
target — so the util unwraps them. A language that refuses what the compiler accepts is a
language people work around, which is the other half of decision 1: being a producer rather than
a checker cuts both ways.

When phase 5 adds member and element access, this is the one place that has to learn about them,
and every one of the twenty learns with it.

### The reference that cannot be written from text

The postfix side transform is two spelled-out `TransformationMenuPart_Action`s rather than the
`TransformationMenuPart_WrapSubstituteMenu` the binary operators use, and that is a limit of the
tooling rather than a design. A `SubstituteMenuReference_Named` resolves **neither by name nor by
node id** when written as text — not even naming `TSBinaryOperation_Operators`, which already
exists and is already referenced twice — so a menu-driven part would have to be built from
`run_code` and could not be maintained from the notation afterwards. With exactly two postfix
operators the explicit form costs nothing and reads better; a third would be the moment to pay
for the menu.

Two more things in that editor are `run_code`'s rather than the notation's, and they join the
list of roots that must not be rewritten from tailored text: the `actionMap` reference on the
alias cell and the `EditorCellId` beside it. The tailored notation prints neither, so a rewrite
drops both silently — the same trap the `separatorStyle` child and the empty-list `emptyCellModel`
already carry.

### An assignment was a statement, and that was the whole bug

The `programs` test could not type `total = 1`, and the first reading was that a transform
somewhere forgot to build a placeholder. It was not. **Nothing in the editor model creates a
`TSAssignmentStatement` at all** — its own editor declaration was the only mention of it anywhere
outside structure and typesystem. It existed solely through the default subconcept substitution,
matched on its alias `=`. So the character `=` was claimed by two mechanisms at once: statement-level
*substitution*, and the RIGHT side transform on `TSIExpression` that owns `==` and `===`. That is why
nothing committed it — the side-transform machinery held it pending for the longer aliases while the
substitution never got its turn — and why the value that did eventually appear was a null child:
`TSPrecedenceUtil` builds a proper placeholder for every operator hole, and generic substitution
builds nothing.

Modelling it as a statement was also a deviation from the language being modelled, which is the
part that should have been the tell. In JavaScript and TypeScript assignment **is** an expression —
`x = y = 0`, `while ((m = re.exec(s)))`, `f(a = 1)` — and baseLanguage models Java's the same way for
the same reason. Phase 2 took the shortcut knowingly and wrote it down; the cost only showed up when
something tried to *type* one.

`TSAssignmentExpression extends TSBinaryOperation` is the whole fix, and almost all of it is deletion:

- **The precedence level was already there.** `TSPrecedence.ASSIGNMENT = rightAssociative(20)` had sat
  in the table unoccupied since phase 0.3 — the scale was built from MDN's, which has assignment in
  it, so the row existed before the concept that fills it. One behavior root names it.
- **Editor and textgen are gone, not rewritten.** Both are inherited from `TSBinaryOperation`, which
  writes the concept alias, so `=` needs neither — the same property that let phase 1 add
  twenty-five operators with no textgen at all.
- **The `=`/`==`/`===` collision is now the already-solved case.** It is one more alias-prefix family
  reached by the same side transform as `<`/`<=`/`<<`, so `total=1` commits on the `1` exactly as
  `1<2` does, with the hole and the caret coming from the shared machinery.
- **The typesystem is two rules.** `typeof_TSAssignmentExpression` overrides
  `typeof_TSBinaryOperation` rather than adding a row — assignment is a fifth operator whose result
  does not come from the overload table — keeping the comparability check between the two operands
  and typing the whole expression by its **right** operand, which is what TypeScript does and what
  makes `first = second = 7` mean what it reads as. `check_TSAssignmentExpression` is the
  assignable-target rule that the old link type made unnecessary: the left operand must be a
  `TSIdentifier`, and it must not resolve to a `const`. That second half is the old
  `check_TSAssignmentStatement` moved across.
- **`x = 1;` is now an expression statement wrapping an operator**, which is how TypeScript's own AST
  models it, and the `;` comes from `TSExpressionStatement` rather than from the assignment.

**No migration script.** Every one of the eleven `TSAssignmentStatement` instances was in this
repository — two sandbox modules, one nodes test, five `TSTestCase` methods — and they were converted
in place. The language version has no consumer outside this repository to migrate, which is the same
reason phase 2 gave for the `TSIdentifier` change; it is written down here rather than left implicit,
because the next structural change may not have that excuse.

The proof is three tests and a program. `Typing_an_equals_sign_after_an_identifier_makes_an_assignment`
types `total=1` in one go, which is the gesture that could not be made at all before.
`The_left_hand_side_of_an_assignment_must_be_a_variable` is the new checking rule, and
`Assigning_to_a_const_is_an_error` is the old one, still passing through the new concept. And the
`programs` test now types the program anyone would have written in the first place — `total = x * 2`
in the branches, rather than the unused constants it was declaring to route around this.

## Phase 3 — functions

Three of the four bullets are done. The fourth turned out to belong to phase 5, and *What the
console bullet was really waiting for* below says why.

- ✅ **`TSFunctionDeclaration`**: `TSIStatement` and `TSIDeclaration` and `ScopeProvider` and
  `TSITrailingChildOwner`, with the parameter list and the return type on a `TSIFunctionLike`
  interface so an arrow function shares them. Parameters are typed, optional, defaulted and rest.
- ✅ **`return`**, function types `(a: number) => string`, and arrow functions with either body form.
- ✅ **A real call on any callable expression**, checked for arity and argument assignability.
  `TSCallOperation` is deleted rather than migrated — see below.
- **Retire `TSConsole` / `TSConsoleOp_Log`** — moved to phase 5. It needs member access to read a
  member off a type, which needs an object type, which is phase 5's.

### The dead concept, and the shape it had wrong

`TSCallOperation` had structure and a textgen declaration and nothing else — no editor, no alias, no
substitute menu, no type, no test — and `find_instances` across all eighteen models found not one
instance of it. So there was nothing to migrate and nothing to keep compatible with.

It was also the wrong shape, which is the part worth recording. A `TSIOperation` only ever appears as
`TSDotExpression.operation`, so the concept that was supposed to be the language's call could only
ever have been `something.f(x)`: **`f(x)` was not expressible at all**. `TSCallExpression` is a
`TSIExpression` with a `callee` of its own, which is what iets3's `FunctionStyleExecOp` is, and what
lets a call stand wherever an expression stands — including on the result of another call.

### The call rule, and the one error per mistake

`typeof_TSCallExpression` is iets3's shape, and each of its three parts earns its place:

- the callee's type must be **concrete** before it can be taken apart, which is what the
  `when concrete` block is for;
- **arity is checked before the arguments**, and the per-argument inequations are created only in the
  branch where it matched — so a call with the wrong count reports that once, instead of that plus an
  assignability error for every argument that happens to line up wrong;
- **the result type is equated outside the arity branch**, so a call whose arity is wrong still has a
  type and the expression around it is not reported as broken as well.

baseLanguage does this job in two rules through two different mechanisms — `typeof_IMethodCall`
creates inequations and `check_parametersCount` re-checks the same thing imperatively — and a bad
argument there produces two errors from two rules. That was worth not copying, and the language then
did it to itself anyway: `return 1` in a `void` function was reported by both the checking rule and
the inference rule's comparable equation, found by a test written for something else.
`typeof_TSReturnStatement` now stands down for the two shapes `check_TSReturnStatement` describes
more precisely.

Because the rule asks the *type* rather than the callee's concept, a parameter of function type and
an arrow function are both callable through it with nothing added.

### Parameter names are in the type tree and must not be in type identity

MPS compares types as trees. `double`, whose type is built from a parameter called `value`, was
therefore not assignable to `(a: number) => number` — the trees differ in a property that carries no
meaning. TypeScript ignores parameter names when comparing function types, and
`TSFunctionType_subtypeOf_TSFunctionType` is that rule: arity, then a covariant result, then
contravariant parameters.

It is declared on `TSFunctionType` directly rather than on `BaseConcept` with an instance test. That
dodge — the one the union rule beside it needs — is required only when the *sub-type side is an
interface*, because MPS looks a replacement rule up along the superconcept chain and never along the
interfaces. A concrete concept is found on its own.

Two decisions inside it, both written down because both reference languages shipped theirs by
accident. The result is covariant **except** when the target returns `void`: a caller that has said
it will discard the result can still be handed a function that produces one, which is TypeScript's
rule and closures' too. And the parameters are **contravariant** rather than bivariant — TypeScript
is bivariant on method parameters and contravariant on function-type ones under
`strictFunctionTypes`, which this build has on. iets3 has this covariant, which is unsound; closures
has it right.

### What a function returns, and the one place this is stricter than TypeScript

**An undeclared return type means `void`, not an inferred one** — for a function declaration.
Inferring it would mean the union of the types of every `return`, and asking the solver for that
least upper bound gets MPS's own `JoinType` back: a concept from `jetbrains.mps.lang.typesystem`
inside this language's types, where every union is supposed to come from `TSTypeUtil.union` so that
`number|string` and `string|number` are one type. So a function that returns a value has to say what,
and `check_TSReturnStatement` says so. A function that returns nothing needs no annotation, which is
the common case and the one worth keeping free.

**An arrow function with an expression body does infer**, and the difference is principled rather
than a concession: there is exactly one thing to infer from, and one `when concrete` does it. It is
also the form nobody wants to annotate. An arrow with a block body is a function declaration in every
respect that matters here, so it gets the declaration's rule.

`check_TSIFunctionLike` is the cheap half of "missing return" — a function that promises a value and
has no return statement at all. What it deliberately does not ask is whether *every path* returns:
that is reachability analysis, it needs a dataflow aspect for every statement concept, and it belongs
with phase 4's dataflow work. `tsc` catches the paths this misses, which is decision 1 working as
intended. It is declared on the interface so a block-bodied arrow is held to the same promise.

### Function declarations hoist, and that is what makes recursion resolve

`f(); function f() { … }` is legal TypeScript, and more to the point a function that cannot see its
own name cannot call itself. `TSScopeUtil.declarationsVisibleIn` therefore stops applying the
position rule to function declarations: one is visible throughout the statement list that holds it,
including from before its own text and from inside its own body. Variables keep the position rule
exactly as it was, so the `var` deviation the phase 2 notes record is still the only one, and
`A_declaration_is_not_visible_before_it_is_declared` passes unchanged.

The parameters reach the body and nothing else. `TSFunctionDeclaration.getScope` composes them with
the enclosing scope only when the child MPS hands it is the body — so the return type, which is a
sibling of the body, does not see them, and neither does a parameter's own annotation. baseLanguage
spells that guard `comes from body` with a concept of its own; comparing the child is the same
question with one concept fewer.

A parameter needed no reference concept and no constraint of its own: `TSParameter` implements
`TSIDeclaration`, and `TSIdentifier.declaration` already points at that *interface*, so name binding,
completion, the name validator and `typeof_TSIdentifier` all arrived free. That is the return on
phase 2 having declared the interface rather than the concept.

### Optional, default and rest, as one number

`isOptional` and `isRest` are properties of the **parameter**, not of its type. baseLanguage models
Java's varargs as a `VariableArityType` wrapping the component type, which makes "is this the rest
parameter" a question about the type and forces every reader to unwrap; Kotlin puts a flag on the
parameter, and that is what is copied here.

`requiredArgumentCount` counts the parameters that are neither optional nor rest nor defaulted —
Kotlin's `minimumSpecified` — so nothing downstream has to know *why* a parameter may be omitted. A
default value does not survive into the function type at all; what it leaves behind is that callers
may omit the argument, which is what `isOptional` means on the type side. `f(a: number = 1)` and
`f(a?: number)` therefore have the same type, which is what TypeScript says too.

`expectedTypeOfArgument` is the other half: a rest parameter absorbs every position from its own
onwards and contributes its *element* type, so one declared parameter becomes as many expected types
as the call supplies. That is baseLanguage's `getTypeApplicationParameters` idea — normalise the
signature against the call once, in behavior, so the rule zips two equal-length lists.

Optionality means two things and both are written down. Inside the function an optional parameter is
`T | undefined`, because a caller that omitted it left undefined behind — unless there is a default,
which is exactly the thing that fills that gap. At the call site an optional parameter also accepts
an explicit `undefined`, which TypeScript allows.

### Every form can be typed, and one of them cost three tries

`function` and `return` are substitutions. `(` after an expression makes a call, `?` after a
parameter name makes it optional, `...` before one makes it a rest parameter, `=` behind a
parameter's annotation opens its default, and `=>` in an empty hole makes an arrow function. The
three that reach a *parameter* work for the reason `:` and `=` work on a variable declaration:
`TSNameUtil` refuses those characters, so the property cell does not swallow them and the side
transform gets its turn. `...` is one label, so a single `.` matches nothing and commits nothing — the
third dot fires it, exactly as `]` fires the array suffix.

Each of them declines to appear where it would build something `check_TSParameter` then rejects,
which is the same discipline the `|` and `[]` transforms already follow.

**The `(` gesture is contributed rather than added to the menu it belongs to.**
`TSIExpression`'s default transformation menu holds `SubstituteMenuReference_Named` references, which
are among the references the writer cannot resolve by name, so rewriting that root from text would
lose them — and a part cannot be inserted beside an existing one either, because a node written
inside a line its parent opened cannot take a sibling. A `TransformationMenuContribution` is a root of
its own and touches nothing. Worth reaching for whenever an existing menu has to grow.

No rotation is done for a call and none is needed: it binds at `CALL_OR_MEMBER`, tighter than every
binary operator, so in `a + b(` the anchor is `b` and wrapping it where it stands is already the
right tree. The `(` that menu already had is a LEFT transform opening a parenthesised expression; the
two never compete, because one is typed before an expression and this one after it.

**Where the caret goes after `(` cost two wrong answers.** It belongs inside the parens, since the
next thing anyone types is the first argument. `MOST_RELEVANT` puts it at the end of the callee: it
tries `FIRST_ERROR`, then `FOCUS_POLICY`, then `FIRST_EDITABLE`, then `FIRST`, and the focus policy
answers first with the callee. `firstEditable` lands in the same place one step later — a smart
reference cell is editable, so the callee is the first editable cell as well as the focused one.
**Naming the cell is the only selector that tells them apart.** The test that found this asserts the
whole editor with the caret in it, and it failed twice before it passed.

The one form that cannot be typed is an arrow function's **block body**, and that is a real limit
rather than a preference: the arrow's body cell renders whatever the body writes, so a caret inside
an expression body sits in a cell of the *expression*, and there is no cell belonging to the body
itself for a side transform to anchor on. `UseABlockBody` and `UseAnExpressionBody` are the way
across and back, and the second only offers itself where nothing would be lost.

### What typing a whole function costs, and the two gaps that found

Every gesture above has a test of its own, and every one of them passes. Typing a *function* — one
run, from `module m { }` — is a different question, and asking it found two things no per-gesture
test could.

**A function's return type had no gesture at all.** Each optional cell in this language is reached by
a side transform anchored where its text would start, and `: number` after `)` is no different — but
`)` is the only cell of the function itself that a caret can sit in, everything before it belonging
to a parameter and everything after it to the body. One RIGHT section on `TSIFunctionLike` covers it,
and being on the interface means an arrow function gets the same gesture from the same menu. Nothing
would have caught this except trying to write a whole function: the sandbox roots were all built as
trees, and a tree does not care that its notation is unreachable.

**A parameter's annotation cannot be typed in one run, and this is the open one.** `value` typed into
the empty parameter list is a *pending* substitution — the node does not exist until something
commits it — so the `:` that should open the annotation arrives while the text is still free text in
the list cell, and `value:number` ends up as one unmatched token. Committing first (Tab) creates the
parameter but lands the caret in the body, past the annotation it was going to write. So the
annotation is reachable by going back to it, and not by typing forwards.

**That diagnosis was wrong, and phase 5 found out how.** Nothing is pending, because nothing is
matching: Tab does not commit it either, and no node is created however the edit ends. The reason is
in *A name-first concept in a list needs a menu of its own* under phase 5 — MPS offers a concrete
concept under its **alias**, and a concept written name-first has none — and the fix is the
substitute menu written there, not the node factory guessed at here. The two property concepts have
it; **`TSParameter` still does not**, so this bullet stays open, but it is now three parts of a
known shape rather than an unexplained one.

The `${` debt phase 1 recorded is *not* the same shape after all, and telling them apart is the
useful part: there the cell genuinely swallows the keystroke as text, so no side transform can ever
fire in it; here the cell offers a substitution that simply matches nothing, and giving it something
to match is all it takes.

So the `programs` test asserts the function that *can* be typed straight through —
`function greet() { return; }`, which is four keystrokes of navigation and two words — and the
parameter is what it should grow to cover once the factory exists.

### An empty list is not empty by default

`function greet()` first projected as `function greet(<< ... >>)`, which is what MPS renders for a
`CellModel_RefNodeList` with nothing in it. `CellModel_ListWithRole` carries an **`emptyCellModel`**
child for exactly this, and baseLanguage's `InstanceMethodDeclaration` fills it with a *selectable,
editable* empty constant — no text, but a caret position that accepts a substitution, which is what
makes the first parameter typeable at all.

Two things about it. The tailored editor notation prints neither the child nor its absence, so
`Text.grammar` will not tell you it exists; reading baseLanguage's cell and listing its children is
what finds it. And the writer **drops it silently when updating an existing root** — the write comes
back "already matches" — while keeping it when the root is new. Same for `EditorCellId`. Both are set
from `run_code`, and those editors are now among the roots that must not be rewritten from text.

### `void` is pulled forward from phase 5, and only `void`

A function that returns nothing has no other type it can be given. `undefined` is a different type
and `function f(): undefined {}` is an error rather than a spelling of it, so `TSVoidType` came with
functions. The rest of phase 5's primitives — `any`, `unknown`, `never` — are not needed by anything
here and have not come with it.

For the same reason a parameter's type annotation is a `[1]` child rather than an optional one: there
is no `any` to fall back on and `--strict` rejects the implicit one, so a parameter without an
annotation is not a state worth being able to write.

### What the console bullet was really waiting for

`declare const console` needs `console.log` to be **member access that reads a member off a type**.
Today `TSDotExpression` has no inference rule at all, and `console.log` works only because a
substitute menu is gated on `TSConsoleType`. Making it general needs an object type with property
signatures — which this document already assigns to phase 5, and already explains why: a type no
expression can read is not worth shipping.

So the bullet moves to phase 5, where the object literal and the object type already are, and it
arrives with the types that can state it. What it is *not* waiting for is the general machinery: a
call on any callable expression, function types, optional and rest parameters, and the arity
normalisation behind them are all here, so an ambient `declare const console: { log(...data: …): void }`
would be read by rules that already exist. Decision 3 is unchanged; only its phase is.

### A third editor that disagreed with its own textgen

`(a: number)=> number` is what the editor showed while the textgen wrote `(a: number) => number`. The
closing paren carried `punctuation-right`, which is a caret setting that also removes a space, and
here it removed one TypeScript writes. The space is the `:` cell's `punctuation-left` to give back
when a return type follows, not the paren's to suppress.

That is the third time — after the array suffix and the template interpolation — that this language
has had a projection and an output answer the same question differently, and the third time a
*sandbox root* is what showed it. The pattern is now clear enough to state as a rule: **write the
notation into the sandbox and read it back before believing an editor**, because nothing round-trips
a projection through the checkers and only the generated text is ever compared to anything.

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

- `any` / `unknown` / `never` with strict-null semantics. `null` and `undefined` are
  already here as types and as literals, and with only the union rule for subtyping the language is
  *already* strict about them: `null` is assignable to nothing but a union that names it, which is
  what `--strictNullChecks` means. What is left for them is narrowing, below. **`void` came forward
  with phase 3** — a function that returns nothing has no other type it can be given — and the other
  three did not, because nothing needed them.
- ✅ **Structural subtyping, object types, optional properties, the object literal and member
  access** — the four that had to arrive together, since a type no expression can state is not worth
  shipping and a literal with no type to state is the same thing said backwards. `TSObjectType` holds
  `TSPropertySignature`s under a `TSITypeMember` interface that index and call signatures can join
  later. Sections below say what each of them cost. Still open in this bullet: `interface` and
  `type` aliases, which are naming rather than typing, and index signatures.
- **Retiring `TSConsole` / `TSConsoleOp_Log`** in favour of an ambient `declare const console`,
  moved here from phase 3 with the object type it needs to say anything. The object type has now
  arrived and the bullet still cannot be done: `console.log` takes anything, and the language has no
  `unknown` to say so with. That is the bullet above, and it is now the *only* thing between here
  and decision 3. Everything else is in place — a call on any callable expression, function types,
  optional and rest parameters, and a member read off a type — so what arrives with it is the
  *declaration*, not the rules that read it.
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

### Assignability is not comparability, and weak subtyping is neither

The oldest bug in the type rules, found by object types rather than caused by them. Nine rules
asked `CreateComparableEquationStatement` where they meant *assignable to*: the initializer against
the annotation, the argument against the parameter, the returned value against the return type, the
assigned value against the target, and so on. **A comparable equation is satisfied when either side
is a subtype of the other**, so every one of them accepted the wrong direction as well as the right
one:

- `let n: number = wide` with `wide: number | string` — TS2322, accepted here, because
  `number <: number | string` holds the other way round;
- `{ x: number }` where `{ x: number; y: number }` is wanted — TS2741, accepted for the same
  reason, because width subtyping holds in the legal direction.

The second is what made it visible: an object type's whole point is that assignability has a
direction, and the language was ignoring it.

**`:<=:` is not the fix.** MPS has two strengths of inequation, and its *weak* subtyping falls back
to comparability — so switching the nine to `CreateLessThanInequationStatement` fixed the
missing-member case and left the union case exactly as it was. Only
`CreateStrongLessThanInequationStatement` (`:<<=:`) refuses both. The tell is that
`number | string :<=: number` is accepted while `number | string :<=: boolean | number` is not:
weak subtyping is looking for a relation in *either* direction, and only the first pair has one.

So all nine now use `:<<=:`. `typeof_TSAssignmentExpression` needed its operands swapped as well,
having had the target on the left. **`typeof_TSEqualityOperation` keeps `:~:`**, and is the one
place in the language that really does mean comparable: `a === b` asks whether the two are
comparable at all, in neither direction in particular. Every test that existed before the change
still passes, which is the evidence that the nine were saying something they did not mean rather
than something the language depended on.

### Reading a member off a type

`TSMemberAccess` carries a **name**, not a reference to the `TSPropertySignature` it reads. That is
the opposite of what MPS makes easy — a reference would bring completion, navigation and rename with
it — and it is what a structural type system leaves room for: the property `a.b` reads may live in a
type the *solver built*, since `typeof({a: 1})` is an object type synthesised by an inference rule
with no node in any model to point at. A reference into it would dangle. Names are what TypeScript's
own AST carries here, for the same reason.

What that costs is completion, and the mechanism to pay it back later is a property cell's
`menuDescriptor` — `TSTypeUtil.memberNamed` already walks the list that would fill it, so the
member names are one query away.

The rule is shaped like `typeof_TSCallExpression`, the other rule that takes an operand's type
apart: a `when concrete` on the operand first, then the lookup, then an error naming both sides, and
the member's type equated only in the branch that found one — so `.b` on a type with no `b` is one
error rather than that plus whatever the expression around it makes of an unresolved type. An
optional member reads as `T | undefined`, which is what `b?: string` means to a reader and what
TypeScript says under `strictNullChecks`.

`TSDotExpression`, `TSIOperation` and the two `console` concepts are still here, and go when
`unknown` lets an ambient declaration replace them.

### Typing an object literal is MPS's own tuple idiom

`{ a: 1, b: "x" }` is `{ a: number; b: string }` — a type built out of N types that are not known
yet. `typeof(x)` hands back the type **variable** rather than the type, and the whole difficulty is
getting one of those into a child role declared `TSIType`.

Three ways, and two are refused. `signature.declaredType = typeof(...)` is *type node<> is not a
subtype of node<TSIType>*. A quotation with an `Antiquotation` on that child says the same thing,
because the antiquotation is type-checked against the role it fills. What is **not** checked is a
*list* antiquotation — which is exactly why `typeof_IndexedTupleLiteral`, the rule in MPS's own
tuples language that has this precise problem, can splice a `list<node<>>` into a component-type
list. The members here are a list, so that half works the same way; the member's own type is a
single child and goes in through `/.addChild`, the untyped API, which is the honest version of the
cast that would throw.

Worth knowing before writing any rule that builds a composite type from inferred parts. It is also
the reason the placeholder inside that quotation carries a `declaredType` it will never use: the
structure checker looks at the template before anything has been spliced into it.

### What a subtyping clause can decide, and what it must leave to the body

`TSObjectType_subtypeOf_TSObjectType` is width plus a covariant member type, with an optional
member of the target allowed to be missing. Covariant on the member is TypeScript's rule, unsound
and knowingly so; being sound would refuse code `tsc` accepts, which decision 1 says not to do.

The `isApplicableClause` checks **names only**, and the first cut checked the member types too. That
looks like the thorough version and is a bug: `isSubtype` inside a clause answers about the types as
they stand *at that moment*, and an object literal's property type is a variable the solver has not
filled in — so the clause said yes, the body then created the inequation that said no, and one
mistake was reported **twice**, the second time against the number literal that had supplied the
variable. Names are what a clause can decide; types are what the body's inequations are for, and an
`errorString` on those inequations is what makes the surviving error name the member.

That is the same trap *The one subtyping rule* records from the other side. The union rule's clause
can do the whole test because its parts are written-down types; this one's cannot, because half of
its inputs are inferred. **Which half a rule's inputs come from is the question to ask before
deciding how much its clause should claim.**

### Two more references the notation cannot write

Adding to the list under *The reference that cannot be written from text*: `applicableProperty` on a
`NodePropertyConstraint` resolves neither by name nor by node id, so `TSMemberAccess`'s name
validator had to be built by **copying** the `TSIDeclaration` one from `run_code` and repointing
both of its references. That root can no longer be maintained from the notation either.

And `renderingCondition` joins `actionMap`, `EditorCellId`, `separatorStyle` and `emptyCellModel` as
a thing the tailored editor notation **prints nowhere and drops silently**. `TSPropertySignature`'s
`?` was written without one and every property projected as optional — `{ x?: number }` in the
editor against `{ x: number }` in the output, the same read-as-a-different-type drift the array
suffix, the template interpolation and the function arrow each produced once. Found by the standing
rule, which has now earned itself four times over: **write the notation into the sandbox and read it
back before believing an editor.**

### A name-first concept in a list needs a menu of its own

Writing the second `programs` test found that a property of an object type **could not be typed at
all** — not awkwardly, at all. The gap is general and has nothing to do with objects:

> A list whose element concept has no **alias** has no way in. MPS's default substitution offers a
> concrete concept under its alias, and a concept whose notation starts with a name — `x: number`,
> `x: 1`, a function parameter — has none to offer. The typed text sits in the empty-list cell, no
> substitution matches it, and neither Tab nor MoveRight commits anything, because there is nothing
> to commit.

The fix is a default `SubstituteMenu` with a `SubstituteMenuPart_Action` whose
`SubstituteFeature_MatchingText` **is the pattern**, guarded by a `SubstituteFeature_CanSubstitute`
that accepts any valid identifier. `TSNumberLiteral` has carried exactly this shape since phase 1 —
it is how a digit starts a literal — which is the only reason it was reachable at all. Three parts,
each found by trying it:

- **The handler gives the new node a hole, not a null child.** An obligatory child left null renders
  as nothing and cannot be typed into, which is the trap `AddTemplateInterpolation` had to learn, and
  `set new` cannot write one because its concept scope offers only instantiable concepts while a
  placeholder's concept is abstract by definition. `concept/TSIType/.new-instance(model)` can.
- **The caret stays at the end of the name.** Parking it in the type hole instead was the first cut,
  and it made `x:number` type as `x` with `:number` sitting in the hole as unmatched text — the colon
  has to be *consumed* by something, not merely survived.
- **So `:` is a side transform that changes no tree at all**, the first in this language: the type is
  an obligatory child that already has its hole, so what the colon owes is the caret and nothing
  else. It needs the name validator beside it, or the colon extends the name instead and the
  transform is never consulted.

`TSParameter` has the same gap and not yet the same menu — see phase 3's open bullet, whose
explanation this corrects.

**Two more things `applicableProperty` cost, both worth knowing.** It resolves by neither name nor
node id (the list under *The reference that cannot be written from text*), so each validator has to
be **copied** from one that already exists and repointed from `run_code`. And `INamedConcept.name` is
*inherited*, so `concept.propertyDeclaration` does not list it: the first copy repointed at null,
smodel being null-safe said nothing, and the make failed with
`Argument for @NotNull parameter 'conceptDeclaration' of MetaIdByDeclaration.getConceptId must not be
null` — a message that names neither the constraint nor the property.

### What the second program test says about navigation

`A_program_with_objects_and_compound_assignment_can_be_typed_into_an_empty_module` types six
statements with no mouse, and two of its four navigation keystrokes are there for reasons worth
having written down:

- **The caret must reach the *last* position of a closing brace** before `=` will open an
  initializer, because that brace is the only cell belonging to the object type itself and
  `declarationToInitialize` asks what the caret is behind. Tab cannot get there — a constant is not
  editable — so this is MoveRight's job, the same way the `else` position is Down's.
- **`Insert` offers a new element of the list the caret's own node is in.** Inside an object literal
  that is the property list, so the caret has to leave the literal before Insert means "new
  statement". The first cut of this test grew the literal six properties long.

Everything else is one uninterrupted run: `origin:{` opens the annotation and fills it,
`x:number;y:number` writes both members with MPS's own list-separator insert key doing the `;`,
`total:number=origin.x` reads a member in the middle of a declaration, and `moved||=total>0` is
longest-match over `|` and `||` with the comparison binding tighter than the assignment.

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
hand-written lib model of phase 5 stops being the standard library and becomes a bootstrap.

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

`typescript` is Apache 2.0 and already a dependency here (`typescript@7.0.2` in
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

## What typing a whole program costs today

Every editor test up to now takes a tree that is nearly finished and asks what one gesture does to
it. None of them asks the question a user asks, which is whether a program can be *written*. The
test in `programs` does: it starts from `module m { }` with nothing in it and types

```typescript
const x: number = 1 + 2 * 3;
let total: number = 0;
let label: string | null = null;
const ready: boolean = x > 0;
if (total < x) {
  total = x * 2;
} else if (total > x) {
  total = x / 2 - 1;
} else {
  total = x % 2;
}
```

Four declaration forms, four types including a union, the `null` literal, seven operators across four
precedence levels, an assignment, and an `if`/`else if`/`else` chain with three blocks — chosen to be
what a person would write rather than to tick concepts off, but the coverage is the point of growing
it.

with no mouse and no editing of an existing tree. It asserts the whole editor with the caret in it
through `EditorText.withCaret` **and** the resulting tree, because the point of this one is the
gesture as much as the result. It is green — but it is green over the keystrokes that work, not the
keystrokes anyone would guess, and the gap between those two lists is the value of having written
it. **Nothing below is fixed yet**; this is the inventory.

What already reads exactly like typing TypeScript, and is worth knowing is free: `x:number=1+2*3`
is one uninterrupted run — the `:` leaves the name, the `=` leaves the type, and the precedence
machinery does the rest with no arrow key anywhere. So is `total<x`, and so is `doubled:number=x*2`
inside a nested block. `else{` opens the else branch **and lands the caret inside it**, so the next
`const` follows immediately. Those are the parts that are done.

**The navigation is Tab and Down, and it is worth knowing before writing the next one of these.** A
first cut walked into the module body with three `MoveRight`s, into the then-block with four, and
back out to the `else` position with three more — ten arrow presses, which is not a count anybody
would put up with and is also simply not how MPS is used. **Tab** goes to the next editable cell and
does each of the two hops *into* a body in one press; **Down** does the hop back out in one, because
the line below the last statement of a block is the block's `}` and the caret clamps to the end of
it, which is exactly the position the `else` transform anchors on. Ten navigation keystrokes became
three, and the run now reads as what a person does rather than as a way of getting a caret
somewhere. Three traps around it:

- **`SelectNext` is not Tab.** The name reads like it, and it is in
  `jetbrains.mps.ide.editor.actions` beside the arrow actions, but it selects the next *node* — and
  typing over a node selection **replaces that node**, so the first cut of this test silently ate
  the whole `if` statement and left the typed characters as raw text where it had been. A test that
  reaches for it by name gets a diff that looks like the editor lost its mind.
- **Tab has to be sent as a key, not as an action**: `PressKeyStatement` with `VK_TAB`, which is how
  the third-party suites in the repository drive it. `MoveDown` is the opposite — a registered
  action, invoked by name like every other one here. That cuts against the standing rule in *An
  operator whose alias is a prefix of another one* — prefer the registered action over a raw key
  chord — and the resolution is that they are different jobs: a raw key goes to the component, which
  is exactly right for moving a caret and exactly wrong for committing a pending side transform,
  where the commit hangs off the action system. Tab has no action to prefer; Down has one.
- **Tab cannot reach the `else` position, and that is not a defect to fix.** There is no editable
  cell after a block's `}` — the last position of the closing brace is a constant cell, which is
  precisely why the `else` transform anchors there. Down is the gesture for it, and a language whose
  blocks end on their own line gets that for free.

**A binary operator is never substituted into an empty hole, and saying so is what makes the prefix
operators typeable.** Growing the program hit `total = -x`: `-` in an empty operand did nothing,
because `TSMinusExpression` and `TSUnaryMinusExpression` share the alias and the completion had two
entries to choose between — the ambiguous-match symptom, which reads as "this concept cannot be
typed". The observation that fixes it is that a binary operator is *always* reached by a side
transform on an expression that becomes its left operand, and never wanted with two empty holes. So
`TSBinaryOperation` now declares an **empty default substitute menu**, which removes all forty-one
of them from every hole's completion at once. `TSPostfixOperation` declares one for the same
reason, and there the ambiguity is not hypothetical: without it `++` in a hole would match the
prefix and the postfix concept alike.

That cannot be the whole change, and the tests said so immediately: the side transforms consume the
same menu — `TransformationMenuPart_WrapSubstituteMenu` with
`SubstituteMenuReference_Default { concept -> TSBinaryOperation }` is how the RIGHT transform offers
the operators — so emptying the default alone fails **32 tests**, every operator gesture in the
language. The menu has to be split in two: a named `TSBinaryOperation_Operators` holding the
`SubstituteMenuPart_Subconcepts` that the five wrap-references now point at, and the empty default
that the holes see. The two audiences were one menu by accident, and only one of them ever wanted it.

**A string literal is started with `\"`, and the closing one is already there.** The concept had no
alias until now, so nothing matched the keystroke; it has one, and two tests hold what that means.
`\"hi` in an empty hole gives the literal with `hi` in it — the closing quote is a constant cell of
the editor, not something to type. Typing it anyway puts it *in the text*, giving `hi\"`, which the
second test pins as it stands rather than as it should be: MPS's `useTypeOverExistingText` setting
is what governs skipping a character that matches the next constant, and this language has never
said anything about it. A text-editor habit types the pair, so this is worth a decision rather than
a default.

`-` in a hole means unary minus rather than an ambiguous match — though it is once again *pending*
rather than immediate, `--` having arrived since, which costs nothing here because the operand is
what commits it. Its caret does not land in the operand yet
(`total = - _ x` rather than `total = -x`), so the program above still uses `%` where it wanted a
negation — the next thing for this group to pick up, along with the ternary, which types correctly
in isolation (`label = ready ? "yes" : "no"`, with Tab committing the `?` *and* landing in the first
branch) but loses its second branch when an `Insert` follows it.

What else costs keystrokes nobody would guess:

- **Nothing can be typed at the module level.** The caret starts on the module's name, and the
  statement list's own cell is a collection rather than a label, so placing the caret on it selects
  the collection and typing does nothing at all. Tab from the name cell is what gets you in. The two
  `EditorCellId`s this test needed — `name` and `statements` on the `TSModule` editor — are the
  affordance that made any of it addressable from a test.
- **A new statement is `Insert`, not Enter typed into anything.** That is MPS's own convention and
  fine, but it means the run of keystrokes is not a run of characters.

What cannot be typed at all, and is the real output of this exercise:

- ✅ **An assignment's value** — the first thing this test could not type, and the reason the
  program above assigns in its branches today rather than declaring unused constants to route
  around it. It was not a missing placeholder but a misplaced concept: see *An assignment was a
  statement, and that was the whole bug* under phase 2.
- ✅ **An initializer after a union type** — `let label: string | null = null` is one
  uninterrupted run now. See *A union owns no cell past its last member, and only `=` should care*
  below.

Both are fixed, and neither was the one-line concept fix this section first guessed at: one was a
concept in the wrong place and the other was a question asked of the wrong node. What is left is
the entry friction at the top of this section, which is Tab's job rather than a defect. The
`programs` group is the one that should grow whenever the answer to "can this be written?"
changes — and it has, twice since: once for functions, and once for objects. That second run is
the one that earns the whole group its keep, because what it found was not friction but a class of
concept with **no way in at all**: see *A name-first concept in a list needs a menu of its own*
under phase 5.

### A union owns no cell past its last member, and only `=` should care

That sentence was already in this document, written about the `[]` suffix, and it is why
`let label:string` then `|null` then `=` did nothing: the caret that looks like it is behind
`string | null` is in fact inside the `null`, so the `=` group on the `TSIType` menu was asking
`node.parent.isInstanceOf(TSVariableDeclaration)` of a union member and getting the union.

**The mechanism to reuse looked like `ForwardTrailingSideTransformToParent`** — the contribution
that lets a block hand a transform back to the `if` it closes — and it is the wrong one here.
It forwards *everything* trailing, so `TSUnionType` implementing `TSITrailingChildOwner` would have
added the union's `[]` beside the member's, two actions with one label and no way to tell them
apart. `[]` behind the last member has two readings the notation genuinely cannot distinguish, and
phase 1 already chose the member (`number | string[]` is what that text means). So the forwarding
is right for `else` and wrong for this.

**`=` is different, and the difference is what the fix is built on.** An initializer belongs to the
declaration, not to the annotation, so there is exactly one thing a caret behind the annotation can
be asking for however deep in the annotation it sits. `TSTypeUtil.declarationToInitialize` is that
question asked once: climb while this type is the *last* member of an enclosing union, then answer
only if what you reach is a declaration's `declaredType` with no initializer yet. The menu's
condition and its action both call it, so they cannot drift — the bug the first cut of the `[]`
suffix had, where three places answered the same bracketing question separately.

Two things it deliberately refuses. **Only the last member climbs**: behind `string` in
`string | null` the text that still follows is `| null`, and an initializer opened there would read
`string = ... | null`. That is a test, not a claim — the restriction was taken out and
`Typing_an_equals_sign_after_a_union_member_that_is_not_the_last_does_nothing` was watched failing
before it went back in. And **arrays do not climb**: behind `number` in `number[]` the `[]` still
follows, so the caret is not behind the annotation at all.

## Cross-cutting, ongoing

- **Three debts phase 3 left.** The two body-form intentions on an arrow function have no editor
  test, because `InvokeIntentionStatement.intention` is a reference the writer can neither resolve
  by name nor even build the node for, so that test needs a `run_code` fix-up none of the others
  did. `console.log` still takes its arguments through a list with no separator in its *editor*
  (the textgen joins them correctly), which nobody has noticed because every call in the repository
  passes one argument — it goes when the concept does. And a rest parameter can be declared, passed
  and checked, but nothing inside the function can read it: that needs `.length` and indexing, which
  are member access, which is phase 5.
- **In a `renderingCondition`, a property is not a property.** `node.someLink` resolves to an
  `SLinkAccess` and works; `node.someProperty` is read as a *Java field* reference and fails with
  `Cannot resolve 'isRest' as 'fieldDeclaration'`, with or without a cast on the receiver. It has to
  be written out as `§SPropertyAccess { property -> isRest }`. TextGen has no such trouble with the
  same expression, which is what makes the failure read as a missing property rather than as a
  notation limit.
- **A metadata write is authoritative over every section it omits.** Adding one used language to a
  model by sending back its metadata without the `roots` block **deleted all 45 roots of the
  typesystem model**, saved that to disk, and reported it as forty-seven ordinary changes. The
  recovery is worth writing down because the obvious half of it is wrong: `git checkout` alone would
  have left MPS holding the emptied model in memory, to be written back over the file at some later
  moment nobody chose. What closes it is the checkout *plus*
  `VirtualFileManager.getInstance().refreshWithoutFileWatcher(true)` from `run_code`, and then
  reading the model back to confirm MPS reloaded it. The lesson for next time is narrower than "be
  careful": **do not use a whole-document write to make a one-line change**. A used language can be
  added with `SModelInternal.addLanguage` from `run_code`, which cannot touch anything else.
- **Two small debts phase 1 left, neither worth a phase of its own.** `${` cannot be typed into a
  template literal's text cell — a free-text property accepts the keystroke, so no side transform
  ever fires there, and the intention is the only way in until that cell is given something that
  refuses it. And a negative number *literal* is now a second spelling of unary minus applied to a
  positive one, because `TSNumberValue` still admits a leading `-` from before `TSUnaryMinusExpression`
  existed; the output is identical either way, but two trees render the same text, and the `-?`
  should go the next time a migration is being written anyway.
- **What delete does: it retraces what typing did.** Until this was written the language had no
  delete behaviour at all — every `Delete` fell through to MPS's default, which removes the node
  under the caret and leaves a hole, so deleting a bracket took the whole parenthesised expression
  and deleting a type annotation did nothing whatsoever, a read-only label having no delete of its
  own. Nine action maps now, attached to cells through the `actionMap` reference the notation
  prints only as `# other ref`.

  **The rule they all follow is that unbuilding retraces building.** Typing `+` after `1` gives
  `1 + <hole>` and then `2` fills it; so deleting from the right gives `1 + <hole>` back *before* it
  gives `1`. The first cut collapsed in one step and was wrong for exactly that reason — one
  keystroke took away both the operand and the operator, with no state in between to type into. The
  same two steps apply to a union member, a type annotation and an initializer, each of which was
  also reached by a keystroke that created a hole first. An operand that is already a hole is the
  state that says "now take the construct with me", and *is a hole* is
  `operand.concept.isAbstract()` — a placeholder is an instance of the abstract concept the role
  declares.

  | cell | first keystroke | second |
  |---|---|---|
  | binary operand | empty it | collapse to the other operand |
  | union member | empty it | remove it; collapse the union at one member |
  | annotation / initializer | empty it | take the whole optional part away |
  | binary operator | collapse to the left operand (backspace: to the right) | — |
  | prefix operator | collapse to the operand | — |
  | `(` and `)` | unwrap | — |
  | `[]`, and the array's element cell | unwrap to the element type | — |

  Thirteen editor tests cover the addressable ones, four of them watched failing first. Two pin the
  intermediate state by *typing into it*: backspace over `2` in `1 + 2` and type `3`, and you must
  get `1 + 3` — if the operation had collapsed there would be nothing to type into, which is the
  bug as a test.

  **Which keystroke reaches which map is not a free choice.** Delete at the *end* of the left
  operand never reaches the left operand's map: the caret there sits just before the operator, so
  MPS routes the forward delete rightwards and the right operand's map answers — a delete-based
  version of the left map passed its first step and then collapsed to the wrong side, which is how
  this was found. The gesture that lands on the left operand is backspace at position 0, where
  there is nothing to the left to route to.

  **And some cells have fewer positions than they look to have — until you say otherwise.**
  `punctuation-left` and `punctuation-right` are not only spacing:
  `StyleAttributesUtil.isFirstPositionAllowed` and `isLastPositionAllowed` read them as "this cell has
  no caret position on that side", which is what keeps two adjacent cells from claiming the same
  visual spot. A seam where *both* sides declare it — the element type and the `[]` of an array — has
  no caret position between them at all, and a delete action there is unreachable. The tell is
  `Position 6 is not allowed for EditorCell_Label: "number"` out of an editor test whose caret looked
  perfectly ordinary. The fix is not to give up the spacing: both attributes are checked
  `isSpecified` first, so `first-position-allowed` / `last-position-allowed` on one of the two cells
  hands the seam back its caret and leaves the space suppressed. **Give it to exactly one side, and
  pick the side by what can be typed there** — a caret at the end of a child's cell is a RIGHT
  transform on the child, a caret at the start of the parent's next constant is a LEFT transform on
  the parent, and a language with no LEFT sections has just made the difference between a useful
  position and a delete-only one. Enabling both sides is the flicker MPS's default exists to prevent.

  **It has now happened three times, and the third says how to look for it rather than wait for it.**
  The array suffix was found by an unreachable delete; the two ends of a template literal's
  interpolation — `${` and `}` punctuated on both sides, and the expression cell between them
  punctuated too — were found by an editor test that only wanted to park a caret somewhere ordinary,
  and until then no operator could be typed inside an interpolation at all. The pattern to look for
  is a **run of adjacent cells all carrying punctuation**, which is what any notation written to
  suppress every space becomes; every seam in such a run is dead unless one of its two cells says
  otherwise. `punctuation` and `first`/`last-position-allowed` are one decision per seam, not two
  independent styles, and a notation that suppresses spacing owes that decision at every seam it
  makes.

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
- **Where the caret lands is half of what an edit does, and a tree comparison cannot see it.** Two
  edits that build the same tree and leave the caret in different places are the same test to
  `NodesMatcher` and a different editor to the user: one carries on typing, the other has to be
  corrected with an arrow key first. So the standard the action maps and the transformation menus
  are held to is the plain-text one — **the caret ends where the text the edit produced ends**,
  which for a delete is where the deleted text was and for an insert is the hole the insert opened.
  Every `SelectInEditorOperation` in the language is that rule, said once per cell.

  Two places had it wrong, and both were found by asking rather than by using the editor:

  - **Deleting the initializer sent the caret back to the name, over the annotation.** `const a:
    number = 1`, delete twice, and the caret was after `a` rather than after `number` — the second
    step selected `name` unconditionally, which is right only for a declaration that has no
    annotation. Everything the caret could then reach (`:`, `[]`, `|`, and the `=` that would put
    the initializer back) is a RIGHT transform on the *type*, so the placement did not merely look
    odd: it made the next keystroke do nothing.
  - **Removing a member from a union of three or more left the placement to MPS**, which put the
    caret at the start of the member that followed — a different place from the one the
    two-member collapse beside it lands on. It was the one cell in the language whose caret the
    language did not decide.

  **`EditorText.withCaret(editorComponent)`** in the tests module is how these are asserted: it
  walks the leaf cells in editor order, joins their text with single spaces and writes a `|` inside
  the cell the caret is in, so a whole test is one `AssertEquals` against
  `module m { const a : number| ; }` — the notation and the caret in one string, which is also why
  those tests carry no `testNodeResult` at all. A cell with no text is `_`; the same hole with the
  caret in it is just `|`, which is why `1 + |` reads as both what an emptied operand looks like
  and where the caret is in it. Two things it had to get right to be usable: the code block of an
  `EditorTestCase` does **not** run on the EDT — `BaseEditorTestBody` calls `testMethodImpl`
  directly and sends only the keystrokes through `runUndoableInEDTAndWait` — so reading cells
  without flushing first answers about the editor as it was one action ago, and flushing off the
  EDT logs `This method should be called in EDT` at ERROR, which fails the test whatever it
  asserted. Hence the class is a `Runnable` handed to `ThreadUtils.runInUIThreadAndWait`.

  **The indirect test is the one that says what the placement is worth**: delete, then type the
  keystroke a correct caret makes meaningful, and assert the tree. Two deletes and `[]` give
  `let x: number[]` only if the caret came to rest at the end of the type; two backspaces and `*3`
  give `1 * 3` only if it came to rest at the end of the `1`. Four keystrokes, no arrow key — and a
  failure reads as the array being missing rather than as a caret one cell out. **The keystroke has
  to be one the wrong placement cannot serve**, which is easy to get wrong: chaining `|` after
  removing a union member proves nothing, because MPS binds a one-character list separator as an
  insert key on *every* element cell, so typing it at the start of the following member inserts
  one there and produces the same tree. That test passed against the bug it was written for until
  the `|` was swapped for `[]`.
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
  before `??`, `=` before `==`/`===`, `!` before `!=`/`!==`, `<` before `<=`/`<<`, `>` before
  `>=`/`>>`/`>>>`, `&` before `&&`, `|` before `||` — MPS holds the side transform *pending* while a
  longer alias could still match, and commits it when the edit ends. In the editor that is the next
  keystroke or the caret leaving the cell; in an `EditorTestCase` it is `InvokeActionStatement` with
  `MoveRight`. `PressKeyStatement` with `VK_RIGHT` does **not** work, and fails as though the
  keystroke did nothing. Every operator added from here on is in one of those families.

  **All the families are covered**, in `expressions.operator_aliases`: thirty-one tests, one per
  operator, each typing the whole gesture a user types — `1`, the alias, `2` — so that what is
  pinned is longest-match rather than the workaround. The operand is what ends the edit, which is
  why none of the sixteen needs `MoveRight` at all: a digit cannot extend any of these aliases.
  Only the one about `<` alone does, and it is there to say what the pending state *is* — after `<`
  the editor reads `module m { 1 <| ; }`, the typed text sitting in the literal's own cell with no
  node built yet, and `MoveRight` is what turns it into `1 < _`. That test asserts both strings
  through `EditorText.withCaret` and carries no `testNodeResult`, because a tree with a placeholder
  in it is what the writer refuses.

  Note what the second string says: `module m { 1 < _ ;| }`. The transform puts the caret in the
  hole it opens, and `MoveRight` — the keystroke that committed it — then carries the caret past
  that hole to the end of the statement. It is the one gesture in the language that does not leave
  the caret where the text ended, and it is correct anyway: moving right is what was asked for.
- **The escaping layers, because getting one wrong does not fail loudly.** Four of them stack up
  between what you mean and what the editor receives, and a mistake at any level types *different
  characters* rather than erroring — so the diff blames the language, which it did three times over
  while the string literal was being built. For a quote in the generated TypeScript:

  | layer | reads |
  |---|---|
  | the generated TypeScript | `"a\""` |
  | the stored `escapedValue` | `a\"` |
  | what has to be typed | `\"` |
  | `keys`, as the editor test shows it | `type "\\\""` |
  | `keys`, as `write_root` must be handed it | `keys = "\\\\\\\""` |

  The three wrong conclusions all came out of the bottom two rows: that a backslash could not be
  typed into a string cell, that a backslash followed by a quote could not be expressed in `keys` at
  all, and — earlier and in the other direction — that `="none"` had produced a string literal when
  it had produced unmatched text. Each looked like a language defect and none was. **When a typing
  test produces something inexplicable, count the layers before believing the editor.**
- Intentions and quick fixes alongside each phase (the ternary paren quick fix is the model).
- Migration scripts for every structural rename — the concept-prefix rename and the
  `TSConsoleLog` removal show the cost of not having them.
- Editor tests for every typing interaction; nodes tests for every type rule. Any action map or
  transformation menu added from here on owes a caret assertion too — the placement is part of the
  gesture, and `EditorText.withCaret` makes it one line.
- Optional side track once the structure is broad enough: a `.ts` **importer** (parse real
  TypeScript into MPS nodes), which is also the fastest way to build a large test corpus.
  This is now step 2 of phase 9 rather than a track of its own.
