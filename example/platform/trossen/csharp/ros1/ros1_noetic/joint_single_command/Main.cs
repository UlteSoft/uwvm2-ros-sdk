using Uwvm.Trossen;
using Uwvm.Trossen.Ros1.ros1_noetic;

/** @brief Read the complete original JointSingleCommand from the actual ROS ABI.
 * @details This genuine C# program compiles through Roslyn and Mono LLVMOnly. */
public static class Program
{
    /** @brief Execute one bounded read and preserve the actual cleanup status.
     * @param args Exactly one independently granted topic alias.
     * @return Actual first failure clamped to the WASI command exit range. */
    public static int Main(string[] args)
    {
        return args.Length == 1 ? Observation.Write(Observations.ReadJointSingleCommand(args[0], 250)) : 22;
    }
}
