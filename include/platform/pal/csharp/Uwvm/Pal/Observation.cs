using System;
using System.IO;
using System.Text;
using Uwvm.RosWasm;

namespace Uwvm.Pal
{
    /**
     * @brief Preserve whole typed Pal observations and actual independent transport facts.
     * @details Concrete facades decode and reencode every original record field
     * before committing values. Returned records, arrays and strings are owned;
     * acquired subscription handles are already closed once before return.
     */
    public static class Observation
    {
        /** @brief Preserve independent primary, length and once-only close observations. */
        public sealed class Exchange
        {
            public uint Primary, Cleanup, RpcStatus;
            public bool CleanupPresent, RpcPresent, RequiredPresent;
            public ulong Required;
            public byte[] Wire = Array.Empty<byte>();
            public uint Status => Primary != 0 ? Primary : Cleanup;
        }

        /**
         * @brief Read one complete sample through the actual public session binding.
         * @param alias Explicit independently granted subscription alias.
         * @param capacity Registered whole-record byte bound.
         * @param attempts Idle-only poll credits in 1..250, separated by twenty milliseconds.
         * @return Owned bytes and independent cleanup facts, with no retained capability.
         * @details Only errno11 permits another poll. No failed receive is resized;
         * no timeout or admitted operation is replayed. A close is attempted once.
         */
        public static Exchange WaitSample(string alias, int capacity, int attempts)
        {
            Exchange facts = new Exchange();
            if (attempts < 1 || attempts > 250 || capacity < 0 || capacity > Codecs.MaximumOutput)
            {
                facts.Primary = 22;
                return facts;
            }
            Capability owner = null;
            try
            {
                Session session = new Session(new NativeTransport(), 1);
                session.CheckAbi();
                owner = session.Open(alias);
                facts.Primary = owner.Invoke("topic_subscribe").Error;
                for (int attempt = 0; facts.Primary == 0 && attempt < attempts; ++attempt)
                {
                    Uwvm.RosWasm.Result received = owner.Invoke("event_poll", capacity: capacity);
                    facts.Primary = received.Error;
                    facts.RequiredPresent = received.Required.HasValue;
                    facts.Required = received.Required ?? 0;
                    if (received.Error == 0)
                    {
                        facts.Wire = received.Data;
                        break;
                    }
                    if (received.Error != 11 || attempt + 1 == attempts)
                    {
                        break;
                    }
                    System.Threading.Thread.Sleep(20);
                    facts.Primary = 0;
                }
            }
            catch (RosException error)
            {
                facts.Primary = error.Result.Error;
            }
            catch (ArgumentException)
            {
                facts.Primary = 22;
            }
            finally
            {
                if (owner != null)
                {
                    facts.CleanupPresent = true;
                    facts.Cleanup = owner.CloseChecked().Error;
                }
            }
            return facts;
        }

        /** @brief Own a complete original record and its finished native exchange facts. */
        public sealed class Result<T>
            where T : class
        {
            /** @brief Owned operation, poll, length and cleanup report without a live handle. */
            public readonly Exchange Exchange;
            /** @brief Complete owned original record; null until validation commits. */
            public T Response;
            /** @brief Newly owned canonical bytes encoded from every decoded original field. */
            public byte[] Canonical;

            /**
             * @brief Adopt the complete exchange without acquiring or retaining a capability.
             * @param exchange Owned completed operation report with independent close facts.
             * @details Concrete record facades commit the response and canonical bytes together.
             */
            public Result(Exchange exchange)
            {
                Exchange = exchange;
            }
        }

        /**
         * @brief Emit every canonical record byte with all actual transport and cleanup facts.
         * @param result Borrowed completed typed result; the caller retains its managed arrays.
         * @return First operation, cleanup or output errno clamped to 125; zero includes flush.
         * @details Whole-record validation failure emits no partial record. This
         * formatter acquires no owner and issues no ROS call; stdout I/O failure
         * yields 5 only when no prior operation or cleanup failure exists.
         */
        public static int Write<T>(Result<T> result)
            where T : class
        {
            Exchange facts = result.Exchange;
            uint status = facts.Status;
            StringBuilder output = new StringBuilder();
            output.Append("{\"primary\":")
                .Append(facts.Primary)
                .Append(",\"cleanup\":")
                .Append(facts.Cleanup)
                .Append(",\"cleanup_present\":")
                .Append(facts.CleanupPresent ? 1 : 0)
                .Append(",\"response_present\":")
                .Append(result.Response != null ? 1 : 0)
                .Append(",\"rpc_present\":")
                .Append(facts.RpcPresent ? 1 : 0)
                .Append(",\"rpc_status\":")
                .Append(facts.RpcStatus)
                .Append(",\"required_present\":")
                .Append(facts.RequiredPresent ? 1 : 0)
                .Append(",\"required\":")
                .Append(facts.Required)
                .Append(",\"encoding\":0,\"wire_hex\":\"");
            if (result.Canonical != null)
            {
                const string digits = "0123456789abcdef";
                foreach (byte item in result.Canonical)
                {
                    output.Append(digits[item >> 4]).Append(digits[item & 15]);
                }
            }
            output.Append("\"}");
            try
            {
                Console.WriteLine(output.ToString());
                Console.Out.Flush();
            }
            catch (IOException)
            {
                if (status == 0)
                {
                    status = 5;
                }
            }
            return (int)Math.Min(status, 125u);
        }
    }
}
