package de.q60.mpslab.gradle

import org.gradle.api.provider.Property
import org.gradle.api.tasks.Input
import org.gradle.api.tasks.Optional

/**
 * Generator settings, mirroring the `<generator-settings>`/`<settings>` element of the
 * MPS `<generate>` Ant task. Defaults are applied by [MpsGeneratePlugin].
 */
abstract class MpsGeneratorSettings {
    @get:Input
    abstract val strictMode: Property<Boolean>

    @get:Input
    abstract val parallelThreads: Property<Int>

    @get:Input
    abstract val inplaceTransform: Property<Boolean>

    @get:Input
    abstract val warnWrongChild: Property<Boolean>

    @get:Input
    abstract val createStaticRefs: Property<Boolean>

    @get:Input
    abstract val skipUnmodifiedModels: Property<Boolean>

    /** Target Java version for the generated code (`targetJavaVersion` in the Ant task). */
    @get:Input
    @get:Optional
    abstract val targetJavaVersion: Property<String>
}
