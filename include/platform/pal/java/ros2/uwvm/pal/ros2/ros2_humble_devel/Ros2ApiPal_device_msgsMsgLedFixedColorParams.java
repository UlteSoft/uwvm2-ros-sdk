package uwvm.pal.ros2.ros2_humble_devel;

import java.util.Arrays;
import uwvm.ros.ActionSet;
import uwvm.ros.Operations;
import uwvm.ros.Owner;
import uwvm.ros.Wire;

/**
 * @brief Complete typed ROS 2 pal_device_msgs/msg/LedFixedColorParams message interface.
 * @details Concrete component records preserve the complete original schema.
 * An Owner/ActionSet is explicitly acquired and closed by the caller. Each
 * operation requires its independently granted role and qualified native
 * identity. This facade neither invents identities nor registers endpoints.
 */
public final class Ros2ApiPal_device_msgsMsgLedFixedColorParams
{
    /** @brief Prevent construction of this static typed interface. */
    private Ros2ApiPal_device_msgsMsgLedFixedColorParams()
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
     * values/wire yield22 while original transport errno/length facts remain.
     */
    public static Owner.Reply publish(Owner owner, Ros2Pal_device_msgsMsgLedFixedColorParams value)
    {
        if(owner == null)
        {
            return Owner.Reply.failure(22);
        }
        try
        {
            return Owner.Reply.failure(owner.publish(Ros2Pal_device_msgsMsgLedFixedColorParams.encode(value)));
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
     * values/wire yield22 while original transport errno/length facts remain.
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
     * values/wire yield22 while original transport errno/length facts remain.
     */
    public static Owner.Value<Ros2Pal_device_msgsMsgLedFixedColorParams> read(Owner owner)
    {
        if(owner == null)
        {
            return new Owner.Value<Ros2Pal_device_msgsMsgLedFixedColorParams>(Owner.Reply.failure(22));
        }
        Owner.Reply reply = owner.poll(Ros2Pal_device_msgsMsgLedFixedColorParams.MAX_WIRE_BYTES);
        Owner.Value<Ros2Pal_device_msgsMsgLedFixedColorParams> result = new Owner.Value<Ros2Pal_device_msgsMsgLedFixedColorParams>(reply);
        if(reply.status == 0)
        {
            try
            {
                Ros2Pal_device_msgsMsgLedFixedColorParams next = Ros2Pal_device_msgsMsgLedFixedColorParams.decode(reply.bytes);
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
