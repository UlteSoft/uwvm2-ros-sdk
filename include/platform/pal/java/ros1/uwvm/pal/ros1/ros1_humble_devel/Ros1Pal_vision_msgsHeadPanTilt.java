package uwvm.pal.ros1.ros1_humble_devel;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 1 pal_vision_msgs/HeadPanTilt value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros1Pal_vision_msgsHeadPanTilt
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 152;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 24;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_69c6664a98a42741b82d5c147ccfabdb7bb7138cae590c77a2b63103cdf899cc";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "pal_vision_msgs/HeadPanTilt";
    /** @brief Original native identity; empty native identity is unqualified. */
    public static final String NATIVE_IDENTITY = "";
    /** @brief Complete native field header; scalar, text bound 0. */
    public Ros1Std_msgsHeader field_header = new Ros1Std_msgsHeader();
    /** @brief Complete native field pan; scalar, text bound 0. */
    public float field_pan = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field tilt; scalar, text bound 0. */
    public float field_tilt = Float.intBitsToFloat(0x00000000);

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros1Pal_vision_msgsHeadPanTilt()
    {
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros1Pal_vision_msgsHeadPanTilt value)
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
    public static Ros1Pal_vision_msgsHeadPanTilt decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros1Pal_vision_msgsHeadPanTilt value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros1Pal_vision_msgsHeadPanTilt value)
    {
        if(value == null)
        {
            throw new IllegalArgumentException("Null canonical record");
        }
        int start = wire.position();
        Ros1Std_msgsHeader.writeFields(wire, value.field_header);
        if(!Float.isFinite(value.field_pan))
        {
            throw new IllegalArgumentException("Nonfinite pan");
        }
        wire.f32(value.field_pan);
        if(!Float.isFinite(value.field_tilt))
        {
            throw new IllegalArgumentException("Nonfinite tilt");
        }
        wire.f32(value.field_tilt);
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
    public static Ros1Pal_vision_msgsHeadPanTilt readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros1Pal_vision_msgsHeadPanTilt value = new Ros1Pal_vision_msgsHeadPanTilt();
        value.field_header = Ros1Std_msgsHeader.readFields(wire);
        value.field_pan = wire.f32();
        if(!Float.isFinite(value.field_pan))
        {
            throw new IllegalArgumentException("Nonfinite pan");
        }
        value.field_tilt = wire.f32();
        if(!Float.isFinite(value.field_tilt))
        {
            throw new IllegalArgumentException("Nonfinite tilt");
        }
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
        return value;
    }
}
