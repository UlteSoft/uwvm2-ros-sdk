package uwvm.pal.preload;
import org.teavm.interop.Export;
import uwvm.ros.RmwPublisher;
import uwvm.ros.Standard;

/**
 * @brief Own and publish through the one explicitly granted native ROS alias.
 * @details No capability handle or guest pointer crosses this module boundary.
 * Publishing is attempted once after the external native peer is ready.
 */
public final class RosComm
{
    private static RmwPublisher publisher;
    private static RmwPublisher.Acquisition acquisition;
    private static byte[] payload;
    private static boolean attempted;
    private static int closeStatus = 9;

    private RosComm()
    {
    }

    /** @return Actual acquisition errno; only zero retains one module-owned handle. */
    @Export(name = "open_publisher") public static int openPublisher()
    {
        if(publisher != null || attempted)
        {
            return 17;
        }
        payload = Standard.encodeString("uwvm-managed-preload");
        acquisition = RmwPublisher.acquire("shared_pub");
        if(acquisition.status == 0)
        {
            publisher = acquisition.publisher;
        }
        return acquisition.status;
    }

    /** @return One only when failed-acquisition cleanup was actually attempted. */
    @Export(name = "open_cleanup_attempted") public static int openCleanupAttempted()
    {
        return acquisition != null && acquisition.cleanupAttempted ? 1 : 0;
    }

    /** @return Independent failed-acquisition cleanup errno; inspect attempted first. */
    @Export(name = "open_cleanup_status") public static int openCleanupStatus()
    {
        return acquisition == null ? 9 : acquisition.cleanupStatus;
    }

    /**
     * @param publish One to publish once; zero to close after an input failure.
     * @return Original publish errno, or local invalid 22 for a cancelled attempt.
     * @details finally retires and closes the real owner once even on an exception.
     */
    @Export(name = "publish_and_close") public static int publishAndClose(int publish)
    {
        if(publisher == null || attempted)
        {
            return 9;
        }
        attempted = true;
        RmwPublisher owned = publisher;
        publisher = null;
        try
        {
            if(publish != 1)
            {
                return 22;
            }
            int inspected = owned.inspectChecked();
            return inspected == 0 ? owned.publish(payload) : inspected;
        }
        finally
        {
            closeStatus = owned.closeChecked();
            payload = null;
        }
    }

    /** @return Independent actual close errno; nine before the first close. */
    @Export(name = "close_status") public static int closeStatus()
    {
        return closeStatus;
    }
}
