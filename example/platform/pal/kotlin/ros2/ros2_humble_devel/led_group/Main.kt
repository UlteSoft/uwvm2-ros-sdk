package uwvm.pal.example
import uwvm.ros.Wasi
import uwvm.pal.Observation
import uwvm.pal.ros2.ros2_humble_devel.Observations
/** @brief Receive and preserve every original LedGroup field.
 * @details Kotlin compiles genuine source to JVM IR and TeaVM WASI AOT. */
object Main {
    /** @brief Execute one bounded observation after explicit alias selection.
     * @param args Exactly one independently granted topic alias. */
    @JvmStatic fun main(args: Array<String>) {
        Wasi.exit(if (args.size == 1) Observation.write(Observations.readLedGroup(args[0], 250)) else 22)
    }
}
