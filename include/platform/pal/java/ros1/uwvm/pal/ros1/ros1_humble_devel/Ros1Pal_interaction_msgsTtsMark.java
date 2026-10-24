package uwvm.pal.ros1.ros1_humble_devel;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 1 pal_interaction_msgs/TtsMark value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros1Pal_interaction_msgsTtsMark
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 4364;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 12;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_4f92d66f3ec5bc7645da4cb0dabce2d662ebffe13a67c999c5cf3d771f11fc95";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "pal_interaction_msgs/TtsMark";
    /** @brief Original native identity; empty native identity is unqualified. */
    public static final String NATIVE_IDENTITY = "";
    /** @brief Complete native field id; scalar, text bound 128. */
    public String field_id = "";
    /** @brief Complete native field keys; sequence capacity 16, text bound 128. */
    public String[] field_keys = new String[0];
    /** @brief Complete native field value; sequence capacity 16, text bound 128. */
    public String[] field_value = new String[0];

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros1Pal_interaction_msgsTtsMark()
    {
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros1Pal_interaction_msgsTtsMark value)
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
    public static Ros1Pal_interaction_msgsTtsMark decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros1Pal_interaction_msgsTtsMark value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros1Pal_interaction_msgsTtsMark value)
    {
        if(value == null)
        {
            throw new IllegalArgumentException("Null canonical record");
        }
        int start = wire.position();
        wire.string(value.field_id, 128);
        if(value.field_keys == null || value.field_keys.length > 16)
        {
            throw new IllegalArgumentException("Invalid keys extent");
        }
        wire.u32((long)value.field_keys.length);
        for(int index = 0; index < value.field_keys.length; index++)
        {
            wire.string(value.field_keys[index], 128);
        }
        if(value.field_value == null || value.field_value.length > 16)
        {
            throw new IllegalArgumentException("Invalid value extent");
        }
        wire.u32((long)value.field_value.length);
        for(int index = 0; index < value.field_value.length; index++)
        {
            wire.string(value.field_value[index], 128);
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
    public static Ros1Pal_interaction_msgsTtsMark readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros1Pal_interaction_msgsTtsMark value = new Ros1Pal_interaction_msgsTtsMark();
        value.field_id = wire.string(128);
        value.field_keys = new String[wire.count(16)];
        for(int index = 0; index < value.field_keys.length; index++)
        {
            value.field_keys[index] = wire.string(128);
        }
        value.field_value = new String[wire.count(16)];
        for(int index = 0; index < value.field_value.length; index++)
        {
            value.field_value[index] = wire.string(128);
        }
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
        return value;
    }
}
