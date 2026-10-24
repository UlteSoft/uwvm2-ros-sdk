/**
 * @file Ros2Rmi_msgsSrvAddCall_Request.cs
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
     * @brief Complete ROS 2 rmi_msgs/srv/AddCall_Request value and canonical codec.
     * @details All fields, constants, defaults and nested capacities come from the
     * canonical bounded catalog. Instances own their strings/arrays/nested values.
     * Encode/decode perform no ROS operation and confer no authority. Native type
     * identity must still be independently qualified by the deployment registry.
     */
    public sealed class Ros2Rmi_msgsSrvAddCall_Request
    {
        /** @brief Exact registered max wire bytes. */
        public const int MAX_WIRE_BYTES = 9992;
        /** @brief Exact registered min wire bytes. */
        public const int MIN_WIRE_BYTES = 8;
        /** @brief Original codec identity; empty native identity is unqualified. */
        public const string CODEC_IDENTITY = "UWVMROS1_4d652cfbaef29487a0a688932ee926d7a4026c5e7ac8a0eace583b503c37bcd8";
        /** @brief Original source type; empty native identity is unqualified. */
        public const string SOURCE_TYPE = "rmi_msgs/srv/AddCall_Request";
        /** @brief Original native identity; empty native identity is unqualified. */
        public const string NATIVE_IDENTITY = "";
        /** @brief Complete native field program_name; scalar, text bound 512. */
        public string field_program_name = "";
        /** @brief Complete native field params; sequence capacity 16, text bound 0. */
        public Ros2Rmi_msgsMsgCallParam[] field_params = new Ros2Rmi_msgsMsgCallParam[0];

        /**
         * @brief Construct the complete original default value with owned storage.
         * @details Nested fixed arrays initialize every logical element; sequences
         * start empty. No native capability, pointer, or shared buffer is retained.
         */
        public Ros2Rmi_msgsSrvAddCall_Request()
        {
        }

        /**
         * @brief Encode every field of one complete bounded value.
         * @param value Borrowed stable value; all referenced arrays remain caller-owned.
         * @return Newly owned complete canonical bytes, excluding unused capacity.
         * @details Invalid fields/bounds/semantics throw ArgumentException.
         */
        public static byte[] Encode(Ros2Rmi_msgsSrvAddCall_Request value)
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
        public static Ros2Rmi_msgsSrvAddCall_Request Decode(byte[] bytes)
        {
            if(bytes == null || bytes.Length < MIN_WIRE_BYTES || bytes.Length > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Invalid complete canonical extent");
            }
            Wire.Reader wire = new Wire.Reader(bytes);
            Ros2Rmi_msgsSrvAddCall_Request value = ReadFields(wire);
            wire.Finish();
            return value;
        }

        /**
         * @brief Write this complete nested value within the enclosing aggregate bound.
         * @param wire Borrowed caller-owned finite writer.
         * @param value Borrowed stable complete value.
         * @return No value; invalid fields or aggregate bounds throw before publication.
         */
        internal static void WriteFields(Wire.Writer wire, Ros2Rmi_msgsSrvAddCall_Request value)
        {
            if(value == null)
            {
                throw new ArgumentException("Null canonical record");
            }
            int start = wire.Position;
            wire.String(value.field_program_name, 512);
            if(value.field_params == null || value.field_params.Length > 16)
            {
                throw new ArgumentException("Invalid params extent");
            }
            wire.U32((uint)value.field_params.Length);
            for(int index = 0; index < value.field_params.Length; ++index)
            {
                Ros2Rmi_msgsMsgCallParam.WriteFields(wire, value.field_params[index]);
            }
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
        internal static Ros2Rmi_msgsSrvAddCall_Request ReadFields(Wire.Reader wire)
        {
            int start = wire.Position;
            Ros2Rmi_msgsSrvAddCall_Request value = new Ros2Rmi_msgsSrvAddCall_Request();
            value.field_program_name = wire.String(512);
            value.field_params = new Ros2Rmi_msgsMsgCallParam[wire.Count(16)];
            for(int index = 0; index < value.field_params.Length; ++index)
            {
                value.field_params[index] = Ros2Rmi_msgsMsgCallParam.ReadFields(wire);
            }
            if(wire.Position - start > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Nested aggregate exceeds registered wire bound");
            }
            return value;
        }
    }
}
