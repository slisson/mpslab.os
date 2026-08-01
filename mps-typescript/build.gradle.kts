// de.q60.mps.lang.typescript — a TypeScript language for MPS, plus a sandbox solution.
//
// The modules are authored in MPS, so there is no Java/Kotlin source set here: the build
// runs the MPS generator headlessly over the module descriptors (see the `build-logic`
// included build) and the generator writes `source_gen`/`classes_gen` next to them. Those
// directories are generated output and stay out of version control (see .gitignore).

import de.q60.mpslab.gradle.MpsGenerateTask
import de.q60.mpslab.gradle.MpsLaunchTestsTask

plugins {
    base
    // Gives the build the `javaToolchains` service used to pick the JDK the worker runs on.
    id("jvm-toolchains")
    // build-logic: conventions for the MPS worker tasks (classpath, JVM args, defaults).
    id("de.q60.mpslab.generate")
}

// ---------------------------------------------------------------------------
// The MPS distribution
// ---------------------------------------------------------------------------
// Downloaded and extracted once by the root build into <root>/build/mps, or an existing
// installation passed with -PmpsHome=/path/to/MPS.

val mpsHomeProperty = providers.gradleProperty("mpsHome")

val mpsHomeDir: Provider<Directory> =
    if (mpsHomeProperty.isPresent) layout.dir(mpsHomeProperty.map { file(it) })
    else rootProject.layout.buildDirectory.dir("mps")

val resolveMps = rootProject.tasks.named("resolveMps")

// ---------------------------------------------------------------------------
// The modules
// ---------------------------------------------------------------------------

val languageDir = layout.projectDirectory.dir("modules/de.q60.mps.lang.typescript")
val sandboxDir = layout.projectDirectory.dir("modules/de.q60.mps.lang.typescript.sandbox")
val testsDir = layout.projectDirectory.dir("modules/de.q60.mps.lang.typescript.tests")

val languageModule = languageDir.file("de.q60.mps.lang.typescript.mpl")
val sandboxModule = sandboxDir.file("de.q60.mps.lang.typescript.sandbox.msd")
val testsModule = testsDir.file("de.q60.mps.lang.typescript.tests.msd")

// Everything the generator writes into the source tree. `MpsGenerateTask` models a single
// `generatedOutput` (the one it cleans before each run), but a language module generates
// into three places — itself, its generator, and the sandbox that uses it — so the rest is
// declared and cleaned here.
val generatedDirs = listOf(
    languageDir.dir("source_gen"),
    languageDir.dir("source_gen.caches"),
    languageDir.dir("classes_gen"),
    languageDir.dir("generator/source_gen"),
    languageDir.dir("generator/source_gen.caches"),
    languageDir.dir("generator/classes_gen"),
    sandboxDir.dir("source_gen"),
    sandboxDir.dir("source_gen.caches"),
    sandboxDir.dir("classes_gen"),
    // The tests module generates its JUnit classes into test_gen rather than source_gen —
    // that is what the `tests` module facet means.
    testsDir.dir("test_gen"),
    testsDir.dir("source_gen.caches"),
    testsDir.dir("classes_gen"),
)

val generate = tasks.register<MpsGenerateTask>("generate") {
    group = LifecycleBasePlugin.BUILD_GROUP
    description = "Runs the MPS generator over the TypeScript language, its generator and the sandbox."

    dependsOn(resolveMps)

    mpsHome.set(mpsHomeDir)
    javaLauncher.set(
        javaToolchains.launcherFor {
            languageVersion.set(JavaLanguageVersion.of(libs.versions.mpsJdk.get()))
        }
    )

    // The plugins whose languages the models use. The bootstrap languages (baseLanguage,
    // lang.structure, lang.editor, …) come from `mpsHome/languages` via the script's
    // `loadBootstrapLibraries`, so only the plugin-provided ones are listed.
    plugin("lib/mps-workbench.jar", id = "com.intellij.modules.mps")
    plugin("plugins/java", id = "com.intellij.java")
    plugin("plugins/mps-core", id = "jetbrains.mps.core")
    plugin("plugins/mps-make", id = "jetbrains.mps.ide.make")

    macro("mps.home", mpsHomeDir)

    module(languageModule, sandboxModule, testsModule)

    // The one directory the task itself cleans; the others are handled by the doFirst below.
    generatedOutput.set(languageDir.dir("source_gen"))
    outputs.dirs(generatedDirs)

    doFirst {
        generatedDirs.forEach { it.asFile.deleteRecursively() }
    }
}

// `assemble` builds the modules; there is nothing to package yet.
tasks.named("assemble") {
    dependsOn(generate)
}

// ---------------------------------------------------------------------------
// The tests
// ---------------------------------------------------------------------------
// The editor tests in de.q60.mps.lang.typescript.tests drive a real MPS editor, so they
// need the full IdeaEnvironment the launcher boots — not the lightweight environment the
// generator runs in. They test what only the editor can answer: that typing an operator
// or a parenthesis rebuilds the tree the way the notation says it should.

val runTests = tasks.register<MpsLaunchTestsTask>("runTests") {
    group = LifecycleBasePlugin.VERIFICATION_GROUP
    description = "Runs the MPS editor tests of the TypeScript language."

    dependsOn(generate)

    mpsHome.set(mpsHomeDir)
    javaLauncher.set(
        javaToolchains.launcherFor {
            languageVersion.set(JavaLanguageVersion.of(libs.versions.mpsJdk.get()))
        }
    )

    // The generator's plugins, plus the editor test runtime and the IDE shell the editor
    // itself lives in.
    plugin("lib/mps-workbench.jar", id = "com.intellij.modules.mps")
    plugin("plugins/java", id = "com.intellij.java")
    plugin("plugins/mps-core", id = "jetbrains.mps.core")
    plugin("plugins/mps-make", id = "jetbrains.mps.ide.make")
    plugin("plugins/mps-ide", id = "jetbrains.mps.ide")
    plugin("plugins/mps-testing", id = "jetbrains.mps.testing")

    macro("mps.home", mpsHomeDir)

    // The tests are found in the tests module; the other two are loaded because it
    // depends on them.
    testModule(testsModule, languageModule, sandboxModule)
}

tasks.named("check") {
    dependsOn(runTests)
}

// The generator writes into the source tree rather than into build/, so `clean` has to
// reach outside the build directory to undo it.
val cleanGenerated = tasks.register<Delete>("cleanGenerated") {
    description = "Deletes the MPS generator output from the module directories."
    delete(generatedDirs)
}

tasks.named("clean") {
    dependsOn(cleanGenerated)
}
