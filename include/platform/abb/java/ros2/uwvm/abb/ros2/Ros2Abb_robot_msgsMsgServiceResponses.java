/**
 * @file Ros2Abb_robot_msgsMsgServiceResponses.java
 * @brief Represent the complete original ABB ROS 2 canonical value catalog.
 * @details The caller owns every record and its finite dynamic backing storage. Codecs retain all
 * fields, original constants and native defaults; field units and frames follow the retained
 * definitions. Malformed or out-of-bound wire values are rejected. These are guest values rather than
 * native ROS objects; importing them grants no transport alias.
 */
package uwvm.abb.ros2;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 2 abb_robot_msgs/msg/ServiceResponses value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros2Abb_robot_msgsMsgServiceResponses
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 0;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 0;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_4e01b972b67454e851801f28aee09c0774b67907d2241cc67cae7d045c18f646";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "abb_robot_msgs/msg/ServiceResponses";
    /** @brief Original native identity; empty native identity is unqualified. */
    public static final String NATIVE_IDENTITY = "";
    /** @brief Original source constant SUCCESS; consumes no instance wire bytes. */
    public static final String CONST_SUCCESS = "";
    /** @brief Original source constant RC_SUCCESS; consumes no instance wire bytes. */
    public static final int CONST_RC_SUCCESS = 1;
    /** @brief Original source constant FAILED; consumes no instance wire bytes. */
    public static final String CONST_FAILED = "Service failed (e.g. timeout or resource not found, see the DEBUG log for details)";
    /** @brief Original source constant RC_FAILED; consumes no instance wire bytes. */
    public static final int CONST_RC_FAILED = 2;
    /** @brief Original source constant SERVER_IS_BUSY; consumes no instance wire bytes. */
    public static final String CONST_SERVER_IS_BUSY = "Server is busy";
    /** @brief Original source constant RC_SERVER_IS_BUSY; consumes no instance wire bytes. */
    public static final int CONST_RC_SERVER_IS_BUSY = 1001;
    /** @brief Original source constant EMPTY_FILENAME; consumes no instance wire bytes. */
    public static final String CONST_EMPTY_FILENAME = "Filename is empty";
    /** @brief Original source constant RC_EMPTY_FILENAME; consumes no instance wire bytes. */
    public static final int CONST_RC_EMPTY_FILENAME = 2001;
    /** @brief Original source constant EMPTY_SIGNAL_NAME; consumes no instance wire bytes. */
    public static final String CONST_EMPTY_SIGNAL_NAME = "Signal name is empty";
    /** @brief Original source constant RC_EMPTY_SIGNAL_NAME; consumes no instance wire bytes. */
    public static final int CONST_RC_EMPTY_SIGNAL_NAME = 2002;
    /** @brief Original source constant EMPTY_RAPID_TASK_NAME; consumes no instance wire bytes. */
    public static final String CONST_EMPTY_RAPID_TASK_NAME = "RAPID task name is empty";
    /** @brief Original source constant RC_EMPTY_RAPID_TASK_NAME; consumes no instance wire bytes. */
    public static final int CONST_RC_EMPTY_RAPID_TASK_NAME = 2003;
    /** @brief Original source constant EMPTY_RAPID_MODULE_NAME; consumes no instance wire bytes. */
    public static final String CONST_EMPTY_RAPID_MODULE_NAME = "RAPID module name is empty";
    /** @brief Original source constant RC_EMPTY_RAPID_MODULE_NAME; consumes no instance wire bytes. */
    public static final int CONST_RC_EMPTY_RAPID_MODULE_NAME = 2004;
    /** @brief Original source constant EMPTY_RAPID_SYMBOL_NAME; consumes no instance wire bytes. */
    public static final String CONST_EMPTY_RAPID_SYMBOL_NAME = "RAPID symbol name is empty";
    /** @brief Original source constant RC_EMPTY_RAPID_SYMBOL_NAME; consumes no instance wire bytes. */
    public static final int CONST_RC_EMPTY_RAPID_SYMBOL_NAME = 2005;
    /** @brief Original source constant NOT_IN_AUTO_MODE; consumes no instance wire bytes. */
    public static final String CONST_NOT_IN_AUTO_MODE = "Robot controller is not in AUTO mode";
    /** @brief Original source constant RC_NOT_IN_AUTO_MODE; consumes no instance wire bytes. */
    public static final int CONST_RC_NOT_IN_AUTO_MODE = 3001;
    /** @brief Original source constant MOTORS_ARE_OFF; consumes no instance wire bytes. */
    public static final String CONST_MOTORS_ARE_OFF = "Motors are off";
    /** @brief Original source constant RC_MOTORS_ARE_OFF; consumes no instance wire bytes. */
    public static final int CONST_RC_MOTORS_ARE_OFF = 3002;
    /** @brief Original source constant MOTORS_ARE_ON; consumes no instance wire bytes. */
    public static final String CONST_MOTORS_ARE_ON = "Motors are on";
    /** @brief Original source constant RC_MOTORS_ARE_ON; consumes no instance wire bytes. */
    public static final int CONST_RC_MOTORS_ARE_ON = 3003;
    /** @brief Original source constant RAPID_NOT_STOPPED; consumes no instance wire bytes. */
    public static final String CONST_RAPID_NOT_STOPPED = "RAPID has not been stopped";
    /** @brief Original source constant RC_RAPID_NOT_STOPPED; consumes no instance wire bytes. */
    public static final int CONST_RC_RAPID_NOT_STOPPED = 3004;
    /** @brief Original source constant RAPID_NOT_RUNNING; consumes no instance wire bytes. */
    public static final String CONST_RAPID_NOT_RUNNING = "RAPID is not running";
    /** @brief Original source constant RC_RAPID_NOT_RUNNING; consumes no instance wire bytes. */
    public static final int CONST_RC_RAPID_NOT_RUNNING = 3005;
    /** @brief Original source constant SM_RUNTIME_STATES_MISSING; consumes no instance wire bytes. */
    public static final String CONST_SM_RUNTIME_STATES_MISSING = "No runtime states received for any StateMachine Add-In instance";
    /** @brief Original source constant RC_SM_RUNTIME_STATES_MISSING; consumes no instance wire bytes. */
    public static final int CONST_RC_SM_RUNTIME_STATES_MISSING = 4001;
    /** @brief Original source constant SM_UNKNOWN_RAPID_TASK; consumes no instance wire bytes. */
    public static final String CONST_SM_UNKNOWN_RAPID_TASK = "RAPID task not found among known StateMachine Add-In instances";
    /** @brief Original source constant RC_SM_UNKNOWN_RAPID_TASK; consumes no instance wire bytes. */
    public static final int CONST_RC_SM_UNKNOWN_RAPID_TASK = 4002;
    /** @brief Original source constant SM_UNINITIALIZED; consumes no instance wire bytes. */
    public static final String CONST_SM_UNINITIALIZED = "StateMachine Add-In instance has not been initialized";
    /** @brief Original source constant RC_SM_UNINITIALIZED; consumes no instance wire bytes. */
    public static final int CONST_RC_SM_UNINITIALIZED = 4003;

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros2Abb_robot_msgsMsgServiceResponses()
    {
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros2Abb_robot_msgsMsgServiceResponses value)
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
    public static Ros2Abb_robot_msgsMsgServiceResponses decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros2Abb_robot_msgsMsgServiceResponses value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros2Abb_robot_msgsMsgServiceResponses value)
    {
        if(value == null)
        {
            throw new IllegalArgumentException("Null canonical record");
        }
        int start = wire.position();
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
    public static Ros2Abb_robot_msgsMsgServiceResponses readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros2Abb_robot_msgsMsgServiceResponses value = new Ros2Abb_robot_msgsMsgServiceResponses();
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
        return value;
    }
}
