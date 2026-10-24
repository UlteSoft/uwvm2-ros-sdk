using System;
using Uwvm.Ros;
using Uwvm.HelloRobot;

namespace Uwvm.HelloRobot.Ros2.mobile_fjt_humble
{
    /** @brief Observe complete source-pinned original records.
     * @details Every original field is decoded and reencoded before commit.
     * One independently granted subscription is closed by the shared client. */
    public static class Observations
    {
        /**
         * @brief Read every field of trajectory_msgs/msg/JointTrajectory.
         * @param alias Exact independently granted topic-subscribe alias.
         * @param attempts Explicit idle poll credits in 1..250, each at most twenty milliseconds.
         * @return Owned record, canonical bytes and independent operation/cleanup facts.
         * @details Errno 11 alone permits another bounded idle poll. Invalid wire
         * yields 22 before committing a value; failed receives are never resized.
         */
        public static Observation.Result<Ros2Trajectory_msgsMsgJointTrajectory> ReadJointTrajectory(string alias, int attempts)
        {
            Observation.Result<Ros2Trajectory_msgsMsgJointTrajectory> result = new Observation.Result<Ros2Trajectory_msgsMsgJointTrajectory>(
                Client.WaitSample(alias, Ros2Trajectory_msgsMsgJointTrajectory.MAX_WIRE_BYTES, attempts));
            if(result.Exchange.Primary != 0)
                return result;
            try
            {
                Ros2Trajectory_msgsMsgJointTrajectory next = Ros2Trajectory_msgsMsgJointTrajectory.Decode(result.Exchange.Wire);
                byte[] canonical = Ros2Trajectory_msgsMsgJointTrajectory.Encode(next);
                result.Response = next;
                result.Canonical = canonical;
            }
            catch(ArgumentException invalid)
            {
                result.Exchange.Primary = 22;
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
        public static Observation.Result<Ros2Trajectory_msgsMsgMultiDOFJointTrajectory> ReadMultiDOFJointTrajectory(string alias, int attempts)
        {
            Observation.Result<Ros2Trajectory_msgsMsgMultiDOFJointTrajectory> result = new Observation.Result<Ros2Trajectory_msgsMsgMultiDOFJointTrajectory>(
                Client.WaitSample(alias, Ros2Trajectory_msgsMsgMultiDOFJointTrajectory.MAX_WIRE_BYTES, attempts));
            if(result.Exchange.Primary != 0)
                return result;
            try
            {
                Ros2Trajectory_msgsMsgMultiDOFJointTrajectory next = Ros2Trajectory_msgsMsgMultiDOFJointTrajectory.Decode(result.Exchange.Wire);
                byte[] canonical = Ros2Trajectory_msgsMsgMultiDOFJointTrajectory.Encode(next);
                result.Response = next;
                result.Canonical = canonical;
            }
            catch(ArgumentException invalid)
            {
                result.Exchange.Primary = 22;
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
        public static Observation.Result<Ros2Control_msgsMsgJointTolerance> ReadJointTolerance(string alias, int attempts)
        {
            Observation.Result<Ros2Control_msgsMsgJointTolerance> result =
                new Observation.Result<Ros2Control_msgsMsgJointTolerance>(Client.WaitSample(alias, Ros2Control_msgsMsgJointTolerance.MAX_WIRE_BYTES, attempts));
            if(result.Exchange.Primary != 0)
                return result;
            try
            {
                Ros2Control_msgsMsgJointTolerance next = Ros2Control_msgsMsgJointTolerance.Decode(result.Exchange.Wire);
                byte[] canonical = Ros2Control_msgsMsgJointTolerance.Encode(next);
                result.Response = next;
                result.Canonical = canonical;
            }
            catch(ArgumentException invalid)
            {
                result.Exchange.Primary = 22;
            }
            return result;
        }
    }
}
