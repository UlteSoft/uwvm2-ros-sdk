package uwvm.pal.ros1.ros1_indigo_devel;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 1 pal_interaction_msgs/ASREvent value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros1Pal_interaction_msgsASREvent
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 1212;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 28;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_459ea9c0c0a993881cc4189329bc42ae244d6133b8d3ae789206dbc4655a0926";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "pal_interaction_msgs/ASREvent";
    /** @brief Original native identity; empty native identity is unqualified. */
    public static final String NATIVE_IDENTITY = "";
    /** @brief Original source constant EVENT_UNDEFINED; consumes no instance wire bytes. */
    public static final byte CONST_EVENT_UNDEFINED = (byte)-1;
    /** @brief Original source constant EVENT_LISTEN_STATE; consumes no instance wire bytes. */
    public static final byte CONST_EVENT_LISTEN_STATE = (byte)1;
    /** @brief Original source constant EVENT_RECOGNIZED_UTT; consumes no instance wire bytes. */
    public static final byte CONST_EVENT_RECOGNIZED_UTT = (byte)2;
    /** @brief Original source constant EVENT_ASR_ACTIVATION; consumes no instance wire bytes. */
    public static final byte CONST_EVENT_ASR_ACTIVATION = (byte)3;
    /** @brief Original source constant EVENT_FAILED_DECODING; consumes no instance wire bytes. */
    public static final byte CONST_EVENT_FAILED_DECODING = (byte)4;
    /** @brief Original source constant LISTEN_UNDEFINED; consumes no instance wire bytes. */
    public static final byte CONST_LISTEN_UNDEFINED = (byte)20;
    /** @brief Original source constant LISTEN_CALIBRATION; consumes no instance wire bytes. */
    public static final byte CONST_LISTEN_CALIBRATION = (byte)21;
    /** @brief Original source constant LISTEN_WAITING_FOR_SPEECH; consumes no instance wire bytes. */
    public static final byte CONST_LISTEN_WAITING_FOR_SPEECH = (byte)22;
    /** @brief Original source constant LISTEN_SPEECH_DETECTED; consumes no instance wire bytes. */
    public static final byte CONST_LISTEN_SPEECH_DETECTED = (byte)23;
    /** @brief Original source constant LISTEN_END_OF_SPEECH; consumes no instance wire bytes. */
    public static final byte CONST_LISTEN_END_OF_SPEECH = (byte)24;
    /** @brief Complete native field event_id; scalar, text bound 0. */
    public byte field_event_id = (byte)0;
    /** @brief Complete native field listen_state; scalar, text bound 0. */
    public byte field_listen_state = (byte)0;
    /** @brief Complete native field recognized_utterance; scalar, text bound 0. */
    public Ros1Pal_interaction_msgsAsrresult field_recognized_utterance = new Ros1Pal_interaction_msgsAsrresult();
    /** @brief Complete native field active; scalar, text bound 0. */
    public boolean field_active = false;

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros1Pal_interaction_msgsASREvent()
    {
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros1Pal_interaction_msgsASREvent value)
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
    public static Ros1Pal_interaction_msgsASREvent decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros1Pal_interaction_msgsASREvent value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros1Pal_interaction_msgsASREvent value)
    {
        if(value == null)
        {
            throw new IllegalArgumentException("Null canonical record");
        }
        int start = wire.position();
        wire.i8(value.field_event_id);
        wire.i8(value.field_listen_state);
        Ros1Pal_interaction_msgsAsrresult.writeFields(wire, value.field_recognized_utterance);
        wire.bool(value.field_active);
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
    public static Ros1Pal_interaction_msgsASREvent readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros1Pal_interaction_msgsASREvent value = new Ros1Pal_interaction_msgsASREvent();
        value.field_event_id = wire.i8();
        value.field_listen_state = wire.i8();
        value.field_recognized_utterance = Ros1Pal_interaction_msgsAsrresult.readFields(wire);
        value.field_active = wire.bool();
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
        return value;
    }
}
