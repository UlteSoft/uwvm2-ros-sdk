using System;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Pal.Ros1.ros1_humble_devel
{
    /**
     * @brief Complete ROS 1 pal_wifi_localization_msgs/WifiSignalMap value and canonical codec.
     * @details All fields, constants, defaults and nested capacities come from the
     * canonical bounded catalog. Instances own their strings/arrays/nested values.
     * Encode/decode perform no ROS operation and confer no authority. Native type
     * identity must still be independently qualified by the deployment registry.
     */
    public sealed class Ros1Pal_wifi_localization_msgsWifiSignalMap
    {
        /** @brief Exact registered max wire bytes. */
        public const int MAX_WIRE_BYTES = 2548;
        /** @brief Exact registered min wire bytes. */
        public const int MIN_WIRE_BYTES = 100;
        /** @brief Original codec identity; empty native identity is unqualified. */
        public const string CODEC_IDENTITY =
            "UWVMROS1_948926ffa19fd58fabf24b61ae0d2334e09b3815358f79b521dd3b84fe231a3e";
        /** @brief Original source type; empty native identity is unqualified. */
        public const string SOURCE_TYPE = "pal_wifi_localization_msgs/WifiSignalMap";
        /** @brief Original native identity; empty native identity is unqualified. */
        public const string NATIVE_IDENTITY = "";
        /** @brief Complete native field header; scalar, text bound 0. */
        public Ros1Std_msgsHeader field_header = new Ros1Std_msgsHeader();
        /** @brief Complete native field info; scalar, text bound 0. */
        public Ros1Nav_msgsMapMetaData field_info = new Ros1Nav_msgsMapMetaData();
        /** @brief Complete native field sectors; scalar, text bound 0. */
        public uint field_sectors = 0u;
        /** @brief Complete native field data; sequence capacity 4, text bound 0. */
        public Ros1Pal_wifi_localization_msgsWifiSignalList[] field_data =
            new Ros1Pal_wifi_localization_msgsWifiSignalList[0];

        /**
         * @brief Construct the complete original default value with owned storage.
         * @details Nested fixed arrays initialize every logical element; sequences
         * start empty. No native capability, pointer, or shared buffer is retained.
         */
        public Ros1Pal_wifi_localization_msgsWifiSignalMap()
        {
        }

        /**
         * @brief Encode every field of one complete bounded value.
         * @param value Borrowed stable value; all referenced arrays remain caller-owned.
         * @return Newly owned complete canonical bytes, excluding unused capacity.
         * @details Invalid fields/bounds/semantics throw ArgumentException.
         */
        public static byte[] Encode(Ros1Pal_wifi_localization_msgsWifiSignalMap value)
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
        public static Ros1Pal_wifi_localization_msgsWifiSignalMap Decode(byte[] bytes)
        {
            if (bytes == null || bytes.Length < MIN_WIRE_BYTES || bytes.Length > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Invalid complete canonical extent");
            }
            CatalogWire.Reader wire = new CatalogWire.Reader(bytes);
            Ros1Pal_wifi_localization_msgsWifiSignalMap value = ReadFields(wire);
            wire.Finish();
            return value;
        }

        /**
         * @brief Write this complete nested value within the enclosing aggregate bound.
         * @param wire Borrowed caller-owned finite writer.
         * @param value Borrowed stable complete value.
         * @return No value; invalid fields or aggregate bounds throw before publication.
         */
        internal static void WriteFields(CatalogWire.Writer wire, Ros1Pal_wifi_localization_msgsWifiSignalMap value)
        {
            if (value == null)
            {
                throw new ArgumentException("Null canonical record");
            }
            int start = wire.Position;
            Ros1Std_msgsHeader.WriteFields(wire, value.field_header);
            Ros1Nav_msgsMapMetaData.WriteFields(wire, value.field_info);
            wire.U32(value.field_sectors);
            if (value.field_data == null || value.field_data.Length > 4)
            {
                throw new ArgumentException("Invalid data extent");
            }
            wire.U32((uint)value.field_data.Length);
            for (int index = 0; index < value.field_data.Length; ++index)
            {
                Ros1Pal_wifi_localization_msgsWifiSignalList.WriteFields(wire, value.field_data[index]);
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
        internal static Ros1Pal_wifi_localization_msgsWifiSignalMap ReadFields(CatalogWire.Reader wire)
        {
            int start = wire.Position;
            Ros1Pal_wifi_localization_msgsWifiSignalMap value = new Ros1Pal_wifi_localization_msgsWifiSignalMap();
            value.field_header = Ros1Std_msgsHeader.ReadFields(wire);
            value.field_info = Ros1Nav_msgsMapMetaData.ReadFields(wire);
            value.field_sectors = wire.U32();
            value.field_data = new Ros1Pal_wifi_localization_msgsWifiSignalList[wire.Count(4)];
            for (int index = 0; index < value.field_data.Length; ++index)
            {
                value.field_data[index] = Ros1Pal_wifi_localization_msgsWifiSignalList.ReadFields(wire);
            }
            if (wire.Position - start > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Nested aggregate exceeds registered wire bound");
            }
            return value;
        }
    }
}
