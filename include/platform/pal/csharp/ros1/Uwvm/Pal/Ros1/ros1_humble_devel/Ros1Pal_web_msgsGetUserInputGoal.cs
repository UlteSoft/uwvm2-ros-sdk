using System;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Pal.Ros1.ros1_humble_devel
{
    /**
     * @brief Complete ROS 1 pal_web_msgs/GetUserInputGoal value and canonical codec.
     * @details All fields, constants, defaults and nested capacities come from the
     * canonical bounded catalog. Instances own their strings/arrays/nested values.
     * Encode/decode perform no ROS operation and confer no authority. Native type
     * identity must still be independently qualified by the deployment registry.
     */
    public sealed class Ros1Pal_web_msgsGetUserInputGoal
    {
        /** @brief Exact registered max wire bytes. */
        public const int MAX_WIRE_BYTES = 7167;
        /** @brief Exact registered min wire bytes. */
        public const int MIN_WIRE_BYTES = 95;
        /** @brief Original codec identity; empty native identity is unqualified. */
        public const string CODEC_IDENTITY =
            "UWVMROS1_d170bc8de6aad94561016ef3c075df8c1f528911d42ac2eb9d22885db2533b3e";
        /** @brief Original source type; empty native identity is unqualified. */
        public const string SOURCE_TYPE = "pal_web_msgs/GetUserInputGoal";
        /** @brief Original native identity; empty native identity is unqualified. */
        public const string NATIVE_IDENTITY = "";
        /** @brief Complete native field web_go_to; scalar, text bound 0. */
        public Ros1Pal_web_msgsWebGoTo field_web_go_to = new Ros1Pal_web_msgsWebGoTo();
        /** @brief Complete native field question_tts; scalar, text bound 0. */
        public Ros1Pal_interaction_msgsTtsGoal field_question_tts = new Ros1Pal_interaction_msgsTtsGoal();
        /** @brief Complete native field valid_asr_inputs; sequence capacity 16, text bound 128. */
        public string[] field_valid_asr_inputs = new string[0];
        /** @brief Complete native field asr_language; scalar, text bound 128. */
        public string field_asr_language = "";
        /** @brief Complete native field asr_timeout; scalar, text bound 0. */
        public Ros1Duration field_asr_timeout = new Ros1Duration();
        /** @brief Complete native field retry_asr; scalar, text bound 0. */
        public bool field_retry_asr = false;
        /** @brief Complete native field retry_tts; scalar, text bound 0. */
        public Ros1Pal_interaction_msgsTtsGoal field_retry_tts = new Ros1Pal_interaction_msgsTtsGoal();
        /** @brief Complete native field wait_for_interaction; scalar, text bound 0. */
        public bool field_wait_for_interaction = false;

        /**
         * @brief Construct the complete original default value with owned storage.
         * @details Nested fixed arrays initialize every logical element; sequences
         * start empty. No native capability, pointer, or shared buffer is retained.
         */
        public Ros1Pal_web_msgsGetUserInputGoal()
        {
        }

        /**
         * @brief Encode every field of one complete bounded value.
         * @param value Borrowed stable value; all referenced arrays remain caller-owned.
         * @return Newly owned complete canonical bytes, excluding unused capacity.
         * @details Invalid fields/bounds/semantics throw ArgumentException.
         */
        public static byte[] Encode(Ros1Pal_web_msgsGetUserInputGoal value)
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
        public static Ros1Pal_web_msgsGetUserInputGoal Decode(byte[] bytes)
        {
            if (bytes == null || bytes.Length < MIN_WIRE_BYTES || bytes.Length > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Invalid complete canonical extent");
            }
            CatalogWire.Reader wire = new CatalogWire.Reader(bytes);
            Ros1Pal_web_msgsGetUserInputGoal value = ReadFields(wire);
            wire.Finish();
            return value;
        }

        /**
         * @brief Write this complete nested value within the enclosing aggregate bound.
         * @param wire Borrowed caller-owned finite writer.
         * @param value Borrowed stable complete value.
         * @return No value; invalid fields or aggregate bounds throw before publication.
         */
        internal static void WriteFields(CatalogWire.Writer wire, Ros1Pal_web_msgsGetUserInputGoal value)
        {
            if (value == null)
            {
                throw new ArgumentException("Null canonical record");
            }
            int start = wire.Position;
            Ros1Pal_web_msgsWebGoTo.WriteFields(wire, value.field_web_go_to);
            Ros1Pal_interaction_msgsTtsGoal.WriteFields(wire, value.field_question_tts);
            if (value.field_valid_asr_inputs == null || value.field_valid_asr_inputs.Length > 16)
            {
                throw new ArgumentException("Invalid valid_asr_inputs extent");
            }
            wire.U32((uint)value.field_valid_asr_inputs.Length);
            for (int index = 0; index < value.field_valid_asr_inputs.Length; ++index)
            {
                wire.String(value.field_valid_asr_inputs[index], 128);
            }
            wire.String(value.field_asr_language, 128);
            Ros1Duration.WriteFields(wire, value.field_asr_timeout);
            wire.Bool(value.field_retry_asr);
            Ros1Pal_interaction_msgsTtsGoal.WriteFields(wire, value.field_retry_tts);
            wire.Bool(value.field_wait_for_interaction);
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
        internal static Ros1Pal_web_msgsGetUserInputGoal ReadFields(CatalogWire.Reader wire)
        {
            int start = wire.Position;
            Ros1Pal_web_msgsGetUserInputGoal value = new Ros1Pal_web_msgsGetUserInputGoal();
            value.field_web_go_to = Ros1Pal_web_msgsWebGoTo.ReadFields(wire);
            value.field_question_tts = Ros1Pal_interaction_msgsTtsGoal.ReadFields(wire);
            value.field_valid_asr_inputs = new string[wire.Count(16)];
            for (int index = 0; index < value.field_valid_asr_inputs.Length; ++index)
            {
                value.field_valid_asr_inputs[index] = wire.String(128);
            }
            value.field_asr_language = wire.String(128);
            value.field_asr_timeout = Ros1Duration.ReadFields(wire);
            value.field_retry_asr = wire.Bool();
            value.field_retry_tts = Ros1Pal_interaction_msgsTtsGoal.ReadFields(wire);
            value.field_wait_for_interaction = wire.Bool();
            if (wire.Position - start > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Nested aggregate exceeds registered wire bound");
            }
            return value;
        }
    }
}
