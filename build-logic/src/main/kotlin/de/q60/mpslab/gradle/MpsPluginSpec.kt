package de.q60.mpslab.gradle

import java.io.Serializable

/** An IntelliJ/MPS plugin to load into the generator, mirroring `<plugin path=".." id="..">`. */
data class MpsPluginSpec(val path: String, val id: String) : Serializable
