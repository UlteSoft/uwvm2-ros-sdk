package uwvm.pal.example;
import uwvm.ros.Wasi;
import uwvm.pal.Observation;
import uwvm.pal.ros2.ros2_humble_devel.Observations;

/**
 * @brief Receive every original Bumper field with bounded polling.
 * @details No native owner remains live when the complete result is printed.
 */
public final class Main
{
    private Main()
    {
    }

    /**
     * @brief Execute the actual Wasm observation command.
     * @param args Exactly one independently granted topic alias.
     */
    public static void main(String[] args)
    {
        Wasi.exit(args.length == 1 ? Observation.write(Observations.readBumper(args[0], 250)) : 22);
    }
}
