/**
 * @file Main.java
 * @brief Exercise the complete original dsr_msgs/GetRobotStateResponse with genuine JVM AOT.
 */
import org.uwvm.doosan.doosan_ros1_doosan_robotics_patch_1_complete.BoundedRecords.Ros1Dsr_msgsGetRobotStateResponse;
import java.util.Arrays;

public final class Main
{
    public static void main(String[] args)
    {
        var bytes = Ros1Dsr_msgsGetRobotStateResponse.CODEC.encode(new Ros1Dsr_msgsGetRobotStateResponse());
        var decoded = Ros1Dsr_msgsGetRobotStateResponse.CODEC.decode(bytes);
        if(!Arrays.equals(bytes, Ros1Dsr_msgsGetRobotStateResponse.CODEC.encode(decoded)))
            throw new IllegalStateException("complete canonical record changed");
        System.out.println("{\"type\":\"dsr_msgs/GetRobotStateResponse\",\"bytes\":" + bytes.length + "}");
    }
}
