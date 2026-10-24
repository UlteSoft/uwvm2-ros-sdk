/**
 * @file Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState.java
 * @brief Represent the complete original ABB ROS 2 canonical value catalog.
 * @details The caller owns every record and its finite dynamic backing storage. Codecs retain all
 * fields, original constants and native defaults; field units and frames follow the retained
 * definitions. Malformed or out-of-bound wire values are rejected. These are guest values rather than
 * native ROS objects; importing them grants no transport alias.
 */
package uwvm.abb.ros2;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 2 abb_rapid_sm_addin_msgs/msg/StateMachineState value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 518;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 6;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_ff2a09e4b6e8ef26cbdc3ecdffdceb33d6b2c82f0d51ed2c38ce9648c6f47711";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "abb_rapid_sm_addin_msgs/msg/StateMachineState";
    /** @brief Original native identity; empty native identity is unqualified. */
    public static final String NATIVE_IDENTITY = "";
    /** @brief Original source constant SM_STATE_UNKNOWN; consumes no instance wire bytes. */
    public static final int CONST_SM_STATE_UNKNOWN = 1;
    /** @brief Original source constant SM_STATE_IDLE; consumes no instance wire bytes. */
    public static final int CONST_SM_STATE_IDLE = 2;
    /** @brief Original source constant SM_STATE_INITIALIZE; consumes no instance wire bytes. */
    public static final int CONST_SM_STATE_INITIALIZE = 3;
    /** @brief Original source constant SM_STATE_RUN_RAPID_ROUTINE; consumes no instance wire bytes. */
    public static final int CONST_SM_STATE_RUN_RAPID_ROUTINE = 4;
    /** @brief Original source constant SM_STATE_RUN_EGM_ROUTINE; consumes no instance wire bytes. */
    public static final int CONST_SM_STATE_RUN_EGM_ROUTINE = 5;
    /** @brief Original source constant EGM_ACTION_UNKNOWN; consumes no instance wire bytes. */
    public static final int CONST_EGM_ACTION_UNKNOWN = 1;
    /** @brief Original source constant EGM_ACTION_NONE; consumes no instance wire bytes. */
    public static final int CONST_EGM_ACTION_NONE = 2;
    /** @brief Original source constant EGM_ACTION_RUN_JOINT; consumes no instance wire bytes. */
    public static final int CONST_EGM_ACTION_RUN_JOINT = 3;
    /** @brief Original source constant EGM_ACTION_RUN_POSE; consumes no instance wire bytes. */
    public static final int CONST_EGM_ACTION_RUN_POSE = 4;
    /** @brief Original source constant EGM_ACTION_STOP; consumes no instance wire bytes. */
    public static final int CONST_EGM_ACTION_STOP = 5;
    /** @brief Original source constant EGM_ACTION_START_STREAM; consumes no instance wire bytes. */
    public static final int CONST_EGM_ACTION_START_STREAM = 6;
    /** @brief Original source constant EGM_ACTION_STOP_STREAM; consumes no instance wire bytes. */
    public static final int CONST_EGM_ACTION_STOP_STREAM = 7;
    /** @brief Complete native field rapid_task; scalar, text bound 512. */
    public String field_rapid_task = "";
    /** @brief Complete native field sm_state; scalar, text bound 0. */
    public int field_sm_state = 0;
    /** @brief Complete native field egm_action; scalar, text bound 0. */
    public int field_egm_action = 0;

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState()
    {
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState value)
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
    public static Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState value)
    {
        if(value == null)
        {
            throw new IllegalArgumentException("Null canonical record");
        }
        int start = wire.position();
        wire.string(value.field_rapid_task, 512);
        wire.u8(value.field_sm_state);
        wire.u8(value.field_egm_action);
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
    public static Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState value = new Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState();
        value.field_rapid_task = wire.string(512);
        value.field_sm_state = wire.u8();
        value.field_egm_action = wire.u8();
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
        return value;
    }
}
