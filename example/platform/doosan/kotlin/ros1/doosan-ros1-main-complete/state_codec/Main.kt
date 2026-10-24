/** @file Main.kt
 * @brief Exercise the complete original dsr_msgs/RobotState through genuine Kotlin/JVM AOT.
 */
import uwvm.doosandoosanros1maincomplete.Ros1Dsr_msgsRobotState
fun main() {
    val codec = Ros1Dsr_msgsRobotState.CODEC
    val bytes = codec.encode(Ros1Dsr_msgsRobotState())
    check(codec.encode(codec.decode(bytes)).contentEquals(bytes))
    println("{\"type\":\"dsr_msgs/RobotState\",\"bytes\":${bytes.size}}")
}
