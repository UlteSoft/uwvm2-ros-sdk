package uwvm.trossen.ros1.ros1_noetic;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 1 trajectory_msgs/JointTrajectory value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros1Trajectory_msgsJointTrajectory
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 4408;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 24;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_2fd934a09c8256baeb450d670d83acc51bad97dc2e7ad750126353964fa6c2b9";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "trajectory_msgs/JointTrajectory";
    /** @brief Original native identity; empty native identity is unqualified. */
    public static final String NATIVE_IDENTITY = "";
    /** @brief Complete native field header; scalar, text bound 0. */
    public Ros1Std_msgsHeader field_header = new Ros1Std_msgsHeader();
    /** @brief Complete native field joint_names; sequence capacity 16, text bound 128. */
    public String[] field_joint_names = new String[0];
    /** @brief Complete native field points; sequence capacity 4, text bound 0. */
    public Ros1Trajectory_msgsJointTrajectoryPoint[] field_points = new Ros1Trajectory_msgsJointTrajectoryPoint[0];

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros1Trajectory_msgsJointTrajectory()
    {
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros1Trajectory_msgsJointTrajectory value)
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
    public static Ros1Trajectory_msgsJointTrajectory decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros1Trajectory_msgsJointTrajectory value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros1Trajectory_msgsJointTrajectory value)
    {
        if(value == null)
        {
            throw new IllegalArgumentException("Null canonical record");
        }
        int start = wire.position();
        Ros1Std_msgsHeader.writeFields(wire, value.field_header);
        if(value.field_joint_names == null || value.field_joint_names.length > 16)
        {
            throw new IllegalArgumentException("Invalid joint_names extent");
        }
        wire.u32((long)value.field_joint_names.length);
        for(int index = 0; index < value.field_joint_names.length; index++)
        {
            wire.string(value.field_joint_names[index], 128);
        }
        if(value.field_points == null || value.field_points.length > 4)
        {
            throw new IllegalArgumentException("Invalid points extent");
        }
        wire.u32((long)value.field_points.length);
        for(int index = 0; index < value.field_points.length; index++)
        {
            Ros1Trajectory_msgsJointTrajectoryPoint.writeFields(wire, value.field_points[index]);
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
    public static Ros1Trajectory_msgsJointTrajectory readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros1Trajectory_msgsJointTrajectory value = new Ros1Trajectory_msgsJointTrajectory();
        value.field_header = Ros1Std_msgsHeader.readFields(wire);
        value.field_joint_names = new String[wire.count(16)];
        for(int index = 0; index < value.field_joint_names.length; index++)
        {
            value.field_joint_names[index] = wire.string(128);
        }
        value.field_points = new Ros1Trajectory_msgsJointTrajectoryPoint[wire.count(4)];
        for(int index = 0; index < value.field_points.length; index++)
        {
            value.field_points[index] = Ros1Trajectory_msgsJointTrajectoryPoint.readFields(wire);
        }
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
        return value;
    }
}
