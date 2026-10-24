using System;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Pal.Ros1.ros1_humble_devel
{
    /**
     * @brief Complete ROS 1 pal_navigation_msgs/SafetyZoneResponse value and canonical codec.
     * @details All fields, constants, defaults and nested capacities come from the
     * canonical bounded catalog. Instances own their strings/arrays/nested values.
     * Encode/decode perform no ROS operation and confer no authority. Native type
     * identity must still be independently qualified by the deployment registry.
     */
    public sealed class Ros1Pal_navigation_msgsSafetyZoneResponse
    {
        /** @brief Exact registered max wire bytes. */
        public const int MAX_WIRE_BYTES = 34;
        /** @brief Exact registered min wire bytes. */
        public const int MIN_WIRE_BYTES = 34;
        /** @brief Original codec identity; empty native identity is unqualified. */
        public const string CODEC_IDENTITY =
            "UWVMROS1_237e4207a82e5b1a1caccdf5a010cef018d1bcebff8c00a550d11bb5f729d122";
        /** @brief Original source type; empty native identity is unqualified. */
        public const string SOURCE_TYPE = "pal_navigation_msgs/SafetyZoneResponse";
        /** @brief Original native identity; empty native identity is unqualified. */
        public const string NATIVE_IDENTITY = "";
        /** @brief Complete native field leftSafe; scalar, text bound 0. */
        public bool field_leftSafe = false;
        /** @brief Complete native field leftMinDist; scalar, text bound 0. */
        public double field_leftMinDist = BitConverter.Int64BitsToDouble(unchecked((long)0x0000000000000000UL));
        /** @brief Complete native field leftMinDistAngleRad; scalar, text bound 0. */
        public double field_leftMinDistAngleRad = BitConverter.Int64BitsToDouble(unchecked((long)0x0000000000000000UL));
        /** @brief Complete native field rightSafe; scalar, text bound 0. */
        public bool field_rightSafe = false;
        /** @brief Complete native field rightMinDist; scalar, text bound 0. */
        public double field_rightMinDist = BitConverter.Int64BitsToDouble(unchecked((long)0x0000000000000000UL));
        /** @brief Complete native field rightMinDistAngleRad; scalar, text bound 0. */
        public double field_rightMinDistAngleRad =
            BitConverter.Int64BitsToDouble(unchecked((long)0x0000000000000000UL));

        /**
         * @brief Construct the complete original default value with owned storage.
         * @details Nested fixed arrays initialize every logical element; sequences
         * start empty. No native capability, pointer, or shared buffer is retained.
         */
        public Ros1Pal_navigation_msgsSafetyZoneResponse()
        {
        }

        /**
         * @brief Encode every field of one complete bounded value.
         * @param value Borrowed stable value; all referenced arrays remain caller-owned.
         * @return Newly owned complete canonical bytes, excluding unused capacity.
         * @details Invalid fields/bounds/semantics throw ArgumentException.
         */
        public static byte[] Encode(Ros1Pal_navigation_msgsSafetyZoneResponse value)
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
        public static Ros1Pal_navigation_msgsSafetyZoneResponse Decode(byte[] bytes)
        {
            if (bytes == null || bytes.Length < MIN_WIRE_BYTES || bytes.Length > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Invalid complete canonical extent");
            }
            CatalogWire.Reader wire = new CatalogWire.Reader(bytes);
            Ros1Pal_navigation_msgsSafetyZoneResponse value = ReadFields(wire);
            wire.Finish();
            return value;
        }

        /**
         * @brief Write this complete nested value within the enclosing aggregate bound.
         * @param wire Borrowed caller-owned finite writer.
         * @param value Borrowed stable complete value.
         * @return No value; invalid fields or aggregate bounds throw before publication.
         */
        internal static void WriteFields(CatalogWire.Writer wire, Ros1Pal_navigation_msgsSafetyZoneResponse value)
        {
            if (value == null)
            {
                throw new ArgumentException("Null canonical record");
            }
            int start = wire.Position;
            wire.Bool(value.field_leftSafe);
            if (!double.IsFinite(value.field_leftMinDist))
            {
                throw new ArgumentException("Nonfinite leftMinDist");
            }
            wire.F64(value.field_leftMinDist);
            if (!double.IsFinite(value.field_leftMinDistAngleRad))
            {
                throw new ArgumentException("Nonfinite leftMinDistAngleRad");
            }
            wire.F64(value.field_leftMinDistAngleRad);
            wire.Bool(value.field_rightSafe);
            if (!double.IsFinite(value.field_rightMinDist))
            {
                throw new ArgumentException("Nonfinite rightMinDist");
            }
            wire.F64(value.field_rightMinDist);
            if (!double.IsFinite(value.field_rightMinDistAngleRad))
            {
                throw new ArgumentException("Nonfinite rightMinDistAngleRad");
            }
            wire.F64(value.field_rightMinDistAngleRad);
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
        internal static Ros1Pal_navigation_msgsSafetyZoneResponse ReadFields(CatalogWire.Reader wire)
        {
            int start = wire.Position;
            Ros1Pal_navigation_msgsSafetyZoneResponse value = new Ros1Pal_navigation_msgsSafetyZoneResponse();
            value.field_leftSafe = wire.Bool();
            value.field_leftMinDist = wire.F64();
            if (!double.IsFinite(value.field_leftMinDist))
            {
                throw new ArgumentException("Nonfinite leftMinDist");
            }
            value.field_leftMinDistAngleRad = wire.F64();
            if (!double.IsFinite(value.field_leftMinDistAngleRad))
            {
                throw new ArgumentException("Nonfinite leftMinDistAngleRad");
            }
            value.field_rightSafe = wire.Bool();
            value.field_rightMinDist = wire.F64();
            if (!double.IsFinite(value.field_rightMinDist))
            {
                throw new ArgumentException("Nonfinite rightMinDist");
            }
            value.field_rightMinDistAngleRad = wire.F64();
            if (!double.IsFinite(value.field_rightMinDistAngleRad))
            {
                throw new ArgumentException("Nonfinite rightMinDistAngleRad");
            }
            if (wire.Position - start > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Nested aggregate exceeds registered wire bound");
            }
            return value;
        }
    }
}
