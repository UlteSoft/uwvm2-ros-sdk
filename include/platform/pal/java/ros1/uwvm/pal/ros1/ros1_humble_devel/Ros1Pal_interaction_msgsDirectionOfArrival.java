package uwvm.pal.ros1.ros1_humble_devel;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 1 pal_interaction_msgs/DirectionOfArrival value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros1Pal_interaction_msgsDirectionOfArrival
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 144;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 16;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_1569630ee3abd3caad9a14797d6381b68e764f0c00266d2de5c450f002c8f5fd";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "pal_interaction_msgs/DirectionOfArrival";
    /** @brief Original native identity; empty native identity is unqualified. */
    public static final String NATIVE_IDENTITY = "";
    /** @brief Complete native field doa; scalar, text bound 0. */
    public float field_doa = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field prob; scalar, text bound 0. */
    public float field_prob = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field power; scalar, text bound 0. */
    public float field_power = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field metadoa; scalar, text bound 128. */
    public String field_metadoa = "";

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros1Pal_interaction_msgsDirectionOfArrival()
    {
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros1Pal_interaction_msgsDirectionOfArrival value)
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
    public static Ros1Pal_interaction_msgsDirectionOfArrival decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros1Pal_interaction_msgsDirectionOfArrival value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros1Pal_interaction_msgsDirectionOfArrival value)
    {
        if(value == null)
        {
            throw new IllegalArgumentException("Null canonical record");
        }
        int start = wire.position();
        if(!Float.isFinite(value.field_doa))
        {
            throw new IllegalArgumentException("Nonfinite doa");
        }
        wire.f32(value.field_doa);
        if(!Float.isFinite(value.field_prob))
        {
            throw new IllegalArgumentException("Nonfinite prob");
        }
        wire.f32(value.field_prob);
        if(!Float.isFinite(value.field_power))
        {
            throw new IllegalArgumentException("Nonfinite power");
        }
        wire.f32(value.field_power);
        wire.string(value.field_metadoa, 128);
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
    public static Ros1Pal_interaction_msgsDirectionOfArrival readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros1Pal_interaction_msgsDirectionOfArrival value = new Ros1Pal_interaction_msgsDirectionOfArrival();
        value.field_doa = wire.f32();
        if(!Float.isFinite(value.field_doa))
        {
            throw new IllegalArgumentException("Nonfinite doa");
        }
        value.field_prob = wire.f32();
        if(!Float.isFinite(value.field_prob))
        {
            throw new IllegalArgumentException("Nonfinite prob");
        }
        value.field_power = wire.f32();
        if(!Float.isFinite(value.field_power))
        {
            throw new IllegalArgumentException("Nonfinite power");
        }
        value.field_metadoa = wire.string(128);
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
        return value;
    }
}
