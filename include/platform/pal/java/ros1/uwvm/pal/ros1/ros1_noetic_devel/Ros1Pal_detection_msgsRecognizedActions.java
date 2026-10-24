package uwvm.pal.ros1.ros1_noetic_devel;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 1 pal_detection_msgs/RecognizedActions value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros1Pal_detection_msgsRecognizedActions
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 2524;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 28;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_b061282e0a4039af635d355d554c8f93af760ff116dfae31f36535b8b9378c33";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "pal_detection_msgs/RecognizedActions";
    /** @brief Original native identity; empty native identity is unqualified. */
    public static final String NATIVE_IDENTITY = "";
    /** @brief Complete native field header; scalar, text bound 0. */
    public Ros1Std_msgsHeader field_header = new Ros1Std_msgsHeader();
    /** @brief Complete native field action_name; sequence capacity 16, text bound 128. */
    public String[] field_action_name = new String[0];
    /** @brief Complete native field u; sequence capacity 16, text bound 0. */
    public long[] field_u = new long[0];
    /** @brief Complete native field v; sequence capacity 16, text bound 0. */
    public long[] field_v = new long[0];

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros1Pal_detection_msgsRecognizedActions()
    {
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros1Pal_detection_msgsRecognizedActions value)
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
    public static Ros1Pal_detection_msgsRecognizedActions decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros1Pal_detection_msgsRecognizedActions value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros1Pal_detection_msgsRecognizedActions value)
    {
        if(value == null)
        {
            throw new IllegalArgumentException("Null canonical record");
        }
        int start = wire.position();
        Ros1Std_msgsHeader.writeFields(wire, value.field_header);
        if(value.field_action_name == null || value.field_action_name.length > 16)
        {
            throw new IllegalArgumentException("Invalid action_name extent");
        }
        wire.u32((long)value.field_action_name.length);
        for(int index = 0; index < value.field_action_name.length; index++)
        {
            wire.string(value.field_action_name[index], 128);
        }
        if(value.field_u == null || value.field_u.length > 16)
        {
            throw new IllegalArgumentException("Invalid u extent");
        }
        wire.u32((long)value.field_u.length);
        for(int index = 0; index < value.field_u.length; index++)
        {
            wire.i64(value.field_u[index]);
        }
        if(value.field_v == null || value.field_v.length > 16)
        {
            throw new IllegalArgumentException("Invalid v extent");
        }
        wire.u32((long)value.field_v.length);
        for(int index = 0; index < value.field_v.length; index++)
        {
            wire.i64(value.field_v[index]);
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
    public static Ros1Pal_detection_msgsRecognizedActions readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros1Pal_detection_msgsRecognizedActions value = new Ros1Pal_detection_msgsRecognizedActions();
        value.field_header = Ros1Std_msgsHeader.readFields(wire);
        value.field_action_name = new String[wire.count(16)];
        for(int index = 0; index < value.field_action_name.length; index++)
        {
            value.field_action_name[index] = wire.string(128);
        }
        value.field_u = new long[wire.count(16)];
        for(int index = 0; index < value.field_u.length; index++)
        {
            value.field_u[index] = wire.i64();
        }
        value.field_v = new long[wire.count(16)];
        for(int index = 0; index < value.field_v.length; index++)
        {
            value.field_v[index] = wire.i64();
        }
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
        return value;
    }
}
