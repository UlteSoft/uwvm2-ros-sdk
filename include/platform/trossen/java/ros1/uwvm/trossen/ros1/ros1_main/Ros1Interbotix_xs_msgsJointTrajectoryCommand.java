package uwvm.trossen.ros1.ros1_main;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 1 interbotix_xs_msgs/JointTrajectoryCommand value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros1Interbotix_xs_msgsJointTrajectoryCommand
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 4672;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 32;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_e14b0742b1f9fa372adf0af54f8e3493add79d33b1edd46cdf63c8b936f465d7";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "interbotix_xs_msgs/JointTrajectoryCommand";
    /** @brief Original native identity; empty native identity is unqualified. */
    public static final String NATIVE_IDENTITY = "";
    /** @brief Complete native field cmd_type; scalar, text bound 128. */
    public String field_cmd_type = "";
    /** @brief Complete native field name; scalar, text bound 128. */
    public String field_name = "";
    /** @brief Complete native field traj; scalar, text bound 0. */
    public Ros1Trajectory_msgsJointTrajectory field_traj = new Ros1Trajectory_msgsJointTrajectory();

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros1Interbotix_xs_msgsJointTrajectoryCommand()
    {
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros1Interbotix_xs_msgsJointTrajectoryCommand value)
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
    public static Ros1Interbotix_xs_msgsJointTrajectoryCommand decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros1Interbotix_xs_msgsJointTrajectoryCommand value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros1Interbotix_xs_msgsJointTrajectoryCommand value)
    {
        if(value == null)
        {
            throw new IllegalArgumentException("Null canonical record");
        }
        int start = wire.position();
        wire.string(value.field_cmd_type, 128);
        wire.string(value.field_name, 128);
        Ros1Trajectory_msgsJointTrajectory.writeFields(wire, value.field_traj);
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
    public static Ros1Interbotix_xs_msgsJointTrajectoryCommand readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros1Interbotix_xs_msgsJointTrajectoryCommand value = new Ros1Interbotix_xs_msgsJointTrajectoryCommand();
        value.field_cmd_type = wire.string(128);
        value.field_name = wire.string(128);
        value.field_traj = Ros1Trajectory_msgsJointTrajectory.readFields(wire);
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
        return value;
    }
}
