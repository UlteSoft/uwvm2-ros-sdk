/**
 * @file Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint.java
 * @brief Represent the complete original ABB ROS 2 canonical value catalog.
 * @details The caller owns every record and its finite dynamic backing storage. Codecs retain all
 * fields, original constants and native defaults; field units and frames follow the retained
 * definitions. Malformed or out-of-bound wire values are rejected. These are guest values rather than
 * native ROS objects; importing them grants no transport alias.
 */
package uwvm.abb.ros2;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 2 trajectory_msgs/msg/MultiDOFJointTrajectoryPoint value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 324;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 20;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_6590b7ca1cdaa89da04b7a661266e2d4c6e3e2668dc90505a7c24d7be8a43242";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "trajectory_msgs/msg/MultiDOFJointTrajectoryPoint";
    /** @brief Original native identity; empty native identity is unqualified. */
    public static final String NATIVE_IDENTITY = "";
    /** @brief Complete native field transforms; sequence capacity 2, text bound 0. */
    public Ros2Geometry_msgsMsgTransform[] field_transforms = new Ros2Geometry_msgsMsgTransform[0];
    /** @brief Complete native field velocities; sequence capacity 2, text bound 0. */
    public Ros2Geometry_msgsMsgTwist[] field_velocities = new Ros2Geometry_msgsMsgTwist[0];
    /** @brief Complete native field accelerations; sequence capacity 2, text bound 0. */
    public Ros2Geometry_msgsMsgTwist[] field_accelerations = new Ros2Geometry_msgsMsgTwist[0];
    /** @brief Complete native field time_from_start; scalar, text bound 0. */
    public Ros2Builtin_interfacesMsgDuration field_time_from_start = new Ros2Builtin_interfacesMsgDuration();

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint()
    {
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint value)
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
    public static Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint value)
    {
        if(value == null)
        {
            throw new IllegalArgumentException("Null canonical record");
        }
        int start = wire.position();
        if(value.field_transforms == null || value.field_transforms.length > 2)
        {
            throw new IllegalArgumentException("Invalid transforms extent");
        }
        wire.u32((long)value.field_transforms.length);
        for(int index = 0; index < value.field_transforms.length; index++)
        {
            Ros2Geometry_msgsMsgTransform.writeFields(wire, value.field_transforms[index]);
        }
        if(value.field_velocities == null || value.field_velocities.length > 2)
        {
            throw new IllegalArgumentException("Invalid velocities extent");
        }
        wire.u32((long)value.field_velocities.length);
        for(int index = 0; index < value.field_velocities.length; index++)
        {
            Ros2Geometry_msgsMsgTwist.writeFields(wire, value.field_velocities[index]);
        }
        if(value.field_accelerations == null || value.field_accelerations.length > 2)
        {
            throw new IllegalArgumentException("Invalid accelerations extent");
        }
        wire.u32((long)value.field_accelerations.length);
        for(int index = 0; index < value.field_accelerations.length; index++)
        {
            Ros2Geometry_msgsMsgTwist.writeFields(wire, value.field_accelerations[index]);
        }
        Ros2Builtin_interfacesMsgDuration.writeFields(wire, value.field_time_from_start);
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
    public static Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint value = new Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint();
        value.field_transforms = new Ros2Geometry_msgsMsgTransform[wire.count(2)];
        for(int index = 0; index < value.field_transforms.length; index++)
        {
            value.field_transforms[index] = Ros2Geometry_msgsMsgTransform.readFields(wire);
        }
        value.field_velocities = new Ros2Geometry_msgsMsgTwist[wire.count(2)];
        for(int index = 0; index < value.field_velocities.length; index++)
        {
            value.field_velocities[index] = Ros2Geometry_msgsMsgTwist.readFields(wire);
        }
        value.field_accelerations = new Ros2Geometry_msgsMsgTwist[wire.count(2)];
        for(int index = 0; index < value.field_accelerations.length; index++)
        {
            value.field_accelerations[index] = Ros2Geometry_msgsMsgTwist.readFields(wire);
        }
        value.field_time_from_start = Ros2Builtin_interfacesMsgDuration.readFields(wire);
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
        return value;
    }
}
