/**
 * @file Main.java
 * @brief Exercise the complete original dsr_msgs/RobotState with genuine JVM AOT.
 */
import org.uwvm.doosan.doosan_ros1_main_complete.BoundedRecords.Ros1Dsr_msgsRobotState;
import java.util.Arrays;

public final class Main
{
    public static void main(String[] args)
    {
        var bytes = Ros1Dsr_msgsRobotState.CODEC.encode(new Ros1Dsr_msgsRobotState());
        var decoded = Ros1Dsr_msgsRobotState.CODEC.decode(bytes);
        if(!Arrays.equals(bytes, Ros1Dsr_msgsRobotState.CODEC.encode(decoded)))
            throw new IllegalStateException("complete canonical record changed");
        System.out.println("{\"type\":\"dsr_msgs/RobotState\",\"bytes\":" + bytes.length + "}");
    }
}
