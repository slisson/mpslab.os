package de.q60.mpslab.gradle

import org.gradle.api.DefaultTask
import org.gradle.api.file.ConfigurableFileCollection
import org.gradle.api.file.Directory
import org.gradle.api.file.DirectoryProperty
import org.gradle.api.file.RegularFileProperty
import org.gradle.api.provider.ListProperty
import org.gradle.api.provider.MapProperty
import org.gradle.api.provider.Property
import org.gradle.api.provider.Provider
import org.gradle.api.tasks.Classpath
import org.gradle.api.tasks.Input
import org.gradle.api.tasks.InputDirectory
import org.gradle.api.tasks.Internal
import org.gradle.api.tasks.Nested
import org.gradle.api.tasks.TaskAction
import org.gradle.jvm.toolchain.JavaLauncher
import org.gradle.process.ExecOperations
import java.io.File
import javax.inject.Inject

/**
 * Base for tasks that run an MPS "worker" (a subclass of MpsLoadTask in MPS terms). A
 * worker is driven by a `jetbrains.mps.tool.common.Script` — an XML descriptor of the
 * libraries, plugins, macros, properties and modules to load — which this task builds
 * and hands to the worker main class, launched via a JDK-21+ [javaLauncher].
 *
 * Subclasses supply the worker class, the generator-style `properties`, and the body of
 * the `todo` element (chunks for generation, modules/project for a test launch).
 */
abstract class AbstractMpsWorkerTask @Inject constructor(
    private val execOps: ExecOperations,
) : DefaultTask() {

    /** The MPS distribution. Relative [library]/[plugin] paths resolve against it. */
    @get:InputDirectory
    abstract val mpsHome: DirectoryProperty

    @get:Input
    abstract val pluginSpecs: ListProperty<MpsPluginSpec>

    /** Library module jars given as paths relative to [mpsHome]. */
    @get:Input
    abstract val relativeLibraries: ListProperty<String>

    /** Library module jars given as absolute files (e.g. the plugin under test). */
    @get:Classpath
    abstract val libraries: ConfigurableFileCollection

    @get:Input
    abstract val macros: MapProperty<String, String>

    /** MPS log level: off/error/warn/info/debug/all. */
    @get:Input
    abstract val logLevel: Property<String>

    @get:Input
    abstract val jvmArguments: ListProperty<String>

    @get:Nested
    abstract val javaLauncher: Property<JavaLauncher>

    /** The worker's own JVM classpath (defaults to the jars under mpsHome/lib). */
    @get:Classpath
    abstract val workerClasspath: ConfigurableFileCollection

    @get:Internal
    abstract val scriptFile: RegularFileProperty

    // --- DSL --------------------------------------------------------------

    fun plugin(path: String, id: String) = pluginSpecs.add(MpsPluginSpec(path, id))

    fun library(vararg relativePaths: String) = relativeLibraries.addAll(relativePaths.toList())

    fun libraryFiles(vararg files: Any) = libraries.from(*files)

    fun macro(name: String, value: String) = macros.put(name, value)

    fun macro(name: String, dir: Provider<Directory>) =
        macros.put(name, dir.map { it.asFile.absolutePath })

    // --- Extension points -------------------------------------------------

    /** Fully-qualified worker main class, e.g. the generator or test-launch worker. */
    @get:Internal
    protected abstract val workerClass: String

    /** Runs before the script is built; subclasses clean output or prepare dirs here. */
    protected open fun prepare() {}

    /** Generator-style `<property>` entries for the script. */
    protected abstract fun scriptProperties(): List<Pair<String, String>>

    /** Appends the children of the `<todo>` element (chunks, or modules + project). */
    protected abstract fun buildTodo(todo: XmlElement)

    /** JVM args for the forked worker; subclasses may append mandatory ones. */
    protected open fun computeJvmArgs(): List<String> = jvmArguments.get() + ideaPathArgs(temporaryDir)

    /**
     * Points MPS's config/system/log dirs at a scratch location instead of their default
     * (which lands under [mpsHome]). Without this the worker writes `system/log/idea.log`
     * inside its own `@InputDirectory`, so the task is never up-to-date on the next run.
     */
    protected fun ideaPathArgs(work: File): List<String> {
        val config = File(work, "config").apply { mkdirs() }
        val system = File(work, "system").apply { mkdirs() }
        val log = File(work, "log").apply { mkdirs() }
        return listOf(
            "-Didea.config.path=${config.absolutePath}",
            "-Didea.system.path=${system.absolutePath}",
            "-Didea.log.path=${log.absolutePath}",
        )
    }

    /** Runs after the worker exits (e.g. to report results). Receives the exit code. */
    protected open fun afterRun(exitCode: Int) {}

    /** Whether a non-zero worker exit is tolerated (subclasses report failures instead). */
    @get:Internal
    protected open val ignoreWorkerExitValue: Boolean get() = false

    // --- Execution --------------------------------------------------------

    @TaskAction
    fun run() {
        prepare()
        val home = mpsHome.get().asFile
        val libraryPaths = buildList {
            relativeLibraries.get().forEach { add(home.resolve(it).absolutePath) }
            libraries.files.forEach { add(it.absolutePath) }
        }
        val plugins = pluginSpecs.get().map {
            val p = File(it.path)
            MpsPluginSpec(if (p.isAbsolute) p.absolutePath else home.resolve(it.path).absolutePath, it.id)
        }
        val xml = buildScriptXml(
            worker = workerClass,
            logLevel = logLevel.get().uppercase(),
            libraryJars = libraryPaths,
            macros = macros.get(),
            plugins = plugins,
            properties = scriptProperties(),
            buildTodo = ::buildTodo,
        )
        val script = scriptFile.get().asFile
        script.parentFile.mkdirs()
        script.writeText(xml)

        val result = execOps.javaexec {
            executable = javaLauncher.get().executablePath.asFile.absolutePath
            classpath = workerClasspath
            mainClass.set(workerClass)
            jvmArgs = computeJvmArgs()
            args = listOf(script.absolutePath)
            isIgnoreExitValue = ignoreWorkerExitValue
        }
        afterRun(result.exitValue)
    }
}

/**
 * Emits the `jetbrains.mps.tool.common.Script` dump format (the XML read by
 * `Script.fromDumpInFile`): a `startup` element (task settings, libraries, macros,
 * plugins, properties) plus a caller-supplied `todo` body.
 */
internal fun buildScriptXml(
    worker: String,
    logLevel: String,
    libraryJars: List<String>,
    macros: Map<String, String>,
    plugins: List<MpsPluginSpec>,
    properties: List<Pair<String, String>>,
    buildTodo: (XmlElement) -> Unit,
): String = xmlDocument("script") {
    element("startup") {
        element("taskdata") {
            attr("worker", worker)
            attr("failOnError", "true")
            attr("logLevel", logLevel)
            attr("loadBootstrapLibraries", "true")
            attr("pluginAutoDiscoveryMode", "false")
            attr("compatibilityMode", "true")
        }
        element("libraries") {
            libraryJars.forEach { element("jar") { attr("path", it) } }
        }
        macros.forEach { (n, v) -> element("macro") { attr("name", n); attr("value", v) } }
        plugins.forEach { element("plugin") { attr("path", it.path); attr("id", it.id) } }
        properties.forEach { (n, v) -> element("property") { attr("name", n); attr("value", v) } }
    }
    element("todo") { buildTodo(this) }
}
