package uwvm.pal.ros1.ros1_humble_devel;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 1 pal_detection_msgs/SelectTexturedObjectRequest value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros1Pal_detection_msgsSelectTexturedObjectRequest
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 148;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 20;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_866b10e9fcb4e51c9aa5f5a9b7c9c36cbef544fd685f3cfd77de8a3b759e1004";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "pal_detection_msgs/SelectTexturedObjectRequest";
    /** @brief Original native identity; empty native identity is unqualified. */
    public static final String NATIVE_IDENTITY = "";
    /** @brief Complete native field imageFullPathFileName; scalar, text bound 128. */
    public String field_imageFullPathFileName = "";
    /** @brief Complete native field width; scalar, text bound 0. */
    public double field_width = Double.longBitsToDouble(0x0000000000000000L);
    /** @brief Complete native field height; scalar, text bound 0. */
    public double field_height = Double.longBitsToDouble(0x0000000000000000L);

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros1Pal_detection_msgsSelectTexturedObjectRequest()
    {
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros1Pal_detection_msgsSelectTexturedObjectRequest value)
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
    public static Ros1Pal_detection_msgsSelectTexturedObjectRequest decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros1Pal_detection_msgsSelectTexturedObjectRequest value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros1Pal_detection_msgsSelectTexturedObjectRequest value)
    {
        if(value == null)
        {
            throw new IllegalArgumentException("Null canonical record");
        }
        int start = wire.position();
        wire.string(value.field_imageFullPathFileName, 128);
        if(!Double.isFinite(value.field_width))
        {
            throw new IllegalArgumentException("Nonfinite width");
        }
        wire.f64(value.field_width);
        if(!Double.isFinite(value.field_height))
        {
            throw new IllegalArgumentException("Nonfinite height");
        }
        wire.f64(value.field_height);
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
    public static Ros1Pal_detection_msgsSelectTexturedObjectRequest readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros1Pal_detection_msgsSelectTexturedObjectRequest value = new Ros1Pal_detection_msgsSelectTexturedObjectRequest();
        value.field_imageFullPathFileName = wire.string(128);
        value.field_width = wire.f64();
        if(!Double.isFinite(value.field_width))
        {
            throw new IllegalArgumentException("Nonfinite width");
        }
        value.field_height = wire.f64();
        if(!Double.isFinite(value.field_height))
        {
            throw new IllegalArgumentException("Nonfinite height");
        }
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
        return value;
    }
}
