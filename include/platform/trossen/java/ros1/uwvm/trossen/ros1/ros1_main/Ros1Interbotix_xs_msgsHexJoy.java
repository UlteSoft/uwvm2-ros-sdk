package uwvm.trossen.ros1.ros1_main;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 1 interbotix_xs_msgs/HexJoy value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros1Interbotix_xs_msgsHexJoy
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 17;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 17;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_b37a8bd136e63b066c12429e68af0721bb314a0b1131cb7e0e806faa56e04b37";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "interbotix_xs_msgs/HexJoy";
    /** @brief Original native identity; empty native identity is unqualified. */
    public static final String NATIVE_IDENTITY = "";
    /** @brief Original source constant WORLD_X_INC; consumes no instance wire bytes. */
    public static final byte CONST_WORLD_X_INC = (byte)1;
    /** @brief Original source constant WORLD_X_DEC; consumes no instance wire bytes. */
    public static final byte CONST_WORLD_X_DEC = (byte)2;
    /** @brief Original source constant WORLD_Y_INC; consumes no instance wire bytes. */
    public static final byte CONST_WORLD_Y_INC = (byte)3;
    /** @brief Original source constant WORLD_Y_DEC; consumes no instance wire bytes. */
    public static final byte CONST_WORLD_Y_DEC = (byte)4;
    /** @brief Original source constant WORLD_YAW_CCW; consumes no instance wire bytes. */
    public static final byte CONST_WORLD_YAW_CCW = (byte)5;
    /** @brief Original source constant WORLD_YAW_CW; consumes no instance wire bytes. */
    public static final byte CONST_WORLD_YAW_CW = (byte)6;
    /** @brief Original source constant PLACE_X_INC; consumes no instance wire bytes. */
    public static final byte CONST_PLACE_X_INC = (byte)7;
    /** @brief Original source constant PLACE_X_DEC; consumes no instance wire bytes. */
    public static final byte CONST_PLACE_X_DEC = (byte)8;
    /** @brief Original source constant PLACE_Y_INC; consumes no instance wire bytes. */
    public static final byte CONST_PLACE_Y_INC = (byte)9;
    /** @brief Original source constant PLACE_Y_DEC; consumes no instance wire bytes. */
    public static final byte CONST_PLACE_Y_DEC = (byte)10;
    /** @brief Original source constant PLACE_Z_INC; consumes no instance wire bytes. */
    public static final byte CONST_PLACE_Z_INC = (byte)11;
    /** @brief Original source constant PLACE_Z_DEC; consumes no instance wire bytes. */
    public static final byte CONST_PLACE_Z_DEC = (byte)12;
    /** @brief Original source constant PLACE_ROLL_CCW; consumes no instance wire bytes. */
    public static final byte CONST_PLACE_ROLL_CCW = (byte)13;
    /** @brief Original source constant PLACE_ROLL_CW; consumes no instance wire bytes. */
    public static final byte CONST_PLACE_ROLL_CW = (byte)14;
    /** @brief Original source constant PLACE_PITCH_UP; consumes no instance wire bytes. */
    public static final byte CONST_PLACE_PITCH_UP = (byte)15;
    /** @brief Original source constant PLACE_PITCH_DOWN; consumes no instance wire bytes. */
    public static final byte CONST_PLACE_PITCH_DOWN = (byte)16;
    /** @brief Original source constant MOVE_HEXAPOD; consumes no instance wire bytes. */
    public static final byte CONST_MOVE_HEXAPOD = (byte)17;
    /** @brief Original source constant MOVE_LEG; consumes no instance wire bytes. */
    public static final byte CONST_MOVE_LEG = (byte)18;
    /** @brief Original source constant HOME_POSE; consumes no instance wire bytes. */
    public static final byte CONST_HOME_POSE = (byte)19;
    /** @brief Original source constant SLEEP_POSE; consumes no instance wire bytes. */
    public static final byte CONST_SLEEP_POSE = (byte)20;
    /** @brief Original source constant GAIT_NEXT; consumes no instance wire bytes. */
    public static final byte CONST_GAIT_NEXT = (byte)21;
    /** @brief Original source constant GAIT_PREVIOUS; consumes no instance wire bytes. */
    public static final byte CONST_GAIT_PREVIOUS = (byte)22;
    /** @brief Original source constant LEG_NEXT; consumes no instance wire bytes. */
    public static final byte CONST_LEG_NEXT = (byte)23;
    /** @brief Original source constant LEG_PREVIOUS; consumes no instance wire bytes. */
    public static final byte CONST_LEG_PREVIOUS = (byte)24;
    /** @brief Original source constant WIDEN_STANCE; consumes no instance wire bytes. */
    public static final byte CONST_WIDEN_STANCE = (byte)25;
    /** @brief Original source constant NARROW_STANCE; consumes no instance wire bytes. */
    public static final byte CONST_NARROW_STANCE = (byte)26;
    /** @brief Original source constant REBOOT_MOTORS; consumes no instance wire bytes. */
    public static final byte CONST_REBOOT_MOTORS = (byte)27;
    /** @brief Original source constant SET_HOME_POSE; consumes no instance wire bytes. */
    public static final byte CONST_SET_HOME_POSE = (byte)28;
    /** @brief Original source constant SPEED_INC; consumes no instance wire bytes. */
    public static final byte CONST_SPEED_INC = (byte)29;
    /** @brief Original source constant SPEED_DEC; consumes no instance wire bytes. */
    public static final byte CONST_SPEED_DEC = (byte)30;
    /** @brief Original source constant SPEED_COURSE; consumes no instance wire bytes. */
    public static final byte CONST_SPEED_COURSE = (byte)31;
    /** @brief Original source constant SPEED_FINE; consumes no instance wire bytes. */
    public static final byte CONST_SPEED_FINE = (byte)32;
    /** @brief Complete native field world_x_cmd; scalar, text bound 0. */
    public byte field_world_x_cmd = (byte)0;
    /** @brief Complete native field world_y_cmd; scalar, text bound 0. */
    public byte field_world_y_cmd = (byte)0;
    /** @brief Complete native field world_yaw_cmd; scalar, text bound 0. */
    public byte field_world_yaw_cmd = (byte)0;
    /** @brief Complete native field place_x_cmd; scalar, text bound 0. */
    public byte field_place_x_cmd = (byte)0;
    /** @brief Complete native field place_y_cmd; scalar, text bound 0. */
    public byte field_place_y_cmd = (byte)0;
    /** @brief Complete native field place_z_cmd; scalar, text bound 0. */
    public byte field_place_z_cmd = (byte)0;
    /** @brief Complete native field place_roll_cmd; scalar, text bound 0. */
    public byte field_place_roll_cmd = (byte)0;
    /** @brief Complete native field place_pitch_cmd; scalar, text bound 0. */
    public byte field_place_pitch_cmd = (byte)0;
    /** @brief Complete native field pose_cmd; scalar, text bound 0. */
    public byte field_pose_cmd = (byte)0;
    /** @brief Complete native field move_type_cmd; scalar, text bound 0. */
    public byte field_move_type_cmd = (byte)0;
    /** @brief Complete native field gait_toggle_cmd; scalar, text bound 0. */
    public byte field_gait_toggle_cmd = (byte)0;
    /** @brief Complete native field leg_toggle_cmd; scalar, text bound 0. */
    public byte field_leg_toggle_cmd = (byte)0;
    /** @brief Complete native field stance_cmd; scalar, text bound 0. */
    public byte field_stance_cmd = (byte)0;
    /** @brief Complete native field reboot_cmd; scalar, text bound 0. */
    public byte field_reboot_cmd = (byte)0;
    /** @brief Complete native field set_home_pose_cmd; scalar, text bound 0. */
    public byte field_set_home_pose_cmd = (byte)0;
    /** @brief Complete native field speed_cmd; scalar, text bound 0. */
    public byte field_speed_cmd = (byte)0;
    /** @brief Complete native field speed_toggle_cmd; scalar, text bound 0. */
    public byte field_speed_toggle_cmd = (byte)0;

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros1Interbotix_xs_msgsHexJoy()
    {
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros1Interbotix_xs_msgsHexJoy value)
    {
        Wire.Writer wire = new Wire.Writer(MAX_WIRE_BYTES);
        writeFields(wire, value);
        return wire.finish();
    }

    /**
     * @brief Decode transactionally with exact extent and trailing-byte checks.
     * @param bytes Borrowed immutable complete canonical body.
     * @return Newly owned full value; failed decoding commits no caller storage.
     * @details Invalid wire, text, bounds or semantics throw IllegalArgumentException.
     */
    public static Ros1Interbotix_xs_msgsHexJoy decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros1Interbotix_xs_msgsHexJoy value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros1Interbotix_xs_msgsHexJoy value)
    {
        if(value == null)
        {
            throw new IllegalArgumentException("Null canonical record");
        }
        int start = wire.position();
        wire.i8(value.field_world_x_cmd);
        wire.i8(value.field_world_y_cmd);
        wire.i8(value.field_world_yaw_cmd);
        wire.i8(value.field_place_x_cmd);
        wire.i8(value.field_place_y_cmd);
        wire.i8(value.field_place_z_cmd);
        wire.i8(value.field_place_roll_cmd);
        wire.i8(value.field_place_pitch_cmd);
        wire.i8(value.field_pose_cmd);
        wire.i8(value.field_move_type_cmd);
        wire.i8(value.field_gait_toggle_cmd);
        wire.i8(value.field_leg_toggle_cmd);
        wire.i8(value.field_stance_cmd);
        wire.i8(value.field_reboot_cmd);
        wire.i8(value.field_set_home_pose_cmd);
        wire.i8(value.field_speed_cmd);
        wire.i8(value.field_speed_toggle_cmd);
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
    }

    /**
     * @brief Read one complete nested record without exposing partial values.
     * @param wire Borrowed immutable bounded reader and its private cursor.
     * @return Newly owned complete record; malformed nested input throws.
     * @details The caller separately requires complete top-level consumption.
     */
    public static Ros1Interbotix_xs_msgsHexJoy readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros1Interbotix_xs_msgsHexJoy value = new Ros1Interbotix_xs_msgsHexJoy();
        value.field_world_x_cmd = wire.i8();
        value.field_world_y_cmd = wire.i8();
        value.field_world_yaw_cmd = wire.i8();
        value.field_place_x_cmd = wire.i8();
        value.field_place_y_cmd = wire.i8();
        value.field_place_z_cmd = wire.i8();
        value.field_place_roll_cmd = wire.i8();
        value.field_place_pitch_cmd = wire.i8();
        value.field_pose_cmd = wire.i8();
        value.field_move_type_cmd = wire.i8();
        value.field_gait_toggle_cmd = wire.i8();
        value.field_leg_toggle_cmd = wire.i8();
        value.field_stance_cmd = wire.i8();
        value.field_reboot_cmd = wire.i8();
        value.field_set_home_pose_cmd = wire.i8();
        value.field_speed_cmd = wire.i8();
        value.field_speed_toggle_cmd = wire.i8();
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
        return value;
    }
}
