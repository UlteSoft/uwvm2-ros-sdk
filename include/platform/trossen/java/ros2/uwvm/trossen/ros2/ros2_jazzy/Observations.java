package uwvm.trossen.ros2.ros2_jazzy;
import uwvm.ros.Client;
import uwvm.trossen.Observation;

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
     * @brief Read every field of interbotix_xs_msgs/msg/JointSingleCommand.
     * @param alias Exact independently granted topic-subscribe alias.
     * @param attempts Explicit idle poll credits in 1..250, each at most twenty milliseconds.
     * @return Owned record, canonical bytes and independent operation/cleanup facts.
     * @details Errno 11 alone permits another bounded idle poll. Invalid wire
     * yields 22 before committing a value; failed receives are never resized.
     */
    public static Observation.Result<Ros2Interbotix_xs_msgsMsgJointSingleCommand> readJointSingleCommand(String alias, int attempts)
    {
        Observation.Result<Ros2Interbotix_xs_msgsMsgJointSingleCommand> result = new Observation.Result<Ros2Interbotix_xs_msgsMsgJointSingleCommand>(
            Client.waitSample(alias, Ros2Interbotix_xs_msgsMsgJointSingleCommand.MAX_WIRE_BYTES, attempts));
        if(result.exchange.primary != 0)
            return result;
        try
        {
            Ros2Interbotix_xs_msgsMsgJointSingleCommand next = Ros2Interbotix_xs_msgsMsgJointSingleCommand.decode(result.exchange.wire);
            byte[] canonical = Ros2Interbotix_xs_msgsMsgJointSingleCommand.encode(next);
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
     * @brief Read every field of interbotix_xs_msgs/msg/JointGroupCommand.
     * @param alias Exact independently granted topic-subscribe alias.
     * @param attempts Explicit idle poll credits in 1..250, each at most twenty milliseconds.
     * @return Owned record, canonical bytes and independent operation/cleanup facts.
     * @details Errno 11 alone permits another bounded idle poll. Invalid wire
     * yields 22 before committing a value; failed receives are never resized.
     */
    public static Observation.Result<Ros2Interbotix_xs_msgsMsgJointGroupCommand> readJointGroupCommand(String alias, int attempts)
    {
        Observation.Result<Ros2Interbotix_xs_msgsMsgJointGroupCommand> result = new Observation.Result<Ros2Interbotix_xs_msgsMsgJointGroupCommand>(
            Client.waitSample(alias, Ros2Interbotix_xs_msgsMsgJointGroupCommand.MAX_WIRE_BYTES, attempts));
        if(result.exchange.primary != 0)
            return result;
        try
        {
            Ros2Interbotix_xs_msgsMsgJointGroupCommand next = Ros2Interbotix_xs_msgsMsgJointGroupCommand.decode(result.exchange.wire);
            byte[] canonical = Ros2Interbotix_xs_msgsMsgJointGroupCommand.encode(next);
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
     * @brief Read every field of interbotix_xs_msgs/msg/JointTrajectoryCommand.
     * @param alias Exact independently granted topic-subscribe alias.
     * @param attempts Explicit idle poll credits in 1..250, each at most twenty milliseconds.
     * @return Owned record, canonical bytes and independent operation/cleanup facts.
     * @details Errno 11 alone permits another bounded idle poll. Invalid wire
     * yields 22 before committing a value; failed receives are never resized.
     */
    public static Observation.Result<Ros2Interbotix_xs_msgsMsgJointTrajectoryCommand> readJointTrajectoryCommand(String alias, int attempts)
    {
        Observation.Result<Ros2Interbotix_xs_msgsMsgJointTrajectoryCommand> result = new Observation.Result<Ros2Interbotix_xs_msgsMsgJointTrajectoryCommand>(
            Client.waitSample(alias, Ros2Interbotix_xs_msgsMsgJointTrajectoryCommand.MAX_WIRE_BYTES, attempts));
        if(result.exchange.primary != 0)
            return result;
        try
        {
            Ros2Interbotix_xs_msgsMsgJointTrajectoryCommand next = Ros2Interbotix_xs_msgsMsgJointTrajectoryCommand.decode(result.exchange.wire);
            byte[] canonical = Ros2Interbotix_xs_msgsMsgJointTrajectoryCommand.encode(next);
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
