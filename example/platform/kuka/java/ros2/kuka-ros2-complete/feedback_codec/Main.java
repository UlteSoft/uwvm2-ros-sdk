/**
 * @file Main.java
 * @brief Exercise the complete original control_msgs/action/FollowJointTrajectory_Feedback with genuine JVM AOT.
 */
import org.uwvm.kuka.kuka_ros2_complete.BoundedRecords.Ros2Control_msgsActionFollowJointTrajectory_Feedback;
import java.util.Arrays;

public final class Main
{
    public static void main(String[] args)
    {
        var bytes = Ros2Control_msgsActionFollowJointTrajectory_Feedback.CODEC.encode(new Ros2Control_msgsActionFollowJointTrajectory_Feedback());
        var decoded = Ros2Control_msgsActionFollowJointTrajectory_Feedback.CODEC.decode(bytes);
        if(!Arrays.equals(bytes, Ros2Control_msgsActionFollowJointTrajectory_Feedback.CODEC.encode(decoded)))
            throw new IllegalStateException("complete canonical record changed");
        System.out.println("{\"type\":\"control_msgs/action/FollowJointTrajectory_Feedback\",\"bytes\":" + bytes.length + "}");
    }
}
