package uwvm.pal.ros1.ros1_noetic_devel;
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
     * @brief Read every field of pal_device_msgs/BatteryState.
     * @param alias Exact independently granted topic-subscribe alias.
     * @param attempts Explicit idle poll credits in 1..250, each at most twenty milliseconds.
     * @return Owned record, canonical bytes and independent operation/cleanup facts.
     * @details Errno 11 alone permits another bounded idle poll. Invalid wire
     * yields 22 before committing a value; failed receives are never resized.
     */
    public static Observation.Result<Ros1Pal_device_msgsBatteryState> readBatteryState(String alias, int attempts)
    {
        Observation.Result<Ros1Pal_device_msgsBatteryState> result =
            new Observation.Result<Ros1Pal_device_msgsBatteryState>(Client.waitSample(alias, Ros1Pal_device_msgsBatteryState.MAX_WIRE_BYTES, attempts));
        if(result.exchange.primary != 0)
            return result;
        try
        {
            Ros1Pal_device_msgsBatteryState next = Ros1Pal_device_msgsBatteryState.decode(result.exchange.wire);
            byte[] canonical = Ros1Pal_device_msgsBatteryState.encode(next);
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
     * @brief Read every field of pal_device_msgs/Bumper.
     * @param alias Exact independently granted topic-subscribe alias.
     * @param attempts Explicit idle poll credits in 1..250, each at most twenty milliseconds.
     * @return Owned record, canonical bytes and independent operation/cleanup facts.
     * @details Errno 11 alone permits another bounded idle poll. Invalid wire
     * yields 22 before committing a value; failed receives are never resized.
     */
    public static Observation.Result<Ros1Pal_device_msgsBumper> readBumper(String alias, int attempts)
    {
        Observation.Result<Ros1Pal_device_msgsBumper> result =
            new Observation.Result<Ros1Pal_device_msgsBumper>(Client.waitSample(alias, Ros1Pal_device_msgsBumper.MAX_WIRE_BYTES, attempts));
        if(result.exchange.primary != 0)
            return result;
        try
        {
            Ros1Pal_device_msgsBumper next = Ros1Pal_device_msgsBumper.decode(result.exchange.wire);
            byte[] canonical = Ros1Pal_device_msgsBumper.encode(next);
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
     * @brief Read every field of pal_device_msgs/LedGroup.
     * @param alias Exact independently granted topic-subscribe alias.
     * @param attempts Explicit idle poll credits in 1..250, each at most twenty milliseconds.
     * @return Owned record, canonical bytes and independent operation/cleanup facts.
     * @details Errno 11 alone permits another bounded idle poll. Invalid wire
     * yields 22 before committing a value; failed receives are never resized.
     */
    public static Observation.Result<Ros1Pal_device_msgsLedGroup> readLedGroup(String alias, int attempts)
    {
        Observation.Result<Ros1Pal_device_msgsLedGroup> result =
            new Observation.Result<Ros1Pal_device_msgsLedGroup>(Client.waitSample(alias, Ros1Pal_device_msgsLedGroup.MAX_WIRE_BYTES, attempts));
        if(result.exchange.primary != 0)
            return result;
        try
        {
            Ros1Pal_device_msgsLedGroup next = Ros1Pal_device_msgsLedGroup.decode(result.exchange.wire);
            byte[] canonical = Ros1Pal_device_msgsLedGroup.encode(next);
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
