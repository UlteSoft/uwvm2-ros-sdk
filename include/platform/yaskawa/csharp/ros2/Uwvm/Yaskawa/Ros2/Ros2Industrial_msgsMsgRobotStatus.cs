/**
 * @file Ros2Industrial_msgsMsgRobotStatus.cs
 * @brief Represent the complete original YASKAWA ROS 2 canonical value catalog.
 * @details The caller owns every record and its finite dynamic backing storage. Codecs retain all
 * fields, original constants and native defaults; field units and frames follow the retained
 * definitions. Malformed or out-of-bound wire values are rejected. These are guest values rather than
 * native ROS objects; importing them grants no transport alias.
 */
using System;
using Uwvm.Ros;

namespace Uwvm.Yaskawa.Ros2
{
    /**
     * @brief Complete ROS 2 industrial_msgs/msg/RobotStatus value and canonical codec.
     * @details All fields, constants, defaults and nested capacities come from the
     * canonical bounded catalog. Instances own their strings/arrays/nested values.
     * Encode/decode perform no ROS operation and confer no authority. Native type
     * identity must still be independently qualified by the deployment registry.
     */
    public sealed class Ros2Industrial_msgsMsgRobotStatus
    {
        /** @brief Exact registered max wire bytes. */
        public const int MAX_WIRE_BYTES = 150;
        /** @brief Exact registered min wire bytes. */
        public const int MIN_WIRE_BYTES = 22;
        /** @brief Original codec identity; empty native identity is unqualified. */
        public const string CODEC_IDENTITY = "UWVMROS1_1086f16ba5d614f3d87c3ab195240b5a0683ef490f2e92434e4ea3bdbe7554ba";
        /** @brief Original source type; empty native identity is unqualified. */
        public const string SOURCE_TYPE = "industrial_msgs/msg/RobotStatus";
        /** @brief Original native identity; empty native identity is unqualified. */
        public const string NATIVE_IDENTITY = "";
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
         * @details Invalid fields/bounds/semantics throw ArgumentException.
         */
        public static byte[] Encode(Ros2Industrial_msgsMsgRobotStatus value)
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
        public static Ros2Industrial_msgsMsgRobotStatus Decode(byte[] bytes)
        {
            if(bytes == null || bytes.Length < MIN_WIRE_BYTES || bytes.Length > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Invalid complete canonical extent");
            }
            Wire.Reader wire = new Wire.Reader(bytes);
            Ros2Industrial_msgsMsgRobotStatus value = ReadFields(wire);
            wire.Finish();
            return value;
        }

        /**
         * @brief Write this complete nested value within the enclosing aggregate bound.
         * @param wire Borrowed caller-owned finite writer.
         * @param value Borrowed stable complete value.
         * @return No value; invalid fields or aggregate bounds throw before publication.
         */
        internal static void WriteFields(Wire.Writer wire, Ros2Industrial_msgsMsgRobotStatus value)
        {
            if(value == null)
            {
                throw new ArgumentException("Null canonical record");
            }
            int start = wire.Position;
            Ros2Std_msgsMsgHeader.WriteFields(wire, value.field_header);
            Ros2Industrial_msgsMsgRobotMode.WriteFields(wire, value.field_mode);
            Ros2Industrial_msgsMsgTriState.WriteFields(wire, value.field_e_stopped);
            Ros2Industrial_msgsMsgTriState.WriteFields(wire, value.field_drives_powered);
            Ros2Industrial_msgsMsgTriState.WriteFields(wire, value.field_motion_possible);
            Ros2Industrial_msgsMsgTriState.WriteFields(wire, value.field_in_motion);
            Ros2Industrial_msgsMsgTriState.WriteFields(wire, value.field_in_error);
            if(value.field_error_codes == null || value.field_error_codes.Length > 16)
            {
                throw new ArgumentException("Invalid error_codes extent");
            }
            wire.U32((uint)value.field_error_codes.Length);
            for(int index = 0; index < value.field_error_codes.Length; ++index)
            {
                wire.I32(value.field_error_codes[index]);
            }
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
        internal static Ros2Industrial_msgsMsgRobotStatus ReadFields(Wire.Reader wire)
        {
            int start = wire.Position;
            Ros2Industrial_msgsMsgRobotStatus value = new Ros2Industrial_msgsMsgRobotStatus();
            value.field_header = Ros2Std_msgsMsgHeader.ReadFields(wire);
            value.field_mode = Ros2Industrial_msgsMsgRobotMode.ReadFields(wire);
            value.field_e_stopped = Ros2Industrial_msgsMsgTriState.ReadFields(wire);
            value.field_drives_powered = Ros2Industrial_msgsMsgTriState.ReadFields(wire);
            value.field_motion_possible = Ros2Industrial_msgsMsgTriState.ReadFields(wire);
            value.field_in_motion = Ros2Industrial_msgsMsgTriState.ReadFields(wire);
            value.field_in_error = Ros2Industrial_msgsMsgTriState.ReadFields(wire);
            value.field_error_codes = new int[wire.Count(16)];
            for(int index = 0; index < value.field_error_codes.Length; ++index)
            {
                value.field_error_codes[index] = wire.I32();
            }
            if(wire.Position - start > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Nested aggregate exceeds registered wire bound");
            }
            return value;
        }
    }
}
