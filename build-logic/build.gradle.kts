plugins {
    `kotlin-dsl`
}

repositories {
    mavenCentral()
}

// The MPS-generation plugin: drives the MPS generator worker from Gradle.
gradlePlugin {
    plugins {
        register("mpsGenerate") {
            id = "de.q60.mpslab.generate"
            implementationClass = "de.q60.mpslab.gradle.MpsGeneratePlugin"
        }
    }
}
