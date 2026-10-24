/**
 * @file Main.cs
 * @brief Execute the genuine agibot Main application over its explicit SDK imports.
 * @details The application owns its values and closes explicitly acquired capabilities. An installed
 * compiler/engine and exact native deployment remain separate requirements.
 */
using System;
using Agibot.CSharp;

namespace Agibot.Examples
{
    /// <summary>Execute the complete original observation in C# AOT Wasm.</summary>
    public static class Program
    {
        /// <summary>Require one explicit granted alias and propagate actual errors.</summary>
        /// <param name="args">One service or topic alias selected by the deployment.</param>
        /// <returns>Zero on full success; 22 for usage, one for operation failure.</returns>
        public static int Main(string[] args)
        {
            if(args.Length != 1)
            {
                Console.Error.WriteLine("Expected exactly one granted Agibot alias");
                return 22;
            }
            var result = Client.NextMotionState(args[0]);
            if(result.Error != 0 || result.Cleanup != 0)
            {
                Console.Error.WriteLine("Agibot observation failed: " + result.Error + "; close: " + result.Cleanup);
                return 1;
            }
            Console.WriteLine(result.Json);
            return result.Vendor == 0 ? 0 : 1;
        }
    }
}
