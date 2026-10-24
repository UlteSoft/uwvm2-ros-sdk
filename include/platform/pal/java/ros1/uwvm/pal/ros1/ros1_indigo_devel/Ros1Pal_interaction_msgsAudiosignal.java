package uwvm.pal.ros1.ros1_indigo_devel;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 1 pal_interaction_msgs/audiosignal value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros1Pal_interaction_msgsAudiosignal
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 264;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 8;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_f70d9a987e0f5443060a55d2f617d9a8fc9e59fe110a9acd256a186b64e5e809";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "pal_interaction_msgs/audiosignal";
    /** @brief Original native identity; empty native identity is unqualified. */
    public static final String NATIVE_IDENTITY = "";
    /** @brief Complete native field channel0; sequence capacity 16, text bound 0. */
    public double[] field_channel0 = new double[0];
    /** @brief Complete native field channel1; sequence capacity 16, text bound 0. */
    public double[] field_channel1 = new double[0];

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros1Pal_interaction_msgsAudiosignal()
    {
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros1Pal_interaction_msgsAudiosignal value)
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
    public static Ros1Pal_interaction_msgsAudiosignal decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros1Pal_interaction_msgsAudiosignal value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros1Pal_interaction_msgsAudiosignal value)
    {
        if(value == null)
        {
            throw new IllegalArgumentException("Null canonical record");
        }
        int start = wire.position();
        if(value.field_channel0 == null || value.field_channel0.length > 16)
        {
            throw new IllegalArgumentException("Invalid channel0 extent");
        }
        wire.u32((long)value.field_channel0.length);
        for(int index = 0; index < value.field_channel0.length; index++)
        {
            if(!Double.isFinite(value.field_channel0[index]))
            {
                throw new IllegalArgumentException("Nonfinite channel0");
            }
            wire.f64(value.field_channel0[index]);
        }
        if(value.field_channel1 == null || value.field_channel1.length > 16)
        {
            throw new IllegalArgumentException("Invalid channel1 extent");
        }
        wire.u32((long)value.field_channel1.length);
        for(int index = 0; index < value.field_channel1.length; index++)
        {
            if(!Double.isFinite(value.field_channel1[index]))
            {
                throw new IllegalArgumentException("Nonfinite channel1");
            }
            wire.f64(value.field_channel1[index]);
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
    public static Ros1Pal_interaction_msgsAudiosignal readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros1Pal_interaction_msgsAudiosignal value = new Ros1Pal_interaction_msgsAudiosignal();
        value.field_channel0 = new double[wire.count(16)];
        for(int index = 0; index < value.field_channel0.length; index++)
        {
            value.field_channel0[index] = wire.f64();
            if(!Double.isFinite(value.field_channel0[index]))
            {
                throw new IllegalArgumentException("Nonfinite channel0");
            }
        }
        value.field_channel1 = new double[wire.count(16)];
        for(int index = 0; index < value.field_channel1.length; index++)
        {
            value.field_channel1[index] = wire.f64();
            if(!Double.isFinite(value.field_channel1[index]))
            {
                throw new IllegalArgumentException("Nonfinite channel1");
            }
        }
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
        return value;
    }
}
