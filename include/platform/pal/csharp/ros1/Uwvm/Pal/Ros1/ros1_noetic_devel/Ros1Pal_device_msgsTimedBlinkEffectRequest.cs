using System;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Pal.Ros1.ros1_noetic_devel
{
    /**
     * @brief Complete ROS 1 pal_device_msgs/TimedBlinkEffectRequest value and canonical codec.
     * @details All fields, constants, defaults and nested capacities come from the
     * canonical bounded catalog. Instances own their strings/arrays/nested values.
     * Encode/decode perform no ROS operation and confer no authority. Native type
     * identity must still be independently qualified by the deployment registry.
     */
    public sealed class Ros1Pal_device_msgsTimedBlinkEffectRequest
    {
        /** @brief Exact registered max wire bytes. */
        public const int MAX_WIRE_BYTES = 61;
        /** @brief Exact registered min wire bytes. */
        public const int MIN_WIRE_BYTES = 61;
        /** @brief Original codec identity; empty native identity is unqualified. */
        public const string CODEC_IDENTITY =
            "UWVMROS1_8ec92359735c7aabcb8896987a538b39e66996ae82805fb82e0dfc6099bd2fb9";
        /** @brief Original source type; empty native identity is unqualified. */
        public const string SOURCE_TYPE = "pal_device_msgs/TimedBlinkEffectRequest";
        /** @brief Original native identity; empty native identity is unqualified. */
        public const string NATIVE_IDENTITY = "";
        /** @brief Complete native field leds; scalar, text bound 0. */
        public Ros1Pal_device_msgsLedGroup field_leds = new Ros1Pal_device_msgsLedGroup();
        /** @brief Complete native field firstColor; scalar, text bound 0. */
        public Ros1Std_msgsColorRGBA field_firstColor = new Ros1Std_msgsColorRGBA();
        /** @brief Complete native field secondColor; scalar, text bound 0. */
        public Ros1Std_msgsColorRGBA field_secondColor = new Ros1Std_msgsColorRGBA();
        /** @brief Complete native field firstColorDuration; scalar, text bound 0. */
        public Ros1Duration field_firstColorDuration = new Ros1Duration();
        /** @brief Complete native field secondColorDuration; scalar, text bound 0. */
        public Ros1Duration field_secondColorDuration = new Ros1Duration();
        /** @brief Complete native field effectDuration; scalar, text bound 0. */
        public Ros1Duration field_effectDuration = new Ros1Duration();
        /** @brief Complete native field priority; scalar, text bound 0. */
        public byte field_priority = (byte)0;

        /**
         * @brief Construct the complete original default value with owned storage.
         * @details Nested fixed arrays initialize every logical element; sequences
         * start empty. No native capability, pointer, or shared buffer is retained.
         */
        public Ros1Pal_device_msgsTimedBlinkEffectRequest()
        {
        }

        /**
         * @brief Encode every field of one complete bounded value.
         * @param value Borrowed stable value; all referenced arrays remain caller-owned.
         * @return Newly owned complete canonical bytes, excluding unused capacity.
         * @details Invalid fields/bounds/semantics throw ArgumentException.
         */
        public static byte[] Encode(Ros1Pal_device_msgsTimedBlinkEffectRequest value)
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
        public static Ros1Pal_device_msgsTimedBlinkEffectRequest Decode(byte[] bytes)
        {
            if (bytes == null || bytes.Length < MIN_WIRE_BYTES || bytes.Length > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Invalid complete canonical extent");
            }
            CatalogWire.Reader wire = new CatalogWire.Reader(bytes);
            Ros1Pal_device_msgsTimedBlinkEffectRequest value = ReadFields(wire);
            wire.Finish();
            return value;
        }

        /**
         * @brief Write this complete nested value within the enclosing aggregate bound.
         * @param wire Borrowed caller-owned finite writer.
         * @param value Borrowed stable complete value.
         * @return No value; invalid fields or aggregate bounds throw before publication.
         */
        internal static void WriteFields(CatalogWire.Writer wire, Ros1Pal_device_msgsTimedBlinkEffectRequest value)
        {
            if (value == null)
            {
                throw new ArgumentException("Null canonical record");
            }
            int start = wire.Position;
            Ros1Pal_device_msgsLedGroup.WriteFields(wire, value.field_leds);
            Ros1Std_msgsColorRGBA.WriteFields(wire, value.field_firstColor);
            Ros1Std_msgsColorRGBA.WriteFields(wire, value.field_secondColor);
            Ros1Duration.WriteFields(wire, value.field_firstColorDuration);
            Ros1Duration.WriteFields(wire, value.field_secondColorDuration);
            Ros1Duration.WriteFields(wire, value.field_effectDuration);
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
        internal static Ros1Pal_device_msgsTimedBlinkEffectRequest ReadFields(CatalogWire.Reader wire)
        {
            int start = wire.Position;
            Ros1Pal_device_msgsTimedBlinkEffectRequest value = new Ros1Pal_device_msgsTimedBlinkEffectRequest();
            value.field_leds = Ros1Pal_device_msgsLedGroup.ReadFields(wire);
            value.field_firstColor = Ros1Std_msgsColorRGBA.ReadFields(wire);
            value.field_secondColor = Ros1Std_msgsColorRGBA.ReadFields(wire);
            value.field_firstColorDuration = Ros1Duration.ReadFields(wire);
            value.field_secondColorDuration = Ros1Duration.ReadFields(wire);
            value.field_effectDuration = Ros1Duration.ReadFields(wire);
            value.field_priority = wire.U8();
            if (wire.Position - start > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Nested aggregate exceeds registered wire bound");
            }
            return value;
        }
    }
}
