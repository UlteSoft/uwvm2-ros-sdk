import org.uwvm.kinova.ros2humble.BoundedRecords;

/** @brief Execute the real complete JVM codec on bounded standard input. */
public final class Main
{
    public static void main(String[] args) throws Exception
    {
        byte[] bytes = System.in.readNBytes(265);
        BoundedRecords.Ros2Control_msgsActionFollowJointTrajectory_Result value =
            BoundedRecords.Ros2Control_msgsActionFollowJointTrajectory_Result.CODEC.decode(bytes);
        byte[] encoded = BoundedRecords.Ros2Control_msgsActionFollowJointTrajectory_Result.CODEC.encode(value);
        StringBuilder output = new StringBuilder();
        for(byte item: encoded)
        {
            output.append(Character.forDigit((item & 255) >>> 4, 16));
            output.append(Character.forDigit(item & 15, 16));
        }
        System.out.println(output);
    }
}
