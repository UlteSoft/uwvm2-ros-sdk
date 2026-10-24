using System;
using Uwvm.Ros;

namespace Uwvm.Robotis.Ros2.main
{
    /**
     * @brief Complete ROS 2 sensor_msgs/msg/JointState value and canonical codec.
     * @details All fields, constants, defaults and nested capacities come from the
     * canonical bounded catalog. Instances own their strings/arrays/nested values.
     * Encode/decode perform no ROS operation and confer no authority. Native type
     * identity must still be independently qualified by the deployment registry.
     */
    public sealed class Ros2Sensor_msgsMsgJointState
    {
        /** @brief Exact registered max wire bytes. */
        public const int MAX_WIRE_BYTES = 468;
        /** @brief Exact registered min wire bytes. */
        public const int MIN_WIRE_BYTES = 28;
        /** @brief Original codec identity; empty native identity is unqualified. */
        public const string CODEC_IDENTITY = "UWVMROS1_5c4d1ef0128c748e20f6b30c9c3bb5ef6e3c529a0b05b81764ac4774ce765bcf";
        /** @brief Original source type; empty native identity is unqualified. */
        public const string SOURCE_TYPE = "sensor_msgs/msg/JointState";
        /** @brief Original native identity; empty native identity is unqualified. */
        public const string NATIVE_IDENTITY = "";
        /** @brief Complete native field header; scalar, text bound 0. */
        public Ros2Std_msgsMsgHeader field_header = new Ros2Std_msgsMsgHeader();
        /** @brief Complete native field name; sequence capacity 2, text bound 128. */
        public string[] field_name = new string[0];
        /** @brief Complete native field position; sequence capacity 2, text bound 0. */
        public double[] field_position = new double[0];
        /** @brief Complete native field velocity; sequence capacity 2, text bound 0. */
        public double[] field_velocity = new double[0];
        /** @brief Complete native field effort; sequence capacity 2, text bound 0. */
        public double[] field_effort = new double[0];

        /**
         * @brief Construct the complete original default value with owned storage.
         * @details Nested fixed arrays initialize every logical element; sequences
         * start empty. No native capability, pointer, or shared buffer is retained.
         */
        public Ros2Sensor_msgsMsgJointState()
        {
        }

        /**
         * @brief Encode every field of one complete bounded value.
         * @param value Borrowed stable value; all referenced arrays remain caller-owned.
         * @return Newly owned complete canonical bytes, excluding unused capacity.
         * @details Invalid fields/bounds/semantics throw ArgumentException.
         */
        public static byte[] Encode(Ros2Sensor_msgsMsgJointState value)
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
        public static Ros2Sensor_msgsMsgJointState Decode(byte[] bytes)
        {
            if(bytes == null || bytes.Length < MIN_WIRE_BYTES || bytes.Length > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Invalid complete canonical extent");
            }
            Wire.Reader wire = new Wire.Reader(bytes);
            Ros2Sensor_msgsMsgJointState value = ReadFields(wire);
            wire.Finish();
            return value;
        }

        /**
         * @brief Write this complete nested value within the enclosing aggregate bound.
         * @param wire Borrowed caller-owned finite writer.
         * @param value Borrowed stable complete value.
         * @return No value; invalid fields or aggregate bounds throw before publication.
         */
        internal static void WriteFields(Wire.Writer wire, Ros2Sensor_msgsMsgJointState value)
        {
            if(value == null)
            {
                throw new ArgumentException("Null canonical record");
            }
            int start = wire.Position;
            Ros2Std_msgsMsgHeader.WriteFields(wire, value.field_header);
            if(value.field_name == null || value.field_name.Length > 2)
            {
                throw new ArgumentException("Invalid name extent");
            }
            wire.U32((uint)value.field_name.Length);
            for(int index = 0; index < value.field_name.Length; ++index)
            {
                wire.String(value.field_name[index], 128);
            }
            if(value.field_position == null || value.field_position.Length > 2)
            {
                throw new ArgumentException("Invalid position extent");
            }
            wire.U32((uint)value.field_position.Length);
            for(int index = 0; index < value.field_position.Length; ++index)
            {
                if(!double.IsFinite(value.field_position[index]))
                {
                    throw new ArgumentException("Nonfinite position");
                }
                wire.F64(value.field_position[index]);
            }
            if(value.field_velocity == null || value.field_velocity.Length > 2)
            {
                throw new ArgumentException("Invalid velocity extent");
            }
            wire.U32((uint)value.field_velocity.Length);
            for(int index = 0; index < value.field_velocity.Length; ++index)
            {
                if(!double.IsFinite(value.field_velocity[index]))
                {
                    throw new ArgumentException("Nonfinite velocity");
                }
                wire.F64(value.field_velocity[index]);
            }
            if(value.field_effort == null || value.field_effort.Length > 2)
            {
                throw new ArgumentException("Invalid effort extent");
            }
            wire.U32((uint)value.field_effort.Length);
            for(int index = 0; index < value.field_effort.Length; ++index)
            {
                if(!double.IsFinite(value.field_effort[index]))
                {
                    throw new ArgumentException("Nonfinite effort");
                }
                wire.F64(value.field_effort[index]);
            }
            if(value.field_name.Length != 0 && value.field_position.Length != 0 && value.field_name.Length != value.field_position.Length)
            {
                throw new ArgumentException("JointState optional array length mismatch");
            }
            if(value.field_name.Length != 0 && value.field_velocity.Length != 0 && value.field_name.Length != value.field_velocity.Length)
            {
                throw new ArgumentException("JointState optional array length mismatch");
            }
            if(value.field_name.Length != 0 && value.field_effort.Length != 0 && value.field_name.Length != value.field_effort.Length)
            {
                throw new ArgumentException("JointState optional array length mismatch");
            }
            if(value.field_position.Length != 0 && value.field_velocity.Length != 0 && value.field_position.Length != value.field_velocity.Length)
            {
                throw new ArgumentException("JointState optional array length mismatch");
            }
            if(value.field_position.Length != 0 && value.field_effort.Length != 0 && value.field_position.Length != value.field_effort.Length)
            {
                throw new ArgumentException("JointState optional array length mismatch");
            }
            if(value.field_velocity.Length != 0 && value.field_effort.Length != 0 && value.field_velocity.Length != value.field_effort.Length)
            {
                throw new ArgumentException("JointState optional array length mismatch");
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
        internal static Ros2Sensor_msgsMsgJointState ReadFields(Wire.Reader wire)
        {
            int start = wire.Position;
            Ros2Sensor_msgsMsgJointState value = new Ros2Sensor_msgsMsgJointState();
            value.field_header = Ros2Std_msgsMsgHeader.ReadFields(wire);
            value.field_name = new string[wire.Count(2)];
            for(int index = 0; index < value.field_name.Length; ++index)
            {
                value.field_name[index] = wire.String(128);
            }
            value.field_position = new double[wire.Count(2)];
            for(int index = 0; index < value.field_position.Length; ++index)
            {
                value.field_position[index] = wire.F64();
                if(!double.IsFinite(value.field_position[index]))
                {
                    throw new ArgumentException("Nonfinite position");
                }
            }
            value.field_velocity = new double[wire.Count(2)];
            for(int index = 0; index < value.field_velocity.Length; ++index)
            {
                value.field_velocity[index] = wire.F64();
                if(!double.IsFinite(value.field_velocity[index]))
                {
                    throw new ArgumentException("Nonfinite velocity");
                }
            }
            value.field_effort = new double[wire.Count(2)];
            for(int index = 0; index < value.field_effort.Length; ++index)
            {
                value.field_effort[index] = wire.F64();
                if(!double.IsFinite(value.field_effort[index]))
                {
                    throw new ArgumentException("Nonfinite effort");
                }
            }
            if(value.field_name.Length != 0 && value.field_position.Length != 0 && value.field_name.Length != value.field_position.Length)
            {
                throw new ArgumentException("JointState optional array length mismatch");
            }
            if(value.field_name.Length != 0 && value.field_velocity.Length != 0 && value.field_name.Length != value.field_velocity.Length)
            {
                throw new ArgumentException("JointState optional array length mismatch");
            }
            if(value.field_name.Length != 0 && value.field_effort.Length != 0 && value.field_name.Length != value.field_effort.Length)
            {
                throw new ArgumentException("JointState optional array length mismatch");
            }
            if(value.field_position.Length != 0 && value.field_velocity.Length != 0 && value.field_position.Length != value.field_velocity.Length)
            {
                throw new ArgumentException("JointState optional array length mismatch");
            }
            if(value.field_position.Length != 0 && value.field_effort.Length != 0 && value.field_position.Length != value.field_effort.Length)
            {
                throw new ArgumentException("JointState optional array length mismatch");
            }
            if(value.field_velocity.Length != 0 && value.field_effort.Length != 0 && value.field_velocity.Length != value.field_effort.Length)
            {
                throw new ArgumentException("JointState optional array length mismatch");
            }
            if(wire.Position - start > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Nested aggregate exceeds registered wire bound");
            }
            return value;
        }
    }
}
