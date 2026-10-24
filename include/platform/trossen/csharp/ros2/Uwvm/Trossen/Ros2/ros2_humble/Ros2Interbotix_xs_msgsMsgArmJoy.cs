using System;
using Uwvm.Ros;

namespace Uwvm.Trossen.Ros2.ros2_humble
{
    /**
     * @brief Complete ROS 2 interbotix_xs_msgs/msg/ArmJoy value and canonical codec.
     * @details All fields, constants, defaults and nested capacities come from the
     * canonical bounded catalog. Instances own their strings/arrays/nested values.
     * Encode/decode perform no ROS operation and confer no authority. Native type
     * identity must still be independently qualified by the deployment registry.
     */
    public sealed class Ros2Interbotix_xs_msgsMsgArmJoy
    {
        /** @brief Exact registered max wire bytes. */
        public const int MAX_WIRE_BYTES = 12;
        /** @brief Exact registered min wire bytes. */
        public const int MIN_WIRE_BYTES = 12;
        /** @brief Original codec identity; empty native identity is unqualified. */
        public const string CODEC_IDENTITY = "UWVMROS1_26c3b0f22cf87c464b8cfa99b6de6ba7bc16efe7244ab36828c98e1518d69b1f";
        /** @brief Original source type; empty native identity is unqualified. */
        public const string SOURCE_TYPE = "interbotix_xs_msgs/msg/ArmJoy";
        /** @brief Original native identity; empty native identity is unqualified. */
        public const string NATIVE_IDENTITY = "";
        /** @brief Original source constant EE_X_INC; consumes no instance wire bytes. */
        public const sbyte CONST_EE_X_INC = (sbyte)1;
        /** @brief Original source constant EE_X_DEC; consumes no instance wire bytes. */
        public const sbyte CONST_EE_X_DEC = (sbyte)2;
        /** @brief Original source constant EE_Y_INC; consumes no instance wire bytes. */
        public const sbyte CONST_EE_Y_INC = (sbyte)3;
        /** @brief Original source constant EE_Y_DEC; consumes no instance wire bytes. */
        public const sbyte CONST_EE_Y_DEC = (sbyte)4;
        /** @brief Original source constant EE_Z_INC; consumes no instance wire bytes. */
        public const sbyte CONST_EE_Z_INC = (sbyte)5;
        /** @brief Original source constant EE_Z_DEC; consumes no instance wire bytes. */
        public const sbyte CONST_EE_Z_DEC = (sbyte)6;
        /** @brief Original source constant EE_ROLL_CCW; consumes no instance wire bytes. */
        public const sbyte CONST_EE_ROLL_CCW = (sbyte)7;
        /** @brief Original source constant EE_ROLL_CW; consumes no instance wire bytes. */
        public const sbyte CONST_EE_ROLL_CW = (sbyte)8;
        /** @brief Original source constant EE_PITCH_UP; consumes no instance wire bytes. */
        public const sbyte CONST_EE_PITCH_UP = (sbyte)9;
        /** @brief Original source constant EE_PITCH_DOWN; consumes no instance wire bytes. */
        public const sbyte CONST_EE_PITCH_DOWN = (sbyte)10;
        /** @brief Original source constant WAIST_CCW; consumes no instance wire bytes. */
        public const sbyte CONST_WAIST_CCW = (sbyte)11;
        /** @brief Original source constant WAIST_CW; consumes no instance wire bytes. */
        public const sbyte CONST_WAIST_CW = (sbyte)12;
        /** @brief Original source constant GRIPPER_RELEASE; consumes no instance wire bytes. */
        public const sbyte CONST_GRIPPER_RELEASE = (sbyte)13;
        /** @brief Original source constant GRIPPER_GRASP; consumes no instance wire bytes. */
        public const sbyte CONST_GRIPPER_GRASP = (sbyte)14;
        /** @brief Original source constant HOME_POSE; consumes no instance wire bytes. */
        public const sbyte CONST_HOME_POSE = (sbyte)15;
        /** @brief Original source constant SLEEP_POSE; consumes no instance wire bytes. */
        public const sbyte CONST_SLEEP_POSE = (sbyte)16;
        /** @brief Original source constant SPEED_INC; consumes no instance wire bytes. */
        public const sbyte CONST_SPEED_INC = (sbyte)17;
        /** @brief Original source constant SPEED_DEC; consumes no instance wire bytes. */
        public const sbyte CONST_SPEED_DEC = (sbyte)18;
        /** @brief Original source constant SPEED_COARSE; consumes no instance wire bytes. */
        public const sbyte CONST_SPEED_COARSE = (sbyte)19;
        /** @brief Original source constant SPEED_FINE; consumes no instance wire bytes. */
        public const sbyte CONST_SPEED_FINE = (sbyte)20;
        /** @brief Original source constant GRIPPER_PWM_INC; consumes no instance wire bytes. */
        public const sbyte CONST_GRIPPER_PWM_INC = (sbyte)21;
        /** @brief Original source constant GRIPPER_PWM_DEC; consumes no instance wire bytes. */
        public const sbyte CONST_GRIPPER_PWM_DEC = (sbyte)22;
        /** @brief Original source constant TORQUE_ON; consumes no instance wire bytes. */
        public const sbyte CONST_TORQUE_ON = (sbyte)23;
        /** @brief Original source constant TORQUE_OFF; consumes no instance wire bytes. */
        public const sbyte CONST_TORQUE_OFF = (sbyte)24;
        /** @brief Complete native field ee_x_cmd; scalar, text bound 0. */
        public sbyte field_ee_x_cmd = (sbyte)0;
        /** @brief Complete native field ee_y_cmd; scalar, text bound 0. */
        public sbyte field_ee_y_cmd = (sbyte)0;
        /** @brief Complete native field ee_z_cmd; scalar, text bound 0. */
        public sbyte field_ee_z_cmd = (sbyte)0;
        /** @brief Complete native field ee_roll_cmd; scalar, text bound 0. */
        public sbyte field_ee_roll_cmd = (sbyte)0;
        /** @brief Complete native field ee_pitch_cmd; scalar, text bound 0. */
        public sbyte field_ee_pitch_cmd = (sbyte)0;
        /** @brief Complete native field waist_cmd; scalar, text bound 0. */
        public sbyte field_waist_cmd = (sbyte)0;
        /** @brief Complete native field gripper_cmd; scalar, text bound 0. */
        public sbyte field_gripper_cmd = (sbyte)0;
        /** @brief Complete native field pose_cmd; scalar, text bound 0. */
        public sbyte field_pose_cmd = (sbyte)0;
        /** @brief Complete native field speed_cmd; scalar, text bound 0. */
        public sbyte field_speed_cmd = (sbyte)0;
        /** @brief Complete native field speed_toggle_cmd; scalar, text bound 0. */
        public sbyte field_speed_toggle_cmd = (sbyte)0;
        /** @brief Complete native field gripper_pwm_cmd; scalar, text bound 0. */
        public sbyte field_gripper_pwm_cmd = (sbyte)0;
        /** @brief Complete native field torque_cmd; scalar, text bound 0. */
        public sbyte field_torque_cmd = (sbyte)0;

        /**
         * @brief Construct the complete original default value with owned storage.
         * @details Nested fixed arrays initialize every logical element; sequences
         * start empty. No native capability, pointer, or shared buffer is retained.
         */
        public Ros2Interbotix_xs_msgsMsgArmJoy()
        {
        }

        /**
         * @brief Encode every field of one complete bounded value.
         * @param value Borrowed stable value; all referenced arrays remain caller-owned.
         * @return Newly owned complete canonical bytes, excluding unused capacity.
         * @details Invalid fields/bounds/semantics throw ArgumentException.
         */
        public static byte[] Encode(Ros2Interbotix_xs_msgsMsgArmJoy value)
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
        public static Ros2Interbotix_xs_msgsMsgArmJoy Decode(byte[] bytes)
        {
            if(bytes == null || bytes.Length < MIN_WIRE_BYTES || bytes.Length > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Invalid complete canonical extent");
            }
            Wire.Reader wire = new Wire.Reader(bytes);
            Ros2Interbotix_xs_msgsMsgArmJoy value = ReadFields(wire);
            wire.Finish();
            return value;
        }

        /**
         * @brief Write this complete nested value within the enclosing aggregate bound.
         * @param wire Borrowed caller-owned finite writer.
         * @param value Borrowed stable complete value.
         * @return No value; invalid fields or aggregate bounds throw before publication.
         */
        internal static void WriteFields(Wire.Writer wire, Ros2Interbotix_xs_msgsMsgArmJoy value)
        {
            if(value == null)
            {
                throw new ArgumentException("Null canonical record");
            }
            int start = wire.Position;
            wire.I8(value.field_ee_x_cmd);
            wire.I8(value.field_ee_y_cmd);
            wire.I8(value.field_ee_z_cmd);
            wire.I8(value.field_ee_roll_cmd);
            wire.I8(value.field_ee_pitch_cmd);
            wire.I8(value.field_waist_cmd);
            wire.I8(value.field_gripper_cmd);
            wire.I8(value.field_pose_cmd);
            wire.I8(value.field_speed_cmd);
            wire.I8(value.field_speed_toggle_cmd);
            wire.I8(value.field_gripper_pwm_cmd);
            wire.I8(value.field_torque_cmd);
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
        internal static Ros2Interbotix_xs_msgsMsgArmJoy ReadFields(Wire.Reader wire)
        {
            int start = wire.Position;
            Ros2Interbotix_xs_msgsMsgArmJoy value = new Ros2Interbotix_xs_msgsMsgArmJoy();
            value.field_ee_x_cmd = wire.I8();
            value.field_ee_y_cmd = wire.I8();
            value.field_ee_z_cmd = wire.I8();
            value.field_ee_roll_cmd = wire.I8();
            value.field_ee_pitch_cmd = wire.I8();
            value.field_waist_cmd = wire.I8();
            value.field_gripper_cmd = wire.I8();
            value.field_pose_cmd = wire.I8();
            value.field_speed_cmd = wire.I8();
            value.field_speed_toggle_cmd = wire.I8();
            value.field_gripper_pwm_cmd = wire.I8();
            value.field_torque_cmd = wire.I8();
            if(wire.Position - start > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Nested aggregate exceeds registered wire bound");
            }
            return value;
        }
    }
}
