package uwvm.robotis.ros1.noetic;
import uwvm.ros.Client;
import uwvm.robotis.Observation;

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
     * @brief Read every field of turtlebot3_msgs/SensorState.
     * @param alias Exact independently granted topic-subscribe alias.
     * @param attempts Explicit idle poll credits in 1..250, each at most twenty milliseconds.
     * @return Owned record, canonical bytes and independent operation/cleanup facts.
     * @details Errno 11 alone permits another bounded idle poll. Invalid wire
     * yields 22 before committing a value; failed receives are never resized.
     */
    public static Observation.Result<Ros1Turtlebot3_msgsSensorState> readSensorState(String alias, int attempts)
    {
        Observation.Result<Ros1Turtlebot3_msgsSensorState> result =
            new Observation.Result<Ros1Turtlebot3_msgsSensorState>(Client.waitSample(alias, Ros1Turtlebot3_msgsSensorState.MAX_WIRE_BYTES, attempts));
        if(result.exchange.primary != 0)
            return result;
        try
        {
            Ros1Turtlebot3_msgsSensorState next = Ros1Turtlebot3_msgsSensorState.decode(result.exchange.wire);
            byte[] canonical = Ros1Turtlebot3_msgsSensorState.encode(next);
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
     * @brief Read every field of turtlebot3_msgs/VersionInfo.
     * @param alias Exact independently granted topic-subscribe alias.
     * @param attempts Explicit idle poll credits in 1..250, each at most twenty milliseconds.
     * @return Owned record, canonical bytes and independent operation/cleanup facts.
     * @details Errno 11 alone permits another bounded idle poll. Invalid wire
     * yields 22 before committing a value; failed receives are never resized.
     */
    public static Observation.Result<Ros1Turtlebot3_msgsVersionInfo> readVersionInfo(String alias, int attempts)
    {
        Observation.Result<Ros1Turtlebot3_msgsVersionInfo> result =
            new Observation.Result<Ros1Turtlebot3_msgsVersionInfo>(Client.waitSample(alias, Ros1Turtlebot3_msgsVersionInfo.MAX_WIRE_BYTES, attempts));
        if(result.exchange.primary != 0)
            return result;
        try
        {
            Ros1Turtlebot3_msgsVersionInfo next = Ros1Turtlebot3_msgsVersionInfo.decode(result.exchange.wire);
            byte[] canonical = Ros1Turtlebot3_msgsVersionInfo.encode(next);
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
     * @brief Read every field of turtlebot3_msgs/Sound.
     * @param alias Exact independently granted topic-subscribe alias.
     * @param attempts Explicit idle poll credits in 1..250, each at most twenty milliseconds.
     * @return Owned record, canonical bytes and independent operation/cleanup facts.
     * @details Errno 11 alone permits another bounded idle poll. Invalid wire
     * yields 22 before committing a value; failed receives are never resized.
     */
    public static Observation.Result<Ros1Turtlebot3_msgsSound> readSound(String alias, int attempts)
    {
        Observation.Result<Ros1Turtlebot3_msgsSound> result =
            new Observation.Result<Ros1Turtlebot3_msgsSound>(Client.waitSample(alias, Ros1Turtlebot3_msgsSound.MAX_WIRE_BYTES, attempts));
        if(result.exchange.primary != 0)
            return result;
        try
        {
            Ros1Turtlebot3_msgsSound next = Ros1Turtlebot3_msgsSound.decode(result.exchange.wire);
            byte[] canonical = Ros1Turtlebot3_msgsSound.encode(next);
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
