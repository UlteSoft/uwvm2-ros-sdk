/** @file Main.kt
 * @brief Exercise the complete original urinterfaces/action/SetMode_Feedback through genuine Kotlin/JVM AOT.
 */
import uwvm.universalrobotsuniversalrobotspolyscopexcomplete.Ros2UrinterfacesActionSetMode_Feedback
fun main() {
    val codec = Ros2UrinterfacesActionSetMode_Feedback.CODEC
    val bytes = codec.encode(Ros2UrinterfacesActionSetMode_Feedback())
    check(codec.encode(codec.decode(bytes)).contentEquals(bytes))
    println("{\"type\":\"urinterfaces/action/SetMode_Feedback\",\"bytes\":${bytes.size}}")
}
