using System;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Pal.Ros1.ros1_indigo_devel
{
    /**
     * @brief Complete ROS 1 nav_msgs/MapMetaData value and canonical codec.
     * @details All fields, constants, defaults and nested capacities come from the
     * canonical bounded catalog. Instances own their strings/arrays/nested values.
     * Encode/decode perform no ROS operation and confer no authority. Native type
     * identity must still be independently qualified by the deployment registry.
     */
    public sealed class Ros1Nav_msgsMapMetaData
    {
        /** @brief Exact registered max wire bytes. */
        public const int MAX_WIRE_BYTES = 76;
        /** @brief Exact registered min wire bytes. */
        public const int MIN_WIRE_BYTES = 76;
        /** @brief Original codec identity; empty native identity is unqualified. */
        public const string CODEC_IDENTITY =
            "UWVMROS1_2bd90889cc46f8b6669b9bdbdd911747e873c2e3fb948cd3c94a1add8c4555ec";
        /** @brief Original source type; empty native identity is unqualified. */
        public const string SOURCE_TYPE = "nav_msgs/MapMetaData";
        /** @brief Original native identity; empty native identity is unqualified. */
        public const string NATIVE_IDENTITY = "";
        /** @brief Complete native field map_load_time; scalar, text bound 0. */
        public Ros1Time field_map_load_time = new Ros1Time();
        /** @brief Complete native field resolution; scalar, text bound 0. */
        public float field_resolution = BitConverter.Int32BitsToSingle(unchecked((int)0x00000000u));
        /** @brief Complete native field width; scalar, text bound 0. */
        public uint field_width = 0u;
        /** @brief Complete native field height; scalar, text bound 0. */
        public uint field_height = 0u;
        /** @brief Complete native field origin; scalar, text bound 0. */
        public Ros1Geometry_msgsPose field_origin = new Ros1Geometry_msgsPose();

        /**
         * @brief Construct the complete original default value with owned storage.
         * @details Nested fixed arrays initialize every logical element; sequences
         * start empty. No native capability, pointer, or shared buffer is retained.
         */
        public Ros1Nav_msgsMapMetaData()
        {
        }

        /**
         * @brief Encode every field of one complete bounded value.
         * @param value Borrowed stable value; all referenced arrays remain caller-owned.
         * @return Newly owned complete canonical bytes, excluding unused capacity.
         * @details Invalid fields/bounds/semantics throw ArgumentException.
         */
        public static byte[] Encode(Ros1Nav_msgsMapMetaData value)
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
        public static Ros1Nav_msgsMapMetaData Decode(byte[] bytes)
        {
            if (bytes == null || bytes.Length < MIN_WIRE_BYTES || bytes.Length > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Invalid complete canonical extent");
            }
            CatalogWire.Reader wire = new CatalogWire.Reader(bytes);
            Ros1Nav_msgsMapMetaData value = ReadFields(wire);
            wire.Finish();
            return value;
        }

        /**
         * @brief Write this complete nested value within the enclosing aggregate bound.
         * @param wire Borrowed caller-owned finite writer.
         * @param value Borrowed stable complete value.
         * @return No value; invalid fields or aggregate bounds throw before publication.
         */
        internal static void WriteFields(CatalogWire.Writer wire, Ros1Nav_msgsMapMetaData value)
        {
            if (value == null)
            {
                throw new ArgumentException("Null canonical record");
            }
            int start = wire.Position;
            Ros1Time.WriteFields(wire, value.field_map_load_time);
            if (!float.IsFinite(value.field_resolution))
            {
                throw new ArgumentException("Nonfinite resolution");
            }
            wire.F32(value.field_resolution);
            wire.U32(value.field_width);
            wire.U32(value.field_height);
            Ros1Geometry_msgsPose.WriteFields(wire, value.field_origin);
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
        internal static Ros1Nav_msgsMapMetaData ReadFields(CatalogWire.Reader wire)
        {
            int start = wire.Position;
            Ros1Nav_msgsMapMetaData value = new Ros1Nav_msgsMapMetaData();
            value.field_map_load_time = Ros1Time.ReadFields(wire);
            value.field_resolution = wire.F32();
            if (!float.IsFinite(value.field_resolution))
            {
                throw new ArgumentException("Nonfinite resolution");
            }
            value.field_width = wire.U32();
            value.field_height = wire.U32();
            value.field_origin = Ros1Geometry_msgsPose.ReadFields(wire);
            if (wire.Position - start > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Nested aggregate exceeds registered wire bound");
            }
            return value;
        }
    }
}
