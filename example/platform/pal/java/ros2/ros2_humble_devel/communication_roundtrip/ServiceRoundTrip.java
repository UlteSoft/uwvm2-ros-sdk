package uwvm.pal.communication;

import uwvm.ros.Raw;
import uwvm.ros.Wasi;
import uwvm.ros.Wire;

/**
 * Genuine guest-side AddTwoInts request and response assertions.
 * The restricted host owns ROS serialization and middleware. No JVM or native
 * SDK client executes this application. Static arrays retain imported memory
 * through every synchronous operation; a timed-out request is never replayed.
 */
public final class ServiceRoundTrip
{
    private static final int OFFSET = 8;
    private static final long BEFORE = 0x0314159265358979L;
    private static final long AFTER = 0x2718281828459045L;
    private static final byte[] OWNER = new byte[24];
    private static final byte[] REQUEST = new byte[32];
    private static final byte[] REPLY = new byte[24];
    private static final byte[] LENGTH = new byte[24];
    private static byte[] alias;
    private static int attempted;
    private static int validated;
    private static int closes;
    private static long firstReply;
    private static long secondReply;

    private ServiceRoundTrip() {}

    private static void require(boolean condition, String message)
    {
        if(!condition) throw new IllegalStateException(message);
    }

    private static int request(long owner, long a, long b)
    {
        Wire.put64(REQUEST, OFFSET, a);
        Wire.put64(REQUEST, OFFSET + 8, b);
        Wire.put64(LENGTH, OFFSET, -1L);
        // A length-only write cannot accidentally validate an old reply.
        Wire.put64(REPLY, OFFSET, ~(a + b));
        ++attempted;
        int result = Raw.service_call(owner, 0, Wasi.address(REQUEST) + OFFSET, 16,
            Wasi.address(REPLY) + OFFSET, 8, Wasi.address(LENGTH) + OFFSET);
        guards();
        require(Wire.get64(REQUEST, OFFSET) == a && Wire.get64(REQUEST, OFFSET + 8) == b,
            "borrowed request bytes changed");
        return result;
    }

    private static void initialize(byte[] bytes)
    {
        Wire.put64(bytes, 0, BEFORE);
        Wire.put64(bytes, bytes.length - 8, AFTER);
    }

    private static void guard(byte[] bytes)
    {
        require(Wire.get64(bytes, 0) == BEFORE && Wire.get64(bytes, bytes.length - 8) == AFTER,
            "host write escaped caller-owned payload extent");
    }

    private static void guards()
    {
        guard(OWNER);
        guard(REQUEST);
        guard(REPLY);
        guard(LENGTH);
    }

    private static int close(long owner)
    {
        ++closes;
        int result = Raw.capability_close(owner);
        guards();
        return result;
    }

    private static void response(long expected)
    {
        require(Wire.get64(LENGTH, OFFSET) == 8, "complete eight-byte response required");
        long actual = Wire.get64(REPLY, OFFSET);
        require(actual == expected, "fresh causal service sum differs");
        if(validated == 0) firstReply = actual;
        else secondReply = actual;
        ++validated;
    }

    /**
     * @param args Case, external grant alias, fresh first operand, second operand.
     * The same complete Wasm serves all cases and external ROS deployments.
     */
    public static void main(String[] args)
    {
        require(args.length == 4, "case alias a b required");
        String kind = args[0];
        int expected;
        if(kind.equals("permitted")) expected = 0;
        else if(kind.equals("denied")) expected = 13;
        else if(kind.equals("stale")) expected = 9;
        else if(kind.equals("timeout")) expected = 110;
        else throw new IllegalArgumentException("unsupported communication case");
        long a = Long.parseLong(args[2]);
        long b = Long.parseLong(args[3]);
        require(a >= -1000000000000L && a <= 1000000000000L
            && b >= -1000000000000L && b <= 1000000000000L, "bounded operands required");
        alias = Wire.encodeText(args[1]);
        require(alias.length > 0 && alias.length <= 255 && args[1].indexOf('\0') < 0,
            "bounded external alias required");
        require(Raw.abi_version() == 1, "ROS2 core ABI1 required");
        initialize(OWNER);
        initialize(REQUEST);
        initialize(REPLY);
        initialize(LENGTH);
        int opened = Raw.capability_open(0, Wasi.address(alias), alias.length, Wasi.address(OWNER) + OFFSET);
        guards();
        int status = opened;
        int cleanup = 0;
        if(kind.equals("denied") && status == 0)
        {
            // An unexpected grant must fail before any service request.
            cleanup = close(Wire.get64(OWNER, OFFSET));
            throw new IllegalStateException("denied alias unexpectedly opened; cleanup=" + cleanup);
        }
        if(!kind.equals("denied"))
        {
            // A failed open cannot qualify closed-handle or disconnect behavior.
            require(opened == 0, "service case did not acquire its initial capability; errno=" + opened);
            long owner = Wire.get64(OWNER, OFFSET);
            require(owner != 0, "nonzero module-owned handle required");
            boolean closed = false;
            try
            {
                if(kind.equals("stale"))
                {
                    cleanup = close(owner);
                    closed = true;
                    require(cleanup == 0, "initial close failed");
                    status = request(owner, a, b);
                }
                else
                {
                    status = request(owner, a, b);
                    if(status == 0)
                    {
                        response(a + b);
                        require(kind.equals("permitted"), "refused case unexpectedly returned a reply");
                        // A second distinct request rejects a replay of the first sum.
                        status = request(owner, a + 37, b - 11);
                        if(status == 0) response(a + b + 26);
                    }
                }
            }
            finally
            {
                if(!closed) cleanup = close(owner);
            }
        }
        require(status == expected && cleanup == 0, "actual operation/cleanup errno differs");
        require(validated == (expected == 0 ? 2 : 0), "required guest response count differs");
        require(attempted == (kind.equals("permitted") ? 2 : kind.equals("denied") ? 0 : 1),
            "required service call count differs; no timeout replay is allowed");
        require(closes == (kind.equals("denied") ? 0 : 1), "exactly one owned close required after successful open");
        guards();
        System.out.println("{\"sdk09_stage_a_service\":true,\"case\":\"" + kind
            + "\",\"errno\":" + status + ",\"attempted\":" + attempted
            + ",\"guest_replies_validated\":" + validated + ",\"cleanup_errno\":" + cleanup
            + ",\"open_errno\":" + opened + ",\"close_attempts\":" + closes
            + ",\"first_a\":" + a + ",\"first_b\":" + b
            + ",\"first_reply\":" + firstReply + ",\"second_reply\":" + secondReply + "}");
        Wasi.exit(status);
    }
}
