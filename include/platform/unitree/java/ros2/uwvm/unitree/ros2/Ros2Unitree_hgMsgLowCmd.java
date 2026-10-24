package uwvm.unitree.ros2;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 2 unitree_hg/msg/LowCmd value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros2Unitree_hgMsgLowCmd
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 897;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 897;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_8303ac6e2e3273251662d31daf966a11ced5b5ac10b93aa6253eebc56f4ec461";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "unitree_hg/msg/LowCmd";
    /** @brief Original native identity; empty native identity is unqualified. */
    public static final String NATIVE_IDENTITY = "";
    /** @brief Complete native field mode_pr; scalar, text bound 0. */
    public int field_mode_pr = 0;
    /** @brief Complete native field mode_machine; scalar, text bound 0. */
    public int field_mode_machine = 0;
    /** @brief Complete native field motor_cmd; array capacity 35, text bound 0. */
    public Ros2Unitree_hgMsgMotorCmd[] field_motor_cmd = new Ros2Unitree_hgMsgMotorCmd[35];
    /** @brief Complete native field reserve; array capacity 4, text bound 0. */
    public long[] field_reserve = new long[4];
    /** @brief Complete native field crc; scalar, text bound 0. */
    public long field_crc = 0L;

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros2Unitree_hgMsgLowCmd()
    {
        for(int index = 0; index < 35; ++index)
        {
            field_motor_cmd[index] = new Ros2Unitree_hgMsgMotorCmd();
        }
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros2Unitree_hgMsgLowCmd value)
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
    public static Ros2Unitree_hgMsgLowCmd decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros2Unitree_hgMsgLowCmd value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros2Unitree_hgMsgLowCmd value)
    {
        if(value == null)
        {
            throw new IllegalArgumentException("Null canonical record");
        }
        int start = wire.position();
        wire.u8(value.field_mode_pr);
        wire.u8(value.field_mode_machine);
        if(value.field_motor_cmd == null || value.field_motor_cmd.length != 35)
        {
            throw new IllegalArgumentException("Invalid motor_cmd extent");
        }
        for(int index = 0; index < value.field_motor_cmd.length; index++)
        {
            Ros2Unitree_hgMsgMotorCmd.writeFields(wire, value.field_motor_cmd[index]);
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
    public static Ros2Unitree_hgMsgLowCmd readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros2Unitree_hgMsgLowCmd value = new Ros2Unitree_hgMsgLowCmd();
        value.field_mode_pr = wire.u8();
        value.field_mode_machine = wire.u8();
        value.field_motor_cmd = new Ros2Unitree_hgMsgMotorCmd[35];
        for(int index = 0; index < value.field_motor_cmd.length; index++)
        {
            value.field_motor_cmd[index] = Ros2Unitree_hgMsgMotorCmd.readFields(wire);
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
