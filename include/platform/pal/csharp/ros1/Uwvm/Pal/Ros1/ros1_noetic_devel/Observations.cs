using System;
using Uwvm.Pal;

namespace Uwvm.Pal.Ros1.ros1_noetic_devel
{
    /** @brief Observe complete source-pinned original records.
     * @details Every original field is decoded and reencoded before commit.
     * One independently granted subscription is closed by the shared client. */
    public static class Observations
    {
        /**
         * @brief Read every field of pal_device_msgs/BatteryState.
         * @param alias Exact independently granted topic-subscribe alias.
         * @param attempts Explicit idle poll credits in 1..250, each at most twenty milliseconds.
         * @return Owned record, canonical bytes and independent operation/cleanup facts.
         * @details Errno 11 alone permits another bounded idle poll. Invalid wire
         * yields 22 before committing a value; failed receives are never resized.
         */
        public static Observation.Result<Ros1Pal_device_msgsBatteryState> ReadBatteryState(string alias, int attempts)
        {
            Observation.Result<Ros1Pal_device_msgsBatteryState> result =
                new Observation.Result<Ros1Pal_device_msgsBatteryState>(
                    Observation.WaitSample(alias, Ros1Pal_device_msgsBatteryState.MAX_WIRE_BYTES, attempts));
            if (result.Exchange.Primary != 0)
                return result;
            try
            {
                Ros1Pal_device_msgsBatteryState next = Ros1Pal_device_msgsBatteryState.Decode(result.Exchange.Wire);
                byte[] canonical = Ros1Pal_device_msgsBatteryState.Encode(next);
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
         * @brief Read every field of pal_device_msgs/Bumper.
         * @param alias Exact independently granted topic-subscribe alias.
         * @param attempts Explicit idle poll credits in 1..250, each at most twenty milliseconds.
         * @return Owned record, canonical bytes and independent operation/cleanup facts.
         * @details Errno 11 alone permits another bounded idle poll. Invalid wire
         * yields 22 before committing a value; failed receives are never resized.
         */
        public static Observation.Result<Ros1Pal_device_msgsBumper> ReadBumper(string alias, int attempts)
        {
            Observation.Result<Ros1Pal_device_msgsBumper> result = new Observation.Result<Ros1Pal_device_msgsBumper>(
                Observation.WaitSample(alias, Ros1Pal_device_msgsBumper.MAX_WIRE_BYTES, attempts));
            if (result.Exchange.Primary != 0)
                return result;
            try
            {
                Ros1Pal_device_msgsBumper next = Ros1Pal_device_msgsBumper.Decode(result.Exchange.Wire);
                byte[] canonical = Ros1Pal_device_msgsBumper.Encode(next);
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
         * @brief Read every field of pal_device_msgs/LedGroup.
         * @param alias Exact independently granted topic-subscribe alias.
         * @param attempts Explicit idle poll credits in 1..250, each at most twenty milliseconds.
         * @return Owned record, canonical bytes and independent operation/cleanup facts.
         * @details Errno 11 alone permits another bounded idle poll. Invalid wire
         * yields 22 before committing a value; failed receives are never resized.
         */
        public static Observation.Result<Ros1Pal_device_msgsLedGroup> ReadLedGroup(string alias, int attempts)
        {
            Observation.Result<Ros1Pal_device_msgsLedGroup> result =
                new Observation.Result<Ros1Pal_device_msgsLedGroup>(
                    Observation.WaitSample(alias, Ros1Pal_device_msgsLedGroup.MAX_WIRE_BYTES, attempts));
            if (result.Exchange.Primary != 0)
                return result;
            try
            {
                Ros1Pal_device_msgsLedGroup next = Ros1Pal_device_msgsLedGroup.Decode(result.Exchange.Wire);
                byte[] canonical = Ros1Pal_device_msgsLedGroup.Encode(next);
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
