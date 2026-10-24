using System;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Pal.Ros1.ros1_noetic_devel
{
    /**
     * @brief Complete ROS 1 pal_detection_msgs/PersonDetection value and canonical codec.
     * @details All fields, constants, defaults and nested capacities come from the
     * canonical bounded catalog. Instances own their strings/arrays/nested values.
     * Encode/decode perform no ROS operation and confer no authority. Native type
     * identity must still be independently qualified by the deployment registry.
     */
    public sealed class Ros1Pal_detection_msgsPersonDetection
    {
        /** @brief Exact registered max wire bytes. */
        public const int MAX_WIRE_BYTES = 1257;
        /** @brief Exact registered min wire bytes. */
        public const int MIN_WIRE_BYTES = 265;
        /** @brief Original codec identity; empty native identity is unqualified. */
        public const string CODEC_IDENTITY =
            "UWVMROS1_4da91c014135c4fc077060bdfdde36f82e41d45729fe56642b33b83157d07853";
        /** @brief Original source type; empty native identity is unqualified. */
        public const string SOURCE_TYPE = "pal_detection_msgs/PersonDetection";
        /** @brief Original native identity; empty native identity is unqualified. */
        public const string NATIVE_IDENTITY = "";
        /** @brief Complete native field full_body; scalar, text bound 0. */
        public Ros1Pal_detection_msgsDetection2d field_full_body = new Ros1Pal_detection_msgsDetection2d();
        /** @brief Complete native field face; scalar, text bound 0. */
        public Ros1Pal_detection_msgsFaceDetection field_face = new Ros1Pal_detection_msgsFaceDetection();
        /** @brief Complete native field legs; scalar, text bound 0. */
        public Ros1Pal_detection_msgsLegDetections field_legs = new Ros1Pal_detection_msgsLegDetections();
        /** @brief Complete native field position3D; scalar, text bound 0. */
        public Ros1Geometry_msgsPointStamped field_position3D = new Ros1Geometry_msgsPointStamped();

        /**
         * @brief Construct the complete original default value with owned storage.
         * @details Nested fixed arrays initialize every logical element; sequences
         * start empty. No native capability, pointer, or shared buffer is retained.
         */
        public Ros1Pal_detection_msgsPersonDetection()
        {
        }

        /**
         * @brief Encode every field of one complete bounded value.
         * @param value Borrowed stable value; all referenced arrays remain caller-owned.
         * @return Newly owned complete canonical bytes, excluding unused capacity.
         * @details Invalid fields/bounds/semantics throw ArgumentException.
         */
        public static byte[] Encode(Ros1Pal_detection_msgsPersonDetection value)
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
        public static Ros1Pal_detection_msgsPersonDetection Decode(byte[] bytes)
        {
            if (bytes == null || bytes.Length < MIN_WIRE_BYTES || bytes.Length > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Invalid complete canonical extent");
            }
            CatalogWire.Reader wire = new CatalogWire.Reader(bytes);
            Ros1Pal_detection_msgsPersonDetection value = ReadFields(wire);
            wire.Finish();
            return value;
        }

        /**
         * @brief Write this complete nested value within the enclosing aggregate bound.
         * @param wire Borrowed caller-owned finite writer.
         * @param value Borrowed stable complete value.
         * @return No value; invalid fields or aggregate bounds throw before publication.
         */
        internal static void WriteFields(CatalogWire.Writer wire, Ros1Pal_detection_msgsPersonDetection value)
        {
            if (value == null)
            {
                throw new ArgumentException("Null canonical record");
            }
            int start = wire.Position;
            Ros1Pal_detection_msgsDetection2d.WriteFields(wire, value.field_full_body);
            Ros1Pal_detection_msgsFaceDetection.WriteFields(wire, value.field_face);
            Ros1Pal_detection_msgsLegDetections.WriteFields(wire, value.field_legs);
            Ros1Geometry_msgsPointStamped.WriteFields(wire, value.field_position3D);
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
        internal static Ros1Pal_detection_msgsPersonDetection ReadFields(CatalogWire.Reader wire)
        {
            int start = wire.Position;
            Ros1Pal_detection_msgsPersonDetection value = new Ros1Pal_detection_msgsPersonDetection();
            value.field_full_body = Ros1Pal_detection_msgsDetection2d.ReadFields(wire);
            value.field_face = Ros1Pal_detection_msgsFaceDetection.ReadFields(wire);
            value.field_legs = Ros1Pal_detection_msgsLegDetections.ReadFields(wire);
            value.field_position3D = Ros1Geometry_msgsPointStamped.ReadFields(wire);
            if (wire.Position - start > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Nested aggregate exceeds registered wire bound");
            }
            return value;
        }
    }
}
