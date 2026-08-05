# Roadmap — `de.q60.mps.lang.typescript`

The order below is chosen so that the expensive, hard-to-retrofit decisions land while the
language is still small, and so that every later feature is a repeat of an established
pattern rather than a new one.

## Where we are today

| Aspect      | State                                                                                                                                                                          |
|-------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| structure   | `TSModule` (root, named) → `TSIStatement*`: expression statement, `TSBlock`, `let`/`const`/`var` declarations, `if`/`else if`/`else`. Control flow: `while`, `do`/`while`, `for`, `for-of` and `for-in` under a `TSILoop` interface that carries the body and a `TSIForEachLoop` under it that carries the binding; `break` and `continue`; `switch` over `TSCaseClause`/`TSDefaultClause` under `TSISwitchClause`; `throw`, and `try` with an optional `TSCatchClause` whose `TSCatchParameter` is a `TSIDeclaration` typed `unknown`. `TSITrailingChildOwner` (`TSIfStatement`, `TSElseIfClause`, and now every loop plus `try` and `catch`) declares which child a construct's notation ends with, which is what lets a nested block hand a side transform back to the construct it closes without knowing what that is. Functions: `TSFunctionDeclaration` (statement, declaration, scope provider and trailing-child owner) and `TSArrowFunction`, sharing the parameter list and return type through `TSIFunctionLike`; `TSParameter` (a `TSIDeclaration`, so identifiers bind to one for free) with `isOptional`, `isRest` and a default value; `TSReturnStatement`; `TSIConciseBody` with `TSBlock` and `TSExpressionBody` under it. Expressions: identifier (a reference to a `TSIDeclaration`), `TSMemberAccess`, `TSCallExpression` on any callee. All twenty-five binary operators, grouped under the abstract `TSArithmeticOperation` / `TSComparisonOperation` / `TSEqualityOperation` / `TSLogicalOperation` / `TSBitwiseOperation`; the prefix operators `! - + ~ typeof void` under `TSUnaryOperation`; parentheses; ternary. Writing to a variable is sixteen operators under `TSAssignmentOperation` — `=` and the fifteen compound ones, grouped again under `TSCompoundAssignmentOperation` as arithmetic, bitwise and logical — plus `++`/`--` in both positions: `TSPrefixIncrementOperation` under `TSUnaryOperation`, and `TSPostfixOperation`, which is the first concept to implement `TSIBinaryLike` with a syntactic *left* side and a null right one. Literals: string — whose `escapedValue` holds the source text between the quotes rather than the string it means, see *A string literal stores its own spelling* below — number (`TSNumberValue`-constrained text covering the decimal, hex, binary, octal, separator and bigint forms), `true`/`false`, `null`, `undefined`, template literals as a head plus a span per interpolation. `TSIBinaryLike` extends `TSIExpression`, which is what lets the precedence machinery ask a one-sided operator for its level. `TSArrayLiteral` under a `[` alias, whose type is the array of the union of its elements — see *Waiting for N inferred types* under phase 5. Types: `boolean`, `number`, `string`, `null`, `undefined`, `void`, `unknown`, `never`, union, array, function type, and `TSObjectType` over `TSPropertySignature`s — optional ones included — under a `TSITypeMember` interface that index and call signatures can join. `TSObjectLiteral` over `TSPropertyAssignment`s produces one; `TSMemberAccess` reads a member off one, by *name* rather than by reference, for the reason under *Reading a member off a type*. And `TSAmbientDeclaration` is a root: `declare const <name>: <type>`, which is what the standard library is written in now that `TSConsole`, `TSConsoleOp_Log`, `TSConsoleType`, `TSDotExpression` and `TSIOperation` are gone — see *The standard library is a model, not a concept* under phase 5. |
| editor      | The real investment so far: precedence-aware typing, tree rebalancing on operator entry, incomplete-paren concepts (`TSIncompleteLeftParen`/`RightParen`) that resolve into `TSParenthesizedExpression`, ternary insertion and wrapping. Optional cells (type annotation, initializer, `else`, `else if`) render only when filled, and are reached by typing `:` / `=` / `else{` / `else if` — default transformation menus with RIGHT side-transform sections on `TSVariableDeclaration`, `TSIType` and `TSIfStatement`, plus one `TransformationMenuContribution` to `BaseConcept`'s default menu that hands a transform typed after a nested construct to whatever that construct closes. A second contribution puts `++`/`--` after an expression, written as two spelled-out actions because a named substitute menu cannot be referenced from text at all — see *The reference that cannot be written from text* under phase 2. Types compose the same way: `|` and `[]` on the `TSIType` menu wrap a type in a union and in an array — lengthening a union that is already there is MPS's own doing, since it binds a one-character list separator as an insert key on every element cell. `TSArrayType`'s editor brackets an element that binds looser than the suffix, through the same `needsParenthesesAsArrayElement` the presentation and the textgen ask, so `(number \| string)[]` reads in the editor as it generates. And there is now a **delete story**, nine `CellActionMapDeclaration`s of it, written so that deleting retraces typing: an operand, a union member, an annotation and an initializer each empty out first and take their construct with them only on the second keystroke, while parentheses, the array suffix and the operator cells collapse in one. See *What delete does* under **Cross-cutting**. Four **name-first** concepts — `TSPropertySignature`, `TSPropertyAssignment`, `TSParameter` and `TSFunctionTypeParameter` — carry a default `SubstituteMenu` whose matching text *is* the pattern, which is the only way a concept with no alias can be reached from a list at all; the last two arrived together with the name validator without which the `:` after them is swallowed as text. See *A name-first concept in a list needs a menu of its own* under phase 5. Every one of them, and every side transform beside them, also says where the **caret** goes — the caret ends where the text the edit produced ends, so the next keystroke carries on rather than being corrected first. That is asserted rather than assumed now: `EditorText.withCaret` renders the whole editor with a `\|` in it. See *Where the caret lands* under **Cross-cutting**. |
| behavior    | `TSPrecedence` — the whole precedence scale as instances carrying level *and* associativity, and the only place a priority number is written — the parenthesis machinery written against `TSIBinaryLike` rather than against binary operations, `TSTypeUtil.union` normalizing every union that is built — members deduplicated by structural match, ordered by presentation — `ScopeProvider.getScope` on `TSModule` and `TSBlock` — the declarations of a statement list that precede the referring statement, composed with the enclosing scope — `TSITrailingChildOwner.trailingChild` for the `else` side transforms, `TSTypeUtil.declarationToInitialize` for the one behind a union annotation, `needsSpaceBeforeOperand` and `needsParenthesesAsArrayElement` (each asked by both the editor and the textgen, so what is shown and what is generated cannot drift), and `TSNameUtil.isValidName`. Types present themselves through `BaseConcept.getPresentation`, overridden only where the notation is more than a keyword — the alias is already the default, and `TSFunctionType` is the third to need it. `TSFunctionUtil` is the signature side: which function a `return` belongs to, the returns that belong to one function rather than to a nested one, the `TSFunctionType` a function's signature comes to, and the three questions a call asks — how many arguments are required, whether a count is admissible, and what type the argument in position *n* must have. `ScopeProvider.getScope` on `TSModule`, `TSBlock`, both for-each loops (the binding reaches the body and not the iterated expression), `TSForStatement` (the header declaration reaches everything after it), the two switch clauses and `TSCatchClause`. `TSControlFlowUtil` is what `break` and `continue` ask, one walk with one parameter, stopping at a function boundary. `TSVariableDeclaration.needsSemicolon` is who the `;` belongs to — see *A `;` belongs to the statement, not to the declaration* under phase 4. `TSScopeUtil.declarationsVisibleIn` now exempts function declarations from the position rule, because they hoist, and `TSScopeUtil.ambientDeclarationsVisibleFrom` is the other half of `TSModule`'s scope — what the *environment* declares, reached through MPS's own `ModelPlusImportedScope`. `TSAssignmentUtil` is what may be written to, asked once by all twenty operators that write, and it refuses an ambient declaration for the same reason it refuses a `const` — see *What may be written to is one method* below. `TSTypeUtil.memberNamed` and `.propertiesOf` are the object-type half: one lookup that member access, the structural subtyping rule and the duplicate-name check all go through. `TSTypeUtil.typeTheCaretIsBehind` is the union-climb that `declarationToInitialize` and `parameterToDefault` both needed. |
| typesystem  | Per-operator typing lives in an `OverloadedOpRulesContainer` table, which `typeof_TSBinaryOperation` consults through `operation-type` — so an operand combination with no row *is* the "cannot be applied" error, rather than a separate set of operand checks. Overriding rules for equality, `in`, `,`, `&& \|\| ??`, assignment and the three logical compound assignments, whose results do not depend on their operands. The twelve arithmetic and bitwise compound assignments need no rule at all — four more rows in the same table are the whole of their typing, see *A compound assignment is a row in the table, not a rule of its own* below — and `++`/`--` are `typeof_TSUnaryOperation` and a mirror of it on `TSPostfixOperation`, plus one checking rule each for what may be written to. `typeof` rules for every literal, the prefix operators, the ternary, parens, declarations and identifiers. Non-typesystem checks: priority violations, a prefix operator immediately left of `**` (TS17006 — a syntax restriction, not a precedence one), `??` mixed with `\|\|`/`&&`, stray incomplete parens, `const` reassignment, a declaration with neither annotation nor initializer, a number literal still in an intermediate typing state, a string literal ending in an unfinished escape, and a union of fewer than two members — that last one written for the generator rather than for the editor, which can no longer build one. Functions add: the type of a declaration and of an arrow, of a parameter and of a `return`; `typeof_TSCallExpression`, which is the whole call story — a `when concrete` on the callee, a not-a-function-type gate, arity before assignability, and a result type outside the arity branch; and the checking rules for a return in the wrong place or shape, a function that promises a value and never returns one, and the four parameter-list shapes TypeScript's grammar refuses. Two quick fixes. Six subtyping relations, and every assignment-shaped rule now says `:<<=:` rather than `:~:` — see *Assignability is not comparability* under phase 5, which is the correction to know about before reading any of them. `TSIType_subtypeOf_TSUnionType` is an `InequationReplacementRule` that makes every member of a union a subtype of it — see *The one subtyping rule* below for why it is a replacement rule rather than a `SubtypingRule`, and why its sub-type side is declared as `BaseConcept`. `TSIType_subtypeOf_TSUnknownType` is the same shape with the *opposite* division of labour: its clause decides everything and its body is deliberately empty, which is right exactly once — see *`unknown` is the rule whose body should be empty* under phase 5 — and `TSNeverType_subtypeOf_TSIType` is its mirror, putting a bottom under the lattice. `TSArrayType_subtypeOf_TSArrayType` is covariant on the element, unsoundly and knowingly, as the object type's member is. `typeof_TSAmbientDeclaration` is the simplest inference rule here — a declaration that describes the environment has nothing to infer from — and `typeof_TSArrayLiteral` is much the hardest, being the only rule that has to wait for *N* types rather than one. Control flow adds: a for-of variable typed by the array's element type and a for-in variable by `string`, a catch binding typed `unknown`, a case expression held *comparable* to what the switch tests — the second and last place in the language that really means `:~:` — and the checks for `break`/`continue` outside anything, a `try` with neither catch nor finally, a second `default`, a for-each binding that states a type it is about to be given, and a `for` header that starts with something TypeScript's grammar does not allow there. |
| constraints | `TSIdentifier.declaration` declares the inherited scope, which is what makes the `ScopeProvider`s above take effect; `TSIDeclaration.name` is validated as a TypeScript identifier, which is what lets `:` and `=` leave the name cell instead of extending the name; `TSStringLiteral.escapedValue` is validated as text that may still be *being* typed, which is a weaker question than whether it is finished — see *A string literal stores its own spelling* below; `TSIConciseBody` names `TSExpressionBody` as its `defaultConcreteConcept`, so a fresh arrow function opens with the body form that can be typed into; the unitTest language restricts assertions to test methods. Five name validators now: the one on `TSIDeclaration`, and four for the concepts that carry a `name` without being one — `TSMemberAccess`, `TSPropertySignature`, `TSPropertyAssignment` and `TSFunctionTypeParameter`. Each of the four is a literal **copy** of the first, repointed from `run_code`, because `applicableProperty` resolves by neither name nor node id. |
| generator   | Empty (`main` mapping configuration only).                                                                                                                                       |
| textgen     | 59 `ConceptTextGenDeclaration`s; the forty-one binary operators share one on `TSBinaryOperation`, the eight prefix operators one on `TSUnaryOperation`, the two postfix ones one on `TSPostfixOperation`, `true`/`false` one on `TSBooleanLiteral` and the three declaration kinds one on `TSVariableDeclaration` — all writing the concept alias, so an operator added later needs no textgen at all. `TSModule` writes `<name>.ts` and `TSAmbientDeclaration` writes `<name>.d.ts`, though nothing in this repository generates the second: the accessory model that ships `console` is marked do-not-generate, `console` being a global TypeScript declares for itself. The model uses `jetbrains.mps.lang.behavior`, since two of these ask a behavior method rather than deciding spacing or bracketing for themselves. |
| intentions  | Add a type annotation, an initializer, an `else` branch, an `else if` branch — the four optional cells the editor hides when empty — add a template-literal interpolation, and swap an arrow function between a block body and an expression body, which is the one construct in the language whose two forms no keystroke can reach. Kept beside the side transforms, which are the primary way in for the first four: Alt+Enter still lists them, and it is the only way in when the caret is not at the anchor cell. For the interpolation it is the *only* way in, which is a gap rather than a design — see *Cross-cutting*. |
| tests       | 139 editor tests and 62 nodes tests — 276 JUnit tests between them — plus 85 TypeScript tests, in twenty-one `TSTestCase` roots, that run the generated output. They cover precedence, parens and the ternary, left- and right-associativity, the two ways a pending side transform commits, typing `const` and an identifier, decimal points and exponents, the optional-cell side transforms and the one case that must not forward; and on the types side every operator result the overload table produces, the union of `&&`/`\|\|` in both operand orders (which is the normalization check), the error when the table has no row, and — for the subtyping rule — a member and a narrower union assigned to a union written in a different member order, against a non-member that must still be an error. Typing and deleting are covered gesture by gesture, including the intermediate state a two-step delete leaves — pinned by typing into it rather than by asserting a tree with a placeholder in it, which the writer refuses. Twenty-one of them are about **where the caret ends up** rather than what the tree becomes: seventeen assert the whole editor with the caret written into it, four chain a further keystroke that only a correct caret makes meaningful, and four were watched failing against the two placement bugs they were written for. Thirty-two more are about the **alias-collision families** — every operator whose alias is a prefix of another one, typed keystroke by keystroke, which after compound assignment is very nearly every operator there is — see *An operator whose alias is a prefix of another one* under **Cross-cutting**. And every expression concept phase 1 added is now *evaluated*, not merely typed: see *What the TypeScript tests run* below. Three of them, in `programs`, are different in kind from the rest: they start from an empty `TSModule` and type keystroke by keystroke, which is the only way to ask what using this editor is actually like — see *What typing a whole program costs today* below, and *What the second program test says about navigation* under phase 5. That second one is what found that an object type's properties could not be typed at all, which is the standing argument for writing them; it has since grown a `console.log(total)` that is the only place anything types a name the module does not declare, and the first has grown a parameter for the same reason. Grouped by feature rather than by test kind with `virtualPackage` — `expressions{,.precedence,.ternary,.numbers,.unary,.operator_aliases,.increments,.templates}`, `statements{,.control_flow}`, `declarations{,.scopes}`, `functions{,.calls,.parameters,.arrows,.scopes}`, `caret{.expressions,.declarations,.types,.functions}`, `types{.objects,.unknown,.arrays}`, `statements{.loops,.branching}`, `programs`, `unit_test_language` — since the concept already says which kind a test is. The function tests cover the gestures one by one — the open paren that makes a call, the value typed after `return`, `?` and `...` and `=` on a parameter, `=>` in an empty hole — the type of a function and of a call, wrong arity in both directions and against a rest parameter, an argument of the wrong type, calling something that is not a function, the three return shapes, the four parameter-list shapes the grammar refuses, a function fitting a function type whose parameter is named differently with the void-result escape beside it and the negative that must still fail, hoisting in both of its forms, and an arrow function both inferring its return type and being passed to something that calls it. |
| unit tests  | A second language, `de.q60.mps.lang.typescript.unitTest`: `TSTestCase` (root) → `TSTestMethod` → `TSAssertTrue`/`False`/`Equals`/`NotEquals`/`TSFail`. Done in phase 0.2.          |

**`console` is no longer a concept**, which closes decision 3 and, with it, the last thing the
language had been carrying since before it had a type system. Six concepts went — `TSConsole`,
`TSConsoleType`, `TSConsoleOp_Base`, `TSConsoleOp_Log` and the `TSDotExpression`/`TSIOperation` pair
that only ever existed to hold them — and what replaced them is not a concept at all but a *model*:
an accessory model shipping `declare const console: { log(...data: unknown[]): void }`, read by
rules that were all already here. The one piece that had to be built for it was `unknown`. See
*The standard library is a model, not a concept* under phase 5.

**Object types** arrived the phase before, which is what made that possible: `TSObjectType` with
property signatures, `TSObjectLiteral` to produce a value of one, `TSMemberAccess` to read a member
off one, and the structural subtyping rule that makes any of it mean anything. See *Reading a member
off a type* under phase 5.

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
3. **The standard library.** ✅ **Done, as recommended: a hand-written minimal lib in an accessory
   model**, with the real `.d.ts` import of phase 9 to subsume it once that works.
   `de.q60.mps.lang.typescript.lib` is listed in the language's `.mpl` as an accessory model, which
   is what makes MPS import it implicitly into every model using the language — the same mechanism
   that reaches `java.lang` from every baseLanguage model, and `jetbrains.mps.kotlin.sourceSets` is
   the precedent for one written in the language's own concepts rather than derived from bytecode.
   It holds one root, `console`, and it is marked **do-not-generate**: `console` is a global
   TypeScript declares for itself, and emitting a second declaration of it would collide with the
   one `tsc` already has.
   What it cost was one method — `TSScopeUtil.ambientDeclarationsVisibleFrom` — and not the two
   this bullet predicted. The `isReadOnly` guard on quick fixes turned out to be unnecessary rather
   than merely cheap, and the reason is worth keeping: the lib holds nothing but a name and a type,
   and both quick fixes act on expressions. It becomes owed the moment a quick fix acts on a
   *type*. See *The standard library is a model, not a concept* under phase 5.

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

  The 276 MPS tests and 85 TypeScript tests are the model to keep.

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

Both of the bullets this phase moved out are done, in the phase that owned the types they needed:

1. ✅ **Array literals** — landed in phase 5 with `never`. The `arrays` sandbox module was
   annotations only for three phases, because nothing could *evaluate* an array; `arrayliterals`
   beside it now does, and the `arrays` `TSTestCase` runs five methods of it.
2. ✅ **Object literals** — landed in phase 5 with the object type and member access.

Nothing of phase 1 is open.

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

All four bullets are done. The fourth belonged to phase 5 in the end, and *What the console bullet
was really waiting for* below says why.

- ✅ **`TSFunctionDeclaration`**: `TSIStatement` and `TSIDeclaration` and `ScopeProvider` and
  `TSITrailingChildOwner`, with the parameter list and the return type on a `TSIFunctionLike`
  interface so an arrow function shares them. Parameters are typed, optional, defaulted and rest.
- ✅ **`return`**, function types `(a: number) => string`, and arrow functions with either body form.
- ✅ **A real call on any callable expression**, checked for arity and argument assignability.
  `TSCallOperation` is deleted rather than migrated — see below.
- ✅ **`TSConsole` / `TSConsoleOp_Log` are retired**, in phase 5 rather than here, and with them
  `TSConsoleType`, `TSDotExpression` and `TSIOperation`. All twenty-one instances were in the
  sandbox and were converted in place to `TSMemberAccess` over an identifier bound to the ambient
  declaration; nothing outside this repository has ever held one, which is the same reason phase 2
  gave for not writing a migration script.

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

**A parameter's annotation could not be typed in one run**, and the first diagnosis of it was wrong
in a way worth keeping. It said `value` typed into the empty parameter list was a *pending*
substitution which the `:` then arrived too early for. It was not pending: nothing was matching.
Tab did not commit it either, and no node was created however the edit ended, because MPS offers a
concrete concept under its **alias** and a concept written name-first has none. See *A name-first
concept in a list needs a menu of its own* under phase 5.

✅ **Fixed, with the menu written there rather than the node factory guessed at here.** `TSParameter`
now carries a default `SubstituteMenu` whose matching text is the pattern, and `value:number` is one
uninterrupted run: the colon stops the substitution matching, which commits the name, and the `:`
side transform this phase already had opens the annotation. Its handler differs from the property
signature's in the one way the concepts differ — a parameter's annotation is an **optional** child
the editor hides while it is null, so the handler must *not* create a hole; the `:` transform is
what creates it, and creating one here would render an annotation nobody asked for and leave the
colon with nothing to do.

`TSFunctionTypeParameter` had the identical gap and now has the identical menu, plus the `:`
transform and the name validator that `TSParameter` already had by implementing `TSIDeclaration`.
That third part is what the first attempt at it left out, and the failure is the useful part: with
the menu but no validator, `a:string` typed into a function type's parameter list produced a
parameter **named `a:string`** with its type still a hole. The name cell simply swallowed the colon,
so the side transform was never consulted. **A name-first substitute menu is three parts, not one,
and the validator is the part whose absence looks like the menu working.**

The `${` debt phase 1 recorded is *not* the same shape after all, and telling them apart is the
useful part: there the cell genuinely swallows the keystroke as text, so no side transform can ever
fire in it; here the cell offered a substitution that simply matched nothing, and giving it
something to match was all it took. The validator failure above is what shows the two are neighbours
rather than strangers — a name-first concept without one *becomes* the `${` case.

So the `programs` test has grown to what it said it should: `function greet(value: number) {
return; }`, typed in one run with three navigation keystrokes and no mouse.

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

`declare const console` needed `console.log` to be **member access that reads a member off a type**.
`TSDotExpression` had no inference rule at all, and `console.log` worked only because a substitute
menu was gated on `TSConsoleType`. Making it general needed an object type with property signatures,
which is phase 5's, for the reason this document already gave: a type no expression can read is not
worth shipping.

What it was *not* waiting for was the general machinery, and that prediction held exactly. A call on
any callable expression, function types, optional and rest parameters and the arity normalisation
behind them were all already here, so `declare const console: { log(...data: unknown[]): void }` is
read by rules not one of which had to change. What the bullet cost in the end was **one primitive
type, one root concept, one scope method and one deletion** — see *The standard library is a model,
not a concept* under phase 5.

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

The syntax is done; the dataflow aspect it was the prerequisite for is not.

- ✅ `TSBlock` and `if` / `else if` / `else`. The else-if chain is modelled as baseLanguage
  models it — a list of `TSElseIfClause` beside an optional else block — rather than as a
  nested if in the else, so the editor and textgen write the flat chain the source has.
  The condition takes any expression, consistent with the ternary (commit 325a097): TS
  coerces, and `tsc` objects only to the *always*-truthy ones, which is a narrower rule than
  "must be boolean" and not one worth duplicating.
- ✅ `fail` in the unitTest language, which was waiting for a branch that could reach it.
- ✅ **`while`, `do`/`while`, `for`, `for-of`, `for-in`, `switch`, `break`/`continue`, `throw`,
  `try`/`catch`/`finally`** — fourteen concepts and two interfaces, and the phase was right that
  they would be a repeat of an established pattern rather than a new one. `if` had already settled
  the modelling (a flat clause list, not a nested tree), `TSBlock` the scope composition and
  `TSITrailingChildOwner` the side-transform anchoring, so most of these are a structure concept,
  an editor, a textgen and a test. What was *not* free is below: three sections, one per thing
  that had no precedent.
- Dataflow aspect on top: unreachable code, missing return, unused variable, use before
  assignment. This is where MPS gives something `tsc` does not — live, in-editor, and it is what
  the control flow above was the prerequisite for. Still open, and now the largest thing phase 4
  owes.

### A `;` belongs to the statement, not to the declaration

`TSVariableDeclaration` owns its semicolon — its editor writes one and its textgen appends one —
and TypeScript's grammar says it should not. A *VariableStatement* is a declaration list **followed
by** a semicolon, and the same list appears in two other places where the semicolon is somebody
else's: a `for` header, where it is the loop's first separator, and a `for-of` or `for-in` header,
where there is none at all.

Modelling that properly means a statement wrapper around every declaration, which is a change to
every declaration this language has ever written. **One question asked in two places is the cheaper
answer**, and it is the shape the language already had for two other questions:
`TSVariableDeclaration.needsSemicolon()` is asked by the editor's last cell through a
`renderingCondition` and by the textgen through an `if`, exactly as `needsSpaceBeforeOperand` and
`needsParenthesesAsArrayElement` are.

**And the first cut asked it in one place only**, which produced `for (const word; of words)` — the
projection right and the output wrong, for the fifth time in this language's history. The standing
rule caught it again: *write the notation into the sandbox and read it back before believing an
editor*. The lesson each time has been the same one and is worth stating as a rule of its own now:
**a behavior method introduced to settle a rendering question is not finished until every renderer
calls it**, and there are always exactly two.

The `for` header keeps the declaration's own semicolon, which is why `TSForStatement`'s editor and
textgen write one only when there is **no** initializer — the loop's first separator *is* the
declaration's, and printing both would be printing it twice.

### `break` needs a walk, and the walk stops at a function

`TSControlFlowUtil` answers one question with one parameter: what encloses this statement, counting
switches or not. `break` accepts a loop or a switch, `continue` only a loop, and that asymmetry is
the entire difference between the two checking rules — which is why it is a parameter rather than
two walks that have to be kept in step.

**The walk stops at a `TSIFunctionLike` rather than passing through it**, and that is the part worth
having written down: `for (…) { const f = () => { continue; }; }` is an error in TypeScript however
many loops enclose the arrow, because the loop that encloses the function does not enclose its body.
A walk that merely looked for an ancestor loop would accept it. The test asserts that case
specifically, beside the three ordinary ones.

### What a switch clause is, and the one place `:~:` is right again

A clause holds a **statement list** rather than a block, which is what TypeScript's grammar says and
what makes fall-through expressible — a `case` with no `break` runs into the next one, and the
`TSTestCase` for that is the only test in the language that asserts a construct's *absence* doing
something.

`typeof_TSCaseClause` uses `CreateComparableEquationStatement` — `:~:` — and is the second place in
the language that really means comparable, after `typeof_TSEqualityOperation`. TypeScript compares a
case against the switch expression with the rules of `===`, so agreeing with the equality operator is
the point rather than a coincidence. Everything under *Assignability is not comparability* is about
the nine rules that said `:~:` and meant `:<<=:`; these two are the ones that meant it.

**And running a switch found the third member of a family this document has been collecting.**
`switch (2) { case 1: … }` is TS2678 — control-flow analysis narrows the subject to the literal type
`2`, so `case 1` is "not comparable". It joins `!(1 == 2)` (TS2367, in the definition of done) and
`const yes: boolean = true` (TS2367 again, under *What the TypeScript tests run*). The pattern is now
plain enough to state once: **`tsc` narrows a literal or a `const` to its literal type, so any test
that compares two written-down values has to go through a `let` with an annotation.** A `const` does
not help — the annotation does not stop the narrowing — and that is what makes this a trap rather
than an inconvenience.

## Phase 5 — the type system proper

The largest and most open-ended phase; scope it by decision 1 above.

- `any` / ✅ `unknown` / ✅ `never` with strict-null semantics. `null` and `undefined` are
  already here as types and as literals, and with only the union rule for subtyping the language is
  *already* strict about them: `null` is assignable to nothing but a union that names it, which is
  what `--strictNullChecks` means. What is left for them is narrowing, below. **`void` came forward
  with phase 3** — a function that returns nothing has no other type it can be given —
  **`unknown` came with the standard library**, and **`never` came with the array literal**, each
  arriving with the first thing that could not be said without it. Between them the last two put a
  top and a bottom on the lattice. **`any` is the one left, and the one this language should be
  slowest to add**: the whole build runs `--strict`, and every place that would want `any` today is
  a place `unknown` says the same thing more honestly.
- ✅ **Structural subtyping, object types, optional properties, the object literal and member
  access** — the four that had to arrive together, since a type no expression can state is not worth
  shipping and a literal with no type to state is the same thing said backwards. `TSObjectType` holds
  `TSPropertySignature`s under a `TSITypeMember` interface that index and call signatures can join
  later. Sections below say what each of them cost. Still open in this bullet: `interface` and
  `type` aliases, which are naming rather than typing, and index signatures.
- ✅ **`TSConsole` / `TSConsoleOp_Log` retired** in favour of an ambient `declare const console`,
  moved here from phase 3 with the object type it needed to say anything and done once `unknown`
  gave it a way to say `log` takes anything. Everything else was in place — a call on any callable
  expression, function types, optional and rest parameters, and a member read off a type — so what
  arrived with it was the *declaration*, not the rules that read it. See *The standard library is a
  model, not a concept* below.
- Intersections and literal types. Unions themselves are already here from phase 1, normalized by
  `TSTypeUtil.union` and with the member-of-union subtyping rule that phase 5 owed them — that one
  was small and blocking, so it was done with phase 1. The subtyping *lattice* around it is no longer
  the one relation it was: six now, with a top, a bottom, width subtyping on object types and
  covariance on arrays and on function results.
- ✅ **The array literal**, with `never` and array covariance, which is what it was waiting for:
  `[]` is `never[]` in TypeScript and is assignable to `number[]` only because `never` is assignable
  to `number`. The non-empty cases needed nothing new, exactly as phase 1 predicted — but *typing*
  them did, and that is the section below. **Tuples are still open**, and so is the one gap the array
  literal leaves: see *Waiting for N inferred types*.
- **Narrowing** (`typeof` guards, truthiness, discriminated unions, `as`, `!`). MPS's
  typesystem is not flow-sensitive; this needs its own design — most likely a behavior-level
  narrowed type per reference computed from the dataflow graph, not an inference rule. Treat
  it as a milestone, not a task.
- Generics: type parameters on functions/aliases/classes, constraints, inference at call
  sites. Also a milestone of its own; conditional and mapped types are explicitly out of
  scope for now.

### The standard library is a model, not a concept

Decision 3 said `console` could not stay a concept and named the mechanism that should replace it.
Both halves held; what is worth writing down is how little the replacement turned out to be, and
which of the predicted costs was real.

**One primitive, one root concept, one scope method, one deletion.**

- **`TSUnknownType`** — alias, editor, textgen, and one subtyping rule. `log` takes anything, and
  `unknown` is the only honest way to say so under `--strict`.
- **`TSAmbientDeclaration`** — a *root*, implementing `TSIDeclaration`, holding a name and an
  obligatory type: `declare const console: { log(...data: unknown[]): void }`. One root per global,
  which is how `lib.dom.d.ts` states its own. Being a `TSIDeclaration` is the whole of why nothing
  downstream had to change — `TSIdentifier.declaration` has pointed at that *interface* since phase
  2, so name binding, completion, the validator and `typeof_TSIdentifier` all arrived free, exactly
  as they did for `TSParameter` in phase 3. That is the second time the decision to declare the
  interface rather than the concept has paid, and it is the argument for doing it again.
- **`TSScopeUtil.ambientDeclarationsVisibleFrom`** — the other half of `TSModule.getScope`.
- **The deletion** — `TSConsole`, `TSConsoleType`, `TSConsoleOp_Base`, `TSConsoleOp_Log`,
  `TSDotExpression` and `TSIOperation`, with their editors, textgens, the substitute menu gated on
  `TSConsoleType` and `typeof_TSConsole`.

**`ModelPlusImportedScope` is the whole of the scope work, and finding it is the point.** The
question "what can this model see?" has an answer in MPS already, and it is not one to re-derive:
`ModelDependencyResolver` distinguishes *direct* imports from *implicit* ones, the second being the
accessory models of every language the model uses, and `ModelPlusImportedScope(model, rootsOnly,
concept)` is that walk wrapped as a `Scope`. Three lines, no reaching for `Language.getAccessoryModels()`
and no hand-rolled traversal — and because it also covers direct imports, the cross-model half of
phase 6 is already answered for declarations.

**Two things about the model itself.** It is registered in the `.mpl` under `accessoryModels`, which
is what makes MPS import it implicitly; and it is marked **do-not-generate**, because `console` is a
global TypeScript declares for itself and a generated `console.d.ts` would collide with the one
`tsc` already has. Which is also the division of labour to keep in mind when reading a test: MPS
type-checks `console.log("hi")` against *our* declaration, and `tsc` type-checks the generated text
against `@types/node`'s. Two independent checks of the same line, which is decision 1 working from
both ends.

**And it is typed rather than only built.** The second `programs` test ends with
`console.log(total`, four gestures in one run against a name the module never declares — see
*What the second program test says about navigation* below. The nodes tests here build an ambient
reference instead, and a built one would have passed against a scope that did not work.

**What is owed and deliberately not paid: a `TSTestCase` for either of them.** The definition of
done asks for one *wherever the construct can be evaluated*, and neither can be. `unknown` has no
operation at all until narrowing exists — that is what the top type means — so there is nothing for
`assert equals` to compare; and asserting on `console.log` means capturing stdout, which is a test
harness rather than a language test. Both are covered instead by a sandbox module that `tsc --strict`
compiles: `unknowns.ts` for the annotations and `hello.ts` for the call. The first `TSTestCase` that
can carry `unknown` is the one narrowing brings.

**And the `isReadOnly` guard decision 3 asked for is not owed yet.** Both quick fixes act on
expressions — a misplaced operator, a misplaced ternary — and the lib holds nothing but a name and a
type. There is no path from either to a node in it. The guard becomes owed the first time a quick
fix acts on a *type*, and this paragraph is here so that whoever writes that one knows it.

### Waiting for N inferred types

`typeof_TSObjectLiteral` beside it splices type *variables* into a template and lets the solver fill
them in, because the **shape** of an object type does not depend on the values: one signature per
property, whatever the properties turn out to be. `typeof_TSArrayLiteral` cannot, and the difference
is the whole of this section: the element type is a **union**, `TSTypeUtil.union` deduplicates and
sorts, and neither can be done to a variable. The rule has to have the real types in hand.

**`when concrete` waits for one type.** The multi-argument overload behind it —
`whenConcrete(List<SNode>, …)` — exists in `BaseTypecheckingContext` and is
`@Deprecated(forRemoval = true)` with no notation in `jetbrains.mps.lang.typesystem`, so it is not a
route. Nesting is not one either: N is a property of the node, and a rule body is written once.

**So the blocks count themselves down.** One `when concrete` per element, all closing over the same
list; each adds its own concrete type as it arrives, and whichever one finds the list full is by
definition the last to fire, so that is the one that builds the union and creates the equation.
Everything they close over must be `final`, which the typesystem language checks and reports in
those words.

**It works only because the union is order-insensitive**, and that is the payoff from a decision
made two phases earlier for a different reason. Nothing says which order the blocks fire in, so
`collected` is in completion order rather than source order — and `TSTypeUtil.union` sorts its
members by presentation, so the answer is the same either way. A union that kept source order could
not be built this way at all. The test that pins it is a pair: `[1, "a"]` and `["a", 1]` assigned to
the *same* written annotation, which is the same shape as the phase 1 normalization test and passes
for the same reason.

**The gap it leaves, named rather than fixed.** `TSTypeUtil.union` now drops `never` — `T | never`
is `T` in every lattice and needs no subtyping question asked — but it does **not** collapse a
member that some other member subsumes. So `[[1, 2], []]` is `(number[] | never[])[]`, which is not
assignable to `number[][]`, and `tsc` accepts what MPS refuses. That is the wrong way round by the
standard *What may be written to is one method* sets, and it is left open deliberately: collapsing
subsumed members is a least upper bound over the whole lattice, which is the thing this language
refuses to ask the solver for, since asking gets MPS's own `JoinType` back inside types that are
supposed to come only from `TSTypeUtil.union`. It is narrowing's problem, or a `SubstituteTypeRule`'s,
and either is a milestone rather than a line.

### `unknown` is the rule whose body should be empty

`TSIType_subtypeOf_TSUnknownType` is an `InequationReplacementRule` shaped like the union rule beside
it — `BaseConcept` on the sub-type side with an instance test in the clause, for the reason *The one
subtyping rule* records — and it differs in exactly one way: **its body is empty on purpose**.

*The one subtyping rule* warns against precisely that: a rule that claims an inequation and leaves
the body empty reports *success*, silently, because the solver takes an unhandled-but-claimed
inequation as satisfied. That is a bug for the union, whose clause has to check membership before it
dares claim anything. For `unknown` it is the answer: every type is assignable to the top type, so
claiming the inequation is the whole of what the rule has to say.

The two rules together are the general statement, which is the same one *What a subtyping clause can
decide* makes from the third side: **how much a clause may claim is decided by where its inputs come
from.** The union's clause reasons about written-down types and can decide the whole thing; the
object type's cannot, because half of its inputs are inferred; `unknown`'s has nothing to decide at
all. Ask that question before writing the next one.

`unknown` is one-directional by construction — the rule only ever fires with the unknown on the
super-type side — so nothing had to be written to stop `unknown` flowing back into a `number`. The
negative test is what confirms it rather than the code: `let narrowed: number = u` is still an error.

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

### Reading a property by reference, and why the first attempt did not

`TSPropertyAccess` references the `TSPropertySignature` it reads. `TSMemberAccess` beside it, which
carries a **name**, is **deprecated** — MPS strikes an instance of a deprecated concept through, so
the two are told apart on sight — and survives for the one case a reference cannot state: reading a
member off a type the solver built for itself, which is what an un-annotated object literal gives.
The negative test `Reading_a_member_a_type_does_not_have_is_an_error` needs it too, a reference
being unable to point at a member that does not exist.

The argument the name-based design was built on is narrower than it looked. A signature is a real
node whenever the object type was **written down** — an annotation, a return type, the ambient
`console` — and that is every case but the inferred literal. Referencing buys completion,
navigation, rename and find-usages; the name bought none of them.

Four things it cost, three of which are general:

- **A type node is a copy.** `TypeChecker.getTypeOf` hands back a copy of the annotation, so its
  `TSPropertySignature` children are not the nodes a reference can point at. The scope therefore
  asks `TSIExpression.writtenType()` — a virtual method that walks to the annotation itself —
  rather than asking the type checker. The same copying is why nothing checks that the operand's
  type really declares the referenced signature: the comparison could only ever fail, and the scope
  is the guard instead.
- **A reference cell cannot be typed into while it has no target.** An action that creates the
  access and leaves the reference unset produces a cell that swallows every keystroke. The dot
  transform is a `TransformationMenuPart_Parameterized` instead — one completion item per property,
  labelled `.x`, creating the access already resolved. That is what baseLanguage does for `a.` and
  the reason it does it.
- **A ref-cell's inner cell belongs to the *target*.** Parking the caret there with an
  `IdSelector` made `Insert` offer a sibling of the signature — a new member of the annotation —
  rather than a new statement. The transform sets no caret at all now and lets the substitution
  place it.
- `applicableLink` joins `applicableProperty` on the list of references the notation cannot resolve,
  so the constraint had to be copied from an existing one and repointed from `run_code`. And the
  constraints model needed `jetbrains.mps.lang.behavior` among its used languages before it could
  call a behavior method — the same import the typesystem model was once missing.

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

`TSDotExpression`, `TSIOperation` and the two `console` concepts are gone: `unknown` let an ambient
declaration replace them, and this rule is what reads it. `console.log` is now `TSMemberAccess` over
an ordinary identifier, typed by the rule above and called by `typeof_TSCallExpression` — no concept
in the language knows what `console` is any more, which is the whole point.

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

✅ **All four name-first concepts have it now.** `TSParameter` and `TSFunctionTypeParameter` were the
two left, and doing them turned the three parts above into a rule rather than an observation:

- **The handler gives a hole only where the child is obligatory.** `TSPropertySignature` and
  `TSFunctionTypeParameter` declare their type `[1]` and render its cell always, so the handler
  makes the placeholder. `TSParameter` declares it `[0..1]` and the editor hides it while it is
  null, so the handler must *not* — the `:` transform is what opens it, and a hole made here would
  render an annotation nobody asked for.
- **The `:` is a transform either way, but it does different work.** Where the hole already exists
  it changes no tree and owes only the caret; where it does not, it creates the child and then owes
  the caret. Two shapes, one gesture, and the reason for the difference is the cardinality.
- **The validator is not optional, and its absence looks like success.** `TSParameter` had one
  already by implementing `TSIDeclaration`; `TSFunctionTypeParameter`, which implements only
  `INamedConcept`, did not — and with the menu in place but no validator, `a:string` typed into a
  function type's parameter list produced a parameter *named* `a:string` with its type still a hole.
  The name cell swallowed the colon and the transform was never consulted. That is the same failure
  the `${` debt under **Cross-cutting** describes, arrived at from the other direction: **a
  name-first concept without a name validator is a free-text cell.**

**Two more things `applicableProperty` cost, both worth knowing.** It resolves by neither name nor
node id (the list under *The reference that cannot be written from text*), so each validator has to
be **copied** from one that already exists and repointed from `run_code`. And `INamedConcept.name` is
*inherited*, so `concept.propertyDeclaration` does not list it: the first copy repointed at null,
smodel being null-safe said nothing, and the make failed with
`Argument for @NotNull parameter 'conceptDeclaration' of MetaIdByDeclaration.getConceptId must not be
null` — a message that names neither the constraint nor the property.

### What the second program test says about navigation

`A_program_with_objects_and_compound_assignment_can_be_typed_into_an_empty_module` types seven
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

**And the last statement is the one that proves the standard library.** `console.log(total` is
four gestures in one run — a name that resolves, a dot that reads a member, an open paren that
calls what it found, an argument — and **`console` is declared nowhere in the module**. It comes
from the accessory model through `TSScopeUtil.ambientDeclarationsVisibleFrom`, which is the only
place in the test suite where the scope reaches outside the model at all; the nodes tests beside it
*build* an ambient reference rather than typing one, and building one would have passed against a
scope that did not work. Not one of the four gestures knows what `console` is, which is the whole
of what retiring `TSConsole` bought, and this line is where that is demonstrated rather than
asserted.

It also cost nothing to add, which is the more useful fact: the `programs` group has twice been
the thing that found a construct with no way in, and this time it found that a construct built two
commits earlier already had one.

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
needs. Keep it behind one interface on the JVM side; long-lived for interactive re-import,
spawn-and-exit for a one-shot.

**A correction, because the paragraph above used to name an API that is not installed here.**
`typescript@7.0.2` **is** `typescript-go`. The package's `main` is undefined and its only
non-`unstable` export is `version.cjs`, so `ts.createProgram`, `ts.TypeChecker` and
`ts.resolveModuleName` — every name the sections above were written against — do not exist in
this dependency. What replaced them is `typescript/unstable/sync`: an `API` that spawns the Go
binary and hands back `Snapshot` → `Project` → `.program` / `.checker`. It is LSP-shaped in its
*transport*, which is what the rejection note below meant, but not in its surface — `Checker`
carries `getExportsOfModule`, `getTypeOfSymbol`, `getDeclaredTypeOfSymbol`, `getPropertiesOfType`,
`getSignaturesOfType`, `getReturnTypeOfSignature`, `getTypeArguments`, `getIndexInfosOfType`,
`getAliasedSymbol` and `typeToString`. Every operation *Read the checker's symbols, not the syntax
tree* asks for is there, under a different import. So the decision stands and only the names
change; what actually needed rethinking was reaching the module symbol, since there is no
`resolveModuleName` — see below.

Rejected: **GraalJS in process**, which does run `typescript.js` and would let a custom
`CompilerHost` read through MPS's VFS, but runs interpreter-only on JBR — far too slow for a
file the size of `lib.dom.d.ts`. Worth keeping as a no-Node-required fallback, not as the
default. **IntelliJ's own TS PSI** is not available: MPS is built on the Community platform and
JavaScript/TypeScript support is a closed-source plugin bundled only with the commercial IDEs
(confirm against the target distribution before relying on the absence). **A JVM-native TS
parser** does not exist in maintained form, and the Rust parsers (swc, oxc) are syntax-only,
which is exactly the level ruled out above.

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

### What the extractor found

✅ **Step 1 is done**: `mps-typescript/tools/dts-extract` — `src/schema.ts` is the stub schema,
`src/extract.ts` the conversion, `src/cli.ts` a one-shot and a `--stdio` mode, and
`test/extract.test.ts` runs `punycode` and `path` under `npm run test:extractor`. Thirteen tests.
It needs no MPS language feature and no gradle build, which is why it was the right thing to build
first: none of the gates in *The part that is actually hard* bite until the JVM side exists.

- **The checker really does flatten the module wrappers, and `path` proves it on the first run.**
  `path.d.ts` is `declare module "path"` around `namespace path` ending in `export = path`, with a
  second `declare module "node:path"` re-exporting it through `import path = require("path")`. None
  of that reaches the extractor: what comes back is three interfaces and a value. That is the whole
  argument of *Read the checker's symbols, not the syntax tree*, settled by the cheapest fixture
  rather than by a hard one.
- **`export =` is not among a module's exports, and the obvious accessor does not find it.**
  `getExportsOfModule` on `"path"` returns only `ParsedPath`, `FormatInputPathObject` and
  `PlatformPath` — the *types*. The value is under the key `export=` in `symbol.getExports()`, and
  `getMemberInModuleExports(symbol, "export=")` returns `undefined` for it, which reads as "this
  module has no such export" rather than as "wrong accessor". The stub schema carries it as its own
  `exportEquals` field, and for `path` it comes out as a reference to `PlatformPath` — which is
  exactly what a stub of a CommonJS module should say.
- **There is no `resolveModuleName`, so the module symbol is reached through a synthetic entry
  file.** One `import * as mN from "<specifier>";` per module, then `getSymbolAtPosition` at the
  offset of the specifier string. The file is never written to disk: `APIOptions.fs` is an overlay
  whose `readFile` returning `undefined` *falls back to the real filesystem*, so overlaying the
  entry and a tsconfig leaves `node_modules` resolving normally and the caller's tree untouched.
- **Declaration merging arrives in the simplest fixture there is.** `punycode.ucs2` is a
  `BlockScopedVariable` **and** an `Interface` on one symbol, so a merged symbol owes one
  declaration of each kind. A first cut that branched on the first matching flag would have dropped
  half of it silently.
- **`SymbolFlags.Optional` is set on properties and not on parameters.** The property side works —
  every member of `FormatInputPathObject` reports it — but `suffix?: string` does not, and the
  optionality has to be read off the `ParameterDeclaration`'s `questionToken`. `dotDotDotToken` is
  the same story for rest, and is better than inferring it from `hasRestParameter` plus position.
- **`boolean` is internally a union of two literal types**, so the primitive check has to run
  *before* the union check or `matchesGlob` returns `true | false`. `path` happens to contain the
  one method that catches this.
- **`?` and `| undefined` say the same thing twice.** The checker gives `string | undefined` for
  `suffix?: string`; the language carries optionality on the declaration, so the extractor strips
  `undefined` from an optional's union rather than emitting both.
- **What falls back to raw is asserted, not estimated.** In `path` it is exactly two members, `sep`
  and `delimiter`, both string-literal unions — and the union is kept with raw *members* rather than
  becoming one raw blob, so `"/" | "\\"` still generates correctly. The test names the two; if the
  list grows, something stopped converting.

### Importing what fits, and letting the rest name itself

The catch-all was going to be `TSRawType`, and it is not built. What replaced it for now costs no
language change at all: **the extractor names the construct it could not express, and the importer
names the concept it would have needed** — so what is missing is a list rather than a silence, and
the list is the argument for what to build next.

- **`unsupported` carries `missing`, not only text.** `{ kind: "unsupported", text: "\"/\"",
  missing: "literal-type" }`. `src/gaps.ts` walks a module and prints the tally —
  `--gaps` on the CLI — which for `path` is four literal types and for `punycode` is nothing at all.
- **What the *schema* cannot say and what the *language* cannot build are two questions**, and the
  schema encodes only the first. A reference and a type declaration are perfectly expressible in the
  stub JSON and simply have no concept yet, so `src/notation.ts` answers the second by walking the
  tree — which means the schema does not churn every time the language grows.
- **A type that reports index infos is not necessarily an object type.** The first cut classified
  every fallback by its signatures and index infos, and reported the string literal `"/"` as an
  `index-signature`: a literal answers `getIndexInfosOfType` from its apparent type. The
  signature-shaped reasons are only asked of `isObjectType()` now.
- **The result is that `punycode` imports and `path` does not**, which is the finding. Five
  declarations — the four `(string) => string` functions and `version` — went in and check clean.
  Everything else in both fixtures is blocked by exactly two missing concepts: a
  **type-alias declaration** (all three of `path`'s exports, and `punycode.ucs2`'s type half) and a
  **type reference** (`path`'s `export =`, and `punycode.ucs2`'s value half). Nothing else blocks
  anything. Object types, function types, rest and optional parameters, arrays and unions were all
  already here and needed no work.
- **The importer is text, not a JVM reader.** `--mps` prints the roots in MPS's generic
  `§Concept { … }` syntax and they go in through `write_root` verbatim. That is a shortcut past step
  2's JVM side, and it bought the whole of the finding above for an afternoon; the schema can stop
  moving before anything is written in Java.
- **A stub model must be `doNotGenerate`, and nothing enforces it yet.** It is set by hand through
  `DefaultSModelDescriptor.setDoNotGenerate` — `read_model_metadata` does not show the attribute, so
  a model created without it would quietly emit `.d.ts` files into `source_gen` and collide with the
  real library, which is the same trap decision 3 recorded for `console`.
- **Where the stubs live is provisional.** `de.q60.mps.lang.typescript.sandbox.stubs.punycode` sits
  in the sandbox solution because that solution already uses the language, and the sandbox is for
  demonstrating notation rather than for this. It moves once step 4's model root exists.

### A declaration file is a root; a declaration is not

The first import wrote five roots for five declarations, and a model that reads as five unrelated
things is not what a `.d.ts` is — it is **one file of many declarations**. `TSDeclarationFile` is
that file: a named root under `INamedConcept` holding `declarations: TSAmbientDeclaration[0..n]`,
and `TSAmbientDeclaration` is no longer rootable.

- **The file extension moves with the root.** Only a root produces a file, so
  `TSDeclarationFile` carries the `d.ts` extension and writes a line per declaration, and
  `TSAmbientDeclaration`'s textgen loses its `ExtensionDeclaration` and writes only
  `declare const <name>: <type>;`. That mirrors `TSModule` over `TSIStatement` exactly.
- **`ModelPlusImportedScope`'s second argument is `rootsOnly`, and it had to become `false`.** The
  scope that reaches `console` was looking for `TSAmbientDeclaration` *roots*; nested one level
  deeper, they are found only when the search descends. Nothing else in the scope story changed —
  the model, its imports and the accessory models are still the three ways in.
- **The existing instances were moved, not rewritten.** `console` is referenced by node id from the
  sandbox and from the `programs` editor test, so the migration adds the new root and re-parents the
  declaration under it — `removeRootNode` then `declarations.add` — rather than building a fresh
  tree. A recreate would have left every reference pointing at nothing.
- **Still owed: the module specifier.** `punycode` is recorded only as the file's name, which is
  also what its textgen would write. A real stub says `declare module "punycode"`, and the specifier
  is where an `import` statement will get its text from — so it belongs on this concept, and is the
  natural third property once something can import *from* a stub.

### A name in type position

`TSTypeAlias` and `TSTypeReference` are the two concepts the fixtures asked for, and they are what
took `punycode` from five of seven declarations to **all seven** and `path` from none to two.
`TSITypeDeclaration` is the interface a reference points at — `interface`, `class` and `enum` join it
later — and `TSIDeclarationFileMember` is what a declaration file holds, now that it holds two kinds.

- **The reference resolves through `ScopeProvider`, not through a search-scope function.**
  `TSDeclarationFile` implements `ScopeProvider` and answers both kinds: `TSITypeDeclaration` with
  `typeDeclarationsVisibleFrom`, `TSIDeclaration` with the ambient lookup it already had.
  `TSModule` answers the type kind too, so a name in type position resolves in ordinary code and not
  only in a stub.
- **Three references in the aspect models cannot be written from text at all**, which is a longer
  list than *the notation drops some things silently* had. `ConceptConstraints.concept`,
  `NodeReferentConstraint.applicableLink` and `ConceptMethodDeclaration.overriddenMethod` each fail
  to resolve when a *new root* carrying them is written — and the first fails for `TSObjectType` as
  readily as for a concept added a minute ago, so it is not staleness. **Editing an existing root is
  fine**; it is only creating one that cannot. The way through is to **copy a root that already has
  the reference and repoint it** from `run_code` — `TSIdentifier`'s constraint became
  `TSTypeReference`'s with three `setReferenceTarget` calls, and `TSModule`'s behavior became
  `TSDeclarationFile`'s with one, after which `write_root` rewrote the body normally.
- **A merged symbol is what proves the binding.** `punycode.ucs2` is a variable *and* an interface,
  so the import writes a `TSTypeAlias` and a `TSAmbientDeclaration` of the same name, the second
  holding a `TSTypeReference` to the first. Nothing else in the repository has a type that refers to
  a declaration by name.
- **What is left of `path` is one construct.** `PlatformPath` is blocked only by the string-literal
  unions in `sep` and `delimiter`, and `export =` has nowhere to go in a declaration file. The first
  is what `TSRawType` was designed for, and it is now the single most blocking thing in the fixtures.
- **Owed, and named rather than pretended:** a type alias is not yet *substitutable* for what it
  names — there is no `SubstituteTypeRule` on `TSTypeReference`, so `ParsedPath` and its object type
  are distinct types to the solver. Nothing type-checks against a stub yet, which is why this was
  survivable; it stops being so the moment a module assigns through an alias. `TSTypeAlias` is also
  a declaration-file member only, not a statement, so ordinary code can reference a named type but
  not declare one. Neither concept has an editor test or a nodes test of its own yet.

### Registering a model root without a plugin descriptor

The extension point is `<mps.modelRootFactory rootType=… className=…/>` in a `plugin.xml`, which this
project has never shipped. It does not have to be: `ModelFactoryRegister` reads that EP and calls
`PersistenceRegistry.setModelRootFactory(rootType, factory)`, and `PersistenceFacade` declares that
method as public API — so **an application plugin calling it in its init is registration-equivalent**,
with no descriptor and no build wiring.

✅ **It works, and a language needs no solution of its own for it.** Three roots in a `plugin`
aspect, and `getModelRootFactory("typescript_dts_stubs")` answers with our factory.

- **The `plugin` aspect is free.** `LanguageAspect.plugin` is recognised from the model name alone —
  `<language>.plugin` — with nothing to declare in the `.mpl`.
- **`StandalonePluginDescriptor` is the piece that is not guessable, and without it the aspect
  silently does nothing.** An `ApplicationPluginDeclaration` on its own generates a correct
  `TSDtsStubs_AppPluginPart extends ApplicationPluginPart`, whose `init()` is the
  `setModelRootFactory` call — and *nothing instantiates it*. MPS reaches a part through a
  `<Name>_ApplicationPlugin extends BaseApplicationPlugin` overriding `fillCustomParts`, and that
  class is generated only when a `StandalonePluginDescriptor` root is present. Adding one — a bare
  root, no content — produces `Typescript_ApplicationPlugin`, and the registration then happens on
  language reload.
  The tell while it was missing is worth knowing, because nothing reports it: the *part* is
  generated and compiles, so the aspect looks complete, and the only symptom is that
  `getModelRootFactory` keeps answering null. Searching the MPS tree misleads here as well — every
  `_ApplicationPlugin` in it belongs to a solution, which reads as "a language cannot do this" when
  the truth is that no language in that tree happens to want one.
- **No `plugin.xml` and no build wiring**, which is the whole point: this project has never shipped
  an IDEA plugin descriptor and still does not need one. `ModelFactoryRegister` reaches
  `setModelRootFactory` from the extension point; the application plugin reaches the same method
  from the same process.
- **Timing is still unverified.** `AbstractModule.loadRoots` logs `Unknown model root type` and
  *skips the root* when the factory is missing, so a module declaring one must be read after
  registration. Registration was observed after a language reload, which is not the same as being
  in place before modules load at startup — that needs a restart with something actually declaring
  a root of this type.
### Importing a `.d.ts`

✅ **`stubs.punycode` and `stubs.path` are read-only models produced by running the extractor**, one
per specifier listed in `mps-typescript/stubs.txt`. `TSDtsStubsModelRoot.loadModels()` returns a
`TSDtsStubModelDescriptor` per line; `createModel()` spawns the sidecar, reads its output and
returns `ModelLoadingState.NO_IMPLEMENTATION` — signatures, no bodies, which is what a stub is.

- **The schema is the contract, read with Gson.** `MPS.IDEA.Modules` stubs `com.google.gson`, so one
  module dependency is the whole of what it took, and `TSDtsStubJson` reads the extractor's ordinary
  JSON output. A line-oriented node stream was built first, on the belief that no module here stubs
  a JSON parser; it was wrong, and the format it invented is gone. **A dependency is worth looking
  for before a format is worth inventing.**
- **`JsonObject.get(String)` cannot be written in a model that uses `baseLanguage.collections`.**
  It is re-read as the collections `GetElementOperation`, which wants an int index, and the error
  says `type java.lang.String is not a subtype of int` — which reads as a bug in your own code.
  `getAsJsonPrimitive(key)` is the way past it, and the same trap catches `.get` on any Java map.
- **References resolve after the walk**, since a type may be named before it is declared;
  `punycode.ucs2` is the case, and it is what proves the import binds rather than inlines.
- **`isReadOnly()` is one method**, and it is the whole of what makes these models read-only.
- **Two names that are not the ones you would guess.** `FileBasedModelRoot.getSupportedFileKinds1()`
  has to be overridden or `getSourceRoots(SOURCES)` is empty and the root silently yields nothing;
  and `PersistenceFacade.createModelId` refuses a plain name — it wants a designator, `r:<uuid>`,
  and the uuid has to be derived from the specifier so a reference into a stub survives a reload.
- **The model root is registered at module-load time**, which answers the timing question the
  previous section left open: the root type resolved when the module's roots were read, with no
  `Unknown model root type` in the log.
- **Still crude.** The sidecar is spawned per model rather than held open over `--stdio`; the
  specifier list is a file rather than discovery over `node_modules`; and `FolderDataSource` watches
  the whole project directory, so any change re-imports everything. All three are the same step-4
  work, and none of them is in the way of the next thing.

### Order of work

1. ✅ The extractor (`Program` → `getExportsOfModule` → stub JSON) in the existing npm project.
2. ✅ An importer producing a model, for the subset the language can build. The two concepts the
   fixtures named — a type-alias declaration and a type reference — landed with it.
3. A round-trip test that costs nothing to build: the language generates `.ts`, `tsc` declares
   it, the importer reads the `.d.ts` back, and the result is asserted against the nodes it
   came from. A `@types` package is the second corpus.
4. ✅ **In part**: the model-root plumbing. What is left of it is discovery over `node_modules`
   instead of `stubs.txt`, a long-lived sidecar over `--stdio`, and a data source narrower than the
   whole project directory.

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

- **Two debts phase 3 left; the third went with the concept it was about.** The two body-form
  intentions on an arrow function have no editor test, because `InvokeIntentionStatement.intention`
  is a reference the writer can neither resolve by name nor even build the node for, so that test
  needs a `run_code` fix-up none of the others did. And a rest parameter can be declared, passed and
  checked, but nothing inside the function can read it: that needs `.length` and indexing — member
  access is here, indexing is not.
  The one that closed itself is worth noting as a pattern: `console.log`'s argument list had no
  separator in its *editor* while the textgen joined them correctly, and nobody had noticed because
  every call in the repository passed one argument. Retiring the concept retired the bug, because
  `TSCallExpression`'s own editor has had the separator all along. **A bespoke concept standing in
  for a general one carries bespoke bugs, and deleting it is the only fix that cannot regress.**
- **In a `renderingCondition`, a property is not a property.** `node.someLink` resolves to an
  `SLinkAccess` and works; `node.someProperty` is read as a *Java field* reference and fails with
  `Cannot resolve 'isRest' as 'fieldDeclaration'`, with or without a cast on the receiver. It has to
  be written out as `§SPropertyAccess { property -> isRest }`. TextGen has no such trouble with the
  same expression, which is what makes the failure read as a missing property rather than as a
  notation limit.
- **A link literal has two references, and repointing one of them silently strands the other.**
  `link/TSDotExpression : operand/` is a `LinkIdRefExpression` carrying a `conceptDeclaration` *and*
  a `linkDeclaration`. Rewriting the surrounding code to say `link/TSMemberAccess : operand/` while
  both concepts still exist retypes the first and leaves the second pointing into the old concept —
  `The reference operand (linkDeclaration) is out of search scope`, which reads as though the role
  does not exist on the new concept when in fact it does. The same happens to `node<C>` casts far
  less often, because a cast has only the one reference.
  The fix is a `setReferenceTarget` from `run_code` onto the `LinkDeclaration` of the new concept,
  which joins `applicableProperty`, `actionMap`, `EditorCellId`, `separatorStyle`, `emptyCellModel`
  and `renderingCondition` on the list of things the notation cannot repair by itself. **The
  cheaper order of work is to delete the old concept first**, so the role name is unambiguous while
  the code that mentions it is being rewritten — which is not always possible, since a delete is
  refused while references still point in.
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
  `TSConsoleLog` removal show the cost of not having them. The `TSConsole` retirement is the third
  time the excuse has been "every instance is in this repository", and it will stop being true the
  first time anything outside it uses the language.
- Editor tests for every typing interaction; nodes tests for every type rule. Any action map or
  transformation menu added from here on owes a caret assertion too — the placement is part of the
  gesture, and `EditorText.withCaret` makes it one line.
- Optional side track once the structure is broad enough: a `.ts` **importer** (parse real
  TypeScript into MPS nodes), which is also the fastest way to build a large test corpus.
  This is now step 2 of phase 9 rather than a track of its own.
