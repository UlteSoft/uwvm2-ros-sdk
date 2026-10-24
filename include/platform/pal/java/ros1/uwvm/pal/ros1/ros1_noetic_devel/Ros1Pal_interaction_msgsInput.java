package uwvm.pal.ros1.ros1_noetic_devel;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 1 pal_interaction_msgs/Input value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros1Pal_interaction_msgsInput
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 1192;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 8;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_11478aeb5c676f50680ee5c4e75973b10cec5df40f09cbb8573ddad4eb91d307";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "pal_interaction_msgs/Input";
    /** @brief Original native identity; empty native identity is unqualified. */
    public static final String NATIVE_IDENTITY = "";
    /** @brief Original source constant INPUT_ACCEPT; consumes no instance wire bytes. */
    public static final String CONST_INPUT_ACCEPT = "INPUT_ACCEPT";
    /** @brief Original source constant INPUT_REJECT; consumes no instance wire bytes. */
    public static final String CONST_INPUT_REJECT = "INPUT_REJECT";
    /** @brief Original source constant INPUT_CANCEL; consumes no instance wire bytes. */
    public static final String CONST_INPUT_CANCEL = "INPUT_CANCEL";
    /** @brief Original source constant OK; consumes no instance wire bytes. */
    public static final String CONST_OK = "ok";
    /** @brief Original source constant YES; consumes no instance wire bytes. */
    public static final String CONST_YES = "yes";
    /** @brief Original source constant NO; consumes no instance wire bytes. */
    public static final String CONST_NO = "no";
    /** @brief Original source constant CANCEL; consumes no instance wire bytes. */
    public static final String CONST_CANCEL = "cancel";
    /** @brief Original source constant ABORT; consumes no instance wire bytes. */
    public static final String CONST_ABORT = "abort";
    /** @brief Complete native field action; scalar, text bound 128. */
    public String field_action = "";
    /** @brief Complete native field args; sequence capacity 4, text bound 0. */
    public Ros1Pal_interaction_msgsInputArgument[] field_args = new Ros1Pal_interaction_msgsInputArgument[0];

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros1Pal_interaction_msgsInput()
    {
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros1Pal_interaction_msgsInput value)
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
    public static Ros1Pal_interaction_msgsInput decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros1Pal_interaction_msgsInput value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros1Pal_interaction_msgsInput value)
    {
        if(value == null)
        {
            throw new IllegalArgumentException("Null canonical record");
        }
        int start = wire.position();
        wire.string(value.field_action, 128);
        if(value.field_args == null || value.field_args.length > 4)
        {
            throw new IllegalArgumentException("Invalid args extent");
        }
        wire.u32((long)value.field_args.length);
        for(int index = 0; index < value.field_args.length; index++)
        {
            Ros1Pal_interaction_msgsInputArgument.writeFields(wire, value.field_args[index]);
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
    public static Ros1Pal_interaction_msgsInput readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros1Pal_interaction_msgsInput value = new Ros1Pal_interaction_msgsInput();
        value.field_action = wire.string(128);
        value.field_args = new Ros1Pal_interaction_msgsInputArgument[wire.count(4)];
        for(int index = 0; index < value.field_args.length; index++)
        {
            value.field_args[index] = Ros1Pal_interaction_msgsInputArgument.readFields(wire);
        }
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
        return value;
    }
}
