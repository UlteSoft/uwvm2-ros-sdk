/**
 * @file Ros2Rmi_msgsSrvCallCommand_Request.cs
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
     * @brief Complete ROS 2 rmi_msgs/srv/CallCommand_Request value and canonical codec.
     * @details All fields, constants, defaults and nested capacities come from the
     * canonical bounded catalog. Instances own their strings/arrays/nested values.
     * Encode/decode perform no ROS operation and confer no authority. Native type
     * identity must still be independently qualified by the deployment registry.
     */
    public sealed class Ros2Rmi_msgsSrvCallCommand_Request
    {
        /** @brief Exact registered max wire bytes. */
        public const int MAX_WIRE_BYTES = 1104;
        /** @brief Exact registered min wire bytes. */
        public const int MIN_WIRE_BYTES = 16;
        /** @brief Original codec identity; empty native identity is unqualified. */
        public const string CODEC_IDENTITY = "UWVMROS1_d1f890a2beec0ca9294ff4f641d1738855d576a917ed05eb34517886c73f381c";
        /** @brief Original source type; empty native identity is unqualified. */
        public const string SOURCE_TYPE = "rmi_msgs/srv/CallCommand_Request";
        /** @brief Original native identity; empty native identity is unqualified. */
        public const string NATIVE_IDENTITY = "";
        /** @brief Complete native field command; scalar, text bound 0. */
        public Ros2Rmi_msgsMsgCommand field_command = new Ros2Rmi_msgsMsgCommand();
        /** @brief Complete native field options; scalar, text bound 0. */
        public Ros2Rmi_msgsMsgCommandOptions field_options = new Ros2Rmi_msgsMsgCommandOptions();

        /**
         * @brief Construct the complete original default value with owned storage.
         * @details Nested fixed arrays initialize every logical element; sequences
         * start empty. No native capability, pointer, or shared buffer is retained.
         */
        public Ros2Rmi_msgsSrvCallCommand_Request()
        {
        }

        /**
         * @brief Encode every field of one complete bounded value.
         * @param value Borrowed stable value; all referenced arrays remain caller-owned.
         * @return Newly owned complete canonical bytes, excluding unused capacity.
         * @details Invalid fields/bounds/semantics throw ArgumentException.
         */
        public static byte[] Encode(Ros2Rmi_msgsSrvCallCommand_Request value)
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
        public static Ros2Rmi_msgsSrvCallCommand_Request Decode(byte[] bytes)
        {
            if(bytes == null || bytes.Length < MIN_WIRE_BYTES || bytes.Length > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Invalid complete canonical extent");
            }
            Wire.Reader wire = new Wire.Reader(bytes);
            Ros2Rmi_msgsSrvCallCommand_Request value = ReadFields(wire);
            wire.Finish();
            return value;
        }

        /**
         * @brief Write this complete nested value within the enclosing aggregate bound.
         * @param wire Borrowed caller-owned finite writer.
         * @param value Borrowed stable complete value.
         * @return No value; invalid fields or aggregate bounds throw before publication.
         */
        internal static void WriteFields(Wire.Writer wire, Ros2Rmi_msgsSrvCallCommand_Request value)
        {
            if(value == null)
            {
                throw new ArgumentException("Null canonical record");
            }
            int start = wire.Position;
            Ros2Rmi_msgsMsgCommand.WriteFields(wire, value.field_command);
            Ros2Rmi_msgsMsgCommandOptions.WriteFields(wire, value.field_options);
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
        internal static Ros2Rmi_msgsSrvCallCommand_Request ReadFields(Wire.Reader wire)
        {
            int start = wire.Position;
            Ros2Rmi_msgsSrvCallCommand_Request value = new Ros2Rmi_msgsSrvCallCommand_Request();
            value.field_command = Ros2Rmi_msgsMsgCommand.ReadFields(wire);
            value.field_options = Ros2Rmi_msgsMsgCommandOptions.ReadFields(wire);
            if(wire.Position - start > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Nested aggregate exceeds registered wire bound");
            }
            return value;
        }
    }
}
