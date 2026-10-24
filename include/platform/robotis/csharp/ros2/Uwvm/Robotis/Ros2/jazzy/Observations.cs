using System;
using Uwvm.Ros;
using Uwvm.Robotis;

namespace Uwvm.Robotis.Ros2.jazzy
{
    /** @brief Observe complete source-pinned original records.
     * @details Every original field is decoded and reencoded before commit.
     * One independently granted subscription is closed by the shared client. */
    public static class Observations
    {
        /**
         * @brief Read every field of turtlebot3_msgs/msg/SensorState.
         * @param alias Exact independently granted topic-subscribe alias.
         * @param attempts Explicit idle poll credits in 1..250, each at most twenty milliseconds.
         * @return Owned record, canonical bytes and independent operation/cleanup facts.
         * @details Errno 11 alone permits another bounded idle poll. Invalid wire
         * yields 22 before committing a value; failed receives are never resized.
         */
        public static Observation.Result<Ros2Turtlebot3_msgsMsgSensorState> ReadSensorState(string alias, int attempts)
        {
            Observation.Result<Ros2Turtlebot3_msgsMsgSensorState> result =
                new Observation.Result<Ros2Turtlebot3_msgsMsgSensorState>(Client.WaitSample(alias, Ros2Turtlebot3_msgsMsgSensorState.MAX_WIRE_BYTES, attempts));
            if(result.Exchange.Primary != 0)
                return result;
            try
            {
                Ros2Turtlebot3_msgsMsgSensorState next = Ros2Turtlebot3_msgsMsgSensorState.Decode(result.Exchange.Wire);
                byte[] canonical = Ros2Turtlebot3_msgsMsgSensorState.Encode(next);
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
         * @brief Read every field of turtlebot3_msgs/msg/VersionInfo.
         * @param alias Exact independently granted topic-subscribe alias.
         * @param attempts Explicit idle poll credits in 1..250, each at most twenty milliseconds.
         * @return Owned record, canonical bytes and independent operation/cleanup facts.
         * @details Errno 11 alone permits another bounded idle poll. Invalid wire
         * yields 22 before committing a value; failed receives are never resized.
         */
        public static Observation.Result<Ros2Turtlebot3_msgsMsgVersionInfo> ReadVersionInfo(string alias, int attempts)
        {
            Observation.Result<Ros2Turtlebot3_msgsMsgVersionInfo> result =
                new Observation.Result<Ros2Turtlebot3_msgsMsgVersionInfo>(Client.WaitSample(alias, Ros2Turtlebot3_msgsMsgVersionInfo.MAX_WIRE_BYTES, attempts));
            if(result.Exchange.Primary != 0)
                return result;
            try
            {
                Ros2Turtlebot3_msgsMsgVersionInfo next = Ros2Turtlebot3_msgsMsgVersionInfo.Decode(result.Exchange.Wire);
                byte[] canonical = Ros2Turtlebot3_msgsMsgVersionInfo.Encode(next);
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
         * @brief Read every field of turtlebot3_msgs/msg/Sound.
         * @param alias Exact independently granted topic-subscribe alias.
         * @param attempts Explicit idle poll credits in 1..250, each at most twenty milliseconds.
         * @return Owned record, canonical bytes and independent operation/cleanup facts.
         * @details Errno 11 alone permits another bounded idle poll. Invalid wire
         * yields 22 before committing a value; failed receives are never resized.
         */
        public static Observation.Result<Ros2Turtlebot3_msgsMsgSound> ReadSound(string alias, int attempts)
        {
            Observation.Result<Ros2Turtlebot3_msgsMsgSound> result =
                new Observation.Result<Ros2Turtlebot3_msgsMsgSound>(Client.WaitSample(alias, Ros2Turtlebot3_msgsMsgSound.MAX_WIRE_BYTES, attempts));
            if(result.Exchange.Primary != 0)
                return result;
            try
            {
                Ros2Turtlebot3_msgsMsgSound next = Ros2Turtlebot3_msgsMsgSound.Decode(result.Exchange.Wire);
                byte[] canonical = Ros2Turtlebot3_msgsMsgSound.Encode(next);
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
