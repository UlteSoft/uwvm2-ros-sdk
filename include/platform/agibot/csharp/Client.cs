/**
 * @file Client.cs
 * @brief Provide the complete agibot Client.cs source contract.
 * @details Complete original fields, scalar widths, canonical quotas and interface roles are retained. Local
 * encoding grants no ROS authority; invalid or partial wire is rejected before a value is exposed.
 */
using Agibot.Wasm;

namespace Agibot.CSharp
{
    /// <summary>Complete AimDK 1.1.0 main operations in a C# AOT Wasm guest.</summary>
    /// <remarks>The explicitly shared .NET transport statically links the real
    /// guest C FFI. Returned observations own immutable data. No CLR interpreter,
    /// host C# process, native ROS library or socket executes these operations.</remarks>
    public static class Client
    {
        /// <summary>Query original GetMcAction exactly once.</summary>
        /// <param name="alias">Explicit granted service alias, 1..255 UTF-8 bytes.</param>
        /// <returns>Full JSON and independent primary, cleanup and vendor facts.</returns>
        public static Observation QueryMode(string alias)
        {
            return Transport.Observe(1, alias, 3000);
        }

        /// <summary>Receive complete McCommonState before a monotonic deadline.</summary>
        /// <param name="alias">Explicit granted state-subscribe alias.</param>
        /// <param name="timeoutMilliseconds">Deadline in 1..30000 ms; default 3000.</param>
        /// <returns>Owned full observation; error 110 means deadline expiry.</returns>
        /// <remarks>Requires monotonic-clock. No callback enters a managed thread.</remarks>
        public static Observation NextMotionState(string alias, uint timeoutMilliseconds = 3000)
        {
            return Transport.Observe(2, alias, timeoutMilliseconds);
        }

        /// <summary>Enumerate original X2 Ultra resources without playback.</summary>
        /// <param name="alias">Explicit GetRobotResources service alias.</param>
        /// <returns>Full resource/file arrays and exact signed int64 vendor code.</returns>
        public static Observation ListResources(string alias)
        {
            return Transport.Observe(3, alias, 3000);
        }
    }
}
