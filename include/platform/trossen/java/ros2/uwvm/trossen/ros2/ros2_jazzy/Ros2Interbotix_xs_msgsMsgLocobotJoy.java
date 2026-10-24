package uwvm.trossen.ros2.ros2_jazzy;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 2 interbotix_xs_msgs/msg/LocobotJoy value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros2Interbotix_xs_msgsMsgLocobotJoy
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 30;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 30;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_5a2637e1298987f966f0c70e1c2f37d6077d2ce531012b18349b5354f3189633";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "interbotix_xs_msgs/msg/LocobotJoy";
    /** @brief Original native identity; empty native identity is unqualified. */
    public static final String NATIVE_IDENTITY = "";
    /** @brief Original source constant RESET_ODOM; consumes no instance wire bytes. */
    public static final byte CONST_RESET_ODOM = (byte)1;
    /** @brief Original source constant PAN_CCW; consumes no instance wire bytes. */
    public static final byte CONST_PAN_CCW = (byte)2;
    /** @brief Original source constant PAN_CW; consumes no instance wire bytes. */
    public static final byte CONST_PAN_CW = (byte)3;
    /** @brief Original source constant TILT_UP; consumes no instance wire bytes. */
    public static final byte CONST_TILT_UP = (byte)4;
    /** @brief Original source constant TILT_DOWN; consumes no instance wire bytes. */
    public static final byte CONST_TILT_DOWN = (byte)5;
    /** @brief Original source constant PAN_TILT_HOME; consumes no instance wire bytes. */
    public static final byte CONST_PAN_TILT_HOME = (byte)6;
    /** @brief Original source constant EE_X_INC; consumes no instance wire bytes. */
    public static final byte CONST_EE_X_INC = (byte)7;
    /** @brief Original source constant EE_X_DEC; consumes no instance wire bytes. */
    public static final byte CONST_EE_X_DEC = (byte)8;
    /** @brief Original source constant EE_Y_INC; consumes no instance wire bytes. */
    public static final byte CONST_EE_Y_INC = (byte)9;
    /** @brief Original source constant EE_Y_DEC; consumes no instance wire bytes. */
    public static final byte CONST_EE_Y_DEC = (byte)10;
    /** @brief Original source constant EE_Z_INC; consumes no instance wire bytes. */
    public static final byte CONST_EE_Z_INC = (byte)11;
    /** @brief Original source constant EE_Z_DEC; consumes no instance wire bytes. */
    public static final byte CONST_EE_Z_DEC = (byte)12;
    /** @brief Original source constant EE_ROLL_CCW; consumes no instance wire bytes. */
    public static final byte CONST_EE_ROLL_CCW = (byte)13;
    /** @brief Original source constant EE_ROLL_CW; consumes no instance wire bytes. */
    public static final byte CONST_EE_ROLL_CW = (byte)14;
    /** @brief Original source constant EE_PITCH_UP; consumes no instance wire bytes. */
    public static final byte CONST_EE_PITCH_UP = (byte)15;
    /** @brief Original source constant EE_PITCH_DOWN; consumes no instance wire bytes. */
    public static final byte CONST_EE_PITCH_DOWN = (byte)16;
    /** @brief Original source constant WAIST_CCW; consumes no instance wire bytes. */
    public static final byte CONST_WAIST_CCW = (byte)17;
    /** @brief Original source constant WAIST_CW; consumes no instance wire bytes. */
    public static final byte CONST_WAIST_CW = (byte)18;
    /** @brief Original source constant GRIPPER_RELEASE; consumes no instance wire bytes. */
    public static final byte CONST_GRIPPER_RELEASE = (byte)19;
    /** @brief Original source constant GRIPPER_GRASP; consumes no instance wire bytes. */
    public static final byte CONST_GRIPPER_GRASP = (byte)20;
    /** @brief Original source constant HOME_POSE; consumes no instance wire bytes. */
    public static final byte CONST_HOME_POSE = (byte)21;
    /** @brief Original source constant SLEEP_POSE; consumes no instance wire bytes. */
    public static final byte CONST_SLEEP_POSE = (byte)22;
    /** @brief Original source constant SPEED_INC; consumes no instance wire bytes. */
    public static final byte CONST_SPEED_INC = (byte)23;
    /** @brief Original source constant SPEED_DEC; consumes no instance wire bytes. */
    public static final byte CONST_SPEED_DEC = (byte)24;
    /** @brief Original source constant SPEED_COARSE; consumes no instance wire bytes. */
    public static final byte CONST_SPEED_COARSE = (byte)25;
    /** @brief Original source constant SPEED_FINE; consumes no instance wire bytes. */
    public static final byte CONST_SPEED_FINE = (byte)26;
    /** @brief Original source constant GRIPPER_PWM_INC; consumes no instance wire bytes. */
    public static final byte CONST_GRIPPER_PWM_INC = (byte)27;
    /** @brief Original source constant GRIPPER_PWM_DEC; consumes no instance wire bytes. */
    public static final byte CONST_GRIPPER_PWM_DEC = (byte)28;
    /** @brief Complete native field base_x_cmd; scalar, text bound 0. */
    public double field_base_x_cmd = Double.longBitsToDouble(0x0000000000000000L);
    /** @brief Complete native field base_theta_cmd; scalar, text bound 0. */
    public double field_base_theta_cmd = Double.longBitsToDouble(0x0000000000000000L);
    /** @brief Complete native field base_reset_odom_cmd; scalar, text bound 0. */
    public byte field_base_reset_odom_cmd = (byte)0;
    /** @brief Complete native field pan_cmd; scalar, text bound 0. */
    public byte field_pan_cmd = (byte)0;
    /** @brief Complete native field tilt_cmd; scalar, text bound 0. */
    public byte field_tilt_cmd = (byte)0;
    /** @brief Complete native field ee_x_cmd; scalar, text bound 0. */
    public byte field_ee_x_cmd = (byte)0;
    /** @brief Complete native field ee_y_cmd; scalar, text bound 0. */
    public byte field_ee_y_cmd = (byte)0;
    /** @brief Complete native field ee_z_cmd; scalar, text bound 0. */
    public byte field_ee_z_cmd = (byte)0;
    /** @brief Complete native field ee_roll_cmd; scalar, text bound 0. */
    public byte field_ee_roll_cmd = (byte)0;
    /** @brief Complete native field ee_pitch_cmd; scalar, text bound 0. */
    public byte field_ee_pitch_cmd = (byte)0;
    /** @brief Complete native field waist_cmd; scalar, text bound 0. */
    public byte field_waist_cmd = (byte)0;
    /** @brief Complete native field gripper_cmd; scalar, text bound 0. */
    public byte field_gripper_cmd = (byte)0;
    /** @brief Complete native field pose_cmd; scalar, text bound 0. */
    public byte field_pose_cmd = (byte)0;
    /** @brief Complete native field speed_cmd; scalar, text bound 0. */
    public byte field_speed_cmd = (byte)0;
    /** @brief Complete native field speed_toggle_cmd; scalar, text bound 0. */
    public byte field_speed_toggle_cmd = (byte)0;
    /** @brief Complete native field gripper_pwm_cmd; scalar, text bound 0. */
    public byte field_gripper_pwm_cmd = (byte)0;

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros2Interbotix_xs_msgsMsgLocobotJoy()
    {
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros2Interbotix_xs_msgsMsgLocobotJoy value)
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
    public static Ros2Interbotix_xs_msgsMsgLocobotJoy decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros2Interbotix_xs_msgsMsgLocobotJoy value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros2Interbotix_xs_msgsMsgLocobotJoy value)
    {
        if(value == null)
        {
            throw new IllegalArgumentException("Null canonical record");
        }
        int start = wire.position();
        if(!Double.isFinite(value.field_base_x_cmd))
        {
            throw new IllegalArgumentException("Nonfinite base_x_cmd");
        }
        wire.f64(value.field_base_x_cmd);
        if(!Double.isFinite(value.field_base_theta_cmd))
        {
            throw new IllegalArgumentException("Nonfinite base_theta_cmd");
        }
        wire.f64(value.field_base_theta_cmd);
        wire.i8(value.field_base_reset_odom_cmd);
        wire.i8(value.field_pan_cmd);
        wire.i8(value.field_tilt_cmd);
        wire.i8(value.field_ee_x_cmd);
        wire.i8(value.field_ee_y_cmd);
        wire.i8(value.field_ee_z_cmd);
        wire.i8(value.field_ee_roll_cmd);
        wire.i8(value.field_ee_pitch_cmd);
        wire.i8(value.field_waist_cmd);
        wire.i8(value.field_gripper_cmd);
        wire.i8(value.field_pose_cmd);
        wire.i8(value.field_speed_cmd);
        wire.i8(value.field_speed_toggle_cmd);
        wire.i8(value.field_gripper_pwm_cmd);
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
    public static Ros2Interbotix_xs_msgsMsgLocobotJoy readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros2Interbotix_xs_msgsMsgLocobotJoy value = new Ros2Interbotix_xs_msgsMsgLocobotJoy();
        value.field_base_x_cmd = wire.f64();
        if(!Double.isFinite(value.field_base_x_cmd))
        {
            throw new IllegalArgumentException("Nonfinite base_x_cmd");
        }
        value.field_base_theta_cmd = wire.f64();
        if(!Double.isFinite(value.field_base_theta_cmd))
        {
            throw new IllegalArgumentException("Nonfinite base_theta_cmd");
        }
        value.field_base_reset_odom_cmd = wire.i8();
        value.field_pan_cmd = wire.i8();
        value.field_tilt_cmd = wire.i8();
        value.field_ee_x_cmd = wire.i8();
        value.field_ee_y_cmd = wire.i8();
        value.field_ee_z_cmd = wire.i8();
        value.field_ee_roll_cmd = wire.i8();
        value.field_ee_pitch_cmd = wire.i8();
        value.field_waist_cmd = wire.i8();
        value.field_gripper_cmd = wire.i8();
        value.field_pose_cmd = wire.i8();
        value.field_speed_cmd = wire.i8();
        value.field_speed_toggle_cmd = wire.i8();
        value.field_gripper_pwm_cmd = wire.i8();
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
        return value;
    }
}
