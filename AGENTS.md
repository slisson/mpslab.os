# Working in this repository

## Comments

**Write a comment only when the code cannot say the thing itself.** The default is no comment.

A comment earns its place when it records something a reader cannot recover from the code in front
of them:

- a non-obvious *why* — an API that behaves unexpectedly, a rule of the language being modelled, a
  deliberate deviation from what looks correct;
- a trap that cost real time and would cost it again — MPS silently dropping a child, a checker
  that reports success for an unhandled case;
- a decision with a live alternative, stated in a sentence, where the next reader would otherwise
  reasonably "fix" it back.

It does not earn its place when it:

- restates the code (`// the loop variable reaches the body` above code that composes a scope for
  the body);
- narrates project history — which phase something arrived in, what an earlier cut did, what the
  roadmap says about it, what was "watched failing". **That belongs in ROADMAP.md and in commit
  messages, and nowhere else.** Someone reading a behavior method wants to know what it does, not
  how the project got here;
- teaches MPS or TypeScript in general;
- repeats what a neighbouring comment already said.

**Length.** One or two lines. A comment that needs a paragraph is usually a sign the code should be
clearer or the reasoning belongs in ROADMAP.md. Ten lines above a five-line method is always wrong.

**Cross-references.** Link to ROADMAP.md by section name at most once per file, where the design
question really is bigger than the code. Do not repeat the roadmap's argument inline.

Existing over-commented code is not a licence to add more. When you touch such a method, cutting
its comments down is a welcome part of the change.

### Editor tests take no comments at all

An `EditorTestCase` is a sequence of inputs and the tree they produce. Both are right there, so
there is nothing left to explain — and explaining *why* the sequence is what it is gets it exactly
backwards: **the sequence is not a design, it is whatever reaches the result today.** It is
legitimate to change it the moment the editor gets easier to use, and a comment justifying it
turns a free change into a documentation edit.

Such comments also go stale silently, because nothing checks them. Two in this repository ended up
describing a keystroke that had been removed and a gesture that no longer happened, and both were
found by reading, not by a failing test.

`A_whole_program_can_be_typed_into_an_empty_module` is the model: no comments, and none missing.

If a keystroke is genuinely surprising — a gesture the language had no way to make until recently,
a limit of MPS the test exists to pin — that belongs in ROADMAP.md, where it is written once for
all the tests that share it.

## Dispatch, not type tests

**A chain of `isInstanceOf` is a polymorphic method written the wrong way round.** It is not an MPS
quirk — it is the type-switch anti-pattern, and it fails for the usual reasons: the knowledge of
every case sits in one place instead of with the concept it describes, adding a concept means
finding and editing that place, and nothing tells you when you have missed one.

Write a **virtual behavior method** on the common interface, `null` or a sensible default in the
base, overridden by each concept that has something to say. `TSIExpression.writtenType()` is the
worked example: it began as one static with seven `isInstanceOf` branches over identifiers,
property accesses, parentheses and three kinds of declaration; it is now one virtual method on
`TSIExpression`, one on `TSIDeclaration`, and a one-line override on each of the six.

Two `isInstanceOf` uses that are legitimate, so the rule stays usable:

- a **predicate about a different node** — `thisNode.parent.isInstanceOf(TSIForEachLoop)` asks about
  a *context* the concept does not own, and there is no receiver to dispatch on;
- a **checking rule refusing a shape** — `check_TSForStatement` asking whether its initializer is
  one of the two concepts the grammar allows. The rule exists precisely to enumerate what is
  rejected.

The test is whether the branches are answering *the same question about different concepts*. If
they are, it is dispatch, and it belongs on the concepts.

## Roadmap

`mps-typescript/ROADMAP.md` is the project's record: phases, decisions, and what each piece cost.
Update it when a phase item lands or a decision changes. It is the right home for the history and
the reasoning that must **not** go in code comments.

## MPS specifics

- Do not read or write `.mps`, `.msd`, `.mpl` XML directly, and do not read `source_gen`. Use the
  mpslab MCP tools.
- The notation drops some things silently on a write: `renderingCondition`, `actionMap`,
  `EditorCellId`, `separatorStyle`, `emptyCellModel`, and references such as `applicableProperty`
  and `SubstituteMenuReference_Named`. Those are set from `run_code`; a root carrying one must not
  be rewritten wholesale from text afterwards.
- A behaviour method introduced to settle a rendering question must be called by **both** the
  editor and the textgen. There are always exactly two renderers, and a projection that disagrees
  with the generated text is the bug this project has hit most often.

## Tests

`./gradlew :mps-typescript:runTests` for the MPS tests, `npm test` in `mps-typescript/` for the
generated TypeScript. Both must pass. A new concept owes an editor test and a nodes test, and a
`TSTestCase` wherever it can actually be evaluated.
