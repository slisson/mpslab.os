package de.q60.mpslab.gradle

import org.gradle.api.Plugin
import org.gradle.api.Project

/**
 * Registers conventions for the MPS worker tasks. Common defaults (log level, script
 * file) apply to every [AbstractMpsWorkerTask]; the worker classpath and JVM args are
 * set per task type, since generation runs a lightweight MpsEnvironment while the test
 * launcher boots a full IdeaEnvironment.
 *
 * The worker classpath is derived from `mpsHome/lib` (plugins and language modules are
 * loaded by MPS itself from the script, so they are not on the worker's Java classpath —
 * matching MPS's own `MPSClasspathUtil`).
 */
class MpsGeneratePlugin : Plugin<Project> {
    override fun apply(project: Project) {
        val buildDir = project.layout.buildDirectory

        project.tasks.withType(AbstractMpsWorkerTask::class.java).configureEach {
            logLevel.convention("warn")
            scriptFile.convention(buildDir.file("tmp/$name/script.xml"))
        }

        project.tasks.withType(MpsGenerateTask::class.java).configureEach {
            with(generatorSettings) {
                strictMode.convention(true)
                parallelThreads.convention(4)
                inplaceTransform.convention(true)
                warnWrongChild.convention(true)
                createStaticRefs.convention(true)
                skipUnmodifiedModels.convention(false)
            }
            jvmArguments.convention(
                listOf(
                    "-ea",
                    "-Xmx2g",
                    "-Dintellij.platform.load.app.info.from.resources=true",
                    "--add-opens=jdk.compiler/com.sun.tools.javac.api=ALL-UNNAMED",
                )
            )
            workerClasspath.from(mpsLib(this))
        }

        project.tasks.withType(MpsLaunchTestsTask::class.java).configureEach {
            jvmArguments.convention(
                listOf(
                    "-ea",
                    "-Xss2048k",
                    "-Xmx2g",
                    "-XX:+HeapDumpOnOutOfMemoryError",
                    "-Djava.awt.headless=true",
                    "-Dintellij.platform.load.app.info.from.resources=true",
                    "-DNO_FS_ROOTS_ACCESS_CHECK=true",
                )
            )
            // lib/ plus the launcher support library (per LaunchTestTask#calculateClassPath).
            workerClasspath.from(
                mpsHome.map { home ->
                    home.dir("lib").asFileTree.matching {
                        include("**/*.jar")
                        exclude("**/ant.jar", "**/junit-3*.jar", "**/junit-4.11*.jar")
                    }
                },
                mpsHome.map {
                    it.file("plugins/mps-testing/languages/launcher/jetbrains.mps.lang.test.launcher.jar")
                },
            )
            workDir.convention(buildDir.dir("tmp/$name/work"))
            reportsDir.convention(buildDir.dir("test-results/$name"))
            binaryResultsDir.convention(buildDir.dir("test-results/$name/binary"))
            htmlReportDir.convention(buildDir.dir("reports/tests/$name"))
        }
    }

    /** The generator worker's classpath: the jars under `mpsHome/lib` (minus MPS's ant). */
    private fun mpsLib(task: AbstractMpsWorkerTask) =
        task.mpsHome.map { home ->
            home.dir("lib").asFileTree.matching {
                include("**/*.jar")
                exclude("**/ant.jar")
            }
        }
}
