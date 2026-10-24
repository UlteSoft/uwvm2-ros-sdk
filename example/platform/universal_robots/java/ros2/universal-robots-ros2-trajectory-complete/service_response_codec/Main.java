/**
 * @file Main.java
 * @brief Exercise the complete original ur_dashboard_msgs/srv/AddToLog_Response with genuine JVM AOT.
 */
import org.uwvm.universal_robots.universal_robots_ros2_trajectory_complete.BoundedRecords.Ros2Ur_dashboard_msgsSrvAddToLog_Response;
import java.util.Arrays;

public final class Main
{
    public static void main(String[] args)
    {
        var bytes = Ros2Ur_dashboard_msgsSrvAddToLog_Response.CODEC.encode(new Ros2Ur_dashboard_msgsSrvAddToLog_Response());
        var decoded = Ros2Ur_dashboard_msgsSrvAddToLog_Response.CODEC.decode(bytes);
        if(!Arrays.equals(bytes, Ros2Ur_dashboard_msgsSrvAddToLog_Response.CODEC.encode(decoded)))
            throw new IllegalStateException("complete canonical record changed");
        System.out.println("{\"type\":\"ur_dashboard_msgs/srv/AddToLog_Response\",\"bytes\":" + bytes.length + "}");
    }
}
