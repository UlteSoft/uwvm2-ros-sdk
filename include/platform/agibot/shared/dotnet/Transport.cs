/**
 * @file Transport.cs
 * @brief Provide the complete agibot Transport.cs source contract.
 * @details Complete original fields, scalar widths, canonical quotas and interface roles are retained. Local
 * encoding grants no ROS authority; invalid or partial wire is rejected before a value is exposed.
 */
using System;
using System.Runtime.InteropServices;
using System.Text;

namespace Agibot.Wasm
{
    /// <summary>Owned, immutable complete AimDK observation and failure facts.</summary>
    /// <remarks>JSON retains every original field. Signed and unsigned 64-bit
    /// fields are exact decimal strings. No live ROS capability escapes.</remarks>
    public sealed class Observation
    {
        /// <summary>Original ABI/codec errno; zero means the operation succeeded.</summary>
        public uint Error { get; }
        /// <summary>Independent capability-close result; close is attempted once.</summary>
        public uint Cleanup { get; }
        /// <summary>Complete UTF-8 JSON as owned text; empty after failure.</summary>
        public string Json { get; }
        /// <summary>Exact signed original service code; zero for state samples.</summary>
        public long Vendor { get; }

        /// <summary>Capture owned facts without communicating or acquiring resources.</summary>
        internal Observation(uint error, uint cleanup, string json, long vendor)
        {
            Error = error;
            Cleanup = cleanup;
            Json = json;
            Vendor = vendor;
        }
    }

    /// <summary>Same-Wasm transport shared explicitly by C#, F# and VB.NET.</summary>
    /// <remarks>The real Mono LLVMOnly AOT pipeline statically links the C JSON
    /// adapter. Pinning spans one synchronous call; no pointer is retained. The
    /// C adapter retires its owner before returning or decoding the response.
    /// Independent invocations share no mutable SDK state.</remarks>
    public static class Transport
    {
        /// <summary>Invoke the statically linked project FFI, not a host library.</summary>
        /// <param name="operation">One query, two state, three resource enumeration.</param>
        /// <param name="alias">Pinned strict UTF-8 alias bytes.</param>
        /// <param name="aliasBytes">Exact count in 1..255.</param>
        /// <param name="timeoutMilliseconds">State deadline in 1..30000 ms.</param>
        /// <param name="output">Pinned exclusive UTF-8 output buffer.</param>
        /// <param name="capacity">Output capacity in 1..65536.</param>
        /// <param name="written">Initialized extent only on success.</param>
        /// <param name="cleanup">Independent capability retirement errno.</param>
        /// <param name="vendor">Original service code.</param>
        /// <returns>Original ABI or local bounded-codec errno.</returns>
        [DllImport("managed_ros", EntryPoint = "agibot_json_observe")]
        private static extern unsafe uint ObserveRaw(uint operation,
                                                     byte* alias,
                                                     uint aliasBytes,
                                                     uint timeoutMilliseconds,
                                                     byte* output,
                                                     uint capacity,
                                                     out uint written,
                                                     out uint cleanup,
                                                     out long vendor);

        /// <summary>Execute one full original observation inside the AOT Wasm guest.</summary>
        /// <param name="operation">One GetMcAction, two McCommonState, three GetRobotResources.</param>
        /// <param name="alias">Exact explicit alias of 1..255 strict UTF-8 bytes.</param>
        /// <param name="timeoutMilliseconds">State deadline, 1..30000 ms.</param>
        /// <returns>Owned complete JSON, primary errno, close errno and vendor code.</returns>
        /// <remarks>Only an empty topic queue is polled again. Services are never
        /// replayed and use the gateway's configured deadline. A trap or process
        /// termination still requires the outer runtime's Instance cleanup.</remarks>
        public static unsafe Observation Observe(uint operation, string alias, uint timeoutMilliseconds)
        {
            if(operation < 1 || operation > 3 || alias == null || alias.IndexOf('\0') >= 0 || timeoutMilliseconds < 1 || timeoutMilliseconds > 30000)
            {
                return new Observation(22, 0, "", 0);
            }
            byte[] name;
            UTF8Encoding encoding = new UTF8Encoding(false, true);
            try
            {
                name = encoding.GetBytes(alias);
            }
            catch(EncoderFallbackException)
            {
                return new Observation(22, 0, "", 0);
            }
            if(name.Length < 1 || name.Length > 255)
            {
                return new Observation(22, 0, "", 0);
            }
            byte[] output = new byte[65536];
            uint written;
            uint cleanup;
            long vendor;
            uint error;
            fixed(byte* aliasPointer = name) fixed(byte* outputPointer = output)
            {
                error = ObserveRaw(operation,
                                   aliasPointer,
                                   (uint)name.Length,
                                   timeoutMilliseconds,
                                   outputPointer,
                                   (uint)output.Length,
                                   out written,
                                   out cleanup,
                                   out vendor);
            }
            if(error != 0 || cleanup != 0)
            {
                return new Observation(error, cleanup, "", vendor);
            }
            if(written > output.Length)
            {
                return new Observation(22, cleanup, "", vendor);
            }
            try
            {
                return new Observation(0, cleanup, encoding.GetString(output, 0, (int)written), vendor);
            }
            catch(DecoderFallbackException)
            {
                return new Observation(22, cleanup, "", vendor);
            }
        }
    }
}
