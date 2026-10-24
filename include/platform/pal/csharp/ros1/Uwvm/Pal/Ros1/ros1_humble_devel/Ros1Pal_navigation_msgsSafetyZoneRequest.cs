using System;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Pal.Ros1.ros1_humble_devel
{
    /**
     * @brief Complete ROS 1 pal_navigation_msgs/SafetyZoneRequest value and canonical codec.
     * @details All fields, constants, defaults and nested capacities come from the
     * canonical bounded catalog. Instances own their strings/arrays/nested values.
     * Encode/decode perform no ROS operation and confer no authority. Native type
     * identity must still be independently qualified by the deployment registry.
     */
    public sealed class Ros1Pal_navigation_msgsSafetyZoneRequest
    {
        /** @brief Exact registered max wire bytes. */
        public const int MAX_WIRE_BYTES = 28;
        /** @brief Exact registered min wire bytes. */
        public const int MIN_WIRE_BYTES = 28;
        /** @brief Original codec identity; empty native identity is unqualified. */
        public const string CODEC_IDENTITY =
            "UWVMROS1_c7bfca2804a0307c6666f800ecaacccc5daf70a315407b097799b2ea2ce8d53f";
        /** @brief Original source type; empty native identity is unqualified. */
        public const string SOURCE_TYPE = "pal_navigation_msgs/SafetyZoneRequest";
        /** @brief Original native identity; empty native identity is unqualified. */
        public const string NATIVE_IDENTITY = "";
        /** @brief Original source constant NO_SENSORS; consumes no instance wire bytes. */
        public const sbyte CONST_NO_SENSORS = (sbyte)0;
        /** @brief Original source constant ALL_SENSORS; consumes no instance wire bytes. */
        public const sbyte CONST_ALL_SENSORS = (sbyte)127;
        /** @brief Original source constant FRONT_SONARS; consumes no instance wire bytes. */
        public const sbyte CONST_FRONT_SONARS = (sbyte)1;
        /** @brief Original source constant LEFT_SONARS; consumes no instance wire bytes. */
        public const sbyte CONST_LEFT_SONARS = (sbyte)2;
        /** @brief Original source constant RIGHT_SONARS; consumes no instance wire bytes. */
        public const sbyte CONST_RIGHT_SONARS = (sbyte)4;
        /** @brief Original source constant BACK_SONARS; consumes no instance wire bytes. */
        public const sbyte CONST_BACK_SONARS = (sbyte)8;
        /** @brief Original source constant TORSO_SONARS; consumes no instance wire bytes. */
        public const sbyte CONST_TORSO_SONARS = (sbyte)16;
        /** @brief Original source constant ONLY_SONARS; consumes no instance wire bytes. */
        public const sbyte CONST_ONLY_SONARS = (sbyte)31;
        /** @brief Original source constant BASE_LASER; consumes no instance wire bytes. */
        public const sbyte CONST_BASE_LASER = (sbyte)32;
        /** @brief Original source constant TORSO_LASER; consumes no instance wire bytes. */
        public const sbyte CONST_TORSO_LASER = (sbyte)64;
        /** @brief Original source constant ONLY_LASERS; consumes no instance wire bytes. */
        public const sbyte CONST_ONLY_LASERS = (sbyte)96;
        /** @brief Complete native field distance; scalar, text bound 0. */
        public double field_distance = BitConverter.Int64BitsToDouble(unchecked((long)0x0000000000000000UL));
        /** @brief Complete native field leftAngleRad; scalar, text bound 0. */
        public double field_leftAngleRad = BitConverter.Int64BitsToDouble(unchecked((long)0x0000000000000000UL));
        /** @brief Complete native field rightAngleRad; scalar, text bound 0. */
        public double field_rightAngleRad = BitConverter.Int64BitsToDouble(unchecked((long)0x0000000000000000UL));
        /** @brief Complete native field sensorMask; scalar, text bound 0. */
        public uint field_sensorMask = 0u;

        /**
         * @brief Construct the complete original default value with owned storage.
         * @details Nested fixed arrays initialize every logical element; sequences
         * start empty. No native capability, pointer, or shared buffer is retained.
         */
        public Ros1Pal_navigation_msgsSafetyZoneRequest()
        {
        }

        /**
         * @brief Encode every field of one complete bounded value.
         * @param value Borrowed stable value; all referenced arrays remain caller-owned.
         * @return Newly owned complete canonical bytes, excluding unused capacity.
         * @details Invalid fields/bounds/semantics throw ArgumentException.
         */
        public static byte[] Encode(Ros1Pal_navigation_msgsSafetyZoneRequest value)
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
        public static Ros1Pal_navigation_msgsSafetyZoneRequest Decode(byte[] bytes)
        {
            if (bytes == null || bytes.Length < MIN_WIRE_BYTES || bytes.Length > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Invalid complete canonical extent");
            }
            CatalogWire.Reader wire = new CatalogWire.Reader(bytes);
            Ros1Pal_navigation_msgsSafetyZoneRequest value = ReadFields(wire);
            wire.Finish();
            return value;
        }

        /**
         * @brief Write this complete nested value within the enclosing aggregate bound.
         * @param wire Borrowed caller-owned finite writer.
         * @param value Borrowed stable complete value.
         * @return No value; invalid fields or aggregate bounds throw before publication.
         */
        internal static void WriteFields(CatalogWire.Writer wire, Ros1Pal_navigation_msgsSafetyZoneRequest value)
        {
            if (value == null)
            {
                throw new ArgumentException("Null canonical record");
            }
            int start = wire.Position;
            if (!double.IsFinite(value.field_distance))
            {
                throw new ArgumentException("Nonfinite distance");
            }
            wire.F64(value.field_distance);
            if (!double.IsFinite(value.field_leftAngleRad))
            {
                throw new ArgumentException("Nonfinite leftAngleRad");
            }
            wire.F64(value.field_leftAngleRad);
            if (!double.IsFinite(value.field_rightAngleRad))
            {
                throw new ArgumentException("Nonfinite rightAngleRad");
            }
            wire.F64(value.field_rightAngleRad);
            wire.U32(value.field_sensorMask);
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
        internal static Ros1Pal_navigation_msgsSafetyZoneRequest ReadFields(CatalogWire.Reader wire)
        {
            int start = wire.Position;
            Ros1Pal_navigation_msgsSafetyZoneRequest value = new Ros1Pal_navigation_msgsSafetyZoneRequest();
            value.field_distance = wire.F64();
            if (!double.IsFinite(value.field_distance))
            {
                throw new ArgumentException("Nonfinite distance");
            }
            value.field_leftAngleRad = wire.F64();
            if (!double.IsFinite(value.field_leftAngleRad))
            {
                throw new ArgumentException("Nonfinite leftAngleRad");
            }
            value.field_rightAngleRad = wire.F64();
            if (!double.IsFinite(value.field_rightAngleRad))
            {
                throw new ArgumentException("Nonfinite rightAngleRad");
            }
            value.field_sensorMask = wire.U32();
            if (wire.Position - start > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Nested aggregate exceeds registered wire bound");
            }
            return value;
        }
    }
}
