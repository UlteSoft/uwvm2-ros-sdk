package uwvm.unitree.ros2;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 2 unitree_hg/msg/MainBoardState value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros2Unitree_hgMsgMainBoardState
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 72;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 72;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_2a27a979aadc7bef33a757e169680faa632936c2634ee787f0c9f25cb08535a6";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "unitree_hg/msg/MainBoardState";
    /** @brief Original native identity; empty native identity is unqualified. */
    public static final String NATIVE_IDENTITY = "";
    /** @brief Complete native field fan_state; array capacity 6, text bound 0. */
    public int[] field_fan_state = new int[6];
    /** @brief Complete native field temperature; array capacity 6, text bound 0. */
    public short[] field_temperature = new short[6];
    /** @brief Complete native field value; array capacity 6, text bound 0. */
    public float[] field_value = new float[6];
    /** @brief Complete native field state; array capacity 6, text bound 0. */
    public long[] field_state = new long[6];

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros2Unitree_hgMsgMainBoardState()
    {
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros2Unitree_hgMsgMainBoardState value)
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
    public static Ros2Unitree_hgMsgMainBoardState decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros2Unitree_hgMsgMainBoardState value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros2Unitree_hgMsgMainBoardState value)
    {
        if(value == null)
        {
            throw new IllegalArgumentException("Null canonical record");
        }
        int start = wire.position();
        if(value.field_fan_state == null || value.field_fan_state.length != 6)
        {
            throw new IllegalArgumentException("Invalid fan_state extent");
        }
        for(int index = 0; index < value.field_fan_state.length; index++)
        {
            wire.u16(value.field_fan_state[index]);
        }
        if(value.field_temperature == null || value.field_temperature.length != 6)
        {
            throw new IllegalArgumentException("Invalid temperature extent");
        }
        for(int index = 0; index < value.field_temperature.length; index++)
        {
            wire.i16(value.field_temperature[index]);
        }
        if(value.field_value == null || value.field_value.length != 6)
        {
            throw new IllegalArgumentException("Invalid value extent");
        }
        for(int index = 0; index < value.field_value.length; index++)
        {
            if(!Float.isFinite(value.field_value[index]))
            {
                throw new IllegalArgumentException("Nonfinite value");
            }
            wire.f32(value.field_value[index]);
        }
        if(value.field_state == null || value.field_state.length != 6)
        {
            throw new IllegalArgumentException("Invalid state extent");
        }
        for(int index = 0; index < value.field_state.length; index++)
        {
            wire.u32(value.field_state[index]);
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
    public static Ros2Unitree_hgMsgMainBoardState readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros2Unitree_hgMsgMainBoardState value = new Ros2Unitree_hgMsgMainBoardState();
        value.field_fan_state = new int[6];
        for(int index = 0; index < value.field_fan_state.length; index++)
        {
            value.field_fan_state[index] = wire.u16();
        }
        value.field_temperature = new short[6];
        for(int index = 0; index < value.field_temperature.length; index++)
        {
            value.field_temperature[index] = wire.i16();
        }
        value.field_value = new float[6];
        for(int index = 0; index < value.field_value.length; index++)
        {
            value.field_value[index] = wire.f32();
            if(!Float.isFinite(value.field_value[index]))
            {
                throw new IllegalArgumentException("Nonfinite value");
            }
        }
        value.field_state = new long[6];
        for(int index = 0; index < value.field_state.length; index++)
        {
            value.field_state[index] = wire.u32();
        }
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
        return value;
    }
}
