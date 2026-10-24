/** @file Main.kt
 * @brief Exercise the complete original dsr_msgs2/srv/GetRobotState_Response through genuine Kotlin/JVM AOT.
 */
import uwvm.doosandoosanros2jazzycomplete.Ros2Dsr_msgs2SrvGetRobotState_Response
fun main() {
    val codec = Ros2Dsr_msgs2SrvGetRobotState_Response.CODEC
    val bytes = codec.encode(Ros2Dsr_msgs2SrvGetRobotState_Response())
    check(codec.encode(codec.decode(bytes)).contentEquals(bytes))
    println("{\"type\":\"dsr_msgs2/srv/GetRobotState_Response\",\"bytes\":${bytes.size}}")
}
