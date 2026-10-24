/**
 * @file Main.java
 * @brief Exercise the complete original dsr_msgs2/srv/GetRobotState_Response with genuine JVM AOT.
 */
import org.uwvm.doosan.doosan_ros2_humble_complete.BoundedRecords.Ros2Dsr_msgs2SrvGetRobotState_Response;
import java.util.Arrays;

public final class Main
{
    public static void main(String[] args)
    {
        var bytes = Ros2Dsr_msgs2SrvGetRobotState_Response.CODEC.encode(new Ros2Dsr_msgs2SrvGetRobotState_Response());
        var decoded = Ros2Dsr_msgs2SrvGetRobotState_Response.CODEC.decode(bytes);
        if(!Arrays.equals(bytes, Ros2Dsr_msgs2SrvGetRobotState_Response.CODEC.encode(decoded)))
            throw new IllegalStateException("complete canonical record changed");
        System.out.println("{\"type\":\"dsr_msgs2/srv/GetRobotState_Response\",\"bytes\":" + bytes.length + "}");
    }
}
