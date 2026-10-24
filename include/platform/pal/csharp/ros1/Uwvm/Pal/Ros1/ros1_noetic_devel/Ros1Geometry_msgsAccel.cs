using System;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Pal.Ros1.ros1_noetic_devel
{
    /**
     * @brief Complete ROS 1 geometry_msgs/Accel value and canonical codec.
     * @details All fields, constants, defaults and nested capacities come from the
     * canonical bounded catalog. Instances own their strings/arrays/nested values.
     * Encode/decode perform no ROS operation and confer no authority. Native type
     * identity must still be independently qualified by the deployment registry.
     */
    public sealed class Ros1Geometry_msgsAccel
    {
        /** @brief Exact registered max wire bytes. */
        public const int MAX_WIRE_BYTES = 48;
        /** @brief Exact registered min wire bytes. */
        public const int MIN_WIRE_BYTES = 48;
        /** @brief Original codec identity; empty native identity is unqualified. */
        public const string CODEC_IDENTITY =
            "UWVMROS1_3345762fc354a5698d41098276702c7d3cee87fe9a531b0229111b9b3bf700ed";
        /** @brief Original source type; empty native identity is unqualified. */
        public const string SOURCE_TYPE = "geometry_msgs/Accel";
        /** @brief Original native identity; empty native identity is unqualified. */
        public const string NATIVE_IDENTITY = "";
        /** @brief Complete native field linear; scalar, text bound 0. */
        public Ros1Geometry_msgsVector3 field_linear = new Ros1Geometry_msgsVector3();
        /** @brief Complete native field angular; scalar, text bound 0. */
        public Ros1Geometry_msgsVector3 field_angular = new Ros1Geometry_msgsVector3();

        /**
         * @brief Construct the complete original default value with owned storage.
         * @details Nested fixed arrays initialize every logical element; sequences
         * start empty. No native capability, pointer, or shared buffer is retained.
         */
        public Ros1Geometry_msgsAccel()
        {
        }

        /**
         * @brief Encode every field of one complete bounded value.
         * @param value Borrowed stable value; all referenced arrays remain caller-owned.
         * @return Newly owned complete canonical bytes, excluding unused capacity.
         * @details Invalid fields/bounds/semantics throw ArgumentException.
         */
        public static byte[] Encode(Ros1Geometry_msgsAccel value)
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
        public static Ros1Geometry_msgsAccel Decode(byte[] bytes)
        {
            if (bytes == null || bytes.Length < MIN_WIRE_BYTES || bytes.Length > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Invalid complete canonical extent");
            }
            CatalogWire.Reader wire = new CatalogWire.Reader(bytes);
            Ros1Geometry_msgsAccel value = ReadFields(wire);
            wire.Finish();
            return value;
        }

        /**
         * @brief Write this complete nested value within the enclosing aggregate bound.
         * @param wire Borrowed caller-owned finite writer.
         * @param value Borrowed stable complete value.
         * @return No value; invalid fields or aggregate bounds throw before publication.
         */
        internal static void WriteFields(CatalogWire.Writer wire, Ros1Geometry_msgsAccel value)
        {
            if (value == null)
            {
                throw new ArgumentException("Null canonical record");
            }
            int start = wire.Position;
            Ros1Geometry_msgsVector3.WriteFields(wire, value.field_linear);
            Ros1Geometry_msgsVector3.WriteFields(wire, value.field_angular);
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
        internal static Ros1Geometry_msgsAccel ReadFields(CatalogWire.Reader wire)
        {
            int start = wire.Position;
            Ros1Geometry_msgsAccel value = new Ros1Geometry_msgsAccel();
            value.field_linear = Ros1Geometry_msgsVector3.ReadFields(wire);
            value.field_angular = Ros1Geometry_msgsVector3.ReadFields(wire);
            if (wire.Position - start > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Nested aggregate exceeds registered wire bound");
            }
            return value;
        }
    }
}
