using System;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Pal.Ros2.ros2_humble_devel
{
    /**
     * @brief Complete ROS 2 pal_device_msgs/msg/LedEffectViaTopicParams value and canonical codec.
     * @details All fields, constants, defaults and nested capacities come from the
     * canonical bounded catalog. Instances own their strings/arrays/nested values.
     * Encode/decode perform no ROS operation and confer no authority. Native type
     * identity must still be independently qualified by the deployment registry.
     */
    public sealed class Ros2Pal_device_msgsMsgLedEffectViaTopicParams
    {
        /** @brief Exact registered max wire bytes. */
        public const int MAX_WIRE_BYTES = 132;
        /** @brief Exact registered min wire bytes. */
        public const int MIN_WIRE_BYTES = 4;
        /** @brief Original codec identity; empty native identity is unqualified. */
        public const string CODEC_IDENTITY =
            "UWVMROS1_91ab4bac3cb9685f695a523fc63eb3d7c5c7db9c057f75d2b4685b192b39e485";
        /** @brief Original source type; empty native identity is unqualified. */
        public const string SOURCE_TYPE = "pal_device_msgs/msg/LedEffectViaTopicParams";
        /** @brief Original native identity; empty native identity is unqualified. */
        public const string NATIVE_IDENTITY = "";
        /** @brief Complete native field topic_name; scalar, text bound 128. */
        public string field_topic_name = "";

        /**
         * @brief Construct the complete original default value with owned storage.
         * @details Nested fixed arrays initialize every logical element; sequences
         * start empty. No native capability, pointer, or shared buffer is retained.
         */
        public Ros2Pal_device_msgsMsgLedEffectViaTopicParams()
        {
        }

        /**
         * @brief Encode every field of one complete bounded value.
         * @param value Borrowed stable value; all referenced arrays remain caller-owned.
         * @return Newly owned complete canonical bytes, excluding unused capacity.
         * @details Invalid fields/bounds/semantics throw ArgumentException.
         */
        public static byte[] Encode(Ros2Pal_device_msgsMsgLedEffectViaTopicParams value)
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
        public static Ros2Pal_device_msgsMsgLedEffectViaTopicParams Decode(byte[] bytes)
        {
            if (bytes == null || bytes.Length < MIN_WIRE_BYTES || bytes.Length > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Invalid complete canonical extent");
            }
            CatalogWire.Reader wire = new CatalogWire.Reader(bytes);
            Ros2Pal_device_msgsMsgLedEffectViaTopicParams value = ReadFields(wire);
            wire.Finish();
            return value;
        }

        /**
         * @brief Write this complete nested value within the enclosing aggregate bound.
         * @param wire Borrowed caller-owned finite writer.
         * @param value Borrowed stable complete value.
         * @return No value; invalid fields or aggregate bounds throw before publication.
         */
        internal static void WriteFields(CatalogWire.Writer wire, Ros2Pal_device_msgsMsgLedEffectViaTopicParams value)
        {
            if (value == null)
            {
                throw new ArgumentException("Null canonical record");
            }
            int start = wire.Position;
            wire.String(value.field_topic_name, 128);
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
        internal static Ros2Pal_device_msgsMsgLedEffectViaTopicParams ReadFields(CatalogWire.Reader wire)
        {
            int start = wire.Position;
            Ros2Pal_device_msgsMsgLedEffectViaTopicParams value = new Ros2Pal_device_msgsMsgLedEffectViaTopicParams();
            value.field_topic_name = wire.String(128);
            if (wire.Position - start > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Nested aggregate exceeds registered wire bound");
            }
            return value;
        }
    }
}
