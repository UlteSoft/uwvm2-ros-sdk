package uwvm.trossen.ros1.ros1_melodic;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 1 xarm_msgs/SetLoadRequest value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros1Xarm_msgsSetLoadRequest
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 16;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 16;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_47f2147c37956f007e24d79ddcdc080fb185aca0b30f5f2394f9c74bd00ee077";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "xarm_msgs/SetLoadRequest";
    /** @brief Original native identity; empty native identity is unqualified. */
    public static final String NATIVE_IDENTITY = "";
    /** @brief Complete native field mass; scalar, text bound 0. */
    public float field_mass = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field xc; scalar, text bound 0. */
    public float field_xc = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field yc; scalar, text bound 0. */
    public float field_yc = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field zc; scalar, text bound 0. */
    public float field_zc = Float.intBitsToFloat(0x00000000);

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros1Xarm_msgsSetLoadRequest()
    {
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros1Xarm_msgsSetLoadRequest value)
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
    public static Ros1Xarm_msgsSetLoadRequest decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros1Xarm_msgsSetLoadRequest value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros1Xarm_msgsSetLoadRequest value)
    {
        if(value == null)
        {
            throw new IllegalArgumentException("Null canonical record");
        }
        int start = wire.position();
        if(!Float.isFinite(value.field_mass))
        {
            throw new IllegalArgumentException("Nonfinite mass");
        }
        wire.f32(value.field_mass);
        if(!Float.isFinite(value.field_xc))
        {
            throw new IllegalArgumentException("Nonfinite xc");
        }
        wire.f32(value.field_xc);
        if(!Float.isFinite(value.field_yc))
        {
            throw new IllegalArgumentException("Nonfinite yc");
        }
        wire.f32(value.field_yc);
        if(!Float.isFinite(value.field_zc))
        {
            throw new IllegalArgumentException("Nonfinite zc");
        }
        wire.f32(value.field_zc);
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
    public static Ros1Xarm_msgsSetLoadRequest readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros1Xarm_msgsSetLoadRequest value = new Ros1Xarm_msgsSetLoadRequest();
        value.field_mass = wire.f32();
        if(!Float.isFinite(value.field_mass))
        {
            throw new IllegalArgumentException("Nonfinite mass");
        }
        value.field_xc = wire.f32();
        if(!Float.isFinite(value.field_xc))
        {
            throw new IllegalArgumentException("Nonfinite xc");
        }
        value.field_yc = wire.f32();
        if(!Float.isFinite(value.field_yc))
        {
            throw new IllegalArgumentException("Nonfinite yc");
        }
        value.field_zc = wire.f32();
        if(!Float.isFinite(value.field_zc))
        {
            throw new IllegalArgumentException("Nonfinite zc");
        }
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
        return value;
    }
}
