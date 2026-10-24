/**
 * @file Core.java
 * @brief Provide the complete agibot Core.java source contract.
 * @details Complete original fields, scalar widths, canonical quotas and interface roles are retained. Local
 * encoding grants no ROS authority; invalid or partial wire is rejected before a value is exposed.
 */
package agibot.shared.jvm;

import java.util.Arrays;
import org.teavm.interop.Import;
import org.teavm.interop.Unmanaged;
import uwvm.ros.Raw;
import uwvm.ros.Wasi;
import uwvm.ros.Wire;

/**
 * @brief Share genuine same-Wasm JVM transport between Java and Kotlin bindings.
 * @details TeaVM's pinned linear-memory backend owns primitive arrays; pointers
 * are borrowed only for immediate synchronous imports. There is no host JVM or
 * native ROS client. Every call owns and retires one capability before decoding.
 */
public final class Core
{
    private Core()
    {
    }

    /** @brief Own immutable JSON and independent operation/cleanup/vendor facts. */
    public static final class Observation
    {
        /** @brief Original ABI or local codec errno; zero indicates success. */
        public final int error;
        /** @brief Independent close outcome; the owner receives one close attempt. */
        public final int cleanup;
        /** @brief Complete original-field JSON, or empty text after failure. */
        public final String json;
        /** @brief Exact signed original service code; zero for state samples. */
        public final long vendor;

        /**
         * @brief Capture owned outcome data without performing an import.
         * @param error Primary error. @param cleanup Close error.
         * @param json Owned JSON. @param vendor Exact original vendor code.
         */
        private Observation(int error, int cleanup, String json, long vendor)
        {
            this.error = error;
            this.cleanup = cleanup;
            this.json = json;
            this.vendor = vendor;
        }
    }

    /** @brief Own overallocated, aligned ABI output storage. */
    private static final class Slot
    {
        private final byte[] bytes = new byte[15];
        private final int offset = (int)((-Wasi.address(bytes)) & 7L);

        /** @brief Borrow the current aligned offset only across the next import. */
        long address()
        {
            return Wasi.address(bytes) + offset;
        }

        /** @brief Read a complete initialized little-endian i64 slot. */
        long get()
        {
            return Wire.get64(bytes, offset);
        }

        /** @brief Reset the unwritten length sentinel before each poll. */
        void reset()
        {
            Wire.put64(bytes, offset, -1L);
        }
    }

    /**
     * @brief Read an explicitly granted monotonic clock into caller-owned memory.
     * @param clock Preview 1 clock ID, exactly one here.
     * @param precision Requested precision in nanoseconds.
     * @param output Aligned memory-zero output offset.
     * @return Original WASI errno; inspect the slot only on success.
     */
    @Import(module = "wasi_snapshot_preview1", name = "clock_time_get") @Unmanaged private static native int clock(int clock, long precision, int output);

    /**
     * @brief Perform one complete selected observation through the exact ROS ABI.
     * @param operation One query_mode, two next_motion_state, three list_resources.
     * @param alias Exact explicitly granted alias, 1..255 strict UTF-8 bytes.
     * @param timeoutMilliseconds Subscription deadline in 1..30000 milliseconds.
     * @return Owned complete outcome; no live handle or guest pointer escapes.
     * @details Only idle errno 11 permits another topic poll. Service requests
     * are attempted once under the configured gateway deadline. Timeout and
     * malformed values end the call; independent calls share no mutable state.
     */
    public static Observation observe(int operation, String alias, int timeoutMilliseconds)
    {
        if(operation < 1 || operation > 3 || timeoutMilliseconds < 1 || timeoutMilliseconds > 30000)
        {
            return new Observation(22, 0, "", 0);
        }
        byte[] name;
        try
        {
            byte[] encoded = Wire.string(alias, 255);
            if(alias.indexOf('\0') >= 0)
            {
                throw new IllegalArgumentException("NUL alias");
            }
            name = Arrays.copyOfRange(encoded, 4, encoded.length);
        }
        catch(IllegalArgumentException invalid)
        {
            return new Observation(22, 0, "", 0);
        }
        int capacity = operation == 1 ? 156 : operation == 2 ? 698 : 10236;
        byte[] response = new byte[capacity];
        byte[] request = new byte[8];
        Slot owner = new Slot();
        Slot length = new Slot();
        Slot now = new Slot();
        if(Raw.abi_version() != 1)
        {
            return new Observation(22, 0, "", 0);
        }
        int error = Raw.capability_open(0, Wasi.address(name), name.length, owner.address());
        if(error != 0)
        {
            return new Observation(error, 0, "", 0);
        }
        long handle = owner.get();
        int cleanup;
        length.reset();
        try
        {
            if(operation == 2)
            {
                error = clock(1, 1, (int)now.address());
                long start = now.get();
                if(error == 0)
                {
                    error = Raw.topic_subscribe(handle);
                }
                while(error == 0)
                {
                    length.reset();
                    error = Raw.event_poll(handle, 0, Wasi.address(response), capacity, length.address());
                    if(error != 11)
                    {
                        break;
                    }
                    error = clock(1, 1, (int)now.address());
                    if(error != 0)
                    {
                        break;
                    }
                    long elapsed = now.get() - start;
                    if(elapsed < 0)
                    {
                        error = 5;
                        break;
                    }
                    if(elapsed >= timeoutMilliseconds * 1_000_000L)
                    {
                        error = 110;
                        break;
                    }
                    error = Wasi.pause();
                }
            }
            else
            {
                error = Raw.service_call(handle, 0, Wasi.address(request), request.length, Wasi.address(response), capacity, length.address());
            }
        }
        finally
        {
            cleanup = Raw.capability_close(handle);
        }
        if(error != 0 || cleanup != 0)
        {
            return new Observation(error, cleanup, "", 0);
        }
        long count = length.get();
        if(count < 0 || count > capacity)
        {
            return new Observation(22, cleanup, "", 0);
        }
        try
        {
            String json = Records.decode(operation, response, (int)count);
            // Both original response envelopes begin with Time then int64 code.
            long vendor = operation == 2 ? 0 : Wire.get64(response, 8);
            return new Observation(0, cleanup, json, vendor);
        }
        catch(IllegalArgumentException invalid)
        {
            return new Observation(22, cleanup, "", 0);
        }
    }
}
