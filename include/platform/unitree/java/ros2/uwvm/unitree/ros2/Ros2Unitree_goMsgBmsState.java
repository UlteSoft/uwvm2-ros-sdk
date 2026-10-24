package uwvm.unitree.ros2;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 2 unitree_go/msg/BmsState value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros2Unitree_goMsgBmsState
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 44;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 44;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_7e4d5e3c0a2eddddf39c68b73bff5f7721e1623b0a9322dce23d3e551a07f5b0";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "unitree_go/msg/BmsState";
    /** @brief Original native identity; empty native identity is unqualified. */
    public static final String NATIVE_IDENTITY = "";
    /** @brief Complete native field version_high; scalar, text bound 0. */
    public int field_version_high = 0;
    /** @brief Complete native field version_low; scalar, text bound 0. */
    public int field_version_low = 0;
    /** @brief Complete native field status; scalar, text bound 0. */
    public int field_status = 0;
    /** @brief Complete native field soc; scalar, text bound 0. */
    public int field_soc = 0;
    /** @brief Complete native field current; scalar, text bound 0. */
    public int field_current = 0;
    /** @brief Complete native field cycle; scalar, text bound 0. */
    public int field_cycle = 0;
    /** @brief Complete native field bq_ntc; array capacity 2, text bound 0. */
    public byte[] field_bq_ntc = new byte[2];
    /** @brief Complete native field mcu_ntc; array capacity 2, text bound 0. */
    public byte[] field_mcu_ntc = new byte[2];
    /** @brief Complete native field cell_vol; array capacity 15, text bound 0. */
    public int[] field_cell_vol = new int[15];

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros2Unitree_goMsgBmsState()
    {
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros2Unitree_goMsgBmsState value)
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
    public static Ros2Unitree_goMsgBmsState decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros2Unitree_goMsgBmsState value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros2Unitree_goMsgBmsState value)
    {
        if(value == null)
        {
            throw new IllegalArgumentException("Null canonical record");
        }
        int start = wire.position();
        wire.u8(value.field_version_high);
        wire.u8(value.field_version_low);
        wire.u8(value.field_status);
        wire.u8(value.field_soc);
        wire.i32(value.field_current);
        wire.u16(value.field_cycle);
        if(value.field_bq_ntc == null || value.field_bq_ntc.length != 2)
        {
            throw new IllegalArgumentException("Invalid bq_ntc extent");
        }
        for(int index = 0; index < value.field_bq_ntc.length; index++)
        {
            wire.i8(value.field_bq_ntc[index]);
        }
        if(value.field_mcu_ntc == null || value.field_mcu_ntc.length != 2)
        {
            throw new IllegalArgumentException("Invalid mcu_ntc extent");
        }
        for(int index = 0; index < value.field_mcu_ntc.length; index++)
        {
            wire.i8(value.field_mcu_ntc[index]);
        }
        if(value.field_cell_vol == null || value.field_cell_vol.length != 15)
        {
            throw new IllegalArgumentException("Invalid cell_vol extent");
        }
        for(int index = 0; index < value.field_cell_vol.length; index++)
        {
            wire.u16(value.field_cell_vol[index]);
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
    public static Ros2Unitree_goMsgBmsState readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros2Unitree_goMsgBmsState value = new Ros2Unitree_goMsgBmsState();
        value.field_version_high = wire.u8();
        value.field_version_low = wire.u8();
        value.field_status = wire.u8();
        value.field_soc = wire.u8();
        value.field_current = wire.i32();
        value.field_cycle = wire.u16();
        value.field_bq_ntc = new byte[2];
        for(int index = 0; index < value.field_bq_ntc.length; index++)
        {
            value.field_bq_ntc[index] = wire.i8();
        }
        value.field_mcu_ntc = new byte[2];
        for(int index = 0; index < value.field_mcu_ntc.length; index++)
        {
            value.field_mcu_ntc[index] = wire.i8();
        }
        value.field_cell_vol = new int[15];
        for(int index = 0; index < value.field_cell_vol.length; index++)
        {
            value.field_cell_vol[index] = wire.u16();
        }
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
        return value;
    }
}
