/**
 * @file Ros2Fanuc_msgsMsgRobotStatus.java
 * @brief Represent the complete original FANUC ROS 2 canonical value catalog.
 * @details The caller owns every record and its finite dynamic backing storage. Codecs retain all
 * fields, original constants and native defaults; field units and frames follow the retained
 * definitions. Malformed or out-of-bound wire values are rejected. These are guest values rather than
 * native ROS objects; importing them grants no transport alias.
 */
package uwvm.fanuc.ros2;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 2 fanuc_msgs/msg/RobotStatus value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros2Fanuc_msgsMsgRobotStatus
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 5;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 5;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_3f31ee3631dc6f4c90eb5ded6209ccebf0f4193ddfe5f5032bdd2bcd71f8cc31";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "fanuc_msgs/msg/RobotStatus";
    /** @brief Original native identity; empty native identity is unqualified. */
    public static final String NATIVE_IDENTITY = "";
    /** @brief Original source constant CONTACT_STOP_MODE_NONE; consumes no instance wire bytes. */
    public static final int CONST_CONTACT_STOP_MODE_NONE = 0;
    /** @brief Original source constant CONTACT_STOP_MODE_SAFE; consumes no instance wire bytes. */
    public static final int CONST_CONTACT_STOP_MODE_SAFE = 1;
    /** @brief Original source constant CONTACT_STOP_MODE_STOP; consumes no instance wire bytes. */
    public static final int CONST_CONTACT_STOP_MODE_STOP = 2;
    /** @brief Original source constant CONTACT_STOP_MODE_DSBL; consumes no instance wire bytes. */
    public static final int CONST_CONTACT_STOP_MODE_DSBL = 3;
    /** @brief Original source constant CONTACT_STOP_MODE_ESCP; consumes no instance wire bytes. */
    public static final int CONST_CONTACT_STOP_MODE_ESCP = 4;
    /** @brief Complete native field in_error; scalar, text bound 0. */
    public boolean field_in_error = false;
    /** @brief Complete native field tp_enabled; scalar, text bound 0. */
    public boolean field_tp_enabled = false;
    /** @brief Complete native field e_stopped; scalar, text bound 0. */
    public boolean field_e_stopped = false;
    /** @brief Complete native field motion_possible; scalar, text bound 0. */
    public boolean field_motion_possible = false;
    /** @brief Complete native field contact_stop_mode; scalar, text bound 0. */
    public int field_contact_stop_mode = 0;

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros2Fanuc_msgsMsgRobotStatus()
    {
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros2Fanuc_msgsMsgRobotStatus value)
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
    public static Ros2Fanuc_msgsMsgRobotStatus decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros2Fanuc_msgsMsgRobotStatus value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros2Fanuc_msgsMsgRobotStatus value)
    {
        if(value == null)
        {
            throw new IllegalArgumentException("Null canonical record");
        }
        int start = wire.position();
        wire.bool(value.field_in_error);
        wire.bool(value.field_tp_enabled);
        wire.bool(value.field_e_stopped);
        wire.bool(value.field_motion_possible);
        wire.u8(value.field_contact_stop_mode);
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
    public static Ros2Fanuc_msgsMsgRobotStatus readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros2Fanuc_msgsMsgRobotStatus value = new Ros2Fanuc_msgsMsgRobotStatus();
        value.field_in_error = wire.bool();
        value.field_tp_enabled = wire.bool();
        value.field_e_stopped = wire.bool();
        value.field_motion_possible = wire.bool();
        value.field_contact_stop_mode = wire.u8();
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
        return value;
    }
}
