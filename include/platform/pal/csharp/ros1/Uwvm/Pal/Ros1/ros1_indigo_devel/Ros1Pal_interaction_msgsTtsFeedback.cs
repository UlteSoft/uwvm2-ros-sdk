using System;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Pal.Ros1.ros1_indigo_devel
{
    /**
     * @brief Complete ROS 1 pal_interaction_msgs/TtsFeedback value and canonical codec.
     * @details All fields, constants, defaults and nested capacities come from the
     * canonical bounded catalog. Instances own their strings/arrays/nested values.
     * Encode/decode perform no ROS operation and confer no authority. Native type
     * identity must still be independently qualified by the deployment registry.
     */
    public sealed class Ros1Pal_interaction_msgsTtsFeedback
    {
        /** @brief Exact registered max wire bytes. */
        public const int MAX_WIRE_BYTES = 4770;
        /** @brief Exact registered min wire bytes. */
        public const int MIN_WIRE_BYTES = 34;
        /** @brief Original codec identity; empty native identity is unqualified. */
        public const string CODEC_IDENTITY =
            "UWVMROS1_3154aa11cda4bc9750910ea8283b14106fc992d9b4f99055bdefd226bf784894";
        /** @brief Original source type; empty native identity is unqualified. */
        public const string SOURCE_TYPE = "pal_interaction_msgs/TtsFeedback";
        /** @brief Original native identity; empty native identity is unqualified. */
        public const string NATIVE_IDENTITY = "";
        /** @brief Original source constant TTS_EVENT_INITIALIZATION; consumes no instance wire bytes. */
        public const ushort CONST_TTS_EVENT_INITIALIZATION = (ushort)1;
        /** @brief Original source constant TTS_EVENT_SHUTDOWN; consumes no instance wire bytes. */
        public const ushort CONST_TTS_EVENT_SHUTDOWN = (ushort)2;
        /** @brief Original source constant TTS_EVENT_SYNCHRONIZATION; consumes no instance wire bytes. */
        public const ushort CONST_TTS_EVENT_SYNCHRONIZATION = (ushort)4;
        /** @brief Original source constant TTS_EVENT_FINISHED_PLAYING_UTTERANCE; consumes no instance wire bytes. */
        public const ushort CONST_TTS_EVENT_FINISHED_PLAYING_UTTERANCE = (ushort)8;
        /** @brief Original source constant TTS_EVENT_MARK; consumes no instance wire bytes. */
        public const ushort CONST_TTS_EVENT_MARK = (ushort)16;
        /** @brief Original source constant TTS_EVENT_STARTED_PLAYING_WORD; consumes no instance wire bytes. */
        public const ushort CONST_TTS_EVENT_STARTED_PLAYING_WORD = (ushort)32;
        /** @brief Original source constant TTS_EVENT_FINISHED_PLAYING_PHRASE; consumes no instance wire bytes. */
        public const ushort CONST_TTS_EVENT_FINISHED_PLAYING_PHRASE = (ushort)64;
        /** @brief Original source constant TTS_EVENT_FINISHED_PLAYING_SENTENCE; consumes no instance wire bytes. */
        public const ushort CONST_TTS_EVENT_FINISHED_PLAYING_SENTENCE = (ushort)128;
        /** @brief Original source constant TTS_EVENT_VISEME; consumes no instance wire bytes. */
        public const ushort CONST_TTS_EVENT_VISEME = (ushort)256;
        /** @brief Complete native field event_type; scalar, text bound 0. */
        public ushort field_event_type = (ushort)0;
        /** @brief Complete native field timestamp; scalar, text bound 0. */
        public Ros1Time field_timestamp = new Ros1Time();
        /** @brief Complete native field text_said; scalar, text bound 128. */
        public string field_text_said = "";
        /** @brief Complete native field next_word; scalar, text bound 128. */
        public string field_next_word = "";
        /** @brief Complete native field viseme_id; scalar, text bound 128. */
        public string field_viseme_id = "";
        /** @brief Complete native field marks; scalar, text bound 0. */
        public Ros1Pal_interaction_msgsTtsMark field_marks = new Ros1Pal_interaction_msgsTtsMark();

        /**
         * @brief Construct the complete original default value with owned storage.
         * @details Nested fixed arrays initialize every logical element; sequences
         * start empty. No native capability, pointer, or shared buffer is retained.
         */
        public Ros1Pal_interaction_msgsTtsFeedback()
        {
        }

        /**
         * @brief Encode every field of one complete bounded value.
         * @param value Borrowed stable value; all referenced arrays remain caller-owned.
         * @return Newly owned complete canonical bytes, excluding unused capacity.
         * @details Invalid fields/bounds/semantics throw ArgumentException.
         */
        public static byte[] Encode(Ros1Pal_interaction_msgsTtsFeedback value)
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
        public static Ros1Pal_interaction_msgsTtsFeedback Decode(byte[] bytes)
        {
            if (bytes == null || bytes.Length < MIN_WIRE_BYTES || bytes.Length > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Invalid complete canonical extent");
            }
            CatalogWire.Reader wire = new CatalogWire.Reader(bytes);
            Ros1Pal_interaction_msgsTtsFeedback value = ReadFields(wire);
            wire.Finish();
            return value;
        }

        /**
         * @brief Write this complete nested value within the enclosing aggregate bound.
         * @param wire Borrowed caller-owned finite writer.
         * @param value Borrowed stable complete value.
         * @return No value; invalid fields or aggregate bounds throw before publication.
         */
        internal static void WriteFields(CatalogWire.Writer wire, Ros1Pal_interaction_msgsTtsFeedback value)
        {
            if (value == null)
            {
                throw new ArgumentException("Null canonical record");
            }
            int start = wire.Position;
            wire.U16(value.field_event_type);
            Ros1Time.WriteFields(wire, value.field_timestamp);
            wire.String(value.field_text_said, 128);
            wire.String(value.field_next_word, 128);
            wire.String(value.field_viseme_id, 128);
            Ros1Pal_interaction_msgsTtsMark.WriteFields(wire, value.field_marks);
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
        internal static Ros1Pal_interaction_msgsTtsFeedback ReadFields(CatalogWire.Reader wire)
        {
            int start = wire.Position;
            Ros1Pal_interaction_msgsTtsFeedback value = new Ros1Pal_interaction_msgsTtsFeedback();
            value.field_event_type = wire.U16();
            value.field_timestamp = Ros1Time.ReadFields(wire);
            value.field_text_said = wire.String(128);
            value.field_next_word = wire.String(128);
            value.field_viseme_id = wire.String(128);
            value.field_marks = Ros1Pal_interaction_msgsTtsMark.ReadFields(wire);
            if (wire.Position - start > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Nested aggregate exceeds registered wire bound");
            }
            return value;
        }
    }
}
