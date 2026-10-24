package uwvm.robotis.ros2.humble;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 2 turtlebot3_msgs/msg/Sound value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros2Turtlebot3_msgsMsgSound
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 1;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 1;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_e8bd9a5fdf84ad1df0f264bd13a0e8966918de19ab62e91c7524dd8fc17a4e4b";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "turtlebot3_msgs/msg/Sound";
    /** @brief Original native identity; empty native identity is unqualified. */
    public static final String NATIVE_IDENTITY = "";
    /** @brief Original source constant OFF; consumes no instance wire bytes. */
    public static final int CONST_OFF = 0;
    /** @brief Original source constant ON; consumes no instance wire bytes. */
    public static final int CONST_ON = 1;
    /** @brief Original source constant LOW_BATTERY; consumes no instance wire bytes. */
    public static final int CONST_LOW_BATTERY = 2;
    /** @brief Original source constant ERROR; consumes no instance wire bytes. */
    public static final int CONST_ERROR = 3;
    /** @brief Original source constant BUTTON1; consumes no instance wire bytes. */
    public static final int CONST_BUTTON1 = 4;
    /** @brief Original source constant BUTTON2; consumes no instance wire bytes. */
    public static final int CONST_BUTTON2 = 5;
    /** @brief Complete native field value; scalar, text bound 0. */
    public int field_value = 0;

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros2Turtlebot3_msgsMsgSound()
    {
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros2Turtlebot3_msgsMsgSound value)
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
    public static Ros2Turtlebot3_msgsMsgSound decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros2Turtlebot3_msgsMsgSound value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros2Turtlebot3_msgsMsgSound value)
    {
        if(value == null)
        {
            throw new IllegalArgumentException("Null canonical record");
        }
        int start = wire.position();
        wire.u8(value.field_value);
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
    public static Ros2Turtlebot3_msgsMsgSound readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros2Turtlebot3_msgsMsgSound value = new Ros2Turtlebot3_msgsMsgSound();
        value.field_value = wire.u8();
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
        return value;
    }
}
