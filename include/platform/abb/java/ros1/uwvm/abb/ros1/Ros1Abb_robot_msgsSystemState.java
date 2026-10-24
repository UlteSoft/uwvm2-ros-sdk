/**
 * @file Ros1Abb_robot_msgsSystemState.java
 * @brief Represent the complete original ABB ROS 1 canonical value catalog.
 * @details The caller owns every record and its finite dynamic backing storage. Codecs retain all
 * fields, original constants and native defaults; field units and frames follow the retained
 * definitions. Malformed or out-of-bound wire values are rejected. These are guest values rather than
 * native ROS objects; importing them grants no transport alias.
 */
package uwvm.abb.ros1;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 1 abb_robot_msgs/SystemState value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros1Abb_robot_msgsSystemState
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 2331;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 27;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_b57aa1fdf098aa78c51a96bd2978e02f97cbae67148c0028557d2a3e1e8630f2";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "abb_robot_msgs/SystemState";
    /** @brief Original native identity; empty native identity is unqualified. */
    public static final String NATIVE_IDENTITY = "";
    /** @brief Complete native field header; scalar, text bound 0. */
    public Ros1Std_msgsHeader field_header = new Ros1Std_msgsHeader();
    /** @brief Complete native field motors_on; scalar, text bound 0. */
    public boolean field_motors_on = false;
    /** @brief Complete native field auto_mode; scalar, text bound 0. */
    public boolean field_auto_mode = false;
    /** @brief Complete native field rapid_running; scalar, text bound 0. */
    public boolean field_rapid_running = false;
    /** @brief Complete native field rapid_tasks; sequence capacity 16, text bound 0. */
    public Ros1Abb_robot_msgsRAPIDTaskState[] field_rapid_tasks = new Ros1Abb_robot_msgsRAPIDTaskState[0];
    /** @brief Complete native field mechanical_units; sequence capacity 16, text bound 0. */
    public Ros1Abb_robot_msgsMechanicalUnitState[] field_mechanical_units = new Ros1Abb_robot_msgsMechanicalUnitState[0];

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros1Abb_robot_msgsSystemState()
    {
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros1Abb_robot_msgsSystemState value)
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
    public static Ros1Abb_robot_msgsSystemState decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros1Abb_robot_msgsSystemState value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros1Abb_robot_msgsSystemState value)
    {
        if(value == null)
        {
            throw new IllegalArgumentException("Null canonical record");
        }
        int start = wire.position();
        Ros1Std_msgsHeader.writeFields(wire, value.field_header);
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
            Ros1Abb_robot_msgsRAPIDTaskState.writeFields(wire, value.field_rapid_tasks[index]);
        }
        if(value.field_mechanical_units == null || value.field_mechanical_units.length > 16)
        {
            throw new IllegalArgumentException("Invalid mechanical_units extent");
        }
        wire.u32((long)value.field_mechanical_units.length);
        for(int index = 0; index < value.field_mechanical_units.length; index++)
        {
            Ros1Abb_robot_msgsMechanicalUnitState.writeFields(wire, value.field_mechanical_units[index]);
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
    public static Ros1Abb_robot_msgsSystemState readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros1Abb_robot_msgsSystemState value = new Ros1Abb_robot_msgsSystemState();
        value.field_header = Ros1Std_msgsHeader.readFields(wire);
        value.field_motors_on = wire.bool();
        value.field_auto_mode = wire.bool();
        value.field_rapid_running = wire.bool();
        value.field_rapid_tasks = new Ros1Abb_robot_msgsRAPIDTaskState[wire.count(16)];
        for(int index = 0; index < value.field_rapid_tasks.length; index++)
        {
            value.field_rapid_tasks[index] = Ros1Abb_robot_msgsRAPIDTaskState.readFields(wire);
        }
        value.field_mechanical_units = new Ros1Abb_robot_msgsMechanicalUnitState[wire.count(16)];
        for(int index = 0; index < value.field_mechanical_units.length; index++)
        {
            value.field_mechanical_units[index] = Ros1Abb_robot_msgsMechanicalUnitState.readFields(wire);
        }
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
        return value;
    }
}
