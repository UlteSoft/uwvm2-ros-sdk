package uwvm.pal.preload;
import uwvm.ros.Owner;

/**
 * @brief Attempt the real alias acquisition from the calling module identity.
 * @details A denied open has no owner. Unexpected success is closed once and
 * returned as zero, making the isolation assertion fail instead of hiding it.
 */
public final class Denied
{
    private Denied()
    {
    }

    /** @return Actual open errno; success remains zero after checked cleanup. */
    public static int check()
    {
        Owner.Acquisition acquisition = Owner.acquire("shared_pub");
        if(acquisition.status == 0)
        {
            int cleanup = acquisition.owner.closeChecked();
            if(cleanup != 0)
            {
                throw new IllegalStateException("Unexpected grant cleanup failed: " + cleanup);
            }
        }
        return acquisition.status;
    }
}
