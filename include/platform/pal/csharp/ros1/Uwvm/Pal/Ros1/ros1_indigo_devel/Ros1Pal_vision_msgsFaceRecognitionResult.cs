using System;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Pal.Ros1.ros1_indigo_devel
{
    /**
     * @brief Complete ROS 1 pal_vision_msgs/FaceRecognitionResult value and canonical codec.
     * @details All fields, constants, defaults and nested capacities come from the
     * canonical bounded catalog. Instances own their strings/arrays/nested values.
     * Encode/decode perform no ROS operation and confer no authority. Native type
     * identity must still be independently qualified by the deployment registry.
     */
    public sealed class Ros1Pal_vision_msgsFaceRecognitionResult
    {
        /** @brief Exact registered max wire bytes. */
        public const int MAX_WIRE_BYTES = 2185;
        /** @brief Exact registered min wire bytes. */
        public const int MIN_WIRE_BYTES = 9;
        /** @brief Original codec identity; empty native identity is unqualified. */
        public const string CODEC_IDENTITY =
            "UWVMROS1_47287112c67933fc592f58a910627ff0ddc35f2cf8f38437399ef1ed94e4d36e";
        /** @brief Original source type; empty native identity is unqualified. */
        public const string SOURCE_TYPE = "pal_vision_msgs/FaceRecognitionResult";
        /** @brief Original native identity; empty native identity is unqualified. */
        public const string NATIVE_IDENTITY = "";
        /** @brief Complete native field order_id; scalar, text bound 0. */
        public byte field_order_id = (byte)0;
        /** @brief Complete native field names; sequence capacity 16, text bound 128. */
        public string[] field_names = new string[0];
        /** @brief Complete native field confidence; sequence capacity 16, text bound 0. */
        public float[] field_confidence = new float[0];

        /**
         * @brief Construct the complete original default value with owned storage.
         * @details Nested fixed arrays initialize every logical element; sequences
         * start empty. No native capability, pointer, or shared buffer is retained.
         */
        public Ros1Pal_vision_msgsFaceRecognitionResult()
        {
        }

        /**
         * @brief Encode every field of one complete bounded value.
         * @param value Borrowed stable value; all referenced arrays remain caller-owned.
         * @return Newly owned complete canonical bytes, excluding unused capacity.
         * @details Invalid fields/bounds/semantics throw ArgumentException.
         */
        public static byte[] Encode(Ros1Pal_vision_msgsFaceRecognitionResult value)
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
        public static Ros1Pal_vision_msgsFaceRecognitionResult Decode(byte[] bytes)
        {
            if (bytes == null || bytes.Length < MIN_WIRE_BYTES || bytes.Length > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Invalid complete canonical extent");
            }
            CatalogWire.Reader wire = new CatalogWire.Reader(bytes);
            Ros1Pal_vision_msgsFaceRecognitionResult value = ReadFields(wire);
            wire.Finish();
            return value;
        }

        /**
         * @brief Write this complete nested value within the enclosing aggregate bound.
         * @param wire Borrowed caller-owned finite writer.
         * @param value Borrowed stable complete value.
         * @return No value; invalid fields or aggregate bounds throw before publication.
         */
        internal static void WriteFields(CatalogWire.Writer wire, Ros1Pal_vision_msgsFaceRecognitionResult value)
        {
            if (value == null)
            {
                throw new ArgumentException("Null canonical record");
            }
            int start = wire.Position;
            wire.U8(value.field_order_id);
            if (value.field_names == null || value.field_names.Length > 16)
            {
                throw new ArgumentException("Invalid names extent");
            }
            wire.U32((uint)value.field_names.Length);
            for (int index = 0; index < value.field_names.Length; ++index)
            {
                wire.String(value.field_names[index], 128);
            }
            if (value.field_confidence == null || value.field_confidence.Length > 16)
            {
                throw new ArgumentException("Invalid confidence extent");
            }
            wire.U32((uint)value.field_confidence.Length);
            for (int index = 0; index < value.field_confidence.Length; ++index)
            {
                if (!float.IsFinite(value.field_confidence[index]))
                {
                    throw new ArgumentException("Nonfinite confidence");
                }
                wire.F32(value.field_confidence[index]);
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
        internal static Ros1Pal_vision_msgsFaceRecognitionResult ReadFields(CatalogWire.Reader wire)
        {
            int start = wire.Position;
            Ros1Pal_vision_msgsFaceRecognitionResult value = new Ros1Pal_vision_msgsFaceRecognitionResult();
            value.field_order_id = wire.U8();
            value.field_names = new string[wire.Count(16)];
            for (int index = 0; index < value.field_names.Length; ++index)
            {
                value.field_names[index] = wire.String(128);
            }
            value.field_confidence = new float[wire.Count(16)];
            for (int index = 0; index < value.field_confidence.Length; ++index)
            {
                value.field_confidence[index] = wire.F32();
                if (!float.IsFinite(value.field_confidence[index]))
                {
                    throw new ArgumentException("Nonfinite confidence");
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
