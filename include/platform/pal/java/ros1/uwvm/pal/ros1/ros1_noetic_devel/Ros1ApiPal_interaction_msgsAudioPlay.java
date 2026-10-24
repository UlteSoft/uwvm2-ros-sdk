package uwvm.pal.ros1.ros1_noetic_devel;

import java.util.Arrays;
import uwvm.ros.ActionSet;
import uwvm.ros.Operations;
import uwvm.ros.Owner;
import uwvm.ros.Wire;

/**
 * @brief Complete typed ROS 1 pal_interaction_msgs/AudioPlay action interface.
 * @details Concrete component records preserve the complete original schema.
 * An Owner/ActionSet is explicitly acquired and closed by the caller. Each
 * operation requires its independently granted role and qualified native
 * identity. This facade neither invents identities nor registers endpoints.
 */
public final class Ros1ApiPal_interaction_msgsAudioPlay
{
    /** @brief Prevent construction of this static typed interface. */
    private Ros1ApiPal_interaction_msgsAudioPlay()
    {
    }

    /**
     * @brief Send a complete typed goal and retain its validated exact local ownership.
     * @param actions Borrowed live independently acquired action role set and goal table.
     * @param value Borrowed complete goal record.
     * @return Owned report and nonzero goal ID only after successful validated send.
     * @details All inputs are borrowed for this synchronous call. Returned
     * values/bytes are owned. Serialize retained owners; no hidden acquisition,
     * retry, resize, callback or permission expansion occurs. Local invalid
     * values/wire yield22 while original transport errno/length facts remain.
     */
    public static Owner.Value<Long> send(ActionSet actions, Ros1Pal_interaction_msgsAudioPlayGoal value)
    {
        if(actions == null)
        {
            return new Owner.Value<Long>(Owner.Reply.failure(22));
        }
        byte[] input;
        try
        {
            input = Ros1Pal_interaction_msgsAudioPlayGoal.encode(value);
        }
        catch(IllegalArgumentException invalid)
        {
            return new Owner.Value<Long>(Owner.Reply.failure(22));
        }
        Owner.Reply reply = actions.send(input);
        Owner.Value<Long> result = new Owner.Value<Long>(reply);
        if(reply.status == 0)
        {
            result.correlation = Wire.get64(reply.bytes, 0);
            result.value = result.correlation;
        }
        return result;
    }

    /**
     * @brief Receive one complete typed feedback for a locally owned exact goal.
     * @param actions Borrowed live independently acquired action role set and goal table.
     * @param goal Full nonzero locally tracked goal ID.
     * @return Owned complete typed value; only validated terminal result removes ownership.
     * @details All inputs are borrowed for this synchronous call. Returned
     * values/bytes are owned. Serialize retained owners; no hidden acquisition,
     * retry, resize, callback or permission expansion occurs. Local invalid
     * values/wire yield22 while original transport errno/length facts remain.
     */
    public static Owner.Value<Ros1Pal_interaction_msgsAudioPlayFeedback> feedback(ActionSet actions, long goal)
    {
        if(actions == null)
        {
            return new Owner.Value<Ros1Pal_interaction_msgsAudioPlayFeedback>(Owner.Reply.failure(22));
        }
        Owner.Reply reply = actions.receive(goal, false, Ros1Pal_interaction_msgsAudioPlayFeedback.MAX_WIRE_BYTES + 8);
        Owner.Value<Ros1Pal_interaction_msgsAudioPlayFeedback> result = new Owner.Value<Ros1Pal_interaction_msgsAudioPlayFeedback>(reply);
        if(reply.status == 0)
        {
            try
            {
                if(reply.bytes.length < 8)
                {
                    throw new IllegalArgumentException("Truncated correlation envelope");
                }
                result.correlation = goal;
                Ros1Pal_interaction_msgsAudioPlayFeedback next =
                    Ros1Pal_interaction_msgsAudioPlayFeedback.decode(Arrays.copyOfRange(reply.bytes, 8, reply.bytes.length));
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
     * @brief Receive one complete typed result for a locally owned exact goal.
     * @param actions Borrowed live independently acquired action role set and goal table.
     * @param goal Full nonzero locally tracked goal ID.
     * @return Owned complete typed value; only validated terminal result removes ownership.
     * @details All inputs are borrowed for this synchronous call. Returned
     * values/bytes are owned. Serialize retained owners; no hidden acquisition,
     * retry, resize, callback or permission expansion occurs. Local invalid
     * values/wire yield22 while original transport errno/length facts remain.
     */
    public static Owner.Value<Ros1Pal_interaction_msgsAudioPlayResult> result(ActionSet actions, long goal)
    {
        if(actions == null)
        {
            return new Owner.Value<Ros1Pal_interaction_msgsAudioPlayResult>(Owner.Reply.failure(22));
        }
        Owner.Reply reply = actions.receive(goal, true, Ros1Pal_interaction_msgsAudioPlayResult.MAX_WIRE_BYTES + 9);
        Owner.Value<Ros1Pal_interaction_msgsAudioPlayResult> result = new Owner.Value<Ros1Pal_interaction_msgsAudioPlayResult>(reply);
        if(reply.status == 0)
        {
            try
            {
                if(reply.bytes.length < 9)
                {
                    throw new IllegalArgumentException("Truncated correlation envelope");
                }
                result.correlation = goal;
                Ros1Pal_interaction_msgsAudioPlayResult next =
                    Ros1Pal_interaction_msgsAudioPlayResult.decode(Arrays.copyOfRange(reply.bytes, 9, reply.bytes.length));
                int committed = actions.commitTerminal(goal);
                if(committed != 0)
                {
                    reply.status = committed;
                    return result;
                }
                result.kind = reply.bytes[8];
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
     * @brief Activate one independently granted action-advertise owner.
     * @param owner Borrowed live capability with this exact operation's independent grant.
     * @return Owned empty-success report; no action callback or hidden loop is installed.
     * @details All inputs are borrowed for this synchronous call. Returned
     * values/bytes are owned. Serialize retained owners; no hidden acquisition,
     * retry, resize, callback or permission expansion occurs. Local invalid
     * values/wire yield22 while original transport errno/length facts remain.
     */
    public static Owner.Reply advertise(Owner owner)
    {
        if(owner == null)
        {
            return Owner.Reply.failure(22);
        }
        Owner.Reply reply = owner.request(Operations.ACTION_ADVERTISE, new byte[0], 0);
        if(reply.status == 0 && reply.bytes.length != 0)
        {
            reply.status = 22;
        }
        return reply;
    }

    /**
     * @brief Poll one complete advertised goal and its exact native-correlated ID.
     * @param owner Borrowed live capability with this exact operation's independent grant.
     * @return Owned complete goal and nonzero correlation; idle remains errno11.
     * @details All inputs are borrowed for this synchronous call. Returned
     * values/bytes are owned. Serialize retained owners; no hidden acquisition,
     * retry, resize, callback or permission expansion occurs. Local invalid
     * values/wire yield22 while original transport errno/length facts remain.
     */
    public static Owner.Value<Ros1Pal_interaction_msgsAudioPlayGoal> poll(Owner owner)
    {
        if(owner == null)
        {
            return new Owner.Value<Ros1Pal_interaction_msgsAudioPlayGoal>(Owner.Reply.failure(22));
        }
        Owner.Reply reply = owner.poll(Ros1Pal_interaction_msgsAudioPlayGoal.MAX_WIRE_BYTES + 8);
        Owner.Value<Ros1Pal_interaction_msgsAudioPlayGoal> result = new Owner.Value<Ros1Pal_interaction_msgsAudioPlayGoal>(reply);
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
                Ros1Pal_interaction_msgsAudioPlayGoal next =
                    Ros1Pal_interaction_msgsAudioPlayGoal.decode(Arrays.copyOfRange(reply.bytes, 8, reply.bytes.length));
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
     * @brief Respond once with complete typed action feedback.
     * @param owner Borrowed live capability with this exact operation's independent grant.
     * @param goal Exact nonzero incoming advertised-goal ID.
     * @param value Borrowed complete typed response body.
     * @return Owned empty-success report or actual host error; terminal authority is host-enforced.
     * @details All inputs are borrowed for this synchronous call. Returned
     * values/bytes are owned. Serialize retained owners; no hidden acquisition,
     * retry, resize, callback or permission expansion occurs. Local invalid
     * values/wire yield22 while original transport errno/length facts remain.
     */
    public static Owner.Reply respondFeedback(Owner owner, long goal, Ros1Pal_interaction_msgsAudioPlayFeedback value)
    {
        if(owner == null || goal == 0)
        {
            return Owner.Reply.failure(22);
        }
        byte[] input;
        try
        {
            input = frame(Ros1Pal_interaction_msgsAudioPlayFeedback.encode(value), goal, 1);
        }
        catch(IllegalArgumentException invalid)
        {
            return Owner.Reply.failure(22);
        }
        Owner.Reply reply = owner.request(Operations.ACTION_RESPOND, input, 0);
        if(reply.status == 0 && reply.bytes.length != 0)
        {
            reply.status = 22;
        }
        return reply;
    }

    /**
     * @brief Respond once with complete typed action terminal result.
     * @param owner Borrowed live capability with this exact operation's independent grant.
     * @param goal Exact nonzero incoming advertised-goal ID.
     * @param kind Explicit registered terminal-kind value in 2..4.
     * @param value Borrowed complete typed response body.
     * @return Owned empty-success report or actual host error; terminal authority is host-enforced.
     * @details All inputs are borrowed for this synchronous call. Returned
     * values/bytes are owned. Serialize retained owners; no hidden acquisition,
     * retry, resize, callback or permission expansion occurs. Local invalid
     * values/wire yield22 while original transport errno/length facts remain.
     */
    public static Owner.Reply respondResult(Owner owner, long goal, int kind, Ros1Pal_interaction_msgsAudioPlayResult value)
    {
        if(owner == null || goal == 0 || kind < 2 || kind > 4)
        {
            return Owner.Reply.failure(22);
        }
        byte[] input;
        try
        {
            input = frame(Ros1Pal_interaction_msgsAudioPlayResult.encode(value), goal, kind);
        }
        catch(IllegalArgumentException invalid)
        {
            return Owner.Reply.failure(22);
        }
        Owner.Reply reply = owner.request(Operations.ACTION_RESPOND, input, 0);
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
