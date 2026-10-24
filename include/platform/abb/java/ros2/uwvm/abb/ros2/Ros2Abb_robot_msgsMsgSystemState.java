/**
 * @file Ros2Abb_robot_msgsMsgSystemState.java
 * @brief Represent the complete original ABB ROS 2 canonical value catalog.
 * @details The caller owns every record and its finite dynamic backing storage. Codecs retain all
 * fields, original constants and native defaults; field units and frames follow the retained
 * definitions. Malformed or out-of-bound wire values are rejected. These are guest values rather than
 * native ROS objects; importing them grants no transport alias.
 */
package uwvm.abb.ros2;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 2 abb_robot_msgs/msg/SystemState value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros2Abb_robot_msgsMsgSystemState
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 2327;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 23;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_c1cdbf0e578fddc5bf70cc2cc181d786f3e8189afc6a67962de6eb273973a38f";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "abb_robot_msgs/msg/SystemState";
    /** @brief Original native identity; empty native identity is unqualified. */
    public static final String NATIVE_IDENTITY = "";
    /** @brief Complete native field header; scalar, text bound 0. */
    public Ros2Std_msgsMsgHeader field_header = new Ros2Std_msgsMsgHeader();
    /** @brief Complete native field motors_on; scalar, text bound 0. */
    public boolean field_motors_on = false;
    /** @brief Complete native field auto_mode; scalar, text bound 0. */
    public boolean field_auto_mode = false;
    /** @brief Complete native field rapid_running; scalar, text bound 0. */
    public boolean field_rapid_running = false;
    /** @brief Complete native field rapid_tasks; sequence capacity 16, text bound 0. */
    public Ros2Abb_robot_msgsMsgRAPIDTaskState[] field_rapid_tasks = new Ros2Abb_robot_msgsMsgRAPIDTaskState[0];
    /** @brief Complete native field mechanical_units; sequence capacity 16, text bound 0. */
    public Ros2Abb_robot_msgsMsgMechanicalUnitState[] field_mechanical_units = new Ros2Abb_robot_msgsMsgMechanicalUnitState[0];

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros2Abb_robot_msgsMsgSystemState()
    {
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros2Abb_robot_msgsMsgSystemState value)
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
    public static Ros2Abb_robot_msgsMsgSystemState decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros2Abb_robot_msgsMsgSystemState value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros2Abb_robot_msgsMsgSystemState value)
    {
        if(value == null)
        {
            throw new IllegalArgumentException("Null canonical record");
        }
        int start = wire.position();
        Ros2Std_msgsMsgHeader.writeFields(wire, value.field_header);
        wire.bool(value.field_motors_on);
        wire.bool(value.field_auto_mode);
        wire.bool(value.field_rapid_running);
        if(value.field_rapid_tasks == null || value.field_rapid_tasks.length > 16)
        {
            throw new IllegalArgumentException("Invalid rapid_tasks extent");
        }
        wire.u32((long)value.field_rapid_tasks.length);
        for(int index = 0; index < value.field_rapid_tasks.length; index++)
        {
            Ros2Abb_robot_msgsMsgRAPIDTaskState.writeFields(wire, value.field_rapid_tasks[index]);
        }
        if(value.field_mechanical_units == null || value.field_mechanical_units.length > 16)
        {
            throw new IllegalArgumentException("Invalid mechanical_units extent");
        }
        wire.u32((long)value.field_mechanical_units.length);
        for(int index = 0; index < value.field_mechanical_units.length; index++)
        {
            Ros2Abb_robot_msgsMsgMechanicalUnitState.writeFields(wire, value.field_mechanical_units[index]);
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
    public static Ros2Abb_robot_msgsMsgSystemState readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros2Abb_robot_msgsMsgSystemState value = new Ros2Abb_robot_msgsMsgSystemState();
        value.field_header = Ros2Std_msgsMsgHeader.readFields(wire);
        value.field_motors_on = wire.bool();
        value.field_auto_mode = wire.bool();
        value.field_rapid_running = wire.bool();
        value.field_rapid_tasks = new Ros2Abb_robot_msgsMsgRAPIDTaskState[wire.count(16)];
        for(int index = 0; index < value.field_rapid_tasks.length; index++)
        {
            value.field_rapid_tasks[index] = Ros2Abb_robot_msgsMsgRAPIDTaskState.readFields(wire);
        }
        value.field_mechanical_units = new Ros2Abb_robot_msgsMsgMechanicalUnitState[wire.count(16)];
        for(int index = 0; index < value.field_mechanical_units.length; index++)
        {
            value.field_mechanical_units[index] = Ros2Abb_robot_msgsMsgMechanicalUnitState.readFields(wire);
        }
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
        return value;
    }
}
