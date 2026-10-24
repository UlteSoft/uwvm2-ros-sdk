/**
 * @file Main.java
 * @brief Exercise the complete original dsr_msgs2/msg/RobotState with genuine JVM AOT.
 */
import org.uwvm.doosan.doosan_ros2_humble_complete.BoundedRecords.Ros2Dsr_msgs2MsgRobotState;
import java.util.Arrays;

public final class Main
{
    public static void main(String[] args)
    {
        var bytes = Ros2Dsr_msgs2MsgRobotState.CODEC.encode(new Ros2Dsr_msgs2MsgRobotState());
        var decoded = Ros2Dsr_msgs2MsgRobotState.CODEC.decode(bytes);
        if(!Arrays.equals(bytes, Ros2Dsr_msgs2MsgRobotState.CODEC.encode(decoded)))
            throw new IllegalStateException("complete canonical record changed");
        System.out.println("{\"type\":\"dsr_msgs2/msg/RobotState\",\"bytes\":" + bytes.length + "}");
    }
}
