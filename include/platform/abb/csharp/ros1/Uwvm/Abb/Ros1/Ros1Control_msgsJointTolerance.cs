/**
 * @file Ros1Control_msgsJointTolerance.cs
 * @brief Represent the complete original ABB ROS 1 canonical value catalog.
 * @details The caller owns every record and its finite dynamic backing storage. Codecs retain all
 * fields, original constants and native defaults; field units and frames follow the retained
 * definitions. Malformed or out-of-bound wire values are rejected. These are guest values rather than
 * native ROS objects; importing them grants no transport alias.
 */
using System;
using Uwvm.Ros;

namespace Uwvm.Abb.Ros1
{
    /**
     * @brief Complete ROS 1 control_msgs/JointTolerance value and canonical codec.
     * @details All fields, constants, defaults and nested capacities come from the
     * canonical bounded catalog. Instances own their strings/arrays/nested values.
     * Encode/decode perform no ROS operation and confer no authority. Native type
     * identity must still be independently qualified by the deployment registry.
     */
    public sealed class Ros1Control_msgsJointTolerance
    {
        /** @brief Exact registered max wire bytes. */
        public const int MAX_WIRE_BYTES = 92;
        /** @brief Exact registered min wire bytes. */
        public const int MIN_WIRE_BYTES = 28;
        /** @brief Original codec identity; empty native identity is unqualified. */
        public const string CODEC_IDENTITY = "UWVMROS1_c9f71f98726d4a6621dcc8db96a394a24941a79d9041c8ad7a07724ee64d3c88";
        /** @brief Original source type; empty native identity is unqualified. */
        public const string SOURCE_TYPE = "control_msgs/JointTolerance";
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
        public Ros1Control_msgsJointTolerance()
        {
        }

        /**
         * @brief Encode every field of one complete bounded value.
         * @param value Borrowed stable value; all referenced arrays remain caller-owned.
         * @return Newly owned complete canonical bytes, excluding unused capacity.
         * @details Invalid fields/bounds/semantics throw ArgumentException.
         */
        public static byte[] Encode(Ros1Control_msgsJointTolerance value)
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
        public static Ros1Control_msgsJointTolerance Decode(byte[] bytes)
        {
            if(bytes == null || bytes.Length < MIN_WIRE_BYTES || bytes.Length > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Invalid complete canonical extent");
            }
            Wire.Reader wire = new Wire.Reader(bytes);
            Ros1Control_msgsJointTolerance value = ReadFields(wire);
            wire.Finish();
            return value;
        }

        /**
         * @brief Write this complete nested value within the enclosing aggregate bound.
         * @param wire Borrowed caller-owned finite writer.
         * @param value Borrowed stable complete value.
         * @return No value; invalid fields or aggregate bounds throw before publication.
         */
        internal static void WriteFields(Wire.Writer wire, Ros1Control_msgsJointTolerance value)
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
        internal static Ros1Control_msgsJointTolerance ReadFields(Wire.Reader wire)
        {
            int start = wire.Position;
            Ros1Control_msgsJointTolerance value = new Ros1Control_msgsJointTolerance();
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
