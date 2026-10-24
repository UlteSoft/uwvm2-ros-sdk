/**
 * @file Main.java
 * @brief Exercise the complete original ur_msgs/msg/IOStates with genuine JVM AOT.
 */
import org.uwvm.universal_robots.universal_robots_ros2_complete.BoundedRecords.Ros2Ur_msgsMsgIOStates;
import java.util.Arrays;

public final class Main
{
    public static void main(String[] args)
    {
        var bytes = Ros2Ur_msgsMsgIOStates.CODEC.encode(new Ros2Ur_msgsMsgIOStates());
        var decoded = Ros2Ur_msgsMsgIOStates.CODEC.decode(bytes);
        if(!Arrays.equals(bytes, Ros2Ur_msgsMsgIOStates.CODEC.encode(decoded)))
            throw new IllegalStateException("complete canonical record changed");
        System.out.println("{\"type\":\"ur_msgs/msg/IOStates\",\"bytes\":" + bytes.length + "}");
    }
}
