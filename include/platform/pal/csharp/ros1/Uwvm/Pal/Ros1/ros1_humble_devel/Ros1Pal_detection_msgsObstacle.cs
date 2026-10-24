using System;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Pal.Ros1.ros1_humble_devel
{
    /**
     * @brief Complete ROS 1 pal_detection_msgs/Obstacle value and canonical codec.
     * @details All fields, constants, defaults and nested capacities come from the
     * canonical bounded catalog. Instances own their strings/arrays/nested values.
     * Encode/decode perform no ROS operation and confer no authority. Native type
     * identity must still be independently qualified by the deployment registry.
     */
    public sealed class Ros1Pal_detection_msgsObstacle
    {
        /** @brief Exact registered max wire bytes. */
        public const int MAX_WIRE_BYTES = 72;
        /** @brief Exact registered min wire bytes. */
        public const int MIN_WIRE_BYTES = 72;
        /** @brief Original codec identity; empty native identity is unqualified. */
        public const string CODEC_IDENTITY =
            "UWVMROS1_ebc85fb238f48ed8d9d595afd92f5f28c4ead850154e350733e09ec1d407c661";
        /** @brief Original source type; empty native identity is unqualified. */
        public const string SOURCE_TYPE = "pal_detection_msgs/Obstacle";
        /** @brief Original native identity; empty native identity is unqualified. */
        public const string NATIVE_IDENTITY = "";
        /** @brief Complete native field id; scalar, text bound 0. */
        public long field_id = unchecked((long)0x0000000000000000UL);
        /** @brief Complete native field position; scalar, text bound 0. */
        public Ros1Geometry_msgsPoint field_position = new Ros1Geometry_msgsPoint();
        /** @brief Complete native field position_covariance; array capacity 4, text bound 0. */
        public double[] field_position_covariance = new double[4];
        /** @brief Complete native field width; scalar, text bound 0. */
        public float field_width = BitConverter.Int32BitsToSingle(unchecked((int)0x00000000u));
        /** @brief Complete native field height; scalar, text bound 0. */
        public float field_height = BitConverter.Int32BitsToSingle(unchecked((int)0x00000000u));

        /**
         * @brief Construct the complete original default value with owned storage.
         * @details Nested fixed arrays initialize every logical element; sequences
         * start empty. No native capability, pointer, or shared buffer is retained.
         */
        public Ros1Pal_detection_msgsObstacle()
        {
        }

        /**
         * @brief Encode every field of one complete bounded value.
         * @param value Borrowed stable value; all referenced arrays remain caller-owned.
         * @return Newly owned complete canonical bytes, excluding unused capacity.
         * @details Invalid fields/bounds/semantics throw ArgumentException.
         */
        public static byte[] Encode(Ros1Pal_detection_msgsObstacle value)
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
        public static Ros1Pal_detection_msgsObstacle Decode(byte[] bytes)
        {
            if (bytes == null || bytes.Length < MIN_WIRE_BYTES || bytes.Length > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Invalid complete canonical extent");
            }
            CatalogWire.Reader wire = new CatalogWire.Reader(bytes);
            Ros1Pal_detection_msgsObstacle value = ReadFields(wire);
            wire.Finish();
            return value;
        }

        /**
         * @brief Write this complete nested value within the enclosing aggregate bound.
         * @param wire Borrowed caller-owned finite writer.
         * @param value Borrowed stable complete value.
         * @return No value; invalid fields or aggregate bounds throw before publication.
         */
        internal static void WriteFields(CatalogWire.Writer wire, Ros1Pal_detection_msgsObstacle value)
        {
            if (value == null)
            {
                throw new ArgumentException("Null canonical record");
            }
            int start = wire.Position;
            wire.I64(value.field_id);
            Ros1Geometry_msgsPoint.WriteFields(wire, value.field_position);
            if (value.field_position_covariance == null || value.field_position_covariance.Length != 4)
            {
                throw new ArgumentException("Invalid position_covariance extent");
            }
            for (int index = 0; index < value.field_position_covariance.Length; ++index)
            {
                if (!double.IsFinite(value.field_position_covariance[index]))
                {
                    throw new ArgumentException("Nonfinite position_covariance");
                }
                wire.F64(value.field_position_covariance[index]);
            }
            if (!float.IsFinite(value.field_width))
            {
                throw new ArgumentException("Nonfinite width");
            }
            wire.F32(value.field_width);
            if (!float.IsFinite(value.field_height))
            {
                throw new ArgumentException("Nonfinite height");
            }
            wire.F32(value.field_height);
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
        internal static Ros1Pal_detection_msgsObstacle ReadFields(CatalogWire.Reader wire)
        {
            int start = wire.Position;
            Ros1Pal_detection_msgsObstacle value = new Ros1Pal_detection_msgsObstacle();
            value.field_id = wire.I64();
            value.field_position = Ros1Geometry_msgsPoint.ReadFields(wire);
            value.field_position_covariance = new double[4];
            for (int index = 0; index < value.field_position_covariance.Length; ++index)
            {
                value.field_position_covariance[index] = wire.F64();
                if (!double.IsFinite(value.field_position_covariance[index]))
                {
                    throw new ArgumentException("Nonfinite position_covariance");
                }
            }
            value.field_width = wire.F32();
            if (!float.IsFinite(value.field_width))
            {
                throw new ArgumentException("Nonfinite width");
            }
            value.field_height = wire.F32();
            if (!float.IsFinite(value.field_height))
            {
                throw new ArgumentException("Nonfinite height");
            }
            if (wire.Position - start > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Nested aggregate exceeds registered wire bound");
            }
            return value;
        }
    }
}
