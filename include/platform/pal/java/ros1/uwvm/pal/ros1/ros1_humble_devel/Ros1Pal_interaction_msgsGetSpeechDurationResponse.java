package uwvm.pal.ros1.ros1_humble_devel;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 1 pal_interaction_msgs/GetSpeechDurationResponse value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros1Pal_interaction_msgsGetSpeechDurationResponse
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 2249;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 9;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_44379b24ddf4582ec184a0da7993d27b9f4ec5d430a129468bf8aef6d5437578";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "pal_interaction_msgs/GetSpeechDurationResponse";
    /** @brief Original native identity; empty native identity is unqualified. */
    public static final String NATIVE_IDENTITY = "";
    /** @brief Complete native field ok; scalar, text bound 0. */
    public boolean field_ok = false;
    /** @brief Complete native field words; sequence capacity 16, text bound 128. */
    public String[] field_words = new String[0];
    /** @brief Complete native field word_durations; sequence capacity 16, text bound 0. */
    public Ros1Duration[] field_word_durations = new Ros1Duration[0];

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros1Pal_interaction_msgsGetSpeechDurationResponse()
    {
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros1Pal_interaction_msgsGetSpeechDurationResponse value)
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
    public static Ros1Pal_interaction_msgsGetSpeechDurationResponse decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros1Pal_interaction_msgsGetSpeechDurationResponse value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros1Pal_interaction_msgsGetSpeechDurationResponse value)
    {
        if(value == null)
        {
            throw new IllegalArgumentException("Null canonical record");
        }
        int start = wire.position();
        wire.bool(value.field_ok);
        if(value.field_words == null || value.field_words.length > 16)
        {
            throw new IllegalArgumentException("Invalid words extent");
        }
        wire.u32((long)value.field_words.length);
        for(int index = 0; index < value.field_words.length; index++)
        {
            wire.string(value.field_words[index], 128);
        }
        if(value.field_word_durations == null || value.field_word_durations.length > 16)
        {
            throw new IllegalArgumentException("Invalid word_durations extent");
        }
        wire.u32((long)value.field_word_durations.length);
        for(int index = 0; index < value.field_word_durations.length; index++)
        {
            Ros1Duration.writeFields(wire, value.field_word_durations[index]);
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
    public static Ros1Pal_interaction_msgsGetSpeechDurationResponse readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros1Pal_interaction_msgsGetSpeechDurationResponse value = new Ros1Pal_interaction_msgsGetSpeechDurationResponse();
        value.field_ok = wire.bool();
        value.field_words = new String[wire.count(16)];
        for(int index = 0; index < value.field_words.length; index++)
        {
            value.field_words[index] = wire.string(128);
        }
        value.field_word_durations = new Ros1Duration[wire.count(16)];
        for(int index = 0; index < value.field_word_durations.length; index++)
        {
            value.field_word_durations[index] = Ros1Duration.readFields(wire);
        }
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
        return value;
    }
}
