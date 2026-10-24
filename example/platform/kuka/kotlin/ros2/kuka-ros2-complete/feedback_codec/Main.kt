/** @file Main.kt
 * @brief Exercise the complete original control_msgs/action/FollowJointTrajectory_Feedback through genuine Kotlin/JVM AOT.
 */
import uwvm.kukakukaros2complete.Ros2Control_msgsActionFollowJointTrajectory_Feedback
fun main() {
    val codec = Ros2Control_msgsActionFollowJointTrajectory_Feedback.CODEC
    val bytes = codec.encode(Ros2Control_msgsActionFollowJointTrajectory_Feedback())
    check(codec.encode(codec.decode(bytes)).contentEquals(bytes))
    println("{\"type\":\"control_msgs/action/FollowJointTrajectory_Feedback\",\"bytes\":${bytes.size}}")
}
