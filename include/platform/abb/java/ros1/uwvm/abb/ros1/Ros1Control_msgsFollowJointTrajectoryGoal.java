/**
 * @file Ros1Control_msgsFollowJointTrajectoryGoal.java
 * @brief Represent the complete original ABB ROS 1 canonical value catalog.
 * @details The caller owns every record and its finite dynamic backing storage. Codecs retain all
 * fields, original constants and native defaults; field units and frames follow the retained
 * definitions. Malformed or out-of-bound wire values are rejected. These are guest values rather than
 * native ROS objects; importing them grants no transport alias.
 */
package uwvm.abb.ros1;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 1 control_msgs/FollowJointTrajectoryGoal value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros1Control_msgsFollowJointTrajectoryGoal
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 6392;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 40;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_e9fda6f9e732450f2cf1af046ceb67815e6e1a22105eda2fee38f8f470252d40";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "control_msgs/FollowJointTrajectoryGoal";
    /** @brief Original native identity; empty native identity is unqualified. */
    public static final String NATIVE_IDENTITY = "";
    /** @brief Complete native field trajectory; scalar, text bound 0. */
    public Ros1Trajectory_msgsJointTrajectory field_trajectory = new Ros1Trajectory_msgsJointTrajectory();
    /** @brief Complete native field path_tolerance; sequence capacity 12, text bound 0. */
    public Ros1Control_msgsJointTolerance[] field_path_tolerance = new Ros1Control_msgsJointTolerance[0];
    /** @brief Complete native field goal_tolerance; sequence capacity 12, text bound 0. */
    public Ros1Control_msgsJointTolerance[] field_goal_tolerance = new Ros1Control_msgsJointTolerance[0];
    /** @brief Complete native field goal_time_tolerance; scalar, text bound 0. */
    public Ros1Duration field_goal_time_tolerance = new Ros1Duration();

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros1Control_msgsFollowJointTrajectoryGoal()
    {
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros1Control_msgsFollowJointTrajectoryGoal value)
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
    public static Ros1Control_msgsFollowJointTrajectoryGoal decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros1Control_msgsFollowJointTrajectoryGoal value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros1Control_msgsFollowJointTrajectoryGoal value)
    {
        if(value == null)
        {
            throw new IllegalArgumentException("Null canonical record");
        }
        int start = wire.position();
        Ros1Trajectory_msgsJointTrajectory.writeFields(wire, value.field_trajectory);
        if(value.field_path_tolerance == null || value.field_path_tolerance.length > 12)
        {
            throw new IllegalArgumentException("Invalid path_tolerance extent");
        }
        wire.u32((long)value.field_path_tolerance.length);
        for(int index = 0; index < value.field_path_tolerance.length; index++)
        {
            Ros1Control_msgsJointTolerance.writeFields(wire, value.field_path_tolerance[index]);
        }
        if(value.field_goal_tolerance == null || value.field_goal_tolerance.length > 12)
        {
            throw new IllegalArgumentException("Invalid goal_tolerance extent");
        }
        wire.u32((long)value.field_goal_tolerance.length);
        for(int index = 0; index < value.field_goal_tolerance.length; index++)
        {
            Ros1Control_msgsJointTolerance.writeFields(wire, value.field_goal_tolerance[index]);
        }
        Ros1Duration.writeFields(wire, value.field_goal_time_tolerance);
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
    public static Ros1Control_msgsFollowJointTrajectoryGoal readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros1Control_msgsFollowJointTrajectoryGoal value = new Ros1Control_msgsFollowJointTrajectoryGoal();
        value.field_trajectory = Ros1Trajectory_msgsJointTrajectory.readFields(wire);
        value.field_path_tolerance = new Ros1Control_msgsJointTolerance[wire.count(12)];
        for(int index = 0; index < value.field_path_tolerance.length; index++)
        {
            value.field_path_tolerance[index] = Ros1Control_msgsJointTolerance.readFields(wire);
        }
        value.field_goal_tolerance = new Ros1Control_msgsJointTolerance[wire.count(12)];
        for(int index = 0; index < value.field_goal_tolerance.length; index++)
        {
            value.field_goal_tolerance[index] = Ros1Control_msgsJointTolerance.readFields(wire);
        }
        value.field_goal_time_tolerance = Ros1Duration.readFields(wire);
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
        return value;
    }
}
