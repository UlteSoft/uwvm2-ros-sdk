package uwvm.unitree.ros2;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 2 unitree_go/msg/SportModeState value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros2Unitree_goMsgSportModeState
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 227;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 227;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_2935b9d838087267840b379582862a15c2e1a72fe8ad2bcbf8f19af2f8054760";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "unitree_go/msg/SportModeState";
    /** @brief Original native identity; empty native identity is unqualified. */
    public static final String NATIVE_IDENTITY = "";
    /** @brief Complete native field stamp; scalar, text bound 0. */
    public Ros2Unitree_goMsgTimeSpec field_stamp = new Ros2Unitree_goMsgTimeSpec();
    /** @brief Complete native field error_code; scalar, text bound 0. */
    public long field_error_code = 0L;
    /** @brief Complete native field imu_state; scalar, text bound 0. */
    public Ros2Unitree_goMsgIMUState field_imu_state = new Ros2Unitree_goMsgIMUState();
    /** @brief Complete native field mode; scalar, text bound 0. */
    public int field_mode = 0;
    /** @brief Complete native field progress; scalar, text bound 0. */
    public float field_progress = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field gait_type; scalar, text bound 0. */
    public int field_gait_type = 0;
    /** @brief Complete native field foot_raise_height; scalar, text bound 0. */
    public float field_foot_raise_height = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field position; array capacity 3, text bound 0. */
    public float[] field_position = new float[3];
    /** @brief Complete native field body_height; scalar, text bound 0. */
    public float field_body_height = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field velocity; array capacity 3, text bound 0. */
    public float[] field_velocity = new float[3];
    /** @brief Complete native field yaw_speed; scalar, text bound 0. */
    public float field_yaw_speed = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field range_obstacle; array capacity 4, text bound 0. */
    public float[] field_range_obstacle = new float[4];
    /** @brief Complete native field foot_force; array capacity 4, text bound 0. */
    public short[] field_foot_force = new short[4];
    /** @brief Complete native field foot_position_body; array capacity 12, text bound 0. */
    public float[] field_foot_position_body = new float[12];
    /** @brief Complete native field foot_speed_body; array capacity 12, text bound 0. */
    public float[] field_foot_speed_body = new float[12];

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros2Unitree_goMsgSportModeState()
    {
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros2Unitree_goMsgSportModeState value)
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
    public static Ros2Unitree_goMsgSportModeState decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros2Unitree_goMsgSportModeState value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros2Unitree_goMsgSportModeState value)
    {
        if(value == null)
        {
            throw new IllegalArgumentException("Null canonical record");
        }
        int start = wire.position();
        Ros2Unitree_goMsgTimeSpec.writeFields(wire, value.field_stamp);
        wire.u32(value.field_error_code);
        Ros2Unitree_goMsgIMUState.writeFields(wire, value.field_imu_state);
        wire.u8(value.field_mode);
        if(!Float.isFinite(value.field_progress))
        {
            throw new IllegalArgumentException("Nonfinite progress");
        }
        wire.f32(value.field_progress);
        wire.u8(value.field_gait_type);
        if(!Float.isFinite(value.field_foot_raise_height))
        {
            throw new IllegalArgumentException("Nonfinite foot_raise_height");
        }
        wire.f32(value.field_foot_raise_height);
        if(value.field_position == null || value.field_position.length != 3)
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
        if(!Float.isFinite(value.field_body_height))
        {
            throw new IllegalArgumentException("Nonfinite body_height");
        }
        wire.f32(value.field_body_height);
        if(value.field_velocity == null || value.field_velocity.length != 3)
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
        if(value.field_range_obstacle == null || value.field_range_obstacle.length != 4)
        {
            throw new IllegalArgumentException("Invalid range_obstacle extent");
        }
        for(int index = 0; index < value.field_range_obstacle.length; index++)
        {
            if(!Float.isFinite(value.field_range_obstacle[index]))
            {
                throw new IllegalArgumentException("Nonfinite range_obstacle");
            }
            wire.f32(value.field_range_obstacle[index]);
        }
        if(value.field_foot_force == null || value.field_foot_force.length != 4)
        {
            throw new IllegalArgumentException("Invalid foot_force extent");
        }
        for(int index = 0; index < value.field_foot_force.length; index++)
        {
            wire.i16(value.field_foot_force[index]);
        }
        if(value.field_foot_position_body == null || value.field_foot_position_body.length != 12)
        {
            throw new IllegalArgumentException("Invalid foot_position_body extent");
        }
        for(int index = 0; index < value.field_foot_position_body.length; index++)
        {
            if(!Float.isFinite(value.field_foot_position_body[index]))
            {
                throw new IllegalArgumentException("Nonfinite foot_position_body");
            }
            wire.f32(value.field_foot_position_body[index]);
        }
        if(value.field_foot_speed_body == null || value.field_foot_speed_body.length != 12)
        {
            throw new IllegalArgumentException("Invalid foot_speed_body extent");
        }
        for(int index = 0; index < value.field_foot_speed_body.length; index++)
        {
            if(!Float.isFinite(value.field_foot_speed_body[index]))
            {
                throw new IllegalArgumentException("Nonfinite foot_speed_body");
            }
            wire.f32(value.field_foot_speed_body[index]);
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
    public static Ros2Unitree_goMsgSportModeState readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros2Unitree_goMsgSportModeState value = new Ros2Unitree_goMsgSportModeState();
        value.field_stamp = Ros2Unitree_goMsgTimeSpec.readFields(wire);
        value.field_error_code = wire.u32();
        value.field_imu_state = Ros2Unitree_goMsgIMUState.readFields(wire);
        value.field_mode = wire.u8();
        value.field_progress = wire.f32();
        if(!Float.isFinite(value.field_progress))
        {
            throw new IllegalArgumentException("Nonfinite progress");
        }
        value.field_gait_type = wire.u8();
        value.field_foot_raise_height = wire.f32();
        if(!Float.isFinite(value.field_foot_raise_height))
        {
            throw new IllegalArgumentException("Nonfinite foot_raise_height");
        }
        value.field_position = new float[3];
        for(int index = 0; index < value.field_position.length; index++)
        {
            value.field_position[index] = wire.f32();
            if(!Float.isFinite(value.field_position[index]))
            {
                throw new IllegalArgumentException("Nonfinite position");
            }
        }
        value.field_body_height = wire.f32();
        if(!Float.isFinite(value.field_body_height))
        {
            throw new IllegalArgumentException("Nonfinite body_height");
        }
        value.field_velocity = new float[3];
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
        value.field_range_obstacle = new float[4];
        for(int index = 0; index < value.field_range_obstacle.length; index++)
        {
            value.field_range_obstacle[index] = wire.f32();
            if(!Float.isFinite(value.field_range_obstacle[index]))
            {
                throw new IllegalArgumentException("Nonfinite range_obstacle");
            }
        }
        value.field_foot_force = new short[4];
        for(int index = 0; index < value.field_foot_force.length; index++)
        {
            value.field_foot_force[index] = wire.i16();
        }
        value.field_foot_position_body = new float[12];
        for(int index = 0; index < value.field_foot_position_body.length; index++)
        {
            value.field_foot_position_body[index] = wire.f32();
            if(!Float.isFinite(value.field_foot_position_body[index]))
            {
                throw new IllegalArgumentException("Nonfinite foot_position_body");
            }
        }
        value.field_foot_speed_body = new float[12];
        for(int index = 0; index < value.field_foot_speed_body.length; index++)
        {
            value.field_foot_speed_body[index] = wire.f32();
            if(!Float.isFinite(value.field_foot_speed_body[index]))
            {
                throw new IllegalArgumentException("Nonfinite foot_speed_body");
            }
        }
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
        return value;
    }
}
