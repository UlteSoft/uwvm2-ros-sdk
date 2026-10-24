/** @file Main.kt
 * @brief Exercise the complete original control_msgs/FollowJointTrajectoryFeedback through genuine Kotlin/JVM AOT.
 */
import uwvm.universalrobotsuniversalrobotsros1trajectorycomplete.Ros1Control_msgsFollowJointTrajectoryFeedback
fun main() {
    val codec = Ros1Control_msgsFollowJointTrajectoryFeedback.CODEC
    val bytes = codec.encode(Ros1Control_msgsFollowJointTrajectoryFeedback())
    check(codec.encode(codec.decode(bytes)).contentEquals(bytes))
    println("{\"type\":\"control_msgs/FollowJointTrajectoryFeedback\",\"bytes\":${bytes.size}}")
}
