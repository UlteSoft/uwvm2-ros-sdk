/**
 * @file Ros2Rmi_msgsMsgMotionInstructionOptions.cs
 * @brief Represent the complete original FANUC ROS 2 canonical value catalog.
 * @details The caller owns every record and its finite dynamic backing storage. Codecs retain all
 * fields, original constants and native defaults; field units and frames follow the retained
 * definitions. Malformed or out-of-bound wire values are rejected. These are guest values rather than
 * native ROS objects; importing them grants no transport alias.
 */
using System;
using Uwvm.Ros;

namespace Uwvm.Fanuc.Ros2
{
    /**
     * @brief Complete ROS 2 rmi_msgs/msg/MotionInstructionOptions value and canonical codec.
     * @details All fields, constants, defaults and nested capacities come from the
     * canonical bounded catalog. Instances own their strings/arrays/nested values.
     * Encode/decode perform no ROS operation and confer no authority. Native type
     * identity must still be independently qualified by the deployment registry.
     */
    public sealed class Ros2Rmi_msgsMsgMotionInstructionOptions
    {
        /** @brief Exact registered max wire bytes. */
        public const int MAX_WIRE_BYTES = 2612;
        /** @brief Exact registered min wire bytes. */
        public const int MIN_WIRE_BYTES = 52;
        /** @brief Original codec identity; empty native identity is unqualified. */
        public const string CODEC_IDENTITY = "UWVMROS1_f8d9ed2e083c577b0cae8965df71aa99643d12ce5a5a6ce558894edfb756bcc6";
        /** @brief Original source type; empty native identity is unqualified. */
        public const string SOURCE_TYPE = "rmi_msgs/msg/MotionInstructionOptions";
        /** @brief Original native identity; empty native identity is unqualified. */
        public const string NATIVE_IDENTITY = "";
        /** @brief Original source constant LCB_TYPE_TB; consumes no instance wire bytes. */
        public const string CONST_LCB_TYPE_TB = "TB";
        /** @brief Original source constant LCB_TYPE_TA; consumes no instance wire bytes. */
        public const string CONST_LCB_TYPE_TA = "TA";
        /** @brief Original source constant LCB_TYPE_DB; consumes no instance wire bytes. */
        public const string CONST_LCB_TYPE_DB = "DB";
        /** @brief Original source constant PORT_TYPE_DOUT; consumes no instance wire bytes. */
        public const byte CONST_PORT_TYPE_DOUT = (byte)1;
        /** @brief Original source constant PORT_TYPE_DO; consumes no instance wire bytes. */
        public const byte CONST_PORT_TYPE_DO = (byte)1;
        /** @brief Original source constant PORT_TYPE_ROUT; consumes no instance wire bytes. */
        public const byte CONST_PORT_TYPE_ROUT = (byte)2;
        /** @brief Original source constant PORT_TYPE_RO; consumes no instance wire bytes. */
        public const byte CONST_PORT_TYPE_RO = (byte)2;
        /** @brief Complete native field use_acc; scalar, text bound 0. */
        public bool field_use_acc = false;
        /** @brief Complete native field acc; scalar, text bound 0. */
        public byte field_acc = (byte)0;
        /** @brief Complete native field use_offset_pr_number; scalar, text bound 0. */
        public bool field_use_offset_pr_number = false;
        /** @brief Complete native field offset_pr_number; scalar, text bound 0. */
        public ushort field_offset_pr_number = (ushort)0;
        /** @brief Complete native field use_vision_pr_number; scalar, text bound 0. */
        public bool field_use_vision_pr_number = false;
        /** @brief Complete native field vision_pr_number; scalar, text bound 0. */
        public ushort field_vision_pr_number = (ushort)0;
        /** @brief Complete native field use_wrist_joint; scalar, text bound 0. */
        public bool field_use_wrist_joint = false;
        /** @brief Complete native field wrist_joint; scalar, text bound 512. */
        public string field_wrist_joint = "ON";
        /** @brief Complete native field use_mrot; scalar, text bound 0. */
        public bool field_use_mrot = false;
        /** @brief Complete native field mrot; scalar, text bound 512. */
        public string field_mrot = "ON";
        /** @brief Complete native field use_lcb_type; scalar, text bound 0. */
        public bool field_use_lcb_type = false;
        /** @brief Complete native field lcb_type; scalar, text bound 512. */
        public string field_lcb_type = "";
        /** @brief Complete native field use_lcb_value; scalar, text bound 0. */
        public bool field_use_lcb_value = false;
        /** @brief Complete native field lcb_value; scalar, text bound 0. */
        public ushort field_lcb_value = (ushort)0;
        /** @brief Complete native field use_port_type; scalar, text bound 0. */
        public bool field_use_port_type = false;
        /** @brief Complete native field port_type; scalar, text bound 0. */
        public byte field_port_type = (byte)0;
        /** @brief Complete native field use_port_number; scalar, text bound 0. */
        public bool field_use_port_number = false;
        /** @brief Complete native field port_number; scalar, text bound 0. */
        public ushort field_port_number = (ushort)0;
        /** @brief Complete native field use_port_value; scalar, text bound 0. */
        public bool field_use_port_value = false;
        /** @brief Complete native field port_value; scalar, text bound 512. */
        public string field_port_value = "";
        /** @brief Complete native field use_tool_offset_pr_number; scalar, text bound 0. */
        public bool field_use_tool_offset_pr_number = false;
        /** @brief Complete native field tool_offset_pr_number; scalar, text bound 0. */
        public ushort field_tool_offset_pr_number = (ushort)0;
        /** @brief Complete native field use_alim; scalar, text bound 0. */
        public bool field_use_alim = false;
        /** @brief Complete native field alim; scalar, text bound 0. */
        public int field_alim = 0;
        /** @brief Complete native field use_alim_reg; scalar, text bound 0. */
        public bool field_use_alim_reg = false;
        /** @brief Complete native field alim_reg; scalar, text bound 0. */
        public ushort field_alim_reg = (ushort)0;
        /** @brief Complete native field use_no_blend; scalar, text bound 0. */
        public bool field_use_no_blend = false;
        /** @brief Complete native field no_blend; scalar, text bound 512. */
        public string field_no_blend = "ON";

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
         * @details Invalid fields/bounds/semantics throw ArgumentException.
         */
        public static byte[] Encode(Ros2Rmi_msgsMsgMotionInstructionOptions value)
        {
            Wire.Writer wire = new Wire.Writer(MAX_WIRE_BYTES);
            WriteFields(wire, value);
            return wire.Finish();
        }

        /**
         * @brief Decode transactionally with exact extent and trailing-byte checks.
         * @param bytes Borrowed immutable complete canonical body.
         * @return Newly owned full value; failed decoding commits no caller storage.
         * @details Invalid wire, text, bounds or semantics throw ArgumentException.
         */
        public static Ros2Rmi_msgsMsgMotionInstructionOptions Decode(byte[] bytes)
        {
            if(bytes == null || bytes.Length < MIN_WIRE_BYTES || bytes.Length > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Invalid complete canonical extent");
            }
            Wire.Reader wire = new Wire.Reader(bytes);
            Ros2Rmi_msgsMsgMotionInstructionOptions value = ReadFields(wire);
            wire.Finish();
            return value;
        }

        /**
         * @brief Write this complete nested value within the enclosing aggregate bound.
         * @param wire Borrowed caller-owned finite writer.
         * @param value Borrowed stable complete value.
         * @return No value; invalid fields or aggregate bounds throw before publication.
         */
        internal static void WriteFields(Wire.Writer wire, Ros2Rmi_msgsMsgMotionInstructionOptions value)
        {
            if(value == null)
            {
                throw new ArgumentException("Null canonical record");
            }
            int start = wire.Position;
            wire.Bool(value.field_use_acc);
            wire.U8(value.field_acc);
            wire.Bool(value.field_use_offset_pr_number);
            wire.U16(value.field_offset_pr_number);
            wire.Bool(value.field_use_vision_pr_number);
            wire.U16(value.field_vision_pr_number);
            wire.Bool(value.field_use_wrist_joint);
            wire.String(value.field_wrist_joint, 512);
            wire.Bool(value.field_use_mrot);
            wire.String(value.field_mrot, 512);
            wire.Bool(value.field_use_lcb_type);
            wire.String(value.field_lcb_type, 512);
            wire.Bool(value.field_use_lcb_value);
            wire.U16(value.field_lcb_value);
            wire.Bool(value.field_use_port_type);
            wire.U8(value.field_port_type);
            wire.Bool(value.field_use_port_number);
            wire.U16(value.field_port_number);
            wire.Bool(value.field_use_port_value);
            wire.String(value.field_port_value, 512);
            wire.Bool(value.field_use_tool_offset_pr_number);
            wire.U16(value.field_tool_offset_pr_number);
            wire.Bool(value.field_use_alim);
            wire.I32(value.field_alim);
            wire.Bool(value.field_use_alim_reg);
            wire.U16(value.field_alim_reg);
            wire.Bool(value.field_use_no_blend);
            wire.String(value.field_no_blend, 512);
            if(wire.Position - start > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Nested aggregate exceeds registered wire bound");
            }
        }

        /**
         * @brief Read one complete nested record without exposing partial values.
         * @param wire Borrowed immutable bounded reader and its private cursor.
         * @return Newly owned complete record; malformed nested input throws.
         * @details The caller separately requires complete top-level consumption.
         */
        internal static Ros2Rmi_msgsMsgMotionInstructionOptions ReadFields(Wire.Reader wire)
        {
            int start = wire.Position;
            Ros2Rmi_msgsMsgMotionInstructionOptions value = new Ros2Rmi_msgsMsgMotionInstructionOptions();
            value.field_use_acc = wire.Bool();
            value.field_acc = wire.U8();
            value.field_use_offset_pr_number = wire.Bool();
            value.field_offset_pr_number = wire.U16();
            value.field_use_vision_pr_number = wire.Bool();
            value.field_vision_pr_number = wire.U16();
            value.field_use_wrist_joint = wire.Bool();
            value.field_wrist_joint = wire.String(512);
            value.field_use_mrot = wire.Bool();
            value.field_mrot = wire.String(512);
            value.field_use_lcb_type = wire.Bool();
            value.field_lcb_type = wire.String(512);
            value.field_use_lcb_value = wire.Bool();
            value.field_lcb_value = wire.U16();
            value.field_use_port_type = wire.Bool();
            value.field_port_type = wire.U8();
            value.field_use_port_number = wire.Bool();
            value.field_port_number = wire.U16();
            value.field_use_port_value = wire.Bool();
            value.field_port_value = wire.String(512);
            value.field_use_tool_offset_pr_number = wire.Bool();
            value.field_tool_offset_pr_number = wire.U16();
            value.field_use_alim = wire.Bool();
            value.field_alim = wire.I32();
            value.field_use_alim_reg = wire.Bool();
            value.field_alim_reg = wire.U16();
            value.field_use_no_blend = wire.Bool();
            value.field_no_blend = wire.String(512);
            if(wire.Position - start > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Nested aggregate exceeds registered wire bound");
            }
            return value;
        }
    }
}
