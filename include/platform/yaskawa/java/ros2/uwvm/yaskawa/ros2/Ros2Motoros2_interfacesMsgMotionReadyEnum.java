/**
 * @file Ros2Motoros2_interfacesMsgMotionReadyEnum.java
 * @brief Represent the complete original YASKAWA ROS 2 canonical value catalog.
 * @details The caller owns every record and its finite dynamic backing storage. Codecs retain all
 * fields, original constants and native defaults; field units and frames follow the retained
 * definitions. Malformed or out-of-bound wire values are rejected. These are guest values rather than
 * native ROS objects; importing them grants no transport alias.
 */
package uwvm.yaskawa.ros2;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 2 motoros2_interfaces/msg/MotionReadyEnum value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros2Motoros2_interfacesMsgMotionReadyEnum
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 2;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 2;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_c8d4c2b0eba665e01cddc730421a3a42c5b344f4de35ae0a32204891603326d6";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "motoros2_interfaces/msg/MotionReadyEnum";
    /** @brief Original native identity; empty native identity is unqualified. */
    public static final String NATIVE_IDENTITY = "";
    /** @brief Original source constant READY; consumes no instance wire bytes. */
    public static final int CONST_READY = 1;
    /** @brief Original source constant READY_STR; consumes no instance wire bytes. */
    public static final String CONST_READY_STR = "Ready";
    /** @brief Original source constant NOT_READY_UNSPECIFIED; consumes no instance wire bytes. */
    public static final int CONST_NOT_READY_UNSPECIFIED = 100;
    /** @brief Original source constant NOT_READY_UNSPECIFIED_STR; consumes no instance wire bytes. */
    public static final String CONST_NOT_READY_UNSPECIFIED_STR = "Unspecified";
    /** @brief Original source constant NOT_READY_ALARM; consumes no instance wire bytes. */
    public static final int CONST_NOT_READY_ALARM = 101;
    /** @brief Original source constant NOT_READY_ALARM_STR; consumes no instance wire bytes. */
    public static final String CONST_NOT_READY_ALARM_STR = "The controller has an active Alarm";
    /** @brief Original source constant NOT_READY_ERROR; consumes no instance wire bytes. */
    public static final int CONST_NOT_READY_ERROR = 102;
    /** @brief Original source constant NOT_READY_ERROR_STR; consumes no instance wire bytes. */
    public static final String CONST_NOT_READY_ERROR_STR = "The controller has an active Error";
    /** @brief Original source constant NOT_READY_ESTOP; consumes no instance wire bytes. */
    public static final int CONST_NOT_READY_ESTOP = 103;
    /** @brief Original source constant NOT_READY_ESTOP_STR; consumes no instance wire bytes. */
    public static final String CONST_NOT_READY_ESTOP_STR = "The controller is in E-Stop";
    /** @brief Original source constant NOT_READY_NOT_PLAY; consumes no instance wire bytes. */
    public static final int CONST_NOT_READY_NOT_PLAY = 104;
    /** @brief Original source constant NOT_READY_NOT_PLAY_STR; consumes no instance wire bytes. */
    public static final String CONST_NOT_READY_NOT_PLAY_STR = "The teach pendant must not be in TEACH mode";
    /** @brief Original source constant NOT_READY_NOT_REMOTE; consumes no instance wire bytes. */
    public static final int CONST_NOT_READY_NOT_REMOTE = 105;
    /** @brief Original source constant NOT_READY_NOT_REMOTE_STR; consumes no instance wire bytes. */
    public static final String CONST_NOT_READY_NOT_REMOTE_STR = "The teach pendant must be in REMOTE mode";
    /** @brief Original source constant NOT_READY_SERVO_OFF; consumes no instance wire bytes. */
    public static final int CONST_NOT_READY_SERVO_OFF = 106;
    /** @brief Original source constant NOT_READY_SERVO_OFF_STR; consumes no instance wire bytes. */
    public static final String CONST_NOT_READY_SERVO_OFF_STR = "Servo power is OFF. Please call start_traj_mode or start_point_queue_mode service";
    /** @brief Original source constant NOT_READY_HOLD; consumes no instance wire bytes. */
    public static final int CONST_NOT_READY_HOLD = 107;
    /** @brief Original source constant NOT_READY_HOLD_STR; consumes no instance wire bytes. */
    public static final String CONST_NOT_READY_HOLD_STR = "The controller is in HOLD";
    /** @brief Original source constant NOT_READY_JOB_NOT_STARTED; consumes no instance wire bytes. */
    public static final int CONST_NOT_READY_JOB_NOT_STARTED = 108;
    /** @brief Original source constant NOT_READY_JOB_NOT_STARTED_STR; consumes no instance wire bytes. */
    public static final String CONST_NOT_READY_JOB_NOT_STARTED_STR =
        "The INIT_ROS job has not started. Please call start_traj_mode or start_point_queue_mode service";
    /** @brief Original source constant NOT_READY_NOT_ON_WAIT_CMD; consumes no instance wire bytes. */
    public static final int CONST_NOT_READY_NOT_ON_WAIT_CMD = 109;
    /** @brief Original source constant NOT_READY_NOT_ON_WAIT_CMD_STR; consumes no instance wire bytes. */
    public static final String CONST_NOT_READY_NOT_ON_WAIT_CMD_STR = "INFORM job is not on a WAIT command. Check the format of INIT_ROS";
    /** @brief Original source constant NOT_READY_PFL_ACTIVE; consumes no instance wire bytes. */
    public static final int CONST_NOT_READY_PFL_ACTIVE = 111;
    /** @brief Original source constant NOT_READY_PFL_ACTIVE_STR; consumes no instance wire bytes. */
    public static final String CONST_NOT_READY_PFL_ACTIVE_STR = "A PFL event has occurred. Please return the robot to a safe state";
    /** @brief Original source constant NOT_READY_INC_MOVE_ERROR; consumes no instance wire bytes. */
    public static final int CONST_NOT_READY_INC_MOVE_ERROR = 112;
    /** @brief Original source constant NOT_READY_INC_MOVE_ERROR_STR; consumes no instance wire bytes. */
    public static final String CONST_NOT_READY_INC_MOVE_ERROR_STR =
        "The controller is in an error state. Please call reset_error to attempt to clear the error";
    /** @brief Original source constant NOT_READY_OTHER_PROGRAM_RUNNING; consumes no instance wire bytes. */
    public static final int CONST_NOT_READY_OTHER_PROGRAM_RUNNING = 113;
    /** @brief Original source constant NOT_READY_OTHER_PROGRAM_RUNNING_STR; consumes no instance wire bytes. */
    public static final String CONST_NOT_READY_OTHER_PROGRAM_RUNNING_STR = "Controller is running another job";
    /** @brief Original source constant NOT_READY_OTHER_TRAJ_MODE_ACTIVE; consumes no instance wire bytes. */
    public static final int CONST_NOT_READY_OTHER_TRAJ_MODE_ACTIVE = 114;
    /** @brief Original source constant NOT_READY_OTHER_TRAJ_MODE_ACTIVE_STR; consumes no instance wire bytes. */
    public static final String CONST_NOT_READY_OTHER_TRAJ_MODE_ACTIVE_STR = "Another trajectory mode is already active. Please call stop_traj_mode service";
    /** @brief Original source constant NOT_READY_NOT_CONT_CYCLE_MODE; consumes no instance wire bytes. */
    public static final int CONST_NOT_READY_NOT_CONT_CYCLE_MODE = 115;
    /** @brief Original source constant NOT_READY_NOT_CONT_CYCLE_MODE_STR; consumes no instance wire bytes. */
    public static final String CONST_NOT_READY_NOT_CONT_CYCLE_MODE_STR = "AUTO cycle mode not set. Please set the cycle mode to AUTO";
    /** @brief Original source constant NOT_READY_MAJOR_ALARM; consumes no instance wire bytes. */
    public static final int CONST_NOT_READY_MAJOR_ALARM = 116;
    /** @brief Original source constant NOT_READY_MAJOR_ALARM_STR; consumes no instance wire bytes. */
    public static final String CONST_NOT_READY_MAJOR_ALARM_STR = "Major Alarms can't be reset. Please check the teach pendant";
    /** @brief Original source constant NOT_READY_ECO_MODE; consumes no instance wire bytes. */
    public static final int CONST_NOT_READY_ECO_MODE = 117;
    /** @brief Original source constant NOT_READY_ECO_MODE_STR; consumes no instance wire bytes. */
    public static final String CONST_NOT_READY_ECO_MODE_STR = "Couldn't disable eco mode";
    /** @brief Original source constant NOT_READY_SERVO_ON_TIMEOUT; consumes no instance wire bytes. */
    public static final int CONST_NOT_READY_SERVO_ON_TIMEOUT = 118;
    /** @brief Original source constant NOT_READY_SERVO_ON_TIMEOUT_STR; consumes no instance wire bytes. */
    public static final String CONST_NOT_READY_SERVO_ON_TIMEOUT_STR = "Timed out while waiting for servo on";
    /** @brief Complete native field value; scalar, text bound 0. */
    public int field_value = 0;

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros2Motoros2_interfacesMsgMotionReadyEnum()
    {
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros2Motoros2_interfacesMsgMotionReadyEnum value)
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
    public static Ros2Motoros2_interfacesMsgMotionReadyEnum decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros2Motoros2_interfacesMsgMotionReadyEnum value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros2Motoros2_interfacesMsgMotionReadyEnum value)
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
    public static Ros2Motoros2_interfacesMsgMotionReadyEnum readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros2Motoros2_interfacesMsgMotionReadyEnum value = new Ros2Motoros2_interfacesMsgMotionReadyEnum();
        value.field_value = wire.u16();
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
        return value;
    }
}
