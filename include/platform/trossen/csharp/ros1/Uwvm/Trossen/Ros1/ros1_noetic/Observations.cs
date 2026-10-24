using System;
using Uwvm.Ros;
using Uwvm.Trossen;

namespace Uwvm.Trossen.Ros1.ros1_noetic
{
    /** @brief Observe complete source-pinned original records.
     * @details Every original field is decoded and reencoded before commit.
     * One independently granted subscription is closed by the shared client. */
    public static class Observations
    {
        /**
         * @brief Read every field of interbotix_xs_msgs/JointSingleCommand.
         * @param alias Exact independently granted topic-subscribe alias.
         * @param attempts Explicit idle poll credits in 1..250, each at most twenty milliseconds.
         * @return Owned record, canonical bytes and independent operation/cleanup facts.
         * @details Errno 11 alone permits another bounded idle poll. Invalid wire
         * yields 22 before committing a value; failed receives are never resized.
         */
        public static Observation.Result<Ros1Interbotix_xs_msgsJointSingleCommand> ReadJointSingleCommand(string alias, int attempts)
        {
            Observation.Result<Ros1Interbotix_xs_msgsJointSingleCommand> result = new Observation.Result<Ros1Interbotix_xs_msgsJointSingleCommand>(
                Client.WaitSample(alias, Ros1Interbotix_xs_msgsJointSingleCommand.MAX_WIRE_BYTES, attempts));
            if(result.Exchange.Primary != 0)
                return result;
            try
            {
                Ros1Interbotix_xs_msgsJointSingleCommand next = Ros1Interbotix_xs_msgsJointSingleCommand.Decode(result.Exchange.Wire);
                byte[] canonical = Ros1Interbotix_xs_msgsJointSingleCommand.Encode(next);
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
         * @brief Read every field of interbotix_xs_msgs/JointGroupCommand.
         * @param alias Exact independently granted topic-subscribe alias.
         * @param attempts Explicit idle poll credits in 1..250, each at most twenty milliseconds.
         * @return Owned record, canonical bytes and independent operation/cleanup facts.
         * @details Errno 11 alone permits another bounded idle poll. Invalid wire
         * yields 22 before committing a value; failed receives are never resized.
         */
        public static Observation.Result<Ros1Interbotix_xs_msgsJointGroupCommand> ReadJointGroupCommand(string alias, int attempts)
        {
            Observation.Result<Ros1Interbotix_xs_msgsJointGroupCommand> result = new Observation.Result<Ros1Interbotix_xs_msgsJointGroupCommand>(
                Client.WaitSample(alias, Ros1Interbotix_xs_msgsJointGroupCommand.MAX_WIRE_BYTES, attempts));
            if(result.Exchange.Primary != 0)
                return result;
            try
            {
                Ros1Interbotix_xs_msgsJointGroupCommand next = Ros1Interbotix_xs_msgsJointGroupCommand.Decode(result.Exchange.Wire);
                byte[] canonical = Ros1Interbotix_xs_msgsJointGroupCommand.Encode(next);
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
         * @brief Read every field of interbotix_xs_msgs/JointTrajectoryCommand.
         * @param alias Exact independently granted topic-subscribe alias.
         * @param attempts Explicit idle poll credits in 1..250, each at most twenty milliseconds.
         * @return Owned record, canonical bytes and independent operation/cleanup facts.
         * @details Errno 11 alone permits another bounded idle poll. Invalid wire
         * yields 22 before committing a value; failed receives are never resized.
         */
        public static Observation.Result<Ros1Interbotix_xs_msgsJointTrajectoryCommand> ReadJointTrajectoryCommand(string alias, int attempts)
        {
            Observation.Result<Ros1Interbotix_xs_msgsJointTrajectoryCommand> result = new Observation.Result<Ros1Interbotix_xs_msgsJointTrajectoryCommand>(
                Client.WaitSample(alias, Ros1Interbotix_xs_msgsJointTrajectoryCommand.MAX_WIRE_BYTES, attempts));
            if(result.Exchange.Primary != 0)
                return result;
            try
            {
                Ros1Interbotix_xs_msgsJointTrajectoryCommand next = Ros1Interbotix_xs_msgsJointTrajectoryCommand.Decode(result.Exchange.Wire);
                byte[] canonical = Ros1Interbotix_xs_msgsJointTrajectoryCommand.Encode(next);
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
