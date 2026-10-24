/**
 * @file Main.kt
 * @brief Run one explicit ABB ROS 2 observation with checked cleanup.
 * @details The actual source-language application validates argument arity before acquisition, retains
 * the whole typed canonical value and reports independent operation/cleanup statuses. The operator
 * supplies an existing alias and its matching native type binding. A source-backed compiler or VM is
 * required; no grant, replay or controller admission is implicit.
 */
package uwvm.abb.example

import uwvm.abb.CommandOutput
import uwvm.abb.kotlin.Observations
import uwvm.ros.Wasi

/**
 * @brief Execute the complete ABB system_state observation as a genuine Kotlin WASI command.
 * @details Xmake compiles this Kotlin source to JVM IR and TeaVM AOT-lowers
 * the reachable program to the sole .wasm product. Run time requires no JVM.
 */
object Main {
    /**
     * @brief Invoke the typed Kotlin facade and retain the original operation status.
     * @param args Borrowed arguments: ALIAS.
     * @return No value; the actual WASI proc_exit terminates this guest command.
     * @details Wrong arity exits 22 before acquisition. All returned values are
     * guest-owned and every acquired capability receives exactly one close.
     */
    @JvmStatic
    fun main(args: Array<String>) {
        if (args.size != 1) {
            Wasi.exit(22)
            return
        }
        val report = Observations.systemState(args[0], 250)
        Wasi.exit(CommandOutput.write(report))
    }
}

