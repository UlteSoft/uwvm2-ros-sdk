package uwvm.robotis.example;
import uwvm.ros.Wasi;
import uwvm.robotis.Observation;
import uwvm.robotis.ros1.noetic.Observations;

/**
 * @brief Receive every original SensorState field with bounded polling.
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
        Wasi.exit(args.length == 1 ? Observation.write(Observations.readSensorState(args[0], 250)) : 22);
    }
}
