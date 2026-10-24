package uwvm.unitree.ros1;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 1 unitree_legged_msgs/BmsState value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros1Unitree_legged_msgsBmsState
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 34;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 34;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_ef0f93501f54d0ff760039d86bd1ba1739cb0c888b3a873611679484ccec094a";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "unitree_legged_msgs/BmsState";
    /** @brief Original native identity; empty native identity is unqualified. */
    public static final String NATIVE_IDENTITY = "";
    /** @brief Complete native field version_h; scalar, text bound 0. */
    public int field_version_h = 0;
    /** @brief Complete native field version_l; scalar, text bound 0. */
    public int field_version_l = 0;
    /** @brief Complete native field bms_status; scalar, text bound 0. */
    public int field_bms_status = 0;
    /** @brief Complete native field SOC; scalar, text bound 0. */
    public int field_SOC = 0;
    /** @brief Complete native field current; scalar, text bound 0. */
    public int field_current = 0;
    /** @brief Complete native field cycle; scalar, text bound 0. */
    public int field_cycle = 0;
    /** @brief Complete native field BQ_NTC; array capacity 2, text bound 0. */
    public byte[] field_BQ_NTC = new byte[2];
    /** @brief Complete native field MCU_NTC; array capacity 2, text bound 0. */
    public byte[] field_MCU_NTC = new byte[2];
    /** @brief Complete native field cell_vol; array capacity 10, text bound 0. */
    public int[] field_cell_vol = new int[10];

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros1Unitree_legged_msgsBmsState()
    {
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros1Unitree_legged_msgsBmsState value)
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
    public static Ros1Unitree_legged_msgsBmsState decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros1Unitree_legged_msgsBmsState value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros1Unitree_legged_msgsBmsState value)
    {
        if(value == null)
        {
            throw new IllegalArgumentException("Null canonical record");
        }
        int start = wire.position();
        wire.u8(value.field_version_h);
        wire.u8(value.field_version_l);
        wire.u8(value.field_bms_status);
        wire.u8(value.field_SOC);
        wire.i32(value.field_current);
        wire.u16(value.field_cycle);
        if(value.field_BQ_NTC == null || value.field_BQ_NTC.length != 2)
        {
            throw new IllegalArgumentException("Invalid BQ_NTC extent");
        }
        for(int index = 0; index < value.field_BQ_NTC.length; index++)
        {
            wire.i8(value.field_BQ_NTC[index]);
        }
        if(value.field_MCU_NTC == null || value.field_MCU_NTC.length != 2)
        {
            throw new IllegalArgumentException("Invalid MCU_NTC extent");
        }
        for(int index = 0; index < value.field_MCU_NTC.length; index++)
        {
            wire.i8(value.field_MCU_NTC[index]);
        }
        if(value.field_cell_vol == null || value.field_cell_vol.length != 10)
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
    public static Ros1Unitree_legged_msgsBmsState readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros1Unitree_legged_msgsBmsState value = new Ros1Unitree_legged_msgsBmsState();
        value.field_version_h = wire.u8();
        value.field_version_l = wire.u8();
        value.field_bms_status = wire.u8();
        value.field_SOC = wire.u8();
        value.field_current = wire.i32();
        value.field_cycle = wire.u16();
        value.field_BQ_NTC = new byte[2];
        for(int index = 0; index < value.field_BQ_NTC.length; index++)
        {
            value.field_BQ_NTC[index] = wire.i8();
        }
        value.field_MCU_NTC = new byte[2];
        for(int index = 0; index < value.field_MCU_NTC.length; index++)
        {
            value.field_MCU_NTC[index] = wire.i8();
        }
        value.field_cell_vol = new int[10];
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
