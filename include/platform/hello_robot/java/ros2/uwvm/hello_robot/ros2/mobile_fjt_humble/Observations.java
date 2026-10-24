package uwvm.hello_robot.ros2.mobile_fjt_humble;
import uwvm.ros.Client;
import uwvm.hello_robot.Observation;

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
     * @brief Read every field of trajectory_msgs/msg/JointTrajectory.
     * @param alias Exact independently granted topic-subscribe alias.
     * @param attempts Explicit idle poll credits in 1..250, each at most twenty milliseconds.
     * @return Owned record, canonical bytes and independent operation/cleanup facts.
     * @details Errno 11 alone permits another bounded idle poll. Invalid wire
     * yields 22 before committing a value; failed receives are never resized.
     */
    public static Observation.Result<Ros2Trajectory_msgsMsgJointTrajectory> readJointTrajectory(String alias, int attempts)
    {
        Observation.Result<Ros2Trajectory_msgsMsgJointTrajectory> result = new Observation.Result<Ros2Trajectory_msgsMsgJointTrajectory>(
            Client.waitSample(alias, Ros2Trajectory_msgsMsgJointTrajectory.MAX_WIRE_BYTES, attempts));
        if(result.exchange.primary != 0)
            return result;
        try
        {
            Ros2Trajectory_msgsMsgJointTrajectory next = Ros2Trajectory_msgsMsgJointTrajectory.decode(result.exchange.wire);
            byte[] canonical = Ros2Trajectory_msgsMsgJointTrajectory.encode(next);
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
     * @brief Read every field of trajectory_msgs/msg/MultiDOFJointTrajectory.
     * @param alias Exact independently granted topic-subscribe alias.
     * @param attempts Explicit idle poll credits in 1..250, each at most twenty milliseconds.
     * @return Owned record, canonical bytes and independent operation/cleanup facts.
     * @details Errno 11 alone permits another bounded idle poll. Invalid wire
     * yields 22 before committing a value; failed receives are never resized.
     */
    public static Observation.Result<Ros2Trajectory_msgsMsgMultiDOFJointTrajectory> readMultiDOFJointTrajectory(String alias, int attempts)
    {
        Observation.Result<Ros2Trajectory_msgsMsgMultiDOFJointTrajectory> result = new Observation.Result<Ros2Trajectory_msgsMsgMultiDOFJointTrajectory>(
            Client.waitSample(alias, Ros2Trajectory_msgsMsgMultiDOFJointTrajectory.MAX_WIRE_BYTES, attempts));
        if(result.exchange.primary != 0)
            return result;
        try
        {
            Ros2Trajectory_msgsMsgMultiDOFJointTrajectory next = Ros2Trajectory_msgsMsgMultiDOFJointTrajectory.decode(result.exchange.wire);
            byte[] canonical = Ros2Trajectory_msgsMsgMultiDOFJointTrajectory.encode(next);
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
     * @brief Read every field of control_msgs/msg/JointTolerance.
     * @param alias Exact independently granted topic-subscribe alias.
     * @param attempts Explicit idle poll credits in 1..250, each at most twenty milliseconds.
     * @return Owned record, canonical bytes and independent operation/cleanup facts.
     * @details Errno 11 alone permits another bounded idle poll. Invalid wire
     * yields 22 before committing a value; failed receives are never resized.
     */
    public static Observation.Result<Ros2Control_msgsMsgJointTolerance> readJointTolerance(String alias, int attempts)
    {
        Observation.Result<Ros2Control_msgsMsgJointTolerance> result =
            new Observation.Result<Ros2Control_msgsMsgJointTolerance>(Client.waitSample(alias, Ros2Control_msgsMsgJointTolerance.MAX_WIRE_BYTES, attempts));
        if(result.exchange.primary != 0)
            return result;
        try
        {
            Ros2Control_msgsMsgJointTolerance next = Ros2Control_msgsMsgJointTolerance.decode(result.exchange.wire);
            byte[] canonical = Ros2Control_msgsMsgJointTolerance.encode(next);
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
