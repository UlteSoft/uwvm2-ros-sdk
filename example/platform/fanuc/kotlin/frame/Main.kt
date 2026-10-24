/**
 * @file Main.kt
 * @brief Run one explicit FANUC ROS 2 observation with checked cleanup.
 * @details The actual source-language application validates argument arity before acquisition, retains
 * the whole typed canonical value and reports independent operation/cleanup statuses. The operator
 * supplies an existing alias and its matching native type binding. A source-backed compiler or VM is
 * required; no grant, replay or controller admission is implicit.
 */
package fanuc.examples
import uwvm.ros.Client
import uwvm.fanuc.ros2.Ros2Fanuc_msgsMsgFrame
/** @brief Observe the entire fanuc_msgs/msg/Frame record using genuine Kotlin AOT.
 * @param args Exactly one explicit native-type subscription alias. */
fun main(args: Array<String>) {
    if (args.size != 1) { kotlin.system.exitProcess(22) }
    val facts = Client.waitSample(args[0], 24, 250)
    var wire = ByteArray(0)
    if (facts.primary == 0) {
        try { wire = Ros2Fanuc_msgsMsgFrame.decode(facts.wire).encode() }
        catch (failure: IllegalArgumentException) { facts.primary = 22 }
    }
    val hex = wire.joinToString("") { byte -> (byte.toInt() and 255).toString(16).padStart(2,'0') }
    println("{\"primary\":${facts.primary},\"cleanup\":${facts.cleanup},\"wire_hex\":\"$hex\"}")
    kotlin.system.exitProcess(minOf(facts.status(),125))
}
