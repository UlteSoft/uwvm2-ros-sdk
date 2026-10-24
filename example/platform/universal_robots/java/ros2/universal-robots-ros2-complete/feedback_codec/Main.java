/**
 * @file Main.java
 * @brief Exercise the complete original ur_msgs/action/FollowJointTrajectoryUntil_Feedback with genuine JVM AOT.
 */
import org.uwvm.universal_robots.universal_robots_ros2_complete.BoundedRecords.Ros2Ur_msgsActionFollowJointTrajectoryUntil_Feedback;
import java.util.Arrays;

public final class Main
{
    public static void main(String[] args)
    {
        var bytes = Ros2Ur_msgsActionFollowJointTrajectoryUntil_Feedback.CODEC.encode(new Ros2Ur_msgsActionFollowJointTrajectoryUntil_Feedback());
        var decoded = Ros2Ur_msgsActionFollowJointTrajectoryUntil_Feedback.CODEC.decode(bytes);
        if(!Arrays.equals(bytes, Ros2Ur_msgsActionFollowJointTrajectoryUntil_Feedback.CODEC.encode(decoded)))
            throw new IllegalStateException("complete canonical record changed");
        System.out.println("{\"type\":\"ur_msgs/action/FollowJointTrajectoryUntil_Feedback\",\"bytes\":" + bytes.length + "}");
    }
}
