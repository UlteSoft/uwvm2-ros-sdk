/**
 * @file Main.java
 * @brief Exercise the complete original urinterfaces/msg/RobotMode with genuine JVM AOT.
 */
import org.uwvm.universal_robots.universal_robots_polyscopex_complete.BoundedRecords.Ros2UrinterfacesMsgRobotMode;
import java.util.Arrays;

public final class Main
{
    public static void main(String[] args)
    {
        var bytes = Ros2UrinterfacesMsgRobotMode.CODEC.encode(new Ros2UrinterfacesMsgRobotMode());
        var decoded = Ros2UrinterfacesMsgRobotMode.CODEC.decode(bytes);
        if(!Arrays.equals(bytes, Ros2UrinterfacesMsgRobotMode.CODEC.encode(decoded)))
            throw new IllegalStateException("complete canonical record changed");
        System.out.println("{\"type\":\"urinterfaces/msg/RobotMode\",\"bytes\":" + bytes.length + "}");
    }
}
