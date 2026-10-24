using System;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Pal.Ros1.ros1_indigo_devel
{
    /**
     * @brief Complete ROS 1 pal_interaction_msgs/asrresult value and canonical codec.
     * @details All fields, constants, defaults and nested capacities come from the
     * canonical bounded catalog. Instances own their strings/arrays/nested values.
     * Encode/decode perform no ROS operation and confer no authority. Native type
     * identity must still be independently qualified by the deployment registry.
     */
    public sealed class Ros1Pal_interaction_msgsAsrresult
    {
        /** @brief Exact registered max wire bytes. */
        public const int MAX_WIRE_BYTES = 1209;
        /** @brief Exact registered min wire bytes. */
        public const int MIN_WIRE_BYTES = 25;
        /** @brief Original codec identity; empty native identity is unqualified. */
        public const string CODEC_IDENTITY =
            "UWVMROS1_b259acfd1ed092ec360582155843297af7f18152debe9cfae0573c695f271058";
        /** @brief Original source type; empty native identity is unqualified. */
        public const string SOURCE_TYPE = "pal_interaction_msgs/asrresult";
        /** @brief Original native identity; empty native identity is unqualified. */
        public const string NATIVE_IDENTITY = "";
        /** @brief Original source constant CONFIDENCE_UNDEFINED; consumes no instance wire bytes. */
        public const sbyte CONST_CONFIDENCE_UNDEFINED = (sbyte)-1;
        /** @brief Original source constant CONFIDENCE_POOR; consumes no instance wire bytes. */
        public const sbyte CONST_CONFIDENCE_POOR = (sbyte)1;
        /** @brief Original source constant CONFIDENCE_LOW; consumes no instance wire bytes. */
        public const sbyte CONST_CONFIDENCE_LOW = (sbyte)2;
        /** @brief Original source constant CONFIDENCE_GOOD; consumes no instance wire bytes. */
        public const sbyte CONST_CONFIDENCE_GOOD = (sbyte)3;
        /** @brief Original source constant CONFIDENCE_MAX; consumes no instance wire bytes. */
        public const sbyte CONST_CONFIDENCE_MAX = (sbyte)4;
        /** @brief Complete native field text; scalar, text bound 128. */
        public string field_text = "";
        /** @brief Complete native field confidence; scalar, text bound 0. */
        public sbyte field_confidence = (sbyte)0;
        /** @brief Complete native field start; scalar, text bound 0. */
        public Ros1Time field_start = new Ros1Time();
        /** @brief Complete native field end; scalar, text bound 0. */
        public Ros1Time field_end = new Ros1Time();
        /** @brief Complete native field tags; sequence capacity 4, text bound 0. */
        public Ros1Pal_interaction_msgsActiontag[] field_tags = new Ros1Pal_interaction_msgsActiontag[0];

        /**
         * @brief Construct the complete original default value with owned storage.
         * @details Nested fixed arrays initialize every logical element; sequences
         * start empty. No native capability, pointer, or shared buffer is retained.
         */
        public Ros1Pal_interaction_msgsAsrresult()
        {
        }

        /**
         * @brief Encode every field of one complete bounded value.
         * @param value Borrowed stable value; all referenced arrays remain caller-owned.
         * @return Newly owned complete canonical bytes, excluding unused capacity.
         * @details Invalid fields/bounds/semantics throw ArgumentException.
         */
        public static byte[] Encode(Ros1Pal_interaction_msgsAsrresult value)
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
        public static Ros1Pal_interaction_msgsAsrresult Decode(byte[] bytes)
        {
            if (bytes == null || bytes.Length < MIN_WIRE_BYTES || bytes.Length > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Invalid complete canonical extent");
            }
            CatalogWire.Reader wire = new CatalogWire.Reader(bytes);
            Ros1Pal_interaction_msgsAsrresult value = ReadFields(wire);
            wire.Finish();
            return value;
        }

        /**
         * @brief Write this complete nested value within the enclosing aggregate bound.
         * @param wire Borrowed caller-owned finite writer.
         * @param value Borrowed stable complete value.
         * @return No value; invalid fields or aggregate bounds throw before publication.
         */
        internal static void WriteFields(CatalogWire.Writer wire, Ros1Pal_interaction_msgsAsrresult value)
        {
            if (value == null)
            {
                throw new ArgumentException("Null canonical record");
            }
            int start = wire.Position;
            wire.String(value.field_text, 128);
            wire.I8(value.field_confidence);
            Ros1Time.WriteFields(wire, value.field_start);
            Ros1Time.WriteFields(wire, value.field_end);
            if (value.field_tags == null || value.field_tags.Length > 4)
            {
                throw new ArgumentException("Invalid tags extent");
            }
            wire.U32((uint)value.field_tags.Length);
            for (int index = 0; index < value.field_tags.Length; ++index)
            {
                Ros1Pal_interaction_msgsActiontag.WriteFields(wire, value.field_tags[index]);
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
        internal static Ros1Pal_interaction_msgsAsrresult ReadFields(CatalogWire.Reader wire)
        {
            int start = wire.Position;
            Ros1Pal_interaction_msgsAsrresult value = new Ros1Pal_interaction_msgsAsrresult();
            value.field_text = wire.String(128);
            value.field_confidence = wire.I8();
            value.field_start = Ros1Time.ReadFields(wire);
            value.field_end = Ros1Time.ReadFields(wire);
            value.field_tags = new Ros1Pal_interaction_msgsActiontag[wire.Count(4)];
            for (int index = 0; index < value.field_tags.Length; ++index)
            {
                value.field_tags[index] = Ros1Pal_interaction_msgsActiontag.ReadFields(wire);
            }
            if (wire.Position - start > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Nested aggregate exceeds registered wire bound");
            }
            return value;
        }
    }
}
