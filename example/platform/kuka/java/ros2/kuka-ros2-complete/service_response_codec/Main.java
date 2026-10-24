/**
 * @file Main.java
 * @brief Exercise the complete original lifecycle_msgs/srv/ChangeState_Response with genuine JVM AOT.
 */
import org.uwvm.kuka.kuka_ros2_complete.BoundedRecords.Ros2Lifecycle_msgsSrvChangeState_Response;
import java.util.Arrays;

public final class Main
{
    public static void main(String[] args)
    {
        var bytes = Ros2Lifecycle_msgsSrvChangeState_Response.CODEC.encode(new Ros2Lifecycle_msgsSrvChangeState_Response());
        var decoded = Ros2Lifecycle_msgsSrvChangeState_Response.CODEC.decode(bytes);
        if(!Arrays.equals(bytes, Ros2Lifecycle_msgsSrvChangeState_Response.CODEC.encode(decoded)))
            throw new IllegalStateException("complete canonical record changed");
        System.out.println("{\"type\":\"lifecycle_msgs/srv/ChangeState_Response\",\"bytes\":" + bytes.length + "}");
    }
}
