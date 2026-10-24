import org.uwvm.flexiv.ros2foxy.BoundedRecords;

/** @brief Execute the real complete JVM codec on bounded standard input. */
public final class Main
{
    public static void main(String[] args) throws Exception
    {
        byte[] bytes = System.in.readNBytes(2);
        BoundedRecords.Ros2Flexiv_msgsMsgMode value = BoundedRecords.Ros2Flexiv_msgsMsgMode.CODEC.decode(bytes);
        byte[] encoded = BoundedRecords.Ros2Flexiv_msgsMsgMode.CODEC.encode(value);
        StringBuilder output = new StringBuilder();
        for(byte item: encoded)
        {
            output.append(Character.forDigit((item & 255) >>> 4, 16));
            output.append(Character.forDigit(item & 15, 16));
        }
        System.out.println(output);
    }
}
