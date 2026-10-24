/**
 * @file Main.java
 * @brief Exercise the complete original urinterfaces/srv/SetAnalogOutput_Response with genuine JVM AOT.
 */
import org.uwvm.universal_robots.universal_robots_polyscopex_complete.BoundedRecords.Ros2UrinterfacesSrvSetAnalogOutput_Response;
import java.util.Arrays;

public final class Main
{
    public static void main(String[] args)
    {
        var bytes = Ros2UrinterfacesSrvSetAnalogOutput_Response.CODEC.encode(new Ros2UrinterfacesSrvSetAnalogOutput_Response());
        var decoded = Ros2UrinterfacesSrvSetAnalogOutput_Response.CODEC.decode(bytes);
        if(!Arrays.equals(bytes, Ros2UrinterfacesSrvSetAnalogOutput_Response.CODEC.encode(decoded)))
            throw new IllegalStateException("complete canonical record changed");
        System.out.println("{\"type\":\"urinterfaces/srv/SetAnalogOutput_Response\",\"bytes\":" + bytes.length + "}");
    }
}
