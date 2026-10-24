package uwvm.unitree.ros2;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 2 unitree_go/msg/LowState value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros2Unitree_goMsgLowState
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 1050;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 1050;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_56c01d52b26d7b2ef1fa7475fc8a353777ed6952a6f1ceee01da81f1edad3cab";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "unitree_go/msg/LowState";
    /** @brief Original native identity; empty native identity is unqualified. */
    public static final String NATIVE_IDENTITY = "";
    /** @brief Complete native field head; array capacity 2, text bound 0. */
    public int[] field_head = new int[2];
    /** @brief Complete native field level_flag; scalar, text bound 0. */
    public int field_level_flag = 0;
    /** @brief Complete native field frame_reserve; scalar, text bound 0. */
    public int field_frame_reserve = 0;
    /** @brief Complete native field sn; array capacity 2, text bound 0. */
    public long[] field_sn = new long[2];
    /** @brief Complete native field version; array capacity 2, text bound 0. */
    public long[] field_version = new long[2];
    /** @brief Complete native field bandwidth; scalar, text bound 0. */
    public int field_bandwidth = 0;
    /** @brief Complete native field imu_state; scalar, text bound 0. */
    public Ros2Unitree_goMsgIMUState field_imu_state = new Ros2Unitree_goMsgIMUState();
    /** @brief Complete native field motor_state; array capacity 20, text bound 0. */
    public Ros2Unitree_goMsgMotorState[] field_motor_state = new Ros2Unitree_goMsgMotorState[20];
    /** @brief Complete native field bms_state; scalar, text bound 0. */
    public Ros2Unitree_goMsgBmsState field_bms_state = new Ros2Unitree_goMsgBmsState();
    /** @brief Complete native field foot_force; array capacity 4, text bound 0. */
    public short[] field_foot_force = new short[4];
    /** @brief Complete native field foot_force_est; array capacity 4, text bound 0. */
    public short[] field_foot_force_est = new short[4];
    /** @brief Complete native field tick; scalar, text bound 0. */
    public long field_tick = 0L;
    /** @brief Complete native field wireless_remote; array capacity 40, text bound 0. */
    public int[] field_wireless_remote = new int[40];
    /** @brief Complete native field bit_flag; scalar, text bound 0. */
    public int field_bit_flag = 0;
    /** @brief Complete native field adc_reel; scalar, text bound 0. */
    public float field_adc_reel = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field temperature_ntc1; scalar, text bound 0. */
    public byte field_temperature_ntc1 = (byte)0;
    /** @brief Complete native field temperature_ntc2; scalar, text bound 0. */
    public byte field_temperature_ntc2 = (byte)0;
    /** @brief Complete native field power_v; scalar, text bound 0. */
    public float field_power_v = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field power_a; scalar, text bound 0. */
    public float field_power_a = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field fan_frequency; array capacity 4, text bound 0. */
    public int[] field_fan_frequency = new int[4];
    /** @brief Complete native field reserve; scalar, text bound 0. */
    public long field_reserve = 0L;
    /** @brief Complete native field crc; scalar, text bound 0. */
    public long field_crc = 0L;

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros2Unitree_goMsgLowState()
    {
        for(int index = 0; index < 20; ++index)
        {
            field_motor_state[index] = new Ros2Unitree_goMsgMotorState();
        }
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros2Unitree_goMsgLowState value)
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
    public static Ros2Unitree_goMsgLowState decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros2Unitree_goMsgLowState value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros2Unitree_goMsgLowState value)
    {
        if(value == null)
        {
            throw new IllegalArgumentException("Null canonical record");
        }
        int start = wire.position();
        if(value.field_head == null || value.field_head.length != 2)
        {
            throw new IllegalArgumentException("Invalid head extent");
        }
        for(int index = 0; index < value.field_head.length; index++)
        {
            wire.u8(value.field_head[index]);
        }
        wire.u8(value.field_level_flag);
        wire.u8(value.field_frame_reserve);
        if(value.field_sn == null || value.field_sn.length != 2)
        {
            throw new IllegalArgumentException("Invalid sn extent");
        }
        for(int index = 0; index < value.field_sn.length; index++)
        {
            wire.u32(value.field_sn[index]);
        }
        if(value.field_version == null || value.field_version.length != 2)
        {
            throw new IllegalArgumentException("Invalid version extent");
        }
        for(int index = 0; index < value.field_version.length; index++)
        {
            wire.u32(value.field_version[index]);
        }
        wire.u16(value.field_bandwidth);
        Ros2Unitree_goMsgIMUState.writeFields(wire, value.field_imu_state);
        if(value.field_motor_state == null || value.field_motor_state.length != 20)
        {
            throw new IllegalArgumentException("Invalid motor_state extent");
        }
        for(int index = 0; index < value.field_motor_state.length; index++)
        {
            Ros2Unitree_goMsgMotorState.writeFields(wire, value.field_motor_state[index]);
        }
        Ros2Unitree_goMsgBmsState.writeFields(wire, value.field_bms_state);
        if(value.field_foot_force == null || value.field_foot_force.length != 4)
        {
            throw new IllegalArgumentException("Invalid foot_force extent");
        }
        for(int index = 0; index < value.field_foot_force.length; index++)
        {
            wire.i16(value.field_foot_force[index]);
        }
        if(value.field_foot_force_est == null || value.field_foot_force_est.length != 4)
        {
            throw new IllegalArgumentException("Invalid foot_force_est extent");
        }
        for(int index = 0; index < value.field_foot_force_est.length; index++)
        {
            wire.i16(value.field_foot_force_est[index]);
        }
        wire.u32(value.field_tick);
        if(value.field_wireless_remote == null || value.field_wireless_remote.length != 40)
        {
            throw new IllegalArgumentException("Invalid wireless_remote extent");
        }
        for(int index = 0; index < value.field_wireless_remote.length; index++)
        {
            wire.u8(value.field_wireless_remote[index]);
        }
        wire.u8(value.field_bit_flag);
        if(!Float.isFinite(value.field_adc_reel))
        {
            throw new IllegalArgumentException("Nonfinite adc_reel");
        }
        wire.f32(value.field_adc_reel);
        wire.i8(value.field_temperature_ntc1);
        wire.i8(value.field_temperature_ntc2);
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
        if(value.field_fan_frequency == null || value.field_fan_frequency.length != 4)
        {
            throw new IllegalArgumentException("Invalid fan_frequency extent");
        }
        for(int index = 0; index < value.field_fan_frequency.length; index++)
        {
            wire.u16(value.field_fan_frequency[index]);
        }
        wire.u32(value.field_reserve);
        wire.u32(value.field_crc);
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
    public static Ros2Unitree_goMsgLowState readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros2Unitree_goMsgLowState value = new Ros2Unitree_goMsgLowState();
        value.field_head = new int[2];
        for(int index = 0; index < value.field_head.length; index++)
        {
            value.field_head[index] = wire.u8();
        }
        value.field_level_flag = wire.u8();
        value.field_frame_reserve = wire.u8();
        value.field_sn = new long[2];
        for(int index = 0; index < value.field_sn.length; index++)
        {
            value.field_sn[index] = wire.u32();
        }
        value.field_version = new long[2];
        for(int index = 0; index < value.field_version.length; index++)
        {
            value.field_version[index] = wire.u32();
        }
        value.field_bandwidth = wire.u16();
        value.field_imu_state = Ros2Unitree_goMsgIMUState.readFields(wire);
        value.field_motor_state = new Ros2Unitree_goMsgMotorState[20];
        for(int index = 0; index < value.field_motor_state.length; index++)
        {
            value.field_motor_state[index] = Ros2Unitree_goMsgMotorState.readFields(wire);
        }
        value.field_bms_state = Ros2Unitree_goMsgBmsState.readFields(wire);
        value.field_foot_force = new short[4];
        for(int index = 0; index < value.field_foot_force.length; index++)
        {
            value.field_foot_force[index] = wire.i16();
        }
        value.field_foot_force_est = new short[4];
        for(int index = 0; index < value.field_foot_force_est.length; index++)
        {
            value.field_foot_force_est[index] = wire.i16();
        }
        value.field_tick = wire.u32();
        value.field_wireless_remote = new int[40];
        for(int index = 0; index < value.field_wireless_remote.length; index++)
        {
            value.field_wireless_remote[index] = wire.u8();
        }
        value.field_bit_flag = wire.u8();
        value.field_adc_reel = wire.f32();
        if(!Float.isFinite(value.field_adc_reel))
        {
            throw new IllegalArgumentException("Nonfinite adc_reel");
        }
        value.field_temperature_ntc1 = wire.i8();
        value.field_temperature_ntc2 = wire.i8();
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
        value.field_fan_frequency = new int[4];
        for(int index = 0; index < value.field_fan_frequency.length; index++)
        {
            value.field_fan_frequency[index] = wire.u16();
        }
        value.field_reserve = wire.u32();
        value.field_crc = wire.u32();
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
        return value;
    }
}
