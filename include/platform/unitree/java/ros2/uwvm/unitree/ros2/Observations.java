package uwvm.unitree.ros2;
import uwvm.ros.Client;
import uwvm.unitree.Observation;

/**
 * @brief Observe complete native Unitree ROS 2 records with checked lifetime.
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
     * @brief Await and preserve the entire native Ros2Unitree_goMsgSportModeState value.
     * @param alias Borrowed exact independently granted topic-subscribe alias.
     * @param attempts Explicit idle poll credits in 1..250; only errno 11 permits another poll.
     * @return Newly owned complete typed record, reencoded bytes and original exchange facts.
     * @details Invalid wire yields 22 before commit. No resized receive, hidden
     * executor, automatic owner acquisition retry or actuation is performed.
     */
    public static Observation.Result<Ros2Unitree_goMsgSportModeState> readMotionState(String alias, int attempts)
    {
        Observation.Result<Ros2Unitree_goMsgSportModeState> result =
            new Observation.Result<Ros2Unitree_goMsgSportModeState>(Client.waitSample(alias, Ros2Unitree_goMsgSportModeState.MAX_WIRE_BYTES, attempts));
        if(result.exchange.primary != 0)
        {
            return result;
        }
        try
        {
            Ros2Unitree_goMsgSportModeState next = Ros2Unitree_goMsgSportModeState.decode(result.exchange.wire);
            byte[] canonical = Ros2Unitree_goMsgSportModeState.encode(next);
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
     * @brief Await and preserve the entire native Ros2Unitree_goMsgLowState value.
     * @param alias Borrowed exact independently granted topic-subscribe alias.
     * @param attempts Explicit idle poll credits in 1..250; only errno 11 permits another poll.
     * @return Newly owned complete typed record, reencoded bytes and original exchange facts.
     * @details Invalid wire yields 22 before commit. No resized receive, hidden
     * executor, automatic owner acquisition retry or actuation is performed.
     */
    public static Observation.Result<Ros2Unitree_goMsgLowState> readLowState(String alias, int attempts)
    {
        Observation.Result<Ros2Unitree_goMsgLowState> result =
            new Observation.Result<Ros2Unitree_goMsgLowState>(Client.waitSample(alias, Ros2Unitree_goMsgLowState.MAX_WIRE_BYTES, attempts));
        if(result.exchange.primary != 0)
        {
            return result;
        }
        try
        {
            Ros2Unitree_goMsgLowState next = Ros2Unitree_goMsgLowState.decode(result.exchange.wire);
            byte[] canonical = Ros2Unitree_goMsgLowState.encode(next);
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
     * @brief Await and preserve the entire native Ros2Unitree_goMsgWirelessController value.
     * @param alias Borrowed exact independently granted topic-subscribe alias.
     * @param attempts Explicit idle poll credits in 1..250; only errno 11 permits another poll.
     * @return Newly owned complete typed record, reencoded bytes and original exchange facts.
     * @details Invalid wire yields 22 before commit. No resized receive, hidden
     * executor, automatic owner acquisition retry or actuation is performed.
     */
    public static Observation.Result<Ros2Unitree_goMsgWirelessController> readWirelessController(String alias, int attempts)
    {
        Observation.Result<Ros2Unitree_goMsgWirelessController> result =
            new Observation.Result<Ros2Unitree_goMsgWirelessController>(Client.waitSample(alias, Ros2Unitree_goMsgWirelessController.MAX_WIRE_BYTES, attempts));
        if(result.exchange.primary != 0)
        {
            return result;
        }
        try
        {
            Ros2Unitree_goMsgWirelessController next = Ros2Unitree_goMsgWirelessController.decode(result.exchange.wire);
            byte[] canonical = Ros2Unitree_goMsgWirelessController.encode(next);
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
