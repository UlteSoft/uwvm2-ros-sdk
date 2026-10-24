/**
 * @file Ros2Trajectory_msgsMsgJointTrajectoryPoint.java
 * @brief Represent the complete original YASKAWA ROS 2 canonical value catalog.
 * @details The caller owns every record and its finite dynamic backing storage. Codecs retain all
 * fields, original constants and native defaults; field units and frames follow the retained
 * definitions. Malformed or out-of-bound wire values are rejected. These are guest values rather than
 * native ROS objects; importing them grants no transport alias.
 */
package uwvm.yaskawa.ros2;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 2 trajectory_msgs/msg/JointTrajectoryPoint value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros2Trajectory_msgsMsgJointTrajectoryPoint
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 408;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 24;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_4d55f494f060a9a3ff23bedd54da49f9e70e6b77acbdf911878afbf672cbadc5";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "trajectory_msgs/msg/JointTrajectoryPoint";
    /** @brief Original native identity; empty native identity is unqualified. */
    public static final String NATIVE_IDENTITY = "";
    /** @brief Complete native field positions; sequence capacity 12, text bound 0. */
    public double[] field_positions = new double[0];
    /** @brief Complete native field velocities; sequence capacity 12, text bound 0. */
    public double[] field_velocities = new double[0];
    /** @brief Complete native field accelerations; sequence capacity 12, text bound 0. */
    public double[] field_accelerations = new double[0];
    /** @brief Complete native field effort; sequence capacity 12, text bound 0. */
    public double[] field_effort = new double[0];
    /** @brief Complete native field time_from_start; scalar, text bound 0. */
    public Ros2Builtin_interfacesMsgDuration field_time_from_start = new Ros2Builtin_interfacesMsgDuration();

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros2Trajectory_msgsMsgJointTrajectoryPoint()
    {
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros2Trajectory_msgsMsgJointTrajectoryPoint value)
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
    public static Ros2Trajectory_msgsMsgJointTrajectoryPoint decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros2Trajectory_msgsMsgJointTrajectoryPoint value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros2Trajectory_msgsMsgJointTrajectoryPoint value)
    {
        if(value == null)
        {
            throw new IllegalArgumentException("Null canonical record");
        }
        int start = wire.position();
        if(value.field_positions == null || value.field_positions.length > 12)
        {
            throw new IllegalArgumentException("Invalid positions extent");
        }
        wire.u32((long)value.field_positions.length);
        for(int index = 0; index < value.field_positions.length; index++)
        {
            if(!Double.isFinite(value.field_positions[index]))
            {
                throw new IllegalArgumentException("Nonfinite positions");
            }
            wire.f64(value.field_positions[index]);
        }
        if(value.field_velocities == null || value.field_velocities.length > 12)
        {
            throw new IllegalArgumentException("Invalid velocities extent");
        }
        wire.u32((long)value.field_velocities.length);
        for(int index = 0; index < value.field_velocities.length; index++)
        {
            if(!Double.isFinite(value.field_velocities[index]))
            {
                throw new IllegalArgumentException("Nonfinite velocities");
            }
            wire.f64(value.field_velocities[index]);
        }
        if(value.field_accelerations == null || value.field_accelerations.length > 12)
        {
            throw new IllegalArgumentException("Invalid accelerations extent");
        }
        wire.u32((long)value.field_accelerations.length);
        for(int index = 0; index < value.field_accelerations.length; index++)
        {
            if(!Double.isFinite(value.field_accelerations[index]))
            {
                throw new IllegalArgumentException("Nonfinite accelerations");
            }
            wire.f64(value.field_accelerations[index]);
        }
        if(value.field_effort == null || value.field_effort.length > 12)
        {
            throw new IllegalArgumentException("Invalid effort extent");
        }
        wire.u32((long)value.field_effort.length);
        for(int index = 0; index < value.field_effort.length; index++)
        {
            if(!Double.isFinite(value.field_effort[index]))
            {
                throw new IllegalArgumentException("Nonfinite effort");
            }
            wire.f64(value.field_effort[index]);
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
    public static Ros2Trajectory_msgsMsgJointTrajectoryPoint readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros2Trajectory_msgsMsgJointTrajectoryPoint value = new Ros2Trajectory_msgsMsgJointTrajectoryPoint();
        value.field_positions = new double[wire.count(12)];
        for(int index = 0; index < value.field_positions.length; index++)
        {
            value.field_positions[index] = wire.f64();
            if(!Double.isFinite(value.field_positions[index]))
            {
                throw new IllegalArgumentException("Nonfinite positions");
            }
        }
        value.field_velocities = new double[wire.count(12)];
        for(int index = 0; index < value.field_velocities.length; index++)
        {
            value.field_velocities[index] = wire.f64();
            if(!Double.isFinite(value.field_velocities[index]))
            {
                throw new IllegalArgumentException("Nonfinite velocities");
            }
        }
        value.field_accelerations = new double[wire.count(12)];
        for(int index = 0; index < value.field_accelerations.length; index++)
        {
            value.field_accelerations[index] = wire.f64();
            if(!Double.isFinite(value.field_accelerations[index]))
            {
                throw new IllegalArgumentException("Nonfinite accelerations");
            }
        }
        value.field_effort = new double[wire.count(12)];
        for(int index = 0; index < value.field_effort.length; index++)
        {
            value.field_effort[index] = wire.f64();
            if(!Double.isFinite(value.field_effort[index]))
            {
                throw new IllegalArgumentException("Nonfinite effort");
            }
        }
        value.field_time_from_start = Ros2Builtin_interfacesMsgDuration.readFields(wire);
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
        return value;
    }
}
