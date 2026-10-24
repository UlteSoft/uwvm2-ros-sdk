package uwvm.trossen.ros2.ros2_iron;

import java.util.Arrays;
import uwvm.ros.ActionSet;
import uwvm.ros.Operations;
import uwvm.ros.Owner;
import uwvm.ros.Wire;

/**
 * @brief Complete typed ROS 2 interbotix_xs_msgs/srv/OperatingModes service interface.
 * @details Concrete component records preserve the complete original schema.
 * An Owner/ActionSet is explicitly acquired and closed by the caller. Each
 * operation requires its independently granted role and qualified native
 * identity. This facade neither invents identities nor registers endpoints.
 */
public final class Ros2ApiInterbotix_xs_msgsSrvOperatingModes
{
    /** @brief Prevent construction of this static typed interface. */
    private Ros2ApiInterbotix_xs_msgsSrvOperatingModes()
    {
    }

    /**
     * @brief Call one complete typed service exactly once.
     * @param owner Borrowed live capability with this exact operation's independent grant.
     * @param value Borrowed stable complete request.
     * @return Owned complete typed response or actual transport/codec failure.
     * @details All inputs are borrowed for this synchronous call. Returned
     * values/bytes are owned. Serialize retained owners; no hidden acquisition,
     * retry, resize, callback or permission expansion occurs. Local invalid
     * values/wire yield22 while original transport errno/length facts remain.
     */
    public static Owner.Value<Ros2Interbotix_xs_msgsSrvOperatingModes_Response> call(Owner owner, Ros2Interbotix_xs_msgsSrvOperatingModes_Request value)
    {
        if(owner == null)
        {
            return new Owner.Value<Ros2Interbotix_xs_msgsSrvOperatingModes_Response>(Owner.Reply.failure(22));
        }
        byte[] input;
        try
        {
            input = Ros2Interbotix_xs_msgsSrvOperatingModes_Request.encode(value);
        }
        catch(IllegalArgumentException invalid)
        {
            return new Owner.Value<Ros2Interbotix_xs_msgsSrvOperatingModes_Response>(Owner.Reply.failure(22));
        }
        Owner.Reply reply = owner.request(Operations.SERVICE_CALL, input, Ros2Interbotix_xs_msgsSrvOperatingModes_Response.MAX_WIRE_BYTES);
        Owner.Value<Ros2Interbotix_xs_msgsSrvOperatingModes_Response> result = new Owner.Value<Ros2Interbotix_xs_msgsSrvOperatingModes_Response>(reply);
        if(reply.status == 0)
        {
            try
            {
                Ros2Interbotix_xs_msgsSrvOperatingModes_Response next = Ros2Interbotix_xs_msgsSrvOperatingModes_Response.decode(reply.bytes);
                result.value = next;
            }
            catch(IllegalArgumentException invalid)
            {
                reply.status = 22;
            }
        }
        return result;
    }

    /**
     * @brief Activate the caller's retained service-advertise owner.
     * @param owner Borrowed live capability with this exact operation's independent grant.
     * @return Actual activation errno; activation supplies no response grant.
     * @details All inputs are borrowed for this synchronous call. Returned
     * values/bytes are owned. Serialize retained owners; no hidden acquisition,
     * retry, resize, callback or permission expansion occurs. Local invalid
     * values/wire yield22 while original transport errno/length facts remain.
     */
    public static int advertise(Owner owner)
    {
        return owner == null ? 22 : owner.activate(true);
    }

    /**
     * @brief Poll one complete service request with its exact nonzero response ticket.
     * @param owner Borrowed live capability with this exact operation's independent grant.
     * @return Owned complete request and correlation ticket; idle remains errno11.
     * @details All inputs are borrowed for this synchronous call. Returned
     * values/bytes are owned. Serialize retained owners; no hidden acquisition,
     * retry, resize, callback or permission expansion occurs. Local invalid
     * values/wire yield22 while original transport errno/length facts remain.
     */
    public static Owner.Value<Ros2Interbotix_xs_msgsSrvOperatingModes_Request> poll(Owner owner)
    {
        if(owner == null)
        {
            return new Owner.Value<Ros2Interbotix_xs_msgsSrvOperatingModes_Request>(Owner.Reply.failure(22));
        }
        Owner.Reply reply = owner.poll(Ros2Interbotix_xs_msgsSrvOperatingModes_Request.MAX_WIRE_BYTES + 8);
        Owner.Value<Ros2Interbotix_xs_msgsSrvOperatingModes_Request> result = new Owner.Value<Ros2Interbotix_xs_msgsSrvOperatingModes_Request>(reply);
        if(reply.status == 0)
        {
            try
            {
                if(reply.bytes.length < 8)
                {
                    throw new IllegalArgumentException("Truncated correlation envelope");
                }
                result.correlation = Wire.get64(reply.bytes, 0);
                if(result.correlation == 0)
                {
                    throw new IllegalArgumentException("Zero correlation ID");
                }
                Ros2Interbotix_xs_msgsSrvOperatingModes_Request next =
                    Ros2Interbotix_xs_msgsSrvOperatingModes_Request.decode(Arrays.copyOfRange(reply.bytes, 8, reply.bytes.length));
                result.value = next;
            }
            catch(IllegalArgumentException invalid)
            {
                reply.status = 22;
            }
        }
        return result;
    }

    /**
     * @brief Respond once to one exact native-correlated service ticket.
     * @param owner Borrowed live capability with this exact operation's independent grant.
     * @param ticket Nonzero ticket returned by this service's poll.
     * @param value Borrowed complete response record.
     * @return Owned empty-success report or actual response error; no replay.
     * @details All inputs are borrowed for this synchronous call. Returned
     * values/bytes are owned. Serialize retained owners; no hidden acquisition,
     * retry, resize, callback or permission expansion occurs. Local invalid
     * values/wire yield22 while original transport errno/length facts remain.
     */
    public static Owner.Reply respond(Owner owner, long ticket, Ros2Interbotix_xs_msgsSrvOperatingModes_Response value)
    {
        if(owner == null || ticket == 0)
        {
            return Owner.Reply.failure(22);
        }
        byte[] input;
        try
        {
            input = frame(Ros2Interbotix_xs_msgsSrvOperatingModes_Response.encode(value), ticket, 0);
        }
        catch(IllegalArgumentException invalid)
        {
            return Owner.Reply.failure(22);
        }
        Owner.Reply reply = owner.request(Operations.SERVICE_RESPOND, input, 0);
        if(reply.status == 0 && reply.bytes.length != 0)
        {
            reply.status = 22;
        }
        return reply;
    }

    /**
     * @brief Own an exact correlation envelope around a complete typed body.
     * @param body Borrowed complete already-validated canonical bytes.
     * @param id Exact nonzero ticket/goal ID.
     * @param kind Zero for service envelope, 1..4 for action response.
     * @return Newly owned exact envelope; no host operation occurs.
     */
    private static byte[] frame(byte[] body, long id, int kind)
    {
        int prefix = kind == 0 ? 8 : 9;
        byte[] bytes = new byte[body.length + prefix];
        Wire.put64(bytes, 0, id);
        if(kind != 0)
        {
            bytes[8] = (byte)kind;
        }
        System.arraycopy(body, 0, bytes, prefix, body.length);
        return bytes;
    }
}
