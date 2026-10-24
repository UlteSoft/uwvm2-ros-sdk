/**
 * @file Main.kt
 * @brief Run one explicit YASKAWA ROS 2 observation with checked cleanup.
 * @details The actual source-language application validates argument arity before acquisition, retains
 * the whole typed canonical value and reports independent operation/cleanup statuses. The operator
 * supplies an existing alias and its matching native type binding. A source-backed compiler or VM is
 * required; no grant, replay or controller admission is implicit.
 */
package yaskawa.examples
import uwvm.ros.Client
import uwvm.yaskawa.ros2.Ros2Motoros2_interfacesMsgAlarmInfo
/** @brief Observe the entire motoros2_interfaces/msg/AlarmInfo record using genuine Kotlin AOT.
 * @param args Exactly one explicit native-type subscription alias. */
fun main(args: Array<String>) {
    if (args.size != 1) { kotlin.system.exitProcess(22) }
    val facts = Client.waitSample(args[0], 25248, 250)
    var wire = ByteArray(0)
    if (facts.primary == 0) {
        try { wire = Ros2Motoros2_interfacesMsgAlarmInfo.decode(facts.wire).encode() }
        catch (failure: IllegalArgumentException) { facts.primary = 22 }
    }
    val hex = wire.joinToString("") { byte -> (byte.toInt() and 255).toString(16).padStart(2,'0') }
    println("{\"primary\":${facts.primary},\"cleanup\":${facts.cleanup},\"wire_hex\":\"$hex\"}")
    kotlin.system.exitProcess(minOf(facts.status(),125))
}
