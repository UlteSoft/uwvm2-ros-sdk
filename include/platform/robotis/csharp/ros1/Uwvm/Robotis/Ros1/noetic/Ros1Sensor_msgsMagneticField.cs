using System;
using Uwvm.Ros;

namespace Uwvm.Robotis.Ros1.noetic
{
    /**
     * @brief Complete ROS 1 sensor_msgs/MagneticField value and canonical codec.
     * @details All fields, constants, defaults and nested capacities come from the
     * canonical bounded catalog. Instances own their strings/arrays/nested values.
     * Encode/decode perform no ROS operation and confer no authority. Native type
     * identity must still be independently qualified by the deployment registry.
     */
    public sealed class Ros1Sensor_msgsMagneticField
    {
        /** @brief Exact registered max wire bytes. */
        public const int MAX_WIRE_BYTES = 240;
        /** @brief Exact registered min wire bytes. */
        public const int MIN_WIRE_BYTES = 112;
        /** @brief Original codec identity; empty native identity is unqualified. */
        public const string CODEC_IDENTITY = "UWVMROS1_1817b7ce8903797288ccf293373f81890c75af59d03d948339943a531ab754fe";
        /** @brief Original source type; empty native identity is unqualified. */
        public const string SOURCE_TYPE = "sensor_msgs/MagneticField";
        /** @brief Original native identity; empty native identity is unqualified. */
        public const string NATIVE_IDENTITY = "";
        /** @brief Complete native field header; scalar, text bound 0. */
        public Ros1Std_msgsHeader field_header = new Ros1Std_msgsHeader();
        /** @brief Complete native field magnetic_field; scalar, text bound 0. */
        public Ros1Geometry_msgsVector3 field_magnetic_field = new Ros1Geometry_msgsVector3();
        /** @brief Complete native field magnetic_field_covariance; array capacity 9, text bound 0. */
        public double[] field_magnetic_field_covariance = new double[9];

        /**
         * @brief Construct the complete original default value with owned storage.
         * @details Nested fixed arrays initialize every logical element; sequences
         * start empty. No native capability, pointer, or shared buffer is retained.
         */
        public Ros1Sensor_msgsMagneticField()
        {
        }

        /**
         * @brief Encode every field of one complete bounded value.
         * @param value Borrowed stable value; all referenced arrays remain caller-owned.
         * @return Newly owned complete canonical bytes, excluding unused capacity.
         * @details Invalid fields/bounds/semantics throw ArgumentException.
         */
        public static byte[] Encode(Ros1Sensor_msgsMagneticField value)
        {
            Wire.Writer wire = new Wire.Writer(MAX_WIRE_BYTES);
            WriteFields(wire, value);
            return wire.Finish();
        }

        /**
         * @brief Decode transactionally with exact extent and trailing-byte checks.
         * @param bytes Borrowed immutable complete canonical body.
         * @return Newly owned full value; failed decoding commits no caller storage.
         * @details Invalid wire, text, bounds or semantics throw ArgumentException.
         */
        public static Ros1Sensor_msgsMagneticField Decode(byte[] bytes)
        {
            if(bytes == null || bytes.Length < MIN_WIRE_BYTES || bytes.Length > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Invalid complete canonical extent");
            }
            Wire.Reader wire = new Wire.Reader(bytes);
            Ros1Sensor_msgsMagneticField value = ReadFields(wire);
            wire.Finish();
            return value;
        }

        /**
         * @brief Write this complete nested value within the enclosing aggregate bound.
         * @param wire Borrowed caller-owned finite writer.
         * @param value Borrowed stable complete value.
         * @return No value; invalid fields or aggregate bounds throw before publication.
         */
        internal static void WriteFields(Wire.Writer wire, Ros1Sensor_msgsMagneticField value)
        {
            if(value == null)
            {
                throw new ArgumentException("Null canonical record");
            }
            int start = wire.Position;
            Ros1Std_msgsHeader.WriteFields(wire, value.field_header);
            Ros1Geometry_msgsVector3.WriteFields(wire, value.field_magnetic_field);
            if(value.field_magnetic_field_covariance == null || value.field_magnetic_field_covariance.Length != 9)
            {
                throw new ArgumentException("Invalid magnetic_field_covariance extent");
            }
            for(int index = 0; index < value.field_magnetic_field_covariance.Length; ++index)
            {
                if(!double.IsFinite(value.field_magnetic_field_covariance[index]))
                {
                    throw new ArgumentException("Nonfinite magnetic_field_covariance");
                }
                wire.F64(value.field_magnetic_field_covariance[index]);
            }
            if(wire.Position - start > MAX_WIRE_BYTES)
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
        internal static Ros1Sensor_msgsMagneticField ReadFields(Wire.Reader wire)
        {
            int start = wire.Position;
            Ros1Sensor_msgsMagneticField value = new Ros1Sensor_msgsMagneticField();
            value.field_header = Ros1Std_msgsHeader.ReadFields(wire);
            value.field_magnetic_field = Ros1Geometry_msgsVector3.ReadFields(wire);
            value.field_magnetic_field_covariance = new double[9];
            for(int index = 0; index < value.field_magnetic_field_covariance.Length; ++index)
            {
                value.field_magnetic_field_covariance[index] = wire.F64();
                if(!double.IsFinite(value.field_magnetic_field_covariance[index]))
                {
                    throw new ArgumentException("Nonfinite magnetic_field_covariance");
                }
            }
            if(wire.Position - start > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Nested aggregate exceeds registered wire bound");
            }
            return value;
        }
    }
}
