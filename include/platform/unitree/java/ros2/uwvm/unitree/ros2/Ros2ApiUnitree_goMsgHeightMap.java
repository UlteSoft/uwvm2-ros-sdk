package uwvm.unitree.ros2;

import java.util.Arrays;
import uwvm.ros.ActionSet;
import uwvm.ros.Operations;
import uwvm.ros.Owner;
import uwvm.ros.Wire;

/**
 * @brief Complete typed ROS 2 unitree_go/msg/HeightMap message interface.
 * @details Concrete component records preserve the complete original schema.
 * An Owner/ActionSet is explicitly acquired and closed by the caller. Each
 * operation requires its independently granted role and qualified native
 * identity. This facade neither invents identities nor registers endpoints.
 */
public final class Ros2ApiUnitree_goMsgHeightMap
{
    /** @brief Prevent construction of this static typed interface. */
    private Ros2ApiUnitree_goMsgHeightMap()
    {
    }

    /**
     * @brief Publish one complete typed topic value exactly once.
     * @param owner Borrowed live capability with this exact operation's independent grant.
     * @param value Borrowed stable complete record.
     * @return Owned primary-status report; no publish is replayed.
     * @details All inputs are borrowed for this synchronous call. Returned
     * values/bytes are owned. Serialize retained owners; no hidden acquisition,
     * retry, resize, callback or permission expansion occurs. Local invalid
     * values/wire yield 22 while original transport errno/length facts remain.
     */
    public static Owner.Reply publish(Owner owner, Ros2Unitree_goMsgHeightMap value)
    {
        if(owner == null)
        {
            return Owner.Reply.failure(22);
        }
        try
        {
            return Owner.Reply.failure(owner.publish(Ros2Unitree_goMsgHeightMap.encode(value)));
        }
        catch(IllegalArgumentException invalid)
        {
            return Owner.Reply.failure(22);
        }
    }

    /**
     * @brief Activate the caller's retained subscription owner.
     * @param owner Borrowed live capability with this exact operation's independent grant.
     * @return Actual activation errno; owner remains caller-owned.
     * @details All inputs are borrowed for this synchronous call. Returned
     * values/bytes are owned. Serialize retained owners; no hidden acquisition,
     * retry, resize, callback or permission expansion occurs. Local invalid
     * values/wire yield 22 while original transport errno/length facts remain.
     */
    public static int subscribe(Owner owner)
    {
        return owner == null ? 22 : owner.activate(false);
    }

    /**
     * @brief Read one complete typed topic sample without a hidden polling loop.
     * @param owner Borrowed live capability with this exact operation's independent grant.
     * @return Owned typed sample on success, or original error/length observations.
     * @details All inputs are borrowed for this synchronous call. Returned
     * values/bytes are owned. Serialize retained owners; no hidden acquisition,
     * retry, resize, callback or permission expansion occurs. Local invalid
     * values/wire yield 22 while original transport errno/length facts remain.
     */
    public static Owner.Value<Ros2Unitree_goMsgHeightMap> read(Owner owner)
    {
        if(owner == null)
        {
            return new Owner.Value<Ros2Unitree_goMsgHeightMap>(Owner.Reply.failure(22));
        }
        Owner.Reply reply = owner.poll(Ros2Unitree_goMsgHeightMap.MAX_WIRE_BYTES);
        Owner.Value<Ros2Unitree_goMsgHeightMap> result = new Owner.Value<Ros2Unitree_goMsgHeightMap>(reply);
        if(reply.status == 0)
        {
            try
            {
                Ros2Unitree_goMsgHeightMap next = Ros2Unitree_goMsgHeightMap.decode(reply.bytes);
                result.value = next;
            }
            catch(IllegalArgumentException invalid)
            {
                reply.status = 22;
            }
        }
        return result;
    }
}
