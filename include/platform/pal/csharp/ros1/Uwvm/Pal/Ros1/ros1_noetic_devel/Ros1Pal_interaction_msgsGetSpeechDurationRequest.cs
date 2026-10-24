using System;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Pal.Ros1.ros1_noetic_devel
{
    /**
     * @brief Complete ROS 1 pal_interaction_msgs/GetSpeechDurationRequest value and canonical codec.
     * @details All fields, constants, defaults and nested capacities come from the
     * canonical bounded catalog. Instances own their strings/arrays/nested values.
     * Encode/decode perform no ROS operation and confer no authority. Native type
     * identity must still be independently qualified by the deployment registry.
     */
    public sealed class Ros1Pal_interaction_msgsGetSpeechDurationRequest
    {
        /** @brief Exact registered max wire bytes. */
        public const int MAX_WIRE_BYTES = 2248;
        /** @brief Exact registered min wire bytes. */
        public const int MIN_WIRE_BYTES = 24;
        /** @brief Original codec identity; empty native identity is unqualified. */
        public const string CODEC_IDENTITY =
            "UWVMROS1_0926f4515183e6c9fd4cd5b20c6aa53014ba7dbd4e64113c9b6c514123ba7dc5";
        /** @brief Original source type; empty native identity is unqualified. */
        public const string SOURCE_TYPE = "pal_interaction_msgs/GetSpeechDurationRequest";
        /** @brief Original native identity; empty native identity is unqualified. */
        public const string NATIVE_IDENTITY = "";
        /** @brief Complete native field text; scalar, text bound 0. */
        public Ros1Pal_interaction_msgsI18nText field_text = new Ros1Pal_interaction_msgsI18nText();
        /** @brief Complete native field rawtext; scalar, text bound 0. */
        public Ros1Pal_interaction_msgsTtsText field_rawtext = new Ros1Pal_interaction_msgsTtsText();

        /**
         * @brief Construct the complete original default value with owned storage.
         * @details Nested fixed arrays initialize every logical element; sequences
         * start empty. No native capability, pointer, or shared buffer is retained.
         */
        public Ros1Pal_interaction_msgsGetSpeechDurationRequest()
        {
        }

        /**
         * @brief Encode every field of one complete bounded value.
         * @param value Borrowed stable value; all referenced arrays remain caller-owned.
         * @return Newly owned complete canonical bytes, excluding unused capacity.
         * @details Invalid fields/bounds/semantics throw ArgumentException.
         */
        public static byte[] Encode(Ros1Pal_interaction_msgsGetSpeechDurationRequest value)
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
        public static Ros1Pal_interaction_msgsGetSpeechDurationRequest Decode(byte[] bytes)
        {
            if (bytes == null || bytes.Length < MIN_WIRE_BYTES || bytes.Length > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Invalid complete canonical extent");
            }
            CatalogWire.Reader wire = new CatalogWire.Reader(bytes);
            Ros1Pal_interaction_msgsGetSpeechDurationRequest value = ReadFields(wire);
            wire.Finish();
            return value;
        }

        /**
         * @brief Write this complete nested value within the enclosing aggregate bound.
         * @param wire Borrowed caller-owned finite writer.
         * @param value Borrowed stable complete value.
         * @return No value; invalid fields or aggregate bounds throw before publication.
         */
        internal static void WriteFields(CatalogWire.Writer wire,
                                         Ros1Pal_interaction_msgsGetSpeechDurationRequest value)
        {
            if (value == null)
            {
                throw new ArgumentException("Null canonical record");
            }
            int start = wire.Position;
            Ros1Pal_interaction_msgsI18nText.WriteFields(wire, value.field_text);
            Ros1Pal_interaction_msgsTtsText.WriteFields(wire, value.field_rawtext);
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
        internal static Ros1Pal_interaction_msgsGetSpeechDurationRequest ReadFields(CatalogWire.Reader wire)
        {
            int start = wire.Position;
            Ros1Pal_interaction_msgsGetSpeechDurationRequest value =
                new Ros1Pal_interaction_msgsGetSpeechDurationRequest();
            value.field_text = Ros1Pal_interaction_msgsI18nText.ReadFields(wire);
            value.field_rawtext = Ros1Pal_interaction_msgsTtsText.ReadFields(wire);
            if (wire.Position - start > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Nested aggregate exceeds registered wire bound");
            }
            return value;
        }
    }
}
