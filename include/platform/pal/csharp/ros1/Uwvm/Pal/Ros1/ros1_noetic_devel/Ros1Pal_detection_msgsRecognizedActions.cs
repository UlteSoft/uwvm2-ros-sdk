using System;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Pal.Ros1.ros1_noetic_devel
{
    /**
     * @brief Complete ROS 1 pal_detection_msgs/RecognizedActions value and canonical codec.
     * @details All fields, constants, defaults and nested capacities come from the
     * canonical bounded catalog. Instances own their strings/arrays/nested values.
     * Encode/decode perform no ROS operation and confer no authority. Native type
     * identity must still be independently qualified by the deployment registry.
     */
    public sealed class Ros1Pal_detection_msgsRecognizedActions
    {
        /** @brief Exact registered max wire bytes. */
        public const int MAX_WIRE_BYTES = 2524;
        /** @brief Exact registered min wire bytes. */
        public const int MIN_WIRE_BYTES = 28;
        /** @brief Original codec identity; empty native identity is unqualified. */
        public const string CODEC_IDENTITY =
            "UWVMROS1_b061282e0a4039af635d355d554c8f93af760ff116dfae31f36535b8b9378c33";
        /** @brief Original source type; empty native identity is unqualified. */
        public const string SOURCE_TYPE = "pal_detection_msgs/RecognizedActions";
        /** @brief Original native identity; empty native identity is unqualified. */
        public const string NATIVE_IDENTITY = "";
        /** @brief Complete native field header; scalar, text bound 0. */
        public Ros1Std_msgsHeader field_header = new Ros1Std_msgsHeader();
        /** @brief Complete native field action_name; sequence capacity 16, text bound 128. */
        public string[] field_action_name = new string[0];
        /** @brief Complete native field u; sequence capacity 16, text bound 0. */
        public long[] field_u = new long[0];
        /** @brief Complete native field v; sequence capacity 16, text bound 0. */
        public long[] field_v = new long[0];

        /**
         * @brief Construct the complete original default value with owned storage.
         * @details Nested fixed arrays initialize every logical element; sequences
         * start empty. No native capability, pointer, or shared buffer is retained.
         */
        public Ros1Pal_detection_msgsRecognizedActions()
        {
        }

        /**
         * @brief Encode every field of one complete bounded value.
         * @param value Borrowed stable value; all referenced arrays remain caller-owned.
         * @return Newly owned complete canonical bytes, excluding unused capacity.
         * @details Invalid fields/bounds/semantics throw ArgumentException.
         */
        public static byte[] Encode(Ros1Pal_detection_msgsRecognizedActions value)
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
        public static Ros1Pal_detection_msgsRecognizedActions Decode(byte[] bytes)
        {
            if (bytes == null || bytes.Length < MIN_WIRE_BYTES || bytes.Length > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Invalid complete canonical extent");
            }
            CatalogWire.Reader wire = new CatalogWire.Reader(bytes);
            Ros1Pal_detection_msgsRecognizedActions value = ReadFields(wire);
            wire.Finish();
            return value;
        }

        /**
         * @brief Write this complete nested value within the enclosing aggregate bound.
         * @param wire Borrowed caller-owned finite writer.
         * @param value Borrowed stable complete value.
         * @return No value; invalid fields or aggregate bounds throw before publication.
         */
        internal static void WriteFields(CatalogWire.Writer wire, Ros1Pal_detection_msgsRecognizedActions value)
        {
            if (value == null)
            {
                throw new ArgumentException("Null canonical record");
            }
            int start = wire.Position;
            Ros1Std_msgsHeader.WriteFields(wire, value.field_header);
            if (value.field_action_name == null || value.field_action_name.Length > 16)
            {
                throw new ArgumentException("Invalid action_name extent");
            }
            wire.U32((uint)value.field_action_name.Length);
            for (int index = 0; index < value.field_action_name.Length; ++index)
            {
                wire.String(value.field_action_name[index], 128);
            }
            if (value.field_u == null || value.field_u.Length > 16)
            {
                throw new ArgumentException("Invalid u extent");
            }
            wire.U32((uint)value.field_u.Length);
            for (int index = 0; index < value.field_u.Length; ++index)
            {
                wire.I64(value.field_u[index]);
            }
            if (value.field_v == null || value.field_v.Length > 16)
            {
                throw new ArgumentException("Invalid v extent");
            }
            wire.U32((uint)value.field_v.Length);
            for (int index = 0; index < value.field_v.Length; ++index)
            {
                wire.I64(value.field_v[index]);
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
        internal static Ros1Pal_detection_msgsRecognizedActions ReadFields(CatalogWire.Reader wire)
        {
            int start = wire.Position;
            Ros1Pal_detection_msgsRecognizedActions value = new Ros1Pal_detection_msgsRecognizedActions();
            value.field_header = Ros1Std_msgsHeader.ReadFields(wire);
            value.field_action_name = new string[wire.Count(16)];
            for (int index = 0; index < value.field_action_name.Length; ++index)
            {
                value.field_action_name[index] = wire.String(128);
            }
            value.field_u = new long[wire.Count(16)];
            for (int index = 0; index < value.field_u.Length; ++index)
            {
                value.field_u[index] = wire.I64();
            }
            value.field_v = new long[wire.Count(16)];
            for (int index = 0; index < value.field_v.Length; ++index)
            {
                value.field_v[index] = wire.I64();
            }
            if (wire.Position - start > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Nested aggregate exceeds registered wire bound");
            }
            return value;
        }
    }
}
