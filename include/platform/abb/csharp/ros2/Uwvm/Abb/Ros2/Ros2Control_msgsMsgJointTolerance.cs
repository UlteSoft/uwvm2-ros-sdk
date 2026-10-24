/**
 * @file Ros2Control_msgsMsgJointTolerance.cs
 * @brief Represent the complete original ABB ROS 2 canonical value catalog.
 * @details The caller owns every record and its finite dynamic backing storage. Codecs retain all
 * fields, original constants and native defaults; field units and frames follow the retained
 * definitions. Malformed or out-of-bound wire values are rejected. These are guest values rather than
 * native ROS objects; importing them grants no transport alias.
 */
using System;
using Uwvm.Ros;

namespace Uwvm.Abb.Ros2
{
    /**
     * @brief Complete ROS 2 control_msgs/msg/JointTolerance value and canonical codec.
     * @details All fields, constants, defaults and nested capacities come from the
     * canonical bounded catalog. Instances own their strings/arrays/nested values.
     * Encode/decode perform no ROS operation and confer no authority. Native type
     * identity must still be independently qualified by the deployment registry.
     */
    public sealed class Ros2Control_msgsMsgJointTolerance
    {
        /** @brief Exact registered max wire bytes. */
        public const int MAX_WIRE_BYTES = 92;
        /** @brief Exact registered min wire bytes. */
        public const int MIN_WIRE_BYTES = 28;
        /** @brief Original codec identity; empty native identity is unqualified. */
        public const string CODEC_IDENTITY = "UWVMROS1_ad7701ac1cb0dd68a947577272964b0d6051d1846019de97e9c9d0f7be7b2fa2";
        /** @brief Original source type; empty native identity is unqualified. */
        public const string SOURCE_TYPE = "control_msgs/msg/JointTolerance";
        /** @brief Original native identity; empty native identity is unqualified. */
        public const string NATIVE_IDENTITY = "";
        /** @brief Complete native field name; scalar, text bound 64. */
        public string field_name = "";
        /** @brief Complete native field position; scalar, text bound 0. */
        public double field_position = BitConverter.Int64BitsToDouble(unchecked((long)0x0000000000000000UL));
        /** @brief Complete native field velocity; scalar, text bound 0. */
        public double field_velocity = BitConverter.Int64BitsToDouble(unchecked((long)0x0000000000000000UL));
        /** @brief Complete native field acceleration; scalar, text bound 0. */
        public double field_acceleration = BitConverter.Int64BitsToDouble(unchecked((long)0x0000000000000000UL));

        /**
         * @brief Construct the complete original default value with owned storage.
         * @details Nested fixed arrays initialize every logical element; sequences
         * start empty. No native capability, pointer, or shared buffer is retained.
         */
        public Ros2Control_msgsMsgJointTolerance()
        {
        }

        /**
         * @brief Encode every field of one complete bounded value.
         * @param value Borrowed stable value; all referenced arrays remain caller-owned.
         * @return Newly owned complete canonical bytes, excluding unused capacity.
         * @details Invalid fields/bounds/semantics throw ArgumentException.
         */
        public static byte[] Encode(Ros2Control_msgsMsgJointTolerance value)
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
        public static Ros2Control_msgsMsgJointTolerance Decode(byte[] bytes)
        {
            if(bytes == null || bytes.Length < MIN_WIRE_BYTES || bytes.Length > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Invalid complete canonical extent");
            }
            Wire.Reader wire = new Wire.Reader(bytes);
            Ros2Control_msgsMsgJointTolerance value = ReadFields(wire);
            wire.Finish();
            return value;
        }

        /**
         * @brief Write this complete nested value within the enclosing aggregate bound.
         * @param wire Borrowed caller-owned finite writer.
         * @param value Borrowed stable complete value.
         * @return No value; invalid fields or aggregate bounds throw before publication.
         */
        internal static void WriteFields(Wire.Writer wire, Ros2Control_msgsMsgJointTolerance value)
        {
            if(value == null)
            {
                throw new ArgumentException("Null canonical record");
            }
            int start = wire.Position;
            wire.String(value.field_name, 64);
            if(!double.IsFinite(value.field_position))
            {
                throw new ArgumentException("Nonfinite position");
            }
            wire.F64(value.field_position);
            if(!double.IsFinite(value.field_velocity))
            {
                throw new ArgumentException("Nonfinite velocity");
            }
            wire.F64(value.field_velocity);
            if(!double.IsFinite(value.field_acceleration))
            {
                throw new ArgumentException("Nonfinite acceleration");
            }
            wire.F64(value.field_acceleration);
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
        internal static Ros2Control_msgsMsgJointTolerance ReadFields(Wire.Reader wire)
        {
            int start = wire.Position;
            Ros2Control_msgsMsgJointTolerance value = new Ros2Control_msgsMsgJointTolerance();
            value.field_name = wire.String(64);
            value.field_position = wire.F64();
            if(!double.IsFinite(value.field_position))
            {
                throw new ArgumentException("Nonfinite position");
            }
            value.field_velocity = wire.F64();
            if(!double.IsFinite(value.field_velocity))
            {
                throw new ArgumentException("Nonfinite velocity");
            }
            value.field_acceleration = wire.F64();
            if(!double.IsFinite(value.field_acceleration))
            {
                throw new ArgumentException("Nonfinite acceleration");
            }
            if(wire.Position - start > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Nested aggregate exceeds registered wire bound");
            }
            return value;
        }
    }
}
