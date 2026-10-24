package uwvm.robotis.ros2.humble;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 2 turtlebot3_msgs/msg/VersionInfo value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros2Turtlebot3_msgsMsgVersionInfo
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 780;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 12;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_7668c77b01a05eeb8ba3c5f259f3f3a9dfad3d4fdf8aa566d65f6e8f1c0f2d6a";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "turtlebot3_msgs/msg/VersionInfo";
    /** @brief Original native identity; empty native identity is unqualified. */
    public static final String NATIVE_IDENTITY = "";
    /** @brief Complete native field hardware; scalar, text bound 256. */
    public String field_hardware = "";
    /** @brief Complete native field firmware; scalar, text bound 256. */
    public String field_firmware = "";
    /** @brief Complete native field software; scalar, text bound 256. */
    public String field_software = "";

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros2Turtlebot3_msgsMsgVersionInfo()
    {
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros2Turtlebot3_msgsMsgVersionInfo value)
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
    public static Ros2Turtlebot3_msgsMsgVersionInfo decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros2Turtlebot3_msgsMsgVersionInfo value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros2Turtlebot3_msgsMsgVersionInfo value)
    {
        if(value == null)
        {
            throw new IllegalArgumentException("Null canonical record");
        }
        int start = wire.position();
        wire.string(value.field_hardware, 256);
        wire.string(value.field_firmware, 256);
        wire.string(value.field_software, 256);
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
    public static Ros2Turtlebot3_msgsMsgVersionInfo readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros2Turtlebot3_msgsMsgVersionInfo value = new Ros2Turtlebot3_msgsMsgVersionInfo();
        value.field_hardware = wire.string(256);
        value.field_firmware = wire.string(256);
        value.field_software = wire.string(256);
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
        return value;
    }
}
