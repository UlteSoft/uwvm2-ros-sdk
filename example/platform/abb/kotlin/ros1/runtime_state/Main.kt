/**
 * @file Main.kt
 * @brief Run one explicit ABB ROS 1 observation with checked cleanup.
 * @details The actual source-language application validates argument arity before acquisition, retains
 * the whole typed canonical value and reports independent operation/cleanup statuses. The operator
 * supplies an existing alias and its matching native type binding. A source-backed compiler or VM is
 * required; no grant, replay or controller admission is implicit.
 */
package abb.examples
import uwvm.ros.Client
import uwvm.ros.Wasi
import uwvm.abb.ros1.Ros1Abb_rapid_sm_addin_msgsRuntimeState
/** @brief Observe the entire abb_rapid_sm_addin_msgs/RuntimeState record using genuine Kotlin AOT.
 * @param args Exactly one explicit native-type subscription alias. */
fun main(args: Array<String>) {
    if (args.size != 1) { Wasi.exit(22); return }
    val facts = Client.waitSample(args[0], 8372, 250)
    var wire = ByteArray(0)
    if (facts.primary == 0) {
        try { wire = Ros1Abb_rapid_sm_addin_msgsRuntimeState.encode(Ros1Abb_rapid_sm_addin_msgsRuntimeState.decode(facts.wire)) }
        catch (failure: IllegalArgumentException) { facts.primary = 22 }
    }
    val hex = wire.joinToString("") { byte -> (byte.toInt() and 255).toString(16).padStart(2,'0') }
    println("{\"primary\":${facts.primary},\"cleanup\":${facts.cleanup},\"wire_hex\":\"$hex\"}")
    var status = facts.status()
    System.out.flush()
    if (status == 0 && System.out.checkError()) status = 5
    Wasi.exit(if (Integer.compareUnsigned(status, 125) > 0) 125 else status)
}
