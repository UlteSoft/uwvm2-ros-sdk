/**
 * @file Ros1Abb_robot_msgsRAPIDTaskState.java
 * @brief Represent the complete original ABB ROS 1 canonical value catalog.
 * @details The caller owns every record and its finite dynamic backing storage. Codecs retain all
 * fields, original constants and native defaults; field units and frames follow the retained
 * definitions. Malformed or out-of-bound wire values are rejected. These are guest values rather than
 * native ROS objects; importing them grants no transport alias.
 */
package uwvm.abb.ros1;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 1 abb_robot_msgs/RAPIDTaskState value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros1Abb_robot_msgsRAPIDTaskState
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 71;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 7;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_ab1245cc352efa91cdcc8de801392857e25a4101a141439554b761525b31b947";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "abb_robot_msgs/RAPIDTaskState";
    /** @brief Original native identity; empty native identity is unqualified. */
    public static final String NATIVE_IDENTITY = "";
    /** @brief Original source constant EXECUTION_STATE_UNKNOWN; consumes no instance wire bytes. */
    public static final int CONST_EXECUTION_STATE_UNKNOWN = 1;
    /** @brief Original source constant EXECUTION_STATE_READY; consumes no instance wire bytes. */
    public static final int CONST_EXECUTION_STATE_READY = 2;
    /** @brief Original source constant EXECUTION_STATE_STOPPED; consumes no instance wire bytes. */
    public static final int CONST_EXECUTION_STATE_STOPPED = 3;
    /** @brief Original source constant EXECUTION_STATE_STARTED; consumes no instance wire bytes. */
    public static final int CONST_EXECUTION_STATE_STARTED = 4;
    /** @brief Original source constant EXECUTION_STATE_UNINITIALIZED; consumes no instance wire bytes. */
    public static final int CONST_EXECUTION_STATE_UNINITIALIZED = 5;
    /** @brief Complete native field name; scalar, text bound 64. */
    public String field_name = "";
    /** @brief Complete native field activated; scalar, text bound 0. */
    public boolean field_activated = false;
    /** @brief Complete native field execution_state; scalar, text bound 0. */
    public int field_execution_state = 0;
    /** @brief Complete native field motion_task; scalar, text bound 0. */
    public boolean field_motion_task = false;

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros1Abb_robot_msgsRAPIDTaskState()
    {
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros1Abb_robot_msgsRAPIDTaskState value)
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
    public static Ros1Abb_robot_msgsRAPIDTaskState decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros1Abb_robot_msgsRAPIDTaskState value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros1Abb_robot_msgsRAPIDTaskState value)
    {
        if(value == null)
        {
            throw new IllegalArgumentException("Null canonical record");
        }
        int start = wire.position();
        wire.string(value.field_name, 64);
        wire.bool(value.field_activated);
        wire.u8(value.field_execution_state);
        wire.bool(value.field_motion_task);
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
    public static Ros1Abb_robot_msgsRAPIDTaskState readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros1Abb_robot_msgsRAPIDTaskState value = new Ros1Abb_robot_msgsRAPIDTaskState();
        value.field_name = wire.string(64);
        value.field_activated = wire.bool();
        value.field_execution_state = wire.u8();
        value.field_motion_task = wire.bool();
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
        return value;
    }
}
