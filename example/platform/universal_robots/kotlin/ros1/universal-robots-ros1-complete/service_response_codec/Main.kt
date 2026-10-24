/** @file Main.kt
 * @brief Exercise the complete original ur_dashboard_msgs/AddToLogResponse through genuine Kotlin/JVM AOT.
 */
import uwvm.universalrobotsuniversalrobotsros1complete.Ros1Ur_dashboard_msgsAddToLogResponse
fun main() {
    val codec = Ros1Ur_dashboard_msgsAddToLogResponse.CODEC
    val bytes = codec.encode(Ros1Ur_dashboard_msgsAddToLogResponse())
    check(codec.encode(codec.decode(bytes)).contentEquals(bytes))
    println("{\"type\":\"ur_dashboard_msgs/AddToLogResponse\",\"bytes\":${bytes.size}}")
}
