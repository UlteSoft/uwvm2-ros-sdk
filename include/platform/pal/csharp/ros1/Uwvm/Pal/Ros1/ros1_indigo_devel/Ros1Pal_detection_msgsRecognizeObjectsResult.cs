using System;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Pal.Ros1.ros1_indigo_devel
{
    /**
     * @brief Complete ROS 1 pal_detection_msgs/RecognizeObjectsResult value and canonical codec.
     * @details All fields, constants, defaults and nested capacities come from the
     * canonical bounded catalog. Instances own their strings/arrays/nested values.
     * Encode/decode perform no ROS operation and confer no authority. Native type
     * identity must still be independently qualified by the deployment registry.
     */
    public sealed class Ros1Pal_detection_msgsRecognizeObjectsResult
    {
        /** @brief Exact registered max wire bytes. */
        public const int MAX_WIRE_BYTES = 5138;
        /** @brief Exact registered min wire bytes. */
        public const int MIN_WIRE_BYTES = 46;
        /** @brief Original codec identity; empty native identity is unqualified. */
        public const string CODEC_IDENTITY =
            "UWVMROS1_1d30540a71461481094e70b11d19c4a327881fd6ed81689bc948b3de5853b8da";
        /** @brief Original source type; empty native identity is unqualified. */
        public const string SOURCE_TYPE = "pal_detection_msgs/RecognizeObjectsResult";
        /** @brief Original native identity; empty native identity is unqualified. */
        public const string NATIVE_IDENTITY = "";
        /** @brief Complete native field image; scalar, text bound 0. */
        public Ros1Sensor_msgsCompressedImage field_image = new Ros1Sensor_msgsCompressedImage();
        /** @brief Complete native field num_detections; scalar, text bound 0. */
        public short field_num_detections = (short)0;
        /** @brief Complete native field recognized_objects; scalar, text bound 0. */
        public Ros1Pal_detection_msgsRecognizedObjectArray field_recognized_objects =
            new Ros1Pal_detection_msgsRecognizedObjectArray();

        /**
         * @brief Construct the complete original default value with owned storage.
         * @details Nested fixed arrays initialize every logical element; sequences
         * start empty. No native capability, pointer, or shared buffer is retained.
         */
        public Ros1Pal_detection_msgsRecognizeObjectsResult()
        {
        }

        /**
         * @brief Encode every field of one complete bounded value.
         * @param value Borrowed stable value; all referenced arrays remain caller-owned.
         * @return Newly owned complete canonical bytes, excluding unused capacity.
         * @details Invalid fields/bounds/semantics throw ArgumentException.
         */
        public static byte[] Encode(Ros1Pal_detection_msgsRecognizeObjectsResult value)
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
        public static Ros1Pal_detection_msgsRecognizeObjectsResult Decode(byte[] bytes)
        {
            if (bytes == null || bytes.Length < MIN_WIRE_BYTES || bytes.Length > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Invalid complete canonical extent");
            }
            CatalogWire.Reader wire = new CatalogWire.Reader(bytes);
            Ros1Pal_detection_msgsRecognizeObjectsResult value = ReadFields(wire);
            wire.Finish();
            return value;
        }

        /**
         * @brief Write this complete nested value within the enclosing aggregate bound.
         * @param wire Borrowed caller-owned finite writer.
         * @param value Borrowed stable complete value.
         * @return No value; invalid fields or aggregate bounds throw before publication.
         */
        internal static void WriteFields(CatalogWire.Writer wire, Ros1Pal_detection_msgsRecognizeObjectsResult value)
        {
            if (value == null)
            {
                throw new ArgumentException("Null canonical record");
            }
            int start = wire.Position;
            Ros1Sensor_msgsCompressedImage.WriteFields(wire, value.field_image);
            wire.I16(value.field_num_detections);
            Ros1Pal_detection_msgsRecognizedObjectArray.WriteFields(wire, value.field_recognized_objects);
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
        internal static Ros1Pal_detection_msgsRecognizeObjectsResult ReadFields(CatalogWire.Reader wire)
        {
            int start = wire.Position;
            Ros1Pal_detection_msgsRecognizeObjectsResult value = new Ros1Pal_detection_msgsRecognizeObjectsResult();
            value.field_image = Ros1Sensor_msgsCompressedImage.ReadFields(wire);
            value.field_num_detections = wire.I16();
            value.field_recognized_objects = Ros1Pal_detection_msgsRecognizedObjectArray.ReadFields(wire);
            if (wire.Position - start > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Nested aggregate exceeds registered wire bound");
            }
            return value;
        }
    }
}
