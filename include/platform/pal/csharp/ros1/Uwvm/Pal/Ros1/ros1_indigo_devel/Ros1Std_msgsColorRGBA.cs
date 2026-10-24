using System;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Pal.Ros1.ros1_indigo_devel
{
    /**
     * @brief Complete ROS 1 std_msgs/ColorRGBA value and canonical codec.
     * @details All fields, constants, defaults and nested capacities come from the
     * canonical bounded catalog. Instances own their strings/arrays/nested values.
     * Encode/decode perform no ROS operation and confer no authority. Native type
     * identity must still be independently qualified by the deployment registry.
     */
    public sealed class Ros1Std_msgsColorRGBA
    {
        /** @brief Exact registered max wire bytes. */
        public const int MAX_WIRE_BYTES = 16;
        /** @brief Exact registered min wire bytes. */
        public const int MIN_WIRE_BYTES = 16;
        /** @brief Original codec identity; empty native identity is unqualified. */
        public const string CODEC_IDENTITY =
            "UWVMROS1_2c956a9dd28dc999fc04f9704e68021ae940136f6c54d151975792a9344da90d";
        /** @brief Original source type; empty native identity is unqualified. */
        public const string SOURCE_TYPE = "std_msgs/ColorRGBA";
        /** @brief Original native identity; empty native identity is unqualified. */
        public const string NATIVE_IDENTITY = "";
        /** @brief Complete native field r; scalar, text bound 0. */
        public float field_r = BitConverter.Int32BitsToSingle(unchecked((int)0x00000000u));
        /** @brief Complete native field g; scalar, text bound 0. */
        public float field_g = BitConverter.Int32BitsToSingle(unchecked((int)0x00000000u));
        /** @brief Complete native field b; scalar, text bound 0. */
        public float field_b = BitConverter.Int32BitsToSingle(unchecked((int)0x00000000u));
        /** @brief Complete native field a; scalar, text bound 0. */
        public float field_a = BitConverter.Int32BitsToSingle(unchecked((int)0x00000000u));

        /**
         * @brief Construct the complete original default value with owned storage.
         * @details Nested fixed arrays initialize every logical element; sequences
         * start empty. No native capability, pointer, or shared buffer is retained.
         */
        public Ros1Std_msgsColorRGBA()
        {
        }

        /**
         * @brief Encode every field of one complete bounded value.
         * @param value Borrowed stable value; all referenced arrays remain caller-owned.
         * @return Newly owned complete canonical bytes, excluding unused capacity.
         * @details Invalid fields/bounds/semantics throw ArgumentException.
         */
        public static byte[] Encode(Ros1Std_msgsColorRGBA value)
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
        public static Ros1Std_msgsColorRGBA Decode(byte[] bytes)
        {
            if (bytes == null || bytes.Length < MIN_WIRE_BYTES || bytes.Length > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Invalid complete canonical extent");
            }
            CatalogWire.Reader wire = new CatalogWire.Reader(bytes);
            Ros1Std_msgsColorRGBA value = ReadFields(wire);
            wire.Finish();
            return value;
        }

        /**
         * @brief Write this complete nested value within the enclosing aggregate bound.
         * @param wire Borrowed caller-owned finite writer.
         * @param value Borrowed stable complete value.
         * @return No value; invalid fields or aggregate bounds throw before publication.
         */
        internal static void WriteFields(CatalogWire.Writer wire, Ros1Std_msgsColorRGBA value)
        {
            if (value == null)
            {
                throw new ArgumentException("Null canonical record");
            }
            int start = wire.Position;
            if (!float.IsFinite(value.field_r))
            {
                throw new ArgumentException("Nonfinite r");
            }
            wire.F32(value.field_r);
            if (!float.IsFinite(value.field_g))
            {
                throw new ArgumentException("Nonfinite g");
            }
            wire.F32(value.field_g);
            if (!float.IsFinite(value.field_b))
            {
                throw new ArgumentException("Nonfinite b");
            }
            wire.F32(value.field_b);
            if (!float.IsFinite(value.field_a))
            {
                throw new ArgumentException("Nonfinite a");
            }
            wire.F32(value.field_a);
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
        internal static Ros1Std_msgsColorRGBA ReadFields(CatalogWire.Reader wire)
        {
            int start = wire.Position;
            Ros1Std_msgsColorRGBA value = new Ros1Std_msgsColorRGBA();
            value.field_r = wire.F32();
            if (!float.IsFinite(value.field_r))
            {
                throw new ArgumentException("Nonfinite r");
            }
            value.field_g = wire.F32();
            if (!float.IsFinite(value.field_g))
            {
                throw new ArgumentException("Nonfinite g");
            }
            value.field_b = wire.F32();
            if (!float.IsFinite(value.field_b))
            {
                throw new ArgumentException("Nonfinite b");
            }
            value.field_a = wire.F32();
            if (!float.IsFinite(value.field_a))
            {
                throw new ArgumentException("Nonfinite a");
            }
            if (wire.Position - start > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Nested aggregate exceeds registered wire bound");
            }
            return value;
        }
    }
}
