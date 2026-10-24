package uwvm.unitree.ros2;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 2 unitree_hg/msg/HandState value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros2Unitree_hgMsgHandState
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 5118;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 94;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_ea3f597b4453ca352d3a973920d0b3b29639e555cec273f6c63fc5fe95c905f6";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "unitree_hg/msg/HandState";
    /** @brief Original native identity; empty native identity is unqualified. */
    public static final String NATIVE_IDENTITY = "";
    /** @brief Complete native field motor_state; sequence capacity 32, text bound 0. */
    public Ros2Unitree_hgMsgMotorState[] field_motor_state = new Ros2Unitree_hgMsgMotorState[0];
    /** @brief Complete native field press_sensor_state; sequence capacity 32, text bound 0. */
    public Ros2Unitree_hgMsgPressSensorState[] field_press_sensor_state = new Ros2Unitree_hgMsgPressSensorState[0];
    /** @brief Complete native field imu_state; scalar, text bound 0. */
    public Ros2Unitree_hgMsgIMUState field_imu_state = new Ros2Unitree_hgMsgIMUState();
    /** @brief Complete native field power_v; scalar, text bound 0. */
    public float field_power_v = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field power_a; scalar, text bound 0. */
    public float field_power_a = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field system_v; scalar, text bound 0. */
    public float field_system_v = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field device_v; scalar, text bound 0. */
    public float field_device_v = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field error; array capacity 2, text bound 0. */
    public long[] field_error = new long[2];
    /** @brief Complete native field reserve; array capacity 2, text bound 0. */
    public long[] field_reserve = new long[2];

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros2Unitree_hgMsgHandState()
    {
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros2Unitree_hgMsgHandState value)
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
    public static Ros2Unitree_hgMsgHandState decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros2Unitree_hgMsgHandState value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros2Unitree_hgMsgHandState value)
    {
        if(value == null)
        {
            throw new IllegalArgumentException("Null canonical record");
        }
        int start = wire.position();
        if(value.field_motor_state == null || value.field_motor_state.length > 32)
        {
            throw new IllegalArgumentException("Invalid motor_state extent");
        }
        wire.u32((long)value.field_motor_state.length);
        for(int index = 0; index < value.field_motor_state.length; index++)
        {
            Ros2Unitree_hgMsgMotorState.writeFields(wire, value.field_motor_state[index]);
        }
        if(value.field_press_sensor_state == null || value.field_press_sensor_state.length > 32)
        {
            throw new IllegalArgumentException("Invalid press_sensor_state extent");
        }
        wire.u32((long)value.field_press_sensor_state.length);
        for(int index = 0; index < value.field_press_sensor_state.length; index++)
        {
            Ros2Unitree_hgMsgPressSensorState.writeFields(wire, value.field_press_sensor_state[index]);
        }
        Ros2Unitree_hgMsgIMUState.writeFields(wire, value.field_imu_state);
        if(!Float.isFinite(value.field_power_v))
        {
            throw new IllegalArgumentException("Nonfinite power_v");
        }
        wire.f32(value.field_power_v);
        if(!Float.isFinite(value.field_power_a))
        {
            throw new IllegalArgumentException("Nonfinite power_a");
        }
        wire.f32(value.field_power_a);
        if(!Float.isFinite(value.field_system_v))
        {
            throw new IllegalArgumentException("Nonfinite system_v");
        }
        wire.f32(value.field_system_v);
        if(!Float.isFinite(value.field_device_v))
        {
            throw new IllegalArgumentException("Nonfinite device_v");
        }
        wire.f32(value.field_device_v);
        if(value.field_error == null || value.field_error.length != 2)
        {
            throw new IllegalArgumentException("Invalid error extent");
        }
        for(int index = 0; index < value.field_error.length; index++)
        {
            wire.u32(value.field_error[index]);
        }
        if(value.field_reserve == null || value.field_reserve.length != 2)
        {
            throw new IllegalArgumentException("Invalid reserve extent");
        }
        for(int index = 0; index < value.field_reserve.length; index++)
        {
            wire.u32(value.field_reserve[index]);
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
    public static Ros2Unitree_hgMsgHandState readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros2Unitree_hgMsgHandState value = new Ros2Unitree_hgMsgHandState();
        value.field_motor_state = new Ros2Unitree_hgMsgMotorState[wire.count(32)];
        for(int index = 0; index < value.field_motor_state.length; index++)
        {
            value.field_motor_state[index] = Ros2Unitree_hgMsgMotorState.readFields(wire);
        }
        value.field_press_sensor_state = new Ros2Unitree_hgMsgPressSensorState[wire.count(32)];
        for(int index = 0; index < value.field_press_sensor_state.length; index++)
        {
            value.field_press_sensor_state[index] = Ros2Unitree_hgMsgPressSensorState.readFields(wire);
        }
        value.field_imu_state = Ros2Unitree_hgMsgIMUState.readFields(wire);
        value.field_power_v = wire.f32();
        if(!Float.isFinite(value.field_power_v))
        {
            throw new IllegalArgumentException("Nonfinite power_v");
        }
        value.field_power_a = wire.f32();
        if(!Float.isFinite(value.field_power_a))
        {
            throw new IllegalArgumentException("Nonfinite power_a");
        }
        value.field_system_v = wire.f32();
        if(!Float.isFinite(value.field_system_v))
        {
            throw new IllegalArgumentException("Nonfinite system_v");
        }
        value.field_device_v = wire.f32();
        if(!Float.isFinite(value.field_device_v))
        {
            throw new IllegalArgumentException("Nonfinite device_v");
        }
        value.field_error = new long[2];
        for(int index = 0; index < value.field_error.length; index++)
        {
            value.field_error[index] = wire.u32();
        }
        value.field_reserve = new long[2];
        for(int index = 0; index < value.field_reserve.length; index++)
        {
            value.field_reserve[index] = wire.u32();
        }
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
        return value;
    }
}
