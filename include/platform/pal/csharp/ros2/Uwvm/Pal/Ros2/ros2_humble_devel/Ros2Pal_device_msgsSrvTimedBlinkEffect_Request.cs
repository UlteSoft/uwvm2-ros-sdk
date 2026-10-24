using System;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Pal.Ros2.ros2_humble_devel
{
    /**
     * @brief Complete ROS 2 pal_device_msgs/srv/TimedBlinkEffect_Request value and canonical codec.
     * @details All fields, constants, defaults and nested capacities come from the
     * canonical bounded catalog. Instances own their strings/arrays/nested values.
     * Encode/decode perform no ROS operation and confer no authority. Native type
     * identity must still be independently qualified by the deployment registry.
     */
    public sealed class Ros2Pal_device_msgsSrvTimedBlinkEffect_Request
    {
        /** @brief Exact registered max wire bytes. */
        public const int MAX_WIRE_BYTES = 61;
        /** @brief Exact registered min wire bytes. */
        public const int MIN_WIRE_BYTES = 61;
        /** @brief Original codec identity; empty native identity is unqualified. */
        public const string CODEC_IDENTITY =
            "UWVMROS1_17a50bf4f71fe6d4d3e9d146df74fac1c2d6ed69c5899c51517785cdfcb9b15c";
        /** @brief Original source type; empty native identity is unqualified. */
        public const string SOURCE_TYPE = "pal_device_msgs/srv/TimedBlinkEffect_Request";
        /** @brief Original native identity; empty native identity is unqualified. */
        public const string NATIVE_IDENTITY = "";
        /** @brief Complete native field leds; scalar, text bound 0. */
        public Ros2Pal_device_msgsMsgLedGroup field_leds = new Ros2Pal_device_msgsMsgLedGroup();
        /** @brief Complete native field first_color; scalar, text bound 0. */
        public Ros2Std_msgsMsgColorRGBA field_first_color = new Ros2Std_msgsMsgColorRGBA();
        /** @brief Complete native field second_color; scalar, text bound 0. */
        public Ros2Std_msgsMsgColorRGBA field_second_color = new Ros2Std_msgsMsgColorRGBA();
        /** @brief Complete native field first_color_duration; scalar, text bound 0. */
        public Ros2Builtin_interfacesMsgDuration field_first_color_duration = new Ros2Builtin_interfacesMsgDuration();
        /** @brief Complete native field second_color_duration; scalar, text bound 0. */
        public Ros2Builtin_interfacesMsgDuration field_second_color_duration = new Ros2Builtin_interfacesMsgDuration();
        /** @brief Complete native field effect_duration; scalar, text bound 0. */
        public Ros2Builtin_interfacesMsgDuration field_effect_duration = new Ros2Builtin_interfacesMsgDuration();
        /** @brief Complete native field priority; scalar, text bound 0. */
        public byte field_priority = (byte)0;

        /**
         * @brief Construct the complete original default value with owned storage.
         * @details Nested fixed arrays initialize every logical element; sequences
         * start empty. No native capability, pointer, or shared buffer is retained.
         */
        public Ros2Pal_device_msgsSrvTimedBlinkEffect_Request()
        {
        }

        /**
         * @brief Encode every field of one complete bounded value.
         * @param value Borrowed stable value; all referenced arrays remain caller-owned.
         * @return Newly owned complete canonical bytes, excluding unused capacity.
         * @details Invalid fields/bounds/semantics throw ArgumentException.
         */
        public static byte[] Encode(Ros2Pal_device_msgsSrvTimedBlinkEffect_Request value)
        {
            CatalogWire.Writer wire = new CatalogWire.Writer(MAX_WIRE_BYTES);
            WriteFields(wire, value);
            return wire.Finish();
        }

        /**
         * @brief Decode transactionally with exact extent and trailing-byte checks.
         * @param bytes Borrowed immutable complete canonical body.
         * @return Newly owned full value; failed decoding commits no caller storage.
         * @details Invalid wire, text, bounds or semantics throw ArgumentException.
         */
        public static Ros2Pal_device_msgsSrvTimedBlinkEffect_Request Decode(byte[] bytes)
        {
            if (bytes == null || bytes.Length < MIN_WIRE_BYTES || bytes.Length > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Invalid complete canonical extent");
            }
            CatalogWire.Reader wire = new CatalogWire.Reader(bytes);
            Ros2Pal_device_msgsSrvTimedBlinkEffect_Request value = ReadFields(wire);
            wire.Finish();
            return value;
        }

        /**
         * @brief Write this complete nested value within the enclosing aggregate bound.
         * @param wire Borrowed caller-owned finite writer.
         * @param value Borrowed stable complete value.
         * @return No value; invalid fields or aggregate bounds throw before publication.
         */
        internal static void WriteFields(CatalogWire.Writer wire, Ros2Pal_device_msgsSrvTimedBlinkEffect_Request value)
        {
            if (value == null)
            {
                throw new ArgumentException("Null canonical record");
            }
            int start = wire.Position;
            Ros2Pal_device_msgsMsgLedGroup.WriteFields(wire, value.field_leds);
            Ros2Std_msgsMsgColorRGBA.WriteFields(wire, value.field_first_color);
            Ros2Std_msgsMsgColorRGBA.WriteFields(wire, value.field_second_color);
            Ros2Builtin_interfacesMsgDuration.WriteFields(wire, value.field_first_color_duration);
            Ros2Builtin_interfacesMsgDuration.WriteFields(wire, value.field_second_color_duration);
            Ros2Builtin_interfacesMsgDuration.WriteFields(wire, value.field_effect_duration);
            wire.U8(value.field_priority);
            if (wire.Position - start > MAX_WIRE_BYTES)
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
        internal static Ros2Pal_device_msgsSrvTimedBlinkEffect_Request ReadFields(CatalogWire.Reader wire)
        {
            int start = wire.Position;
            Ros2Pal_device_msgsSrvTimedBlinkEffect_Request value = new Ros2Pal_device_msgsSrvTimedBlinkEffect_Request();
            value.field_leds = Ros2Pal_device_msgsMsgLedGroup.ReadFields(wire);
            value.field_first_color = Ros2Std_msgsMsgColorRGBA.ReadFields(wire);
            value.field_second_color = Ros2Std_msgsMsgColorRGBA.ReadFields(wire);
            value.field_first_color_duration = Ros2Builtin_interfacesMsgDuration.ReadFields(wire);
            value.field_second_color_duration = Ros2Builtin_interfacesMsgDuration.ReadFields(wire);
            value.field_effect_duration = Ros2Builtin_interfacesMsgDuration.ReadFields(wire);
            value.field_priority = wire.U8();
            if (wire.Position - start > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Nested aggregate exceeds registered wire bound");
            }
            return value;
        }
    }
}
