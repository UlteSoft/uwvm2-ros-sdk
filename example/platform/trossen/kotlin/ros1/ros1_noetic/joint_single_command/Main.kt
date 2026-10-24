package uwvm.trossen.example
import uwvm.ros.Wasi
import uwvm.trossen.Observation
import uwvm.trossen.ros1.ros1_noetic.Observations
/** @brief Receive and preserve every original JointSingleCommand field.
 * @details Kotlin compiles genuine source to JVM IR and TeaVM WASI AOT. */
object Main {
    /** @brief Execute one bounded observation after explicit alias selection.
     * @param args Exactly one independently granted topic alias. */
    @JvmStatic fun main(args: Array<String>) {
        Wasi.exit(if (args.size == 1) Observation.write(Observations.readJointSingleCommand(args[0], 250)) else 22)
    }
}
