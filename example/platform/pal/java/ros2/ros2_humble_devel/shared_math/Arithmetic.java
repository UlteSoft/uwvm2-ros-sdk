package uwvm.pal.preload.math;
import org.teavm.interop.Export;

/** @brief Export real Java arithmetic with module-local catch/finally counters. */
public final class Arithmetic
{
    private static int caught;
    private static int finished;
    private static int initializations;
    static
    {
        initializations++;
    }

    private Arithmetic()
    {
    }

    /** @return Exact low-i32 sum/status zero, or status one after a real overflow catch. */
    @Export(name = "checked_add") public static long checkedAdd(int left, int right)
    {
        try
        {
            long sum = (long)left + right;
            if(sum < Integer.MIN_VALUE || sum > Integer.MAX_VALUE)
            {
                throw new ArithmeticException("i32 overflow");
            }
            return sum & 0xffffffffL;
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

    /** @return Actual catch count in high bits and finally count in low bits. */
    @Export(name = "cleanup_counts") public static long cleanupCounts()
    {
        return ((long)caught << 32) | (finished & 0xffffffffL);
    }

    /** @return Actual module-local managed class initializer executions. */
    @Export(name = "initialization_count") public static int initializationCount()
    {
        return initializations;
    }
}
