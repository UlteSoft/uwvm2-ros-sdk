/** @file Main.kt
 * @brief Exercise the complete original dsr_msgs2/action/JogH2r_Feedback through genuine Kotlin/JVM AOT.
 */
import uwvm.doosandoosanros2humblecomplete.Ros2Dsr_msgs2ActionJogH2r_Feedback
fun main() {
    val codec = Ros2Dsr_msgs2ActionJogH2r_Feedback.CODEC
    val bytes = codec.encode(Ros2Dsr_msgs2ActionJogH2r_Feedback())
    check(codec.encode(codec.decode(bytes)).contentEquals(bytes))
    println("{\"type\":\"dsr_msgs2/action/JogH2r_Feedback\",\"bytes\":${bytes.size}}")
}
