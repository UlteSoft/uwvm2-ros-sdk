/**
 * @file Ros2Rmi_msgsMsgCallParam.cs
 * @brief Represent the complete original FANUC ROS 2 canonical value catalog.
 * @details The caller owns every record and its finite dynamic backing storage. Codecs retain all
 * fields, original constants and native defaults; field units and frames follow the retained
 * definitions. Malformed or out-of-bound wire values are rejected. These are guest values rather than
 * native ROS objects; importing them grants no transport alias.
 */
using System;
using Uwvm.Ros;

namespace Uwvm.Fanuc.Ros2
{
    /**
     * @brief Complete ROS 2 rmi_msgs/msg/CallParam value and canonical codec.
     * @details All fields, constants, defaults and nested capacities come from the
     * canonical bounded catalog. Instances own their strings/arrays/nested values.
     * Encode/decode perform no ROS operation and confer no authority. Native type
     * identity must still be independently qualified by the deployment registry.
     */
    public sealed class Ros2Rmi_msgsMsgCallParam
    {
        /** @brief Exact registered max wire bytes. */
        public const int MAX_WIRE_BYTES = 592;
        /** @brief Exact registered min wire bytes. */
        public const int MIN_WIRE_BYTES = 16;
        /** @brief Original codec identity; empty native identity is unqualified. */
        public const string CODEC_IDENTITY = "UWVMROS1_ed625d80db6c4314b8373f2d205344d6ab8d71be46182dab5a497d36564a2255";
        /** @brief Original source type; empty native identity is unqualified. */
        public const string SOURCE_TYPE = "rmi_msgs/msg/CallParam";
        /** @brief Original native identity; empty native identity is unqualified. */
        public const string NATIVE_IDENTITY = "";
        /** @brief Original source constant AR; consumes no instance wire bytes. */
        public const string CONST_AR = "AR";
        /** @brief Original source constant PR; consumes no instance wire bytes. */
        public const string CONST_PR = "PR";
        /** @brief Original source constant SR; consumes no instance wire bytes. */
        public const string CONST_SR = "SR";
        /** @brief Original source constant R; consumes no instance wire bytes. */
        public const string CONST_R = "R";
        /** @brief Original source constant P; consumes no instance wire bytes. */
        public const string CONST_P = "P";
        /** @brief Original source constant INT; consumes no instance wire bytes. */
        public const string CONST_INT = "INT";
        /** @brief Original source constant INTEGER; consumes no instance wire bytes. */
        public const string CONST_INTEGER = "INT";
        /** @brief Original source constant FLOAT; consumes no instance wire bytes. */
        public const string CONST_FLOAT = "FLOAT";
        /** @brief Original source constant STRING; consumes no instance wire bytes. */
        public const string CONST_STRING = "String";
        /** @brief Original source constant STR; consumes no instance wire bytes. */
        public const string CONST_STR = "String";
        /** @brief Complete native field type; scalar, text bound 64. */
        public string field_type = "";
        /** @brief Complete native field int_value; scalar, text bound 0. */
        public int field_int_value = 0;
        /** @brief Complete native field float_value; scalar, text bound 0. */
        public float field_float_value = BitConverter.Int32BitsToSingle(unchecked((int)0x00000000u));
        /** @brief Complete native field string_value; scalar, text bound 512. */
        public string field_string_value = "";

        /**
         * @brief Construct the complete original default value with owned storage.
         * @details Nested fixed arrays initialize every logical element; sequences
         * start empty. No native capability, pointer, or shared buffer is retained.
         */
        public Ros2Rmi_msgsMsgCallParam()
        {
        }

        /**
         * @brief Encode every field of one complete bounded value.
         * @param value Borrowed stable value; all referenced arrays remain caller-owned.
         * @return Newly owned complete canonical bytes, excluding unused capacity.
         * @details Invalid fields/bounds/semantics throw ArgumentException.
         */
        public static byte[] Encode(Ros2Rmi_msgsMsgCallParam value)
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
        public static Ros2Rmi_msgsMsgCallParam Decode(byte[] bytes)
        {
            if(bytes == null || bytes.Length < MIN_WIRE_BYTES || bytes.Length > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Invalid complete canonical extent");
            }
            Wire.Reader wire = new Wire.Reader(bytes);
            Ros2Rmi_msgsMsgCallParam value = ReadFields(wire);
            wire.Finish();
            return value;
        }

        /**
         * @brief Write this complete nested value within the enclosing aggregate bound.
         * @param wire Borrowed caller-owned finite writer.
         * @param value Borrowed stable complete value.
         * @return No value; invalid fields or aggregate bounds throw before publication.
         */
        internal static void WriteFields(Wire.Writer wire, Ros2Rmi_msgsMsgCallParam value)
        {
            if(value == null)
            {
                throw new ArgumentException("Null canonical record");
            }
            int start = wire.Position;
            wire.String(value.field_type, 64);
            wire.I32(value.field_int_value);
            if(!float.IsFinite(value.field_float_value))
            {
                throw new ArgumentException("Nonfinite float_value");
            }
            wire.F32(value.field_float_value);
            wire.String(value.field_string_value, 512);
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
        internal static Ros2Rmi_msgsMsgCallParam ReadFields(Wire.Reader wire)
        {
            int start = wire.Position;
            Ros2Rmi_msgsMsgCallParam value = new Ros2Rmi_msgsMsgCallParam();
            value.field_type = wire.String(64);
            value.field_int_value = wire.I32();
            value.field_float_value = wire.F32();
            if(!float.IsFinite(value.field_float_value))
            {
                throw new ArgumentException("Nonfinite float_value");
            }
            value.field_string_value = wire.String(512);
            if(wire.Position - start > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Nested aggregate exceeds registered wire bound");
            }
            return value;
        }
    }
}
