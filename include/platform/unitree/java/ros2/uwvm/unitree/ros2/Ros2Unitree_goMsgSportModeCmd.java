package uwvm.unitree.ros2;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 2 unitree_go/msg/SportModeCmd value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros2Unitree_goMsgSportModeCmd
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 887;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 887;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_cf90a065007b9b8cedde3f0b58aa79da3b39a1456dc1b5297f4fe799d92ff22c";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "unitree_go/msg/SportModeCmd";
    /** @brief Original native identity; empty native identity is unqualified. */
    public static final String NATIVE_IDENTITY = "";
    /** @brief Complete native field mode; scalar, text bound 0. */
    public int field_mode = 0;
    /** @brief Complete native field gait_type; scalar, text bound 0. */
    public int field_gait_type = 0;
    /** @brief Complete native field speed_level; scalar, text bound 0. */
    public int field_speed_level = 0;
    /** @brief Complete native field foot_raise_height; scalar, text bound 0. */
    public float field_foot_raise_height = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field body_height; scalar, text bound 0. */
    public float field_body_height = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field position; array capacity 2, text bound 0. */
    public float[] field_position = new float[2];
    /** @brief Complete native field euler; array capacity 3, text bound 0. */
    public float[] field_euler = new float[3];
    /** @brief Complete native field velocity; array capacity 2, text bound 0. */
    public float[] field_velocity = new float[2];
    /** @brief Complete native field yaw_speed; scalar, text bound 0. */
    public float field_yaw_speed = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field bms_cmd; scalar, text bound 0. */
    public Ros2Unitree_goMsgBmsCmd field_bms_cmd = new Ros2Unitree_goMsgBmsCmd();
    /** @brief Complete native field path_point; array capacity 30, text bound 0. */
    public Ros2Unitree_goMsgPathPoint[] field_path_point = new Ros2Unitree_goMsgPathPoint[30];

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros2Unitree_goMsgSportModeCmd()
    {
        for(int index = 0; index < 30; ++index)
        {
            field_path_point[index] = new Ros2Unitree_goMsgPathPoint();
        }
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros2Unitree_goMsgSportModeCmd value)
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
    public static Ros2Unitree_goMsgSportModeCmd decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros2Unitree_goMsgSportModeCmd value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros2Unitree_goMsgSportModeCmd value)
    {
        if(value == null)
        {
            throw new IllegalArgumentException("Null canonical record");
        }
        int start = wire.position();
        wire.u8(value.field_mode);
        wire.u8(value.field_gait_type);
        wire.u8(value.field_speed_level);
        if(!Float.isFinite(value.field_foot_raise_height))
        {
            throw new IllegalArgumentException("Nonfinite foot_raise_height");
        }
        wire.f32(value.field_foot_raise_height);
        if(!Float.isFinite(value.field_body_height))
        {
            throw new IllegalArgumentException("Nonfinite body_height");
        }
        wire.f32(value.field_body_height);
        if(value.field_position == null || value.field_position.length != 2)
        {
            throw new IllegalArgumentException("Invalid position extent");
        }
        for(int index = 0; index < value.field_position.length; index++)
        {
            if(!Float.isFinite(value.field_position[index]))
            {
                throw new IllegalArgumentException("Nonfinite position");
            }
            wire.f32(value.field_position[index]);
        }
        if(value.field_euler == null || value.field_euler.length != 3)
        {
            throw new IllegalArgumentException("Invalid euler extent");
        }
        for(int index = 0; index < value.field_euler.length; index++)
        {
            if(!Float.isFinite(value.field_euler[index]))
            {
                throw new IllegalArgumentException("Nonfinite euler");
            }
            wire.f32(value.field_euler[index]);
        }
        if(value.field_velocity == null || value.field_velocity.length != 2)
        {
            throw new IllegalArgumentException("Invalid velocity extent");
        }
        for(int index = 0; index < value.field_velocity.length; index++)
        {
            if(!Float.isFinite(value.field_velocity[index]))
            {
                throw new IllegalArgumentException("Nonfinite velocity");
            }
            wire.f32(value.field_velocity[index]);
        }
        if(!Float.isFinite(value.field_yaw_speed))
        {
            throw new IllegalArgumentException("Nonfinite yaw_speed");
        }
        wire.f32(value.field_yaw_speed);
        Ros2Unitree_goMsgBmsCmd.writeFields(wire, value.field_bms_cmd);
        if(value.field_path_point == null || value.field_path_point.length != 30)
        {
            throw new IllegalArgumentException("Invalid path_point extent");
        }
        for(int index = 0; index < value.field_path_point.length; index++)
        {
            Ros2Unitree_goMsgPathPoint.writeFields(wire, value.field_path_point[index]);
        }
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
    public static Ros2Unitree_goMsgSportModeCmd readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros2Unitree_goMsgSportModeCmd value = new Ros2Unitree_goMsgSportModeCmd();
        value.field_mode = wire.u8();
        value.field_gait_type = wire.u8();
        value.field_speed_level = wire.u8();
        value.field_foot_raise_height = wire.f32();
        if(!Float.isFinite(value.field_foot_raise_height))
        {
            throw new IllegalArgumentException("Nonfinite foot_raise_height");
        }
        value.field_body_height = wire.f32();
        if(!Float.isFinite(value.field_body_height))
        {
            throw new IllegalArgumentException("Nonfinite body_height");
        }
        value.field_position = new float[2];
        for(int index = 0; index < value.field_position.length; index++)
        {
            value.field_position[index] = wire.f32();
            if(!Float.isFinite(value.field_position[index]))
            {
                throw new IllegalArgumentException("Nonfinite position");
            }
        }
        value.field_euler = new float[3];
        for(int index = 0; index < value.field_euler.length; index++)
        {
            value.field_euler[index] = wire.f32();
            if(!Float.isFinite(value.field_euler[index]))
            {
                throw new IllegalArgumentException("Nonfinite euler");
            }
        }
        value.field_velocity = new float[2];
        for(int index = 0; index < value.field_velocity.length; index++)
        {
            value.field_velocity[index] = wire.f32();
            if(!Float.isFinite(value.field_velocity[index]))
            {
                throw new IllegalArgumentException("Nonfinite velocity");
            }
        }
        value.field_yaw_speed = wire.f32();
        if(!Float.isFinite(value.field_yaw_speed))
        {
            throw new IllegalArgumentException("Nonfinite yaw_speed");
        }
        value.field_bms_cmd = Ros2Unitree_goMsgBmsCmd.readFields(wire);
        value.field_path_point = new Ros2Unitree_goMsgPathPoint[30];
        for(int index = 0; index < value.field_path_point.length; index++)
        {
            value.field_path_point[index] = Ros2Unitree_goMsgPathPoint.readFields(wire);
        }
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
        return value;
    }
}
