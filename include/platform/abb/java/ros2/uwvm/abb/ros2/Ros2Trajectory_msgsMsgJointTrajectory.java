/**
 * @file Ros2Trajectory_msgsMsgJointTrajectory.java
 * @brief Represent the complete original ABB ROS 2 canonical value catalog.
 * @details The caller owns every record and its finite dynamic backing storage. Codecs retain all
 * fields, original constants and native defaults; field units and frames follow the retained
 * definitions. Malformed or out-of-bound wire values are rejected. These are guest values rather than
 * native ROS objects; importing them grants no transport alias.
 */
package uwvm.abb.ros2;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 2 trajectory_msgs/msg/JointTrajectory value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros2Trajectory_msgsMsgJointTrajectory
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 4164;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 20;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_d74956440763bd09c76ec623efeb322aa89be8ef6410b9125d4e2cb1aeeb69c0";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "trajectory_msgs/msg/JointTrajectory";
    /** @brief Original native identity; empty native identity is unqualified. */
    public static final String NATIVE_IDENTITY = "";
    /** @brief Complete native field header; scalar, text bound 0. */
    public Ros2Std_msgsMsgHeader field_header = new Ros2Std_msgsMsgHeader();
    /** @brief Complete native field joint_names; sequence capacity 12, text bound 64. */
    public String[] field_joint_names = new String[0];
    /** @brief Complete native field points; sequence capacity 8, text bound 0. */
    public Ros2Trajectory_msgsMsgJointTrajectoryPoint[] field_points = new Ros2Trajectory_msgsMsgJointTrajectoryPoint[0];

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros2Trajectory_msgsMsgJointTrajectory()
    {
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros2Trajectory_msgsMsgJointTrajectory value)
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
    public static Ros2Trajectory_msgsMsgJointTrajectory decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros2Trajectory_msgsMsgJointTrajectory value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros2Trajectory_msgsMsgJointTrajectory value)
    {
        if(value == null)
        {
            throw new IllegalArgumentException("Null canonical record");
        }
        int start = wire.position();
        Ros2Std_msgsMsgHeader.writeFields(wire, value.field_header);
        if(value.field_joint_names == null || value.field_joint_names.length > 12)
        {
            throw new IllegalArgumentException("Invalid joint_names extent");
        }
        wire.u32((long)value.field_joint_names.length);
        for(int index = 0; index < value.field_joint_names.length; index++)
        {
            wire.string(value.field_joint_names[index], 64);
        }
        if(value.field_points == null || value.field_points.length > 8)
        {
            throw new IllegalArgumentException("Invalid points extent");
        }
        wire.u32((long)value.field_points.length);
        for(int index = 0; index < value.field_points.length; index++)
        {
            Ros2Trajectory_msgsMsgJointTrajectoryPoint.writeFields(wire, value.field_points[index]);
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
    public static Ros2Trajectory_msgsMsgJointTrajectory readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros2Trajectory_msgsMsgJointTrajectory value = new Ros2Trajectory_msgsMsgJointTrajectory();
        value.field_header = Ros2Std_msgsMsgHeader.readFields(wire);
        value.field_joint_names = new String[wire.count(12)];
        for(int index = 0; index < value.field_joint_names.length; index++)
        {
            value.field_joint_names[index] = wire.string(64);
        }
        value.field_points = new Ros2Trajectory_msgsMsgJointTrajectoryPoint[wire.count(8)];
        for(int index = 0; index < value.field_points.length; index++)
        {
            value.field_points[index] = Ros2Trajectory_msgsMsgJointTrajectoryPoint.readFields(wire);
        }
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
        return value;
    }
}
