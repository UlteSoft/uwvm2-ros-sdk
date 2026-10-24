package uwvm.ros;

/**
 * @brief Provide complete bounded std_msgs/String and std_srvs/Trigger values.
 * @details This explicit 256-byte native-ROS profile preserves the entire
 * admitted String/Trigger schema. Strict UTF-8 and exact consumption precede
 * commit. Every exchange retains separate operation and once-only close facts.
 */
public final class Standard
{
    /** @brief Prevent construction of this synchronous value/operation facade. */
    private Standard()
    {
    }

    /** @brief Complete String record, with an owned immutable data value. */
    public static final class StringMessage
    {
        /** @brief Entire native data field, including admitted empty text. */
        public String data;
    }

    /** @brief Complete Trigger response, preserving refusal text without truncation. */
    public static final class TriggerResponse
    {
        /** @brief Original native success Bool; false is a controller refusal. */
        public boolean success;
        /** @brief Entire original native message within the explicit profile. */
        public String message;
    }

    /** @brief Own a complete typed native response and all independent exchange facts. */
    public static final class Result<T>
    {
        /** @brief Owned operation/length/cleanup evidence; acquired handle is already closed. */
        public final Client.Exchange exchange;
        /** @brief Complete decoded value, present even for an admitted native refusal. */
        public T value;

        /** @brief Adopt the finished exchange. @param exchange Owned report; no handle escapes. */
        private Result(Client.Exchange exchange)
        {
            this.exchange = exchange;
        }
    }

    /**
     * @brief Encode the whole String data field before a caller acquires a publisher.
     * @param value Borrowed complete Unicode scalar text, including empty text.
     * @return Newly owned complete canonical bytes, at most 256 bytes.
     * @details Null, malformed or more-than-252-byte UTF-8 text throws
     * IllegalArgumentException locally. This method performs no ROS operation.
     */
    public static byte[] encodeString(String value)
    {
        Wire.Writer writer = new Wire.Writer(256);
        writer.string(value, 252);
        return writer.finish();
    }

    /**
     * @brief Await one complete String value using a single retained subscription.
     * @param alias Borrowed exact independently granted subscription alias.
     * @param attempts Explicit poll credits in 1..250; only idle 11 permits another poll.
     * @return Newly owned complete typed value and original exchange/cleanup facts.
     * @details Every idle pause uses the actual monotonic WASI clock. No hidden
     * executor, resized retry or host JVM exists. Decode failure yields 22.
     */
    public static Result<StringMessage> receiveString(String alias, int attempts)
    {
        Result<StringMessage> result = new Result<>(Client.waitSample(alias, 256, attempts));
        if(result.exchange.primary != 0)
        {
            return result;
        }
        try
        {
            Wire.Reader reader = new Wire.Reader(result.exchange.wire, result.exchange.wire.length);
            StringMessage next = new StringMessage();
            next.data = reader.string(252);
            reader.finish();
            result.value = next;
        }
        catch(IllegalArgumentException invalid)
        {
            result.exchange.primary = 22;
        }
        return result;
    }

    /**
     * @brief Call Trigger once and preserve every response field, including refusal.
     * @param alias Borrowed exact independently granted Trigger call alias.
     * @return Newly owned whole response/report; false native success sets primary 5.
     * @details Empty request is the complete schema. No request is replayed.
     * Bool, UTF-8,251-byte message bound and trailing bytes are all validated;
     * malformed wire yields 22 while original transport errno remains unchanged.
     */
    public static Result<TriggerResponse> callTrigger(String alias)
    {
        Result<TriggerResponse> result = new Result<>(Client.call(alias, new byte[0], 256));
        if(result.exchange.primary != 0)
        {
            return result;
        }
        try
        {
            Wire.Reader reader = new Wire.Reader(result.exchange.wire, result.exchange.wire.length);
            TriggerResponse next = new TriggerResponse();
            next.success = reader.bool();
            next.message = reader.string(251);
            reader.finish();
            result.value = next;
            if(!next.success)
            {
                result.exchange.primary = 5;
            }
        }
        catch(IllegalArgumentException invalid)
        {
            result.exchange.primary = 22;
        }
        return result;
    }
}
