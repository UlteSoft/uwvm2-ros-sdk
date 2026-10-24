package uwvm.robotis.ros2.humble;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 2 nav_msgs/msg/Odometry value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros2Nav_msgsMsgOdometry
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 1080;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 696;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_4eb9aa4edb3d288080deaae0326c26a75923e69d40c9b10219baf6d441ea8111";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "nav_msgs/msg/Odometry";
    /** @brief Original native identity; empty native identity is unqualified. */
    public static final String NATIVE_IDENTITY = "";
    /** @brief Complete native field header; scalar, text bound 0. */
    public Ros2Std_msgsMsgHeader field_header = new Ros2Std_msgsMsgHeader();
    /** @brief Complete native field child_frame_id; scalar, text bound 256. */
    public String field_child_frame_id = "";
    /** @brief Complete native field pose; scalar, text bound 0. */
    public Ros2Geometry_msgsMsgPoseWithCovariance field_pose = new Ros2Geometry_msgsMsgPoseWithCovariance();
    /** @brief Complete native field twist; scalar, text bound 0. */
    public Ros2Geometry_msgsMsgTwistWithCovariance field_twist = new Ros2Geometry_msgsMsgTwistWithCovariance();

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros2Nav_msgsMsgOdometry()
    {
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros2Nav_msgsMsgOdometry value)
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
    public static Ros2Nav_msgsMsgOdometry decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros2Nav_msgsMsgOdometry value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros2Nav_msgsMsgOdometry value)
    {
        if(value == null)
        {
            throw new IllegalArgumentException("Null canonical record");
        }
        int start = wire.position();
        Ros2Std_msgsMsgHeader.writeFields(wire, value.field_header);
        wire.string(value.field_child_frame_id, 256);
        Ros2Geometry_msgsMsgPoseWithCovariance.writeFields(wire, value.field_pose);
        Ros2Geometry_msgsMsgTwistWithCovariance.writeFields(wire, value.field_twist);
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
    public static Ros2Nav_msgsMsgOdometry readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros2Nav_msgsMsgOdometry value = new Ros2Nav_msgsMsgOdometry();
        value.field_header = Ros2Std_msgsMsgHeader.readFields(wire);
        value.field_child_frame_id = wire.string(256);
        value.field_pose = Ros2Geometry_msgsMsgPoseWithCovariance.readFields(wire);
        value.field_twist = Ros2Geometry_msgsMsgTwistWithCovariance.readFields(wire);
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
        return value;
    }
}
