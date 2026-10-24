/**
 * @file Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request.java
 * @brief Represent the complete original ABB ROS 2 canonical value catalog.
 * @details The caller owns every record and its finite dynamic backing storage. Codecs retain all
 * fields, original constants and native defaults; field units and frames follow the retained
 * definitions. Malformed or out-of-bound wire values are rejected. These are guest values rather than
 * native ROS objects; importing them grants no transport alias.
 */
package uwvm.abb.ros2;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 2 abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 73;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 9;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_5d6983aa85c2c52f8ec06cbd723d5929cfc381db2e0bfffb4c27078497d86c90";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request";
    /** @brief Original native identity; empty native identity is unqualified. */
    public static final String NATIVE_IDENTITY = "";
    /** @brief Original source constant SG_COMMAND_UNKNOWN; consumes no instance wire bytes. */
    public static final int CONST_SG_COMMAND_UNKNOWN = 1;
    /** @brief Original source constant SG_COMMAND_NONE; consumes no instance wire bytes. */
    public static final int CONST_SG_COMMAND_NONE = 2;
    /** @brief Original source constant SG_COMMAND_INITIALIZE; consumes no instance wire bytes. */
    public static final int CONST_SG_COMMAND_INITIALIZE = 3;
    /** @brief Original source constant SG_COMMAND_CALIBRATE; consumes no instance wire bytes. */
    public static final int CONST_SG_COMMAND_CALIBRATE = 4;
    /** @brief Original source constant SG_COMMAND_MOVE_TO; consumes no instance wire bytes. */
    public static final int CONST_SG_COMMAND_MOVE_TO = 5;
    /** @brief Original source constant SG_COMMAND_GRIP_IN; consumes no instance wire bytes. */
    public static final int CONST_SG_COMMAND_GRIP_IN = 6;
    /** @brief Original source constant SG_COMMAND_GRIP_OUT; consumes no instance wire bytes. */
    public static final int CONST_SG_COMMAND_GRIP_OUT = 7;
    /** @brief Original source constant SG_COMMAND_BLOW_ON_1; consumes no instance wire bytes. */
    public static final int CONST_SG_COMMAND_BLOW_ON_1 = 8;
    /** @brief Original source constant SG_COMMAND_BLOW_ON_2; consumes no instance wire bytes. */
    public static final int CONST_SG_COMMAND_BLOW_ON_2 = 9;
    /** @brief Original source constant SG_COMMAND_BLOW_OFF_1; consumes no instance wire bytes. */
    public static final int CONST_SG_COMMAND_BLOW_OFF_1 = 10;
    /** @brief Original source constant SG_COMMAND_BLOW_OFF_2; consumes no instance wire bytes. */
    public static final int CONST_SG_COMMAND_BLOW_OFF_2 = 11;
    /** @brief Original source constant SG_COMMAND_VACUUM_ON_1; consumes no instance wire bytes. */
    public static final int CONST_SG_COMMAND_VACUUM_ON_1 = 12;
    /** @brief Original source constant SG_COMMAND_VACUUM_ON_2; consumes no instance wire bytes. */
    public static final int CONST_SG_COMMAND_VACUUM_ON_2 = 13;
    /** @brief Original source constant SG_COMMAND_VACUUM_OFF_1; consumes no instance wire bytes. */
    public static final int CONST_SG_COMMAND_VACUUM_OFF_1 = 14;
    /** @brief Original source constant SG_COMMAND_VACUUM_OFF_2; consumes no instance wire bytes. */
    public static final int CONST_SG_COMMAND_VACUUM_OFF_2 = 15;
    /** @brief Complete native field task; scalar, text bound 64. */
    public String field_task = "";
    /** @brief Complete native field command; scalar, text bound 0. */
    public int field_command = 0;
    /** @brief Complete native field target_position; scalar, text bound 0. */
    public float field_target_position = Float.intBitsToFloat(0x00000000);

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request()
    {
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request value)
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
    public static Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request value)
    {
        if(value == null)
        {
            throw new IllegalArgumentException("Null canonical record");
        }
        int start = wire.position();
        wire.string(value.field_task, 64);
        wire.u8(value.field_command);
        if(!Float.isFinite(value.field_target_position))
        {
            throw new IllegalArgumentException("Nonfinite target_position");
        }
        wire.f32(value.field_target_position);
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
    public static Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request value = new Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request();
        value.field_task = wire.string(64);
        value.field_command = wire.u8();
        value.field_target_position = wire.f32();
        if(!Float.isFinite(value.field_target_position))
        {
            throw new IllegalArgumentException("Nonfinite target_position");
        }
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
        return value;
    }
}
