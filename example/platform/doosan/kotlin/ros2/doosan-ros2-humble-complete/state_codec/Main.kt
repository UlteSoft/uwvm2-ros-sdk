/** @file Main.kt
 * @brief Exercise the complete original dsr_msgs2/msg/RobotState through genuine Kotlin/JVM AOT.
 */
import uwvm.doosandoosanros2humblecomplete.Ros2Dsr_msgs2MsgRobotState
fun main() {
    val codec = Ros2Dsr_msgs2MsgRobotState.CODEC
    val bytes = codec.encode(Ros2Dsr_msgs2MsgRobotState())
    check(codec.encode(codec.decode(bytes)).contentEquals(bytes))
    println("{\"type\":\"dsr_msgs2/msg/RobotState\",\"bytes\":${bytes.size}}")
}
