package uwvm.robotis.ros2.humble;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 2 geometry_msgs/msg/TwistStamped value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros2Geometry_msgsMsgTwistStamped
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 188;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 60;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_7448b885388ff3454de1a35b8c5c895ee58b791267b435df1e4cf7c1eee0f573";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "geometry_msgs/msg/TwistStamped";
    /** @brief Original native identity; empty native identity is unqualified. */
    public static final String NATIVE_IDENTITY = "";
    /** @brief Complete native field header; scalar, text bound 0. */
    public Ros2Std_msgsMsgHeader field_header = new Ros2Std_msgsMsgHeader();
    /** @brief Complete native field twist; scalar, text bound 0. */
    public Ros2Geometry_msgsMsgTwist field_twist = new Ros2Geometry_msgsMsgTwist();

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros2Geometry_msgsMsgTwistStamped()
    {
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros2Geometry_msgsMsgTwistStamped value)
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
    public static Ros2Geometry_msgsMsgTwistStamped decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros2Geometry_msgsMsgTwistStamped value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros2Geometry_msgsMsgTwistStamped value)
    {
        if(value == null)
        {
            throw new IllegalArgumentException("Null canonical record");
        }
        int start = wire.position();
        Ros2Std_msgsMsgHeader.writeFields(wire, value.field_header);
        Ros2Geometry_msgsMsgTwist.writeFields(wire, value.field_twist);
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
    public static Ros2Geometry_msgsMsgTwistStamped readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros2Geometry_msgsMsgTwistStamped value = new Ros2Geometry_msgsMsgTwistStamped();
        value.field_header = Ros2Std_msgsMsgHeader.readFields(wire);
        value.field_twist = Ros2Geometry_msgsMsgTwist.readFields(wire);
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
        return value;
    }
}
