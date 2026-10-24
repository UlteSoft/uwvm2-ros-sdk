/**
 * @file Ros1Trajectory_msgsJointTrajectoryPoint.java
 * @brief Represent the complete original ABB ROS 1 canonical value catalog.
 * @details The caller owns every record and its finite dynamic backing storage. Codecs retain all
 * fields, original constants and native defaults; field units and frames follow the retained
 * definitions. Malformed or out-of-bound wire values are rejected. These are guest values rather than
 * native ROS objects; importing them grants no transport alias.
 */
package uwvm.abb.ros1;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 1 trajectory_msgs/JointTrajectoryPoint value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros1Trajectory_msgsJointTrajectoryPoint
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 408;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 24;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_9773572fff8616235c4d7e23fccbe01f28dcfa62c7c80323a65c8c305feba3c5";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "trajectory_msgs/JointTrajectoryPoint";
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
    public Ros1Duration field_time_from_start = new Ros1Duration();

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros1Trajectory_msgsJointTrajectoryPoint()
    {
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros1Trajectory_msgsJointTrajectoryPoint value)
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
    public static Ros1Trajectory_msgsJointTrajectoryPoint decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros1Trajectory_msgsJointTrajectoryPoint value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros1Trajectory_msgsJointTrajectoryPoint value)
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
        Ros1Duration.writeFields(wire, value.field_time_from_start);
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
    public static Ros1Trajectory_msgsJointTrajectoryPoint readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros1Trajectory_msgsJointTrajectoryPoint value = new Ros1Trajectory_msgsJointTrajectoryPoint();
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
        value.field_time_from_start = Ros1Duration.readFields(wire);
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
        return value;
    }
}
