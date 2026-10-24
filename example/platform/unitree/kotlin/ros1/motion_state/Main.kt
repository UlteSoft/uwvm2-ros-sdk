/**
 * @file Main.kt
 * @brief Observe the entire native Unitree motion_state record from genuine Kotlin.
 * @details The Kotlin facade returns complete ordinary Java values. No host JVM
 * is part of this Wasm command; the actual Kotlin bytecode is compiled by TeaVM.
 */
package uwvm.unitree.example

import uwvm.ros.Wasi
import uwvm.unitree.Observation
import uwvm.unitree.kotlin.ros1.Observers

/** @brief Own the standalone WASI application entry point. */
object Main
{
    /**
     * @brief Receive and report every original field using a finite poll budget.
     * @param args Exactly one independently granted deployment alias.
     * @return No value; actual WASI exit preserves operation/cleanup failure.
     * @details The complete result owns its arrays. The normal subscription
     * owner has already closed once before the output operation starts.
     */
    @JvmStatic
    fun main(args: Array<String>)
    {
        if (args.size != 1)
        {
            Wasi.exit(22)
            return
        }
        val result = Observers.readMotionState(args[0], 250)
        Wasi.exit(Observation.write(result))
    }
}
