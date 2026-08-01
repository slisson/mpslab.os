# mpslab.os

The open-source part of **mpslab** — experimental extensions for [JetBrains MPS](https://www.jetbrains.com/mps/),
published under the Apache License 2.0 (see [LICENSE](LICENSE)).

## Modules

### `mps-typescript` — `de.q60.mps.lang.typescript`

A TypeScript language for MPS, plus a sandbox solution that uses it. What is implemented and
what comes next is tracked in [`mps-typescript/ROADMAP.md`](mps-typescript/ROADMAP.md).

| Module                                | Kind     | Contents                                              |
|---------------------------------------|----------|-------------------------------------------------------|
| `de.q60.mps.lang.typescript`          | language | structure, editor, constraints, behavior, typesystem  |
| `de.q60.mps.lang.typescript.generator`| generator| the templates the language generates through          |
| `de.q60.mps.lang.typescript.sandbox`  | solution | example models written in the language                |

The modules are authored *in* MPS: the `.mps` models are the source, and everything under
`source_gen/`, `classes_gen/` and `source_gen.caches/` is generator output that is rebuilt
by the build and kept out of version control.

## Building

```
./gradlew build
```

That runs the MPS generator headlessly over the modules — generate, textgen and javac in
one pass — so a broken model, a type error or a template that no longer compiles fails the
build. The `mps-typescript/` directory is also a normal MPS project: open it in the IDE and
the same modules load from `.mps/modules.xml`.

### The MPS distribution

The build needs an MPS installation. By default it resolves `com.jetbrains:mps` from the
[itemis Maven repository](https://artifacts.itemis.cloud/repository/maven-mps) and extracts
it once into `build/mps`, shared by every subproject.

| Override                     | Effect                                                     |
|------------------------------|------------------------------------------------------------|
| `-PmpsHome=/path/to/MPS`     | Use an existing installation and skip the download entirely |
| `-PmpsVersion=2026.1`        | Resolve a different release than the one in the catalog     |

The version lives in [`gradle/libs.versions.toml`](gradle/libs.versions.toml), alongside
`mpsJdk` — the Java version the MPS workers run on (21 for MPS 2026.1, whose platform
classes are class-file major 65). Gradle provisions that JDK through the foojay resolver if
it is not already installed.

### Tasks

| Task                          | What it does                                              |
|-------------------------------|------------------------------------------------------------|
| `:mps-typescript:generate`    | Runs the MPS generator over the language and the sandbox   |
| `:mps-typescript:cleanGenerated` | Deletes the generator output from the module directories |
| `build`                       | The lifecycle task; currently just `generate`              |

## Repository layout

```
build-logic/       Gradle plugin driving the MPS workers (generation, headless tests)
gradle/            version catalog + wrapper
mps-typescript/    the MPS project: .mps/ + modules/
```

`build-logic` is an included build rather than a subproject, because Gradle can only
resolve a plugin by id from a build included for plugin resolution. It wraps MPS's own
`jetbrains.mps.tool.common.Script` protocol: a task builds the XML descriptor of libraries,
plugins, macros and modules that an MPS worker reads, then launches the worker in a forked
JVM. `MpsGenerateTask` drives the generator; `MpsLaunchTestsTask` boots a headless
`IdeaEnvironment` and runs MPS test modules, reporting through Gradle's own test
infrastructure (unused so far — there are no test modules yet).

## Contributing

Commits follow [Conventional Commits](https://www.conventionalcommits.org/); every commit in
a pull request is linted against [`.commitlintrc.yml`](.commitlintrc.yml), because the
changelog is generated from those messages. Releases are cut by
[release-please](https://github.com/googleapis/release-please) from the commits on `main`.
