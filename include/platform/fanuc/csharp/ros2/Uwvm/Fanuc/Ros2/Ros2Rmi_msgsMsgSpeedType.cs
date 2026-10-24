/**
 * @file Ros2Rmi_msgsMsgSpeedType.cs
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
     * @brief Complete ROS 2 rmi_msgs/msg/SpeedType value and canonical codec.
     * @details All fields, constants, defaults and nested capacities come from the
     * canonical bounded catalog. Instances own their strings/arrays/nested values.
     * Encode/decode perform no ROS operation and confer no authority. Native type
     * identity must still be independently qualified by the deployment registry.
     */
    public sealed class Ros2Rmi_msgsMsgSpeedType
    {
        /** @brief Exact registered max wire bytes. */
        public const int MAX_WIRE_BYTES = 68;
        /** @brief Exact registered min wire bytes. */
        public const int MIN_WIRE_BYTES = 4;
        /** @brief Original codec identity; empty native identity is unqualified. */
        public const string CODEC_IDENTITY = "UWVMROS1_e4f4dbda84d8d8cd4d026b0beb52005663c7c4ee602c8d1e4d5853589777c282";
        /** @brief Original source type; empty native identity is unqualified. */
        public const string SOURCE_TYPE = "rmi_msgs/msg/SpeedType";
        /** @brief Original native identity; empty native identity is unqualified. */
        public const string NATIVE_IDENTITY = "";
        /** @brief Original source constant PERCENT; consumes no instance wire bytes. */
        public const string CONST_PERCENT = "Percent";
        /** @brief Original source constant PERCENTAGE; consumes no instance wire bytes. */
        public const string CONST_PERCENTAGE = "Percent";
        /** @brief Original source constant MMSEC; consumes no instance wire bytes. */
        public const string CONST_MMSEC = "mmSec";
        /** @brief Original source constant INCHMIN; consumes no instance wire bytes. */
        public const string CONST_INCHMIN = "InchMin";
        /** @brief Original source constant TIME; consumes no instance wire bytes. */
        public const string CONST_TIME = "Time";
        /** @brief Original source constant SECONDS; consumes no instance wire bytes. */
        public const string CONST_SECONDS = "Time";
        /** @brief Original source constant SEC; consumes no instance wire bytes. */
        public const string CONST_SEC = "Time";
        /** @brief Original source constant MSEC; consumes no instance wire bytes. */
        public const string CONST_MSEC = "mSec";
        /** @brief Complete native field type; scalar, text bound 64. */
        public string field_type = "Percent";

        /**
         * @brief Construct the complete original default value with owned storage.
         * @details Nested fixed arrays initialize every logical element; sequences
         * start empty. No native capability, pointer, or shared buffer is retained.
         */
        public Ros2Rmi_msgsMsgSpeedType()
        {
        }

        /**
         * @brief Encode every field of one complete bounded value.
         * @param value Borrowed stable value; all referenced arrays remain caller-owned.
         * @return Newly owned complete canonical bytes, excluding unused capacity.
         * @details Invalid fields/bounds/semantics throw ArgumentException.
         */
        public static byte[] Encode(Ros2Rmi_msgsMsgSpeedType value)
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
        public static Ros2Rmi_msgsMsgSpeedType Decode(byte[] bytes)
        {
            if(bytes == null || bytes.Length < MIN_WIRE_BYTES || bytes.Length > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Invalid complete canonical extent");
            }
            Wire.Reader wire = new Wire.Reader(bytes);
            Ros2Rmi_msgsMsgSpeedType value = ReadFields(wire);
            wire.Finish();
            return value;
        }

        /**
         * @brief Write this complete nested value within the enclosing aggregate bound.
         * @param wire Borrowed caller-owned finite writer.
         * @param value Borrowed stable complete value.
         * @return No value; invalid fields or aggregate bounds throw before publication.
         */
        internal static void WriteFields(Wire.Writer wire, Ros2Rmi_msgsMsgSpeedType value)
        {
            if(value == null)
            {
                throw new ArgumentException("Null canonical record");
            }
            int start = wire.Position;
            wire.String(value.field_type, 64);
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
        internal static Ros2Rmi_msgsMsgSpeedType ReadFields(Wire.Reader wire)
        {
            int start = wire.Position;
            Ros2Rmi_msgsMsgSpeedType value = new Ros2Rmi_msgsMsgSpeedType();
            value.field_type = wire.String(64);
            if(wire.Position - start > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Nested aggregate exceeds registered wire bound");
            }
            return value;
        }
    }
}
