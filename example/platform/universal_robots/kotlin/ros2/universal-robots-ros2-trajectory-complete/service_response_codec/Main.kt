/** @file Main.kt
 * @brief Exercise the complete original ur_dashboard_msgs/srv/AddToLog_Response through genuine Kotlin/JVM AOT.
 */
import uwvm.universalrobotsuniversalrobotsros2trajectorycomplete.Ros2Ur_dashboard_msgsSrvAddToLog_Response
fun main() {
    val codec = Ros2Ur_dashboard_msgsSrvAddToLog_Response.CODEC
    val bytes = codec.encode(Ros2Ur_dashboard_msgsSrvAddToLog_Response())
    check(codec.encode(codec.decode(bytes)).contentEquals(bytes))
    println("{\"type\":\"ur_dashboard_msgs/srv/AddToLog_Response\",\"bytes\":${bytes.size}}")
}
