using System;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Pal.Ros1.ros1_noetic_devel
{
    /**
     * @brief Complete ROS 1 sensor_msgs/Image value and canonical codec.
     * @details All fields, constants, defaults and nested capacities come from the
     * canonical bounded catalog. Instances own their strings/arrays/nested values.
     * Encode/decode perform no ROS operation and confer no authority. Native type
     * identity must still be independently qualified by the deployment registry.
     */
    public sealed class Ros1Sensor_msgsImage
    {
        /** @brief Exact registered max wire bytes. */
        public const int MAX_WIRE_BYTES = 4389;
        /** @brief Exact registered min wire bytes. */
        public const int MIN_WIRE_BYTES = 37;
        /** @brief Original codec identity; empty native identity is unqualified. */
        public const string CODEC_IDENTITY =
            "UWVMROS1_da3bee65c72205c46f51ab123a4399369df1a0a1419c32fdcd350f16bd5f76ce";
        /** @brief Original source type; empty native identity is unqualified. */
        public const string SOURCE_TYPE = "sensor_msgs/Image";
        /** @brief Original native identity; empty native identity is unqualified. */
        public const string NATIVE_IDENTITY = "";
        /** @brief Complete native field header; scalar, text bound 0. */
        public Ros1Std_msgsHeader field_header = new Ros1Std_msgsHeader();
        /** @brief Complete native field height; scalar, text bound 0. */
        public uint field_height = 0u;
        /** @brief Complete native field width; scalar, text bound 0. */
        public uint field_width = 0u;
        /** @brief Complete native field encoding; scalar, text bound 128. */
        public string field_encoding = "";
        /** @brief Complete native field is_bigendian; scalar, text bound 0. */
        public byte field_is_bigendian = (byte)0;
        /** @brief Complete native field step; scalar, text bound 0. */
        public uint field_step = 0u;
        /** @brief Complete native field data; sequence capacity 4096, text bound 0. */
        public byte[] field_data = new byte[0];

        /**
         * @brief Construct the complete original default value with owned storage.
         * @details Nested fixed arrays initialize every logical element; sequences
         * start empty. No native capability, pointer, or shared buffer is retained.
         */
        public Ros1Sensor_msgsImage()
        {
        }

        /**
         * @brief Encode every field of one complete bounded value.
         * @param value Borrowed stable value; all referenced arrays remain caller-owned.
         * @return Newly owned complete canonical bytes, excluding unused capacity.
         * @details Invalid fields/bounds/semantics throw ArgumentException.
         */
        public static byte[] Encode(Ros1Sensor_msgsImage value)
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
        public static Ros1Sensor_msgsImage Decode(byte[] bytes)
        {
            if (bytes == null || bytes.Length < MIN_WIRE_BYTES || bytes.Length > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Invalid complete canonical extent");
            }
            CatalogWire.Reader wire = new CatalogWire.Reader(bytes);
            Ros1Sensor_msgsImage value = ReadFields(wire);
            wire.Finish();
            return value;
        }

        /**
         * @brief Write this complete nested value within the enclosing aggregate bound.
         * @param wire Borrowed caller-owned finite writer.
         * @param value Borrowed stable complete value.
         * @return No value; invalid fields or aggregate bounds throw before publication.
         */
        internal static void WriteFields(CatalogWire.Writer wire, Ros1Sensor_msgsImage value)
        {
            if (value == null)
            {
                throw new ArgumentException("Null canonical record");
            }
            int start = wire.Position;
            Ros1Std_msgsHeader.WriteFields(wire, value.field_header);
            wire.U32(value.field_height);
            wire.U32(value.field_width);
            wire.String(value.field_encoding, 128);
            wire.U8(value.field_is_bigendian);
            wire.U32(value.field_step);
            if (value.field_data == null || value.field_data.Length > 4096)
            {
                throw new ArgumentException("Invalid data extent");
            }
            wire.U32((uint)value.field_data.Length);
            for (int index = 0; index < value.field_data.Length; ++index)
            {
                wire.U8(value.field_data[index]);
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
        internal static Ros1Sensor_msgsImage ReadFields(CatalogWire.Reader wire)
        {
            int start = wire.Position;
            Ros1Sensor_msgsImage value = new Ros1Sensor_msgsImage();
            value.field_header = Ros1Std_msgsHeader.ReadFields(wire);
            value.field_height = wire.U32();
            value.field_width = wire.U32();
            value.field_encoding = wire.String(128);
            value.field_is_bigendian = wire.U8();
            value.field_step = wire.U32();
            value.field_data = new byte[wire.Count(4096)];
            for (int index = 0; index < value.field_data.Length; ++index)
            {
                value.field_data[index] = wire.U8();
            }
            if (wire.Position - start > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Nested aggregate exceeds registered wire bound");
            }
            return value;
        }
    }
}
