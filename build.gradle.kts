// Root build for mpslab.os — the components of mpslab that are published under an
// open-source licence (Apache 2.0, see LICENSE).
//
// Unlike the closed-source mpslab, whose modules are plain Java/Kotlin kept in the shape
// MPS would have generated, the content here is authored *in* MPS: `.mps` models that the
// MPS generator turns into `source_gen`/`classes_gen`. Gradle's job is therefore to drive
// the MPS generator headlessly (see `build-logic`) rather than to compile checked-in code.

plugins {
    base
}

allprojects {
    group = "de.q60.mpslab"
    version = providers.gradleProperty("version").orElse("0.1.0-SNAPSHOT").get()

    repositories {
        mavenCentral()
    }
}

// ---------------------------------------------------------------------------
// MPS distribution — resolved once for the whole build
// ---------------------------------------------------------------------------
// Every subproject that runs an MPS worker needs the same distribution. Rather than have
// each of them download and extract its own copy, it is resolved from the itemis Maven
// repository as a zip and extracted a single time into the root build/mps. Subprojects
// point their `mpsHome` at that shared directory and wire the `resolveMps` task below as
// the producer. Override with -PmpsHome=/path/to/MPS to skip the download and use an
// existing install instead, or -PmpsVersion=... to pick a different release.

repositories {
    maven("https://artifacts.itemis.cloud/repository/maven-mps") {
        name = "itemisMps"
        mavenContent { includeGroup("com.jetbrains") }
    }
}

val mpsCoordinates = providers.gradleProperty("mpsVersion")
    .map { "com.jetbrains:mps:$it" }
    .orElse(libs.mps.distribution.map { "${it.module}:${it.versionConstraint.requiredVersion}" })

val mps: Configuration = configurations.create("mps") {
    isCanBeConsumed = false
    isCanBeResolved = true
}

dependencies {
    mps("${mpsCoordinates.get()}@zip")
}

tasks.register<Sync>("resolveMps") {
    onlyIf { !providers.gradleProperty("mpsHome").isPresent }
    from(provider { zipTree(mps.singleFile) })
    into(layout.buildDirectory.dir("mps"))
}
