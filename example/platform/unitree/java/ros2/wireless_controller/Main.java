/**
 * @file Main.java
 * @brief Receive and report the complete native Unitree wireless_controller message.
 * @details The exact deployed alias selects one original ROS2 type. The
 * owned result retains all record fields and independent operation/cleanup facts.
 */
package uwvm.unitree.example;

import uwvm.ros.Wasi;
import uwvm.unitree.Observation;
import uwvm.unitree.ros2.Observations;
import uwvm.unitree.ros2.Ros2Unitree_goMsgWirelessController;

/** @brief Execute one finite observation without issuing a robot command. */
public final class Main
{
    /** @brief Prevent construction of the command entry class. */
    private Main()
    {
    }

    /**
     * @brief Receive a whole native record and write its complete canonical form.
     * @param args Exactly one independently granted alias after the program name.
     * @return No value; WASI proc_exit propagates the checked operation status.
     * @details Normal owner cleanup occurs before output. Fatal VM failures do
     * not promise normal cleanup; the host must reclaim the failed instance.
     */
    public static void main(String[] args)
    {
        if(args.length != 1)
        {
            Wasi.exit(22);
            return;
        }
        Observation.Result<Ros2Unitree_goMsgWirelessController> result = Observations.readWirelessController(args[0], 250);
        Wasi.exit(Observation.write(result));
    }
}
