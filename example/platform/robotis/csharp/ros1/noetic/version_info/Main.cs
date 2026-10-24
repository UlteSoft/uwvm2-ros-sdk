using Uwvm.Robotis;
using Uwvm.Robotis.Ros1.noetic;

/** @brief Read the complete original VersionInfo from the actual ROS ABI.
 * @details This genuine C# program compiles through Roslyn and Mono LLVMOnly. */
public static class Program
{
    /** @brief Execute one bounded read and preserve the actual cleanup status.
     * @param args Exactly one independently granted topic alias.
     * @return Actual first failure clamped to the WASI command exit range. */
    public static int Main(string[] args)
    {
        return args.Length == 1 ? Observation.Write(Observations.ReadVersionInfo(args[0], 250)) : 22;
    }
}
