/**
 * @file Main.java
 * @brief Exercise the complete original dsr_msgs2/action/JogH2r_Feedback with genuine JVM AOT.
 */
import org.uwvm.doosan.doosan_ros2_humble_complete.BoundedRecords.Ros2Dsr_msgs2ActionJogH2r_Feedback;
import java.util.Arrays;

public final class Main
{
    public static void main(String[] args)
    {
        var bytes = Ros2Dsr_msgs2ActionJogH2r_Feedback.CODEC.encode(new Ros2Dsr_msgs2ActionJogH2r_Feedback());
        var decoded = Ros2Dsr_msgs2ActionJogH2r_Feedback.CODEC.decode(bytes);
        if(!Arrays.equals(bytes, Ros2Dsr_msgs2ActionJogH2r_Feedback.CODEC.encode(decoded)))
            throw new IllegalStateException("complete canonical record changed");
        System.out.println("{\"type\":\"dsr_msgs2/action/JogH2r_Feedback\",\"bytes\":" + bytes.length + "}");
    }
}
