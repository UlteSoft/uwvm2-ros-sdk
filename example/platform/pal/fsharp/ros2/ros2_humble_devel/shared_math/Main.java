package uwvm.pal.preload.math;
import org.teavm.interop.Import;
import org.teavm.interop.Unmanaged;

/** @brief Call actual scalar exports through the loaded math module identity. */
public final class Main
{
    private Main()
    {
    }

    /** @return Original packed status and signed-i32 result from the real producer. */
    @Import(module = "math", name = "checked_add") @Unmanaged private static native long checkedAdd(int left, int right);
    /** @return Real producer-owned catch/finally counts. */
    @Import(module = "math", name = "cleanup_counts") @Unmanaged private static native long cleanupCounts();
    /** @return Actual managed initialization count for the primary loaded instance. */
    @Import(module = "math", name = "initialization_count") @Unmanaged private static native int initializationCount();
    /** @return Actual packed result from a second instance of the same library bytes. */
    @Import(module = "math_peer", name = "checked_add") @Unmanaged private static native long peerCheckedAdd(int left, int right);
    /** @return Independent real catch/finally counts in that second instance. */
    @Import(module = "math_peer", name = "cleanup_counts") @Unmanaged private static native long peerCleanupCounts();
    /** @return Actual managed initialization count for the independent peer instance. */
    @Import(module = "math_peer", name = "initialization_count") @Unmanaged private static native int peerInitializationCount();

    /** @param args No arguments; every check consumes the real library result. */
    public static void main(String[] args)
    {
        if(args.length != 0 || initializationCount() != 1 || peerInitializationCount() != 1 || cleanupCounts() != 0 || peerCleanupCounts() != 0 ||
           checkedAdd(2, 3) != 5L || checkedAdd(-7, 2) != 0xfffffffbL || checkedAdd(Integer.MAX_VALUE, 1) != (1L << 32) ||
           cleanupCounts() != ((1L << 32) | 3L) || peerCleanupCounts() != 0 || peerCheckedAdd(5, 8) != 13L || peerCleanupCounts() != 1L ||
           cleanupCounts() != ((1L << 32) | 3L) || initializationCount() != 1 || peerInitializationCount() != 1)
        {
            throw new IllegalStateException("Actual shared-module result or catch/finally counters differ");
        }
        System.out.println("{\"shared_math\":true}");
    }
}
