package uwvm.pal.preload;
import java.io.IOException;
import org.teavm.interop.Export;

/**
 * @brief Use basic WASI standard streams without added descriptor authority.
 * @details No file, directory, socket, clock or entropy grant is requested.
 */
public final class Io
{
    private Io()
    {
    }

    /**
     * @param phase One for publisher-ready; two for the final verified result.
     * @param detail Actual operation errno, which must remain zero for success.
     * @return Zero only for an admitted report, otherwise local invalid 22.
     */
    @Export(name = "report") public static int report(int phase, int detail)
    {
        if(detail != 0 || (phase != 1 && phase != 2))
        {
            return 22;
        }
        System.out.println(phase == 1
                               ? "UWVM_PRELOAD publisher-ready"
                               : "{\"preload\":true,\"denied_modules\":3,\"caught_overflows\":1,\"finally_calls\":2,\"published\":true,\"closed\":true}");
        System.out.flush();
        return 0;
    }

    /** @return Actual stdin byte; -1 is EOF and -2 is an actual I/O exception. */
    @Export(name = "read_gate") public static int readGate()
    {
        try
        {
            return System.in.read();
        }
        catch(IOException failure)
        {
            return -2;
        }
    }

    /** @return Actual ungranted ROS acquisition errno, expected to equal 13. */
    @Export(name = "denied_ros_open") public static int deniedRosOpen()
    {
        return Denied.check();
    }
}
