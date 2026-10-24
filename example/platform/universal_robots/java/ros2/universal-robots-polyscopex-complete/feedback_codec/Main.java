/**
 * @file Main.java
 * @brief Exercise the complete original urinterfaces/action/SetMode_Feedback with genuine JVM AOT.
 */
import org.uwvm.universal_robots.universal_robots_polyscopex_complete.BoundedRecords.Ros2UrinterfacesActionSetMode_Feedback;
import java.util.Arrays;

public final class Main
{
    public static void main(String[] args)
    {
        var bytes = Ros2UrinterfacesActionSetMode_Feedback.CODEC.encode(new Ros2UrinterfacesActionSetMode_Feedback());
        var decoded = Ros2UrinterfacesActionSetMode_Feedback.CODEC.decode(bytes);
        if(!Arrays.equals(bytes, Ros2UrinterfacesActionSetMode_Feedback.CODEC.encode(decoded)))
            throw new IllegalStateException("complete canonical record changed");
        System.out.println("{\"type\":\"urinterfaces/action/SetMode_Feedback\",\"bytes\":" + bytes.length + "}");
    }
}
