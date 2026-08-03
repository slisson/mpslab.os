package de.q60.mpslab.gradle

import org.gradle.api.file.ConfigurableFileCollection
import org.gradle.api.file.DirectoryProperty
import org.gradle.api.file.FileCollection
import org.gradle.api.model.ObjectFactory
import org.gradle.api.tasks.IgnoreEmptyDirectories
import org.gradle.api.tasks.InputFiles
import org.gradle.api.tasks.Internal
import org.gradle.api.tasks.OutputDirectory
import org.gradle.api.tasks.PathSensitive
import org.gradle.api.tasks.PathSensitivity
import org.gradle.api.tasks.testing.TestEventReporterFactory
import org.gradle.process.ExecOperations
import java.io.File
import java.time.Instant
import javax.inject.Inject

/**
 * Runs MPS tests headlessly, mirroring the MPS launchtests Ant task. Builds a script for
 * the worker `jetbrains.mps.lang.test.launcher.LaunchTestWorker`, which boots a headless
 * `IdeaEnvironment`, loads the given modules into a generated MPS project, and runs their
 * JUnit tests (editor/transformation tests included). Writes JUnit XML to [reportsDir].
 *
 * ```
 * tasks.register<MpsLaunchTestsTask>("runTests") {
 *     mpsHome.set(...)
 *     javaLauncher.set(...)
 *     plugin("plugins/mps-testing", id = "jetbrains.mps.testing")
 *     libraryFiles(myPluginJars)
 *     macro("mps.home", mpsHome)
 *     testModule(file("solution/my.tests.msd"))   // + any dependency modules to load
 * }
 * ```
 */
abstract class MpsLaunchTestsTask @Inject constructor(
    execOps: ExecOperations,
    objects: ObjectFactory,
) : AbstractMpsWorkerTask(execOps, objects) {

    /** Modules to load; JUnit tests found in them are run (deps may be listed too). */
    @get:InputFiles
    @get:PathSensitive(PathSensitivity.NAME_ONLY)
    abstract val testModules: ConfigurableFileCollection

    /**
     * What the launcher loads: the [testModules]' directories, **generated output included** —
     * the tests it runs are the classes the generator just wrote, so unlike
     * `MpsGenerateTask.moduleSources` this deliberately keeps `classes_gen` and `test_gen`.
     * Only `source_gen.caches` is left out, being the generator's bookkeeping rather than
     * anything the launcher reads.
     *
     * Without it the descriptors are the only inputs and a regeneration leaves this task
     * UP-TO-DATE, which is the same stale-results failure one step further down the chain.
     */
    @get:InputFiles
    @get:PathSensitive(PathSensitivity.RELATIVE)
    @get:IgnoreEmptyDirectories
    val moduleSources: FileCollection
        get() = moduleContents(testModules, listOf("source_gen.caches"))

    /** Directory for the JUnit XML reports. */
    @get:OutputDirectory
    abstract val reportsDir: DirectoryProperty

    /** Directory for the generated HTML report. */
    @get:OutputDirectory
    abstract val htmlReportDir: DirectoryProperty

    /** Gradle's binary test results, feeding the HTML report and the Tooling API. */
    @get:Internal
    abstract val binaryResultsDir: DirectoryProperty

    /** Scratch dir for the generated project and the MPS config/system dirs. */
    @get:Internal
    abstract val workDir: DirectoryProperty

    @get:Inject
    abstract val testEventReporterFactory: TestEventReporterFactory

    @get:Internal
    override val workerClass = "jetbrains.mps.lang.test.launcher.LaunchTestWorker"

    fun testModule(vararg files: Any) = testModules.from(*files)

    private fun projectDir() = workDir.get().asFile.resolve("project")

    override fun prepare() {
        // config/system/log under workDir are created by ideaPathArgs (computeJvmArgs).
        reportsDir.get().asFile.mkdirs()
        val project = projectDir()
        project.resolve(".mps").mkdirs()
        project.resolve(".mps/modules.xml").writeText(
            xmlDocument("project") {
                attr("version", "4")
                element("component") {
                    attr("name", "MPSProject")
                    element("projectModules") {
                        testModules.files.forEach {
                            element("modulePath") { attr("path", it.absolutePath); attr("folder", "") }
                        }
                    }
                }
            }
        )
    }

    override fun scriptProperties(): List<Pair<String, String>> =
        listOf("launchtests.testReportsDir" to reportsDir.get().asFile.absolutePath)

    override fun buildTodo(todo: XmlElement) = todo.run {
        element("project") { attr("path", projectDir().absolutePath) }
        testModules.files.forEach { element("module") { attr("path", it.absolutePath) } }
    }

    override val ignoreWorkerExitValue get() = true

    override fun afterRun(exitCode: Int) {
        val cases = parseJUnitXml(reportsDir.get().asFile)
        if (cases.isEmpty()) {
            throw org.gradle.api.GradleException(
                "The MPS test launcher produced no test results (exit code $exitCode); see the log above."
            )
        }
        val binDir = binaryResultsDir.get()
        val htmlDir = htmlReportDir.get()
        listOf(binDir, htmlDir).forEach { it.asFile.deleteRecursively(); it.asFile.mkdirs() }

        // Replay the results through Gradle's own test-event infrastructure. Gradle then
        // writes the standard HTML report (and binary results) and surfaces the events
        // over the Tooling API, the same channel IDEs and build scans consume.
        var failedTotal = 0
        testEventReporterFactory.createTestEventReporter(name, binDir, htmlDir).use { root ->
            val start = Instant.now()
            root.started(start)
            cases.groupBy { it.suite }.forEach { (suite, tests) ->
                root.reportTestGroup(suite).use { group ->
                    group.started(start)
                    var groupFailed = false
                    tests.forEach { tc ->
                        group.reportTest(tc.name, tc.name).use { test ->
                            test.started(start)
                            val end = start.plusMillis((tc.time.toDoubleOrNull()?.times(1000))?.toLong() ?: 0L)
                            when (tc.status) {
                                "skipped" -> test.skipped(end)
                                "passed" -> test.succeeded(end)
                                else -> { test.failed(end, tc.detail.ifBlank { tc.status }); groupFailed = true }
                            }
                        }
                    }
                    if (groupFailed) { group.failed(start); failedTotal++ } else group.succeeded(start)
                }
            }
            if (failedTotal > 0) root.failed(start) else root.succeeded(start)
        }
        logger.lifecycle("Test report: ${htmlDir.file("index.html").asFile.toURI()}")
    }

    private data class TestCase(val suite: String, val name: String, val time: String, val status: String, val detail: String)

    private fun parseJUnitXml(dir: File): List<TestCase> {
        val xmls = dir.listFiles { f -> f.isFile && f.name.startsWith("TEST-") && f.name.endsWith(".xml") } ?: return emptyList()
        val dbf = javax.xml.parsers.DocumentBuilderFactory.newInstance()
        val result = mutableListOf<TestCase>()
        xmls.sortedBy { it.name }.forEach { file ->
            val suites = dbf.newDocumentBuilder().parse(file).getElementsByTagName("testsuite")
            for (s in 0 until suites.length) {
                val suite = suites.item(s) as org.w3c.dom.Element
                val suiteName = suite.getAttribute("name").ifBlank { file.nameWithoutExtension }
                val cases = suite.getElementsByTagName("testcase")
                for (t in 0 until cases.length) {
                    val tc = cases.item(t) as org.w3c.dom.Element
                    val fail = (tc.getElementsByTagName("failure").item(0) ?: tc.getElementsByTagName("error").item(0)) as? org.w3c.dom.Element
                    val skip = tc.getElementsByTagName("skipped").item(0) as? org.w3c.dom.Element
                    val status = when { fail != null -> "failed"; skip != null -> "skipped"; else -> "passed" }
                    val detail = fail?.let { listOf(it.getAttribute("message"), it.textContent).filter(String::isNotBlank).joinToString("\n") }.orEmpty()
                    result.add(TestCase(suiteName, tc.getAttribute("name"), tc.getAttribute("time"), status, detail))
                }
            }
        }
        return result
    }

    override fun computeJvmArgs(): List<String> {
        val home = mpsHome.get().asFile
        val work = workDir.get().asFile
        val arch = when (System.getProperty("os.arch")) {
            "aarch64", "arm64" -> "aarch64"
            else -> "amd64"
        }
        return buildList {
            addAll(jvmArguments.get())
            addAll(ideaPathArgs(work))
            add("-Djna.boot.library.path=${home.resolve("lib/jna/$arch").absolutePath}")
            OPEN_PACKAGES.forEach { add("--add-opens=$it=ALL-UNNAMED") }
        }
    }

    private companion object {
        // --add-opens the MPS IdeaEnvironment needs. Kept in step with the list the MPS
        // distribution's own bin/mps64.vmoptions passes, since that is what the platform is
        // tested against; the three com.apple entries and jdk.jdi are extra and warn
        // harmlessly where the package does not exist ("package com.apple.laf not in
        // java.desktop"). A package missing here does not fail at startup — it fails
        // whenever the one class that needs it is first initialised, which for
        // jdk.internal.ref was a corrupt index four commits into a branch.
        val OPEN_PACKAGES = listOf(
            "java.base/java.io", "java.base/java.lang", "java.base/java.lang.reflect",
            "java.base/java.net", "java.base/java.nio", "java.base/java.nio.charset",
            "java.base/java.text", "java.base/java.time", "java.base/java.util",
            "java.base/java.util.concurrent", "java.base/java.util.concurrent.atomic",
            "java.base/jdk.internal.ref", "java.base/jdk.internal.vm",
            "java.base/sun.nio.ch", "java.base/sun.nio.fs",
            "java.base/sun.security.ssl", "java.base/sun.security.util",
            "java.desktop/com.apple.eawt", "java.desktop/com.apple.eawt.event",
            "java.desktop/com.apple.laf", "java.desktop/com.sun.java.swing.plaf.gtk",
            "java.desktop/sun.awt.X11", "java.desktop/java.awt",
            "java.desktop/java.awt.dnd.peer", "java.desktop/java.awt.event",
            "java.desktop/java.awt.image", "java.desktop/java.awt.peer",
            "java.desktop/javax.swing", "java.desktop/javax.swing.plaf.basic",
            "java.desktop/javax.swing.text", "java.desktop/javax.swing.text.html",
            "java.desktop/javax.swing.text.html.parser",
            "java.desktop/sun.awt.datatransfer", "java.desktop/sun.awt.image",
            "java.desktop/sun.awt.windows", "java.desktop/sun.awt", "java.desktop/sun.font",
            "java.desktop/sun.java2d", "java.desktop/sun.swing",
            "java.management/sun.management", "jdk.attach/sun.tools.attach",
            "jdk.compiler/com.sun.tools.javac.api", "jdk.internal.jvmstat/sun.jvmstat.monitor",
            "jdk.jdi/com.sun.tools.jdi",
        )
    }
}
