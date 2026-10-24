package uwvm.unitree.ros1;
import uwvm.ros.Client;
import uwvm.unitree.Observation;

/**
 * @brief Observe complete native Unitree ROS 1 records with checked lifetime.
 * @details One subscription is retained for explicit poll credits, then closed
 * once. All fields decode and reencode before commit; no robot command runs.
 */
public final class Observations
{
    /** @brief Prevent construction of this synchronous read-only facade. */
    private Observations()
    {
    }

    /**
     * @brief Await and preserve the entire native Ros1Unitree_legged_msgsHighState value.
     * @param alias Borrowed exact independently granted topic-subscribe alias.
     * @param attempts Explicit idle poll credits in 1..250; only errno 11 permits another poll.
     * @return Newly owned complete typed record, reencoded bytes and original exchange facts.
     * @details Invalid wire yields 22 before commit. No resized receive, hidden
     * executor, automatic owner acquisition retry or actuation is performed.
     */
    public static Observation.Result<Ros1Unitree_legged_msgsHighState> readMotionState(String alias, int attempts)
    {
        Observation.Result<Ros1Unitree_legged_msgsHighState> result =
            new Observation.Result<Ros1Unitree_legged_msgsHighState>(Client.waitSample(alias, Ros1Unitree_legged_msgsHighState.MAX_WIRE_BYTES, attempts));
        if(result.exchange.primary != 0)
        {
            return result;
        }
        try
        {
            Ros1Unitree_legged_msgsHighState next = Ros1Unitree_legged_msgsHighState.decode(result.exchange.wire);
            byte[] canonical = Ros1Unitree_legged_msgsHighState.encode(next);
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
     * @brief Await and preserve the entire native Ros1Unitree_legged_msgsLowState value.
     * @param alias Borrowed exact independently granted topic-subscribe alias.
     * @param attempts Explicit idle poll credits in 1..250; only errno 11 permits another poll.
     * @return Newly owned complete typed record, reencoded bytes and original exchange facts.
     * @details Invalid wire yields 22 before commit. No resized receive, hidden
     * executor, automatic owner acquisition retry or actuation is performed.
     */
    public static Observation.Result<Ros1Unitree_legged_msgsLowState> readLowState(String alias, int attempts)
    {
        Observation.Result<Ros1Unitree_legged_msgsLowState> result =
            new Observation.Result<Ros1Unitree_legged_msgsLowState>(Client.waitSample(alias, Ros1Unitree_legged_msgsLowState.MAX_WIRE_BYTES, attempts));
        if(result.exchange.primary != 0)
        {
            return result;
        }
        try
        {
            Ros1Unitree_legged_msgsLowState next = Ros1Unitree_legged_msgsLowState.decode(result.exchange.wire);
            byte[] canonical = Ros1Unitree_legged_msgsLowState.encode(next);
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
     * @brief Await and preserve the entire native Ros1Unitree_legged_msgsMotorState value.
     * @param alias Borrowed exact independently granted topic-subscribe alias.
     * @param attempts Explicit idle poll credits in 1..250; only errno 11 permits another poll.
     * @return Newly owned complete typed record, reencoded bytes and original exchange facts.
     * @details Invalid wire yields 22 before commit. No resized receive, hidden
     * executor, automatic owner acquisition retry or actuation is performed.
     */
    public static Observation.Result<Ros1Unitree_legged_msgsMotorState> readMotorState(String alias, int attempts)
    {
        Observation.Result<Ros1Unitree_legged_msgsMotorState> result =
            new Observation.Result<Ros1Unitree_legged_msgsMotorState>(Client.waitSample(alias, Ros1Unitree_legged_msgsMotorState.MAX_WIRE_BYTES, attempts));
        if(result.exchange.primary != 0)
        {
            return result;
        }
        try
        {
            Ros1Unitree_legged_msgsMotorState next = Ros1Unitree_legged_msgsMotorState.decode(result.exchange.wire);
            byte[] canonical = Ros1Unitree_legged_msgsMotorState.encode(next);
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
