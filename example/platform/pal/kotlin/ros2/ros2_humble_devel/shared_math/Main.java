package uwvm.pal.preload.math;
import org.teavm.interop.Import;
import org.teavm.interop.Unmanaged;
import java.nio.charset.StandardCharsets;
import uwvm.ros.Wasi;
import uwvm.ros.Wire;

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

    @Import(module = "wasi_snapshot_preview1", name = "fd_write")
    @Unmanaged private static native int fdWrite(int fd, int vectors, int count, int written);

    @Import(module = "wasi_snapshot_preview1", name = "fd_fdstat_set_rights")
    @Unmanaged private static native int fdRights(int fd, long base, long inheriting);

    /** Write through WASI and preserve its actual errno instead of PrintStream's swallowed error. */
    private static int write(int fd, String text)
    {
        byte[] bytes = text.getBytes(StandardCharsets.UTF_8);
        byte[] vector = new byte[15];
        byte[] written = new byte[7];
        long vectorBase = Wasi.address(vector);
        long writtenBase = Wasi.address(written);
        int vectorOffset = (int)(((vectorBase + 3) & ~3L) - vectorBase);
        int writtenOffset = (int)(((writtenBase + 3) & ~3L) - writtenBase);
        Wire.put32(vector, vectorOffset, (int)Wasi.address(bytes));
        Wire.put32(vector, vectorOffset + 4, bytes.length);
        int error = fdWrite(fd, (int)(vectorBase + vectorOffset), 1, (int)(writtenBase + writtenOffset));
        return error != 0 ? error : Wire.get32(written, writtenOffset) == bytes.length ? 0 : 5;
    }

    /** @param args Empty for arithmetic, or deny-stdout for an irreversible WASI rights reduction. */
    public static void main(String[] args)
    {
        boolean denied = args.length == 1 && "deny-stdout".equals(args[0]);
        if(args.length != 0 && !denied)
        {
            int error = write(2, "{\"sdk09_shared_math_invalid\":true,\"errno\":22}\n");
            Wasi.exit(error == 0 ? 22 : error);
            return;
        }
        if(initializationCount() != 1 || peerInitializationCount() != 1 || cleanupCounts() != 0 || peerCleanupCounts() != 0 ||
           checkedAdd(2, 3) != 5L || checkedAdd(-7, 2) != 0xfffffffbL || checkedAdd(Integer.MAX_VALUE, 1) != (1L << 32) ||
           cleanupCounts() != ((1L << 32) | 3L) || peerCleanupCounts() != 0 || peerCheckedAdd(5, 8) != 13L || peerCleanupCounts() != 1L ||
           cleanupCounts() != ((1L << 32) | 3L) || initializationCount() != 1 || peerInitializationCount() != 1)
        {
            throw new IllegalStateException("Actual shared-module result or catch/finally counters differ");
        }
        if(denied)
        {
            int reduced = fdRights(1, 0, 0);
            int error = write(1, "SDK09_UNAUTHORIZED_STDOUT\n");
            int restored = fdRights(1, 64, 0);
            if(reduced != 0 || error != 76 || restored != 76)
            {
                throw new IllegalStateException("WASI rights reduction, denied write or denied rights restoration differs");
            }
            int diagnostic = write(2, "{\"sdk09_shared_math_denied\":true,\"errno\":" + error +
                ",\"restore_errno\":" + restored + "}\n");
            Wasi.exit(diagnostic == 0 ? error : diagnostic);
            return;
        }
        int error = write(1, "{\"shared_math\":true,\"math_counts\":" + cleanupCounts() + ",\"peer_counts\":" + peerCleanupCounts() +
                           ",\"math_initializations\":" + initializationCount() + ",\"peer_initializations\":" + peerInitializationCount() + "}\n");
        if(error != 0) Wasi.exit(error);
    }
}
