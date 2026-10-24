package uwvm.robotis.ros1.noetic;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 1 nav_msgs/Odometry value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros1Nav_msgsOdometry
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 1084;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 700;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_e0ff5eb7aef868891846ac7618249b12c18fcf0969653f24fdeaa7644e636ca0";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "nav_msgs/Odometry";
    /** @brief Original native identity; empty native identity is unqualified. */
    public static final String NATIVE_IDENTITY = "";
    /** @brief Complete native field header; scalar, text bound 0. */
    public Ros1Std_msgsHeader field_header = new Ros1Std_msgsHeader();
    /** @brief Complete native field child_frame_id; scalar, text bound 256. */
    public String field_child_frame_id = "";
    /** @brief Complete native field pose; scalar, text bound 0. */
    public Ros1Geometry_msgsPoseWithCovariance field_pose = new Ros1Geometry_msgsPoseWithCovariance();
    /** @brief Complete native field twist; scalar, text bound 0. */
    public Ros1Geometry_msgsTwistWithCovariance field_twist = new Ros1Geometry_msgsTwistWithCovariance();

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros1Nav_msgsOdometry()
    {
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros1Nav_msgsOdometry value)
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
    public static Ros1Nav_msgsOdometry decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros1Nav_msgsOdometry value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros1Nav_msgsOdometry value)
    {
        if(value == null)
        {
            throw new IllegalArgumentException("Null canonical record");
        }
        int start = wire.position();
        Ros1Std_msgsHeader.writeFields(wire, value.field_header);
        wire.string(value.field_child_frame_id, 256);
        Ros1Geometry_msgsPoseWithCovariance.writeFields(wire, value.field_pose);
        Ros1Geometry_msgsTwistWithCovariance.writeFields(wire, value.field_twist);
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
    public static Ros1Nav_msgsOdometry readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros1Nav_msgsOdometry value = new Ros1Nav_msgsOdometry();
        value.field_header = Ros1Std_msgsHeader.readFields(wire);
        value.field_child_frame_id = wire.string(256);
        value.field_pose = Ros1Geometry_msgsPoseWithCovariance.readFields(wire);
        value.field_twist = Ros1Geometry_msgsTwistWithCovariance.readFields(wire);
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
        return value;
    }
}
