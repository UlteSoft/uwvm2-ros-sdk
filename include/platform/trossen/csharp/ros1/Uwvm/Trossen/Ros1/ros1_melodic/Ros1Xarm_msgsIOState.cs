using System;
using Uwvm.Ros;

namespace Uwvm.Trossen.Ros1.ros1_melodic
{
    /**
     * @brief Complete ROS 1 xarm_msgs/IOState value and canonical codec.
     * @details All fields, constants, defaults and nested capacities come from the
     * canonical bounded catalog. Instances own their strings/arrays/nested values.
     * Encode/decode perform no ROS operation and confer no authority. Native type
     * identity must still be independently qualified by the deployment registry.
     */
    public sealed class Ros1Xarm_msgsIOState
    {
        /** @brief Exact registered max wire bytes. */
        public const int MAX_WIRE_BYTES = 16;
        /** @brief Exact registered min wire bytes. */
        public const int MIN_WIRE_BYTES = 16;
        /** @brief Original codec identity; empty native identity is unqualified. */
        public const string CODEC_IDENTITY = "UWVMROS1_93ef0c71a5fed6eaa7c8e87447b280778ffd05c376cf41a577c71acfeb02d996";
        /** @brief Original source type; empty native identity is unqualified. */
        public const string SOURCE_TYPE = "xarm_msgs/IOState";
        /** @brief Original native identity; empty native identity is unqualified. */
        public const string NATIVE_IDENTITY = "";
        /** @brief Complete native field digital_1; scalar, text bound 0. */
        public int field_digital_1 = 0;
        /** @brief Complete native field digital_2; scalar, text bound 0. */
        public int field_digital_2 = 0;
        /** @brief Complete native field analog_1; scalar, text bound 0. */
        public float field_analog_1 = BitConverter.Int32BitsToSingle(unchecked((int)0x00000000u));
        /** @brief Complete native field analog_2; scalar, text bound 0. */
        public float field_analog_2 = BitConverter.Int32BitsToSingle(unchecked((int)0x00000000u));

        /**
         * @brief Construct the complete original default value with owned storage.
         * @details Nested fixed arrays initialize every logical element; sequences
         * start empty. No native capability, pointer, or shared buffer is retained.
         */
        public Ros1Xarm_msgsIOState()
        {
        }

        /**
         * @brief Encode every field of one complete bounded value.
         * @param value Borrowed stable value; all referenced arrays remain caller-owned.
         * @return Newly owned complete canonical bytes, excluding unused capacity.
         * @details Invalid fields/bounds/semantics throw ArgumentException.
         */
        public static byte[] Encode(Ros1Xarm_msgsIOState value)
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
        public static Ros1Xarm_msgsIOState Decode(byte[] bytes)
        {
            if(bytes == null || bytes.Length < MIN_WIRE_BYTES || bytes.Length > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Invalid complete canonical extent");
            }
            Wire.Reader wire = new Wire.Reader(bytes);
            Ros1Xarm_msgsIOState value = ReadFields(wire);
            wire.Finish();
            return value;
        }

        /**
         * @brief Write this complete nested value within the enclosing aggregate bound.
         * @param wire Borrowed caller-owned finite writer.
         * @param value Borrowed stable complete value.
         * @return No value; invalid fields or aggregate bounds throw before publication.
         */
        internal static void WriteFields(Wire.Writer wire, Ros1Xarm_msgsIOState value)
        {
            if(value == null)
            {
                throw new ArgumentException("Null canonical record");
            }
            int start = wire.Position;
            wire.I32(value.field_digital_1);
            wire.I32(value.field_digital_2);
            if(!float.IsFinite(value.field_analog_1))
            {
                throw new ArgumentException("Nonfinite analog_1");
            }
            wire.F32(value.field_analog_1);
            if(!float.IsFinite(value.field_analog_2))
            {
                throw new ArgumentException("Nonfinite analog_2");
            }
            wire.F32(value.field_analog_2);
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
        internal static Ros1Xarm_msgsIOState ReadFields(Wire.Reader wire)
        {
            int start = wire.Position;
            Ros1Xarm_msgsIOState value = new Ros1Xarm_msgsIOState();
            value.field_digital_1 = wire.I32();
            value.field_digital_2 = wire.I32();
            value.field_analog_1 = wire.F32();
            if(!float.IsFinite(value.field_analog_1))
            {
                throw new ArgumentException("Nonfinite analog_1");
            }
            value.field_analog_2 = wire.F32();
            if(!float.IsFinite(value.field_analog_2))
            {
                throw new ArgumentException("Nonfinite analog_2");
            }
            if(wire.Position - start > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Nested aggregate exceeds registered wire bound");
            }
            return value;
        }
    }
}
