package uwvm.pal.ros1.ros1_humble_devel;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 1 pal_interaction_msgs/ASRActivation value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros1Pal_interaction_msgsASRActivation
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 1;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 1;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_30f9e3f26cd145518ec1957bab9ca45f4cbe4ac25f82c8853ad1997bad1fdda7";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "pal_interaction_msgs/ASRActivation";
    /** @brief Original native identity; empty native identity is unqualified. */
    public static final String NATIVE_IDENTITY = "";
    /** @brief Original source constant ACTIVATE; consumes no instance wire bytes. */
    public static final byte CONST_ACTIVATE = (byte)1;
    /** @brief Original source constant DEACTIVATE; consumes no instance wire bytes. */
    public static final byte CONST_DEACTIVATE = (byte)2;
    /** @brief Original source constant PAUSE; consumes no instance wire bytes. */
    public static final byte CONST_PAUSE = (byte)3;
    /** @brief Original source constant RESUME; consumes no instance wire bytes. */
    public static final byte CONST_RESUME = (byte)4;
    /** @brief Original source constant CALIBRATE; consumes no instance wire bytes. */
    public static final byte CONST_CALIBRATE = (byte)5;
    /** @brief Complete native field action; scalar, text bound 0. */
    public byte field_action = (byte)0;

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros1Pal_interaction_msgsASRActivation()
    {
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros1Pal_interaction_msgsASRActivation value)
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
    public static Ros1Pal_interaction_msgsASRActivation decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros1Pal_interaction_msgsASRActivation value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros1Pal_interaction_msgsASRActivation value)
    {
        if(value == null)
        {
            throw new IllegalArgumentException("Null canonical record");
        }
        int start = wire.position();
        wire.i8(value.field_action);
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
    public static Ros1Pal_interaction_msgsASRActivation readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros1Pal_interaction_msgsASRActivation value = new Ros1Pal_interaction_msgsASRActivation();
        value.field_action = wire.i8();
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
        return value;
    }
}
