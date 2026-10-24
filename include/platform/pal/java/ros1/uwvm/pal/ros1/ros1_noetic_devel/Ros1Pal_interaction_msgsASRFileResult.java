package uwvm.pal.ros1.ros1_noetic_devel;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 1 pal_interaction_msgs/ASRFileResult value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros1Pal_interaction_msgsASRFileResult
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 5104;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 12;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_8fef2b5f288de2136bf3d58eca596fcb8d41c43e0eb428d5fac61cc0dfdc9db2";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "pal_interaction_msgs/ASRFileResult";
    /** @brief Original native identity; empty native identity is unqualified. */
    public static final String NATIVE_IDENTITY = "";
    /** @brief Complete native field file; scalar, text bound 128. */
    public String field_file = "";
    /** @brief Complete native field msg; scalar, text bound 128. */
    public String field_msg = "";
    /** @brief Complete native field recognised_utterances; sequence capacity 4, text bound 0. */
    public Ros1Pal_interaction_msgsAsrresult[] field_recognised_utterances = new Ros1Pal_interaction_msgsAsrresult[0];

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros1Pal_interaction_msgsASRFileResult()
    {
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros1Pal_interaction_msgsASRFileResult value)
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
    public static Ros1Pal_interaction_msgsASRFileResult decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros1Pal_interaction_msgsASRFileResult value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros1Pal_interaction_msgsASRFileResult value)
    {
        if(value == null)
        {
            throw new IllegalArgumentException("Null canonical record");
        }
        int start = wire.position();
        wire.string(value.field_file, 128);
        wire.string(value.field_msg, 128);
        if(value.field_recognised_utterances == null || value.field_recognised_utterances.length > 4)
        {
            throw new IllegalArgumentException("Invalid recognised_utterances extent");
        }
        wire.u32((long)value.field_recognised_utterances.length);
        for(int index = 0; index < value.field_recognised_utterances.length; index++)
        {
            Ros1Pal_interaction_msgsAsrresult.writeFields(wire, value.field_recognised_utterances[index]);
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
    public static Ros1Pal_interaction_msgsASRFileResult readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros1Pal_interaction_msgsASRFileResult value = new Ros1Pal_interaction_msgsASRFileResult();
        value.field_file = wire.string(128);
        value.field_msg = wire.string(128);
        value.field_recognised_utterances = new Ros1Pal_interaction_msgsAsrresult[wire.count(4)];
        for(int index = 0; index < value.field_recognised_utterances.length; index++)
        {
            value.field_recognised_utterances[index] = Ros1Pal_interaction_msgsAsrresult.readFields(wire);
        }
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
        return value;
    }
}
