/**
 * @file Main.java
 * @brief Exercise the complete original kuka_driver_interfaces/msg/KssStatus with genuine JVM AOT.
 */
import org.uwvm.kuka.kuka_ros2_complete.BoundedRecords.Ros2Kuka_driver_interfacesMsgKssStatus;
import java.util.Arrays;

public final class Main
{
    public static void main(String[] args)
    {
        var bytes = Ros2Kuka_driver_interfacesMsgKssStatus.CODEC.encode(new Ros2Kuka_driver_interfacesMsgKssStatus());
        var decoded = Ros2Kuka_driver_interfacesMsgKssStatus.CODEC.decode(bytes);
        if(!Arrays.equals(bytes, Ros2Kuka_driver_interfacesMsgKssStatus.CODEC.encode(decoded)))
            throw new IllegalStateException("complete canonical record changed");
        System.out.println("{\"type\":\"kuka_driver_interfaces/msg/KssStatus\",\"bytes\":" + bytes.length + "}");
    }
}
