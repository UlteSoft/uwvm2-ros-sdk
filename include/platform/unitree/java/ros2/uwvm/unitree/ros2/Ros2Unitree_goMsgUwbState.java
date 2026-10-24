package uwvm.unitree.ros2;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 2 unitree_go/msg/UwbState value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros2Unitree_goMsgUwbState
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 55;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 55;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_017fbafd61a006aeaf6cb80456ac89f429d30a562da2e0d394c6cfb406e61a34";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "unitree_go/msg/UwbState";
    /** @brief Original native identity; empty native identity is unqualified. */
    public static final String NATIVE_IDENTITY = "";
    /** @brief Complete native field version; array capacity 2, text bound 0. */
    public int[] field_version = new int[2];
    /** @brief Complete native field channel; scalar, text bound 0. */
    public int field_channel = 0;
    /** @brief Complete native field joy_mode; scalar, text bound 0. */
    public int field_joy_mode = 0;
    /** @brief Complete native field orientation_est; scalar, text bound 0. */
    public float field_orientation_est = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field pitch_est; scalar, text bound 0. */
    public float field_pitch_est = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field distance_est; scalar, text bound 0. */
    public float field_distance_est = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field yaw_est; scalar, text bound 0. */
    public float field_yaw_est = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field tag_roll; scalar, text bound 0. */
    public float field_tag_roll = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field tag_pitch; scalar, text bound 0. */
    public float field_tag_pitch = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field tag_yaw; scalar, text bound 0. */
    public float field_tag_yaw = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field base_roll; scalar, text bound 0. */
    public float field_base_roll = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field base_pitch; scalar, text bound 0. */
    public float field_base_pitch = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field base_yaw; scalar, text bound 0. */
    public float field_base_yaw = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field joystick; array capacity 2, text bound 0. */
    public float[] field_joystick = new float[2];
    /** @brief Complete native field error_state; scalar, text bound 0. */
    public int field_error_state = 0;
    /** @brief Complete native field buttons; scalar, text bound 0. */
    public int field_buttons = 0;
    /** @brief Complete native field enabled_from_app; scalar, text bound 0. */
    public int field_enabled_from_app = 0;

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros2Unitree_goMsgUwbState()
    {
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros2Unitree_goMsgUwbState value)
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
    public static Ros2Unitree_goMsgUwbState decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros2Unitree_goMsgUwbState value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros2Unitree_goMsgUwbState value)
    {
        if(value == null)
        {
            throw new IllegalArgumentException("Null canonical record");
        }
        int start = wire.position();
        if(value.field_version == null || value.field_version.length != 2)
        {
            throw new IllegalArgumentException("Invalid version extent");
        }
        for(int index = 0; index < value.field_version.length; index++)
        {
            wire.u8(value.field_version[index]);
        }
        wire.u8(value.field_channel);
        wire.u8(value.field_joy_mode);
        if(!Float.isFinite(value.field_orientation_est))
        {
            throw new IllegalArgumentException("Nonfinite orientation_est");
        }
        wire.f32(value.field_orientation_est);
        if(!Float.isFinite(value.field_pitch_est))
        {
            throw new IllegalArgumentException("Nonfinite pitch_est");
        }
        wire.f32(value.field_pitch_est);
        if(!Float.isFinite(value.field_distance_est))
        {
            throw new IllegalArgumentException("Nonfinite distance_est");
        }
        wire.f32(value.field_distance_est);
        if(!Float.isFinite(value.field_yaw_est))
        {
            throw new IllegalArgumentException("Nonfinite yaw_est");
        }
        wire.f32(value.field_yaw_est);
        if(!Float.isFinite(value.field_tag_roll))
        {
            throw new IllegalArgumentException("Nonfinite tag_roll");
        }
        wire.f32(value.field_tag_roll);
        if(!Float.isFinite(value.field_tag_pitch))
        {
            throw new IllegalArgumentException("Nonfinite tag_pitch");
        }
        wire.f32(value.field_tag_pitch);
        if(!Float.isFinite(value.field_tag_yaw))
        {
            throw new IllegalArgumentException("Nonfinite tag_yaw");
        }
        wire.f32(value.field_tag_yaw);
        if(!Float.isFinite(value.field_base_roll))
        {
            throw new IllegalArgumentException("Nonfinite base_roll");
        }
        wire.f32(value.field_base_roll);
        if(!Float.isFinite(value.field_base_pitch))
        {
            throw new IllegalArgumentException("Nonfinite base_pitch");
        }
        wire.f32(value.field_base_pitch);
        if(!Float.isFinite(value.field_base_yaw))
        {
            throw new IllegalArgumentException("Nonfinite base_yaw");
        }
        wire.f32(value.field_base_yaw);
        if(value.field_joystick == null || value.field_joystick.length != 2)
        {
            throw new IllegalArgumentException("Invalid joystick extent");
        }
        for(int index = 0; index < value.field_joystick.length; index++)
        {
            if(!Float.isFinite(value.field_joystick[index]))
            {
                throw new IllegalArgumentException("Nonfinite joystick");
            }
            wire.f32(value.field_joystick[index]);
        }
        wire.u8(value.field_error_state);
        wire.u8(value.field_buttons);
        wire.u8(value.field_enabled_from_app);
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
    public static Ros2Unitree_goMsgUwbState readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros2Unitree_goMsgUwbState value = new Ros2Unitree_goMsgUwbState();
        value.field_version = new int[2];
        for(int index = 0; index < value.field_version.length; index++)
        {
            value.field_version[index] = wire.u8();
        }
        value.field_channel = wire.u8();
        value.field_joy_mode = wire.u8();
        value.field_orientation_est = wire.f32();
        if(!Float.isFinite(value.field_orientation_est))
        {
            throw new IllegalArgumentException("Nonfinite orientation_est");
        }
        value.field_pitch_est = wire.f32();
        if(!Float.isFinite(value.field_pitch_est))
        {
            throw new IllegalArgumentException("Nonfinite pitch_est");
        }
        value.field_distance_est = wire.f32();
        if(!Float.isFinite(value.field_distance_est))
        {
            throw new IllegalArgumentException("Nonfinite distance_est");
        }
        value.field_yaw_est = wire.f32();
        if(!Float.isFinite(value.field_yaw_est))
        {
            throw new IllegalArgumentException("Nonfinite yaw_est");
        }
        value.field_tag_roll = wire.f32();
        if(!Float.isFinite(value.field_tag_roll))
        {
            throw new IllegalArgumentException("Nonfinite tag_roll");
        }
        value.field_tag_pitch = wire.f32();
        if(!Float.isFinite(value.field_tag_pitch))
        {
            throw new IllegalArgumentException("Nonfinite tag_pitch");
        }
        value.field_tag_yaw = wire.f32();
        if(!Float.isFinite(value.field_tag_yaw))
        {
            throw new IllegalArgumentException("Nonfinite tag_yaw");
        }
        value.field_base_roll = wire.f32();
        if(!Float.isFinite(value.field_base_roll))
        {
            throw new IllegalArgumentException("Nonfinite base_roll");
        }
        value.field_base_pitch = wire.f32();
        if(!Float.isFinite(value.field_base_pitch))
        {
            throw new IllegalArgumentException("Nonfinite base_pitch");
        }
        value.field_base_yaw = wire.f32();
        if(!Float.isFinite(value.field_base_yaw))
        {
            throw new IllegalArgumentException("Nonfinite base_yaw");
        }
        value.field_joystick = new float[2];
        for(int index = 0; index < value.field_joystick.length; index++)
        {
            value.field_joystick[index] = wire.f32();
            if(!Float.isFinite(value.field_joystick[index]))
            {
                throw new IllegalArgumentException("Nonfinite joystick");
            }
        }
        value.field_error_state = wire.u8();
        value.field_buttons = wire.u8();
        value.field_enabled_from_app = wire.u8();
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
        return value;
    }
}
