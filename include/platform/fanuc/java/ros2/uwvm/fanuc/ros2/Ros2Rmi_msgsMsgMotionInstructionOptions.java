/**
 * @file Ros2Rmi_msgsMsgMotionInstructionOptions.java
 * @brief Represent the complete original FANUC ROS 2 canonical value catalog.
 * @details The caller owns every record and its finite dynamic backing storage. Codecs retain all
 * fields, original constants and native defaults; field units and frames follow the retained
 * definitions. Malformed or out-of-bound wire values are rejected. These are guest values rather than
 * native ROS objects; importing them grants no transport alias.
 */
package uwvm.fanuc.ros2;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 2 rmi_msgs/msg/MotionInstructionOptions value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros2Rmi_msgsMsgMotionInstructionOptions
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 2612;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 52;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_f8d9ed2e083c577b0cae8965df71aa99643d12ce5a5a6ce558894edfb756bcc6";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "rmi_msgs/msg/MotionInstructionOptions";
    /** @brief Original native identity; empty native identity is unqualified. */
    public static final String NATIVE_IDENTITY = "";
    /** @brief Original source constant LCB_TYPE_TB; consumes no instance wire bytes. */
    public static final String CONST_LCB_TYPE_TB = "TB";
    /** @brief Original source constant LCB_TYPE_TA; consumes no instance wire bytes. */
    public static final String CONST_LCB_TYPE_TA = "TA";
    /** @brief Original source constant LCB_TYPE_DB; consumes no instance wire bytes. */
    public static final String CONST_LCB_TYPE_DB = "DB";
    /** @brief Original source constant PORT_TYPE_DOUT; consumes no instance wire bytes. */
    public static final int CONST_PORT_TYPE_DOUT = 1;
    /** @brief Original source constant PORT_TYPE_DO; consumes no instance wire bytes. */
    public static final int CONST_PORT_TYPE_DO = 1;
    /** @brief Original source constant PORT_TYPE_ROUT; consumes no instance wire bytes. */
    public static final int CONST_PORT_TYPE_ROUT = 2;
    /** @brief Original source constant PORT_TYPE_RO; consumes no instance wire bytes. */
    public static final int CONST_PORT_TYPE_RO = 2;
    /** @brief Complete native field use_acc; scalar, text bound 0. */
    public boolean field_use_acc = false;
    /** @brief Complete native field acc; scalar, text bound 0. */
    public int field_acc = 0;
    /** @brief Complete native field use_offset_pr_number; scalar, text bound 0. */
    public boolean field_use_offset_pr_number = false;
    /** @brief Complete native field offset_pr_number; scalar, text bound 0. */
    public int field_offset_pr_number = 0;
    /** @brief Complete native field use_vision_pr_number; scalar, text bound 0. */
    public boolean field_use_vision_pr_number = false;
    /** @brief Complete native field vision_pr_number; scalar, text bound 0. */
    public int field_vision_pr_number = 0;
    /** @brief Complete native field use_wrist_joint; scalar, text bound 0. */
    public boolean field_use_wrist_joint = false;
    /** @brief Complete native field wrist_joint; scalar, text bound 512. */
    public String field_wrist_joint = "ON";
    /** @brief Complete native field use_mrot; scalar, text bound 0. */
    public boolean field_use_mrot = false;
    /** @brief Complete native field mrot; scalar, text bound 512. */
    public String field_mrot = "ON";
    /** @brief Complete native field use_lcb_type; scalar, text bound 0. */
    public boolean field_use_lcb_type = false;
    /** @brief Complete native field lcb_type; scalar, text bound 512. */
    public String field_lcb_type = "";
    /** @brief Complete native field use_lcb_value; scalar, text bound 0. */
    public boolean field_use_lcb_value = false;
    /** @brief Complete native field lcb_value; scalar, text bound 0. */
    public int field_lcb_value = 0;
    /** @brief Complete native field use_port_type; scalar, text bound 0. */
    public boolean field_use_port_type = false;
    /** @brief Complete native field port_type; scalar, text bound 0. */
    public int field_port_type = 0;
    /** @brief Complete native field use_port_number; scalar, text bound 0. */
    public boolean field_use_port_number = false;
    /** @brief Complete native field port_number; scalar, text bound 0. */
    public int field_port_number = 0;
    /** @brief Complete native field use_port_value; scalar, text bound 0. */
    public boolean field_use_port_value = false;
    /** @brief Complete native field port_value; scalar, text bound 512. */
    public String field_port_value = "";
    /** @brief Complete native field use_tool_offset_pr_number; scalar, text bound 0. */
    public boolean field_use_tool_offset_pr_number = false;
    /** @brief Complete native field tool_offset_pr_number; scalar, text bound 0. */
    public int field_tool_offset_pr_number = 0;
    /** @brief Complete native field use_alim; scalar, text bound 0. */
    public boolean field_use_alim = false;
    /** @brief Complete native field alim; scalar, text bound 0. */
    public int field_alim = 0;
    /** @brief Complete native field use_alim_reg; scalar, text bound 0. */
    public boolean field_use_alim_reg = false;
    /** @brief Complete native field alim_reg; scalar, text bound 0. */
    public int field_alim_reg = 0;
    /** @brief Complete native field use_no_blend; scalar, text bound 0. */
    public boolean field_use_no_blend = false;
    /** @brief Complete native field no_blend; scalar, text bound 512. */
    public String field_no_blend = "ON";

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros2Rmi_msgsMsgMotionInstructionOptions()
    {
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros2Rmi_msgsMsgMotionInstructionOptions value)
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
    public static Ros2Rmi_msgsMsgMotionInstructionOptions decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros2Rmi_msgsMsgMotionInstructionOptions value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros2Rmi_msgsMsgMotionInstructionOptions value)
    {
        if(value == null)
        {
            throw new IllegalArgumentException("Null canonical record");
        }
        int start = wire.position();
        wire.bool(value.field_use_acc);
        wire.u8(value.field_acc);
        wire.bool(value.field_use_offset_pr_number);
        wire.u16(value.field_offset_pr_number);
        wire.bool(value.field_use_vision_pr_number);
        wire.u16(value.field_vision_pr_number);
        wire.bool(value.field_use_wrist_joint);
        wire.string(value.field_wrist_joint, 512);
        wire.bool(value.field_use_mrot);
        wire.string(value.field_mrot, 512);
        wire.bool(value.field_use_lcb_type);
        wire.string(value.field_lcb_type, 512);
        wire.bool(value.field_use_lcb_value);
        wire.u16(value.field_lcb_value);
        wire.bool(value.field_use_port_type);
        wire.u8(value.field_port_type);
        wire.bool(value.field_use_port_number);
        wire.u16(value.field_port_number);
        wire.bool(value.field_use_port_value);
        wire.string(value.field_port_value, 512);
        wire.bool(value.field_use_tool_offset_pr_number);
        wire.u16(value.field_tool_offset_pr_number);
        wire.bool(value.field_use_alim);
        wire.i32(value.field_alim);
        wire.bool(value.field_use_alim_reg);
        wire.u16(value.field_alim_reg);
        wire.bool(value.field_use_no_blend);
        wire.string(value.field_no_blend, 512);
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
    public static Ros2Rmi_msgsMsgMotionInstructionOptions readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros2Rmi_msgsMsgMotionInstructionOptions value = new Ros2Rmi_msgsMsgMotionInstructionOptions();
        value.field_use_acc = wire.bool();
        value.field_acc = wire.u8();
        value.field_use_offset_pr_number = wire.bool();
        value.field_offset_pr_number = wire.u16();
        value.field_use_vision_pr_number = wire.bool();
        value.field_vision_pr_number = wire.u16();
        value.field_use_wrist_joint = wire.bool();
        value.field_wrist_joint = wire.string(512);
        value.field_use_mrot = wire.bool();
        value.field_mrot = wire.string(512);
        value.field_use_lcb_type = wire.bool();
        value.field_lcb_type = wire.string(512);
        value.field_use_lcb_value = wire.bool();
        value.field_lcb_value = wire.u16();
        value.field_use_port_type = wire.bool();
        value.field_port_type = wire.u8();
        value.field_use_port_number = wire.bool();
        value.field_port_number = wire.u16();
        value.field_use_port_value = wire.bool();
        value.field_port_value = wire.string(512);
        value.field_use_tool_offset_pr_number = wire.bool();
        value.field_tool_offset_pr_number = wire.u16();
        value.field_use_alim = wire.bool();
        value.field_alim = wire.i32();
        value.field_use_alim_reg = wire.bool();
        value.field_alim_reg = wire.u16();
        value.field_use_no_blend = wire.bool();
        value.field_no_blend = wire.string(512);
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
        return value;
    }
}
