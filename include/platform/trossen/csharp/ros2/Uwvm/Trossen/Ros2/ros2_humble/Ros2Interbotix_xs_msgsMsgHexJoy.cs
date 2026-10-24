using System;
using Uwvm.Ros;

namespace Uwvm.Trossen.Ros2.ros2_humble
{
    /**
     * @brief Complete ROS 2 interbotix_xs_msgs/msg/HexJoy value and canonical codec.
     * @details All fields, constants, defaults and nested capacities come from the
     * canonical bounded catalog. Instances own their strings/arrays/nested values.
     * Encode/decode perform no ROS operation and confer no authority. Native type
     * identity must still be independently qualified by the deployment registry.
     */
    public sealed class Ros2Interbotix_xs_msgsMsgHexJoy
    {
        /** @brief Exact registered max wire bytes. */
        public const int MAX_WIRE_BYTES = 17;
        /** @brief Exact registered min wire bytes. */
        public const int MIN_WIRE_BYTES = 17;
        /** @brief Original codec identity; empty native identity is unqualified. */
        public const string CODEC_IDENTITY = "UWVMROS1_17c4cc565057e8b555ae945fdad4c8010a26dc411ad2fcc6da2edb9a1d9e9e3d";
        /** @brief Original source type; empty native identity is unqualified. */
        public const string SOURCE_TYPE = "interbotix_xs_msgs/msg/HexJoy";
        /** @brief Original native identity; empty native identity is unqualified. */
        public const string NATIVE_IDENTITY = "";
        /** @brief Original source constant WORLD_X_INC; consumes no instance wire bytes. */
        public const sbyte CONST_WORLD_X_INC = (sbyte)1;
        /** @brief Original source constant WORLD_X_DEC; consumes no instance wire bytes. */
        public const sbyte CONST_WORLD_X_DEC = (sbyte)2;
        /** @brief Original source constant WORLD_Y_INC; consumes no instance wire bytes. */
        public const sbyte CONST_WORLD_Y_INC = (sbyte)3;
        /** @brief Original source constant WORLD_Y_DEC; consumes no instance wire bytes. */
        public const sbyte CONST_WORLD_Y_DEC = (sbyte)4;
        /** @brief Original source constant WORLD_YAW_CCW; consumes no instance wire bytes. */
        public const sbyte CONST_WORLD_YAW_CCW = (sbyte)5;
        /** @brief Original source constant WORLD_YAW_CW; consumes no instance wire bytes. */
        public const sbyte CONST_WORLD_YAW_CW = (sbyte)6;
        /** @brief Original source constant PLACE_X_INC; consumes no instance wire bytes. */
        public const sbyte CONST_PLACE_X_INC = (sbyte)7;
        /** @brief Original source constant PLACE_X_DEC; consumes no instance wire bytes. */
        public const sbyte CONST_PLACE_X_DEC = (sbyte)8;
        /** @brief Original source constant PLACE_Y_INC; consumes no instance wire bytes. */
        public const sbyte CONST_PLACE_Y_INC = (sbyte)9;
        /** @brief Original source constant PLACE_Y_DEC; consumes no instance wire bytes. */
        public const sbyte CONST_PLACE_Y_DEC = (sbyte)10;
        /** @brief Original source constant PLACE_Z_INC; consumes no instance wire bytes. */
        public const sbyte CONST_PLACE_Z_INC = (sbyte)11;
        /** @brief Original source constant PLACE_Z_DEC; consumes no instance wire bytes. */
        public const sbyte CONST_PLACE_Z_DEC = (sbyte)12;
        /** @brief Original source constant PLACE_ROLL_CCW; consumes no instance wire bytes. */
        public const sbyte CONST_PLACE_ROLL_CCW = (sbyte)13;
        /** @brief Original source constant PLACE_ROLL_CW; consumes no instance wire bytes. */
        public const sbyte CONST_PLACE_ROLL_CW = (sbyte)14;
        /** @brief Original source constant PLACE_PITCH_UP; consumes no instance wire bytes. */
        public const sbyte CONST_PLACE_PITCH_UP = (sbyte)15;
        /** @brief Original source constant PLACE_PITCH_DOWN; consumes no instance wire bytes. */
        public const sbyte CONST_PLACE_PITCH_DOWN = (sbyte)16;
        /** @brief Original source constant MOVE_HEXAPOD; consumes no instance wire bytes. */
        public const sbyte CONST_MOVE_HEXAPOD = (sbyte)17;
        /** @brief Original source constant MOVE_LEG; consumes no instance wire bytes. */
        public const sbyte CONST_MOVE_LEG = (sbyte)18;
        /** @brief Original source constant HOME_POSE; consumes no instance wire bytes. */
        public const sbyte CONST_HOME_POSE = (sbyte)19;
        /** @brief Original source constant SLEEP_POSE; consumes no instance wire bytes. */
        public const sbyte CONST_SLEEP_POSE = (sbyte)20;
        /** @brief Original source constant GAIT_NEXT; consumes no instance wire bytes. */
        public const sbyte CONST_GAIT_NEXT = (sbyte)21;
        /** @brief Original source constant GAIT_PREVIOUS; consumes no instance wire bytes. */
        public const sbyte CONST_GAIT_PREVIOUS = (sbyte)22;
        /** @brief Original source constant LEG_NEXT; consumes no instance wire bytes. */
        public const sbyte CONST_LEG_NEXT = (sbyte)23;
        /** @brief Original source constant LEG_PREVIOUS; consumes no instance wire bytes. */
        public const sbyte CONST_LEG_PREVIOUS = (sbyte)24;
        /** @brief Original source constant WIDEN_STANCE; consumes no instance wire bytes. */
        public const sbyte CONST_WIDEN_STANCE = (sbyte)25;
        /** @brief Original source constant NARROW_STANCE; consumes no instance wire bytes. */
        public const sbyte CONST_NARROW_STANCE = (sbyte)26;
        /** @brief Original source constant REBOOT_MOTORS; consumes no instance wire bytes. */
        public const sbyte CONST_REBOOT_MOTORS = (sbyte)27;
        /** @brief Original source constant SET_HOME_POSE; consumes no instance wire bytes. */
        public const sbyte CONST_SET_HOME_POSE = (sbyte)28;
        /** @brief Original source constant SPEED_INC; consumes no instance wire bytes. */
        public const sbyte CONST_SPEED_INC = (sbyte)29;
        /** @brief Original source constant SPEED_DEC; consumes no instance wire bytes. */
        public const sbyte CONST_SPEED_DEC = (sbyte)30;
        /** @brief Original source constant SPEED_COARSE; consumes no instance wire bytes. */
        public const sbyte CONST_SPEED_COARSE = (sbyte)31;
        /** @brief Original source constant SPEED_FINE; consumes no instance wire bytes. */
        public const sbyte CONST_SPEED_FINE = (sbyte)32;
        /** @brief Complete native field world_x_cmd; scalar, text bound 0. */
        public sbyte field_world_x_cmd = (sbyte)0;
        /** @brief Complete native field world_y_cmd; scalar, text bound 0. */
        public sbyte field_world_y_cmd = (sbyte)0;
        /** @brief Complete native field world_yaw_cmd; scalar, text bound 0. */
        public sbyte field_world_yaw_cmd = (sbyte)0;
        /** @brief Complete native field place_x_cmd; scalar, text bound 0. */
        public sbyte field_place_x_cmd = (sbyte)0;
        /** @brief Complete native field place_y_cmd; scalar, text bound 0. */
        public sbyte field_place_y_cmd = (sbyte)0;
        /** @brief Complete native field place_z_cmd; scalar, text bound 0. */
        public sbyte field_place_z_cmd = (sbyte)0;
        /** @brief Complete native field place_roll_cmd; scalar, text bound 0. */
        public sbyte field_place_roll_cmd = (sbyte)0;
        /** @brief Complete native field place_pitch_cmd; scalar, text bound 0. */
        public sbyte field_place_pitch_cmd = (sbyte)0;
        /** @brief Complete native field pose_cmd; scalar, text bound 0. */
        public sbyte field_pose_cmd = (sbyte)0;
        /** @brief Complete native field move_type_cmd; scalar, text bound 0. */
        public sbyte field_move_type_cmd = (sbyte)0;
        /** @brief Complete native field gait_toggle_cmd; scalar, text bound 0. */
        public sbyte field_gait_toggle_cmd = (sbyte)0;
        /** @brief Complete native field leg_toggle_cmd; scalar, text bound 0. */
        public sbyte field_leg_toggle_cmd = (sbyte)0;
        /** @brief Complete native field stance_cmd; scalar, text bound 0. */
        public sbyte field_stance_cmd = (sbyte)0;
        /** @brief Complete native field reboot_cmd; scalar, text bound 0. */
        public sbyte field_reboot_cmd = (sbyte)0;
        /** @brief Complete native field set_home_pose_cmd; scalar, text bound 0. */
        public sbyte field_set_home_pose_cmd = (sbyte)0;
        /** @brief Complete native field speed_cmd; scalar, text bound 0. */
        public sbyte field_speed_cmd = (sbyte)0;
        /** @brief Complete native field speed_toggle_cmd; scalar, text bound 0. */
        public sbyte field_speed_toggle_cmd = (sbyte)0;

        /**
         * @brief Construct the complete original default value with owned storage.
         * @details Nested fixed arrays initialize every logical element; sequences
         * start empty. No native capability, pointer, or shared buffer is retained.
         */
        public Ros2Interbotix_xs_msgsMsgHexJoy()
        {
        }

        /**
         * @brief Encode every field of one complete bounded value.
         * @param value Borrowed stable value; all referenced arrays remain caller-owned.
         * @return Newly owned complete canonical bytes, excluding unused capacity.
         * @details Invalid fields/bounds/semantics throw ArgumentException.
         */
        public static byte[] Encode(Ros2Interbotix_xs_msgsMsgHexJoy value)
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
        public static Ros2Interbotix_xs_msgsMsgHexJoy Decode(byte[] bytes)
        {
            if(bytes == null || bytes.Length < MIN_WIRE_BYTES || bytes.Length > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Invalid complete canonical extent");
            }
            Wire.Reader wire = new Wire.Reader(bytes);
            Ros2Interbotix_xs_msgsMsgHexJoy value = ReadFields(wire);
            wire.Finish();
            return value;
        }

        /**
         * @brief Write this complete nested value within the enclosing aggregate bound.
         * @param wire Borrowed caller-owned finite writer.
         * @param value Borrowed stable complete value.
         * @return No value; invalid fields or aggregate bounds throw before publication.
         */
        internal static void WriteFields(Wire.Writer wire, Ros2Interbotix_xs_msgsMsgHexJoy value)
        {
            if(value == null)
            {
                throw new ArgumentException("Null canonical record");
            }
            int start = wire.Position;
            wire.I8(value.field_world_x_cmd);
            wire.I8(value.field_world_y_cmd);
            wire.I8(value.field_world_yaw_cmd);
            wire.I8(value.field_place_x_cmd);
            wire.I8(value.field_place_y_cmd);
            wire.I8(value.field_place_z_cmd);
            wire.I8(value.field_place_roll_cmd);
            wire.I8(value.field_place_pitch_cmd);
            wire.I8(value.field_pose_cmd);
            wire.I8(value.field_move_type_cmd);
            wire.I8(value.field_gait_toggle_cmd);
            wire.I8(value.field_leg_toggle_cmd);
            wire.I8(value.field_stance_cmd);
            wire.I8(value.field_reboot_cmd);
            wire.I8(value.field_set_home_pose_cmd);
            wire.I8(value.field_speed_cmd);
            wire.I8(value.field_speed_toggle_cmd);
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
        internal static Ros2Interbotix_xs_msgsMsgHexJoy ReadFields(Wire.Reader wire)
        {
            int start = wire.Position;
            Ros2Interbotix_xs_msgsMsgHexJoy value = new Ros2Interbotix_xs_msgsMsgHexJoy();
            value.field_world_x_cmd = wire.I8();
            value.field_world_y_cmd = wire.I8();
            value.field_world_yaw_cmd = wire.I8();
            value.field_place_x_cmd = wire.I8();
            value.field_place_y_cmd = wire.I8();
            value.field_place_z_cmd = wire.I8();
            value.field_place_roll_cmd = wire.I8();
            value.field_place_pitch_cmd = wire.I8();
            value.field_pose_cmd = wire.I8();
            value.field_move_type_cmd = wire.I8();
            value.field_gait_toggle_cmd = wire.I8();
            value.field_leg_toggle_cmd = wire.I8();
            value.field_stance_cmd = wire.I8();
            value.field_reboot_cmd = wire.I8();
            value.field_set_home_pose_cmd = wire.I8();
            value.field_speed_cmd = wire.I8();
            value.field_speed_toggle_cmd = wire.I8();
            if(wire.Position - start > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Nested aggregate exceeds registered wire bound");
            }
            return value;
        }
    }
}
