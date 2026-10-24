/** @file Main.kt
 * @brief Exercise the complete original dsr_msgs/GetRobotStateResponse through genuine Kotlin/JVM AOT.
 */
import uwvm.doosandoosanros1noeticdevelcomplete.Ros1Dsr_msgsGetRobotStateResponse
fun main() {
    val codec = Ros1Dsr_msgsGetRobotStateResponse.CODEC
    val bytes = codec.encode(Ros1Dsr_msgsGetRobotStateResponse())
    check(codec.encode(codec.decode(bytes)).contentEquals(bytes))
    println("{\"type\":\"dsr_msgs/GetRobotStateResponse\",\"bytes\":${bytes.size}}")
}
