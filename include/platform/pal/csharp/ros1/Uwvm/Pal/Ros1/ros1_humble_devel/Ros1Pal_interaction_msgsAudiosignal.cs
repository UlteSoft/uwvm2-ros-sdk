using System;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Pal.Ros1.ros1_humble_devel
{
    /**
     * @brief Complete ROS 1 pal_interaction_msgs/audiosignal value and canonical codec.
     * @details All fields, constants, defaults and nested capacities come from the
     * canonical bounded catalog. Instances own their strings/arrays/nested values.
     * Encode/decode perform no ROS operation and confer no authority. Native type
     * identity must still be independently qualified by the deployment registry.
     */
    public sealed class Ros1Pal_interaction_msgsAudiosignal
    {
        /** @brief Exact registered max wire bytes. */
        public const int MAX_WIRE_BYTES = 264;
        /** @brief Exact registered min wire bytes. */
        public const int MIN_WIRE_BYTES = 8;
        /** @brief Original codec identity; empty native identity is unqualified. */
        public const string CODEC_IDENTITY =
            "UWVMROS1_f70d9a987e0f5443060a55d2f617d9a8fc9e59fe110a9acd256a186b64e5e809";
        /** @brief Original source type; empty native identity is unqualified. */
        public const string SOURCE_TYPE = "pal_interaction_msgs/audiosignal";
        /** @brief Original native identity; empty native identity is unqualified. */
        public const string NATIVE_IDENTITY = "";
        /** @brief Complete native field channel0; sequence capacity 16, text bound 0. */
        public double[] field_channel0 = new double[0];
        /** @brief Complete native field channel1; sequence capacity 16, text bound 0. */
        public double[] field_channel1 = new double[0];

        /**
         * @brief Construct the complete original default value with owned storage.
         * @details Nested fixed arrays initialize every logical element; sequences
         * start empty. No native capability, pointer, or shared buffer is retained.
         */
        public Ros1Pal_interaction_msgsAudiosignal()
        {
        }

        /**
         * @brief Encode every field of one complete bounded value.
         * @param value Borrowed stable value; all referenced arrays remain caller-owned.
         * @return Newly owned complete canonical bytes, excluding unused capacity.
         * @details Invalid fields/bounds/semantics throw ArgumentException.
         */
        public static byte[] Encode(Ros1Pal_interaction_msgsAudiosignal value)
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
        public static Ros1Pal_interaction_msgsAudiosignal Decode(byte[] bytes)
        {
            if (bytes == null || bytes.Length < MIN_WIRE_BYTES || bytes.Length > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Invalid complete canonical extent");
            }
            CatalogWire.Reader wire = new CatalogWire.Reader(bytes);
            Ros1Pal_interaction_msgsAudiosignal value = ReadFields(wire);
            wire.Finish();
            return value;
        }

        /**
         * @brief Write this complete nested value within the enclosing aggregate bound.
         * @param wire Borrowed caller-owned finite writer.
         * @param value Borrowed stable complete value.
         * @return No value; invalid fields or aggregate bounds throw before publication.
         */
        internal static void WriteFields(CatalogWire.Writer wire, Ros1Pal_interaction_msgsAudiosignal value)
        {
            if (value == null)
            {
                throw new ArgumentException("Null canonical record");
            }
            int start = wire.Position;
            if (value.field_channel0 == null || value.field_channel0.Length > 16)
            {
                throw new ArgumentException("Invalid channel0 extent");
            }
            wire.U32((uint)value.field_channel0.Length);
            for (int index = 0; index < value.field_channel0.Length; ++index)
            {
                if (!double.IsFinite(value.field_channel0[index]))
                {
                    throw new ArgumentException("Nonfinite channel0");
                }
                wire.F64(value.field_channel0[index]);
            }
            if (value.field_channel1 == null || value.field_channel1.Length > 16)
            {
                throw new ArgumentException("Invalid channel1 extent");
            }
            wire.U32((uint)value.field_channel1.Length);
            for (int index = 0; index < value.field_channel1.Length; ++index)
            {
                if (!double.IsFinite(value.field_channel1[index]))
                {
                    throw new ArgumentException("Nonfinite channel1");
                }
                wire.F64(value.field_channel1[index]);
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
        internal static Ros1Pal_interaction_msgsAudiosignal ReadFields(CatalogWire.Reader wire)
        {
            int start = wire.Position;
            Ros1Pal_interaction_msgsAudiosignal value = new Ros1Pal_interaction_msgsAudiosignal();
            value.field_channel0 = new double[wire.Count(16)];
            for (int index = 0; index < value.field_channel0.Length; ++index)
            {
                value.field_channel0[index] = wire.F64();
                if (!double.IsFinite(value.field_channel0[index]))
                {
                    throw new ArgumentException("Nonfinite channel0");
                }
            }
            value.field_channel1 = new double[wire.Count(16)];
            for (int index = 0; index < value.field_channel1.Length; ++index)
            {
                value.field_channel1[index] = wire.F64();
                if (!double.IsFinite(value.field_channel1[index]))
                {
                    throw new ArgumentException("Nonfinite channel1");
                }
            }
            if (wire.Position - start > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Nested aggregate exceeds registered wire bound");
            }
            return value;
        }
    }
}
