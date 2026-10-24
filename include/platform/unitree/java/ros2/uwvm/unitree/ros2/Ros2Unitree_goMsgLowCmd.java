package uwvm.unitree.ros2;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 2 unitree_go/msg/LowCmd value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros2Unitree_goMsgLowCmd
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 749;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 749;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_efd061d06d38ecc686edb95d1a891c26860b16da1e35747fc97eeaf4a5d93d63";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "unitree_go/msg/LowCmd";
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
    /** @brief Complete native field motor_cmd; array capacity 20, text bound 0. */
    public Ros2Unitree_goMsgMotorCmd[] field_motor_cmd = new Ros2Unitree_goMsgMotorCmd[20];
    /** @brief Complete native field bms_cmd; scalar, text bound 0. */
    public Ros2Unitree_goMsgBmsCmd field_bms_cmd = new Ros2Unitree_goMsgBmsCmd();
    /** @brief Complete native field wireless_remote; array capacity 40, text bound 0. */
    public int[] field_wireless_remote = new int[40];
    /** @brief Complete native field led; array capacity 12, text bound 0. */
    public int[] field_led = new int[12];
    /** @brief Complete native field fan; array capacity 2, text bound 0. */
    public int[] field_fan = new int[2];
    /** @brief Complete native field gpio; scalar, text bound 0. */
    public int field_gpio = 0;
    /** @brief Complete native field reserve; scalar, text bound 0. */
    public long field_reserve = 0L;
    /** @brief Complete native field crc; scalar, text bound 0. */
    public long field_crc = 0L;

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros2Unitree_goMsgLowCmd()
    {
        for(int index = 0; index < 20; ++index)
        {
            field_motor_cmd[index] = new Ros2Unitree_goMsgMotorCmd();
        }
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros2Unitree_goMsgLowCmd value)
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
    public static Ros2Unitree_goMsgLowCmd decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros2Unitree_goMsgLowCmd value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros2Unitree_goMsgLowCmd value)
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
        if(value.field_motor_cmd == null || value.field_motor_cmd.length != 20)
        {
            throw new IllegalArgumentException("Invalid motor_cmd extent");
        }
        for(int index = 0; index < value.field_motor_cmd.length; index++)
        {
            Ros2Unitree_goMsgMotorCmd.writeFields(wire, value.field_motor_cmd[index]);
        }
        Ros2Unitree_goMsgBmsCmd.writeFields(wire, value.field_bms_cmd);
        if(value.field_wireless_remote == null || value.field_wireless_remote.length != 40)
        {
            throw new IllegalArgumentException("Invalid wireless_remote extent");
        }
        for(int index = 0; index < value.field_wireless_remote.length; index++)
        {
            wire.u8(value.field_wireless_remote[index]);
        }
        if(value.field_led == null || value.field_led.length != 12)
        {
            throw new IllegalArgumentException("Invalid led extent");
        }
        for(int index = 0; index < value.field_led.length; index++)
        {
            wire.u8(value.field_led[index]);
        }
        if(value.field_fan == null || value.field_fan.length != 2)
        {
            throw new IllegalArgumentException("Invalid fan extent");
        }
        for(int index = 0; index < value.field_fan.length; index++)
        {
            wire.u8(value.field_fan[index]);
        }
        wire.u8(value.field_gpio);
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
    public static Ros2Unitree_goMsgLowCmd readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros2Unitree_goMsgLowCmd value = new Ros2Unitree_goMsgLowCmd();
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
        value.field_motor_cmd = new Ros2Unitree_goMsgMotorCmd[20];
        for(int index = 0; index < value.field_motor_cmd.length; index++)
        {
            value.field_motor_cmd[index] = Ros2Unitree_goMsgMotorCmd.readFields(wire);
        }
        value.field_bms_cmd = Ros2Unitree_goMsgBmsCmd.readFields(wire);
        value.field_wireless_remote = new int[40];
        for(int index = 0; index < value.field_wireless_remote.length; index++)
        {
            value.field_wireless_remote[index] = wire.u8();
        }
        value.field_led = new int[12];
        for(int index = 0; index < value.field_led.length; index++)
        {
            value.field_led[index] = wire.u8();
        }
        value.field_fan = new int[2];
        for(int index = 0; index < value.field_fan.length; index++)
        {
            value.field_fan[index] = wire.u8();
        }
        value.field_gpio = wire.u8();
        value.field_reserve = wire.u32();
        value.field_crc = wire.u32();
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
        return value;
    }
}
