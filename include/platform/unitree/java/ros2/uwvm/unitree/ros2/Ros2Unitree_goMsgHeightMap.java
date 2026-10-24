package uwvm.unitree.ros2;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 2 unitree_go/msg/HeightMap value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros2Unitree_goMsgHeightMap
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 2212;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 36;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_fb1787b6d02f3110a081629fee6b9968118ffd9b3e05ed1eb2873832c89da56d";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "unitree_go/msg/HeightMap";
    /** @brief Original native identity; empty native identity is unqualified. */
    public static final String NATIVE_IDENTITY = "";
    /** @brief Complete native field stamp; scalar, text bound 0. */
    public double field_stamp = Double.longBitsToDouble(0x0000000000000000L);
    /** @brief Complete native field frame_id; scalar, text bound 2048. */
    public String field_frame_id = "";
    /** @brief Complete native field resolution; scalar, text bound 0. */
    public float field_resolution = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field width; scalar, text bound 0. */
    public long field_width = 0L;
    /** @brief Complete native field height; scalar, text bound 0. */
    public long field_height = 0L;
    /** @brief Complete native field origin; array capacity 2, text bound 0. */
    public float[] field_origin = new float[2];
    /** @brief Complete native field data; sequence capacity 32, text bound 0. */
    public float[] field_data = new float[0];

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros2Unitree_goMsgHeightMap()
    {
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros2Unitree_goMsgHeightMap value)
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
    public static Ros2Unitree_goMsgHeightMap decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros2Unitree_goMsgHeightMap value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros2Unitree_goMsgHeightMap value)
    {
        if(value == null)
        {
            throw new IllegalArgumentException("Null canonical record");
        }
        int start = wire.position();
        if(!Double.isFinite(value.field_stamp))
        {
            throw new IllegalArgumentException("Nonfinite stamp");
        }
        wire.f64(value.field_stamp);
        wire.string(value.field_frame_id, 2048);
        if(!Float.isFinite(value.field_resolution))
        {
            throw new IllegalArgumentException("Nonfinite resolution");
        }
        wire.f32(value.field_resolution);
        wire.u32(value.field_width);
        wire.u32(value.field_height);
        if(value.field_origin == null || value.field_origin.length != 2)
        {
            throw new IllegalArgumentException("Invalid origin extent");
        }
        for(int index = 0; index < value.field_origin.length; index++)
        {
            if(!Float.isFinite(value.field_origin[index]))
            {
                throw new IllegalArgumentException("Nonfinite origin");
            }
            wire.f32(value.field_origin[index]);
        }
        if(value.field_data == null || value.field_data.length > 32)
        {
            throw new IllegalArgumentException("Invalid data extent");
        }
        wire.u32((long)value.field_data.length);
        for(int index = 0; index < value.field_data.length; index++)
        {
            if(!Float.isFinite(value.field_data[index]))
            {
                throw new IllegalArgumentException("Nonfinite data");
            }
            wire.f32(value.field_data[index]);
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
    public static Ros2Unitree_goMsgHeightMap readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros2Unitree_goMsgHeightMap value = new Ros2Unitree_goMsgHeightMap();
        value.field_stamp = wire.f64();
        if(!Double.isFinite(value.field_stamp))
        {
            throw new IllegalArgumentException("Nonfinite stamp");
        }
        value.field_frame_id = wire.string(2048);
        value.field_resolution = wire.f32();
        if(!Float.isFinite(value.field_resolution))
        {
            throw new IllegalArgumentException("Nonfinite resolution");
        }
        value.field_width = wire.u32();
        value.field_height = wire.u32();
        value.field_origin = new float[2];
        for(int index = 0; index < value.field_origin.length; index++)
        {
            value.field_origin[index] = wire.f32();
            if(!Float.isFinite(value.field_origin[index]))
            {
                throw new IllegalArgumentException("Nonfinite origin");
            }
        }
        value.field_data = new float[wire.count(32)];
        for(int index = 0; index < value.field_data.length; index++)
        {
            value.field_data[index] = wire.f32();
            if(!Float.isFinite(value.field_data[index]))
            {
                throw new IllegalArgumentException("Nonfinite data");
            }
        }
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
        return value;
    }
}
