/**
 * @file Ros2Fanuc_msgsMsgRobotStatusExt.java
 * @brief Represent the complete original FANUC ROS 2 canonical value catalog.
 * @details The caller owns every record and its finite dynamic backing storage. Codecs retain all
 * fields, original constants and native defaults; field units and frames follow the retained
 * definitions. Malformed or out-of-bound wire values are rejected. These are guest values rather than
 * native ROS objects; importing them grants no transport alias.
 */
package uwvm.fanuc.ros2;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 2 fanuc_msgs/msg/RobotStatusExt value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros2Fanuc_msgsMsgRobotStatusExt
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 1042;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 18;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_8ba47a11bfbe02026fe79b32e1ed02e5f609499ea55bb57c9f09af9fba389648";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "fanuc_msgs/msg/RobotStatusExt";
    /** @brief Original native identity; empty native identity is unqualified. */
    public static final String NATIVE_IDENTITY = "";
    /** @brief Complete native field error_code; scalar, text bound 512. */
    public String field_error_code = "";
    /** @brief Complete native field in_motion; scalar, text bound 0. */
    public boolean field_in_motion = false;
    /** @brief Complete native field drives_powered; scalar, text bound 0. */
    public boolean field_drives_powered = false;
    /** @brief Complete native field gen_override; scalar, text bound 0. */
    public int field_gen_override = 0;
    /** @brief Complete native field speed_clamp_limit; scalar, text bound 0. */
    public float field_speed_clamp_limit = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field control_mode; scalar, text bound 512. */
    public String field_control_mode = "";

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros2Fanuc_msgsMsgRobotStatusExt()
    {
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros2Fanuc_msgsMsgRobotStatusExt value)
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
    public static Ros2Fanuc_msgsMsgRobotStatusExt decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros2Fanuc_msgsMsgRobotStatusExt value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros2Fanuc_msgsMsgRobotStatusExt value)
    {
        if(value == null)
        {
            throw new IllegalArgumentException("Null canonical record");
        }
        int start = wire.position();
        wire.string(value.field_error_code, 512);
        wire.bool(value.field_in_motion);
        wire.bool(value.field_drives_powered);
        wire.i32(value.field_gen_override);
        if(!Float.isFinite(value.field_speed_clamp_limit))
        {
            throw new IllegalArgumentException("Nonfinite speed_clamp_limit");
        }
        wire.f32(value.field_speed_clamp_limit);
        wire.string(value.field_control_mode, 512);
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
    public static Ros2Fanuc_msgsMsgRobotStatusExt readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros2Fanuc_msgsMsgRobotStatusExt value = new Ros2Fanuc_msgsMsgRobotStatusExt();
        value.field_error_code = wire.string(512);
        value.field_in_motion = wire.bool();
        value.field_drives_powered = wire.bool();
        value.field_gen_override = wire.i32();
        value.field_speed_clamp_limit = wire.f32();
        if(!Float.isFinite(value.field_speed_clamp_limit))
        {
            throw new IllegalArgumentException("Nonfinite speed_clamp_limit");
        }
        value.field_control_mode = wire.string(512);
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
        return value;
    }
}
