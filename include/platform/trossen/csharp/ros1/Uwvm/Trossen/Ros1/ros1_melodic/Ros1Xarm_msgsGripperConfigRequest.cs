using System;
using Uwvm.Ros;

namespace Uwvm.Trossen.Ros1.ros1_melodic
{
    /**
     * @brief Complete ROS 1 xarm_msgs/GripperConfigRequest value and canonical codec.
     * @details All fields, constants, defaults and nested capacities come from the
     * canonical bounded catalog. Instances own their strings/arrays/nested values.
     * Encode/decode perform no ROS operation and confer no authority. Native type
     * identity must still be independently qualified by the deployment registry.
     */
    public sealed class Ros1Xarm_msgsGripperConfigRequest
    {
        /** @brief Exact registered max wire bytes. */
        public const int MAX_WIRE_BYTES = 4;
        /** @brief Exact registered min wire bytes. */
        public const int MIN_WIRE_BYTES = 4;
        /** @brief Original codec identity; empty native identity is unqualified. */
        public const string CODEC_IDENTITY = "UWVMROS1_b82ba6fd59917a738ec433efd16f238d6538dfcaa3b6718f8f8fa1fa1d01c8c4";
        /** @brief Original source type; empty native identity is unqualified. */
        public const string SOURCE_TYPE = "xarm_msgs/GripperConfigRequest";
        /** @brief Original native identity; empty native identity is unqualified. */
        public const string NATIVE_IDENTITY = "";
        /** @brief Complete native field pulse_vel; scalar, text bound 0. */
        public float field_pulse_vel = BitConverter.Int32BitsToSingle(unchecked((int)0x00000000u));

        /**
         * @brief Construct the complete original default value with owned storage.
         * @details Nested fixed arrays initialize every logical element; sequences
         * start empty. No native capability, pointer, or shared buffer is retained.
         */
        public Ros1Xarm_msgsGripperConfigRequest()
        {
        }

        /**
         * @brief Encode every field of one complete bounded value.
         * @param value Borrowed stable value; all referenced arrays remain caller-owned.
         * @return Newly owned complete canonical bytes, excluding unused capacity.
         * @details Invalid fields/bounds/semantics throw ArgumentException.
         */
        public static byte[] Encode(Ros1Xarm_msgsGripperConfigRequest value)
        {
            Wire.Writer wire = new Wire.Writer(MAX_WIRE_BYTES);
            WriteFields(wire, value);
            return wire.Finish();
        }

        /**
         * @brief Decode transactionally with exact extent and trailing-byte checks.
         * @param bytes Borrowed immutable complete canonical body.
         * @return Newly owned full value; failed decoding commits no caller storage.
         * @details Invalid wire, text, bounds or semantics throw ArgumentException.
         */
        public static Ros1Xarm_msgsGripperConfigRequest Decode(byte[] bytes)
        {
            if(bytes == null || bytes.Length < MIN_WIRE_BYTES || bytes.Length > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Invalid complete canonical extent");
            }
            Wire.Reader wire = new Wire.Reader(bytes);
            Ros1Xarm_msgsGripperConfigRequest value = ReadFields(wire);
            wire.Finish();
            return value;
        }

        /**
         * @brief Write this complete nested value within the enclosing aggregate bound.
         * @param wire Borrowed caller-owned finite writer.
         * @param value Borrowed stable complete value.
         * @return No value; invalid fields or aggregate bounds throw before publication.
         */
        internal static void WriteFields(Wire.Writer wire, Ros1Xarm_msgsGripperConfigRequest value)
        {
            if(value == null)
            {
                throw new ArgumentException("Null canonical record");
            }
            int start = wire.Position;
            if(!float.IsFinite(value.field_pulse_vel))
            {
                throw new ArgumentException("Nonfinite pulse_vel");
            }
            wire.F32(value.field_pulse_vel);
            if(wire.Position - start > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Nested aggregate exceeds registered wire bound");
            }
        }

        /**
         * @brief Read one complete nested record without exposing partial values.
         * @param wire Borrowed immutable bounded reader and its private cursor.
         * @return Newly owned complete record; malformed nested input throws.
         * @details The caller separately requires complete top-level consumption.
         */
        internal static Ros1Xarm_msgsGripperConfigRequest ReadFields(Wire.Reader wire)
        {
            int start = wire.Position;
            Ros1Xarm_msgsGripperConfigRequest value = new Ros1Xarm_msgsGripperConfigRequest();
            value.field_pulse_vel = wire.F32();
            if(!float.IsFinite(value.field_pulse_vel))
            {
                throw new ArgumentException("Nonfinite pulse_vel");
            }
            if(wire.Position - start > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Nested aggregate exceeds registered wire bound");
            }
            return value;
        }
    }
}
