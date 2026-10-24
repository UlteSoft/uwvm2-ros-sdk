package uwvm.hello_robot.example;
import uwvm.ros.Wasi;
import uwvm.hello_robot.Observation;
import uwvm.hello_robot.ros2.mobile_fjt_humble.Observations;

/**
 * @brief Receive every original JointTrajectory field with bounded polling.
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
        Wasi.exit(args.length == 1 ? Observation.write(Observations.readJointTrajectory(args[0], 250)) : 22);
    }
}
