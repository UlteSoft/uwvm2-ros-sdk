import org.uwvm.flexiv.controllercorehumble.BoundedRecords;

/** @brief Execute the real complete JVM codec on bounded standard input. */
public final class Main
{
    public static void main(String[] args) throws Exception
    {
        byte[] bytes = System.in.readNBytes(9373);
        BoundedRecords.Ros2Sensor_msgsMsgJointState value = BoundedRecords.Ros2Sensor_msgsMsgJointState.CODEC.decode(bytes);
        byte[] encoded = BoundedRecords.Ros2Sensor_msgsMsgJointState.CODEC.encode(value);
        StringBuilder output = new StringBuilder();
        for(byte item: encoded)
        {
            output.append(Character.forDigit((item & 255) >>> 4, 16));
            output.append(Character.forDigit(item & 15, 16));
        }
        System.out.println(output);
    }
}
