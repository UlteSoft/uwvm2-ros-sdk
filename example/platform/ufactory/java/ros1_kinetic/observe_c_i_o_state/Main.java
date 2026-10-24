import ufactory.ros1_kinetic.BoundedRecords;
import uwvm.ros.Client;
import uwvm.ros.Wasi;

/**
 * @file Main.java
 * @brief Read every original xarm_msgs/CIOState field using the genuine JVM AOT route.
 * @details The common Client owns acquisition, finite polling and one checked close.
 */
public final class Main
{
    /** @brief Prevent construction of this stateless command entry. */
    private Main()
    {
    }

    /**
     * @brief Query/observe once and validate every field before printing actual bytes.
     * @param arguments Exactly one independently granted alias, without the program name.
     * @return No value; the final process status preserves primary then cleanup/output.
     */
    public static void main(String[] arguments)
    {
        if(arguments.length != 1)
        {
            Wasi.exit(22);
            return;
        }
        if(Client.backend() != 1)
        {
            Wasi.exit(22);
            return;
        }
        Client.Exchange result = Client.waitSample(arguments[0], 332, 250);
        boolean present = false;
        byte[] bytes = new byte[0];
        if(result.primary == 0)
        {
            try
            {
                BoundedRecords.Ros1Xarm_msgsCIOState value = BoundedRecords.Ros1Xarm_msgsCIOState.CODEC.decode(result.wire);
                bytes = BoundedRecords.Ros1Xarm_msgsCIOState.CODEC.encode(value);
                present = true;
            }
            catch(IllegalArgumentException invalid)
            {
                result.primary = 22;
            }
        }
        StringBuilder hex = new StringBuilder();
        if(present)
            for(byte value: bytes)
            {
                int unsigned = value & 255;
                hex.append("0123456789abcdef".charAt(unsigned >>> 4));
                hex.append("0123456789abcdef".charAt(unsigned& 15));
            }
        System.out.println("{\"primary\":" + Integer.toUnsignedString(result.primary) + ",\"cleanup\":" + Integer.toUnsignedString(result.cleanup) +
                           ",\"cleanup_present\":" + result.cleanupPresent + ",\"response_present\":" + present + ",\"wire_hex\":\"" + hex + "\"}");
        int status = result.primary != 0 ? result.primary : result.cleanup;
        if(status == 0 && System.out.checkError())
            status = 5;
        Wasi.exit(Integer.compareUnsigned(status, 125) > 0 ? 125 : status);
    }
}
