/**
 * @file Main.java
 * @brief Exercise the complete original dsr_msgs/LogAlarm with genuine JVM AOT.
 */
import org.uwvm.doosan.doosan_ros1_aws_simulation_complete.BoundedRecords.Ros1Dsr_msgsLogAlarm;
import java.util.Arrays;

public final class Main
{
    public static void main(String[] args)
    {
        var bytes = Ros1Dsr_msgsLogAlarm.CODEC.encode(new Ros1Dsr_msgsLogAlarm());
        var decoded = Ros1Dsr_msgsLogAlarm.CODEC.decode(bytes);
        if(!Arrays.equals(bytes, Ros1Dsr_msgsLogAlarm.CODEC.encode(decoded)))
            throw new IllegalStateException("complete canonical record changed");
        System.out.println("{\"type\":\"dsr_msgs/LogAlarm\",\"bytes\":" + bytes.length + "}");
    }
}
