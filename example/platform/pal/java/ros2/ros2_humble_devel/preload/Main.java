package uwvm.pal.preload;
import org.teavm.interop.Import;
import org.teavm.interop.Unmanaged;

/**
 * @brief Consume three independently initialized genuine managed Wasm modules.
 * @details This main owns no ROS capability. Scalar status values preserve
 * separate operation/cleanup facts without sharing a module-owned Java object.
 */
public final class Main
{
    private Main()
    {
    }

    /** @return Actual io module report status. */
    @Import(module = "io", name = "report") @Unmanaged private static native int report(int phase, int detail);
    /** @return Actual byte from io module's basic standard input stream. */
    @Import(module = "io", name = "read_gate") @Unmanaged private static native int readGate();
    /** @return Real attempted io module ROS acquisition errno. */
    @Import(module = "io", name = "denied_ros_open") @Unmanaged private static native int ioDenied();
    /** @return Exact packed status and signed sum from algorithm's own heap. */
    @Import(module = "algorithm", name = "checked_add") @Unmanaged private static native long checkedAdd(int left, int right);
    /** @return Actual catch/finally counters maintained by algorithm. */
    @Import(module = "algorithm", name = "cleanup_counts") @Unmanaged private static native long cleanupCounts();
    /** @return Real attempted algorithm module ROS acquisition errno. */
    @Import(module = "algorithm", name = "denied_ros_open") @Unmanaged private static native int algorithmDenied();
    /** @return Actual ros_comm module acquisition errno. */
    @Import(module = "ros_comm", name = "open_publisher") @Unmanaged private static native int openPublisher();
    /** @return Whether failure cleanup actually ran after acquiring a source. */
    @Import(module = "ros_comm", name = "open_cleanup_attempted") @Unmanaged private static native int openCleanupAttempted();
    /** @return Independent failed-acquisition close errno. */
    @Import(module = "ros_comm", name = "open_cleanup_status") @Unmanaged private static native int openCleanupStatus();
    /** @return Original ros_comm publish status; cleanup is queried separately. */
    @Import(module = "ros_comm", name = "publish_and_close") @Unmanaged private static native int publishAndClose(int publish);
    /** @return Actual once-only close result retained by ros_comm. */
    @Import(module = "ros_comm", name = "close_status") @Unmanaged private static native int closeStatus();

    /** @param condition Actual condition. @param reason Failure detail. */
    private static void require(boolean condition, String reason)
    {
        if(!condition)
        {
            throw new IllegalStateException(reason);
        }
    }

    /** @param args No application arguments; stdin is released by the native peer. */
    public static void main(String[] args)
    {
        require(args.length == 0, "No application arguments are admitted");
        require(Denied.check() == 13, "main unexpectedly acquired ROS authority");
        require(ioDenied() == 13, "io unexpectedly acquired ROS authority");
        require(algorithmDenied() == 13, "algorithm unexpectedly acquired ROS authority");
        require(checkedAdd(2, 3) == 5L, "ordinary signed addition failed");
        require(checkedAdd(Integer.MAX_VALUE, 1) == (1L << 32), "overflow was not caught");
        require(cleanupCounts() == ((1L << 32) | 2L), "catch/finally counters differ");
        int opened = openPublisher();
        require(opened == 0, "publisher open failed: " + opened + "; cleanup attempted=" + openCleanupAttempted() + "; cleanup errno=" + openCleanupStatus());
        int reported = 22;
        int gate = -2;
        int published = 22;
        boolean finishAttempted = false;
        int closed;
        try
        {
            reported = report(1, 0);
            gate = reported == 0 ? readGate() : -2;
            finishAttempted = true;
            published = publishAndClose(gate == 'g' ? 1 : 0);
        }
        finally
        {
            if(!finishAttempted)
            {
                publishAndClose(0);
            }
            closed = closeStatus();
        }
        require(reported == 0 && gate == 'g', "native peer did not release the stdin gate");
        require(published == 0, "actual publish failed: " + published);
        require(closed == 0, "actual close failed: " + closed);
        require(report(2, 0) == 0, "final report failed");
    }
}
