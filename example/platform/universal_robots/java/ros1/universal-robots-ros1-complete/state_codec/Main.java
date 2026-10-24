/**
 * @file Main.java
 * @brief Exercise the complete original ur_msgs/IOStates with genuine JVM AOT.
 */
import org.uwvm.universal_robots.universal_robots_ros1_complete.BoundedRecords.Ros1Ur_msgsIOStates;
import java.util.Arrays;

public final class Main
{
    public static void main(String[] args)
    {
        var bytes = Ros1Ur_msgsIOStates.CODEC.encode(new Ros1Ur_msgsIOStates());
        var decoded = Ros1Ur_msgsIOStates.CODEC.decode(bytes);
        if(!Arrays.equals(bytes, Ros1Ur_msgsIOStates.CODEC.encode(decoded)))
            throw new IllegalStateException("complete canonical record changed");
        System.out.println("{\"type\":\"ur_msgs/IOStates\",\"bytes\":" + bytes.length + "}");
    }
}
