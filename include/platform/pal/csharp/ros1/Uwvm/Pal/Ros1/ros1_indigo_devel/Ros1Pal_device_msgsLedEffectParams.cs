using System;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Pal.Ros1.ros1_indigo_devel
{
    /**
     * @brief Complete ROS 1 pal_device_msgs/LedEffectParams value and canonical codec.
     * @details All fields, constants, defaults and nested capacities come from the
     * canonical bounded catalog. Instances own their strings/arrays/nested values.
     * Encode/decode perform no ROS operation and confer no authority. Native type
     * identity must still be independently qualified by the deployment registry.
     */
    public sealed class Ros1Pal_device_msgsLedEffectParams
    {
        /** @brief Exact registered max wire bytes. */
        public const int MAX_WIRE_BYTES = 395;
        /** @brief Exact registered min wire bytes. */
        public const int MIN_WIRE_BYTES = 203;
        /** @brief Original codec identity; empty native identity is unqualified. */
        public const string CODEC_IDENTITY =
            "UWVMROS1_c2d7568c4d0e241b555b76b29424dc46d72587421f5c2e0647204b792b9b17a6";
        /** @brief Original source type; empty native identity is unqualified. */
        public const string SOURCE_TYPE = "pal_device_msgs/LedEffectParams";
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
        /** @brief Complete native field effectType; scalar, text bound 0. */
        public byte field_effectType = (byte)0;
        /** @brief Complete native field fixed_color; scalar, text bound 0. */
        public Ros1Pal_device_msgsLedFixedColorParams field_fixed_color = new Ros1Pal_device_msgsLedFixedColorParams();
        /** @brief Complete native field rainbow; scalar, text bound 0. */
        public Ros1Pal_device_msgsLedRainbowParams field_rainbow = new Ros1Pal_device_msgsLedRainbowParams();
        /** @brief Complete native field fade; scalar, text bound 0. */
        public Ros1Pal_device_msgsLedFadeParams field_fade = new Ros1Pal_device_msgsLedFadeParams();
        /** @brief Complete native field blink; scalar, text bound 0. */
        public Ros1Pal_device_msgsLedBlinkParams field_blink = new Ros1Pal_device_msgsLedBlinkParams();
        /** @brief Complete native field progress; scalar, text bound 0. */
        public Ros1Pal_device_msgsLedProgressParams field_progress = new Ros1Pal_device_msgsLedProgressParams();
        /** @brief Complete native field flow; scalar, text bound 0. */
        public Ros1Pal_device_msgsLedFlowParams field_flow = new Ros1Pal_device_msgsLedFlowParams();
        /** @brief Complete native field preprogrammed; scalar, text bound 0. */
        public Ros1Pal_device_msgsLedPreProgrammedParams field_preprogrammed =
            new Ros1Pal_device_msgsLedPreProgrammedParams();
        /** @brief Complete native field effect_via_topic; scalar, text bound 0. */
        public Ros1Pal_device_msgsLedEffectViaTopicParams field_effect_via_topic =
            new Ros1Pal_device_msgsLedEffectViaTopicParams();
        /** @brief Complete native field data_array; scalar, text bound 0. */
        public Ros1Pal_device_msgsLedDataArrayParams field_data_array = new Ros1Pal_device_msgsLedDataArrayParams();

        /**
         * @brief Construct the complete original default value with owned storage.
         * @details Nested fixed arrays initialize every logical element; sequences
         * start empty. No native capability, pointer, or shared buffer is retained.
         */
        public Ros1Pal_device_msgsLedEffectParams()
        {
        }

        /**
         * @brief Encode every field of one complete bounded value.
         * @param value Borrowed stable value; all referenced arrays remain caller-owned.
         * @return Newly owned complete canonical bytes, excluding unused capacity.
         * @details Invalid fields/bounds/semantics throw ArgumentException.
         */
        public static byte[] Encode(Ros1Pal_device_msgsLedEffectParams value)
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
        public static Ros1Pal_device_msgsLedEffectParams Decode(byte[] bytes)
        {
            if (bytes == null || bytes.Length < MIN_WIRE_BYTES || bytes.Length > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Invalid complete canonical extent");
            }
            CatalogWire.Reader wire = new CatalogWire.Reader(bytes);
            Ros1Pal_device_msgsLedEffectParams value = ReadFields(wire);
            wire.Finish();
            return value;
        }

        /**
         * @brief Write this complete nested value within the enclosing aggregate bound.
         * @param wire Borrowed caller-owned finite writer.
         * @param value Borrowed stable complete value.
         * @return No value; invalid fields or aggregate bounds throw before publication.
         */
        internal static void WriteFields(CatalogWire.Writer wire, Ros1Pal_device_msgsLedEffectParams value)
        {
            if (value == null)
            {
                throw new ArgumentException("Null canonical record");
            }
            int start = wire.Position;
            wire.U8(value.field_effectType);
            Ros1Pal_device_msgsLedFixedColorParams.WriteFields(wire, value.field_fixed_color);
            Ros1Pal_device_msgsLedRainbowParams.WriteFields(wire, value.field_rainbow);
            Ros1Pal_device_msgsLedFadeParams.WriteFields(wire, value.field_fade);
            Ros1Pal_device_msgsLedBlinkParams.WriteFields(wire, value.field_blink);
            Ros1Pal_device_msgsLedProgressParams.WriteFields(wire, value.field_progress);
            Ros1Pal_device_msgsLedFlowParams.WriteFields(wire, value.field_flow);
            Ros1Pal_device_msgsLedPreProgrammedParams.WriteFields(wire, value.field_preprogrammed);
            Ros1Pal_device_msgsLedEffectViaTopicParams.WriteFields(wire, value.field_effect_via_topic);
            Ros1Pal_device_msgsLedDataArrayParams.WriteFields(wire, value.field_data_array);
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
        internal static Ros1Pal_device_msgsLedEffectParams ReadFields(CatalogWire.Reader wire)
        {
            int start = wire.Position;
            Ros1Pal_device_msgsLedEffectParams value = new Ros1Pal_device_msgsLedEffectParams();
            value.field_effectType = wire.U8();
            value.field_fixed_color = Ros1Pal_device_msgsLedFixedColorParams.ReadFields(wire);
            value.field_rainbow = Ros1Pal_device_msgsLedRainbowParams.ReadFields(wire);
            value.field_fade = Ros1Pal_device_msgsLedFadeParams.ReadFields(wire);
            value.field_blink = Ros1Pal_device_msgsLedBlinkParams.ReadFields(wire);
            value.field_progress = Ros1Pal_device_msgsLedProgressParams.ReadFields(wire);
            value.field_flow = Ros1Pal_device_msgsLedFlowParams.ReadFields(wire);
            value.field_preprogrammed = Ros1Pal_device_msgsLedPreProgrammedParams.ReadFields(wire);
            value.field_effect_via_topic = Ros1Pal_device_msgsLedEffectViaTopicParams.ReadFields(wire);
            value.field_data_array = Ros1Pal_device_msgsLedDataArrayParams.ReadFields(wire);
            if (wire.Position - start > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Nested aggregate exceeds registered wire bound");
            }
            return value;
        }
    }
}
