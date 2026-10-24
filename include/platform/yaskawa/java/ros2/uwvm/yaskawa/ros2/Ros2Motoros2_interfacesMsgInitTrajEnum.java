/**
 * @file Ros2Motoros2_interfacesMsgInitTrajEnum.java
 * @brief Represent the complete original YASKAWA ROS 2 canonical value catalog.
 * @details The caller owns every record and its finite dynamic backing storage. Codecs retain all
 * fields, original constants and native defaults; field units and frames follow the retained
 * definitions. Malformed or out-of-bound wire values are rejected. These are guest values rather than
 * native ROS objects; importing them grants no transport alias.
 */
package uwvm.yaskawa.ros2;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 2 motoros2_interfaces/msg/InitTrajEnum value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros2Motoros2_interfacesMsgInitTrajEnum
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 2;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 2;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_9279979f9e3570f48d6e23bf812a4680e3deed9af3309019efdff5464d7b7763";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "motoros2_interfaces/msg/InitTrajEnum";
    /** @brief Original native identity; empty native identity is unqualified. */
    public static final String NATIVE_IDENTITY = "";
    /** @brief Original source constant INIT_TRAJ_OK; consumes no instance wire bytes. */
    public static final int CONST_INIT_TRAJ_OK = 0;
    /** @brief Original source constant INIT_TRAJ_OK_STR; consumes no instance wire bytes. */
    public static final String CONST_INIT_TRAJ_OK_STR = "OK";
    /** @brief Original source constant INIT_TRAJ_UNSPECIFIED; consumes no instance wire bytes. */
    public static final int CONST_INIT_TRAJ_UNSPECIFIED = 200;
    /** @brief Original source constant INIT_TRAJ_UNSPECIFIED_STR; consumes no instance wire bytes. */
    public static final String CONST_INIT_TRAJ_UNSPECIFIED_STR = "Unspecified failure";
    /** @brief Original source constant INIT_TRAJ_TOO_SMALL; consumes no instance wire bytes. */
    public static final int CONST_INIT_TRAJ_TOO_SMALL = 201;
    /** @brief Original source constant INIT_TRAJ_TOO_SMALL_STR; consumes no instance wire bytes. */
    public static final String CONST_INIT_TRAJ_TOO_SMALL_STR = "Trajectory must contain at least two points.";
    /** @brief Original source constant INIT_TRAJ_TOO_BIG; consumes no instance wire bytes. */
    public static final int CONST_INIT_TRAJ_TOO_BIG = 202;
    /** @brief Original source constant INIT_TRAJ_TOO_BIG_STR; consumes no instance wire bytes. */
    public static final String CONST_INIT_TRAJ_TOO_BIG_STR = "Trajectory contains too many points (Not enough memory).";
    /** @brief Original source constant INIT_TRAJ_ALREADY_IN_MOTION; consumes no instance wire bytes. */
    public static final int CONST_INIT_TRAJ_ALREADY_IN_MOTION = 203;
    /** @brief Original source constant INIT_TRAJ_ALREADY_IN_MOTION_STR; consumes no instance wire bytes. */
    public static final String CONST_INIT_TRAJ_ALREADY_IN_MOTION_STR = "Already running a trajectory.";
    /** @brief Original source constant INIT_TRAJ_INVALID_STARTING_POS; consumes no instance wire bytes. */
    public static final int CONST_INIT_TRAJ_INVALID_STARTING_POS = 204;
    /** @brief Original source constant INIT_TRAJ_INVALID_STARTING_POS_STR; consumes no instance wire bytes. */
    public static final String CONST_INIT_TRAJ_INVALID_STARTING_POS_STR = "The first point must match the robot's current position.";
    /** @brief Original source constant INIT_TRAJ_INVALID_VELOCITY; consumes no instance wire bytes. */
    public static final int CONST_INIT_TRAJ_INVALID_VELOCITY = 205;
    /** @brief Original source constant INIT_TRAJ_INVALID_VELOCITY_STR; consumes no instance wire bytes. */
    public static final String CONST_INIT_TRAJ_INVALID_VELOCITY_STR = "The commanded velocity is too high.";
    /** @brief Original source constant INIT_TRAJ_INVALID_JOINTNAME; consumes no instance wire bytes. */
    public static final int CONST_INIT_TRAJ_INVALID_JOINTNAME = 206;
    /** @brief Original source constant INIT_TRAJ_INVALID_JOINTNAME_STR; consumes no instance wire bytes. */
    public static final String CONST_INIT_TRAJ_INVALID_JOINTNAME_STR = "Invalid joint name specified. Check motoros2_config.yaml.";
    /** @brief Original source constant INIT_TRAJ_INCOMPLETE_JOINTLIST; consumes no instance wire bytes. */
    public static final int CONST_INIT_TRAJ_INCOMPLETE_JOINTLIST = 207;
    /** @brief Original source constant INIT_TRAJ_INCOMPLETE_JOINTLIST_STR; consumes no instance wire bytes. */
    public static final String CONST_INIT_TRAJ_INCOMPLETE_JOINTLIST_STR = "Trajectory must contain data for all joints.";
    /** @brief Original source constant INIT_TRAJ_INVALID_TIME; consumes no instance wire bytes. */
    public static final int CONST_INIT_TRAJ_INVALID_TIME = 208;
    /** @brief Original source constant INIT_TRAJ_INVALID_TIME_STR; consumes no instance wire bytes. */
    public static final String CONST_INIT_TRAJ_INVALID_TIME_STR = "Invalid time in trajectory.";
    /** @brief Original source constant INIT_TRAJ_WRONG_MODE; consumes no instance wire bytes. */
    public static final int CONST_INIT_TRAJ_WRONG_MODE = 209;
    /** @brief Original source constant INIT_TRAJ_WRONG_MODE_STR; consumes no instance wire bytes. */
    public static final String CONST_INIT_TRAJ_WRONG_MODE_STR = "Must call start_traj_mode service";
    /** @brief Original source constant INIT_TRAJ_BACKWARD_TIME; consumes no instance wire bytes. */
    public static final int CONST_INIT_TRAJ_BACKWARD_TIME = 210;
    /** @brief Original source constant INIT_TRAJ_BACKWARD_TIME_STR; consumes no instance wire bytes. */
    public static final String CONST_INIT_TRAJ_BACKWARD_TIME_STR = "Trajectory message contains waypoints that are not strictly increasing in time.";
    /** @brief Original source constant INIT_TRAJ_WRONG_NUMBER_OF_POSITIONS; consumes no instance wire bytes. */
    public static final int CONST_INIT_TRAJ_WRONG_NUMBER_OF_POSITIONS = 211;
    /** @brief Original source constant INIT_TRAJ_WRONG_NUMBER_OF_POSITIONS_STR; consumes no instance wire bytes. */
    public static final String CONST_INIT_TRAJ_WRONG_NUMBER_OF_POSITIONS_STR = "Trajectory did not contain position data for all axes.";
    /** @brief Original source constant INIT_TRAJ_WRONG_NUMBER_OF_VELOCITIES; consumes no instance wire bytes. */
    public static final int CONST_INIT_TRAJ_WRONG_NUMBER_OF_VELOCITIES = 212;
    /** @brief Original source constant INIT_TRAJ_WRONG_NUMBER_OF_VELOCITIES_STR; consumes no instance wire bytes. */
    public static final String CONST_INIT_TRAJ_WRONG_NUMBER_OF_VELOCITIES_STR = "Trajectory did not contain velocity data for all axes.";
    /** @brief Original source constant INIT_TRAJ_INVALID_ENDING_VELOCITY; consumes no instance wire bytes. */
    public static final int CONST_INIT_TRAJ_INVALID_ENDING_VELOCITY = 213;
    /** @brief Original source constant INIT_TRAJ_INVALID_ENDING_VELOCITY_STR; consumes no instance wire bytes. */
    public static final String CONST_INIT_TRAJ_INVALID_ENDING_VELOCITY_STR = "The final point in the trajectory must have zero velocity.";
    /** @brief Original source constant INIT_TRAJ_INVALID_ENDING_ACCELERATION; consumes no instance wire bytes. */
    public static final int CONST_INIT_TRAJ_INVALID_ENDING_ACCELERATION = 214;
    /** @brief Original source constant INIT_TRAJ_INVALID_ENDING_ACCELERATION_STR; consumes no instance wire bytes. */
    public static final String CONST_INIT_TRAJ_INVALID_ENDING_ACCELERATION_STR = "The final point in the trajectory must have zero acceleration.";
    /** @brief Original source constant INIT_TRAJ_DUPLICATE_JOINT_NAME; consumes no instance wire bytes. */
    public static final int CONST_INIT_TRAJ_DUPLICATE_JOINT_NAME = 215;
    /** @brief Original source constant INIT_TRAJ_DUPLICATE_JOINT_NAME_STR; consumes no instance wire bytes. */
    public static final String CONST_INIT_TRAJ_DUPLICATE_JOINT_NAME_STR = "The trajectory contains duplicate joint names.";
    /** @brief Complete native field value; scalar, text bound 0. */
    public int field_value = 0;

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros2Motoros2_interfacesMsgInitTrajEnum()
    {
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros2Motoros2_interfacesMsgInitTrajEnum value)
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
    public static Ros2Motoros2_interfacesMsgInitTrajEnum decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros2Motoros2_interfacesMsgInitTrajEnum value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros2Motoros2_interfacesMsgInitTrajEnum value)
    {
        if(value == null)
        {
            throw new IllegalArgumentException("Null canonical record");
        }
        int start = wire.position();
        wire.u16(value.field_value);
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
    public static Ros2Motoros2_interfacesMsgInitTrajEnum readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros2Motoros2_interfacesMsgInitTrajEnum value = new Ros2Motoros2_interfacesMsgInitTrajEnum();
        value.field_value = wire.u16();
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
        return value;
    }
}
