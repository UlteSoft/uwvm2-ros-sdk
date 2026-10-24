package uwvm.pal.ros1.ros1_indigo_devel;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 1 std_msgs/ColorRGBA value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros1Std_msgsColorRGBA
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 16;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 16;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_2c956a9dd28dc999fc04f9704e68021ae940136f6c54d151975792a9344da90d";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "std_msgs/ColorRGBA";
    /** @brief Original native identity; empty native identity is unqualified. */
    public static final String NATIVE_IDENTITY = "";
    /** @brief Complete native field r; scalar, text bound 0. */
    public float field_r = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field g; scalar, text bound 0. */
    public float field_g = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field b; scalar, text bound 0. */
    public float field_b = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field a; scalar, text bound 0. */
    public float field_a = Float.intBitsToFloat(0x00000000);

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros1Std_msgsColorRGBA()
    {
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros1Std_msgsColorRGBA value)
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
    public static Ros1Std_msgsColorRGBA decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros1Std_msgsColorRGBA value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros1Std_msgsColorRGBA value)
    {
        if(value == null)
        {
            throw new IllegalArgumentException("Null canonical record");
        }
        int start = wire.position();
        if(!Float.isFinite(value.field_r))
        {
            throw new IllegalArgumentException("Nonfinite r");
        }
        wire.f32(value.field_r);
        if(!Float.isFinite(value.field_g))
        {
            throw new IllegalArgumentException("Nonfinite g");
        }
        wire.f32(value.field_g);
        if(!Float.isFinite(value.field_b))
        {
            throw new IllegalArgumentException("Nonfinite b");
        }
        wire.f32(value.field_b);
        if(!Float.isFinite(value.field_a))
        {
            throw new IllegalArgumentException("Nonfinite a");
        }
        wire.f32(value.field_a);
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
    public static Ros1Std_msgsColorRGBA readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros1Std_msgsColorRGBA value = new Ros1Std_msgsColorRGBA();
        value.field_r = wire.f32();
        if(!Float.isFinite(value.field_r))
        {
            throw new IllegalArgumentException("Nonfinite r");
        }
        value.field_g = wire.f32();
        if(!Float.isFinite(value.field_g))
        {
            throw new IllegalArgumentException("Nonfinite g");
        }
        value.field_b = wire.f32();
        if(!Float.isFinite(value.field_b))
        {
            throw new IllegalArgumentException("Nonfinite b");
        }
        value.field_a = wire.f32();
        if(!Float.isFinite(value.field_a))
        {
            throw new IllegalArgumentException("Nonfinite a");
        }
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
        return value;
    }
}
