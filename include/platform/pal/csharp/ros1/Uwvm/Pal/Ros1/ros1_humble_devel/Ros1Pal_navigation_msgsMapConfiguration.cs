using System;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Pal.Ros1.ros1_humble_devel
{
    /**
     * @brief Complete ROS 1 pal_navigation_msgs/MapConfiguration value and canonical codec.
     * @details All fields, constants, defaults and nested capacities come from the
     * canonical bounded catalog. Instances own their strings/arrays/nested values.
     * Encode/decode perform no ROS operation and confer no authority. Native type
     * identity must still be independently qualified by the deployment registry.
     */
    public sealed class Ros1Pal_navigation_msgsMapConfiguration
    {
        /** @brief Exact registered max wire bytes. */
        public const int MAX_WIRE_BYTES = 15953;
        /** @brief Exact registered min wire bytes. */
        public const int MIN_WIRE_BYTES = 317;
        /** @brief Original codec identity; empty native identity is unqualified. */
        public const string CODEC_IDENTITY =
            "UWVMROS1_807b6436f6e7ee13b63cfadc9de5fd38ca3fedd2d0e902c3c7558c1d7b606255";
        /** @brief Original source type; empty native identity is unqualified. */
        public const string SOURCE_TYPE = "pal_navigation_msgs/MapConfiguration";
        /** @brief Original native identity; empty native identity is unqualified. */
        public const string NATIVE_IDENTITY = "";
        /** @brief Complete native field numberOfSubMaps; scalar, text bound 0. */
        public int field_numberOfSubMaps = 0;
        /** @brief Complete native field highways; sequence capacity 4, text bound 0. */
        public Ros1Pal_navigation_msgsHighways[] field_highways = new Ros1Pal_navigation_msgsHighways[0];
        /** @brief Complete native field pois; scalar, text bound 0. */
        public Ros1Pal_navigation_msgsPOI field_pois = new Ros1Pal_navigation_msgsPOI();
        /** @brief Complete native field vo; scalar, text bound 0. */
        public Ros1Pal_navigation_msgsPOI field_vo = new Ros1Pal_navigation_msgsPOI();
        /** @brief Complete native field zoi; scalar, text bound 0. */
        public Ros1Pal_navigation_msgsPOI field_zoi = new Ros1Pal_navigation_msgsPOI();
        /** @brief Complete native field ramps; scalar, text bound 0. */
        public Ros1Pal_navigation_msgsPOI field_ramps = new Ros1Pal_navigation_msgsPOI();
        /** @brief Complete native field poigroups; sequence capacity 4, text bound 0. */
        public Ros1Pal_navigation_msgsPOIGroup[] field_poigroups = new Ros1Pal_navigation_msgsPOIGroup[0];
        /** @brief Complete native field visualLocDb; scalar, text bound 0. */
        public Ros1Pal_navigation_msgsVisualLocDB field_visualLocDb = new Ros1Pal_navigation_msgsVisualLocDB();
        /** @brief Complete native field navigation_map; scalar, text bound 0. */
        public Ros1Nav_msgsOccupancyGrid field_navigation_map = new Ros1Nav_msgsOccupancyGrid();
        /** @brief Complete native field user_map; scalar, text bound 0. */
        public Ros1Sensor_msgsImage field_user_map = new Ros1Sensor_msgsImage();
        /** @brief Complete native field transform; scalar, text bound 0. */
        public Ros1Pal_navigation_msgsNiceMapTransformation field_transform =
            new Ros1Pal_navigation_msgsNiceMapTransformation();

        /**
         * @brief Construct the complete original default value with owned storage.
         * @details Nested fixed arrays initialize every logical element; sequences
         * start empty. No native capability, pointer, or shared buffer is retained.
         */
        public Ros1Pal_navigation_msgsMapConfiguration()
        {
        }

        /**
         * @brief Encode every field of one complete bounded value.
         * @param value Borrowed stable value; all referenced arrays remain caller-owned.
         * @return Newly owned complete canonical bytes, excluding unused capacity.
         * @details Invalid fields/bounds/semantics throw ArgumentException.
         */
        public static byte[] Encode(Ros1Pal_navigation_msgsMapConfiguration value)
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
        public static Ros1Pal_navigation_msgsMapConfiguration Decode(byte[] bytes)
        {
            if (bytes == null || bytes.Length < MIN_WIRE_BYTES || bytes.Length > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Invalid complete canonical extent");
            }
            CatalogWire.Reader wire = new CatalogWire.Reader(bytes);
            Ros1Pal_navigation_msgsMapConfiguration value = ReadFields(wire);
            wire.Finish();
            return value;
        }

        /**
         * @brief Write this complete nested value within the enclosing aggregate bound.
         * @param wire Borrowed caller-owned finite writer.
         * @param value Borrowed stable complete value.
         * @return No value; invalid fields or aggregate bounds throw before publication.
         */
        internal static void WriteFields(CatalogWire.Writer wire, Ros1Pal_navigation_msgsMapConfiguration value)
        {
            if (value == null)
            {
                throw new ArgumentException("Null canonical record");
            }
            int start = wire.Position;
            wire.I32(value.field_numberOfSubMaps);
            if (value.field_highways == null || value.field_highways.Length > 4)
            {
                throw new ArgumentException("Invalid highways extent");
            }
            wire.U32((uint)value.field_highways.Length);
            for (int index = 0; index < value.field_highways.Length; ++index)
            {
                Ros1Pal_navigation_msgsHighways.WriteFields(wire, value.field_highways[index]);
            }
            Ros1Pal_navigation_msgsPOI.WriteFields(wire, value.field_pois);
            Ros1Pal_navigation_msgsPOI.WriteFields(wire, value.field_vo);
            Ros1Pal_navigation_msgsPOI.WriteFields(wire, value.field_zoi);
            Ros1Pal_navigation_msgsPOI.WriteFields(wire, value.field_ramps);
            if (value.field_poigroups == null || value.field_poigroups.Length > 4)
            {
                throw new ArgumentException("Invalid poigroups extent");
            }
            wire.U32((uint)value.field_poigroups.Length);
            for (int index = 0; index < value.field_poigroups.Length; ++index)
            {
                Ros1Pal_navigation_msgsPOIGroup.WriteFields(wire, value.field_poigroups[index]);
            }
            Ros1Pal_navigation_msgsVisualLocDB.WriteFields(wire, value.field_visualLocDb);
            Ros1Nav_msgsOccupancyGrid.WriteFields(wire, value.field_navigation_map);
            Ros1Sensor_msgsImage.WriteFields(wire, value.field_user_map);
            Ros1Pal_navigation_msgsNiceMapTransformation.WriteFields(wire, value.field_transform);
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
        internal static Ros1Pal_navigation_msgsMapConfiguration ReadFields(CatalogWire.Reader wire)
        {
            int start = wire.Position;
            Ros1Pal_navigation_msgsMapConfiguration value = new Ros1Pal_navigation_msgsMapConfiguration();
            value.field_numberOfSubMaps = wire.I32();
            value.field_highways = new Ros1Pal_navigation_msgsHighways[wire.Count(4)];
            for (int index = 0; index < value.field_highways.Length; ++index)
            {
                value.field_highways[index] = Ros1Pal_navigation_msgsHighways.ReadFields(wire);
            }
            value.field_pois = Ros1Pal_navigation_msgsPOI.ReadFields(wire);
            value.field_vo = Ros1Pal_navigation_msgsPOI.ReadFields(wire);
            value.field_zoi = Ros1Pal_navigation_msgsPOI.ReadFields(wire);
            value.field_ramps = Ros1Pal_navigation_msgsPOI.ReadFields(wire);
            value.field_poigroups = new Ros1Pal_navigation_msgsPOIGroup[wire.Count(4)];
            for (int index = 0; index < value.field_poigroups.Length; ++index)
            {
                value.field_poigroups[index] = Ros1Pal_navigation_msgsPOIGroup.ReadFields(wire);
            }
            value.field_visualLocDb = Ros1Pal_navigation_msgsVisualLocDB.ReadFields(wire);
            value.field_navigation_map = Ros1Nav_msgsOccupancyGrid.ReadFields(wire);
            value.field_user_map = Ros1Sensor_msgsImage.ReadFields(wire);
            value.field_transform = Ros1Pal_navigation_msgsNiceMapTransformation.ReadFields(wire);
            if (wire.Position - start > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Nested aggregate exceeds registered wire bound");
            }
            return value;
        }
    }
}
