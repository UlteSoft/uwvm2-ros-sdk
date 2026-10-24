package uwvm.pal.ros1.ros1_noetic_devel;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 1 pal_interaction_msgs/ASRSrvRequest value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros1Pal_interaction_msgsASRSrvRequest
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 526;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 14;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_3a7fc134e8d1e0c32421ff0ad9831a892e7bc94b211d8309f8a2c2e99720e170";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "pal_interaction_msgs/ASRSrvRequest";
    /** @brief Original native identity; empty native identity is unqualified. */
    public static final String NATIVE_IDENTITY = "";
    /** @brief Original source constant ACTIVATION; consumes no instance wire bytes. */
    public static final byte CONST_ACTIVATION = (byte)1;
    /** @brief Original source constant GRAMMAR; consumes no instance wire bytes. */
    public static final byte CONST_GRAMMAR = (byte)2;
    /** @brief Original source constant LANGUAGE; consumes no instance wire bytes. */
    public static final byte CONST_LANGUAGE = (byte)3;
    /** @brief Original source constant STATUS; consumes no instance wire bytes. */
    public static final byte CONST_STATUS = (byte)4;
    /** @brief Original source constant KWSPOTTING; consumes no instance wire bytes. */
    public static final byte CONST_KWSPOTTING = (byte)5;
    /** @brief Complete native field requests; sequence capacity 256, text bound 0. */
    public byte[] field_requests = new byte[0];
    /** @brief Complete native field activation; scalar, text bound 0. */
    public Ros1Pal_interaction_msgsASRActivation field_activation = new Ros1Pal_interaction_msgsASRActivation();
    /** @brief Complete native field model; scalar, text bound 0. */
    public Ros1Pal_interaction_msgsASRLangModelMngmt field_model = new Ros1Pal_interaction_msgsASRLangModelMngmt();
    /** @brief Complete native field lang; scalar, text bound 0. */
    public Ros1Pal_interaction_msgsASRLanguage field_lang = new Ros1Pal_interaction_msgsASRLanguage();

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros1Pal_interaction_msgsASRSrvRequest()
    {
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros1Pal_interaction_msgsASRSrvRequest value)
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
    public static Ros1Pal_interaction_msgsASRSrvRequest decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros1Pal_interaction_msgsASRSrvRequest value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros1Pal_interaction_msgsASRSrvRequest value)
    {
        if(value == null)
        {
            throw new IllegalArgumentException("Null canonical record");
        }
        int start = wire.position();
        if(value.field_requests == null || value.field_requests.length > 256)
        {
            throw new IllegalArgumentException("Invalid requests extent");
        }
        wire.u32((long)value.field_requests.length);
        for(int index = 0; index < value.field_requests.length; index++)
        {
            wire.i8(value.field_requests[index]);
        }
        Ros1Pal_interaction_msgsASRActivation.writeFields(wire, value.field_activation);
        Ros1Pal_interaction_msgsASRLangModelMngmt.writeFields(wire, value.field_model);
        Ros1Pal_interaction_msgsASRLanguage.writeFields(wire, value.field_lang);
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
    public static Ros1Pal_interaction_msgsASRSrvRequest readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros1Pal_interaction_msgsASRSrvRequest value = new Ros1Pal_interaction_msgsASRSrvRequest();
        value.field_requests = new byte[wire.count(256)];
        for(int index = 0; index < value.field_requests.length; index++)
        {
            value.field_requests[index] = wire.i8();
        }
        value.field_activation = Ros1Pal_interaction_msgsASRActivation.readFields(wire);
        value.field_model = Ros1Pal_interaction_msgsASRLangModelMngmt.readFields(wire);
        value.field_lang = Ros1Pal_interaction_msgsASRLanguage.readFields(wire);
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
        return value;
    }
}
