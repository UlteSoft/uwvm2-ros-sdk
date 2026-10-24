using System;
using Uwvm.Ros;

namespace Uwvm.Robotis.Ros1.noetic
{
    /**
     * @brief Complete ROS 1 sensor_msgs/Imu value and canonical codec.
     * @details All fields, constants, defaults and nested capacities come from the
     * canonical bounded catalog. Instances own their strings/arrays/nested values.
     * Encode/decode perform no ROS operation and confer no authority. Native type
     * identity must still be independently qualified by the deployment registry.
     */
    public sealed class Ros1Sensor_msgsImu
    {
        /** @brief Exact registered max wire bytes. */
        public const int MAX_WIRE_BYTES = 440;
        /** @brief Exact registered min wire bytes. */
        public const int MIN_WIRE_BYTES = 312;
        /** @brief Original codec identity; empty native identity is unqualified. */
        public const string CODEC_IDENTITY = "UWVMROS1_de9c3f5bb37e1dc20be73cb44f614a9ff8645c4cfbc305dc18425d8d9f130bc3";
        /** @brief Original source type; empty native identity is unqualified. */
        public const string SOURCE_TYPE = "sensor_msgs/Imu";
        /** @brief Original native identity; empty native identity is unqualified. */
        public const string NATIVE_IDENTITY = "";
        /** @brief Complete native field header; scalar, text bound 0. */
        public Ros1Std_msgsHeader field_header = new Ros1Std_msgsHeader();
        /** @brief Complete native field orientation; scalar, text bound 0. */
        public Ros1Geometry_msgsQuaternion field_orientation = new Ros1Geometry_msgsQuaternion();
        /** @brief Complete native field orientation_covariance; array capacity 9, text bound 0. */
        public double[] field_orientation_covariance = new double[9];
        /** @brief Complete native field angular_velocity; scalar, text bound 0. */
        public Ros1Geometry_msgsVector3 field_angular_velocity = new Ros1Geometry_msgsVector3();
        /** @brief Complete native field angular_velocity_covariance; array capacity 9, text bound 0. */
        public double[] field_angular_velocity_covariance = new double[9];
        /** @brief Complete native field linear_acceleration; scalar, text bound 0. */
        public Ros1Geometry_msgsVector3 field_linear_acceleration = new Ros1Geometry_msgsVector3();
        /** @brief Complete native field linear_acceleration_covariance; array capacity 9, text bound 0. */
        public double[] field_linear_acceleration_covariance = new double[9];

        /**
         * @brief Construct the complete original default value with owned storage.
         * @details Nested fixed arrays initialize every logical element; sequences
         * start empty. No native capability, pointer, or shared buffer is retained.
         */
        public Ros1Sensor_msgsImu()
        {
        }

        /**
         * @brief Encode every field of one complete bounded value.
         * @param value Borrowed stable value; all referenced arrays remain caller-owned.
         * @return Newly owned complete canonical bytes, excluding unused capacity.
         * @details Invalid fields/bounds/semantics throw ArgumentException.
         */
        public static byte[] Encode(Ros1Sensor_msgsImu value)
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
        public static Ros1Sensor_msgsImu Decode(byte[] bytes)
        {
            if(bytes == null || bytes.Length < MIN_WIRE_BYTES || bytes.Length > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Invalid complete canonical extent");
            }
            Wire.Reader wire = new Wire.Reader(bytes);
            Ros1Sensor_msgsImu value = ReadFields(wire);
            wire.Finish();
            return value;
        }

        /**
         * @brief Write this complete nested value within the enclosing aggregate bound.
         * @param wire Borrowed caller-owned finite writer.
         * @param value Borrowed stable complete value.
         * @return No value; invalid fields or aggregate bounds throw before publication.
         */
        internal static void WriteFields(Wire.Writer wire, Ros1Sensor_msgsImu value)
        {
            if(value == null)
            {
                throw new ArgumentException("Null canonical record");
            }
            int start = wire.Position;
            Ros1Std_msgsHeader.WriteFields(wire, value.field_header);
            Ros1Geometry_msgsQuaternion.WriteFields(wire, value.field_orientation);
            if(value.field_orientation_covariance == null || value.field_orientation_covariance.Length != 9)
            {
                throw new ArgumentException("Invalid orientation_covariance extent");
            }
            for(int index = 0; index < value.field_orientation_covariance.Length; ++index)
            {
                if(!double.IsFinite(value.field_orientation_covariance[index]))
                {
                    throw new ArgumentException("Nonfinite orientation_covariance");
                }
                wire.F64(value.field_orientation_covariance[index]);
            }
            Ros1Geometry_msgsVector3.WriteFields(wire, value.field_angular_velocity);
            if(value.field_angular_velocity_covariance == null || value.field_angular_velocity_covariance.Length != 9)
            {
                throw new ArgumentException("Invalid angular_velocity_covariance extent");
            }
            for(int index = 0; index < value.field_angular_velocity_covariance.Length; ++index)
            {
                if(!double.IsFinite(value.field_angular_velocity_covariance[index]))
                {
                    throw new ArgumentException("Nonfinite angular_velocity_covariance");
                }
                wire.F64(value.field_angular_velocity_covariance[index]);
            }
            Ros1Geometry_msgsVector3.WriteFields(wire, value.field_linear_acceleration);
            if(value.field_linear_acceleration_covariance == null || value.field_linear_acceleration_covariance.Length != 9)
            {
                throw new ArgumentException("Invalid linear_acceleration_covariance extent");
            }
            for(int index = 0; index < value.field_linear_acceleration_covariance.Length; ++index)
            {
                if(!double.IsFinite(value.field_linear_acceleration_covariance[index]))
                {
                    throw new ArgumentException("Nonfinite linear_acceleration_covariance");
                }
                wire.F64(value.field_linear_acceleration_covariance[index]);
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
        internal static Ros1Sensor_msgsImu ReadFields(Wire.Reader wire)
        {
            int start = wire.Position;
            Ros1Sensor_msgsImu value = new Ros1Sensor_msgsImu();
            value.field_header = Ros1Std_msgsHeader.ReadFields(wire);
            value.field_orientation = Ros1Geometry_msgsQuaternion.ReadFields(wire);
            value.field_orientation_covariance = new double[9];
            for(int index = 0; index < value.field_orientation_covariance.Length; ++index)
            {
                value.field_orientation_covariance[index] = wire.F64();
                if(!double.IsFinite(value.field_orientation_covariance[index]))
                {
                    throw new ArgumentException("Nonfinite orientation_covariance");
                }
            }
            value.field_angular_velocity = Ros1Geometry_msgsVector3.ReadFields(wire);
            value.field_angular_velocity_covariance = new double[9];
            for(int index = 0; index < value.field_angular_velocity_covariance.Length; ++index)
            {
                value.field_angular_velocity_covariance[index] = wire.F64();
                if(!double.IsFinite(value.field_angular_velocity_covariance[index]))
                {
                    throw new ArgumentException("Nonfinite angular_velocity_covariance");
                }
            }
            value.field_linear_acceleration = Ros1Geometry_msgsVector3.ReadFields(wire);
            value.field_linear_acceleration_covariance = new double[9];
            for(int index = 0; index < value.field_linear_acceleration_covariance.Length; ++index)
            {
                value.field_linear_acceleration_covariance[index] = wire.F64();
                if(!double.IsFinite(value.field_linear_acceleration_covariance[index]))
                {
                    throw new ArgumentException("Nonfinite linear_acceleration_covariance");
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
