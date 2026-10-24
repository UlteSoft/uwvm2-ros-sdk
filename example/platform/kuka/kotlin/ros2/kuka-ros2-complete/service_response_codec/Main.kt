/** @file Main.kt
 * @brief Exercise the complete original lifecycle_msgs/srv/ChangeState_Response through genuine Kotlin/JVM AOT.
 */
import uwvm.kukakukaros2complete.Ros2Lifecycle_msgsSrvChangeState_Response
fun main() {
    val codec = Ros2Lifecycle_msgsSrvChangeState_Response.CODEC
    val bytes = codec.encode(Ros2Lifecycle_msgsSrvChangeState_Response())
    check(codec.encode(codec.decode(bytes)).contentEquals(bytes))
    println("{\"type\":\"lifecycle_msgs/srv/ChangeState_Response\",\"bytes\":${bytes.size}}")
}
