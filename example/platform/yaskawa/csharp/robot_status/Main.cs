/**
 * @file Main.cs
 * @brief Run one explicit YASKAWA ROS 2 observation with checked cleanup.
 * @details The actual source-language application validates argument arity before acquisition, retains
 * the whole typed canonical value and reports independent operation/cleanup statuses. The operator
 * supplies an existing alias and its matching native type binding. A source-backed compiler or VM is
 * required; no grant, replay or controller admission is implicit.
 */
using System;
using Uwvm.Ros;
using Uwvm.Yaskawa.Ros2;

namespace Yaskawa.Examples
{
    /** @brief Observe the entire industrial_msgs/msg/RobotStatus value with genuine CLR full AOT. */
    public static class MainProgram
    {
        /** @brief Decode after one checked exchange and preserve independent close status.
         * @param args Exactly one already-granted subscription alias.
         * @return First original primary or cleanup status, clamped to 125. */
        public static int Main(string[] args)
        {
            if(args.Length != 1)
                return 22;
            var facts = Client.WaitSample(args[0], 150, 250);
            byte[] wire = Array.Empty<byte>();
            if(facts.Primary == 0)
            {
                try
                {
                    wire = Ros2Industrial_msgsMsgRobotStatus.Decode(facts.Bytes).Encode();
                }
                catch(ArgumentException)
                {
                    facts.Primary = 22;
                }
            }
            Console.WriteLine("{\"primary\":" + facts.Primary + ",\"cleanup\":" + facts.Cleanup + ",\"wire_hex\":\"" +
                              Convert.ToHexString(wire).ToLowerInvariant() + "\"}");
            return (int)Math.Min(facts.Primary != 0 ? facts.Primary : facts.Cleanup, 125u);
        }
    }
}
