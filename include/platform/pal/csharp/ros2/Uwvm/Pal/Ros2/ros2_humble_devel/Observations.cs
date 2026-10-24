using System;
using Uwvm.Pal;

namespace Uwvm.Pal.Ros2.ros2_humble_devel
{
    /** @brief Observe complete source-pinned original records.
     * @details Every original field is decoded and reencoded before commit.
     * One independently granted subscription is closed by the shared client. */
    public static class Observations
    {
        /**
         * @brief Read every field of pal_device_msgs/msg/BatteryState.
         * @param alias Exact independently granted topic-subscribe alias.
         * @param attempts Explicit idle poll credits in 1..250, each at most twenty milliseconds.
         * @return Owned record, canonical bytes and independent operation/cleanup facts.
         * @details Errno 11 alone permits another bounded idle poll. Invalid wire
         * yields 22 before committing a value; failed receives are never resized.
         */
        public static Observation.Result<Ros2Pal_device_msgsMsgBatteryState> ReadBatteryState(string alias,
                                                                                              int attempts)
        {
            Observation.Result<Ros2Pal_device_msgsMsgBatteryState> result =
                new Observation.Result<Ros2Pal_device_msgsMsgBatteryState>(
                    Observation.WaitSample(alias, Ros2Pal_device_msgsMsgBatteryState.MAX_WIRE_BYTES, attempts));
            if (result.Exchange.Primary != 0)
                return result;
            try
            {
                Ros2Pal_device_msgsMsgBatteryState next =
                    Ros2Pal_device_msgsMsgBatteryState.Decode(result.Exchange.Wire);
                byte[] canonical = Ros2Pal_device_msgsMsgBatteryState.Encode(next);
                result.Response = next;
                result.Canonical = canonical;
            }
            catch (ArgumentException invalid)
            {
                result.Exchange.Primary = 22;
            }
            return result;
        }

        /**
         * @brief Read every field of pal_device_msgs/msg/Bumper.
         * @param alias Exact independently granted topic-subscribe alias.
         * @param attempts Explicit idle poll credits in 1..250, each at most twenty milliseconds.
         * @return Owned record, canonical bytes and independent operation/cleanup facts.
         * @details Errno 11 alone permits another bounded idle poll. Invalid wire
         * yields 22 before committing a value; failed receives are never resized.
         */
        public static Observation.Result<Ros2Pal_device_msgsMsgBumper> ReadBumper(string alias, int attempts)
        {
            Observation.Result<Ros2Pal_device_msgsMsgBumper> result =
                new Observation.Result<Ros2Pal_device_msgsMsgBumper>(
                    Observation.WaitSample(alias, Ros2Pal_device_msgsMsgBumper.MAX_WIRE_BYTES, attempts));
            if (result.Exchange.Primary != 0)
                return result;
            try
            {
                Ros2Pal_device_msgsMsgBumper next = Ros2Pal_device_msgsMsgBumper.Decode(result.Exchange.Wire);
                byte[] canonical = Ros2Pal_device_msgsMsgBumper.Encode(next);
                result.Response = next;
                result.Canonical = canonical;
            }
            catch (ArgumentException invalid)
            {
                result.Exchange.Primary = 22;
            }
            return result;
        }

        /**
         * @brief Read every field of pal_device_msgs/msg/LedGroup.
         * @param alias Exact independently granted topic-subscribe alias.
         * @param attempts Explicit idle poll credits in 1..250, each at most twenty milliseconds.
         * @return Owned record, canonical bytes and independent operation/cleanup facts.
         * @details Errno 11 alone permits another bounded idle poll. Invalid wire
         * yields 22 before committing a value; failed receives are never resized.
         */
        public static Observation.Result<Ros2Pal_device_msgsMsgLedGroup> ReadLedGroup(string alias, int attempts)
        {
            Observation.Result<Ros2Pal_device_msgsMsgLedGroup> result =
                new Observation.Result<Ros2Pal_device_msgsMsgLedGroup>(
                    Observation.WaitSample(alias, Ros2Pal_device_msgsMsgLedGroup.MAX_WIRE_BYTES, attempts));
            if (result.Exchange.Primary != 0)
                return result;
            try
            {
                Ros2Pal_device_msgsMsgLedGroup next = Ros2Pal_device_msgsMsgLedGroup.Decode(result.Exchange.Wire);
                byte[] canonical = Ros2Pal_device_msgsMsgLedGroup.Encode(next);
                result.Response = next;
                result.Canonical = canonical;
            }
            catch (ArgumentException invalid)
            {
                result.Exchange.Primary = 22;
            }
            return result;
        }
    }
}
