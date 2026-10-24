/** @details The scalar preload contract preserves each CLR module's own heap
 * and initialization state. The example checks overflow cleanup and isolated
 * counters; public binding probes exercise complete record values and explicit
 * denied access. Positive native vendor traffic is a separate qualification.
 */
/** @file Main.cs
 * @brief Call genuine scalar exports in two independently loaded CLR modules. */
using System;
using System.Runtime.InteropServices;

namespace Uwvm.Pal.Preload.Consumer
{
    /** @brief Check actual imported results, native EH effects and independent heaps. */
    public static class Program
    {
        /** @brief Call the original primary module scalar entry. */
        [DllImport("math", EntryPoint = "wasm_native_to_interp_math_Arithmetic_CheckedAdd", ExactSpelling = true),
         System.Runtime.InteropServices.WasmImportLinkage]
        private static extern long CheckedAdd(int left, int right);
        /** @brief Read actual primary catch and finally counters. */
        [DllImport("math", EntryPoint = "wasm_native_to_interp_math_Arithmetic_CleanupCounts", ExactSpelling = true),
         System.Runtime.InteropServices.WasmImportLinkage]
        private static extern long CleanupCounts();
        /** @brief Read actual primary managed initialization count. */
        [DllImport(
             "math", EntryPoint = "wasm_native_to_interp_math_Arithmetic_InitializationCount", ExactSpelling = true),
         System.Runtime.InteropServices.WasmImportLinkage]
        private static extern int InitializationCount();
        /** @brief Call the independently instantiated peer scalar entry. */
        [DllImport("math_peer", EntryPoint = "wasm_native_to_interp_math_Arithmetic_CheckedAdd", ExactSpelling = true),
         System.Runtime.InteropServices.WasmImportLinkage]
        private static extern long PeerCheckedAdd(int left, int right);
        /** @brief Read the independent peer catch and finally counters. */
        [DllImport(
             "math_peer", EntryPoint = "wasm_native_to_interp_math_Arithmetic_CleanupCounts", ExactSpelling = true),
         System.Runtime.InteropServices.WasmImportLinkage]
        private static extern long PeerCleanupCounts();
        /** @brief Read the independent peer managed initialization count. */
        [DllImport("math_peer",
                   EntryPoint = "wasm_native_to_interp_math_Arithmetic_InitializationCount",
                   ExactSpelling = true),
         System.Runtime.InteropServices.WasmImportLinkage]
        private static extern int PeerInitializationCount();

        /** @brief Explicitly initialize the original primary Mono WASI runtime. */
        [DllImport("math", EntryPoint = "initialize_runtime", ExactSpelling = true),
         System.Runtime.InteropServices.WasmImportLinkage]
        private static extern int InitializeRuntime();
        /** @brief Explicitly initialize the independent original peer runtime. */
        [DllImport("math_peer", EntryPoint = "initialize_runtime", ExactSpelling = true),
         System.Runtime.InteropServices.WasmImportLinkage]
        private static extern int PeerInitializeRuntime();

        /** @brief Execute public codecs, the complete PAL record, and a real denied native open. */
        private static void VerifyPublicBinding()
        {
            const long signed = -4294967299L;
            if (Uwvm.RosWasm.Codecs.Int64.Decode(Uwvm.RosWasm.Codecs.Int64.Encode(signed)) != signed)
            {
                throw new InvalidOperationException("Public signed i64 codec failed");
            }
            const string text = "A\u00e9\u4e2d\ud83d\ude80";
            if (Uwvm.RosWasm.Codecs.String.Decode(Uwvm.RosWasm.Codecs.String.Encode(text)) != text)
            {
                throw new InvalidOperationException("Public complete UTF-8 codec failed");
            }
            var value = new Uwvm.Pal.Ros1.ros1_noetic_devel.Ros1Pal_device_msgsBatteryState();
            value.field_chargeState = -3;
            value.field_batteryPercentage = 37.5f;
            byte[] expected = { 0xfd, 0x00, 0x00, 0x16, 0x42 };
            byte[] bytes = Uwvm.Pal.Ros1.ros1_noetic_devel.Ros1Pal_device_msgsBatteryState.Encode(value);
            if (!bytes.AsSpan().SequenceEqual(expected))
            {
                throw new InvalidOperationException("Whole PAL canonical record differs");
            }
            var decoded = Uwvm.Pal.Ros1.ros1_noetic_devel.Ros1Pal_device_msgsBatteryState.Decode(bytes);
            if (decoded.field_chargeState != -3 || decoded.field_batteryPercentage != 37.5f)
            {
                throw new InvalidOperationException("Whole PAL typed decode differs");
            }
            byte[][] malformed = { new byte[4], new byte[6], new byte[] { 1, 0, 0, 0xc0, 0x7f } };
            int rejected = 0;
            foreach (byte[] bad in malformed)
            {
                try
                {
                    Uwvm.Pal.Ros1.ros1_noetic_devel.Ros1Pal_device_msgsBatteryState.Decode(bad);
                    throw new InvalidOperationException("Malformed PAL record accepted");
                }
                catch (ArgumentException)
                {
                    rejected++;
                }
            }
            if (rejected != 3)
            {
                throw new InvalidOperationException("Actual rejection count differs");
            }
            var session = new Uwvm.RosWasm.Session(new Uwvm.RosWasm.NativeTransport());
            session.CheckAbi();
            try
            {
                session.Open("ungranted-public-clr-probe");
                throw new InvalidOperationException("Ungrant access succeeded");
            }
            catch (Uwvm.RosWasm.RosException denied)
            {
                if (denied.Result.Error != 13)
                {
                    throw;
                }
            }
            if (!session.CloseChecked().Succeeded)
            {
                throw new InvalidOperationException("Public session cleanup failed");
            }
        }

        /** @param args No arguments; every check consumes actual native imports. */
        public static int Main(string[] args)
        {
            VerifyPublicBinding();
            if (args.Length != 0 || InitializeRuntime() != 0 || PeerInitializeRuntime() != 0 ||
                InitializationCount() != 1 || PeerInitializationCount() != 1 || CleanupCounts() != 0 ||
                PeerCleanupCounts() != 0 || CheckedAdd(2, 3) != 5L || CheckedAdd(-7, 2) != 0xfffffffbL ||
                CheckedAdd(int.MaxValue, 1) != (1L << 32) || CleanupCounts() != ((1L << 32) | 3L) ||
                PeerCleanupCounts() != 0 || PeerCheckedAdd(5, 8) != 13L || PeerCleanupCounts() != 1L ||
                CleanupCounts() != ((1L << 32) | 3L) || InitializationCount() != 1 || PeerInitializationCount() != 1)
            {
                throw new InvalidOperationException("Actual shared-module result or catch/finally counters differ");
            }
            Console.WriteLine(
                "{\"public_api\":true,\"vendor_roundtrips\":1,\"bad_wire_rejections\":3,\"denied_open\":13,\"shared_math\":true,\"math_counts\":" +
                CleanupCounts() + ",\"peer_counts\":" + PeerCleanupCounts() + ",\"math_initializations\":" +
                InitializationCount() + ",\"peer_initializations\":" + PeerInitializationCount() + "}");
            return 0;
        }
    }
}
