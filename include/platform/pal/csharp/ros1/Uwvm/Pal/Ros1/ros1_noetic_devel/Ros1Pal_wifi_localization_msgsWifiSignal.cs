using System;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Pal.Ros1.ros1_noetic_devel
{
    /**
     * @brief Complete ROS 1 pal_wifi_localization_msgs/WifiSignal value and canonical codec.
     * @details All fields, constants, defaults and nested capacities come from the
     * canonical bounded catalog. Instances own their strings/arrays/nested values.
     * Encode/decode perform no ROS operation and confer no authority. Native type
     * identity must still be independently qualified by the deployment registry.
     */
    public sealed class Ros1Pal_wifi_localization_msgsWifiSignal
    {
        /** @brief Exact registered max wire bytes. */
        public const int MAX_WIRE_BYTES = 140;
        /** @brief Exact registered min wire bytes. */
        public const int MIN_WIRE_BYTES = 12;
        /** @brief Original codec identity; empty native identity is unqualified. */
        public const string CODEC_IDENTITY =
            "UWVMROS1_f2397d50da735cc25a1392f79d7dca7e1a4bf2837e5981cb987bdfbb0dcebf71";
        /** @brief Original source type; empty native identity is unqualified. */
        public const string SOURCE_TYPE = "pal_wifi_localization_msgs/WifiSignal";
        /** @brief Original native identity; empty native identity is unqualified. */
        public const string NATIVE_IDENTITY = "";
        /** @brief Complete native field id; scalar, text bound 0. */
        public Ros1Std_msgsString field_id = new Ros1Std_msgsString();
        /** @brief Complete native field mean; scalar, text bound 0. */
        public float field_mean = BitConverter.Int32BitsToSingle(unchecked((int)0x00000000u));
        /** @brief Complete native field std_dev; scalar, text bound 0. */
        public float field_std_dev = BitConverter.Int32BitsToSingle(unchecked((int)0x00000000u));

        /**
         * @brief Construct the complete original default value with owned storage.
         * @details Nested fixed arrays initialize every logical element; sequences
         * start empty. No native capability, pointer, or shared buffer is retained.
         */
        public Ros1Pal_wifi_localization_msgsWifiSignal()
        {
        }

        /**
         * @brief Encode every field of one complete bounded value.
         * @param value Borrowed stable value; all referenced arrays remain caller-owned.
         * @return Newly owned complete canonical bytes, excluding unused capacity.
         * @details Invalid fields/bounds/semantics throw ArgumentException.
         */
        public static byte[] Encode(Ros1Pal_wifi_localization_msgsWifiSignal value)
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
        public static Ros1Pal_wifi_localization_msgsWifiSignal Decode(byte[] bytes)
        {
            if (bytes == null || bytes.Length < MIN_WIRE_BYTES || bytes.Length > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Invalid complete canonical extent");
            }
            CatalogWire.Reader wire = new CatalogWire.Reader(bytes);
            Ros1Pal_wifi_localization_msgsWifiSignal value = ReadFields(wire);
            wire.Finish();
            return value;
        }

        /**
         * @brief Write this complete nested value within the enclosing aggregate bound.
         * @param wire Borrowed caller-owned finite writer.
         * @param value Borrowed stable complete value.
         * @return No value; invalid fields or aggregate bounds throw before publication.
         */
        internal static void WriteFields(CatalogWire.Writer wire, Ros1Pal_wifi_localization_msgsWifiSignal value)
        {
            if (value == null)
            {
                throw new ArgumentException("Null canonical record");
            }
            int start = wire.Position;
            Ros1Std_msgsString.WriteFields(wire, value.field_id);
            if (!float.IsFinite(value.field_mean))
            {
                throw new ArgumentException("Nonfinite mean");
            }
            wire.F32(value.field_mean);
            if (!float.IsFinite(value.field_std_dev))
            {
                throw new ArgumentException("Nonfinite std_dev");
            }
            wire.F32(value.field_std_dev);
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
        internal static Ros1Pal_wifi_localization_msgsWifiSignal ReadFields(CatalogWire.Reader wire)
        {
            int start = wire.Position;
            Ros1Pal_wifi_localization_msgsWifiSignal value = new Ros1Pal_wifi_localization_msgsWifiSignal();
            value.field_id = Ros1Std_msgsString.ReadFields(wire);
            value.field_mean = wire.F32();
            if (!float.IsFinite(value.field_mean))
            {
                throw new ArgumentException("Nonfinite mean");
            }
            value.field_std_dev = wire.F32();
            if (!float.IsFinite(value.field_std_dev))
            {
                throw new ArgumentException("Nonfinite std_dev");
            }
            if (wire.Position - start > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Nested aggregate exceeds registered wire bound");
            }
            return value;
        }
    }
}
