package uwvm.pal.ros1.ros1_humble_devel;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 1 pal_navigation_msgs/Emergency value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros1Pal_navigation_msgsEmergency
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 535;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 7;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_00339764ab9f5d7e90ce08b5675434a1113e38b31e9f94166a6c8b994b02d635";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "pal_navigation_msgs/Emergency";
    /** @brief Original native identity; empty native identity is unqualified. */
    public static final String NATIVE_IDENTITY = "";
    /** @brief Complete native field data; scalar, text bound 0. */
    public boolean field_data = false;
    /** @brief Complete native field forward; scalar, text bound 0. */
    public boolean field_forward = false;
    /** @brief Complete native field backward; scalar, text bound 0. */
    public boolean field_backward = false;
    /** @brief Complete native field msgs; sequence capacity 4, text bound 0. */
    public Ros1Std_msgsString[] field_msgs = new Ros1Std_msgsString[0];

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros1Pal_navigation_msgsEmergency()
    {
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros1Pal_navigation_msgsEmergency value)
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
    public static Ros1Pal_navigation_msgsEmergency decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros1Pal_navigation_msgsEmergency value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros1Pal_navigation_msgsEmergency value)
    {
        if(value == null)
        {
            throw new IllegalArgumentException("Null canonical record");
        }
        int start = wire.position();
        wire.bool(value.field_data);
        wire.bool(value.field_forward);
        wire.bool(value.field_backward);
        if(value.field_msgs == null || value.field_msgs.length > 4)
        {
            throw new IllegalArgumentException("Invalid msgs extent");
        }
        wire.u32((long)value.field_msgs.length);
        for(int index = 0; index < value.field_msgs.length; index++)
        {
            Ros1Std_msgsString.writeFields(wire, value.field_msgs[index]);
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
    public static Ros1Pal_navigation_msgsEmergency readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros1Pal_navigation_msgsEmergency value = new Ros1Pal_navigation_msgsEmergency();
        value.field_data = wire.bool();
        value.field_forward = wire.bool();
        value.field_backward = wire.bool();
        value.field_msgs = new Ros1Std_msgsString[wire.count(4)];
        for(int index = 0; index < value.field_msgs.length; index++)
        {
            value.field_msgs[index] = Ros1Std_msgsString.readFields(wire);
        }
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
        return value;
    }
}
