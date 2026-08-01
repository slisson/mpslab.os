// mpslab.os — the open-source part of mpslab.
//
// `build-logic` is an included build rather than a subproject: Gradle can only resolve a
// plugin by id from a build that is included for plugin resolution, and the MPS worker
// tasks (generation, headless tests) are applied to subprojects by id.

pluginManagement {
    includeBuild("build-logic")

    repositories {
        gradlePluginPortal()
        mavenCentral()
    }
}

plugins {
    // The MPS workers run on the JDK the MPS distribution targets (21 for 2026.1). That
    // JDK is not necessarily the one Gradle itself runs on, so let Gradle provision it.
    id("org.gradle.toolchains.foojay-resolver-convention") version "1.0.0"
}

rootProject.name = "mpslab.os"

// The de.q60.mps.lang.typescript language and its sandbox, built by the MPS generator.
include(":mps-typescript")
