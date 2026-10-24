/**
 * @file Ros2Rmi_msgsMsgCommandOptions.java
 * @brief Represent the complete original FANUC ROS 2 canonical value catalog.
 * @details The caller owns every record and its finite dynamic backing storage. Codecs retain all
 * fields, original constants and native defaults; field units and frames follow the retained
 * definitions. Malformed or out-of-bound wire values are rejected. These are guest values rather than
 * native ROS objects; importing them grants no transport alias.
 */
package uwvm.fanuc.ros2;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 2 rmi_msgs/msg/CommandOptions value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros2Rmi_msgsMsgCommandOptions
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 1036;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 12;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_0be0c508035725bf9686807cb8b5267e23f709b7aa34b0910a44ff3604670147";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "rmi_msgs/msg/CommandOptions";
    /** @brief Original native identity; empty native identity is unqualified. */
    public static final String NATIVE_IDENTITY = "";
    /** @brief Original source constant RTSA_ON; consumes no instance wire bytes. */
    public static final String CONST_RTSA_ON = "ON";
    /** @brief Original source constant RTSA_OFF; consumes no instance wire bytes. */
    public static final String CONST_RTSA_OFF = "OFF";
    /** @brief Original source constant PLTZ_ZERODN; consumes no instance wire bytes. */
    public static final String CONST_PLTZ_ZERODN = "ZERODN";
    /** @brief Original source constant PLTZ_ZEROUP; consumes no instance wire bytes. */
    public static final String CONST_PLTZ_ZEROUP = "ZEROUP";
    /** @brief Original source constant PLTZ_PSPIDN; consumes no instance wire bytes. */
    public static final String CONST_PLTZ_PSPIDN = "PSPIDN";
    /** @brief Original source constant PLTZ_PSPIUP; consumes no instance wire bytes. */
    public static final String CONST_PLTZ_PSPIUP = "PSPIUP";
    /** @brief Original source constant PLTZ_MSPIDN; consumes no instance wire bytes. */
    public static final String CONST_PLTZ_MSPIDN = "MSPIDN";
    /** @brief Original source constant PLTZ_MSPIUP; consumes no instance wire bytes. */
    public static final String CONST_PLTZ_MSPIUP = "MSPIUP";
    /** @brief Complete native field use_group_mask; scalar, text bound 0. */
    public boolean field_use_group_mask = false;
    /** @brief Complete native field group_mask; scalar, text bound 0. */
    public int field_group_mask = 1;
    /** @brief Complete native field use_rtsa; scalar, text bound 0. */
    public boolean field_use_rtsa = false;
    /** @brief Complete native field rtsa; scalar, text bound 512. */
    public String field_rtsa = "ON";
    /** @brief Complete native field use_pltzmode; scalar, text bound 0. */
    public boolean field_use_pltzmode = false;
    /** @brief Complete native field pltzmode; scalar, text bound 512. */
    public String field_pltzmode = "ZERODN";

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros2Rmi_msgsMsgCommandOptions()
    {
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros2Rmi_msgsMsgCommandOptions value)
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
    public static Ros2Rmi_msgsMsgCommandOptions decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros2Rmi_msgsMsgCommandOptions value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros2Rmi_msgsMsgCommandOptions value)
    {
        if(value == null)
        {
            throw new IllegalArgumentException("Null canonical record");
        }
        int start = wire.position();
        wire.bool(value.field_use_group_mask);
        wire.u8(value.field_group_mask);
        wire.bool(value.field_use_rtsa);
        wire.string(value.field_rtsa, 512);
        wire.bool(value.field_use_pltzmode);
        wire.string(value.field_pltzmode, 512);
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
    public static Ros2Rmi_msgsMsgCommandOptions readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros2Rmi_msgsMsgCommandOptions value = new Ros2Rmi_msgsMsgCommandOptions();
        value.field_use_group_mask = wire.bool();
        value.field_group_mask = wire.u8();
        value.field_use_rtsa = wire.bool();
        value.field_rtsa = wire.string(512);
        value.field_use_pltzmode = wire.bool();
        value.field_pltzmode = wire.string(512);
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
        return value;
    }
}
