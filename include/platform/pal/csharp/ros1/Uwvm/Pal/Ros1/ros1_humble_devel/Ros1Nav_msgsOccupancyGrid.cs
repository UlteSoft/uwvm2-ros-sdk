using System;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Pal.Ros1.ros1_humble_devel
{
    /**
     * @brief Complete ROS 1 nav_msgs/OccupancyGrid value and canonical codec.
     * @details All fields, constants, defaults and nested capacities come from the
     * canonical bounded catalog. Instances own their strings/arrays/nested values.
     * Encode/decode perform no ROS operation and confer no authority. Native type
     * identity must still be independently qualified by the deployment registry.
     */
    public sealed class Ros1Nav_msgsOccupancyGrid
    {
        /** @brief Exact registered max wire bytes. */
        public const int MAX_WIRE_BYTES = 480;
        /** @brief Exact registered min wire bytes. */
        public const int MIN_WIRE_BYTES = 96;
        /** @brief Original codec identity; empty native identity is unqualified. */
        public const string CODEC_IDENTITY =
            "UWVMROS1_01c46df6fd069eca1664115a5bfaefa2497f0b44b1c0b11b6f293cb56b0c837d";
        /** @brief Original source type; empty native identity is unqualified. */
        public const string SOURCE_TYPE = "nav_msgs/OccupancyGrid";
        /** @brief Original native identity; empty native identity is unqualified. */
        public const string NATIVE_IDENTITY = "";
        /** @brief Complete native field header; scalar, text bound 0. */
        public Ros1Std_msgsHeader field_header = new Ros1Std_msgsHeader();
        /** @brief Complete native field info; scalar, text bound 0. */
        public Ros1Nav_msgsMapMetaData field_info = new Ros1Nav_msgsMapMetaData();
        /** @brief Complete native field data; sequence capacity 256, text bound 0. */
        public sbyte[] field_data = new sbyte[0];

        /**
         * @brief Construct the complete original default value with owned storage.
         * @details Nested fixed arrays initialize every logical element; sequences
         * start empty. No native capability, pointer, or shared buffer is retained.
         */
        public Ros1Nav_msgsOccupancyGrid()
        {
        }

        /**
         * @brief Encode every field of one complete bounded value.
         * @param value Borrowed stable value; all referenced arrays remain caller-owned.
         * @return Newly owned complete canonical bytes, excluding unused capacity.
         * @details Invalid fields/bounds/semantics throw ArgumentException.
         */
        public static byte[] Encode(Ros1Nav_msgsOccupancyGrid value)
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
        public static Ros1Nav_msgsOccupancyGrid Decode(byte[] bytes)
        {
            if (bytes == null || bytes.Length < MIN_WIRE_BYTES || bytes.Length > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Invalid complete canonical extent");
            }
            CatalogWire.Reader wire = new CatalogWire.Reader(bytes);
            Ros1Nav_msgsOccupancyGrid value = ReadFields(wire);
            wire.Finish();
            return value;
        }

        /**
         * @brief Write this complete nested value within the enclosing aggregate bound.
         * @param wire Borrowed caller-owned finite writer.
         * @param value Borrowed stable complete value.
         * @return No value; invalid fields or aggregate bounds throw before publication.
         */
        internal static void WriteFields(CatalogWire.Writer wire, Ros1Nav_msgsOccupancyGrid value)
        {
            if (value == null)
            {
                throw new ArgumentException("Null canonical record");
            }
            int start = wire.Position;
            Ros1Std_msgsHeader.WriteFields(wire, value.field_header);
            Ros1Nav_msgsMapMetaData.WriteFields(wire, value.field_info);
            if (value.field_data == null || value.field_data.Length > 256)
            {
                throw new ArgumentException("Invalid data extent");
            }
            wire.U32((uint)value.field_data.Length);
            for (int index = 0; index < value.field_data.Length; ++index)
            {
                wire.I8(value.field_data[index]);
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
        internal static Ros1Nav_msgsOccupancyGrid ReadFields(CatalogWire.Reader wire)
        {
            int start = wire.Position;
            Ros1Nav_msgsOccupancyGrid value = new Ros1Nav_msgsOccupancyGrid();
            value.field_header = Ros1Std_msgsHeader.ReadFields(wire);
            value.field_info = Ros1Nav_msgsMapMetaData.ReadFields(wire);
            value.field_data = new sbyte[wire.Count(256)];
            for (int index = 0; index < value.field_data.Length; ++index)
            {
                value.field_data[index] = wire.I8();
            }
            if (wire.Position - start > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Nested aggregate exceeds registered wire bound");
            }
            return value;
        }
    }
}
