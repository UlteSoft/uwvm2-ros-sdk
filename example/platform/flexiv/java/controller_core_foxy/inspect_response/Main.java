import org.uwvm.flexiv.controllercorefoxy.BoundedRecords;

/** @brief Execute the real complete JVM codec on bounded standard input. */
public final class Main
{
    public static void main(String[] args) throws Exception
    {
        byte[] bytes = System.in.readNBytes(16981);
        BoundedRecords.Ros2Trajectory_msgsMsgJointTrajectory value = BoundedRecords.Ros2Trajectory_msgsMsgJointTrajectory.CODEC.decode(bytes);
        byte[] encoded = BoundedRecords.Ros2Trajectory_msgsMsgJointTrajectory.CODEC.encode(value);
        StringBuilder output = new StringBuilder();
        for(byte item: encoded)
        {
            output.append(Character.forDigit((item & 255) >>> 4, 16));
            output.append(Character.forDigit(item & 15, 16));
        }
        System.out.println(output);
    }
}
