using System;
using Uwvm.Ros;

namespace Uwvm.Trossen.Ros1.ros1_main
{
    /**
     * @brief Complete ROS 1 interbotix_xs_msgs/LocobotJoy value and canonical codec.
     * @details All fields, constants, defaults and nested capacities come from the
     * canonical bounded catalog. Instances own their strings/arrays/nested values.
     * Encode/decode perform no ROS operation and confer no authority. Native type
     * identity must still be independently qualified by the deployment registry.
     */
    public sealed class Ros1Interbotix_xs_msgsLocobotJoy
    {
        /** @brief Exact registered max wire bytes. */
        public const int MAX_WIRE_BYTES = 30;
        /** @brief Exact registered min wire bytes. */
        public const int MIN_WIRE_BYTES = 30;
        /** @brief Original codec identity; empty native identity is unqualified. */
        public const string CODEC_IDENTITY = "UWVMROS1_6463e76903b4bd46f2cc65e2bc902d65d0d1424258f965b25e519c1e4a012613";
        /** @brief Original source type; empty native identity is unqualified. */
        public const string SOURCE_TYPE = "interbotix_xs_msgs/LocobotJoy";
        /** @brief Original native identity; empty native identity is unqualified. */
        public const string NATIVE_IDENTITY = "";
        /** @brief Original source constant RESET_ODOM; consumes no instance wire bytes. */
        public const sbyte CONST_RESET_ODOM = (sbyte)1;
        /** @brief Original source constant PAN_CCW; consumes no instance wire bytes. */
        public const sbyte CONST_PAN_CCW = (sbyte)2;
        /** @brief Original source constant PAN_CW; consumes no instance wire bytes. */
        public const sbyte CONST_PAN_CW = (sbyte)3;
        /** @brief Original source constant TILT_UP; consumes no instance wire bytes. */
        public const sbyte CONST_TILT_UP = (sbyte)4;
        /** @brief Original source constant TILT_DOWN; consumes no instance wire bytes. */
        public const sbyte CONST_TILT_DOWN = (sbyte)5;
        /** @brief Original source constant PAN_TILT_HOME; consumes no instance wire bytes. */
        public const sbyte CONST_PAN_TILT_HOME = (sbyte)6;
        /** @brief Original source constant EE_X_INC; consumes no instance wire bytes. */
        public const sbyte CONST_EE_X_INC = (sbyte)7;
        /** @brief Original source constant EE_X_DEC; consumes no instance wire bytes. */
        public const sbyte CONST_EE_X_DEC = (sbyte)8;
        /** @brief Original source constant EE_Y_INC; consumes no instance wire bytes. */
        public const sbyte CONST_EE_Y_INC = (sbyte)9;
        /** @brief Original source constant EE_Y_DEC; consumes no instance wire bytes. */
        public const sbyte CONST_EE_Y_DEC = (sbyte)10;
        /** @brief Original source constant EE_Z_INC; consumes no instance wire bytes. */
        public const sbyte CONST_EE_Z_INC = (sbyte)11;
        /** @brief Original source constant EE_Z_DEC; consumes no instance wire bytes. */
        public const sbyte CONST_EE_Z_DEC = (sbyte)12;
        /** @brief Original source constant EE_ROLL_CCW; consumes no instance wire bytes. */
        public const sbyte CONST_EE_ROLL_CCW = (sbyte)13;
        /** @brief Original source constant EE_ROLL_CW; consumes no instance wire bytes. */
        public const sbyte CONST_EE_ROLL_CW = (sbyte)14;
        /** @brief Original source constant EE_PITCH_UP; consumes no instance wire bytes. */
        public const sbyte CONST_EE_PITCH_UP = (sbyte)15;
        /** @brief Original source constant EE_PITCH_DOWN; consumes no instance wire bytes. */
        public const sbyte CONST_EE_PITCH_DOWN = (sbyte)16;
        /** @brief Original source constant WAIST_CCW; consumes no instance wire bytes. */
        public const sbyte CONST_WAIST_CCW = (sbyte)17;
        /** @brief Original source constant WAIST_CW; consumes no instance wire bytes. */
        public const sbyte CONST_WAIST_CW = (sbyte)18;
        /** @brief Original source constant GRIPPER_OPEN; consumes no instance wire bytes. */
        public const sbyte CONST_GRIPPER_OPEN = (sbyte)19;
        /** @brief Original source constant GRIPPER_CLOSE; consumes no instance wire bytes. */
        public const sbyte CONST_GRIPPER_CLOSE = (sbyte)20;
        /** @brief Original source constant HOME_POSE; consumes no instance wire bytes. */
        public const sbyte CONST_HOME_POSE = (sbyte)21;
        /** @brief Original source constant SLEEP_POSE; consumes no instance wire bytes. */
        public const sbyte CONST_SLEEP_POSE = (sbyte)22;
        /** @brief Original source constant SPEED_INC; consumes no instance wire bytes. */
        public const sbyte CONST_SPEED_INC = (sbyte)23;
        /** @brief Original source constant SPEED_DEC; consumes no instance wire bytes. */
        public const sbyte CONST_SPEED_DEC = (sbyte)24;
        /** @brief Original source constant SPEED_COURSE; consumes no instance wire bytes. */
        public const sbyte CONST_SPEED_COURSE = (sbyte)25;
        /** @brief Original source constant SPEED_FINE; consumes no instance wire bytes. */
        public const sbyte CONST_SPEED_FINE = (sbyte)26;
        /** @brief Original source constant GRIPPER_PWM_INC; consumes no instance wire bytes. */
        public const sbyte CONST_GRIPPER_PWM_INC = (sbyte)27;
        /** @brief Original source constant GRIPPER_PWM_DEC; consumes no instance wire bytes. */
        public const sbyte CONST_GRIPPER_PWM_DEC = (sbyte)28;
        /** @brief Complete native field base_x_cmd; scalar, text bound 0. */
        public double field_base_x_cmd = BitConverter.Int64BitsToDouble(unchecked((long)0x0000000000000000UL));
        /** @brief Complete native field base_theta_cmd; scalar, text bound 0. */
        public double field_base_theta_cmd = BitConverter.Int64BitsToDouble(unchecked((long)0x0000000000000000UL));
        /** @brief Complete native field base_reset_odom_cmd; scalar, text bound 0. */
        public sbyte field_base_reset_odom_cmd = (sbyte)0;
        /** @brief Complete native field pan_cmd; scalar, text bound 0. */
        public sbyte field_pan_cmd = (sbyte)0;
        /** @brief Complete native field tilt_cmd; scalar, text bound 0. */
        public sbyte field_tilt_cmd = (sbyte)0;
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

        /**
         * @brief Construct the complete original default value with owned storage.
         * @details Nested fixed arrays initialize every logical element; sequences
         * start empty. No native capability, pointer, or shared buffer is retained.
         */
        public Ros1Interbotix_xs_msgsLocobotJoy()
        {
        }

        /**
         * @brief Encode every field of one complete bounded value.
         * @param value Borrowed stable value; all referenced arrays remain caller-owned.
         * @return Newly owned complete canonical bytes, excluding unused capacity.
         * @details Invalid fields/bounds/semantics throw ArgumentException.
         */
        public static byte[] Encode(Ros1Interbotix_xs_msgsLocobotJoy value)
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
        public static Ros1Interbotix_xs_msgsLocobotJoy Decode(byte[] bytes)
        {
            if(bytes == null || bytes.Length < MIN_WIRE_BYTES || bytes.Length > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Invalid complete canonical extent");
            }
            Wire.Reader wire = new Wire.Reader(bytes);
            Ros1Interbotix_xs_msgsLocobotJoy value = ReadFields(wire);
            wire.Finish();
            return value;
        }

        /**
         * @brief Write this complete nested value within the enclosing aggregate bound.
         * @param wire Borrowed caller-owned finite writer.
         * @param value Borrowed stable complete value.
         * @return No value; invalid fields or aggregate bounds throw before publication.
         */
        internal static void WriteFields(Wire.Writer wire, Ros1Interbotix_xs_msgsLocobotJoy value)
        {
            if(value == null)
            {
                throw new ArgumentException("Null canonical record");
            }
            int start = wire.Position;
            if(!double.IsFinite(value.field_base_x_cmd))
            {
                throw new ArgumentException("Nonfinite base_x_cmd");
            }
            wire.F64(value.field_base_x_cmd);
            if(!double.IsFinite(value.field_base_theta_cmd))
            {
                throw new ArgumentException("Nonfinite base_theta_cmd");
            }
            wire.F64(value.field_base_theta_cmd);
            wire.I8(value.field_base_reset_odom_cmd);
            wire.I8(value.field_pan_cmd);
            wire.I8(value.field_tilt_cmd);
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
        internal static Ros1Interbotix_xs_msgsLocobotJoy ReadFields(Wire.Reader wire)
        {
            int start = wire.Position;
            Ros1Interbotix_xs_msgsLocobotJoy value = new Ros1Interbotix_xs_msgsLocobotJoy();
            value.field_base_x_cmd = wire.F64();
            if(!double.IsFinite(value.field_base_x_cmd))
            {
                throw new ArgumentException("Nonfinite base_x_cmd");
            }
            value.field_base_theta_cmd = wire.F64();
            if(!double.IsFinite(value.field_base_theta_cmd))
            {
                throw new ArgumentException("Nonfinite base_theta_cmd");
            }
            value.field_base_reset_odom_cmd = wire.I8();
            value.field_pan_cmd = wire.I8();
            value.field_tilt_cmd = wire.I8();
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
            if(wire.Position - start > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Nested aggregate exceeds registered wire bound");
            }
            return value;
        }
    }
}
