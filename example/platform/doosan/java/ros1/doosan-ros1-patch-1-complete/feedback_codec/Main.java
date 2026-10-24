/**
 * @file Main.java
 * @brief Exercise the complete original dsr_msgs/AlterMotionStream with genuine JVM AOT.
 */
import org.uwvm.doosan.doosan_ros1_patch_1_complete.BoundedRecords.Ros1Dsr_msgsAlterMotionStream;
import java.util.Arrays;

public final class Main
{
    public static void main(String[] args)
    {
        var bytes = Ros1Dsr_msgsAlterMotionStream.CODEC.encode(new Ros1Dsr_msgsAlterMotionStream());
        var decoded = Ros1Dsr_msgsAlterMotionStream.CODEC.decode(bytes);
        if(!Arrays.equals(bytes, Ros1Dsr_msgsAlterMotionStream.CODEC.encode(decoded)))
            throw new IllegalStateException("complete canonical record changed");
        System.out.println("{\"type\":\"dsr_msgs/AlterMotionStream\",\"bytes\":" + bytes.length + "}");
    }
}
