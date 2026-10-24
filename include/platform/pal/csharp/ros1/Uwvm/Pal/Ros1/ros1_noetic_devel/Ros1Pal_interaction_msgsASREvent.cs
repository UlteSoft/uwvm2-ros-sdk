using System;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Pal.Ros1.ros1_noetic_devel
{
    /**
     * @brief Complete ROS 1 pal_interaction_msgs/ASREvent value and canonical codec.
     * @details All fields, constants, defaults and nested capacities come from the
     * canonical bounded catalog. Instances own their strings/arrays/nested values.
     * Encode/decode perform no ROS operation and confer no authority. Native type
     * identity must still be independently qualified by the deployment registry.
     */
    public sealed class Ros1Pal_interaction_msgsASREvent
    {
        /** @brief Exact registered max wire bytes. */
        public const int MAX_WIRE_BYTES = 1212;
        /** @brief Exact registered min wire bytes. */
        public const int MIN_WIRE_BYTES = 28;
        /** @brief Original codec identity; empty native identity is unqualified. */
        public const string CODEC_IDENTITY =
            "UWVMROS1_459ea9c0c0a993881cc4189329bc42ae244d6133b8d3ae789206dbc4655a0926";
        /** @brief Original source type; empty native identity is unqualified. */
        public const string SOURCE_TYPE = "pal_interaction_msgs/ASREvent";
        /** @brief Original native identity; empty native identity is unqualified. */
        public const string NATIVE_IDENTITY = "";
        /** @brief Original source constant EVENT_UNDEFINED; consumes no instance wire bytes. */
        public const sbyte CONST_EVENT_UNDEFINED = (sbyte)-1;
        /** @brief Original source constant EVENT_LISTEN_STATE; consumes no instance wire bytes. */
        public const sbyte CONST_EVENT_LISTEN_STATE = (sbyte)1;
        /** @brief Original source constant EVENT_RECOGNIZED_UTT; consumes no instance wire bytes. */
        public const sbyte CONST_EVENT_RECOGNIZED_UTT = (sbyte)2;
        /** @brief Original source constant EVENT_ASR_ACTIVATION; consumes no instance wire bytes. */
        public const sbyte CONST_EVENT_ASR_ACTIVATION = (sbyte)3;
        /** @brief Original source constant EVENT_FAILED_DECODING; consumes no instance wire bytes. */
        public const sbyte CONST_EVENT_FAILED_DECODING = (sbyte)4;
        /** @brief Original source constant LISTEN_UNDEFINED; consumes no instance wire bytes. */
        public const sbyte CONST_LISTEN_UNDEFINED = (sbyte)20;
        /** @brief Original source constant LISTEN_CALIBRATION; consumes no instance wire bytes. */
        public const sbyte CONST_LISTEN_CALIBRATION = (sbyte)21;
        /** @brief Original source constant LISTEN_WAITING_FOR_SPEECH; consumes no instance wire bytes. */
        public const sbyte CONST_LISTEN_WAITING_FOR_SPEECH = (sbyte)22;
        /** @brief Original source constant LISTEN_SPEECH_DETECTED; consumes no instance wire bytes. */
        public const sbyte CONST_LISTEN_SPEECH_DETECTED = (sbyte)23;
        /** @brief Original source constant LISTEN_END_OF_SPEECH; consumes no instance wire bytes. */
        public const sbyte CONST_LISTEN_END_OF_SPEECH = (sbyte)24;
        /** @brief Complete native field event_id; scalar, text bound 0. */
        public sbyte field_event_id = (sbyte)0;
        /** @brief Complete native field listen_state; scalar, text bound 0. */
        public sbyte field_listen_state = (sbyte)0;
        /** @brief Complete native field recognized_utterance; scalar, text bound 0. */
        public Ros1Pal_interaction_msgsAsrresult field_recognized_utterance = new Ros1Pal_interaction_msgsAsrresult();
        /** @brief Complete native field active; scalar, text bound 0. */
        public bool field_active = false;

        /**
         * @brief Construct the complete original default value with owned storage.
         * @details Nested fixed arrays initialize every logical element; sequences
         * start empty. No native capability, pointer, or shared buffer is retained.
         */
        public Ros1Pal_interaction_msgsASREvent()
        {
        }

        /**
         * @brief Encode every field of one complete bounded value.
         * @param value Borrowed stable value; all referenced arrays remain caller-owned.
         * @return Newly owned complete canonical bytes, excluding unused capacity.
         * @details Invalid fields/bounds/semantics throw ArgumentException.
         */
        public static byte[] Encode(Ros1Pal_interaction_msgsASREvent value)
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
        public static Ros1Pal_interaction_msgsASREvent Decode(byte[] bytes)
        {
            if (bytes == null || bytes.Length < MIN_WIRE_BYTES || bytes.Length > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Invalid complete canonical extent");
            }
            CatalogWire.Reader wire = new CatalogWire.Reader(bytes);
            Ros1Pal_interaction_msgsASREvent value = ReadFields(wire);
            wire.Finish();
            return value;
        }

        /**
         * @brief Write this complete nested value within the enclosing aggregate bound.
         * @param wire Borrowed caller-owned finite writer.
         * @param value Borrowed stable complete value.
         * @return No value; invalid fields or aggregate bounds throw before publication.
         */
        internal static void WriteFields(CatalogWire.Writer wire, Ros1Pal_interaction_msgsASREvent value)
        {
            if (value == null)
            {
                throw new ArgumentException("Null canonical record");
            }
            int start = wire.Position;
            wire.I8(value.field_event_id);
            wire.I8(value.field_listen_state);
            Ros1Pal_interaction_msgsAsrresult.WriteFields(wire, value.field_recognized_utterance);
            wire.Bool(value.field_active);
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
        internal static Ros1Pal_interaction_msgsASREvent ReadFields(CatalogWire.Reader wire)
        {
            int start = wire.Position;
            Ros1Pal_interaction_msgsASREvent value = new Ros1Pal_interaction_msgsASREvent();
            value.field_event_id = wire.I8();
            value.field_listen_state = wire.I8();
            value.field_recognized_utterance = Ros1Pal_interaction_msgsAsrresult.ReadFields(wire);
            value.field_active = wire.Bool();
            if (wire.Position - start > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Nested aggregate exceeds registered wire bound");
            }
            return value;
        }
    }
}
