/** @file Main.kt
 * @brief Exercise the complete original dsr_msgs/AlterMotionStream through genuine Kotlin/JVM AOT.
 */
import uwvm.doosandoosanros1noeticdevelcomplete.Ros1Dsr_msgsAlterMotionStream
fun main() {
    val codec = Ros1Dsr_msgsAlterMotionStream.CODEC
    val bytes = codec.encode(Ros1Dsr_msgsAlterMotionStream())
    check(codec.encode(codec.decode(bytes)).contentEquals(bytes))
    println("{\"type\":\"dsr_msgs/AlterMotionStream\",\"bytes\":${bytes.size}}")
}
