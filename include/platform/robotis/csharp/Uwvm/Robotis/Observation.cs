using System;
using System.IO;
using System.Text;
using Uwvm.Ros;

namespace Uwvm.Robotis
{
    /**
     * @brief Preserve whole typed Robotis observations and actual independent transport facts.
     * @details Concrete facades decode and reencode every original record field
     * before committing values. Returned records, arrays and strings are owned;
     * acquired subscription handles are already closed once before return.
     */
    public static class Observation
    {
        /** @brief Own a complete original record and its finished native exchange facts. */
        public sealed class Result<T>
            where T : class
        {
            /** @brief Owned operation, poll, length and cleanup report without a live handle. */
            public readonly Client.Exchange Exchange;
            /** @brief Complete owned original record; null until validation commits. */
            public T Response;
            /** @brief Newly owned canonical bytes encoded from every decoded original field. */
            public byte[] Canonical;

            /**
             * @brief Adopt the complete exchange without acquiring or retaining a capability.
             * @param exchange Owned completed operation report with independent close facts.
             * @details Concrete record facades commit the response and canonical bytes together.
             */
            public Result(Client.Exchange exchange)
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
            Client.Exchange facts = result.Exchange;
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
            if(result.Canonical != null)
            {
                const string digits = "0123456789abcdef";
                foreach(byte item in result.Canonical)
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
            catch(IOException)
            {
                if(status == 0)
                {
                    status = 5;
                }
            }
            return (int)Math.Min(status, 125u);
        }
    }
}
