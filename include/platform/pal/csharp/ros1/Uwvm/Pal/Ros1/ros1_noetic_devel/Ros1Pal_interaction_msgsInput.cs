using System;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Pal.Ros1.ros1_noetic_devel
{
    /**
     * @brief Complete ROS 1 pal_interaction_msgs/Input value and canonical codec.
     * @details All fields, constants, defaults and nested capacities come from the
     * canonical bounded catalog. Instances own their strings/arrays/nested values.
     * Encode/decode perform no ROS operation and confer no authority. Native type
     * identity must still be independently qualified by the deployment registry.
     */
    public sealed class Ros1Pal_interaction_msgsInput
    {
        /** @brief Exact registered max wire bytes. */
        public const int MAX_WIRE_BYTES = 1192;
        /** @brief Exact registered min wire bytes. */
        public const int MIN_WIRE_BYTES = 8;
        /** @brief Original codec identity; empty native identity is unqualified. */
        public const string CODEC_IDENTITY =
            "UWVMROS1_11478aeb5c676f50680ee5c4e75973b10cec5df40f09cbb8573ddad4eb91d307";
        /** @brief Original source type; empty native identity is unqualified. */
        public const string SOURCE_TYPE = "pal_interaction_msgs/Input";
        /** @brief Original native identity; empty native identity is unqualified. */
        public const string NATIVE_IDENTITY = "";
        /** @brief Original source constant INPUT_ACCEPT; consumes no instance wire bytes. */
        public const string CONST_INPUT_ACCEPT = "INPUT_ACCEPT";
        /** @brief Original source constant INPUT_REJECT; consumes no instance wire bytes. */
        public const string CONST_INPUT_REJECT = "INPUT_REJECT";
        /** @brief Original source constant INPUT_CANCEL; consumes no instance wire bytes. */
        public const string CONST_INPUT_CANCEL = "INPUT_CANCEL";
        /** @brief Original source constant OK; consumes no instance wire bytes. */
        public const string CONST_OK = "ok";
        /** @brief Original source constant YES; consumes no instance wire bytes. */
        public const string CONST_YES = "yes";
        /** @brief Original source constant NO; consumes no instance wire bytes. */
        public const string CONST_NO = "no";
        /** @brief Original source constant CANCEL; consumes no instance wire bytes. */
        public const string CONST_CANCEL = "cancel";
        /** @brief Original source constant ABORT; consumes no instance wire bytes. */
        public const string CONST_ABORT = "abort";
        /** @brief Complete native field action; scalar, text bound 128. */
        public string field_action = "";
        /** @brief Complete native field args; sequence capacity 4, text bound 0. */
        public Ros1Pal_interaction_msgsInputArgument[] field_args = new Ros1Pal_interaction_msgsInputArgument[0];

        /**
         * @brief Construct the complete original default value with owned storage.
         * @details Nested fixed arrays initialize every logical element; sequences
         * start empty. No native capability, pointer, or shared buffer is retained.
         */
        public Ros1Pal_interaction_msgsInput()
        {
        }

        /**
         * @brief Encode every field of one complete bounded value.
         * @param value Borrowed stable value; all referenced arrays remain caller-owned.
         * @return Newly owned complete canonical bytes, excluding unused capacity.
         * @details Invalid fields/bounds/semantics throw ArgumentException.
         */
        public static byte[] Encode(Ros1Pal_interaction_msgsInput value)
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
        public static Ros1Pal_interaction_msgsInput Decode(byte[] bytes)
        {
            if (bytes == null || bytes.Length < MIN_WIRE_BYTES || bytes.Length > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Invalid complete canonical extent");
            }
            CatalogWire.Reader wire = new CatalogWire.Reader(bytes);
            Ros1Pal_interaction_msgsInput value = ReadFields(wire);
            wire.Finish();
            return value;
        }

        /**
         * @brief Write this complete nested value within the enclosing aggregate bound.
         * @param wire Borrowed caller-owned finite writer.
         * @param value Borrowed stable complete value.
         * @return No value; invalid fields or aggregate bounds throw before publication.
         */
        internal static void WriteFields(CatalogWire.Writer wire, Ros1Pal_interaction_msgsInput value)
        {
            if (value == null)
            {
                throw new ArgumentException("Null canonical record");
            }
            int start = wire.Position;
            wire.String(value.field_action, 128);
            if (value.field_args == null || value.field_args.Length > 4)
            {
                throw new ArgumentException("Invalid args extent");
            }
            wire.U32((uint)value.field_args.Length);
            for (int index = 0; index < value.field_args.Length; ++index)
            {
                Ros1Pal_interaction_msgsInputArgument.WriteFields(wire, value.field_args[index]);
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
        internal static Ros1Pal_interaction_msgsInput ReadFields(CatalogWire.Reader wire)
        {
            int start = wire.Position;
            Ros1Pal_interaction_msgsInput value = new Ros1Pal_interaction_msgsInput();
            value.field_action = wire.String(128);
            value.field_args = new Ros1Pal_interaction_msgsInputArgument[wire.Count(4)];
            for (int index = 0; index < value.field_args.Length; ++index)
            {
                value.field_args[index] = Ros1Pal_interaction_msgsInputArgument.ReadFields(wire);
            }
            if (wire.Position - start > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Nested aggregate exceeds registered wire bound");
            }
            return value;
        }
    }
}
