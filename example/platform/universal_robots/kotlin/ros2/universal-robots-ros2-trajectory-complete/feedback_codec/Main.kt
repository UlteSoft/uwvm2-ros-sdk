/** @file Main.kt
 * @brief Exercise the complete original ur_msgs/action/FollowJointTrajectoryUntil_Feedback through genuine Kotlin/JVM AOT.
 */
import uwvm.universalrobotsuniversalrobotsros2trajectorycomplete.Ros2Ur_msgsActionFollowJointTrajectoryUntil_Feedback
fun main() {
    val codec = Ros2Ur_msgsActionFollowJointTrajectoryUntil_Feedback.CODEC
    val bytes = codec.encode(Ros2Ur_msgsActionFollowJointTrajectoryUntil_Feedback())
    check(codec.encode(codec.decode(bytes)).contentEquals(bytes))
    println("{\"type\":\"ur_msgs/action/FollowJointTrajectoryUntil_Feedback\",\"bytes\":${bytes.size}}")
}
