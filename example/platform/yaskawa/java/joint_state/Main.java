/**
 * @file Main.java
 * @brief Run one explicit YASKAWA ROS 2 observation with checked cleanup.
 * @details The actual source-language application validates argument arity before acquisition, retains
 * the whole typed canonical value and reports independent operation/cleanup statuses. The operator
 * supplies an existing alias and its matching native type binding. A source-backed compiler or VM is
 * required; no grant, replay or controller admission is implicit.
 */
package yaskawa.examples;
import uwvm.ros.Client;
import uwvm.yaskawa.ros2.Ros2Sensor_msgsMsgJointState;

/** @brief Observe the whole sensor_msgs/msg/JointState record through genuine JVM AOT. */
public final class Main
{
    /**
     * @brief Subscribe once, transactionally decode and report after checked close.
     * @param args Exactly one operator-supplied policy alias.
     */
    public static void main(String[] args)
    {
        if(args.length != 1)
        {
            System.exit(22);
            return;
        }
        Client.Exchange facts = Client.waitSample(args[0], 1196, 250);
        byte[] wire = new byte[0];
        if(facts.primary == 0)
        {
            try
            {
                wire = Ros2Sensor_msgsMsgJointState.decode(facts.wire).encode();
            }
            catch(IllegalArgumentException failure)
            {
                facts.primary = 22;
            }
        }
        StringBuilder hex = new StringBuilder();
        for(byte value: wire)
        {
            hex.append(Character.forDigit((value & 255) >>> 4, 16));
            hex.append(Character.forDigit(value & 15, 16));
        }
        System.out.println("{\"primary\":" + facts.primary + ",\"cleanup\":" + facts.cleanup + ",\"wire_hex\":\"" + hex + "\"}");
        System.exit(Math.min(facts.status(), 125));
    }
}
