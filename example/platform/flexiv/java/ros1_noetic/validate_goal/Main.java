import org.uwvm.flexiv.ros1noetic.BoundedRecords;

/** @brief Execute the real complete JVM codec on bounded standard input. */
public final class Main
{
    public static void main(String[] args) throws Exception
    {
        byte[] bytes = System.in.readNBytes(113);
        BoundedRecords.Ros1Flexiv_msgsJointPosVel value = BoundedRecords.Ros1Flexiv_msgsJointPosVel.CODEC.decode(bytes);
        byte[] encoded = BoundedRecords.Ros1Flexiv_msgsJointPosVel.CODEC.encode(value);
        StringBuilder output = new StringBuilder();
        for(byte item: encoded)
        {
            output.append(Character.forDigit((item & 255) >>> 4, 16));
            output.append(Character.forDigit(item & 15, 16));
        }
        System.out.println(output);
    }
}
