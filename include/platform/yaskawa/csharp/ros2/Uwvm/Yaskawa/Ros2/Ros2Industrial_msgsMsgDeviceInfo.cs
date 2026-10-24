/**
 * @file Ros2Industrial_msgsMsgDeviceInfo.cs
 * @brief Represent the complete original YASKAWA ROS 2 canonical value catalog.
 * @details The caller owns every record and its finite dynamic backing storage. Codecs retain all
 * fields, original constants and native defaults; field units and frames follow the retained
 * definitions. Malformed or out-of-bound wire values are rejected. These are guest values rather than
 * native ROS objects; importing them grants no transport alias.
 */
using System;
using Uwvm.Ros;

namespace Uwvm.Yaskawa.Ros2
{
    /**
     * @brief Complete ROS 2 industrial_msgs/msg/DeviceInfo value and canonical codec.
     * @details All fields, constants, defaults and nested capacities come from the
     * canonical bounded catalog. Instances own their strings/arrays/nested values.
     * Encode/decode perform no ROS operation and confer no authority. Native type
     * identity must still be independently qualified by the deployment registry.
     */
    public sealed class Ros2Industrial_msgsMsgDeviceInfo
    {
        /** @brief Exact registered max wire bytes. */
        public const int MAX_WIRE_BYTES = 2580;
        /** @brief Exact registered min wire bytes. */
        public const int MIN_WIRE_BYTES = 20;
        /** @brief Original codec identity; empty native identity is unqualified. */
        public const string CODEC_IDENTITY = "UWVMROS1_f9a5962800e17495f34dbb73f37373df22f900e528c630497417f78cdecb283b";
        /** @brief Original source type; empty native identity is unqualified. */
        public const string SOURCE_TYPE = "industrial_msgs/msg/DeviceInfo";
        /** @brief Original native identity; empty native identity is unqualified. */
        public const string NATIVE_IDENTITY = "";
        /** @brief Complete native field model; scalar, text bound 512. */
        public string field_model = "";
        /** @brief Complete native field serial_number; scalar, text bound 512. */
        public string field_serial_number = "";
        /** @brief Complete native field hw_version; scalar, text bound 512. */
        public string field_hw_version = "";
        /** @brief Complete native field sw_version; scalar, text bound 512. */
        public string field_sw_version = "";
        /** @brief Complete native field address; scalar, text bound 512. */
        public string field_address = "";

        /**
         * @brief Construct the complete original default value with owned storage.
         * @details Nested fixed arrays initialize every logical element; sequences
         * start empty. No native capability, pointer, or shared buffer is retained.
         */
        public Ros2Industrial_msgsMsgDeviceInfo()
        {
        }

        /**
         * @brief Encode every field of one complete bounded value.
         * @param value Borrowed stable value; all referenced arrays remain caller-owned.
         * @return Newly owned complete canonical bytes, excluding unused capacity.
         * @details Invalid fields/bounds/semantics throw ArgumentException.
         */
        public static byte[] Encode(Ros2Industrial_msgsMsgDeviceInfo value)
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
        public static Ros2Industrial_msgsMsgDeviceInfo Decode(byte[] bytes)
        {
            if(bytes == null || bytes.Length < MIN_WIRE_BYTES || bytes.Length > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Invalid complete canonical extent");
            }
            Wire.Reader wire = new Wire.Reader(bytes);
            Ros2Industrial_msgsMsgDeviceInfo value = ReadFields(wire);
            wire.Finish();
            return value;
        }

        /**
         * @brief Write this complete nested value within the enclosing aggregate bound.
         * @param wire Borrowed caller-owned finite writer.
         * @param value Borrowed stable complete value.
         * @return No value; invalid fields or aggregate bounds throw before publication.
         */
        internal static void WriteFields(Wire.Writer wire, Ros2Industrial_msgsMsgDeviceInfo value)
        {
            if(value == null)
            {
                throw new ArgumentException("Null canonical record");
            }
            int start = wire.Position;
            wire.String(value.field_model, 512);
            wire.String(value.field_serial_number, 512);
            wire.String(value.field_hw_version, 512);
            wire.String(value.field_sw_version, 512);
            wire.String(value.field_address, 512);
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
        internal static Ros2Industrial_msgsMsgDeviceInfo ReadFields(Wire.Reader wire)
        {
            int start = wire.Position;
            Ros2Industrial_msgsMsgDeviceInfo value = new Ros2Industrial_msgsMsgDeviceInfo();
            value.field_model = wire.String(512);
            value.field_serial_number = wire.String(512);
            value.field_hw_version = wire.String(512);
            value.field_sw_version = wire.String(512);
            value.field_address = wire.String(512);
            if(wire.Position - start > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Nested aggregate exceeds registered wire bound");
            }
            return value;
        }
    }
}
