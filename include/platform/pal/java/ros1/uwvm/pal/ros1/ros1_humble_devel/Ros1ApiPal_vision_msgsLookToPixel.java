package uwvm.pal.ros1.ros1_humble_devel;

import java.util.Arrays;
import uwvm.ros.ActionSet;
import uwvm.ros.Operations;
import uwvm.ros.Owner;
import uwvm.ros.Wire;

/**
 * @brief Complete typed ROS 1 pal_vision_msgs/LookToPixel service interface.
 * @details Concrete component records preserve the complete original schema.
 * An Owner/ActionSet is explicitly acquired and closed by the caller. Each
 * operation requires its independently granted role and qualified native
 * identity. This facade neither invents identities nor registers endpoints.
 */
public final class Ros1ApiPal_vision_msgsLookToPixel
{
    /** @brief Prevent construction of this static typed interface. */
    private Ros1ApiPal_vision_msgsLookToPixel()
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
    public static Owner.Value<Ros1Pal_vision_msgsLookToPixelResponse> call(Owner owner, Ros1Pal_vision_msgsLookToPixelRequest value)
    {
        if(owner == null)
        {
            return new Owner.Value<Ros1Pal_vision_msgsLookToPixelResponse>(Owner.Reply.failure(22));
        }
        byte[] input;
        try
        {
            input = Ros1Pal_vision_msgsLookToPixelRequest.encode(value);
        }
        catch(IllegalArgumentException invalid)
        {
            return new Owner.Value<Ros1Pal_vision_msgsLookToPixelResponse>(Owner.Reply.failure(22));
        }
        Owner.Reply reply = owner.request(Operations.SERVICE_CALL, input, Ros1Pal_vision_msgsLookToPixelResponse.MAX_WIRE_BYTES);
        Owner.Value<Ros1Pal_vision_msgsLookToPixelResponse> result = new Owner.Value<Ros1Pal_vision_msgsLookToPixelResponse>(reply);
        if(reply.status == 0)
        {
            try
            {
                Ros1Pal_vision_msgsLookToPixelResponse next = Ros1Pal_vision_msgsLookToPixelResponse.decode(reply.bytes);
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
    public static Owner.Value<Ros1Pal_vision_msgsLookToPixelRequest> poll(Owner owner)
    {
        if(owner == null)
        {
            return new Owner.Value<Ros1Pal_vision_msgsLookToPixelRequest>(Owner.Reply.failure(22));
        }
        Owner.Reply reply = owner.poll(Ros1Pal_vision_msgsLookToPixelRequest.MAX_WIRE_BYTES + 8);
        Owner.Value<Ros1Pal_vision_msgsLookToPixelRequest> result = new Owner.Value<Ros1Pal_vision_msgsLookToPixelRequest>(reply);
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
                Ros1Pal_vision_msgsLookToPixelRequest next =
                    Ros1Pal_vision_msgsLookToPixelRequest.decode(Arrays.copyOfRange(reply.bytes, 8, reply.bytes.length));
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
    public static Owner.Reply respond(Owner owner, long ticket, Ros1Pal_vision_msgsLookToPixelResponse value)
    {
        if(owner == null || ticket == 0)
        {
            return Owner.Reply.failure(22);
        }
        byte[] input;
        try
        {
            input = frame(Ros1Pal_vision_msgsLookToPixelResponse.encode(value), ticket, 0);
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
