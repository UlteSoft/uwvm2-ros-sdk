using System;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Pal.Ros1.ros1_humble_devel
{
    /**
     * @brief Complete ROS 1 pal_navigation_msgs/NiceMapTransformation value and canonical codec.
     * @details All fields, constants, defaults and nested capacities come from the
     * canonical bounded catalog. Instances own their strings/arrays/nested values.
     * Encode/decode perform no ROS operation and confer no authority. Native type
     * identity must still be independently qualified by the deployment registry.
     */
    public sealed class Ros1Pal_navigation_msgsNiceMapTransformation
    {
        /** @brief Exact registered max wire bytes. */
        public const int MAX_WIRE_BYTES = 32;
        /** @brief Exact registered min wire bytes. */
        public const int MIN_WIRE_BYTES = 32;
        /** @brief Original codec identity; empty native identity is unqualified. */
        public const string CODEC_IDENTITY =
            "UWVMROS1_0c52375fd069a4fc6f5d93c7652ddaba7e9e0002e40e5d0db64aa77e355d0ef0";
        /** @brief Original source type; empty native identity is unqualified. */
        public const string SOURCE_TYPE = "pal_navigation_msgs/NiceMapTransformation";
        /** @brief Original native identity; empty native identity is unqualified. */
        public const string NATIVE_IDENTITY = "";
        /** @brief Complete native field x; scalar, text bound 0. */
        public double field_x = BitConverter.Int64BitsToDouble(unchecked((long)0x0000000000000000UL));
        /** @brief Complete native field y; scalar, text bound 0. */
        public double field_y = BitConverter.Int64BitsToDouble(unchecked((long)0x0000000000000000UL));
        /** @brief Complete native field rotYawRad; scalar, text bound 0. */
        public double field_rotYawRad = BitConverter.Int64BitsToDouble(unchecked((long)0x0000000000000000UL));
        /** @brief Complete native field scale; scalar, text bound 0. */
        public double field_scale = BitConverter.Int64BitsToDouble(unchecked((long)0x0000000000000000UL));

        /**
         * @brief Construct the complete original default value with owned storage.
         * @details Nested fixed arrays initialize every logical element; sequences
         * start empty. No native capability, pointer, or shared buffer is retained.
         */
        public Ros1Pal_navigation_msgsNiceMapTransformation()
        {
        }

        /**
         * @brief Encode every field of one complete bounded value.
         * @param value Borrowed stable value; all referenced arrays remain caller-owned.
         * @return Newly owned complete canonical bytes, excluding unused capacity.
         * @details Invalid fields/bounds/semantics throw ArgumentException.
         */
        public static byte[] Encode(Ros1Pal_navigation_msgsNiceMapTransformation value)
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
        public static Ros1Pal_navigation_msgsNiceMapTransformation Decode(byte[] bytes)
        {
            if (bytes == null || bytes.Length < MIN_WIRE_BYTES || bytes.Length > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Invalid complete canonical extent");
            }
            CatalogWire.Reader wire = new CatalogWire.Reader(bytes);
            Ros1Pal_navigation_msgsNiceMapTransformation value = ReadFields(wire);
            wire.Finish();
            return value;
        }

        /**
         * @brief Write this complete nested value within the enclosing aggregate bound.
         * @param wire Borrowed caller-owned finite writer.
         * @param value Borrowed stable complete value.
         * @return No value; invalid fields or aggregate bounds throw before publication.
         */
        internal static void WriteFields(CatalogWire.Writer wire, Ros1Pal_navigation_msgsNiceMapTransformation value)
        {
            if (value == null)
            {
                throw new ArgumentException("Null canonical record");
            }
            int start = wire.Position;
            if (!double.IsFinite(value.field_x))
            {
                throw new ArgumentException("Nonfinite x");
            }
            wire.F64(value.field_x);
            if (!double.IsFinite(value.field_y))
            {
                throw new ArgumentException("Nonfinite y");
            }
            wire.F64(value.field_y);
            if (!double.IsFinite(value.field_rotYawRad))
            {
                throw new ArgumentException("Nonfinite rotYawRad");
            }
            wire.F64(value.field_rotYawRad);
            if (!double.IsFinite(value.field_scale))
            {
                throw new ArgumentException("Nonfinite scale");
            }
            wire.F64(value.field_scale);
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
        internal static Ros1Pal_navigation_msgsNiceMapTransformation ReadFields(CatalogWire.Reader wire)
        {
            int start = wire.Position;
            Ros1Pal_navigation_msgsNiceMapTransformation value = new Ros1Pal_navigation_msgsNiceMapTransformation();
            value.field_x = wire.F64();
            if (!double.IsFinite(value.field_x))
            {
                throw new ArgumentException("Nonfinite x");
            }
            value.field_y = wire.F64();
            if (!double.IsFinite(value.field_y))
            {
                throw new ArgumentException("Nonfinite y");
            }
            value.field_rotYawRad = wire.F64();
            if (!double.IsFinite(value.field_rotYawRad))
            {
                throw new ArgumentException("Nonfinite rotYawRad");
            }
            value.field_scale = wire.F64();
            if (!double.IsFinite(value.field_scale))
            {
                throw new ArgumentException("Nonfinite scale");
            }
            if (wire.Position - start > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Nested aggregate exceeds registered wire bound");
            }
            return value;
        }
    }
}
