using System;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Pal.Ros1.ros1_indigo_devel
{
    /**
     * @brief Complete ROS 1 pal_device_msgs/BatteryState value and canonical codec.
     * @details All fields, constants, defaults and nested capacities come from the
     * canonical bounded catalog. Instances own their strings/arrays/nested values.
     * Encode/decode perform no ROS operation and confer no authority. Native type
     * identity must still be independently qualified by the deployment registry.
     */
    public sealed class Ros1Pal_device_msgsBatteryState
    {
        /** @brief Exact registered max wire bytes. */
        public const int MAX_WIRE_BYTES = 5;
        /** @brief Exact registered min wire bytes. */
        public const int MIN_WIRE_BYTES = 5;
        /** @brief Original codec identity; empty native identity is unqualified. */
        public const string CODEC_IDENTITY =
            "UWVMROS1_0c5a63bef9a7aa5a22424277d8d442de7b2330cb3c61e80548dae5a58d70527b";
        /** @brief Original source type; empty native identity is unqualified. */
        public const string SOURCE_TYPE = "pal_device_msgs/BatteryState";
        /** @brief Original native identity; empty native identity is unqualified. */
        public const string NATIVE_IDENTITY = "";
        /** @brief Original source constant FULL; consumes no instance wire bytes. */
        public const sbyte CONST_FULL = (sbyte)5;
        /** @brief Original source constant HIGH; consumes no instance wire bytes. */
        public const sbyte CONST_HIGH = (sbyte)4;
        /** @brief Original source constant MEDIUM; consumes no instance wire bytes. */
        public const sbyte CONST_MEDIUM = (sbyte)3;
        /** @brief Original source constant LOW; consumes no instance wire bytes. */
        public const sbyte CONST_LOW = (sbyte)2;
        /** @brief Original source constant CRITICAL_LOW; consumes no instance wire bytes. */
        public const sbyte CONST_CRITICAL_LOW = (sbyte)1;
        /** @brief Complete native field chargeState; scalar, text bound 0. */
        public sbyte field_chargeState = (sbyte)0;
        /** @brief Complete native field batteryPercentage; scalar, text bound 0. */
        public float field_batteryPercentage = BitConverter.Int32BitsToSingle(unchecked((int)0x00000000u));

        /**
         * @brief Construct the complete original default value with owned storage.
         * @details Nested fixed arrays initialize every logical element; sequences
         * start empty. No native capability, pointer, or shared buffer is retained.
         */
        public Ros1Pal_device_msgsBatteryState()
        {
        }

        /**
         * @brief Encode every field of one complete bounded value.
         * @param value Borrowed stable value; all referenced arrays remain caller-owned.
         * @return Newly owned complete canonical bytes, excluding unused capacity.
         * @details Invalid fields/bounds/semantics throw ArgumentException.
         */
        public static byte[] Encode(Ros1Pal_device_msgsBatteryState value)
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
        public static Ros1Pal_device_msgsBatteryState Decode(byte[] bytes)
        {
            if (bytes == null || bytes.Length < MIN_WIRE_BYTES || bytes.Length > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Invalid complete canonical extent");
            }
            CatalogWire.Reader wire = new CatalogWire.Reader(bytes);
            Ros1Pal_device_msgsBatteryState value = ReadFields(wire);
            wire.Finish();
            return value;
        }

        /**
         * @brief Write this complete nested value within the enclosing aggregate bound.
         * @param wire Borrowed caller-owned finite writer.
         * @param value Borrowed stable complete value.
         * @return No value; invalid fields or aggregate bounds throw before publication.
         */
        internal static void WriteFields(CatalogWire.Writer wire, Ros1Pal_device_msgsBatteryState value)
        {
            if (value == null)
            {
                throw new ArgumentException("Null canonical record");
            }
            int start = wire.Position;
            wire.I8(value.field_chargeState);
            if (!float.IsFinite(value.field_batteryPercentage))
            {
                throw new ArgumentException("Nonfinite batteryPercentage");
            }
            wire.F32(value.field_batteryPercentage);
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
        internal static Ros1Pal_device_msgsBatteryState ReadFields(CatalogWire.Reader wire)
        {
            int start = wire.Position;
            Ros1Pal_device_msgsBatteryState value = new Ros1Pal_device_msgsBatteryState();
            value.field_chargeState = wire.I8();
            value.field_batteryPercentage = wire.F32();
            if (!float.IsFinite(value.field_batteryPercentage))
            {
                throw new ArgumentException("Nonfinite batteryPercentage");
            }
            if (wire.Position - start > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Nested aggregate exceeds registered wire bound");
            }
            return value;
        }
    }
}
