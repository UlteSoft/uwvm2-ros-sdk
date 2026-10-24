/**
 * @file Main.cs
 * @brief Run one explicit ABB ROS 2 observation with checked cleanup.
 * @details The actual source-language application validates argument arity before acquisition, retains
 * the whole typed canonical value and reports independent operation/cleanup statuses. The operator
 * supplies an existing alias and its matching native type binding. A source-backed compiler or VM is
 * required; no grant, replay or controller admission is implicit.
 */
using Uwvm.Abb;

/**
 * @brief Execute the complete ABB read_io observation as genuine C# full-AOT.
 * @details The managed source and SDK are AOT-compiled into the sole WASI
 * .wasm command. Run time uses uwvm2-ros and native ROS, with no host CLR.
 */
internal static class Program
{
    /**
     * @brief Read the typed result, print every independent fact, and return its status.
     * @param args Borrowed arguments: ALIAS SIGNAL.
     * @return First operation, cleanup or output failure clamped to 125.
     * @details Wrong arity returns 22 before acquisition. Every acquired handle
     * is already closed before the owned complete response reaches the formatter.
     */
    private static int Main(string[] args)
    {
        if(args.Length != 2)
        {
            return 22;
        }
        var report = Observation.ReadIO(args[0], args[1]);
        return Observation.Write(report);
    }
}
