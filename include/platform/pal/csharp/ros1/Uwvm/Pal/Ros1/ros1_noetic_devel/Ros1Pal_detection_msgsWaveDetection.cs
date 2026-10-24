using System;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Pal.Ros1.ros1_noetic_devel
{
    /**
     * @brief Complete ROS 1 pal_detection_msgs/WaveDetection value and canonical codec.
     * @details All fields, constants, defaults and nested capacities come from the
     * canonical bounded catalog. Instances own their strings/arrays/nested values.
     * Encode/decode perform no ROS operation and confer no authority. Native type
     * identity must still be independently qualified by the deployment registry.
     */
    public sealed class Ros1Pal_detection_msgsWaveDetection
    {
        /** @brief Exact registered max wire bytes. */
        public const int MAX_WIRE_BYTES = 147;
        /** @brief Exact registered min wire bytes. */
        public const int MIN_WIRE_BYTES = 19;
        /** @brief Original codec identity; empty native identity is unqualified. */
        public const string CODEC_IDENTITY =
            "UWVMROS1_9c121f0ad95f8e28a13b1b7b80c32f0cea55b737edccf63fe92908ed806db52e";
        /** @brief Original source type; empty native identity is unqualified. */
        public const string SOURCE_TYPE = "pal_detection_msgs/WaveDetection";
        /** @brief Original native identity; empty native identity is unqualified. */
        public const string NATIVE_IDENTITY = "";
        /** @brief Complete native field header; scalar, text bound 0. */
        public Ros1Std_msgsHeader field_header = new Ros1Std_msgsHeader();
        /** @brief Complete native field wave; scalar, text bound 0. */
        public bool field_wave = false;
        /** @brief Complete native field u; scalar, text bound 0. */
        public sbyte field_u = (sbyte)0;
        /** @brief Complete native field v; scalar, text bound 0. */
        public sbyte field_v = (sbyte)0;

        /**
         * @brief Construct the complete original default value with owned storage.
         * @details Nested fixed arrays initialize every logical element; sequences
         * start empty. No native capability, pointer, or shared buffer is retained.
         */
        public Ros1Pal_detection_msgsWaveDetection()
        {
        }

        /**
         * @brief Encode every field of one complete bounded value.
         * @param value Borrowed stable value; all referenced arrays remain caller-owned.
         * @return Newly owned complete canonical bytes, excluding unused capacity.
         * @details Invalid fields/bounds/semantics throw ArgumentException.
         */
        public static byte[] Encode(Ros1Pal_detection_msgsWaveDetection value)
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
        public static Ros1Pal_detection_msgsWaveDetection Decode(byte[] bytes)
        {
            if (bytes == null || bytes.Length < MIN_WIRE_BYTES || bytes.Length > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Invalid complete canonical extent");
            }
            CatalogWire.Reader wire = new CatalogWire.Reader(bytes);
            Ros1Pal_detection_msgsWaveDetection value = ReadFields(wire);
            wire.Finish();
            return value;
        }

        /**
         * @brief Write this complete nested value within the enclosing aggregate bound.
         * @param wire Borrowed caller-owned finite writer.
         * @param value Borrowed stable complete value.
         * @return No value; invalid fields or aggregate bounds throw before publication.
         */
        internal static void WriteFields(CatalogWire.Writer wire, Ros1Pal_detection_msgsWaveDetection value)
        {
            if (value == null)
            {
                throw new ArgumentException("Null canonical record");
            }
            int start = wire.Position;
            Ros1Std_msgsHeader.WriteFields(wire, value.field_header);
            wire.Bool(value.field_wave);
            wire.I8(value.field_u);
            wire.I8(value.field_v);
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
        internal static Ros1Pal_detection_msgsWaveDetection ReadFields(CatalogWire.Reader wire)
        {
            int start = wire.Position;
            Ros1Pal_detection_msgsWaveDetection value = new Ros1Pal_detection_msgsWaveDetection();
            value.field_header = Ros1Std_msgsHeader.ReadFields(wire);
            value.field_wave = wire.Bool();
            value.field_u = wire.I8();
            value.field_v = wire.I8();
            if (wire.Position - start > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Nested aggregate exceeds registered wire bound");
            }
            return value;
        }
    }
}
