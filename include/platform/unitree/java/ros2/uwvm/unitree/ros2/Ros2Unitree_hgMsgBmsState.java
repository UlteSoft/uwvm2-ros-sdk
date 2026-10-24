package uwvm.unitree.ros2;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 2 unitree_hg/msg/BmsState value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros2Unitree_hgMsgBmsState
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 161;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 161;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_b7ac163c4ab4786d37a9ec027767258adcfc06637ed8b4ef67e30c517397761d";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "unitree_hg/msg/BmsState";
    /** @brief Original native identity; empty native identity is unqualified. */
    public static final String NATIVE_IDENTITY = "";
    /** @brief Complete native field version_high; scalar, text bound 0. */
    public int field_version_high = 0;
    /** @brief Complete native field version_low; scalar, text bound 0. */
    public int field_version_low = 0;
    /** @brief Complete native field fn; scalar, text bound 0. */
    public int field_fn = 0;
    /** @brief Complete native field cell_vol; array capacity 40, text bound 0. */
    public int[] field_cell_vol = new int[40];
    /** @brief Complete native field bmsvoltage; array capacity 3, text bound 0. */
    public long[] field_bmsvoltage = new long[3];
    /** @brief Complete native field current; scalar, text bound 0. */
    public int field_current = 0;
    /** @brief Complete native field soc; scalar, text bound 0. */
    public int field_soc = 0;
    /** @brief Complete native field soh; scalar, text bound 0. */
    public int field_soh = 0;
    /** @brief Complete native field temperature; array capacity 12, text bound 0. */
    public short[] field_temperature = new short[12];
    /** @brief Complete native field cycle; scalar, text bound 0. */
    public int field_cycle = 0;
    /** @brief Complete native field manufacturer_date; scalar, text bound 0. */
    public int field_manufacturer_date = 0;
    /** @brief Complete native field bmsstate; array capacity 5, text bound 0. */
    public long[] field_bmsstate = new long[5];
    /** @brief Complete native field reserve; array capacity 3, text bound 0. */
    public long[] field_reserve = new long[3];

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros2Unitree_hgMsgBmsState()
    {
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros2Unitree_hgMsgBmsState value)
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
    public static Ros2Unitree_hgMsgBmsState decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros2Unitree_hgMsgBmsState value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros2Unitree_hgMsgBmsState value)
    {
        if(value == null)
        {
            throw new IllegalArgumentException("Null canonical record");
        }
        int start = wire.position();
        wire.u8(value.field_version_high);
        wire.u8(value.field_version_low);
        wire.u8(value.field_fn);
        if(value.field_cell_vol == null || value.field_cell_vol.length != 40)
        {
            throw new IllegalArgumentException("Invalid cell_vol extent");
        }
        for(int index = 0; index < value.field_cell_vol.length; index++)
        {
            wire.u16(value.field_cell_vol[index]);
        }
        if(value.field_bmsvoltage == null || value.field_bmsvoltage.length != 3)
        {
            throw new IllegalArgumentException("Invalid bmsvoltage extent");
        }
        for(int index = 0; index < value.field_bmsvoltage.length; index++)
        {
            wire.u32(value.field_bmsvoltage[index]);
        }
        wire.i32(value.field_current);
        wire.u8(value.field_soc);
        wire.u8(value.field_soh);
        if(value.field_temperature == null || value.field_temperature.length != 12)
        {
            throw new IllegalArgumentException("Invalid temperature extent");
        }
        for(int index = 0; index < value.field_temperature.length; index++)
        {
            wire.i16(value.field_temperature[index]);
        }
        wire.u16(value.field_cycle);
        wire.u16(value.field_manufacturer_date);
        if(value.field_bmsstate == null || value.field_bmsstate.length != 5)
        {
            throw new IllegalArgumentException("Invalid bmsstate extent");
        }
        for(int index = 0; index < value.field_bmsstate.length; index++)
        {
            wire.u32(value.field_bmsstate[index]);
        }
        if(value.field_reserve == null || value.field_reserve.length != 3)
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
    public static Ros2Unitree_hgMsgBmsState readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros2Unitree_hgMsgBmsState value = new Ros2Unitree_hgMsgBmsState();
        value.field_version_high = wire.u8();
        value.field_version_low = wire.u8();
        value.field_fn = wire.u8();
        value.field_cell_vol = new int[40];
        for(int index = 0; index < value.field_cell_vol.length; index++)
        {
            value.field_cell_vol[index] = wire.u16();
        }
        value.field_bmsvoltage = new long[3];
        for(int index = 0; index < value.field_bmsvoltage.length; index++)
        {
            value.field_bmsvoltage[index] = wire.u32();
        }
        value.field_current = wire.i32();
        value.field_soc = wire.u8();
        value.field_soh = wire.u8();
        value.field_temperature = new short[12];
        for(int index = 0; index < value.field_temperature.length; index++)
        {
            value.field_temperature[index] = wire.i16();
        }
        value.field_cycle = wire.u16();
        value.field_manufacturer_date = wire.u16();
        value.field_bmsstate = new long[5];
        for(int index = 0; index < value.field_bmsstate.length; index++)
        {
            value.field_bmsstate[index] = wire.u32();
        }
        value.field_reserve = new long[3];
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
