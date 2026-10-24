/**
 * @file Ros2Industrial_msgsMsgRobotStatus.java
 * @brief Represent the complete original YASKAWA ROS 2 canonical value catalog.
 * @details The caller owns every record and its finite dynamic backing storage. Codecs retain all
 * fields, original constants and native defaults; field units and frames follow the retained
 * definitions. Malformed or out-of-bound wire values are rejected. These are guest values rather than
 * native ROS objects; importing them grants no transport alias.
 */
package uwvm.yaskawa.ros2;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 2 industrial_msgs/msg/RobotStatus value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros2Industrial_msgsMsgRobotStatus
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 150;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 22;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_1086f16ba5d614f3d87c3ab195240b5a0683ef490f2e92434e4ea3bdbe7554ba";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "industrial_msgs/msg/RobotStatus";
    /** @brief Original native identity; empty native identity is unqualified. */
    public static final String NATIVE_IDENTITY = "";
    /** @brief Complete native field header; scalar, text bound 0. */
    public Ros2Std_msgsMsgHeader field_header = new Ros2Std_msgsMsgHeader();
    /** @brief Complete native field mode; scalar, text bound 0. */
    public Ros2Industrial_msgsMsgRobotMode field_mode = new Ros2Industrial_msgsMsgRobotMode();
    /** @brief Complete native field e_stopped; scalar, text bound 0. */
    public Ros2Industrial_msgsMsgTriState field_e_stopped = new Ros2Industrial_msgsMsgTriState();
    /** @brief Complete native field drives_powered; scalar, text bound 0. */
    public Ros2Industrial_msgsMsgTriState field_drives_powered = new Ros2Industrial_msgsMsgTriState();
    /** @brief Complete native field motion_possible; scalar, text bound 0. */
    public Ros2Industrial_msgsMsgTriState field_motion_possible = new Ros2Industrial_msgsMsgTriState();
    /** @brief Complete native field in_motion; scalar, text bound 0. */
    public Ros2Industrial_msgsMsgTriState field_in_motion = new Ros2Industrial_msgsMsgTriState();
    /** @brief Complete native field in_error; scalar, text bound 0. */
    public Ros2Industrial_msgsMsgTriState field_in_error = new Ros2Industrial_msgsMsgTriState();
    /** @brief Complete native field error_codes; sequence capacity 16, text bound 0. */
    public int[] field_error_codes = new int[0];

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros2Industrial_msgsMsgRobotStatus()
    {
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros2Industrial_msgsMsgRobotStatus value)
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
    public static Ros2Industrial_msgsMsgRobotStatus decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros2Industrial_msgsMsgRobotStatus value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros2Industrial_msgsMsgRobotStatus value)
    {
        if(value == null)
        {
            throw new IllegalArgumentException("Null canonical record");
        }
        int start = wire.position();
        Ros2Std_msgsMsgHeader.writeFields(wire, value.field_header);
        Ros2Industrial_msgsMsgRobotMode.writeFields(wire, value.field_mode);
        Ros2Industrial_msgsMsgTriState.writeFields(wire, value.field_e_stopped);
        Ros2Industrial_msgsMsgTriState.writeFields(wire, value.field_drives_powered);
        Ros2Industrial_msgsMsgTriState.writeFields(wire, value.field_motion_possible);
        Ros2Industrial_msgsMsgTriState.writeFields(wire, value.field_in_motion);
        Ros2Industrial_msgsMsgTriState.writeFields(wire, value.field_in_error);
        if(value.field_error_codes == null || value.field_error_codes.length > 16)
        {
            throw new IllegalArgumentException("Invalid error_codes extent");
        }
        wire.u32((long)value.field_error_codes.length);
        for(int index = 0; index < value.field_error_codes.length; index++)
        {
            wire.i32(value.field_error_codes[index]);
        }
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
    public static Ros2Industrial_msgsMsgRobotStatus readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros2Industrial_msgsMsgRobotStatus value = new Ros2Industrial_msgsMsgRobotStatus();
        value.field_header = Ros2Std_msgsMsgHeader.readFields(wire);
        value.field_mode = Ros2Industrial_msgsMsgRobotMode.readFields(wire);
        value.field_e_stopped = Ros2Industrial_msgsMsgTriState.readFields(wire);
        value.field_drives_powered = Ros2Industrial_msgsMsgTriState.readFields(wire);
        value.field_motion_possible = Ros2Industrial_msgsMsgTriState.readFields(wire);
        value.field_in_motion = Ros2Industrial_msgsMsgTriState.readFields(wire);
        value.field_in_error = Ros2Industrial_msgsMsgTriState.readFields(wire);
        value.field_error_codes = new int[wire.count(16)];
        for(int index = 0; index < value.field_error_codes.length; index++)
        {
            value.field_error_codes[index] = wire.i32();
        }
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
        return value;
    }
}
