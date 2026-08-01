package de.q60.mpslab.gradle

import org.gradle.api.Action
import org.gradle.api.file.ConfigurableFileCollection
import org.gradle.api.file.DirectoryProperty
import org.gradle.api.tasks.InputFiles
import org.gradle.api.tasks.Internal
import org.gradle.api.tasks.Nested
import org.gradle.api.tasks.OutputDirectory
import org.gradle.api.tasks.PathSensitive
import org.gradle.api.tasks.PathSensitivity
import org.gradle.process.ExecOperations
import java.io.File
import javax.inject.Inject

/**
 * Runs the MPS generator on a set of modules, mirroring the MPS generate Ant task.
 *
 * ```
 * tasks.register<MpsGenerateTask>("generate") {
 *     mpsHome.set(...)
 *     javaLauncher.set(...)
 *     settings { strictMode.set(true); targetJavaVersion.set("11") }
 *     plugin("plugins/mps-core", id = "jetbrains.mps.core")   // relative to mpsHome
 *     library("languages/workbench/jetbrains.mps.ide.jar")    // relative to mpsHome
 *     libraryFiles(myPluginJars)                              // deployed module jars
 *     macro("mps.home", mpsHome)
 *     module(file("solution/my.solution.msd"))
 *     generatedOutput.set(file("solution/source_gen"))
 * }
 * ```
 */
abstract class MpsGenerateTask @Inject constructor(
    execOps: ExecOperations,
) : AbstractMpsWorkerTask(execOps) {

    @get:Nested
    abstract val generatorSettings: MpsGeneratorSettings

    /** Module descriptor files (`.mpl`/`.msd`) to generate, one chunk. */
    @get:InputFiles
    @get:PathSensitive(PathSensitivity.NAME_ONLY)
    abstract val modules: ConfigurableFileCollection

    /** Where the modules' generated `source_gen` lands; cleaned before each run. */
    @get:OutputDirectory
    abstract val generatedOutput: DirectoryProperty

    @get:Internal
    override val workerClass = "jetbrains.mps.tool.builder.make.GeneratorWorker"

    fun settings(action: Action<MpsGeneratorSettings>) = action.execute(generatorSettings)

    fun module(vararg files: Any) = modules.from(*files)

    override fun prepare() {
        val outDir = generatedOutput.get().asFile
        outDir.deleteRecursively()
        File(outDir.parentFile, "source_gen.caches").deleteRecursively()
    }

    override fun scriptProperties(): List<Pair<String, String>> {
        val s = generatorSettings
        val threads = s.parallelThreads.get()
        return buildList {
            add("STRICT_MODE" to s.strictMode.get().toString())
            add("PARALLEL_MODE" to (threads > 1).toString())
            add("parallel.threads" to threads.toString())
            add("in-place" to s.inplaceTransform.get().toString())
            add("noWarnings" to (!s.warnWrongChild.get()).toString())
            add("use-static-refs" to s.createStaticRefs.get().toString())
            add("skip-unmodified-models" to s.skipUnmodifiedModels.get().toString())
            if (s.targetJavaVersion.isPresent) add("target" to s.targetJavaVersion.get())
        }
    }

    override fun buildTodo(todo: XmlElement) = todo.run {
        element("chunk") {
            attr("bootstrap", "false")
            modules.files.forEach { element("module") { attr("path", it.absolutePath) } }
        }
    }
}
