package uwvm.trossen.example
import uwvm.ros.Wasi
import uwvm.trossen.Observation
import uwvm.trossen.ros2.ros2_jazzy.Observations
/** @brief Receive and preserve every original JointTrajectoryCommand field.
 * @details Kotlin compiles genuine source to JVM IR and TeaVM WASI AOT. */
object Main {
    /** @brief Execute one bounded observation after explicit alias selection.
     * @param args Exactly one independently granted topic alias. */
    @JvmStatic fun main(args: Array<String>) {
        Wasi.exit(if (args.size == 1) Observation.write(Observations.readJointTrajectoryCommand(args[0], 250)) else 22)
    }
}
