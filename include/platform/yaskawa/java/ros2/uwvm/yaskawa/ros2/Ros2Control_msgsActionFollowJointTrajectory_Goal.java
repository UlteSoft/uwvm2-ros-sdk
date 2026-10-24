/**
 * @file Ros2Control_msgsActionFollowJointTrajectory_Goal.java
 * @brief Represent the complete original YASKAWA ROS 2 canonical value catalog.
 * @details The caller owns every record and its finite dynamic backing storage. Codecs retain all
 * fields, original constants and native defaults; field units and frames follow the retained
 * definitions. Malformed or out-of-bound wire values are rejected. These are guest values rather than
 * native ROS objects; importing them grants no transport alias.
 */
package uwvm.yaskawa.ros2;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 2 control_msgs/action/FollowJointTrajectory_Goal value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros2Control_msgsActionFollowJointTrajectory_Goal
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 20920;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 64;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_8945d5b29832f1190b0a4f8c4af4e82686c4b913413affe9c0945570b4fb1f16";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "control_msgs/action/FollowJointTrajectory_Goal";
    /** @brief Original native identity; empty native identity is unqualified. */
    public static final String NATIVE_IDENTITY = "";
    /** @brief Complete native field trajectory; scalar, text bound 0. */
    public Ros2Trajectory_msgsMsgJointTrajectory field_trajectory = new Ros2Trajectory_msgsMsgJointTrajectory();
    /** @brief Complete native field multi_dof_trajectory; scalar, text bound 0. */
    public Ros2Trajectory_msgsMsgMultiDOFJointTrajectory field_multi_dof_trajectory = new Ros2Trajectory_msgsMsgMultiDOFJointTrajectory();
    /** @brief Complete native field path_tolerance; sequence capacity 12, text bound 0. */
    public Ros2Control_msgsMsgJointTolerance[] field_path_tolerance = new Ros2Control_msgsMsgJointTolerance[0];
    /** @brief Complete native field component_path_tolerance; sequence capacity 12, text bound 0. */
    public Ros2Control_msgsMsgJointComponentTolerance[] field_component_path_tolerance = new Ros2Control_msgsMsgJointComponentTolerance[0];
    /** @brief Complete native field goal_tolerance; sequence capacity 12, text bound 0. */
    public Ros2Control_msgsMsgJointTolerance[] field_goal_tolerance = new Ros2Control_msgsMsgJointTolerance[0];
    /** @brief Complete native field component_goal_tolerance; sequence capacity 12, text bound 0. */
    public Ros2Control_msgsMsgJointComponentTolerance[] field_component_goal_tolerance = new Ros2Control_msgsMsgJointComponentTolerance[0];
    /** @brief Complete native field goal_time_tolerance; scalar, text bound 0. */
    public Ros2Builtin_interfacesMsgDuration field_goal_time_tolerance = new Ros2Builtin_interfacesMsgDuration();

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros2Control_msgsActionFollowJointTrajectory_Goal()
    {
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros2Control_msgsActionFollowJointTrajectory_Goal value)
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
    public static Ros2Control_msgsActionFollowJointTrajectory_Goal decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros2Control_msgsActionFollowJointTrajectory_Goal value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros2Control_msgsActionFollowJointTrajectory_Goal value)
    {
        if(value == null)
        {
            throw new IllegalArgumentException("Null canonical record");
        }
        int start = wire.position();
        Ros2Trajectory_msgsMsgJointTrajectory.writeFields(wire, value.field_trajectory);
        Ros2Trajectory_msgsMsgMultiDOFJointTrajectory.writeFields(wire, value.field_multi_dof_trajectory);
        if(value.field_path_tolerance == null || value.field_path_tolerance.length > 12)
        {
            throw new IllegalArgumentException("Invalid path_tolerance extent");
        }
        wire.u32((long)value.field_path_tolerance.length);
        for(int index = 0; index < value.field_path_tolerance.length; index++)
        {
            Ros2Control_msgsMsgJointTolerance.writeFields(wire, value.field_path_tolerance[index]);
        }
        if(value.field_component_path_tolerance == null || value.field_component_path_tolerance.length > 12)
        {
            throw new IllegalArgumentException("Invalid component_path_tolerance extent");
        }
        wire.u32((long)value.field_component_path_tolerance.length);
        for(int index = 0; index < value.field_component_path_tolerance.length; index++)
        {
            Ros2Control_msgsMsgJointComponentTolerance.writeFields(wire, value.field_component_path_tolerance[index]);
        }
        if(value.field_goal_tolerance == null || value.field_goal_tolerance.length > 12)
        {
            throw new IllegalArgumentException("Invalid goal_tolerance extent");
        }
        wire.u32((long)value.field_goal_tolerance.length);
        for(int index = 0; index < value.field_goal_tolerance.length; index++)
        {
            Ros2Control_msgsMsgJointTolerance.writeFields(wire, value.field_goal_tolerance[index]);
        }
        if(value.field_component_goal_tolerance == null || value.field_component_goal_tolerance.length > 12)
        {
            throw new IllegalArgumentException("Invalid component_goal_tolerance extent");
        }
        wire.u32((long)value.field_component_goal_tolerance.length);
        for(int index = 0; index < value.field_component_goal_tolerance.length; index++)
        {
            Ros2Control_msgsMsgJointComponentTolerance.writeFields(wire, value.field_component_goal_tolerance[index]);
        }
        Ros2Builtin_interfacesMsgDuration.writeFields(wire, value.field_goal_time_tolerance);
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
    public static Ros2Control_msgsActionFollowJointTrajectory_Goal readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros2Control_msgsActionFollowJointTrajectory_Goal value = new Ros2Control_msgsActionFollowJointTrajectory_Goal();
        value.field_trajectory = Ros2Trajectory_msgsMsgJointTrajectory.readFields(wire);
        value.field_multi_dof_trajectory = Ros2Trajectory_msgsMsgMultiDOFJointTrajectory.readFields(wire);
        value.field_path_tolerance = new Ros2Control_msgsMsgJointTolerance[wire.count(12)];
        for(int index = 0; index < value.field_path_tolerance.length; index++)
        {
            value.field_path_tolerance[index] = Ros2Control_msgsMsgJointTolerance.readFields(wire);
        }
        value.field_component_path_tolerance = new Ros2Control_msgsMsgJointComponentTolerance[wire.count(12)];
        for(int index = 0; index < value.field_component_path_tolerance.length; index++)
        {
            value.field_component_path_tolerance[index] = Ros2Control_msgsMsgJointComponentTolerance.readFields(wire);
        }
        value.field_goal_tolerance = new Ros2Control_msgsMsgJointTolerance[wire.count(12)];
        for(int index = 0; index < value.field_goal_tolerance.length; index++)
        {
            value.field_goal_tolerance[index] = Ros2Control_msgsMsgJointTolerance.readFields(wire);
        }
        value.field_component_goal_tolerance = new Ros2Control_msgsMsgJointComponentTolerance[wire.count(12)];
        for(int index = 0; index < value.field_component_goal_tolerance.length; index++)
        {
            value.field_component_goal_tolerance[index] = Ros2Control_msgsMsgJointComponentTolerance.readFields(wire);
        }
        value.field_goal_time_tolerance = Ros2Builtin_interfacesMsgDuration.readFields(wire);
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
        return value;
    }
}
