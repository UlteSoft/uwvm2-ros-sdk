using System;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Pal.Ros1.ros1_humble_devel
{
    /**
     * @brief Complete ROS 1 pal_detection_msgs/PersonDetections value and canonical codec.
     * @details All fields, constants, defaults and nested capacities come from the
     * canonical bounded catalog. Instances own their strings/arrays/nested values.
     * Encode/decode perform no ROS operation and confer no authority. Native type
     * identity must still be independently qualified by the deployment registry.
     */
    public sealed class Ros1Pal_detection_msgsPersonDetections
    {
        /** @brief Exact registered max wire bytes. */
        public const int MAX_WIRE_BYTES = 5508;
        /** @brief Exact registered min wire bytes. */
        public const int MIN_WIRE_BYTES = 96;
        /** @brief Original codec identity; empty native identity is unqualified. */
        public const string CODEC_IDENTITY =
            "UWVMROS1_cafbf2a5df82057119e9638012e379e0126c0cb951ca159747ebe69c1ed0fd91";
        /** @brief Original source type; empty native identity is unqualified. */
        public const string SOURCE_TYPE = "pal_detection_msgs/PersonDetections";
        /** @brief Original native identity; empty native identity is unqualified. */
        public const string NATIVE_IDENTITY = "";
        /** @brief Complete native field header; scalar, text bound 0. */
        public Ros1Std_msgsHeader field_header = new Ros1Std_msgsHeader();
        /** @brief Complete native field persons; sequence capacity 4, text bound 0. */
        public Ros1Pal_detection_msgsPersonDetection[] field_persons = new Ros1Pal_detection_msgsPersonDetection[0];
        /** @brief Complete native field camera_pose; scalar, text bound 0. */
        public Ros1Geometry_msgsTransformStamped field_camera_pose = new Ros1Geometry_msgsTransformStamped();

        /**
         * @brief Construct the complete original default value with owned storage.
         * @details Nested fixed arrays initialize every logical element; sequences
         * start empty. No native capability, pointer, or shared buffer is retained.
         */
        public Ros1Pal_detection_msgsPersonDetections()
        {
        }

        /**
         * @brief Encode every field of one complete bounded value.
         * @param value Borrowed stable value; all referenced arrays remain caller-owned.
         * @return Newly owned complete canonical bytes, excluding unused capacity.
         * @details Invalid fields/bounds/semantics throw ArgumentException.
         */
        public static byte[] Encode(Ros1Pal_detection_msgsPersonDetections value)
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
        public static Ros1Pal_detection_msgsPersonDetections Decode(byte[] bytes)
        {
            if (bytes == null || bytes.Length < MIN_WIRE_BYTES || bytes.Length > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Invalid complete canonical extent");
            }
            CatalogWire.Reader wire = new CatalogWire.Reader(bytes);
            Ros1Pal_detection_msgsPersonDetections value = ReadFields(wire);
            wire.Finish();
            return value;
        }

        /**
         * @brief Write this complete nested value within the enclosing aggregate bound.
         * @param wire Borrowed caller-owned finite writer.
         * @param value Borrowed stable complete value.
         * @return No value; invalid fields or aggregate bounds throw before publication.
         */
        internal static void WriteFields(CatalogWire.Writer wire, Ros1Pal_detection_msgsPersonDetections value)
        {
            if (value == null)
            {
                throw new ArgumentException("Null canonical record");
            }
            int start = wire.Position;
            Ros1Std_msgsHeader.WriteFields(wire, value.field_header);
            if (value.field_persons == null || value.field_persons.Length > 4)
            {
                throw new ArgumentException("Invalid persons extent");
            }
            wire.U32((uint)value.field_persons.Length);
            for (int index = 0; index < value.field_persons.Length; ++index)
            {
                Ros1Pal_detection_msgsPersonDetection.WriteFields(wire, value.field_persons[index]);
            }
            Ros1Geometry_msgsTransformStamped.WriteFields(wire, value.field_camera_pose);
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
        internal static Ros1Pal_detection_msgsPersonDetections ReadFields(CatalogWire.Reader wire)
        {
            int start = wire.Position;
            Ros1Pal_detection_msgsPersonDetections value = new Ros1Pal_detection_msgsPersonDetections();
            value.field_header = Ros1Std_msgsHeader.ReadFields(wire);
            value.field_persons = new Ros1Pal_detection_msgsPersonDetection[wire.Count(4)];
            for (int index = 0; index < value.field_persons.Length; ++index)
            {
                value.field_persons[index] = Ros1Pal_detection_msgsPersonDetection.ReadFields(wire);
            }
            value.field_camera_pose = Ros1Geometry_msgsTransformStamped.ReadFields(wire);
            if (wire.Position - start > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Nested aggregate exceeds registered wire bound");
            }
            return value;
        }
    }
}
