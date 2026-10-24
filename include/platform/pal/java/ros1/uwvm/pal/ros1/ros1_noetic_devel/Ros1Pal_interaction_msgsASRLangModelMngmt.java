package uwvm.pal.ros1.ros1_noetic_devel;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 1 pal_interaction_msgs/ASRLangModelMngmt value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros1Pal_interaction_msgsASRLangModelMngmt
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 133;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 5;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_9ef368d2c72d86f541952fd520429be4998fd28e46c32da1d60edc1cd63c3b09";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "pal_interaction_msgs/ASRLangModelMngmt";
    /** @brief Original native identity; empty native identity is unqualified. */
    public static final String NATIVE_IDENTITY = "";
    /** @brief Original source constant ENABLE; consumes no instance wire bytes. */
    public static final byte CONST_ENABLE = (byte)1;
    /** @brief Original source constant DISABLE; consumes no instance wire bytes. */
    public static final byte CONST_DISABLE = (byte)2;
    /** @brief Original source constant LOAD; consumes no instance wire bytes. */
    public static final byte CONST_LOAD = (byte)3;
    /** @brief Original source constant UNLOAD; consumes no instance wire bytes. */
    public static final byte CONST_UNLOAD = (byte)4;
    /** @brief Complete native field action; scalar, text bound 0. */
    public byte field_action = (byte)0;
    /** @brief Complete native field modelName; scalar, text bound 128. */
    public String field_modelName = "";

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros1Pal_interaction_msgsASRLangModelMngmt()
    {
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros1Pal_interaction_msgsASRLangModelMngmt value)
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
    public static Ros1Pal_interaction_msgsASRLangModelMngmt decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros1Pal_interaction_msgsASRLangModelMngmt value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros1Pal_interaction_msgsASRLangModelMngmt value)
    {
        if(value == null)
        {
            throw new IllegalArgumentException("Null canonical record");
        }
        int start = wire.position();
        wire.i8(value.field_action);
        wire.string(value.field_modelName, 128);
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
    public static Ros1Pal_interaction_msgsASRLangModelMngmt readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros1Pal_interaction_msgsASRLangModelMngmt value = new Ros1Pal_interaction_msgsASRLangModelMngmt();
        value.field_action = wire.i8();
        value.field_modelName = wire.string(128);
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
        return value;
    }
}
