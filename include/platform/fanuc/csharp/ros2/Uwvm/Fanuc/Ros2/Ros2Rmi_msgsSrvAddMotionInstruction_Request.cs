/**
 * @file Ros2Rmi_msgsSrvAddMotionInstruction_Request.cs
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
     * @brief Complete ROS 2 rmi_msgs/srv/AddMotionInstruction_Request value and canonical codec.
     * @details All fields, constants, defaults and nested capacities come from the
     * canonical bounded catalog. Instances own their strings/arrays/nested values.
     * Encode/decode perform no ROS operation and confer no authority. Native type
     * identity must still be independently qualified by the deployment registry.
     */
    public sealed class Ros2Rmi_msgsSrvAddMotionInstruction_Request
    {
        /** @brief Exact registered max wire bytes. */
        public const int MAX_WIRE_BYTES = 4014;
        /** @brief Exact registered min wire bytes. */
        public const int MIN_WIRE_BYTES = 238;
        /** @brief Original codec identity; empty native identity is unqualified. */
        public const string CODEC_IDENTITY = "UWVMROS1_3f22c49cb2d32e6a8f3954f3d3cbf0021c87e0363b1f2ded4ac20a97a5b59391";
        /** @brief Original source type; empty native identity is unqualified. */
        public const string SOURCE_TYPE = "rmi_msgs/srv/AddMotionInstruction_Request";
        /** @brief Original native identity; empty native identity is unqualified. */
        public const string NATIVE_IDENTITY = "";
        /** @brief Complete native field motion_type; scalar, text bound 0. */
        public Ros2Rmi_msgsMsgMotionType field_motion_type = new Ros2Rmi_msgsMsgMotionType();
        /** @brief Complete native field incremental; scalar, text bound 0. */
        public bool field_incremental = false;
        /** @brief Complete native field representation; scalar, text bound 0. */
        public Ros2Rmi_msgsMsgRepresentation field_representation = new Ros2Rmi_msgsMsgRepresentation();
        /** @brief Complete native field joint; scalar, text bound 0. */
        public Ros2Rmi_msgsMsgJoint field_joint = new Ros2Rmi_msgsMsgJoint();
        /** @brief Complete native field cartesian; scalar, text bound 0. */
        public Ros2Rmi_msgsMsgCartesian field_cartesian = new Ros2Rmi_msgsMsgCartesian();
        /** @brief Complete native field speed_type; scalar, text bound 0. */
        public Ros2Rmi_msgsMsgSpeedType field_speed_type = new Ros2Rmi_msgsMsgSpeedType();
        /** @brief Complete native field speed_value; scalar, text bound 0. */
        public ushort field_speed_value = (ushort)0;
        /** @brief Complete native field term_type; scalar, text bound 0. */
        public Ros2Rmi_msgsMsgTermType field_term_type = new Ros2Rmi_msgsMsgTermType();
        /** @brief Complete native field term_value; scalar, text bound 0. */
        public byte field_term_value = (byte)0;
        /** @brief Complete native field via_representation; scalar, text bound 0. */
        public Ros2Rmi_msgsMsgRepresentation field_via_representation = new Ros2Rmi_msgsMsgRepresentation();
        /** @brief Complete native field via_joint; scalar, text bound 0. */
        public Ros2Rmi_msgsMsgJoint field_via_joint = new Ros2Rmi_msgsMsgJoint();
        /** @brief Complete native field via_cartesian; scalar, text bound 0. */
        public Ros2Rmi_msgsMsgCartesian field_via_cartesian = new Ros2Rmi_msgsMsgCartesian();
        /** @brief Complete native field options; scalar, text bound 0. */
        public Ros2Rmi_msgsMsgMotionInstructionOptions field_options = new Ros2Rmi_msgsMsgMotionInstructionOptions();

        /**
         * @brief Construct the complete original default value with owned storage.
         * @details Nested fixed arrays initialize every logical element; sequences
         * start empty. No native capability, pointer, or shared buffer is retained.
         */
        public Ros2Rmi_msgsSrvAddMotionInstruction_Request()
        {
        }

        /**
         * @brief Encode every field of one complete bounded value.
         * @param value Borrowed stable value; all referenced arrays remain caller-owned.
         * @return Newly owned complete canonical bytes, excluding unused capacity.
         * @details Invalid fields/bounds/semantics throw ArgumentException.
         */
        public static byte[] Encode(Ros2Rmi_msgsSrvAddMotionInstruction_Request value)
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
        public static Ros2Rmi_msgsSrvAddMotionInstruction_Request Decode(byte[] bytes)
        {
            if(bytes == null || bytes.Length < MIN_WIRE_BYTES || bytes.Length > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Invalid complete canonical extent");
            }
            Wire.Reader wire = new Wire.Reader(bytes);
            Ros2Rmi_msgsSrvAddMotionInstruction_Request value = ReadFields(wire);
            wire.Finish();
            return value;
        }

        /**
         * @brief Write this complete nested value within the enclosing aggregate bound.
         * @param wire Borrowed caller-owned finite writer.
         * @param value Borrowed stable complete value.
         * @return No value; invalid fields or aggregate bounds throw before publication.
         */
        internal static void WriteFields(Wire.Writer wire, Ros2Rmi_msgsSrvAddMotionInstruction_Request value)
        {
            if(value == null)
            {
                throw new ArgumentException("Null canonical record");
            }
            int start = wire.Position;
            Ros2Rmi_msgsMsgMotionType.WriteFields(wire, value.field_motion_type);
            wire.Bool(value.field_incremental);
            Ros2Rmi_msgsMsgRepresentation.WriteFields(wire, value.field_representation);
            Ros2Rmi_msgsMsgJoint.WriteFields(wire, value.field_joint);
            Ros2Rmi_msgsMsgCartesian.WriteFields(wire, value.field_cartesian);
            Ros2Rmi_msgsMsgSpeedType.WriteFields(wire, value.field_speed_type);
            wire.U16(value.field_speed_value);
            Ros2Rmi_msgsMsgTermType.WriteFields(wire, value.field_term_type);
            wire.U8(value.field_term_value);
            Ros2Rmi_msgsMsgRepresentation.WriteFields(wire, value.field_via_representation);
            Ros2Rmi_msgsMsgJoint.WriteFields(wire, value.field_via_joint);
            Ros2Rmi_msgsMsgCartesian.WriteFields(wire, value.field_via_cartesian);
            Ros2Rmi_msgsMsgMotionInstructionOptions.WriteFields(wire, value.field_options);
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
        internal static Ros2Rmi_msgsSrvAddMotionInstruction_Request ReadFields(Wire.Reader wire)
        {
            int start = wire.Position;
            Ros2Rmi_msgsSrvAddMotionInstruction_Request value = new Ros2Rmi_msgsSrvAddMotionInstruction_Request();
            value.field_motion_type = Ros2Rmi_msgsMsgMotionType.ReadFields(wire);
            value.field_incremental = wire.Bool();
            value.field_representation = Ros2Rmi_msgsMsgRepresentation.ReadFields(wire);
            value.field_joint = Ros2Rmi_msgsMsgJoint.ReadFields(wire);
            value.field_cartesian = Ros2Rmi_msgsMsgCartesian.ReadFields(wire);
            value.field_speed_type = Ros2Rmi_msgsMsgSpeedType.ReadFields(wire);
            value.field_speed_value = wire.U16();
            value.field_term_type = Ros2Rmi_msgsMsgTermType.ReadFields(wire);
            value.field_term_value = wire.U8();
            value.field_via_representation = Ros2Rmi_msgsMsgRepresentation.ReadFields(wire);
            value.field_via_joint = Ros2Rmi_msgsMsgJoint.ReadFields(wire);
            value.field_via_cartesian = Ros2Rmi_msgsMsgCartesian.ReadFields(wire);
            value.field_options = Ros2Rmi_msgsMsgMotionInstructionOptions.ReadFields(wire);
            if(wire.Position - start > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Nested aggregate exceeds registered wire bound");
            }
            return value;
        }
    }
}
