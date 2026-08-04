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
