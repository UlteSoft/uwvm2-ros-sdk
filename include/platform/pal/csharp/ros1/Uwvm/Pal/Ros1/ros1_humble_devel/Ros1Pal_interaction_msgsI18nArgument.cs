using System;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Pal.Ros1.ros1_humble_devel
{
    /**
     * @brief Complete ROS 1 pal_interaction_msgs/I18nArgument value and canonical codec.
     * @details All fields, constants, defaults and nested capacities come from the
     * canonical bounded catalog. Instances own their strings/arrays/nested values.
     * Encode/decode perform no ROS operation and confer no authority. Native type
     * identity must still be independently qualified by the deployment registry.
     */
    public sealed class Ros1Pal_interaction_msgsI18nArgument
    {
        /** @brief Exact registered max wire bytes. */
        public const int MAX_WIRE_BYTES = 396;
        /** @brief Exact registered min wire bytes. */
        public const int MIN_WIRE_BYTES = 12;
        /** @brief Original codec identity; empty native identity is unqualified. */
        public const string CODEC_IDENTITY =
            "UWVMROS1_2ca48fd9d8f6dc4a1bc9b69c33c407ea1d6c400f22ceff31f784f161f41f27fb";
        /** @brief Original source type; empty native identity is unqualified. */
        public const string SOURCE_TYPE = "pal_interaction_msgs/I18nArgument";
        /** @brief Original native identity; empty native identity is unqualified. */
        public const string NATIVE_IDENTITY = "";
        /** @brief Complete native field section; scalar, text bound 128. */
        public string field_section = "";
        /** @brief Complete native field key; scalar, text bound 128. */
        public string field_key = "";
        /** @brief Complete native field expanded; scalar, text bound 128. */
        public string field_expanded = "";

        /**
         * @brief Construct the complete original default value with owned storage.
         * @details Nested fixed arrays initialize every logical element; sequences
         * start empty. No native capability, pointer, or shared buffer is retained.
         */
        public Ros1Pal_interaction_msgsI18nArgument()
        {
        }

        /**
         * @brief Encode every field of one complete bounded value.
         * @param value Borrowed stable value; all referenced arrays remain caller-owned.
         * @return Newly owned complete canonical bytes, excluding unused capacity.
         * @details Invalid fields/bounds/semantics throw ArgumentException.
         */
        public static byte[] Encode(Ros1Pal_interaction_msgsI18nArgument value)
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
        public static Ros1Pal_interaction_msgsI18nArgument Decode(byte[] bytes)
        {
            if (bytes == null || bytes.Length < MIN_WIRE_BYTES || bytes.Length > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Invalid complete canonical extent");
            }
            CatalogWire.Reader wire = new CatalogWire.Reader(bytes);
            Ros1Pal_interaction_msgsI18nArgument value = ReadFields(wire);
            wire.Finish();
            return value;
        }

        /**
         * @brief Write this complete nested value within the enclosing aggregate bound.
         * @param wire Borrowed caller-owned finite writer.
         * @param value Borrowed stable complete value.
         * @return No value; invalid fields or aggregate bounds throw before publication.
         */
        internal static void WriteFields(CatalogWire.Writer wire, Ros1Pal_interaction_msgsI18nArgument value)
        {
            if (value == null)
            {
                throw new ArgumentException("Null canonical record");
            }
            int start = wire.Position;
            wire.String(value.field_section, 128);
            wire.String(value.field_key, 128);
            wire.String(value.field_expanded, 128);
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
        internal static Ros1Pal_interaction_msgsI18nArgument ReadFields(CatalogWire.Reader wire)
        {
            int start = wire.Position;
            Ros1Pal_interaction_msgsI18nArgument value = new Ros1Pal_interaction_msgsI18nArgument();
            value.field_section = wire.String(128);
            value.field_key = wire.String(128);
            value.field_expanded = wire.String(128);
            if (wire.Position - start > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Nested aggregate exceeds registered wire bound");
            }
            return value;
        }
    }
}
