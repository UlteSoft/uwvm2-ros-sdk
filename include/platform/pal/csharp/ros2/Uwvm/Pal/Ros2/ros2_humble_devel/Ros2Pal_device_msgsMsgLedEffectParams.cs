using System;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Pal.Ros2.ros2_humble_devel
{
    /**
     * @brief Complete ROS 2 pal_device_msgs/msg/LedEffectParams value and canonical codec.
     * @details All fields, constants, defaults and nested capacities come from the
     * canonical bounded catalog. Instances own their strings/arrays/nested values.
     * Encode/decode perform no ROS operation and confer no authority. Native type
     * identity must still be independently qualified by the deployment registry.
     */
    public sealed class Ros2Pal_device_msgsMsgLedEffectParams
    {
        /** @brief Exact registered max wire bytes. */
        public const int MAX_WIRE_BYTES = 395;
        /** @brief Exact registered min wire bytes. */
        public const int MIN_WIRE_BYTES = 203;
        /** @brief Original codec identity; empty native identity is unqualified. */
        public const string CODEC_IDENTITY =
            "UWVMROS1_dbaf26734baee7c339c249fb6bd35f42672b48bac23966670f525f5d921f8848";
        /** @brief Original source type; empty native identity is unqualified. */
        public const string SOURCE_TYPE = "pal_device_msgs/msg/LedEffectParams";
        /** @brief Original native identity; empty native identity is unqualified. */
        public const string NATIVE_IDENTITY = "";
        /** @brief Original source constant FIXED_COLOR; consumes no instance wire bytes. */
        public const byte CONST_FIXED_COLOR = (byte)0;
        /** @brief Original source constant RAINBOW; consumes no instance wire bytes. */
        public const byte CONST_RAINBOW = (byte)1;
        /** @brief Original source constant FADE; consumes no instance wire bytes. */
        public const byte CONST_FADE = (byte)2;
        /** @brief Original source constant BLINK; consumes no instance wire bytes. */
        public const byte CONST_BLINK = (byte)3;
        /** @brief Original source constant PROGRESS; consumes no instance wire bytes. */
        public const byte CONST_PROGRESS = (byte)4;
        /** @brief Original source constant FLOW; consumes no instance wire bytes. */
        public const byte CONST_FLOW = (byte)5;
        /** @brief Original source constant PREPROGRAMMED_EFFECT; consumes no instance wire bytes. */
        public const byte CONST_PREPROGRAMMED_EFFECT = (byte)6;
        /** @brief Original source constant EFFECT_VIA_TOPIC; consumes no instance wire bytes. */
        public const byte CONST_EFFECT_VIA_TOPIC = (byte)7;
        /** @brief Original source constant DATA_ARRAY; consumes no instance wire bytes. */
        public const byte CONST_DATA_ARRAY = (byte)8;
        /** @brief Complete native field effect_type; scalar, text bound 0. */
        public byte field_effect_type = (byte)0;
        /** @brief Complete native field fixed_color; scalar, text bound 0. */
        public Ros2Pal_device_msgsMsgLedFixedColorParams field_fixed_color =
            new Ros2Pal_device_msgsMsgLedFixedColorParams();
        /** @brief Complete native field rainbow; scalar, text bound 0. */
        public Ros2Pal_device_msgsMsgLedRainbowParams field_rainbow = new Ros2Pal_device_msgsMsgLedRainbowParams();
        /** @brief Complete native field fade; scalar, text bound 0. */
        public Ros2Pal_device_msgsMsgLedFadeParams field_fade = new Ros2Pal_device_msgsMsgLedFadeParams();
        /** @brief Complete native field blink; scalar, text bound 0. */
        public Ros2Pal_device_msgsMsgLedBlinkParams field_blink = new Ros2Pal_device_msgsMsgLedBlinkParams();
        /** @brief Complete native field progress; scalar, text bound 0. */
        public Ros2Pal_device_msgsMsgLedProgressParams field_progress = new Ros2Pal_device_msgsMsgLedProgressParams();
        /** @brief Complete native field flow; scalar, text bound 0. */
        public Ros2Pal_device_msgsMsgLedFlowParams field_flow = new Ros2Pal_device_msgsMsgLedFlowParams();
        /** @brief Complete native field preprogrammed; scalar, text bound 0. */
        public Ros2Pal_device_msgsMsgLedPreProgrammedParams field_preprogrammed =
            new Ros2Pal_device_msgsMsgLedPreProgrammedParams();
        /** @brief Complete native field effect_via_topic; scalar, text bound 0. */
        public Ros2Pal_device_msgsMsgLedEffectViaTopicParams field_effect_via_topic =
            new Ros2Pal_device_msgsMsgLedEffectViaTopicParams();
        /** @brief Complete native field data_array; scalar, text bound 0. */
        public Ros2Pal_device_msgsMsgLedDataArrayParams field_data_array =
            new Ros2Pal_device_msgsMsgLedDataArrayParams();

        /**
         * @brief Construct the complete original default value with owned storage.
         * @details Nested fixed arrays initialize every logical element; sequences
         * start empty. No native capability, pointer, or shared buffer is retained.
         */
        public Ros2Pal_device_msgsMsgLedEffectParams()
        {
        }

        /**
         * @brief Encode every field of one complete bounded value.
         * @param value Borrowed stable value; all referenced arrays remain caller-owned.
         * @return Newly owned complete canonical bytes, excluding unused capacity.
         * @details Invalid fields/bounds/semantics throw ArgumentException.
         */
        public static byte[] Encode(Ros2Pal_device_msgsMsgLedEffectParams value)
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
        public static Ros2Pal_device_msgsMsgLedEffectParams Decode(byte[] bytes)
        {
            if (bytes == null || bytes.Length < MIN_WIRE_BYTES || bytes.Length > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Invalid complete canonical extent");
            }
            CatalogWire.Reader wire = new CatalogWire.Reader(bytes);
            Ros2Pal_device_msgsMsgLedEffectParams value = ReadFields(wire);
            wire.Finish();
            return value;
        }

        /**
         * @brief Write this complete nested value within the enclosing aggregate bound.
         * @param wire Borrowed caller-owned finite writer.
         * @param value Borrowed stable complete value.
         * @return No value; invalid fields or aggregate bounds throw before publication.
         */
        internal static void WriteFields(CatalogWire.Writer wire, Ros2Pal_device_msgsMsgLedEffectParams value)
        {
            if (value == null)
            {
                throw new ArgumentException("Null canonical record");
            }
            int start = wire.Position;
            wire.U8(value.field_effect_type);
            Ros2Pal_device_msgsMsgLedFixedColorParams.WriteFields(wire, value.field_fixed_color);
            Ros2Pal_device_msgsMsgLedRainbowParams.WriteFields(wire, value.field_rainbow);
            Ros2Pal_device_msgsMsgLedFadeParams.WriteFields(wire, value.field_fade);
            Ros2Pal_device_msgsMsgLedBlinkParams.WriteFields(wire, value.field_blink);
            Ros2Pal_device_msgsMsgLedProgressParams.WriteFields(wire, value.field_progress);
            Ros2Pal_device_msgsMsgLedFlowParams.WriteFields(wire, value.field_flow);
            Ros2Pal_device_msgsMsgLedPreProgrammedParams.WriteFields(wire, value.field_preprogrammed);
            Ros2Pal_device_msgsMsgLedEffectViaTopicParams.WriteFields(wire, value.field_effect_via_topic);
            Ros2Pal_device_msgsMsgLedDataArrayParams.WriteFields(wire, value.field_data_array);
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
        internal static Ros2Pal_device_msgsMsgLedEffectParams ReadFields(CatalogWire.Reader wire)
        {
            int start = wire.Position;
            Ros2Pal_device_msgsMsgLedEffectParams value = new Ros2Pal_device_msgsMsgLedEffectParams();
            value.field_effect_type = wire.U8();
            value.field_fixed_color = Ros2Pal_device_msgsMsgLedFixedColorParams.ReadFields(wire);
            value.field_rainbow = Ros2Pal_device_msgsMsgLedRainbowParams.ReadFields(wire);
            value.field_fade = Ros2Pal_device_msgsMsgLedFadeParams.ReadFields(wire);
            value.field_blink = Ros2Pal_device_msgsMsgLedBlinkParams.ReadFields(wire);
            value.field_progress = Ros2Pal_device_msgsMsgLedProgressParams.ReadFields(wire);
            value.field_flow = Ros2Pal_device_msgsMsgLedFlowParams.ReadFields(wire);
            value.field_preprogrammed = Ros2Pal_device_msgsMsgLedPreProgrammedParams.ReadFields(wire);
            value.field_effect_via_topic = Ros2Pal_device_msgsMsgLedEffectViaTopicParams.ReadFields(wire);
            value.field_data_array = Ros2Pal_device_msgsMsgLedDataArrayParams.ReadFields(wire);
            if (wire.Position - start > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Nested aggregate exceeds registered wire bound");
            }
            return value;
        }
    }
}
