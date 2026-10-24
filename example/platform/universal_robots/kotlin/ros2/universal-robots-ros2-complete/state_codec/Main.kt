/** @file Main.kt
 * @brief Exercise the complete original ur_msgs/msg/IOStates through genuine Kotlin/JVM AOT.
 */
import uwvm.universalrobotsuniversalrobotsros2complete.Ros2Ur_msgsMsgIOStates
fun main() {
    val codec = Ros2Ur_msgsMsgIOStates.CODEC
    val bytes = codec.encode(Ros2Ur_msgsMsgIOStates())
    check(codec.encode(codec.decode(bytes)).contentEquals(bytes))
    println("{\"type\":\"ur_msgs/msg/IOStates\",\"bytes\":${bytes.size}}")
}
