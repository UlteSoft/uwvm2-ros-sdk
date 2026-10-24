package uwvm.ros;

import java.util.Arrays;

/**
 * @brief Own one ROS operation at a time with explicit transport and cleanup facts.
 * @details Each exchange owns its returned arrays. No background thread,
 * callback, service retry, global context, or implicit permission is created.
 */
public final class Client
{
    /** @brief Prevent construction of this stateless synchronous facade. */
    private Client()
    {
    }

    /** @brief Observe the compiled ROS family. @return One or two without acquiring resources. */
    public static int backend()
    {
        return NativeImports.backend();
    }

    /**
     * @brief Preserve operation, original transport, length-slot and cleanup facts.
     * @details The object owns wire storage. The handle never escapes the
     * synchronous operation and has already received its single close attempt.
     */
    public static final class Exchange
    {
        public int primary;
        public int cleanup;
        public boolean cleanupPresent;
        public boolean rpcPresent;
        public int rpcStatus;
        public boolean requiredPresent;
        public long required;
        public byte[] wire = new byte[0];

        /**
         * @brief Select the original operation failure before independent cleanup.
         * @return Full SDK errno, or zero only when both stages succeeded.
         * @details Pure local observation; it performs no host operation.
         */
        public int status()
        {
            return primary != 0 ? primary : cleanup;
        }
    }

    /**
     * @brief Validate and acquire one explicitly granted alias.
     * @param alias Borrowed nonempty Unicode alias, at most 255 UTF-8 bytes.
     * @param owner Caller-owned eight-byte handle output storage.
     * @return Original validation, namespace-version or open error.
     * @details No handle is owned on nonzero return. Input arrays stay live
     * until the synchronous open returns; the host retains no pointer.
     */
    private static int open(String alias, byte[] owner)
    {
        byte[] encoded = Wire.string(alias, 255);
        byte[] name = Arrays.copyOfRange(encoded, 4, encoded.length);
        if(NativeImports.version() != 1)
        {
            return 22;
        }
        return NativeImports.open(0, Wasi.address(name), name.length, Wasi.address(owner));
    }

    /**
     * @brief Capture a returned length slot without inventing a required size.
     * @param result Caller-owned mutable report.
     * @param slot Borrowed eight-byte slot initialized with an unwritten sentinel.
     * @param response Borrowed response capacity buffer.
     * @return No value; malformed successful envelopes become primary errno 22.
     * @details Original rpcStatus remains unchanged even on local validation failure.
     */
    private static void finish(Exchange result, byte[] slot, byte[] response)
    {
        result.rpcPresent = true;
        result.rpcStatus = result.primary;
        long length = Wire.get64(slot, 0);
        result.requiredPresent = length != -1L;
        result.required = result.requiredPresent ? length : 0;
        if(result.primary == 0)
        {
            if(!result.requiredPresent || length < 0 || length > response.length)
            {
                result.primary = 22;
            }
            else
            {
                result.wire = Arrays.copyOf(response, (int)length);
            }
        }
    }

    /**
     * @brief Perform exactly one complete service request and one checked close.
     * @param alias Borrowed exact capability alias.
     * @param request Borrowed canonical request bytes, which may be empty.
     * @param capacity Explicit bounded response capacity in 1..1048576.
     * @return Newly owned complete exchange report with independent cleanup facts.
     * @details Invalid local inputs produce errno 22 before acquisition. The
     * operation is synchronous; no handle or pointer escapes this method.
     */
    public static Exchange call(String alias, byte[] request, int capacity)
    {
        Exchange result = new Exchange();
        if(request == null || capacity < 1 || capacity > 1048576)
        {
            result.primary = 22;
            return result;
        }
        byte[] owner = new byte[8];
        byte[] length = new byte[8];
        byte[] response = new byte[capacity];
        Arrays.fill(length, (byte)255);
        try
        {
            result.primary = open(alias, owner);
        }
        catch(IllegalArgumentException invalid)
        {
            result.primary = 22;
        }
        if(result.primary != 0)
        {
            return result;
        }
        long handle = Wire.get64(owner, 0);
        try
        {
            result.primary =
                NativeImports.call(handle, 0, Wasi.address(request), request.length, Wasi.address(response), response.length, Wasi.address(length));
            finish(result, length, response);
        }
        finally
        {
            result.cleanupPresent = true;
            result.cleanup = NativeImports.close(handle);
        }
        return result;
    }

    /**
     * @brief Retain one subscription while awaiting a complete bounded sample.
     * @param alias Borrowed exact topic-subscribe capability alias.
     * @param capacity Explicit canonical response bound in 1..1048576.
     * @param attempts Poll credits in 1..250, including the initial immediate poll.
     * @return Newly owned report retaining the last actual poll and checked close.
     * @details Only idle errno 11 permits another poll. Each subsequent attempt
     * follows a real twenty-millisecond monotonic WASI pause. A clock error,
     * transport error or malformed envelope ends the operation without replay.
     */
    public static Exchange waitSample(String alias, int capacity, int attempts)
    {
        Exchange result = new Exchange();
        if(capacity < 1 || capacity > 1048576 || attempts < 1 || attempts > 250)
        {
            result.primary = 22;
            return result;
        }
        byte[] owner = new byte[8];
        byte[] length = new byte[8];
        byte[] response = new byte[capacity];
        try
        {
            result.primary = open(alias, owner);
        }
        catch(IllegalArgumentException invalid)
        {
            result.primary = 22;
        }
        if(result.primary != 0)
        {
            return result;
        }
        long handle = Wire.get64(owner, 0);
        try
        {
            result.primary = NativeImports.subscribe(handle);
            if(result.primary == 0)
            {
                for(int index = 0; index < attempts; index++)
                {
                    Arrays.fill(length, (byte)255);
                    result.primary = NativeImports.poll(handle, 0, Wasi.address(response), response.length, Wasi.address(length));
                    finish(result, length, response);
                    if(result.primary != 11 || index + 1 == attempts)
                    {
                        break;
                    }
                    int paused = Wasi.pause();
                    if(paused != 0)
                    {
                        result.primary = paused;
                        break;
                    }
                }
            }
        }
        finally
        {
            result.cleanupPresent = true;
            result.cleanup = NativeImports.close(handle);
        }
        return result;
    }
}
