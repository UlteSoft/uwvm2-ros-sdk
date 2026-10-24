package uwvm.hello_robot;

import uwvm.ros.Client;

/**
 * @brief Preserve complete typed HelloRobot observations and independent transport facts.
 * @details Each result owns its managed value and canonical bytes. The concrete
 * facade commits them only after decoding and reencoding every original field.
 * The actual subscription owner has already closed exactly once before return.
 */
public final class Observation
{
    /** @brief Prevent construction of this read-only report facade. */
    private Observation()
    {
    }

    /** @brief Own a complete original HelloRobot value and its actual completed exchange. */
    public static final class Result<T>
    {
        /** @brief Owned original operation, length, poll and cleanup evidence. */
        public final Client.Exchange exchange;
        /** @brief Complete owned record; null until whole-record validation succeeds. */
        public T response;
        /** @brief Owned bytes reencoded from every decoded field; null before commit. */
        public byte[] canonical;

        /**
         * @brief Adopt a completed exchange without retaining a capability handle.
         * @param exchange Owned complete operation report with independent cleanup status.
         * @details The concrete typed facade performs transactional record commit.
         */
        public Result(Client.Exchange exchange)
        {
            this.exchange = exchange;
        }
    }

    /**
     * @brief Emit every reencoded record byte and all independent operation/cleanup facts.
     * @param result Borrowed completed typed result; its arrays remain caller-owned.
     * @return First operation, cleanup or output error clamped to 125; zero includes flush.
     * @details The formatter starts no transport operation. Failed whole-record
     * validation emits no partial record. WASI stdout failure yields 5 only when
     * no earlier operation or cleanup failure exists.
     */
    public static int write(Result<?> result)
    {
        Client.Exchange facts = result.exchange;
        StringBuilder output = new StringBuilder();
        output.append("{\"primary\":")
            .append(facts.primary)
            .append(",\"cleanup\":")
            .append(facts.cleanup)
            .append(",\"cleanup_present\":")
            .append(facts.cleanupPresent ? 1 : 0)
            .append(",\"response_present\":")
            .append(result.response != null ? 1 : 0)
            .append(",\"rpc_present\":")
            .append(facts.rpcPresent ? 1 : 0)
            .append(",\"rpc_status\":")
            .append(facts.rpcStatus)
            .append(",\"required_present\":")
            .append(facts.requiredPresent ? 1 : 0)
            .append(",\"required\":")
            .append(facts.required)
            .append(",\"encoding\":0,\"wire_hex\":\"");
        if(result.canonical != null)
        {
            String digits = "0123456789abcdef";
            for(byte item: result.canonical)
            {
                output.append(digits.charAt((item & 255) >>> 4));
                output.append(digits.charAt(item & 15));
            }
        }
        output.append("\"}");
        System.out.println(output.toString());
        System.out.flush();
        int status = facts.status();
        if(status == 0 && System.out.checkError())
        {
            status = 5;
        }
        return status < 0 || status > 125 ? 125 : status;
    }
}
