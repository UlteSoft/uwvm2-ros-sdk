/** @details The scalar preload contract preserves each CLR module's own heap
 * and initialization state. The example checks overflow cleanup and isolated
 * counters; public binding probes exercise complete record values and explicit
 * denied access. Positive native vendor traffic is a separate qualification.
 */
using System;
using System.Runtime.InteropServices;

namespace Uwvm.Pal.Preload
{
    /** @brief Export real scalar C# code from the module-owned Mono runtime. */
    public static class Arithmetic
    {
        private static int caught;
        private static int finished;
        private static int initializations;

        static Arithmetic()
        {
            initializations++;
        }

        /** @return Exact low-i32 sum with status zero, or status one for real caught overflow. */
        [UnmanagedCallersOnly(EntryPoint = "checked_add")]
        public static long CheckedAdd(int left, int right)
        {
            try
            {
                long sum = (long)left + right;
                if (sum < int.MinValue || sum > int.MaxValue)
                {
                    throw new OverflowException("i32 overflow");
                }
                return sum & 0xffffffffL;
            }
            catch (OverflowException)
            {
                caught++;
                return 1L << 32;
            }
            finally
            {
                finished++;
            }
        }

        /** @return Actual catch count in high bits and finally count in low bits. */
        [UnmanagedCallersOnly(EntryPoint = "cleanup_counts")]
        public static long CleanupCounts()
        {
            return ((long)caught << 32) | (finished & 0xffffffffL);
        }

        /** @return Actual module-local managed class initializer executions. */
        [UnmanagedCallersOnly(EntryPoint = "initialization_count")]
        public static int InitializationCount()
        {
            return initializations;
        }
    }
}
