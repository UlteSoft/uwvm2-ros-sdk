/** @file Main.kt
 * @brief Execute complete call_trigger through the genuine Kotlin frontend.
 * @details The ordinary shared Java library retains native ROS ownership.
 */
import uwvm.ros.NativeCommand
import kotlin.system.exitProcess
fun main() { exitProcess(NativeCommand.run(3)) }
