using System;
using Uwvm.Ros;

namespace Uwvm.Robotis.Ros2.humble
{
    /**
     * @brief Complete ROS 2 sensor_msgs/msg/Imu value and canonical codec.
     * @details All fields, constants, defaults and nested capacities come from the
     * canonical bounded catalog. Instances own their strings/arrays/nested values.
     * Encode/decode perform no ROS operation and confer no authority. Native type
     * identity must still be independently qualified by the deployment registry.
     */
    public sealed class Ros2Sensor_msgsMsgImu
    {
        /** @brief Exact registered max wire bytes. */
        public const int MAX_WIRE_BYTES = 436;
        /** @brief Exact registered min wire bytes. */
        public const int MIN_WIRE_BYTES = 308;
        /** @brief Original codec identity; empty native identity is unqualified. */
        public const string CODEC_IDENTITY = "UWVMROS1_e38d1c936a2a4a870b2f069af8d1796f69e6ce7b8cae0a792925ed2f6c0cae1b";
        /** @brief Original source type; empty native identity is unqualified. */
        public const string SOURCE_TYPE = "sensor_msgs/msg/Imu";
        /** @brief Original native identity; empty native identity is unqualified. */
        public const string NATIVE_IDENTITY = "";
        /** @brief Complete native field header; scalar, text bound 0. */
        public Ros2Std_msgsMsgHeader field_header = new Ros2Std_msgsMsgHeader();
        /** @brief Complete native field orientation; scalar, text bound 0. */
        public Ros2Geometry_msgsMsgQuaternion field_orientation = new Ros2Geometry_msgsMsgQuaternion();
        /** @brief Complete native field orientation_covariance; array capacity 9, text bound 0. */
        public double[] field_orientation_covariance = new double[9];
        /** @brief Complete native field angular_velocity; scalar, text bound 0. */
        public Ros2Geometry_msgsMsgVector3 field_angular_velocity = new Ros2Geometry_msgsMsgVector3();
        /** @brief Complete native field angular_velocity_covariance; array capacity 9, text bound 0. */
        public double[] field_angular_velocity_covariance = new double[9];
        /** @brief Complete native field linear_acceleration; scalar, text bound 0. */
        public Ros2Geometry_msgsMsgVector3 field_linear_acceleration = new Ros2Geometry_msgsMsgVector3();
        /** @brief Complete native field linear_acceleration_covariance; array capacity 9, text bound 0. */
        public double[] field_linear_acceleration_covariance = new double[9];

        /**
         * @brief Construct the complete original default value with owned storage.
         * @details Nested fixed arrays initialize every logical element; sequences
         * start empty. No native capability, pointer, or shared buffer is retained.
         */
        public Ros2Sensor_msgsMsgImu()
        {
        }

        /**
         * @brief Encode every field of one complete bounded value.
         * @param value Borrowed stable value; all referenced arrays remain caller-owned.
         * @return Newly owned complete canonical bytes, excluding unused capacity.
         * @details Invalid fields/bounds/semantics throw ArgumentException.
         */
        public static byte[] Encode(Ros2Sensor_msgsMsgImu value)
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
        public static Ros2Sensor_msgsMsgImu Decode(byte[] bytes)
        {
            if(bytes == null || bytes.Length < MIN_WIRE_BYTES || bytes.Length > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Invalid complete canonical extent");
            }
            Wire.Reader wire = new Wire.Reader(bytes);
            Ros2Sensor_msgsMsgImu value = ReadFields(wire);
            wire.Finish();
            return value;
        }

        /**
         * @brief Write this complete nested value within the enclosing aggregate bound.
         * @param wire Borrowed caller-owned finite writer.
         * @param value Borrowed stable complete value.
         * @return No value; invalid fields or aggregate bounds throw before publication.
         */
        internal static void WriteFields(Wire.Writer wire, Ros2Sensor_msgsMsgImu value)
        {
            if(value == null)
            {
                throw new ArgumentException("Null canonical record");
            }
            int start = wire.Position;
            Ros2Std_msgsMsgHeader.WriteFields(wire, value.field_header);
            Ros2Geometry_msgsMsgQuaternion.WriteFields(wire, value.field_orientation);
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
            Ros2Geometry_msgsMsgVector3.WriteFields(wire, value.field_angular_velocity);
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
            Ros2Geometry_msgsMsgVector3.WriteFields(wire, value.field_linear_acceleration);
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
        internal static Ros2Sensor_msgsMsgImu ReadFields(Wire.Reader wire)
        {
            int start = wire.Position;
            Ros2Sensor_msgsMsgImu value = new Ros2Sensor_msgsMsgImu();
            value.field_header = Ros2Std_msgsMsgHeader.ReadFields(wire);
            value.field_orientation = Ros2Geometry_msgsMsgQuaternion.ReadFields(wire);
            value.field_orientation_covariance = new double[9];
            for(int index = 0; index < value.field_orientation_covariance.Length; ++index)
            {
                value.field_orientation_covariance[index] = wire.F64();
                if(!double.IsFinite(value.field_orientation_covariance[index]))
                {
                    throw new ArgumentException("Nonfinite orientation_covariance");
                }
            }
            value.field_angular_velocity = Ros2Geometry_msgsMsgVector3.ReadFields(wire);
            value.field_angular_velocity_covariance = new double[9];
            for(int index = 0; index < value.field_angular_velocity_covariance.Length; ++index)
            {
                value.field_angular_velocity_covariance[index] = wire.F64();
                if(!double.IsFinite(value.field_angular_velocity_covariance[index]))
                {
                    throw new ArgumentException("Nonfinite angular_velocity_covariance");
                }
            }
            value.field_linear_acceleration = Ros2Geometry_msgsMsgVector3.ReadFields(wire);
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
