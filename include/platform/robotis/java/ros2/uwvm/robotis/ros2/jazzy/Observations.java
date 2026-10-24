package uwvm.robotis.ros2.jazzy;
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
     * @brief Read every field of turtlebot3_msgs/msg/SensorState.
     * @param alias Exact independently granted topic-subscribe alias.
     * @param attempts Explicit idle poll credits in 1..250, each at most twenty milliseconds.
     * @return Owned record, canonical bytes and independent operation/cleanup facts.
     * @details Errno 11 alone permits another bounded idle poll. Invalid wire
     * yields 22 before committing a value; failed receives are never resized.
     */
    public static Observation.Result<Ros2Turtlebot3_msgsMsgSensorState> readSensorState(String alias, int attempts)
    {
        Observation.Result<Ros2Turtlebot3_msgsMsgSensorState> result =
            new Observation.Result<Ros2Turtlebot3_msgsMsgSensorState>(Client.waitSample(alias, Ros2Turtlebot3_msgsMsgSensorState.MAX_WIRE_BYTES, attempts));
        if(result.exchange.primary != 0)
            return result;
        try
        {
            Ros2Turtlebot3_msgsMsgSensorState next = Ros2Turtlebot3_msgsMsgSensorState.decode(result.exchange.wire);
            byte[] canonical = Ros2Turtlebot3_msgsMsgSensorState.encode(next);
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
     * @brief Read every field of turtlebot3_msgs/msg/VersionInfo.
     * @param alias Exact independently granted topic-subscribe alias.
     * @param attempts Explicit idle poll credits in 1..250, each at most twenty milliseconds.
     * @return Owned record, canonical bytes and independent operation/cleanup facts.
     * @details Errno 11 alone permits another bounded idle poll. Invalid wire
     * yields 22 before committing a value; failed receives are never resized.
     */
    public static Observation.Result<Ros2Turtlebot3_msgsMsgVersionInfo> readVersionInfo(String alias, int attempts)
    {
        Observation.Result<Ros2Turtlebot3_msgsMsgVersionInfo> result =
            new Observation.Result<Ros2Turtlebot3_msgsMsgVersionInfo>(Client.waitSample(alias, Ros2Turtlebot3_msgsMsgVersionInfo.MAX_WIRE_BYTES, attempts));
        if(result.exchange.primary != 0)
            return result;
        try
        {
            Ros2Turtlebot3_msgsMsgVersionInfo next = Ros2Turtlebot3_msgsMsgVersionInfo.decode(result.exchange.wire);
            byte[] canonical = Ros2Turtlebot3_msgsMsgVersionInfo.encode(next);
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
     * @brief Read every field of turtlebot3_msgs/msg/Sound.
     * @param alias Exact independently granted topic-subscribe alias.
     * @param attempts Explicit idle poll credits in 1..250, each at most twenty milliseconds.
     * @return Owned record, canonical bytes and independent operation/cleanup facts.
     * @details Errno 11 alone permits another bounded idle poll. Invalid wire
     * yields 22 before committing a value; failed receives are never resized.
     */
    public static Observation.Result<Ros2Turtlebot3_msgsMsgSound> readSound(String alias, int attempts)
    {
        Observation.Result<Ros2Turtlebot3_msgsMsgSound> result =
            new Observation.Result<Ros2Turtlebot3_msgsMsgSound>(Client.waitSample(alias, Ros2Turtlebot3_msgsMsgSound.MAX_WIRE_BYTES, attempts));
        if(result.exchange.primary != 0)
            return result;
        try
        {
            Ros2Turtlebot3_msgsMsgSound next = Ros2Turtlebot3_msgsMsgSound.decode(result.exchange.wire);
            byte[] canonical = Ros2Turtlebot3_msgsMsgSound.encode(next);
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
