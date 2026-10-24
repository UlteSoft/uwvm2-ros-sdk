package uwvm.unitree.ros2;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 2 unitree_hg/msg/PressSensorState value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros2Unitree_hgMsgPressSensorState
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 104;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 104;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_4abc296d4acd21132c0c1d185e3fafd9f0db8836a5c16ed040ebcc6127380fe5";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "unitree_hg/msg/PressSensorState";
    /** @brief Original native identity; empty native identity is unqualified. */
    public static final String NATIVE_IDENTITY = "";
    /** @brief Complete native field pressure; array capacity 12, text bound 0. */
    public float[] field_pressure = new float[12];
    /** @brief Complete native field temperature; array capacity 12, text bound 0. */
    public float[] field_temperature = new float[12];
    /** @brief Complete native field lost; scalar, text bound 0. */
    public long field_lost = 0L;
    /** @brief Complete native field reserve; scalar, text bound 0. */
    public long field_reserve = 0L;

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros2Unitree_hgMsgPressSensorState()
    {
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros2Unitree_hgMsgPressSensorState value)
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
    public static Ros2Unitree_hgMsgPressSensorState decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros2Unitree_hgMsgPressSensorState value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros2Unitree_hgMsgPressSensorState value)
    {
        if(value == null)
        {
            throw new IllegalArgumentException("Null canonical record");
        }
        int start = wire.position();
        if(value.field_pressure == null || value.field_pressure.length != 12)
        {
            throw new IllegalArgumentException("Invalid pressure extent");
        }
        for(int index = 0; index < value.field_pressure.length; index++)
        {
            if(!Float.isFinite(value.field_pressure[index]))
            {
                throw new IllegalArgumentException("Nonfinite pressure");
            }
            wire.f32(value.field_pressure[index]);
        }
        if(value.field_temperature == null || value.field_temperature.length != 12)
        {
            throw new IllegalArgumentException("Invalid temperature extent");
        }
        for(int index = 0; index < value.field_temperature.length; index++)
        {
            if(!Float.isFinite(value.field_temperature[index]))
            {
                throw new IllegalArgumentException("Nonfinite temperature");
            }
            wire.f32(value.field_temperature[index]);
        }
        wire.u32(value.field_lost);
        wire.u32(value.field_reserve);
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
    public static Ros2Unitree_hgMsgPressSensorState readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros2Unitree_hgMsgPressSensorState value = new Ros2Unitree_hgMsgPressSensorState();
        value.field_pressure = new float[12];
        for(int index = 0; index < value.field_pressure.length; index++)
        {
            value.field_pressure[index] = wire.f32();
            if(!Float.isFinite(value.field_pressure[index]))
            {
                throw new IllegalArgumentException("Nonfinite pressure");
            }
        }
        value.field_temperature = new float[12];
        for(int index = 0; index < value.field_temperature.length; index++)
        {
            value.field_temperature[index] = wire.f32();
            if(!Float.isFinite(value.field_temperature[index]))
            {
                throw new IllegalArgumentException("Nonfinite temperature");
            }
        }
        value.field_lost = wire.u32();
        value.field_reserve = wire.u32();
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
        return value;
    }
}
