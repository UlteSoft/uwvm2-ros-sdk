package uwvm.hello_robot.example
import uwvm.ros.Wasi
import uwvm.hello_robot.Observation
import uwvm.hello_robot.ros2.mobile_fjt_humble.Observations
/** @brief Receive and preserve every original JointTolerance field.
 * @details Kotlin compiles genuine source to JVM IR and TeaVM WASI AOT. */
object Main {
    /** @brief Execute one bounded observation after explicit alias selection.
     * @param args Exactly one independently granted topic alias. */
    @JvmStatic fun main(args: Array<String>) {
        Wasi.exit(if (args.size == 1) Observation.write(Observations.readJointTolerance(args[0], 250)) else 22)
    }
}
