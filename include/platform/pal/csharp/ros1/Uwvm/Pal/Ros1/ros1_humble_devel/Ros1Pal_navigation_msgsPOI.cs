using System;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Pal.Ros1.ros1_humble_devel
{
    /**
     * @brief Complete ROS 1 pal_navigation_msgs/POI value and canonical codec.
     * @details All fields, constants, defaults and nested capacities come from the
     * canonical bounded catalog. Instances own their strings/arrays/nested values.
     * Encode/decode perform no ROS operation and confer no authority. Native type
     * identity must still be independently qualified by the deployment registry.
     */
    public sealed class Ros1Pal_navigation_msgsPOI
    {
        /** @brief Exact registered max wire bytes. */
        public const int MAX_WIRE_BYTES = 1664;
        /** @brief Exact registered min wire bytes. */
        public const int MIN_WIRE_BYTES = 32;
        /** @brief Original codec identity; empty native identity is unqualified. */
        public const string CODEC_IDENTITY =
            "UWVMROS1_3750170dda28a05b81a5c1255fb3e88adc6105bef955601cccb82a6639e796a4";
        /** @brief Original source type; empty native identity is unqualified. */
        public const string SOURCE_TYPE = "pal_navigation_msgs/POI";
        /** @brief Original native identity; empty native identity is unqualified. */
        public const string NATIVE_IDENTITY = "";
        /** @brief Complete native field points; scalar, text bound 0. */
        public Ros1Sensor_msgsPointCloud field_points = new Ros1Sensor_msgsPointCloud();
        /** @brief Complete native field ids; sequence capacity 4, text bound 0. */
        public Ros1Std_msgsString[] field_ids = new Ros1Std_msgsString[0];
        /** @brief Complete native field map_id; scalar, text bound 0. */
        public Ros1Std_msgsString field_map_id = new Ros1Std_msgsString();

        /**
         * @brief Construct the complete original default value with owned storage.
         * @details Nested fixed arrays initialize every logical element; sequences
         * start empty. No native capability, pointer, or shared buffer is retained.
         */
        public Ros1Pal_navigation_msgsPOI()
        {
        }

        /**
         * @brief Encode every field of one complete bounded value.
         * @param value Borrowed stable value; all referenced arrays remain caller-owned.
         * @return Newly owned complete canonical bytes, excluding unused capacity.
         * @details Invalid fields/bounds/semantics throw ArgumentException.
         */
        public static byte[] Encode(Ros1Pal_navigation_msgsPOI value)
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
        public static Ros1Pal_navigation_msgsPOI Decode(byte[] bytes)
        {
            if (bytes == null || bytes.Length < MIN_WIRE_BYTES || bytes.Length > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Invalid complete canonical extent");
            }
            CatalogWire.Reader wire = new CatalogWire.Reader(bytes);
            Ros1Pal_navigation_msgsPOI value = ReadFields(wire);
            wire.Finish();
            return value;
        }

        /**
         * @brief Write this complete nested value within the enclosing aggregate bound.
         * @param wire Borrowed caller-owned finite writer.
         * @param value Borrowed stable complete value.
         * @return No value; invalid fields or aggregate bounds throw before publication.
         */
        internal static void WriteFields(CatalogWire.Writer wire, Ros1Pal_navigation_msgsPOI value)
        {
            if (value == null)
            {
                throw new ArgumentException("Null canonical record");
            }
            int start = wire.Position;
            Ros1Sensor_msgsPointCloud.WriteFields(wire, value.field_points);
            if (value.field_ids == null || value.field_ids.Length > 4)
            {
                throw new ArgumentException("Invalid ids extent");
            }
            wire.U32((uint)value.field_ids.Length);
            for (int index = 0; index < value.field_ids.Length; ++index)
            {
                Ros1Std_msgsString.WriteFields(wire, value.field_ids[index]);
            }
            Ros1Std_msgsString.WriteFields(wire, value.field_map_id);
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
        internal static Ros1Pal_navigation_msgsPOI ReadFields(CatalogWire.Reader wire)
        {
            int start = wire.Position;
            Ros1Pal_navigation_msgsPOI value = new Ros1Pal_navigation_msgsPOI();
            value.field_points = Ros1Sensor_msgsPointCloud.ReadFields(wire);
            value.field_ids = new Ros1Std_msgsString[wire.Count(4)];
            for (int index = 0; index < value.field_ids.Length; ++index)
            {
                value.field_ids[index] = Ros1Std_msgsString.ReadFields(wire);
            }
            value.field_map_id = Ros1Std_msgsString.ReadFields(wire);
            if (wire.Position - start > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Nested aggregate exceeds registered wire bound");
            }
            return value;
        }
    }
}
