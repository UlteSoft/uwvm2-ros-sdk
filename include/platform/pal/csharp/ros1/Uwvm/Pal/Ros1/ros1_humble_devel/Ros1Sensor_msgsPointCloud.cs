using System;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Pal.Ros1.ros1_humble_devel
{
    /**
     * @brief Complete ROS 1 sensor_msgs/PointCloud value and canonical codec.
     * @details All fields, constants, defaults and nested capacities come from the
     * canonical bounded catalog. Instances own their strings/arrays/nested values.
     * Encode/decode perform no ROS operation and confer no authority. Native type
     * identity must still be independently qualified by the deployment registry.
     */
    public sealed class Ros1Sensor_msgsPointCloud
    {
        /** @brief Exact registered max wire bytes. */
        public const int MAX_WIRE_BYTES = 1000;
        /** @brief Exact registered min wire bytes. */
        public const int MIN_WIRE_BYTES = 24;
        /** @brief Original codec identity; empty native identity is unqualified. */
        public const string CODEC_IDENTITY =
            "UWVMROS1_714f5812773665cb9e8cfb03b86e3926eaae188eed2d96cd775c20a9c42a3fce";
        /** @brief Original source type; empty native identity is unqualified. */
        public const string SOURCE_TYPE = "sensor_msgs/PointCloud";
        /** @brief Original native identity; empty native identity is unqualified. */
        public const string NATIVE_IDENTITY = "";
        /** @brief Complete native field header; scalar, text bound 0. */
        public Ros1Std_msgsHeader field_header = new Ros1Std_msgsHeader();
        /** @brief Complete native field points; sequence capacity 4, text bound 0. */
        public Ros1Geometry_msgsPoint32[] field_points = new Ros1Geometry_msgsPoint32[0];
        /** @brief Complete native field channels; sequence capacity 4, text bound 0. */
        public Ros1Sensor_msgsChannelFloat32[] field_channels = new Ros1Sensor_msgsChannelFloat32[0];

        /**
         * @brief Construct the complete original default value with owned storage.
         * @details Nested fixed arrays initialize every logical element; sequences
         * start empty. No native capability, pointer, or shared buffer is retained.
         */
        public Ros1Sensor_msgsPointCloud()
        {
        }

        /**
         * @brief Encode every field of one complete bounded value.
         * @param value Borrowed stable value; all referenced arrays remain caller-owned.
         * @return Newly owned complete canonical bytes, excluding unused capacity.
         * @details Invalid fields/bounds/semantics throw ArgumentException.
         */
        public static byte[] Encode(Ros1Sensor_msgsPointCloud value)
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
        public static Ros1Sensor_msgsPointCloud Decode(byte[] bytes)
        {
            if (bytes == null || bytes.Length < MIN_WIRE_BYTES || bytes.Length > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Invalid complete canonical extent");
            }
            CatalogWire.Reader wire = new CatalogWire.Reader(bytes);
            Ros1Sensor_msgsPointCloud value = ReadFields(wire);
            wire.Finish();
            return value;
        }

        /**
         * @brief Write this complete nested value within the enclosing aggregate bound.
         * @param wire Borrowed caller-owned finite writer.
         * @param value Borrowed stable complete value.
         * @return No value; invalid fields or aggregate bounds throw before publication.
         */
        internal static void WriteFields(CatalogWire.Writer wire, Ros1Sensor_msgsPointCloud value)
        {
            if (value == null)
            {
                throw new ArgumentException("Null canonical record");
            }
            int start = wire.Position;
            Ros1Std_msgsHeader.WriteFields(wire, value.field_header);
            if (value.field_points == null || value.field_points.Length > 4)
            {
                throw new ArgumentException("Invalid points extent");
            }
            wire.U32((uint)value.field_points.Length);
            for (int index = 0; index < value.field_points.Length; ++index)
            {
                Ros1Geometry_msgsPoint32.WriteFields(wire, value.field_points[index]);
            }
            if (value.field_channels == null || value.field_channels.Length > 4)
            {
                throw new ArgumentException("Invalid channels extent");
            }
            wire.U32((uint)value.field_channels.Length);
            for (int index = 0; index < value.field_channels.Length; ++index)
            {
                Ros1Sensor_msgsChannelFloat32.WriteFields(wire, value.field_channels[index]);
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
        internal static Ros1Sensor_msgsPointCloud ReadFields(CatalogWire.Reader wire)
        {
            int start = wire.Position;
            Ros1Sensor_msgsPointCloud value = new Ros1Sensor_msgsPointCloud();
            value.field_header = Ros1Std_msgsHeader.ReadFields(wire);
            value.field_points = new Ros1Geometry_msgsPoint32[wire.Count(4)];
            for (int index = 0; index < value.field_points.Length; ++index)
            {
                value.field_points[index] = Ros1Geometry_msgsPoint32.ReadFields(wire);
            }
            value.field_channels = new Ros1Sensor_msgsChannelFloat32[wire.Count(4)];
            for (int index = 0; index < value.field_channels.Length; ++index)
            {
                value.field_channels[index] = Ros1Sensor_msgsChannelFloat32.ReadFields(wire);
            }
            if (wire.Position - start > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Nested aggregate exceeds registered wire bound");
            }
            return value;
        }
    }
}
