package uwvm.unitree.ros2;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 2 unitree_hg/msg/LowState value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros2Unitree_hgMsgLowState
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 1983;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 1983;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_7eed2692672f536a476643f1d3a07affc8e5b3272663e3d282c199fff1c2fa1d";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "unitree_hg/msg/LowState";
    /** @brief Original native identity; empty native identity is unqualified. */
    public static final String NATIVE_IDENTITY = "";
    /** @brief Complete native field version; array capacity 2, text bound 0. */
    public long[] field_version = new long[2];
    /** @brief Complete native field mode_pr; scalar, text bound 0. */
    public int field_mode_pr = 0;
    /** @brief Complete native field mode_machine; scalar, text bound 0. */
    public int field_mode_machine = 0;
    /** @brief Complete native field tick; scalar, text bound 0. */
    public long field_tick = 0L;
    /** @brief Complete native field imu_state; scalar, text bound 0. */
    public Ros2Unitree_hgMsgIMUState field_imu_state = new Ros2Unitree_hgMsgIMUState();
    /** @brief Complete native field motor_state; array capacity 35, text bound 0. */
    public Ros2Unitree_hgMsgMotorState[] field_motor_state = new Ros2Unitree_hgMsgMotorState[35];
    /** @brief Complete native field wireless_remote; array capacity 40, text bound 0. */
    public int[] field_wireless_remote = new int[40];
    /** @brief Complete native field reserve; array capacity 4, text bound 0. */
    public long[] field_reserve = new long[4];
    /** @brief Complete native field crc; scalar, text bound 0. */
    public long field_crc = 0L;

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros2Unitree_hgMsgLowState()
    {
        for(int index = 0; index < 35; ++index)
        {
            field_motor_state[index] = new Ros2Unitree_hgMsgMotorState();
        }
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros2Unitree_hgMsgLowState value)
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
    public static Ros2Unitree_hgMsgLowState decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros2Unitree_hgMsgLowState value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros2Unitree_hgMsgLowState value)
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
            wire.u32(value.field_version[index]);
        }
        wire.u8(value.field_mode_pr);
        wire.u8(value.field_mode_machine);
        wire.u32(value.field_tick);
        Ros2Unitree_hgMsgIMUState.writeFields(wire, value.field_imu_state);
        if(value.field_motor_state == null || value.field_motor_state.length != 35)
        {
            throw new IllegalArgumentException("Invalid motor_state extent");
        }
        for(int index = 0; index < value.field_motor_state.length; index++)
        {
            Ros2Unitree_hgMsgMotorState.writeFields(wire, value.field_motor_state[index]);
        }
        if(value.field_wireless_remote == null || value.field_wireless_remote.length != 40)
        {
            throw new IllegalArgumentException("Invalid wireless_remote extent");
        }
        for(int index = 0; index < value.field_wireless_remote.length; index++)
        {
            wire.u8(value.field_wireless_remote[index]);
        }
        if(value.field_reserve == null || value.field_reserve.length != 4)
        {
            throw new IllegalArgumentException("Invalid reserve extent");
        }
        for(int index = 0; index < value.field_reserve.length; index++)
        {
            wire.u32(value.field_reserve[index]);
        }
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
    public static Ros2Unitree_hgMsgLowState readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros2Unitree_hgMsgLowState value = new Ros2Unitree_hgMsgLowState();
        value.field_version = new long[2];
        for(int index = 0; index < value.field_version.length; index++)
        {
            value.field_version[index] = wire.u32();
        }
        value.field_mode_pr = wire.u8();
        value.field_mode_machine = wire.u8();
        value.field_tick = wire.u32();
        value.field_imu_state = Ros2Unitree_hgMsgIMUState.readFields(wire);
        value.field_motor_state = new Ros2Unitree_hgMsgMotorState[35];
        for(int index = 0; index < value.field_motor_state.length; index++)
        {
            value.field_motor_state[index] = Ros2Unitree_hgMsgMotorState.readFields(wire);
        }
        value.field_wireless_remote = new int[40];
        for(int index = 0; index < value.field_wireless_remote.length; index++)
        {
            value.field_wireless_remote[index] = wire.u8();
        }
        value.field_reserve = new long[4];
        for(int index = 0; index < value.field_reserve.length; index++)
        {
            value.field_reserve[index] = wire.u32();
        }
        value.field_crc = wire.u32();
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
        return value;
    }
}
