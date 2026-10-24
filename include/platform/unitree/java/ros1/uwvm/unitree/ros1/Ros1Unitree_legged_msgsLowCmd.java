package uwvm.unitree.ros1;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 1 unitree_legged_msgs/LowCmd value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros1Unitree_legged_msgsLowCmd
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 734;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 734;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_11d3ac7c497f01fbf6624c39ec71fa613c462cd62acb20c1f263cdde672e9181";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "unitree_legged_msgs/LowCmd";
    /** @brief Original native identity; empty native identity is unqualified. */
    public static final String NATIVE_IDENTITY = "";
    /** @brief Complete native field head; array capacity 2, text bound 0. */
    public int[] field_head = new int[2];
    /** @brief Complete native field levelFlag; scalar, text bound 0. */
    public int field_levelFlag = 0;
    /** @brief Complete native field frameReserve; scalar, text bound 0. */
    public int field_frameReserve = 0;
    /** @brief Complete native field SN; array capacity 2, text bound 0. */
    public long[] field_SN = new long[2];
    /** @brief Complete native field version; array capacity 2, text bound 0. */
    public long[] field_version = new long[2];
    /** @brief Complete native field bandWidth; scalar, text bound 0. */
    public int field_bandWidth = 0;
    /** @brief Complete native field motorCmd; array capacity 20, text bound 0. */
    public Ros1Unitree_legged_msgsMotorCmd[] field_motorCmd = new Ros1Unitree_legged_msgsMotorCmd[20];
    /** @brief Complete native field bms; scalar, text bound 0. */
    public Ros1Unitree_legged_msgsBmsCmd field_bms = new Ros1Unitree_legged_msgsBmsCmd();
    /** @brief Complete native field wirelessRemote; array capacity 40, text bound 0. */
    public int[] field_wirelessRemote = new int[40];
    /** @brief Complete native field reserve; scalar, text bound 0. */
    public long field_reserve = 0L;
    /** @brief Complete native field crc; scalar, text bound 0. */
    public long field_crc = 0L;

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros1Unitree_legged_msgsLowCmd()
    {
        for(int index = 0; index < 20; ++index)
        {
            field_motorCmd[index] = new Ros1Unitree_legged_msgsMotorCmd();
        }
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros1Unitree_legged_msgsLowCmd value)
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
    public static Ros1Unitree_legged_msgsLowCmd decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros1Unitree_legged_msgsLowCmd value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros1Unitree_legged_msgsLowCmd value)
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
        wire.u8(value.field_levelFlag);
        wire.u8(value.field_frameReserve);
        if(value.field_SN == null || value.field_SN.length != 2)
        {
            throw new IllegalArgumentException("Invalid SN extent");
        }
        for(int index = 0; index < value.field_SN.length; index++)
        {
            wire.u32(value.field_SN[index]);
        }
        if(value.field_version == null || value.field_version.length != 2)
        {
            throw new IllegalArgumentException("Invalid version extent");
        }
        for(int index = 0; index < value.field_version.length; index++)
        {
            wire.u32(value.field_version[index]);
        }
        wire.u16(value.field_bandWidth);
        if(value.field_motorCmd == null || value.field_motorCmd.length != 20)
        {
            throw new IllegalArgumentException("Invalid motorCmd extent");
        }
        for(int index = 0; index < value.field_motorCmd.length; index++)
        {
            Ros1Unitree_legged_msgsMotorCmd.writeFields(wire, value.field_motorCmd[index]);
        }
        Ros1Unitree_legged_msgsBmsCmd.writeFields(wire, value.field_bms);
        if(value.field_wirelessRemote == null || value.field_wirelessRemote.length != 40)
        {
            throw new IllegalArgumentException("Invalid wirelessRemote extent");
        }
        for(int index = 0; index < value.field_wirelessRemote.length; index++)
        {
            wire.u8(value.field_wirelessRemote[index]);
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
    public static Ros1Unitree_legged_msgsLowCmd readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros1Unitree_legged_msgsLowCmd value = new Ros1Unitree_legged_msgsLowCmd();
        value.field_head = new int[2];
        for(int index = 0; index < value.field_head.length; index++)
        {
            value.field_head[index] = wire.u8();
        }
        value.field_levelFlag = wire.u8();
        value.field_frameReserve = wire.u8();
        value.field_SN = new long[2];
        for(int index = 0; index < value.field_SN.length; index++)
        {
            value.field_SN[index] = wire.u32();
        }
        value.field_version = new long[2];
        for(int index = 0; index < value.field_version.length; index++)
        {
            value.field_version[index] = wire.u32();
        }
        value.field_bandWidth = wire.u16();
        value.field_motorCmd = new Ros1Unitree_legged_msgsMotorCmd[20];
        for(int index = 0; index < value.field_motorCmd.length; index++)
        {
            value.field_motorCmd[index] = Ros1Unitree_legged_msgsMotorCmd.readFields(wire);
        }
        value.field_bms = Ros1Unitree_legged_msgsBmsCmd.readFields(wire);
        value.field_wirelessRemote = new int[40];
        for(int index = 0; index < value.field_wirelessRemote.length; index++)
        {
            value.field_wirelessRemote[index] = wire.u8();
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
