package uwvm.hello_robot.ros2.mobile_fjt_humble;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 2 control_msgs/action/FollowJointTrajectory_Feedback value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros2Control_msgsActionFollowJointTrajectory_Feedback
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 4708;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 152;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_ae2175027c3e45997d272b9610d15ef52cc665d23c0a371892d10b3d100e3529";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "control_msgs/action/FollowJointTrajectory_Feedback";
    /** @brief Original native identity; empty native identity is unqualified. */
    public static final String NATIVE_IDENTITY = "";
    /** @brief Complete native field header; scalar, text bound 0. */
    public Ros2Std_msgsMsgHeader field_header = new Ros2Std_msgsMsgHeader();
    /** @brief Complete native field joint_names; sequence capacity 8, text bound 128. */
    public String[] field_joint_names = new String[0];
    /** @brief Complete native field desired; scalar, text bound 0. */
    public Ros2Trajectory_msgsMsgJointTrajectoryPoint field_desired = new Ros2Trajectory_msgsMsgJointTrajectoryPoint();
    /** @brief Complete native field actual; scalar, text bound 0. */
    public Ros2Trajectory_msgsMsgJointTrajectoryPoint field_actual = new Ros2Trajectory_msgsMsgJointTrajectoryPoint();
    /** @brief Complete native field error; scalar, text bound 0. */
    public Ros2Trajectory_msgsMsgJointTrajectoryPoint field_error = new Ros2Trajectory_msgsMsgJointTrajectoryPoint();
    /** @brief Complete native field multi_dof_joint_names; sequence capacity 1, text bound 128. */
    public String[] field_multi_dof_joint_names = new String[0];
    /** @brief Complete native field multi_dof_desired; scalar, text bound 0. */
    public Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint field_multi_dof_desired = new Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint();
    /** @brief Complete native field multi_dof_actual; scalar, text bound 0. */
    public Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint field_multi_dof_actual = new Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint();
    /** @brief Complete native field multi_dof_error; scalar, text bound 0. */
    public Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint field_multi_dof_error = new Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint();

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros2Control_msgsActionFollowJointTrajectory_Feedback()
    {
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros2Control_msgsActionFollowJointTrajectory_Feedback value)
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
    public static Ros2Control_msgsActionFollowJointTrajectory_Feedback decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros2Control_msgsActionFollowJointTrajectory_Feedback value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros2Control_msgsActionFollowJointTrajectory_Feedback value)
    {
        if(value == null)
        {
            throw new IllegalArgumentException("Null canonical record");
        }
        int start = wire.position();
        Ros2Std_msgsMsgHeader.writeFields(wire, value.field_header);
        if(value.field_joint_names == null || value.field_joint_names.length > 8)
        {
            throw new IllegalArgumentException("Invalid joint_names extent");
        }
        wire.u32((long)value.field_joint_names.length);
        for(int index = 0; index < value.field_joint_names.length; index++)
        {
            wire.string(value.field_joint_names[index], 128);
        }
        Ros2Trajectory_msgsMsgJointTrajectoryPoint.writeFields(wire, value.field_desired);
        Ros2Trajectory_msgsMsgJointTrajectoryPoint.writeFields(wire, value.field_actual);
        Ros2Trajectory_msgsMsgJointTrajectoryPoint.writeFields(wire, value.field_error);
        if(value.field_multi_dof_joint_names == null || value.field_multi_dof_joint_names.length > 1)
        {
            throw new IllegalArgumentException("Invalid multi_dof_joint_names extent");
        }
        wire.u32((long)value.field_multi_dof_joint_names.length);
        for(int index = 0; index < value.field_multi_dof_joint_names.length; index++)
        {
            wire.string(value.field_multi_dof_joint_names[index], 128);
        }
        Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint.writeFields(wire, value.field_multi_dof_desired);
        Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint.writeFields(wire, value.field_multi_dof_actual);
        Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint.writeFields(wire, value.field_multi_dof_error);
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
    public static Ros2Control_msgsActionFollowJointTrajectory_Feedback readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros2Control_msgsActionFollowJointTrajectory_Feedback value = new Ros2Control_msgsActionFollowJointTrajectory_Feedback();
        value.field_header = Ros2Std_msgsMsgHeader.readFields(wire);
        value.field_joint_names = new String[wire.count(8)];
        for(int index = 0; index < value.field_joint_names.length; index++)
        {
            value.field_joint_names[index] = wire.string(128);
        }
        value.field_desired = Ros2Trajectory_msgsMsgJointTrajectoryPoint.readFields(wire);
        value.field_actual = Ros2Trajectory_msgsMsgJointTrajectoryPoint.readFields(wire);
        value.field_error = Ros2Trajectory_msgsMsgJointTrajectoryPoint.readFields(wire);
        value.field_multi_dof_joint_names = new String[wire.count(1)];
        for(int index = 0; index < value.field_multi_dof_joint_names.length; index++)
        {
            value.field_multi_dof_joint_names[index] = wire.string(128);
        }
        value.field_multi_dof_desired = Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint.readFields(wire);
        value.field_multi_dof_actual = Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint.readFields(wire);
        value.field_multi_dof_error = Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint.readFields(wire);
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
        return value;
    }
}
