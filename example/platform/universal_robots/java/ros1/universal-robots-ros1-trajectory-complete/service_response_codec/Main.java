/**
 * @file Main.java
 * @brief Exercise the complete original ur_dashboard_msgs/AddToLogResponse with genuine JVM AOT.
 */
import org.uwvm.universal_robots.universal_robots_ros1_trajectory_complete.BoundedRecords.Ros1Ur_dashboard_msgsAddToLogResponse;
import java.util.Arrays;

public final class Main
{
    public static void main(String[] args)
    {
        var bytes = Ros1Ur_dashboard_msgsAddToLogResponse.CODEC.encode(new Ros1Ur_dashboard_msgsAddToLogResponse());
        var decoded = Ros1Ur_dashboard_msgsAddToLogResponse.CODEC.decode(bytes);
        if(!Arrays.equals(bytes, Ros1Ur_dashboard_msgsAddToLogResponse.CODEC.encode(decoded)))
            throw new IllegalStateException("complete canonical record changed");
        System.out.println("{\"type\":\"ur_dashboard_msgs/AddToLogResponse\",\"bytes\":" + bytes.length + "}");
    }
}
