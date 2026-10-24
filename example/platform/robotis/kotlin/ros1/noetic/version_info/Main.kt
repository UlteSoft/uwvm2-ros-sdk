package uwvm.robotis.example
import uwvm.ros.Wasi
import uwvm.robotis.Observation
import uwvm.robotis.ros1.noetic.Observations
/** @brief Receive and preserve every original VersionInfo field.
 * @details Kotlin compiles genuine source to JVM IR and TeaVM WASI AOT. */
object Main {
    /** @brief Execute one bounded observation after explicit alias selection.
     * @param args Exactly one independently granted topic alias. */
    @JvmStatic fun main(args: Array<String>) {
        Wasi.exit(if (args.size == 1) Observation.write(Observations.readVersionInfo(args[0], 250)) else 22)
    }
}
