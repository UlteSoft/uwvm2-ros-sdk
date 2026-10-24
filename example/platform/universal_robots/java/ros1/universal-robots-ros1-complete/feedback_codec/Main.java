/**
 * @file Main.java
 * @brief Exercise the complete original ur_dashboard_msgs/SetModeFeedback with genuine JVM AOT.
 */
import org.uwvm.universal_robots.universal_robots_ros1_complete.BoundedRecords.Ros1Ur_dashboard_msgsSetModeFeedback;
import java.util.Arrays;

public final class Main
{
    public static void main(String[] args)
    {
        var bytes = Ros1Ur_dashboard_msgsSetModeFeedback.CODEC.encode(new Ros1Ur_dashboard_msgsSetModeFeedback());
        var decoded = Ros1Ur_dashboard_msgsSetModeFeedback.CODEC.decode(bytes);
        if(!Arrays.equals(bytes, Ros1Ur_dashboard_msgsSetModeFeedback.CODEC.encode(decoded)))
            throw new IllegalStateException("complete canonical record changed");
        System.out.println("{\"type\":\"ur_dashboard_msgs/SetModeFeedback\",\"bytes\":" + bytes.length + "}");
    }
}
