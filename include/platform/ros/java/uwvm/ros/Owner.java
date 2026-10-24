package uwvm.ros;

import java.util.Arrays;

/**
 * @brief Retain one explicit capability with checked synchronous lifetime.
 * @details Acquisition confers only the authority already granted to its alias.
 * Serialize all access to an owner. No finalizer, executor, retry or implicit
 * close runs; closeChecked retires local ownership before its one host attempt.
 */
public final class Owner
{
    private long handle;
    private boolean active;
    private boolean busy;

    /** @brief Construct only after successful acquisition. @param handle Full owned i64. */
    private Owner(long handle)
    {
        this.handle = handle;
        active = true;
    }

    /** @brief Own the complete result of an attempted capability acquisition. */
    public static final class Acquisition
    {
        /** @brief Actual validation/version/open errno; zero means owner is present. */
        public int status;
        /** @brief Newly owned capability on zero status, otherwise null. */
        public Owner owner;
    }

    /**
     * @brief Preserve transport status and independently observed length-slot facts.
     * @details bytes is an owned complete successful payload. required is valid
     * only when requiredPresent is true; errno 90/110 never authorizes replay.
     */
    public static final class Reply
    {
        /** @brief Primary actual or subsequent local validation errno. */
        public int status;
        /** @brief True only when a response-bearing import actually ran. */
        public boolean rpcPresent;
        /** @brief Original import errno, retained after local codec rejection. */
        public int rpcStatus;
        /** @brief Whether the sentinel length slot was actually overwritten. */
        public boolean requiredPresent;
        /** @brief Exact full i64 length bits when present; never synthesized. */
        public long required;
        /** @brief Owned complete successful canonical bytes, never unused capacity. */
        public byte[] bytes = new byte[0];

        /** @brief Create a local failure without an import. @param status Errno. @return Owned report. */
        public static Reply failure(int status)
        {
            Reply reply = new Reply();
            reply.status = status;
            return reply;
        }
    }

    /**
     * @brief Return a complete typed value with its unchanged transport evidence.
     * @details value remains null on failure. correlation contains a nonzero
     * service ticket or action goal only when the selected operation uses one.
     */
    public static final class Value<T>
    {
        /** @brief Owned transport facts and canonical bytes. */
        public final Reply transport;
        /** @brief Newly decoded complete typed value; null on failure. */
        public T value;
        /** @brief Exact ticket/goal bits, including bit 63; zero when absent. */
        public long correlation;
        /** @brief Action terminal kind 2..4, or zero for an untagged value. */
        public int kind;

        /** @brief Preserve a report before decoding. @param transport Owned report. */
        public Value(Reply transport)
        {
            this.transport = transport;
        }
    }

    /**
     * @brief Acquire exactly one explicitly granted nonempty capability alias.
     * @param alias Borrowed strict Unicode alias of at most 255 UTF-8 bytes.
     * @return Owned acquisition report; only success creates a close obligation.
     * @details All validation and allocation precede the open import. No guest
     * pointer survives the synchronous import, and no failed open is replayed.
     */
    public static Acquisition acquire(String alias)
    {
        Acquisition result = new Acquisition();
        byte[] name;
        try
        {
            byte[] encoded = Wire.string(alias, 255);
            name = Arrays.copyOfRange(encoded, 4, encoded.length);
        }
        catch(IllegalArgumentException invalid)
        {
            result.status = 22;
            return result;
        }
        byte[] output = new byte[8];
        Owner next = new Owner(0);
        if(Raw.abi_version() != 1)
        {
            result.status = 22;
            return result;
        }
        result.status = Raw.capability_open(0, Wasi.address(name), name.length, Wasi.address(output));
        if(result.status == 0)
        {
            next.handle = Wire.get64(output, 0);
            result.owner = next;
        }
        return result;
    }

    /** @brief Begin a serialized operation. @return Zero, closed 9, or reentry 17. */
    private int enter()
    {
        if(!active)
        {
            return 9;
        }
        if(busy)
        {
            return 17;
        }
        busy = true;
        return 0;
    }

    /**
     * @brief Retire this owner before its sole host close attempt.
     * @return Independent actual close errno; closed returns 9 and reentry 17.
     * @details Failed close is never retried. Closing does not cancel goals or
     * stop robot motion, and this owner cannot subsequently issue operations.
     */
    public int closeChecked()
    {
        int status = enter();
        if(status != 0)
        {
            return status;
        }
        long retired = handle;
        active = false;
        handle = 0;
        try
        {
            return Raw.capability_close(retired);
        }
        finally
        {
            busy = false;
        }
    }

    /**
     * @brief Ask the host to revoke the capability's independently defined authority.
     * @return Actual revoke errno, closed 9, or reentry 17.
     * @details Revocation retains the local close obligation. It supplies no
     * motion-stop guarantee and performs no implicit close or cancellation.
     */
    public int revoke()
    {
        int status = enter();
        if(status != 0)
        {
            return status;
        }
        try
        {
            return Raw.capability_revoke(handle);
        }
        finally
        {
            busy = false;
        }
    }

    /**
     * @brief Activate one retained topic subscription or service advertisement.
     * @param service True for service_advertise; false for topic_subscribe.
     * @return Actual activation errno, closed 9, or reentry 17.
     * @details The selected owner must have that independently granted role.
     */
    public int activate(boolean service)
    {
        int status = enter();
        if(status != 0)
        {
            return status;
        }
        try
        {
            return service ? Raw.service_advertise(handle) : Raw.topic_subscribe(handle);
        }
        finally
        {
            busy = false;
        }
    }

    /**
     * @brief Publish one complete already-encoded typed topic value exactly once.
     * @param bytes Borrowed stable complete canonical payload, at most 4193786 bytes.
     * @return Original publish errno; local invalid input 22 precedes any import.
     * @details No buffer or pointer is retained and no failed effect is replayed.
     */
    public int publish(byte[] bytes)
    {
        if(bytes == null || bytes.length > 4193786)
        {
            return 22;
        }
        int status = enter();
        if(status != 0)
        {
            return status;
        }
        try
        {
            return Raw.topic_publish(handle, 0, Wasi.address(bytes), bytes.length);
        }
        finally
        {
            busy = false;
        }
    }

    /**
     * @brief Consume one queued topic, service-request or advertised-action event.
     * @param capacity Exact finite response capacity in 0..4193786 bytes.
     * @return Owned transport evidence; idle 11 is a result, never a hidden loop.
     * @details A capacity failure may consume an event; no automatic resize/retry
     * occurs. The owner remains live until explicit closeChecked.
     */
    public Reply poll(int capacity)
    {
        return exchange(0, new byte[0], capacity, true);
    }

    /**
     * @brief Perform one exact response-bearing core ABI operation on this owner.
     * @param operation Explicit Operations constant; it conveys no permission.
     * @param request Borrowed complete canonical request bytes.
     * @param capacity Exact finite response capacity in 0..4193786 bytes.
     * @return Owned complete report; unsupported selector returns 95.
     * @details Handles and pointers never escape; errors 90/110 preserve actual
     * length-slot observations and never cause automatic replay.
     */
    public Reply request(int operation, byte[] request, int capacity)
    {
        return exchange(operation, request, capacity, false);
    }

    /**
     * @brief Keep import execution and successful-payload validation transactional.
     * @param operation Exact operation selector for nonpoll requests.
     * @param request Borrowed canonical request.
     * @param capacity Finite output capacity.
     * @param polling True only for event_poll.
     * @return Owned report with original errno and actual length-slot state.
     */
    private Reply exchange(int operation, byte[] request, int capacity, boolean polling)
    {
        if(request == null || request.length > 4193786 || capacity < 0 || capacity > 4193786)
        {
            return Reply.failure(22);
        }
        Reply reply = new Reply();
        byte[] output = new byte[capacity];
        byte[] length = new byte[8];
        Arrays.fill(length, (byte)255);
        int status = enter();
        if(status != 0)
        {
            return Reply.failure(status);
        }
        try
        {
            reply.status =
                polling ? Raw.event_poll(handle, 0, Wasi.address(output), capacity, Wasi.address(length))
                        : Operations.invoke(operation, handle, Wasi.address(request), request.length, Wasi.address(output), capacity, Wasi.address(length));
            reply.rpcPresent = polling || Operations.supported(operation);
            reply.rpcStatus = reply.status;
            reply.required = Wire.get64(length, 0);
            reply.requiredPresent = reply.required != -1L;
            if(!reply.requiredPresent)
            {
                reply.required = 0;
            }
            if(reply.status == 0)
            {
                if(!reply.requiredPresent || reply.required < 0 || reply.required > capacity)
                {
                    reply.status = 22;
                }
                else
                {
                    reply.bytes = Arrays.copyOf(output, (int)reply.required);
                }
            }
        }
        finally
        {
            busy = false;
        }
        return reply;
    }
}
