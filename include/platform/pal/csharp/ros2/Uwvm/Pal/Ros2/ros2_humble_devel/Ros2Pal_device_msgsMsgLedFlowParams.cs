using System;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Pal.Ros2.ros2_humble_devel
{
    /**
     * @brief Complete ROS 2 pal_device_msgs/msg/LedFlowParams value and canonical codec.
     * @details All fields, constants, defaults and nested capacities come from the
     * canonical bounded catalog. Instances own their strings/arrays/nested values.
     * Encode/decode perform no ROS operation and confer no authority. Native type
     * identity must still be independently qualified by the deployment registry.
     */
    public sealed class Ros2Pal_device_msgsMsgLedFlowParams
    {
        /** @brief Exact registered max wire bytes. */
        public const int MAX_WIRE_BYTES = 40;
        /** @brief Exact registered min wire bytes. */
        public const int MIN_WIRE_BYTES = 40;
        /** @brief Original codec identity; empty native identity is unqualified. */
        public const string CODEC_IDENTITY =
            "UWVMROS1_6dbf5187ca7c1e7a8c5235832799bf22e3fed9ac7b76f7ce5ee340a5d2b79561";
        /** @brief Original source type; empty native identity is unqualified. */
        public const string SOURCE_TYPE = "pal_device_msgs/msg/LedFlowParams";
        /** @brief Original native identity; empty native identity is unqualified. */
        public const string NATIVE_IDENTITY = "";
        /** @brief Complete native field first_color; scalar, text bound 0. */
        public Ros2Std_msgsMsgColorRGBA field_first_color = new Ros2Std_msgsMsgColorRGBA();
        /** @brief Complete native field second_color; scalar, text bound 0. */
        public Ros2Std_msgsMsgColorRGBA field_second_color = new Ros2Std_msgsMsgColorRGBA();
        /** @brief Complete native field percentage; scalar, text bound 0. */
        public float field_percentage = BitConverter.Int32BitsToSingle(unchecked((int)0x00000000u));
        /** @brief Complete native field velocity; scalar, text bound 0. */
        public float field_velocity = BitConverter.Int32BitsToSingle(unchecked((int)0x00000000u));

        /**
         * @brief Construct the complete original default value with owned storage.
         * @details Nested fixed arrays initialize every logical element; sequences
         * start empty. No native capability, pointer, or shared buffer is retained.
         */
        public Ros2Pal_device_msgsMsgLedFlowParams()
        {
        }

        /**
         * @brief Encode every field of one complete bounded value.
         * @param value Borrowed stable value; all referenced arrays remain caller-owned.
         * @return Newly owned complete canonical bytes, excluding unused capacity.
         * @details Invalid fields/bounds/semantics throw ArgumentException.
         */
        public static byte[] Encode(Ros2Pal_device_msgsMsgLedFlowParams value)
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
        public static Ros2Pal_device_msgsMsgLedFlowParams Decode(byte[] bytes)
        {
            if (bytes == null || bytes.Length < MIN_WIRE_BYTES || bytes.Length > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Invalid complete canonical extent");
            }
            CatalogWire.Reader wire = new CatalogWire.Reader(bytes);
            Ros2Pal_device_msgsMsgLedFlowParams value = ReadFields(wire);
            wire.Finish();
            return value;
        }

        /**
         * @brief Write this complete nested value within the enclosing aggregate bound.
         * @param wire Borrowed caller-owned finite writer.
         * @param value Borrowed stable complete value.
         * @return No value; invalid fields or aggregate bounds throw before publication.
         */
        internal static void WriteFields(CatalogWire.Writer wire, Ros2Pal_device_msgsMsgLedFlowParams value)
        {
            if (value == null)
            {
                throw new ArgumentException("Null canonical record");
            }
            int start = wire.Position;
            Ros2Std_msgsMsgColorRGBA.WriteFields(wire, value.field_first_color);
            Ros2Std_msgsMsgColorRGBA.WriteFields(wire, value.field_second_color);
            if (!float.IsFinite(value.field_percentage))
            {
                throw new ArgumentException("Nonfinite percentage");
            }
            wire.F32(value.field_percentage);
            if (!float.IsFinite(value.field_velocity))
            {
                throw new ArgumentException("Nonfinite velocity");
            }
            wire.F32(value.field_velocity);
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
        internal static Ros2Pal_device_msgsMsgLedFlowParams ReadFields(CatalogWire.Reader wire)
        {
            int start = wire.Position;
            Ros2Pal_device_msgsMsgLedFlowParams value = new Ros2Pal_device_msgsMsgLedFlowParams();
            value.field_first_color = Ros2Std_msgsMsgColorRGBA.ReadFields(wire);
            value.field_second_color = Ros2Std_msgsMsgColorRGBA.ReadFields(wire);
            value.field_percentage = wire.F32();
            if (!float.IsFinite(value.field_percentage))
            {
                throw new ArgumentException("Nonfinite percentage");
            }
            value.field_velocity = wire.F32();
            if (!float.IsFinite(value.field_velocity))
            {
                throw new ArgumentException("Nonfinite velocity");
            }
            if (wire.Position - start > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Nested aggregate exceeds registered wire bound");
            }
            return value;
        }
    }
}
