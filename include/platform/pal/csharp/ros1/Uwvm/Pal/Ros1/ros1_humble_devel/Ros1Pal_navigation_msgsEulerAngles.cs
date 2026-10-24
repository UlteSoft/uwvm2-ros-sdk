using System;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Pal.Ros1.ros1_humble_devel
{
    /**
     * @brief Complete ROS 1 pal_navigation_msgs/EulerAngles value and canonical codec.
     * @details All fields, constants, defaults and nested capacities come from the
     * canonical bounded catalog. Instances own their strings/arrays/nested values.
     * Encode/decode perform no ROS operation and confer no authority. Native type
     * identity must still be independently qualified by the deployment registry.
     */
    public sealed class Ros1Pal_navigation_msgsEulerAngles
    {
        /** @brief Exact registered max wire bytes. */
        public const int MAX_WIRE_BYTES = 157;
        /** @brief Exact registered min wire bytes. */
        public const int MIN_WIRE_BYTES = 29;
        /** @brief Original codec identity; empty native identity is unqualified. */
        public const string CODEC_IDENTITY =
            "UWVMROS1_cc1bd6ac99235a0d92e3f458be257dcd81c88763822f7e9c5b3f034a76691d0f";
        /** @brief Original source type; empty native identity is unqualified. */
        public const string SOURCE_TYPE = "pal_navigation_msgs/EulerAngles";
        /** @brief Original native identity; empty native identity is unqualified. */
        public const string NATIVE_IDENTITY = "";
        /** @brief Complete native field sequence; scalar, text bound 128. */
        public string field_sequence = "";
        /** @brief Complete native field angles_in_degrees; scalar, text bound 0. */
        public bool field_angles_in_degrees = false;
        /** @brief Complete native field ai; scalar, text bound 0. */
        public double field_ai = BitConverter.Int64BitsToDouble(unchecked((long)0x0000000000000000UL));
        /** @brief Complete native field aj; scalar, text bound 0. */
        public double field_aj = BitConverter.Int64BitsToDouble(unchecked((long)0x0000000000000000UL));
        /** @brief Complete native field ak; scalar, text bound 0. */
        public double field_ak = BitConverter.Int64BitsToDouble(unchecked((long)0x0000000000000000UL));

        /**
         * @brief Construct the complete original default value with owned storage.
         * @details Nested fixed arrays initialize every logical element; sequences
         * start empty. No native capability, pointer, or shared buffer is retained.
         */
        public Ros1Pal_navigation_msgsEulerAngles()
        {
        }

        /**
         * @brief Encode every field of one complete bounded value.
         * @param value Borrowed stable value; all referenced arrays remain caller-owned.
         * @return Newly owned complete canonical bytes, excluding unused capacity.
         * @details Invalid fields/bounds/semantics throw ArgumentException.
         */
        public static byte[] Encode(Ros1Pal_navigation_msgsEulerAngles value)
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
        public static Ros1Pal_navigation_msgsEulerAngles Decode(byte[] bytes)
        {
            if (bytes == null || bytes.Length < MIN_WIRE_BYTES || bytes.Length > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Invalid complete canonical extent");
            }
            CatalogWire.Reader wire = new CatalogWire.Reader(bytes);
            Ros1Pal_navigation_msgsEulerAngles value = ReadFields(wire);
            wire.Finish();
            return value;
        }

        /**
         * @brief Write this complete nested value within the enclosing aggregate bound.
         * @param wire Borrowed caller-owned finite writer.
         * @param value Borrowed stable complete value.
         * @return No value; invalid fields or aggregate bounds throw before publication.
         */
        internal static void WriteFields(CatalogWire.Writer wire, Ros1Pal_navigation_msgsEulerAngles value)
        {
            if (value == null)
            {
                throw new ArgumentException("Null canonical record");
            }
            int start = wire.Position;
            wire.String(value.field_sequence, 128);
            wire.Bool(value.field_angles_in_degrees);
            if (!double.IsFinite(value.field_ai))
            {
                throw new ArgumentException("Nonfinite ai");
            }
            wire.F64(value.field_ai);
            if (!double.IsFinite(value.field_aj))
            {
                throw new ArgumentException("Nonfinite aj");
            }
            wire.F64(value.field_aj);
            if (!double.IsFinite(value.field_ak))
            {
                throw new ArgumentException("Nonfinite ak");
            }
            wire.F64(value.field_ak);
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
        internal static Ros1Pal_navigation_msgsEulerAngles ReadFields(CatalogWire.Reader wire)
        {
            int start = wire.Position;
            Ros1Pal_navigation_msgsEulerAngles value = new Ros1Pal_navigation_msgsEulerAngles();
            value.field_sequence = wire.String(128);
            value.field_angles_in_degrees = wire.Bool();
            value.field_ai = wire.F64();
            if (!double.IsFinite(value.field_ai))
            {
                throw new ArgumentException("Nonfinite ai");
            }
            value.field_aj = wire.F64();
            if (!double.IsFinite(value.field_aj))
            {
                throw new ArgumentException("Nonfinite aj");
            }
            value.field_ak = wire.F64();
            if (!double.IsFinite(value.field_ak))
            {
                throw new ArgumentException("Nonfinite ak");
            }
            if (wire.Position - start > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Nested aggregate exceeds registered wire bound");
            }
            return value;
        }
    }
}
