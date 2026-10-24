using System;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Pal.Ros1.ros1_indigo_devel
{
    /**
     * @brief Complete ROS 1 pal_interaction_msgs/GetSpeechDurationResponse value and canonical codec.
     * @details All fields, constants, defaults and nested capacities come from the
     * canonical bounded catalog. Instances own their strings/arrays/nested values.
     * Encode/decode perform no ROS operation and confer no authority. Native type
     * identity must still be independently qualified by the deployment registry.
     */
    public sealed class Ros1Pal_interaction_msgsGetSpeechDurationResponse
    {
        /** @brief Exact registered max wire bytes. */
        public const int MAX_WIRE_BYTES = 2249;
        /** @brief Exact registered min wire bytes. */
        public const int MIN_WIRE_BYTES = 9;
        /** @brief Original codec identity; empty native identity is unqualified. */
        public const string CODEC_IDENTITY =
            "UWVMROS1_44379b24ddf4582ec184a0da7993d27b9f4ec5d430a129468bf8aef6d5437578";
        /** @brief Original source type; empty native identity is unqualified. */
        public const string SOURCE_TYPE = "pal_interaction_msgs/GetSpeechDurationResponse";
        /** @brief Original native identity; empty native identity is unqualified. */
        public const string NATIVE_IDENTITY = "";
        /** @brief Complete native field ok; scalar, text bound 0. */
        public bool field_ok = false;
        /** @brief Complete native field words; sequence capacity 16, text bound 128. */
        public string[] field_words = new string[0];
        /** @brief Complete native field word_durations; sequence capacity 16, text bound 0. */
        public Ros1Duration[] field_word_durations = new Ros1Duration[0];

        /**
         * @brief Construct the complete original default value with owned storage.
         * @details Nested fixed arrays initialize every logical element; sequences
         * start empty. No native capability, pointer, or shared buffer is retained.
         */
        public Ros1Pal_interaction_msgsGetSpeechDurationResponse()
        {
        }

        /**
         * @brief Encode every field of one complete bounded value.
         * @param value Borrowed stable value; all referenced arrays remain caller-owned.
         * @return Newly owned complete canonical bytes, excluding unused capacity.
         * @details Invalid fields/bounds/semantics throw ArgumentException.
         */
        public static byte[] Encode(Ros1Pal_interaction_msgsGetSpeechDurationResponse value)
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
        public static Ros1Pal_interaction_msgsGetSpeechDurationResponse Decode(byte[] bytes)
        {
            if (bytes == null || bytes.Length < MIN_WIRE_BYTES || bytes.Length > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Invalid complete canonical extent");
            }
            CatalogWire.Reader wire = new CatalogWire.Reader(bytes);
            Ros1Pal_interaction_msgsGetSpeechDurationResponse value = ReadFields(wire);
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
                                         Ros1Pal_interaction_msgsGetSpeechDurationResponse value)
        {
            if (value == null)
            {
                throw new ArgumentException("Null canonical record");
            }
            int start = wire.Position;
            wire.Bool(value.field_ok);
            if (value.field_words == null || value.field_words.Length > 16)
            {
                throw new ArgumentException("Invalid words extent");
            }
            wire.U32((uint)value.field_words.Length);
            for (int index = 0; index < value.field_words.Length; ++index)
            {
                wire.String(value.field_words[index], 128);
            }
            if (value.field_word_durations == null || value.field_word_durations.Length > 16)
            {
                throw new ArgumentException("Invalid word_durations extent");
            }
            wire.U32((uint)value.field_word_durations.Length);
            for (int index = 0; index < value.field_word_durations.Length; ++index)
            {
                Ros1Duration.WriteFields(wire, value.field_word_durations[index]);
            }
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
        internal static Ros1Pal_interaction_msgsGetSpeechDurationResponse ReadFields(CatalogWire.Reader wire)
        {
            int start = wire.Position;
            Ros1Pal_interaction_msgsGetSpeechDurationResponse value =
                new Ros1Pal_interaction_msgsGetSpeechDurationResponse();
            value.field_ok = wire.Bool();
            value.field_words = new string[wire.Count(16)];
            for (int index = 0; index < value.field_words.Length; ++index)
            {
                value.field_words[index] = wire.String(128);
            }
            value.field_word_durations = new Ros1Duration[wire.Count(16)];
            for (int index = 0; index < value.field_word_durations.Length; ++index)
            {
                value.field_word_durations[index] = Ros1Duration.ReadFields(wire);
            }
            if (wire.Position - start > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Nested aggregate exceeds registered wire bound");
            }
            return value;
        }
    }
}
