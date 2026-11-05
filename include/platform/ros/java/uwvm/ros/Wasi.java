package uwvm.ros;

import org.teavm.interop.Address;
import org.teavm.interop.Import;
import org.teavm.interop.Unmanaged;

/**
 * @brief Provide explicit WASI Preview 1 process and bounded clock operations.
 * @details Every byte array remains owned by its Java caller. Imported calls
 * are synchronous and cannot retain a pointer after returning.
 */
public final class Wasi
{
    /** @brief Prevent creation of this stateless WASI facade. */
    private Wasi()
    {
    }

    /**
     * @brief End this Wasm command with the selected process status.
     * @param status Exit status; examples use the first SDK failure clamped to 125.
     * @return Never returns when the host implements WASI correctly.
     * @details Releases no ROS capability; close owned handles before calling.
     */
    @Import(module = "wasi_snapshot_preview1", name = "proc_exit") @Unmanaged public static native void exit(int status);

    /**
     * @brief Await explicitly encoded Preview 1 subscriptions.
     * @param input Borrowed subscription-array offset in memory zero.
     * @param output Caller-owned event-array offset in memory zero.
     * @param count Number of input subscriptions.
     * @param outputCount Caller-owned four-byte result-count slot offset.
     * @return WASI errno; zero permits inspection of the written events.
     * @details No pointer is retained and an error does not imply an event.
     */
    @Import(module = "wasi_snapshot_preview1", name = "poll_oneoff")
    @Unmanaged
    private static native int poll(int input, int output, int count, int outputCount);

    /**
     * @brief Convert an owned primitive array to its Wasm linear-memory offset.
     * @param bytes Live, borrowed byte-array storage.
     * @return Unsigned wasm32 offset represented without sign extension in a long.
     * @details Valid only across the immediate synchronous imported call; callers
     * must retain the array and must not store this numeric offset as ownership.
     */
    public static long address(byte[] bytes)
    {
        return Address.ofData(bytes).toInt() & 0xffffffffL;
    }

    /**
     * @brief Pause twenty milliseconds between idle subscription polls.
     * @return Zero after one successful monotonic clock event, otherwise errno 5.
     * @details Uses one caller-owned 48-byte WASI subscription and 32-byte event.
     * The host must grant monotonic-clock access; no thread or ROS owner starts.
     */
    public static int pause()
    {
        byte[] subscription = new byte[55];
        byte[] event = new byte[39];
        byte[] count = new byte[7];
        long subscriptionBase = address(subscription);
        long eventBase = address(event);
        long countBase = address(count);
        int subscriptionOffset = (int)(((subscriptionBase + 7) & ~7L) - subscriptionBase);
        int eventOffset = (int)(((eventBase + 7) & ~7L) - eventBase);
        int countOffset = (int)(((countBase + 3) & ~3L) - countBase);
        Wire.put32(subscription, subscriptionOffset + 16, 1);
        Wire.put64(subscription, subscriptionOffset + 24, 20_000_000L);
        Wire.put64(subscription, subscriptionOffset + 32, 1_000_000L);
        int error = poll((int)(subscriptionBase + subscriptionOffset), (int)(eventBase + eventOffset), 1, (int)(countBase + countOffset));
        return error == 0 && Wire.get32(count, countOffset) == 1 && event[eventOffset + 8] == 0 && event[eventOffset + 9] == 0 && event[eventOffset + 10] == 0
            ? 0
            : 5;
    }
    /** Read the caller's capacity from WASI stdin, preserving short reads and errno. */
    public static byte[] readStdin(int capacity) throws java.io.IOException
    {
        if(capacity < 0) throw new IllegalArgumentException("Negative input capacity");
        byte[] bytes = new byte[capacity], vector = new byte[11], used = new byte[7];
        long vectorBase = address(vector), usedBase = address(used);
        int vectorOffset = (int)(((vectorBase + 3) & ~3L) - vectorBase);
        int usedOffset = (int)(((usedBase + 3) & ~3L) - usedBase);
        int count = 0;
        while(count < capacity)
        {
            Wire.put32(vector, vectorOffset, (int)(address(bytes) + count));
            Wire.put32(vector, vectorOffset + 4, capacity - count);
            Wire.put32(used, usedOffset, -1);
            int error = read(0, (int)(vectorBase + vectorOffset), 1, (int)(usedBase + usedOffset));
            if(error != 0) throw new java.io.IOException("WASI fd_read errno " + error);
            long received = Wire.get32(used, usedOffset) & 0xffffffffL;
            if(received > capacity - count) throw new java.io.IOException("Invalid WASI byte count");
            if(received == 0) break;
            count += (int)received;
        }
        return java.util.Arrays.copyOf(bytes, count);
    }

    @Import(module = "wasi_snapshot_preview1", name = "fd_read")
    @Unmanaged
    private static native int read(int fd, int vector, int count, int used);

}
