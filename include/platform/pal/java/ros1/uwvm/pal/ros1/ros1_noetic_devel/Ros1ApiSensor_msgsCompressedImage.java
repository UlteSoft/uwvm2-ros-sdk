package uwvm.pal.ros1.ros1_noetic_devel;

import java.util.Arrays;
import uwvm.ros.ActionSet;
import uwvm.ros.Operations;
import uwvm.ros.Owner;
import uwvm.ros.Wire;

/**
 * @brief Complete typed ROS 1 sensor_msgs/CompressedImage message interface.
 * @details Concrete component records preserve the complete original schema.
 * An Owner/ActionSet is explicitly acquired and closed by the caller. Each
 * operation requires its independently granted role and qualified native
 * identity. This facade neither invents identities nor registers endpoints.
 */
public final class Ros1ApiSensor_msgsCompressedImage
{
    /** @brief Prevent construction of this static typed interface. */
    private Ros1ApiSensor_msgsCompressedImage()
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
    public static Owner.Reply publish(Owner owner, Ros1Sensor_msgsCompressedImage value)
    {
        if(owner == null)
        {
            return Owner.Reply.failure(22);
        }
        try
        {
            return Owner.Reply.failure(owner.publish(Ros1Sensor_msgsCompressedImage.encode(value)));
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
    public static Owner.Value<Ros1Sensor_msgsCompressedImage> read(Owner owner)
    {
        if(owner == null)
        {
            return new Owner.Value<Ros1Sensor_msgsCompressedImage>(Owner.Reply.failure(22));
        }
        Owner.Reply reply = owner.poll(Ros1Sensor_msgsCompressedImage.MAX_WIRE_BYTES);
        Owner.Value<Ros1Sensor_msgsCompressedImage> result = new Owner.Value<Ros1Sensor_msgsCompressedImage>(reply);
        if(reply.status == 0)
        {
            try
            {
                Ros1Sensor_msgsCompressedImage next = Ros1Sensor_msgsCompressedImage.decode(reply.bytes);
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
