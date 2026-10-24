package uwvm.pal.ros2.ros2_humble_devel;
import uwvm.ros.Client;
import uwvm.pal.Observation;

/**
 * @brief Observe complete source-pinned original records.
 * @details Every original field is decoded and reencoded before commit.
 * One independently granted subscription is closed by the shared client.
 */
public final class Observations
{
    /** @brief Prevent construction of the static observation facade. */
    private Observations()
    {
    }

    /**
     * @brief Read every field of pal_device_msgs/msg/BatteryState.
     * @param alias Exact independently granted topic-subscribe alias.
     * @param attempts Explicit idle poll credits in 1..250, each at most twenty milliseconds.
     * @return Owned record, canonical bytes and independent operation/cleanup facts.
     * @details Errno 11 alone permits another bounded idle poll. Invalid wire
     * yields 22 before committing a value; failed receives are never resized.
     */
    public static Observation.Result<Ros2Pal_device_msgsMsgBatteryState> readBatteryState(String alias, int attempts)
    {
        Observation.Result<Ros2Pal_device_msgsMsgBatteryState> result =
            new Observation.Result<Ros2Pal_device_msgsMsgBatteryState>(Client.waitSample(alias, Ros2Pal_device_msgsMsgBatteryState.MAX_WIRE_BYTES, attempts));
        if(result.exchange.primary != 0)
            return result;
        try
        {
            Ros2Pal_device_msgsMsgBatteryState next = Ros2Pal_device_msgsMsgBatteryState.decode(result.exchange.wire);
            byte[] canonical = Ros2Pal_device_msgsMsgBatteryState.encode(next);
            result.response = next;
            result.canonical = canonical;
        }
        catch(IllegalArgumentException invalid)
        {
            result.exchange.primary = 22;
        }
        return result;
    }

    /**
     * @brief Read every field of pal_device_msgs/msg/Bumper.
     * @param alias Exact independently granted topic-subscribe alias.
     * @param attempts Explicit idle poll credits in 1..250, each at most twenty milliseconds.
     * @return Owned record, canonical bytes and independent operation/cleanup facts.
     * @details Errno 11 alone permits another bounded idle poll. Invalid wire
     * yields 22 before committing a value; failed receives are never resized.
     */
    public static Observation.Result<Ros2Pal_device_msgsMsgBumper> readBumper(String alias, int attempts)
    {
        Observation.Result<Ros2Pal_device_msgsMsgBumper> result =
            new Observation.Result<Ros2Pal_device_msgsMsgBumper>(Client.waitSample(alias, Ros2Pal_device_msgsMsgBumper.MAX_WIRE_BYTES, attempts));
        if(result.exchange.primary != 0)
            return result;
        try
        {
            Ros2Pal_device_msgsMsgBumper next = Ros2Pal_device_msgsMsgBumper.decode(result.exchange.wire);
            byte[] canonical = Ros2Pal_device_msgsMsgBumper.encode(next);
            result.response = next;
            result.canonical = canonical;
        }
        catch(IllegalArgumentException invalid)
        {
            result.exchange.primary = 22;
        }
        return result;
    }

    /**
     * @brief Read every field of pal_device_msgs/msg/LedGroup.
     * @param alias Exact independently granted topic-subscribe alias.
     * @param attempts Explicit idle poll credits in 1..250, each at most twenty milliseconds.
     * @return Owned record, canonical bytes and independent operation/cleanup facts.
     * @details Errno 11 alone permits another bounded idle poll. Invalid wire
     * yields 22 before committing a value; failed receives are never resized.
     */
    public static Observation.Result<Ros2Pal_device_msgsMsgLedGroup> readLedGroup(String alias, int attempts)
    {
        Observation.Result<Ros2Pal_device_msgsMsgLedGroup> result =
            new Observation.Result<Ros2Pal_device_msgsMsgLedGroup>(Client.waitSample(alias, Ros2Pal_device_msgsMsgLedGroup.MAX_WIRE_BYTES, attempts));
        if(result.exchange.primary != 0)
            return result;
        try
        {
            Ros2Pal_device_msgsMsgLedGroup next = Ros2Pal_device_msgsMsgLedGroup.decode(result.exchange.wire);
            byte[] canonical = Ros2Pal_device_msgsMsgLedGroup.encode(next);
            result.response = next;
            result.canonical = canonical;
        }
        catch(IllegalArgumentException invalid)
        {
            result.exchange.primary = 22;
        }
        return result;
    }
}
