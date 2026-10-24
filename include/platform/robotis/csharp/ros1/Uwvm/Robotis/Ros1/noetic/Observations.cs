using System;
using Uwvm.Ros;
using Uwvm.Robotis;

namespace Uwvm.Robotis.Ros1.noetic
{
    /** @brief Observe complete source-pinned original records.
     * @details Every original field is decoded and reencoded before commit.
     * One independently granted subscription is closed by the shared client. */
    public static class Observations
    {
        /**
         * @brief Read every field of turtlebot3_msgs/SensorState.
         * @param alias Exact independently granted topic-subscribe alias.
         * @param attempts Explicit idle poll credits in 1..250, each at most twenty milliseconds.
         * @return Owned record, canonical bytes and independent operation/cleanup facts.
         * @details Errno 11 alone permits another bounded idle poll. Invalid wire
         * yields 22 before committing a value; failed receives are never resized.
         */
        public static Observation.Result<Ros1Turtlebot3_msgsSensorState> ReadSensorState(string alias, int attempts)
        {
            Observation.Result<Ros1Turtlebot3_msgsSensorState> result =
                new Observation.Result<Ros1Turtlebot3_msgsSensorState>(Client.WaitSample(alias, Ros1Turtlebot3_msgsSensorState.MAX_WIRE_BYTES, attempts));
            if(result.Exchange.Primary != 0)
                return result;
            try
            {
                Ros1Turtlebot3_msgsSensorState next = Ros1Turtlebot3_msgsSensorState.Decode(result.Exchange.Wire);
                byte[] canonical = Ros1Turtlebot3_msgsSensorState.Encode(next);
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
         * @brief Read every field of turtlebot3_msgs/VersionInfo.
         * @param alias Exact independently granted topic-subscribe alias.
         * @param attempts Explicit idle poll credits in 1..250, each at most twenty milliseconds.
         * @return Owned record, canonical bytes and independent operation/cleanup facts.
         * @details Errno 11 alone permits another bounded idle poll. Invalid wire
         * yields 22 before committing a value; failed receives are never resized.
         */
        public static Observation.Result<Ros1Turtlebot3_msgsVersionInfo> ReadVersionInfo(string alias, int attempts)
        {
            Observation.Result<Ros1Turtlebot3_msgsVersionInfo> result =
                new Observation.Result<Ros1Turtlebot3_msgsVersionInfo>(Client.WaitSample(alias, Ros1Turtlebot3_msgsVersionInfo.MAX_WIRE_BYTES, attempts));
            if(result.Exchange.Primary != 0)
                return result;
            try
            {
                Ros1Turtlebot3_msgsVersionInfo next = Ros1Turtlebot3_msgsVersionInfo.Decode(result.Exchange.Wire);
                byte[] canonical = Ros1Turtlebot3_msgsVersionInfo.Encode(next);
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
         * @brief Read every field of turtlebot3_msgs/Sound.
         * @param alias Exact independently granted topic-subscribe alias.
         * @param attempts Explicit idle poll credits in 1..250, each at most twenty milliseconds.
         * @return Owned record, canonical bytes and independent operation/cleanup facts.
         * @details Errno 11 alone permits another bounded idle poll. Invalid wire
         * yields 22 before committing a value; failed receives are never resized.
         */
        public static Observation.Result<Ros1Turtlebot3_msgsSound> ReadSound(string alias, int attempts)
        {
            Observation.Result<Ros1Turtlebot3_msgsSound> result =
                new Observation.Result<Ros1Turtlebot3_msgsSound>(Client.WaitSample(alias, Ros1Turtlebot3_msgsSound.MAX_WIRE_BYTES, attempts));
            if(result.Exchange.Primary != 0)
                return result;
            try
            {
                Ros1Turtlebot3_msgsSound next = Ros1Turtlebot3_msgsSound.Decode(result.Exchange.Wire);
                byte[] canonical = Ros1Turtlebot3_msgsSound.Encode(next);
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
