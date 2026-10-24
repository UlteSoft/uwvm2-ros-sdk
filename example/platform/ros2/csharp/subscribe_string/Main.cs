// @file Main.cs
// @brief Run the complete subscribe_string through the shared native CLR ABI facade.
using Uwvm.RosWasm;

public static class Program
{
    public static int Main()
    {
        return NativeCommand.Run(2);
    }
}
