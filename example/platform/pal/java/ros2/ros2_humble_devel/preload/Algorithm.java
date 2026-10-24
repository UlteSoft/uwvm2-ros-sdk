package uwvm.pal.preload;
import org.teavm.interop.Export;

/**
 * @brief Compute with a real caught overflow and a finally cleanup counter.
 * @details The high 32 result bits carry status; the low bits carry a signed
 * i32 result. All managed data stays in this module's own linear memory.
 */
public final class Algorithm
{
    private static int caught;
    private static int finished;

    private Algorithm()
    {
    }

    /**
     * @param left Signed first operand. @param right Signed second operand.
     * @return Status zero and exact i32 sum, or status one for caught overflow.
     */
    @Export(name = "checked_add") public static long checkedAdd(int left, int right)
    {
        try
        {
            long result = (long)left + (long)right;
            if(result < Integer.MIN_VALUE || result > Integer.MAX_VALUE)
            {
                throw new ArithmeticException("i32 overflow");
            }
            return result & 0xffffffffL;
        }
        catch(ArithmeticException overflow)
        {
            caught++;
            return 1L << 32;
        }
        finally
        {
            finished++;
        }
    }

    /** @return Actual caught count in high bits and finally count in low bits. */
    @Export(name = "cleanup_counts") public static long cleanupCounts()
    {
        return ((long)caught << 32) | (finished & 0xffffffffL);
    }

    /** @return Actual ungranted ROS acquisition errno, expected to equal 13. */
    @Export(name = "denied_ros_open") public static int deniedRosOpen()
    {
        return Denied.check();
    }
}
