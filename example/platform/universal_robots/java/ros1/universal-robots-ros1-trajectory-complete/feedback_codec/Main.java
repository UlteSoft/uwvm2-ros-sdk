/**
 * @file Main.java
 * @brief Exercise the complete original control_msgs/FollowJointTrajectoryFeedback with genuine JVM AOT.
 */
import org.uwvm.universal_robots.universal_robots_ros1_trajectory_complete.BoundedRecords.Ros1Control_msgsFollowJointTrajectoryFeedback;
import java.util.Arrays;

public final class Main
{
    public static void main(String[] args)
    {
        var bytes = Ros1Control_msgsFollowJointTrajectoryFeedback.CODEC.encode(new Ros1Control_msgsFollowJointTrajectoryFeedback());
        var decoded = Ros1Control_msgsFollowJointTrajectoryFeedback.CODEC.decode(bytes);
        if(!Arrays.equals(bytes, Ros1Control_msgsFollowJointTrajectoryFeedback.CODEC.encode(decoded)))
            throw new IllegalStateException("complete canonical record changed");
        System.out.println("{\"type\":\"control_msgs/FollowJointTrajectoryFeedback\",\"bytes\":" + bytes.length + "}");
    }
}
