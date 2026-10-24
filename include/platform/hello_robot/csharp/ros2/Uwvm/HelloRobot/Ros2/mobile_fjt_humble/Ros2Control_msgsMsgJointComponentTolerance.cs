using System;
using Uwvm.Ros;

namespace Uwvm.HelloRobot.Ros2.mobile_fjt_humble
{
    /**
     * @brief Complete ROS 2 control_msgs/msg/JointComponentTolerance value and canonical codec.
     * @details All fields, constants, defaults and nested capacities come from the
     * canonical bounded catalog. Instances own their strings/arrays/nested values.
     * Encode/decode perform no ROS operation and confer no authority. Native type
     * identity must still be independently qualified by the deployment registry.
     */
    public sealed class Ros2Control_msgsMsgJointComponentTolerance
    {
        /** @brief Exact registered max wire bytes. */
        public const int MAX_WIRE_BYTES = 158;
        /** @brief Exact registered min wire bytes. */
        public const int MIN_WIRE_BYTES = 30;
        /** @brief Original codec identity; empty native identity is unqualified. */
        public const string CODEC_IDENTITY = "UWVMROS1_8a10f659b38feae6dfcf89818d35a164743b02c0e5cfe2d86aae7eda56e914fb";
        /** @brief Original source type; empty native identity is unqualified. */
        public const string SOURCE_TYPE = "control_msgs/msg/JointComponentTolerance";
        /** @brief Original native identity; empty native identity is unqualified. */
        public const string NATIVE_IDENTITY = "";
        /** @brief Original source constant X_AXIS; consumes no instance wire bytes. */
        public const ushort CONST_X_AXIS = (ushort)1;
        /** @brief Original source constant Y_AXIS; consumes no instance wire bytes. */
        public const ushort CONST_Y_AXIS = (ushort)2;
        /** @brief Original source constant Z_AXIS; consumes no instance wire bytes. */
        public const ushort CONST_Z_AXIS = (ushort)3;
        /** @brief Original source constant TRANSLATION; consumes no instance wire bytes. */
        public const ushort CONST_TRANSLATION = (ushort)4;
        /** @brief Original source constant ROTATION; consumes no instance wire bytes. */
        public const ushort CONST_ROTATION = (ushort)5;
        /** @brief Complete native field joint_name; scalar, text bound 128. */
        public string field_joint_name = "";
        /** @brief Complete native field component; scalar, text bound 0. */
        public ushort field_component = (ushort)0;
        /** @brief Complete native field position; scalar, text bound 0. */
        public double field_position = BitConverter.Int64BitsToDouble(unchecked((long)0x0000000000000000UL));
        /** @brief Complete native field velocity; scalar, text bound 0. */
        public double field_velocity = BitConverter.Int64BitsToDouble(unchecked((long)0x0000000000000000UL));
        /** @brief Complete native field acceleration; scalar, text bound 0. */
        public double field_acceleration = BitConverter.Int64BitsToDouble(unchecked((long)0x0000000000000000UL));

        /**
         * @brief Construct the complete original default value with owned storage.
         * @details Nested fixed arrays initialize every logical element; sequences
         * start empty. No native capability, pointer, or shared buffer is retained.
         */
        public Ros2Control_msgsMsgJointComponentTolerance()
        {
        }

        /**
         * @brief Encode every field of one complete bounded value.
         * @param value Borrowed stable value; all referenced arrays remain caller-owned.
         * @return Newly owned complete canonical bytes, excluding unused capacity.
         * @details Invalid fields/bounds/semantics throw ArgumentException.
         */
        public static byte[] Encode(Ros2Control_msgsMsgJointComponentTolerance value)
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
        public static Ros2Control_msgsMsgJointComponentTolerance Decode(byte[] bytes)
        {
            if(bytes == null || bytes.Length < MIN_WIRE_BYTES || bytes.Length > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Invalid complete canonical extent");
            }
            Wire.Reader wire = new Wire.Reader(bytes);
            Ros2Control_msgsMsgJointComponentTolerance value = ReadFields(wire);
            wire.Finish();
            return value;
        }

        /**
         * @brief Write this complete nested value within the enclosing aggregate bound.
         * @param wire Borrowed caller-owned finite writer.
         * @param value Borrowed stable complete value.
         * @return No value; invalid fields or aggregate bounds throw before publication.
         */
        internal static void WriteFields(Wire.Writer wire, Ros2Control_msgsMsgJointComponentTolerance value)
        {
            if(value == null)
            {
                throw new ArgumentException("Null canonical record");
            }
            int start = wire.Position;
            wire.String(value.field_joint_name, 128);
            wire.U16(value.field_component);
            if(!double.IsFinite(value.field_position))
            {
                throw new ArgumentException("Nonfinite position");
            }
            wire.F64(value.field_position);
            if(!double.IsFinite(value.field_velocity))
            {
                throw new ArgumentException("Nonfinite velocity");
            }
            wire.F64(value.field_velocity);
            if(!double.IsFinite(value.field_acceleration))
            {
                throw new ArgumentException("Nonfinite acceleration");
            }
            wire.F64(value.field_acceleration);
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
        internal static Ros2Control_msgsMsgJointComponentTolerance ReadFields(Wire.Reader wire)
        {
            int start = wire.Position;
            Ros2Control_msgsMsgJointComponentTolerance value = new Ros2Control_msgsMsgJointComponentTolerance();
            value.field_joint_name = wire.String(128);
            value.field_component = wire.U16();
            value.field_position = wire.F64();
            if(!double.IsFinite(value.field_position))
            {
                throw new ArgumentException("Nonfinite position");
            }
            value.field_velocity = wire.F64();
            if(!double.IsFinite(value.field_velocity))
            {
                throw new ArgumentException("Nonfinite velocity");
            }
            value.field_acceleration = wire.F64();
            if(!double.IsFinite(value.field_acceleration))
            {
                throw new ArgumentException("Nonfinite acceleration");
            }
            if(wire.Position - start > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Nested aggregate exceeds registered wire bound");
            }
            return value;
        }
    }
}
