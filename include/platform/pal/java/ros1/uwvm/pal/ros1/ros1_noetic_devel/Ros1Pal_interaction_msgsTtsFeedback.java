package uwvm.pal.ros1.ros1_noetic_devel;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 1 pal_interaction_msgs/TtsFeedback value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros1Pal_interaction_msgsTtsFeedback
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 4770;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 34;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_3154aa11cda4bc9750910ea8283b14106fc992d9b4f99055bdefd226bf784894";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "pal_interaction_msgs/TtsFeedback";
    /** @brief Original native identity; empty native identity is unqualified. */
    public static final String NATIVE_IDENTITY = "";
    /** @brief Original source constant TTS_EVENT_INITIALIZATION; consumes no instance wire bytes. */
    public static final int CONST_TTS_EVENT_INITIALIZATION = 1;
    /** @brief Original source constant TTS_EVENT_SHUTDOWN; consumes no instance wire bytes. */
    public static final int CONST_TTS_EVENT_SHUTDOWN = 2;
    /** @brief Original source constant TTS_EVENT_SYNCHRONIZATION; consumes no instance wire bytes. */
    public static final int CONST_TTS_EVENT_SYNCHRONIZATION = 4;
    /** @brief Original source constant TTS_EVENT_FINISHED_PLAYING_UTTERANCE; consumes no instance wire bytes. */
    public static final int CONST_TTS_EVENT_FINISHED_PLAYING_UTTERANCE = 8;
    /** @brief Original source constant TTS_EVENT_MARK; consumes no instance wire bytes. */
    public static final int CONST_TTS_EVENT_MARK = 16;
    /** @brief Original source constant TTS_EVENT_STARTED_PLAYING_WORD; consumes no instance wire bytes. */
    public static final int CONST_TTS_EVENT_STARTED_PLAYING_WORD = 32;
    /** @brief Original source constant TTS_EVENT_FINISHED_PLAYING_PHRASE; consumes no instance wire bytes. */
    public static final int CONST_TTS_EVENT_FINISHED_PLAYING_PHRASE = 64;
    /** @brief Original source constant TTS_EVENT_FINISHED_PLAYING_SENTENCE; consumes no instance wire bytes. */
    public static final int CONST_TTS_EVENT_FINISHED_PLAYING_SENTENCE = 128;
    /** @brief Original source constant TTS_EVENT_VISEME; consumes no instance wire bytes. */
    public static final int CONST_TTS_EVENT_VISEME = 256;
    /** @brief Complete native field event_type; scalar, text bound 0. */
    public int field_event_type = 0;
    /** @brief Complete native field timestamp; scalar, text bound 0. */
    public Ros1Time field_timestamp = new Ros1Time();
    /** @brief Complete native field text_said; scalar, text bound 128. */
    public String field_text_said = "";
    /** @brief Complete native field next_word; scalar, text bound 128. */
    public String field_next_word = "";
    /** @brief Complete native field viseme_id; scalar, text bound 128. */
    public String field_viseme_id = "";
    /** @brief Complete native field marks; scalar, text bound 0. */
    public Ros1Pal_interaction_msgsTtsMark field_marks = new Ros1Pal_interaction_msgsTtsMark();

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros1Pal_interaction_msgsTtsFeedback()
    {
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros1Pal_interaction_msgsTtsFeedback value)
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
    public static Ros1Pal_interaction_msgsTtsFeedback decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros1Pal_interaction_msgsTtsFeedback value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros1Pal_interaction_msgsTtsFeedback value)
    {
        if(value == null)
        {
            throw new IllegalArgumentException("Null canonical record");
        }
        int start = wire.position();
        wire.u16(value.field_event_type);
        Ros1Time.writeFields(wire, value.field_timestamp);
        wire.string(value.field_text_said, 128);
        wire.string(value.field_next_word, 128);
        wire.string(value.field_viseme_id, 128);
        Ros1Pal_interaction_msgsTtsMark.writeFields(wire, value.field_marks);
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
    public static Ros1Pal_interaction_msgsTtsFeedback readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros1Pal_interaction_msgsTtsFeedback value = new Ros1Pal_interaction_msgsTtsFeedback();
        value.field_event_type = wire.u16();
        value.field_timestamp = Ros1Time.readFields(wire);
        value.field_text_said = wire.string(128);
        value.field_next_word = wire.string(128);
        value.field_viseme_id = wire.string(128);
        value.field_marks = Ros1Pal_interaction_msgsTtsMark.readFields(wire);
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
        return value;
    }
}
