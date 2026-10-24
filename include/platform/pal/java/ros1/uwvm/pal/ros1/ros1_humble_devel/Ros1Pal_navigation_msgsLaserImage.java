package uwvm.pal.ros1.ros1_humble_devel;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 1 pal_navigation_msgs/LaserImage value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros1Pal_navigation_msgsLaserImage
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 4556;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 76;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_94e3d294205016ea87f46b5cf6bbc1bb7644f24f900ce1f9cbb4bac6004b66f2";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "pal_navigation_msgs/LaserImage";
    /** @brief Original native identity; empty native identity is unqualified. */
    public static final String NATIVE_IDENTITY = "";
    /** @brief Complete native field header; scalar, text bound 0. */
    public Ros1Std_msgsHeader field_header = new Ros1Std_msgsHeader();
    /** @brief Complete native field origin; scalar, text bound 0. */
    public Ros1Geometry_msgsPoint field_origin = new Ros1Geometry_msgsPoint();
    /** @brief Complete native field image; scalar, text bound 0. */
    public Ros1Sensor_msgsCompressedImage field_image = new Ros1Sensor_msgsCompressedImage();
    /** @brief Complete native field height; scalar, text bound 0. */
    public float field_height = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field width; scalar, text bound 0. */
    public float field_width = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field resolution; scalar, text bound 0. */
    public float field_resolution = Float.intBitsToFloat(0x00000000);

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros1Pal_navigation_msgsLaserImage()
    {
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros1Pal_navigation_msgsLaserImage value)
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
    public static Ros1Pal_navigation_msgsLaserImage decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros1Pal_navigation_msgsLaserImage value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros1Pal_navigation_msgsLaserImage value)
    {
        if(value == null)
        {
            throw new IllegalArgumentException("Null canonical record");
        }
        int start = wire.position();
        Ros1Std_msgsHeader.writeFields(wire, value.field_header);
        Ros1Geometry_msgsPoint.writeFields(wire, value.field_origin);
        Ros1Sensor_msgsCompressedImage.writeFields(wire, value.field_image);
        if(!Float.isFinite(value.field_height))
        {
            throw new IllegalArgumentException("Nonfinite height");
        }
        wire.f32(value.field_height);
        if(!Float.isFinite(value.field_width))
        {
            throw new IllegalArgumentException("Nonfinite width");
        }
        wire.f32(value.field_width);
        if(!Float.isFinite(value.field_resolution))
        {
            throw new IllegalArgumentException("Nonfinite resolution");
        }
        wire.f32(value.field_resolution);
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
    public static Ros1Pal_navigation_msgsLaserImage readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros1Pal_navigation_msgsLaserImage value = new Ros1Pal_navigation_msgsLaserImage();
        value.field_header = Ros1Std_msgsHeader.readFields(wire);
        value.field_origin = Ros1Geometry_msgsPoint.readFields(wire);
        value.field_image = Ros1Sensor_msgsCompressedImage.readFields(wire);
        value.field_height = wire.f32();
        if(!Float.isFinite(value.field_height))
        {
            throw new IllegalArgumentException("Nonfinite height");
        }
        value.field_width = wire.f32();
        if(!Float.isFinite(value.field_width))
        {
            throw new IllegalArgumentException("Nonfinite width");
        }
        value.field_resolution = wire.f32();
        if(!Float.isFinite(value.field_resolution))
        {
            throw new IllegalArgumentException("Nonfinite resolution");
        }
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
        return value;
    }
}
