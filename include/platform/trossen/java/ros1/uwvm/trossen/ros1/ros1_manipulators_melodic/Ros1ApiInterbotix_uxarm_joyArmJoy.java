package uwvm.trossen.ros1.ros1_manipulators_melodic;

import java.util.Arrays;
import uwvm.ros.ActionSet;
import uwvm.ros.Operations;
import uwvm.ros.Owner;
import uwvm.ros.Wire;

/**
 * @brief Complete typed ROS 1 interbotix_uxarm_joy/ArmJoy message interface.
 * @details Concrete component records preserve the complete original schema.
 * An Owner/ActionSet is explicitly acquired and closed by the caller. Each
 * operation requires its independently granted role and qualified native
 * identity. This facade neither invents identities nor registers endpoints.
 */
public final class Ros1ApiInterbotix_uxarm_joyArmJoy
{
    /** @brief Prevent construction of this static typed interface. */
    private Ros1ApiInterbotix_uxarm_joyArmJoy()
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
    public static Owner.Reply publish(Owner owner, Ros1Interbotix_uxarm_joyArmJoy value)
    {
        if(owner == null)
        {
            return Owner.Reply.failure(22);
        }
        try
        {
            return Owner.Reply.failure(owner.publish(Ros1Interbotix_uxarm_joyArmJoy.encode(value)));
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
    public static Owner.Value<Ros1Interbotix_uxarm_joyArmJoy> read(Owner owner)
    {
        if(owner == null)
        {
            return new Owner.Value<Ros1Interbotix_uxarm_joyArmJoy>(Owner.Reply.failure(22));
        }
        Owner.Reply reply = owner.poll(Ros1Interbotix_uxarm_joyArmJoy.MAX_WIRE_BYTES);
        Owner.Value<Ros1Interbotix_uxarm_joyArmJoy> result = new Owner.Value<Ros1Interbotix_uxarm_joyArmJoy>(reply);
        if(reply.status == 0)
        {
            try
            {
                Ros1Interbotix_uxarm_joyArmJoy next = Ros1Interbotix_uxarm_joyArmJoy.decode(reply.bytes);
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
