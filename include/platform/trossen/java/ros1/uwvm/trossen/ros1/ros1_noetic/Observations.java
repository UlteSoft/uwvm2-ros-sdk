package uwvm.trossen.ros1.ros1_noetic;
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
     * @brief Read every field of interbotix_xs_msgs/JointSingleCommand.
     * @param alias Exact independently granted topic-subscribe alias.
     * @param attempts Explicit idle poll credits in 1..250, each at most twenty milliseconds.
     * @return Owned record, canonical bytes and independent operation/cleanup facts.
     * @details Errno 11 alone permits another bounded idle poll. Invalid wire
     * yields 22 before committing a value; failed receives are never resized.
     */
    public static Observation.Result<Ros1Interbotix_xs_msgsJointSingleCommand> readJointSingleCommand(String alias, int attempts)
    {
        Observation.Result<Ros1Interbotix_xs_msgsJointSingleCommand> result = new Observation.Result<Ros1Interbotix_xs_msgsJointSingleCommand>(
            Client.waitSample(alias, Ros1Interbotix_xs_msgsJointSingleCommand.MAX_WIRE_BYTES, attempts));
        if(result.exchange.primary != 0)
            return result;
        try
        {
            Ros1Interbotix_xs_msgsJointSingleCommand next = Ros1Interbotix_xs_msgsJointSingleCommand.decode(result.exchange.wire);
            byte[] canonical = Ros1Interbotix_xs_msgsJointSingleCommand.encode(next);
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
     * @brief Read every field of interbotix_xs_msgs/JointGroupCommand.
     * @param alias Exact independently granted topic-subscribe alias.
     * @param attempts Explicit idle poll credits in 1..250, each at most twenty milliseconds.
     * @return Owned record, canonical bytes and independent operation/cleanup facts.
     * @details Errno 11 alone permits another bounded idle poll. Invalid wire
     * yields 22 before committing a value; failed receives are never resized.
     */
    public static Observation.Result<Ros1Interbotix_xs_msgsJointGroupCommand> readJointGroupCommand(String alias, int attempts)
    {
        Observation.Result<Ros1Interbotix_xs_msgsJointGroupCommand> result = new Observation.Result<Ros1Interbotix_xs_msgsJointGroupCommand>(
            Client.waitSample(alias, Ros1Interbotix_xs_msgsJointGroupCommand.MAX_WIRE_BYTES, attempts));
        if(result.exchange.primary != 0)
            return result;
        try
        {
            Ros1Interbotix_xs_msgsJointGroupCommand next = Ros1Interbotix_xs_msgsJointGroupCommand.decode(result.exchange.wire);
            byte[] canonical = Ros1Interbotix_xs_msgsJointGroupCommand.encode(next);
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
     * @brief Read every field of interbotix_xs_msgs/JointTrajectoryCommand.
     * @param alias Exact independently granted topic-subscribe alias.
     * @param attempts Explicit idle poll credits in 1..250, each at most twenty milliseconds.
     * @return Owned record, canonical bytes and independent operation/cleanup facts.
     * @details Errno 11 alone permits another bounded idle poll. Invalid wire
     * yields 22 before committing a value; failed receives are never resized.
     */
    public static Observation.Result<Ros1Interbotix_xs_msgsJointTrajectoryCommand> readJointTrajectoryCommand(String alias, int attempts)
    {
        Observation.Result<Ros1Interbotix_xs_msgsJointTrajectoryCommand> result = new Observation.Result<Ros1Interbotix_xs_msgsJointTrajectoryCommand>(
            Client.waitSample(alias, Ros1Interbotix_xs_msgsJointTrajectoryCommand.MAX_WIRE_BYTES, attempts));
        if(result.exchange.primary != 0)
            return result;
        try
        {
            Ros1Interbotix_xs_msgsJointTrajectoryCommand next = Ros1Interbotix_xs_msgsJointTrajectoryCommand.decode(result.exchange.wire);
            byte[] canonical = Ros1Interbotix_xs_msgsJointTrajectoryCommand.encode(next);
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
