package uwvm.ros;

/**
 * @file NativeCommand.java
 * @brief Execute complete finite native ROS operations in a genuine JVM AOT guest.
 * @details Java and Kotlin share this ordinary Java library. Every response
 * retains its whole original fields and separate transport and cleanup facts.
 * Only the common compiler adapter selects the actual JVM AOT toolchain.
 */
public final class NativeCommand
{
    /** @brief Prevent construction of the finite command entry facade. */
    private NativeCommand()
    {
    }

    /**
     * @brief Convert complete bytes to hexadecimal without lossy text conversion.
     * @param bytes Owned complete canonical response bytes.
     * @return Newly owned hexadecimal string with exactly two characters per byte.
     */
    private static String hex(byte[] bytes)
    {
        String alphabet = "0123456789abcdef";
        StringBuilder result = new StringBuilder(bytes.length * 2);
        for(byte value: bytes)
        {
            result.append(alphabet.charAt((value & 255) >>> 4));
            result.append(alphabet.charAt(value & 15));
        }
        return result.toString();
    }

    /**
     * @brief Run one whole String publication, String subscription or Trigger call.
     * @param operation One for publish, two for subscribe, three for Trigger.
     * @return Primary original error before independent acquired-owner cleanup error.
     * @details A service request is admitted once. Only idle 11 permits another
     * subscription poll. Two publication samples are explicit demonstration
     * inputs separated by one monotonic second; failures never cause replay.
     */
    public static int run(int operation)
    {
        if(operation == 1)
        {
            byte[] wire = Standard.encodeString("hello native ROS");
            Owner.Acquisition acquired = Owner.acquire("sample");
            if(acquired.status != 0)
                return acquired.status;
            int primary = 0;
            int cleanup;
            try
            {
                for(int sample = 0; sample != 2; ++sample)
                {
                    primary = acquired.owner.publish(wire);
                    if(primary != 0)
                        break;
                    for(int pause = 0; pause != (sample == 0 ? 50 : 10); ++pause)
                    {
                        primary = Wasi.pause();
                        if(primary != 0)
                            break;
                    }
                    if(primary != 0)
                        break;
                }
            }
            finally
            {
                cleanup = acquired.owner.closeChecked();
            }
            System.out.println("primary=" + primary + " cleanup=" + cleanup + " cleanup_present=true");
            System.out.println("request_wire=" + hex(wire));
            return primary != 0 ? primary : cleanup;
        }
        Client.Exchange exchange;
        if(operation == 2)
        {
            Standard.Result<Standard.StringMessage> received = Standard.receiveString("sample", 250);
            exchange = received.exchange;
            if(received.value != null)
                System.out.println(received.value.data);
        }
        else if(operation == 3)
        {
            Standard.Result<Standard.TriggerResponse> received = Standard.callTrigger("sample");
            exchange = received.exchange;
            if(received.value != null)
            {
                System.out.println("success=" + received.value.success);
                System.out.println(received.value.message);
            }
        }
        else
        {
            return 22;
        }
        System.out.println("primary=" + exchange.primary + " rpc=" + exchange.rpcStatus + " rpc_present=" + exchange.rpcPresent);
        System.out.println("cleanup=" + exchange.cleanup + " cleanup_present=" + exchange.cleanupPresent);
        System.out.println("length_present=" + exchange.requiredPresent + " length=" + Long.toUnsignedString(exchange.required));
        System.out.println("response_wire=" + hex(exchange.wire));
        return exchange.status();
    }
}
