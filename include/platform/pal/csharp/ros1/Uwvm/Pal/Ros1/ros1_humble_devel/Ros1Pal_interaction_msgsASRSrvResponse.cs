using System;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Pal.Ros1.ros1_humble_devel
{
    /**
     * @brief Complete ROS 1 pal_interaction_msgs/ASRSrvResponse value and canonical codec.
     * @details All fields, constants, defaults and nested capacities come from the
     * canonical bounded catalog. Instances own their strings/arrays/nested values.
     * Encode/decode perform no ROS operation and confer no authority. Native type
     * identity must still be independently qualified by the deployment registry.
     */
    public sealed class Ros1Pal_interaction_msgsASRSrvResponse
    {
        /** @brief Exact registered max wire bytes. */
        public const int MAX_WIRE_BYTES = 802;
        /** @brief Exact registered min wire bytes. */
        public const int MIN_WIRE_BYTES = 34;
        /** @brief Original codec identity; empty native identity is unqualified. */
        public const string CODEC_IDENTITY =
            "UWVMROS1_b0d47bec71896b9a6090ee0e99c5dad16272306b7b266a99e3da0db334e24d3a";
        /** @brief Original source type; empty native identity is unqualified. */
        public const string SOURCE_TYPE = "pal_interaction_msgs/ASRSrvResponse";
        /** @brief Original native identity; empty native identity is unqualified. */
        public const string NATIVE_IDENTITY = "";
        /** @brief Complete native field status; scalar, text bound 0. */
        public Ros1Pal_interaction_msgsASRStatus field_status = new Ros1Pal_interaction_msgsASRStatus();
        /** @brief Complete native field error_msg; scalar, text bound 128. */
        public string field_error_msg = "";
        /** @brief Complete native field warn_msg; scalar, text bound 128. */
        public string field_warn_msg = "";

        /**
         * @brief Construct the complete original default value with owned storage.
         * @details Nested fixed arrays initialize every logical element; sequences
         * start empty. No native capability, pointer, or shared buffer is retained.
         */
        public Ros1Pal_interaction_msgsASRSrvResponse()
        {
        }

        /**
         * @brief Encode every field of one complete bounded value.
         * @param value Borrowed stable value; all referenced arrays remain caller-owned.
         * @return Newly owned complete canonical bytes, excluding unused capacity.
         * @details Invalid fields/bounds/semantics throw ArgumentException.
         */
        public static byte[] Encode(Ros1Pal_interaction_msgsASRSrvResponse value)
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
        public static Ros1Pal_interaction_msgsASRSrvResponse Decode(byte[] bytes)
        {
            if (bytes == null || bytes.Length < MIN_WIRE_BYTES || bytes.Length > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Invalid complete canonical extent");
            }
            CatalogWire.Reader wire = new CatalogWire.Reader(bytes);
            Ros1Pal_interaction_msgsASRSrvResponse value = ReadFields(wire);
            wire.Finish();
            return value;
        }

        /**
         * @brief Write this complete nested value within the enclosing aggregate bound.
         * @param wire Borrowed caller-owned finite writer.
         * @param value Borrowed stable complete value.
         * @return No value; invalid fields or aggregate bounds throw before publication.
         */
        internal static void WriteFields(CatalogWire.Writer wire, Ros1Pal_interaction_msgsASRSrvResponse value)
        {
            if (value == null)
            {
                throw new ArgumentException("Null canonical record");
            }
            int start = wire.Position;
            Ros1Pal_interaction_msgsASRStatus.WriteFields(wire, value.field_status);
            wire.String(value.field_error_msg, 128);
            wire.String(value.field_warn_msg, 128);
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
        internal static Ros1Pal_interaction_msgsASRSrvResponse ReadFields(CatalogWire.Reader wire)
        {
            int start = wire.Position;
            Ros1Pal_interaction_msgsASRSrvResponse value = new Ros1Pal_interaction_msgsASRSrvResponse();
            value.field_status = Ros1Pal_interaction_msgsASRStatus.ReadFields(wire);
            value.field_error_msg = wire.String(128);
            value.field_warn_msg = wire.String(128);
            if (wire.Position - start > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Nested aggregate exceeds registered wire bound");
            }
            return value;
        }
    }
}
