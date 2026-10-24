package uwvm.pal.ros1.ros1_noetic_devel;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 1 pal_tablet_msgs/RobotStatus value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros1Pal_tablet_msgsRobotStatus
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 536;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 4;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_b01e5783832f7b816d0dca678bca11f49554304116bf9a8fccc9b36b18b4478d";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "pal_tablet_msgs/RobotStatus";
    /** @brief Original native identity; empty native identity is unqualified. */
    public static final String NATIVE_IDENTITY = "";
    /** @brief Complete native field messages; sequence capacity 4, text bound 0. */
    public Ros1Pal_tablet_msgsFunctionalityStatus[] field_messages = new Ros1Pal_tablet_msgsFunctionalityStatus[0];

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros1Pal_tablet_msgsRobotStatus()
    {
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros1Pal_tablet_msgsRobotStatus value)
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
    public static Ros1Pal_tablet_msgsRobotStatus decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros1Pal_tablet_msgsRobotStatus value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros1Pal_tablet_msgsRobotStatus value)
    {
        if(value == null)
        {
            throw new IllegalArgumentException("Null canonical record");
        }
        int start = wire.position();
        if(value.field_messages == null || value.field_messages.length > 4)
        {
            throw new IllegalArgumentException("Invalid messages extent");
        }
        wire.u32((long)value.field_messages.length);
        for(int index = 0; index < value.field_messages.length; index++)
        {
            Ros1Pal_tablet_msgsFunctionalityStatus.writeFields(wire, value.field_messages[index]);
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
    public static Ros1Pal_tablet_msgsRobotStatus readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros1Pal_tablet_msgsRobotStatus value = new Ros1Pal_tablet_msgsRobotStatus();
        value.field_messages = new Ros1Pal_tablet_msgsFunctionalityStatus[wire.count(4)];
        for(int index = 0; index < value.field_messages.length; index++)
        {
            value.field_messages[index] = Ros1Pal_tablet_msgsFunctionalityStatus.readFields(wire);
        }
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
        return value;
    }
}
