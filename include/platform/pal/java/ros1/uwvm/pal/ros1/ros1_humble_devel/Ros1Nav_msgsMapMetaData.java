package uwvm.pal.ros1.ros1_humble_devel;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 1 nav_msgs/MapMetaData value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros1Nav_msgsMapMetaData
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 76;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 76;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_2bd90889cc46f8b6669b9bdbdd911747e873c2e3fb948cd3c94a1add8c4555ec";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "nav_msgs/MapMetaData";
    /** @brief Original native identity; empty native identity is unqualified. */
    public static final String NATIVE_IDENTITY = "";
    /** @brief Complete native field map_load_time; scalar, text bound 0. */
    public Ros1Time field_map_load_time = new Ros1Time();
    /** @brief Complete native field resolution; scalar, text bound 0. */
    public float field_resolution = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field width; scalar, text bound 0. */
    public long field_width = 0L;
    /** @brief Complete native field height; scalar, text bound 0. */
    public long field_height = 0L;
    /** @brief Complete native field origin; scalar, text bound 0. */
    public Ros1Geometry_msgsPose field_origin = new Ros1Geometry_msgsPose();

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros1Nav_msgsMapMetaData()
    {
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros1Nav_msgsMapMetaData value)
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
    public static Ros1Nav_msgsMapMetaData decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros1Nav_msgsMapMetaData value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros1Nav_msgsMapMetaData value)
    {
        if(value == null)
        {
            throw new IllegalArgumentException("Null canonical record");
        }
        int start = wire.position();
        Ros1Time.writeFields(wire, value.field_map_load_time);
        if(!Float.isFinite(value.field_resolution))
        {
            throw new IllegalArgumentException("Nonfinite resolution");
        }
        wire.f32(value.field_resolution);
        wire.u32(value.field_width);
        wire.u32(value.field_height);
        Ros1Geometry_msgsPose.writeFields(wire, value.field_origin);
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
    public static Ros1Nav_msgsMapMetaData readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros1Nav_msgsMapMetaData value = new Ros1Nav_msgsMapMetaData();
        value.field_map_load_time = Ros1Time.readFields(wire);
        value.field_resolution = wire.f32();
        if(!Float.isFinite(value.field_resolution))
        {
            throw new IllegalArgumentException("Nonfinite resolution");
        }
        value.field_width = wire.u32();
        value.field_height = wire.u32();
        value.field_origin = Ros1Geometry_msgsPose.readFields(wire);
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
        return value;
    }
}
