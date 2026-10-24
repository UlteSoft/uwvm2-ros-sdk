/** @file Main.kt
 * @brief Exercise the complete original urinterfaces/msg/RobotMode through genuine Kotlin/JVM AOT.
 */
import uwvm.universalrobotsuniversalrobotspolyscopexcomplete.Ros2UrinterfacesMsgRobotMode
fun main() {
    val codec = Ros2UrinterfacesMsgRobotMode.CODEC
    val bytes = codec.encode(Ros2UrinterfacesMsgRobotMode())
    check(codec.encode(codec.decode(bytes)).contentEquals(bytes))
    println("{\"type\":\"urinterfaces/msg/RobotMode\",\"bytes\":${bytes.size}}")
}
