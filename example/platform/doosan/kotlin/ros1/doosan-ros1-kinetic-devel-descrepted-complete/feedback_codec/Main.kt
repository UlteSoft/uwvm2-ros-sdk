/** @file Main.kt
 * @brief Exercise the complete original dsr_msgs/LogAlarm through genuine Kotlin/JVM AOT.
 */
import uwvm.doosandoosanros1kineticdeveldescreptedcomplete.Ros1Dsr_msgsLogAlarm
fun main() {
    val codec = Ros1Dsr_msgsLogAlarm.CODEC
    val bytes = codec.encode(Ros1Dsr_msgsLogAlarm())
    check(codec.encode(codec.decode(bytes)).contentEquals(bytes))
    println("{\"type\":\"dsr_msgs/LogAlarm\",\"bytes\":${bytes.size}}")
}
