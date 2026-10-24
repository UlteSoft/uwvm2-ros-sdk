import org.uwvm.franka.ros2.BoundedRecords;

/** @brief Execute the real complete JVM codec on bounded standard input. */
public final class Main
{
    public static void main(String[] args) throws Exception
    {
        byte[] bytes = System.in.readNBytes(41);
        BoundedRecords.Ros2Franka_msgsActionGrasp_Goal value = BoundedRecords.Ros2Franka_msgsActionGrasp_Goal.CODEC.decode(bytes);
        byte[] encoded = BoundedRecords.Ros2Franka_msgsActionGrasp_Goal.CODEC.encode(value);
        StringBuilder output = new StringBuilder();
        for(byte item: encoded)
        {
            output.append(Character.forDigit((item & 255) >>> 4, 16));
            output.append(Character.forDigit(item & 15, 16));
        }
        System.out.println(output);
    }
}
