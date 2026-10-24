using System;
using Uwvm.Ros;
using Uwvm.Trossen;

namespace Uwvm.Trossen.Ros2.ros2_jazzy
{
    /** @brief Observe complete source-pinned original records.
     * @details Every original field is decoded and reencoded before commit.
     * One independently granted subscription is closed by the shared client. */
    public static class Observations
    {
        /**
         * @brief Read every field of interbotix_xs_msgs/msg/JointSingleCommand.
         * @param alias Exact independently granted topic-subscribe alias.
         * @param attempts Explicit idle poll credits in 1..250, each at most twenty milliseconds.
         * @return Owned record, canonical bytes and independent operation/cleanup facts.
         * @details Errno 11 alone permits another bounded idle poll. Invalid wire
         * yields 22 before committing a value; failed receives are never resized.
         */
        public static Observation.Result<Ros2Interbotix_xs_msgsMsgJointSingleCommand> ReadJointSingleCommand(string alias, int attempts)
        {
            Observation.Result<Ros2Interbotix_xs_msgsMsgJointSingleCommand> result = new Observation.Result<Ros2Interbotix_xs_msgsMsgJointSingleCommand>(
                Client.WaitSample(alias, Ros2Interbotix_xs_msgsMsgJointSingleCommand.MAX_WIRE_BYTES, attempts));
            if(result.Exchange.Primary != 0)
                return result;
            try
            {
                Ros2Interbotix_xs_msgsMsgJointSingleCommand next = Ros2Interbotix_xs_msgsMsgJointSingleCommand.Decode(result.Exchange.Wire);
                byte[] canonical = Ros2Interbotix_xs_msgsMsgJointSingleCommand.Encode(next);
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
         * @brief Read every field of interbotix_xs_msgs/msg/JointGroupCommand.
         * @param alias Exact independently granted topic-subscribe alias.
         * @param attempts Explicit idle poll credits in 1..250, each at most twenty milliseconds.
         * @return Owned record, canonical bytes and independent operation/cleanup facts.
         * @details Errno 11 alone permits another bounded idle poll. Invalid wire
         * yields 22 before committing a value; failed receives are never resized.
         */
        public static Observation.Result<Ros2Interbotix_xs_msgsMsgJointGroupCommand> ReadJointGroupCommand(string alias, int attempts)
        {
            Observation.Result<Ros2Interbotix_xs_msgsMsgJointGroupCommand> result = new Observation.Result<Ros2Interbotix_xs_msgsMsgJointGroupCommand>(
                Client.WaitSample(alias, Ros2Interbotix_xs_msgsMsgJointGroupCommand.MAX_WIRE_BYTES, attempts));
            if(result.Exchange.Primary != 0)
                return result;
            try
            {
                Ros2Interbotix_xs_msgsMsgJointGroupCommand next = Ros2Interbotix_xs_msgsMsgJointGroupCommand.Decode(result.Exchange.Wire);
                byte[] canonical = Ros2Interbotix_xs_msgsMsgJointGroupCommand.Encode(next);
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
         * @brief Read every field of interbotix_xs_msgs/msg/JointTrajectoryCommand.
         * @param alias Exact independently granted topic-subscribe alias.
         * @param attempts Explicit idle poll credits in 1..250, each at most twenty milliseconds.
         * @return Owned record, canonical bytes and independent operation/cleanup facts.
         * @details Errno 11 alone permits another bounded idle poll. Invalid wire
         * yields 22 before committing a value; failed receives are never resized.
         */
        public static Observation.Result<Ros2Interbotix_xs_msgsMsgJointTrajectoryCommand> ReadJointTrajectoryCommand(string alias, int attempts)
        {
            Observation.Result<Ros2Interbotix_xs_msgsMsgJointTrajectoryCommand> result =
                new Observation.Result<Ros2Interbotix_xs_msgsMsgJointTrajectoryCommand>(
                    Client.WaitSample(alias, Ros2Interbotix_xs_msgsMsgJointTrajectoryCommand.MAX_WIRE_BYTES, attempts));
            if(result.Exchange.Primary != 0)
                return result;
            try
            {
                Ros2Interbotix_xs_msgsMsgJointTrajectoryCommand next = Ros2Interbotix_xs_msgsMsgJointTrajectoryCommand.Decode(result.Exchange.Wire);
                byte[] canonical = Ros2Interbotix_xs_msgsMsgJointTrajectoryCommand.Encode(next);
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
