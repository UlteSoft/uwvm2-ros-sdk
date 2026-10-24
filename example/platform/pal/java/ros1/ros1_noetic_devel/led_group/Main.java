package uwvm.pal.example;
import uwvm.ros.Wasi;
import uwvm.pal.Observation;
import uwvm.pal.ros1.ros1_noetic_devel.Observations;

/**
 * @brief Receive every original LedGroup field with bounded polling.
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
        Wasi.exit(args.length == 1 ? Observation.write(Observations.readLedGroup(args[0], 250)) : 22);
    }
}
