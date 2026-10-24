/** @file Main.kt
 * @brief Exercise the complete original ur_dashboard_msgs/SetModeFeedback through genuine Kotlin/JVM AOT.
 */
import uwvm.universalrobotsuniversalrobotsros1complete.Ros1Ur_dashboard_msgsSetModeFeedback
fun main() {
    val codec = Ros1Ur_dashboard_msgsSetModeFeedback.CODEC
    val bytes = codec.encode(Ros1Ur_dashboard_msgsSetModeFeedback())
    check(codec.encode(codec.decode(bytes)).contentEquals(bytes))
    println("{\"type\":\"ur_dashboard_msgs/SetModeFeedback\",\"bytes\":${bytes.size}}")
}
