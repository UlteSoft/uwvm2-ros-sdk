/** @file Main.kt
 * @brief Exercise the complete original urinterfaces/srv/SetAnalogOutput_Response through genuine Kotlin/JVM AOT.
 */
import uwvm.universalrobotsuniversalrobotspolyscopexcomplete.Ros2UrinterfacesSrvSetAnalogOutput_Response
fun main() {
    val codec = Ros2UrinterfacesSrvSetAnalogOutput_Response.CODEC
    val bytes = codec.encode(Ros2UrinterfacesSrvSetAnalogOutput_Response())
    check(codec.encode(codec.decode(bytes)).contentEquals(bytes))
    println("{\"type\":\"urinterfaces/srv/SetAnalogOutput_Response\",\"bytes\":${bytes.size}}")
}
