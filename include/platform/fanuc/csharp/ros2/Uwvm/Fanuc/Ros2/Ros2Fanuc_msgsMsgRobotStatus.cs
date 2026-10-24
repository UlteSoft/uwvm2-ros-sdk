/**
 * @file Ros2Fanuc_msgsMsgRobotStatus.cs
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
     * @brief Complete ROS 2 fanuc_msgs/msg/RobotStatus value and canonical codec.
     * @details All fields, constants, defaults and nested capacities come from the
     * canonical bounded catalog. Instances own their strings/arrays/nested values.
     * Encode/decode perform no ROS operation and confer no authority. Native type
     * identity must still be independently qualified by the deployment registry.
     */
    public sealed class Ros2Fanuc_msgsMsgRobotStatus
    {
        /** @brief Exact registered max wire bytes. */
        public const int MAX_WIRE_BYTES = 5;
        /** @brief Exact registered min wire bytes. */
        public const int MIN_WIRE_BYTES = 5;
        /** @brief Original codec identity; empty native identity is unqualified. */
        public const string CODEC_IDENTITY = "UWVMROS1_3f31ee3631dc6f4c90eb5ded6209ccebf0f4193ddfe5f5032bdd2bcd71f8cc31";
        /** @brief Original source type; empty native identity is unqualified. */
        public const string SOURCE_TYPE = "fanuc_msgs/msg/RobotStatus";
        /** @brief Original native identity; empty native identity is unqualified. */
        public const string NATIVE_IDENTITY = "";
        /** @brief Original source constant CONTACT_STOP_MODE_NONE; consumes no instance wire bytes. */
        public const byte CONST_CONTACT_STOP_MODE_NONE = (byte)0;
        /** @brief Original source constant CONTACT_STOP_MODE_SAFE; consumes no instance wire bytes. */
        public const byte CONST_CONTACT_STOP_MODE_SAFE = (byte)1;
        /** @brief Original source constant CONTACT_STOP_MODE_STOP; consumes no instance wire bytes. */
        public const byte CONST_CONTACT_STOP_MODE_STOP = (byte)2;
        /** @brief Original source constant CONTACT_STOP_MODE_DSBL; consumes no instance wire bytes. */
        public const byte CONST_CONTACT_STOP_MODE_DSBL = (byte)3;
        /** @brief Original source constant CONTACT_STOP_MODE_ESCP; consumes no instance wire bytes. */
        public const byte CONST_CONTACT_STOP_MODE_ESCP = (byte)4;
        /** @brief Complete native field in_error; scalar, text bound 0. */
        public bool field_in_error = false;
        /** @brief Complete native field tp_enabled; scalar, text bound 0. */
        public bool field_tp_enabled = false;
        /** @brief Complete native field e_stopped; scalar, text bound 0. */
        public bool field_e_stopped = false;
        /** @brief Complete native field motion_possible; scalar, text bound 0. */
        public bool field_motion_possible = false;
        /** @brief Complete native field contact_stop_mode; scalar, text bound 0. */
        public byte field_contact_stop_mode = (byte)0;

        /**
         * @brief Construct the complete original default value with owned storage.
         * @details Nested fixed arrays initialize every logical element; sequences
         * start empty. No native capability, pointer, or shared buffer is retained.
         */
        public Ros2Fanuc_msgsMsgRobotStatus()
        {
        }

        /**
         * @brief Encode every field of one complete bounded value.
         * @param value Borrowed stable value; all referenced arrays remain caller-owned.
         * @return Newly owned complete canonical bytes, excluding unused capacity.
         * @details Invalid fields/bounds/semantics throw ArgumentException.
         */
        public static byte[] Encode(Ros2Fanuc_msgsMsgRobotStatus value)
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
        public static Ros2Fanuc_msgsMsgRobotStatus Decode(byte[] bytes)
        {
            if(bytes == null || bytes.Length < MIN_WIRE_BYTES || bytes.Length > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Invalid complete canonical extent");
            }
            Wire.Reader wire = new Wire.Reader(bytes);
            Ros2Fanuc_msgsMsgRobotStatus value = ReadFields(wire);
            wire.Finish();
            return value;
        }

        /**
         * @brief Write this complete nested value within the enclosing aggregate bound.
         * @param wire Borrowed caller-owned finite writer.
         * @param value Borrowed stable complete value.
         * @return No value; invalid fields or aggregate bounds throw before publication.
         */
        internal static void WriteFields(Wire.Writer wire, Ros2Fanuc_msgsMsgRobotStatus value)
        {
            if(value == null)
            {
                throw new ArgumentException("Null canonical record");
            }
            int start = wire.Position;
            wire.Bool(value.field_in_error);
            wire.Bool(value.field_tp_enabled);
            wire.Bool(value.field_e_stopped);
            wire.Bool(value.field_motion_possible);
            wire.U8(value.field_contact_stop_mode);
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
        internal static Ros2Fanuc_msgsMsgRobotStatus ReadFields(Wire.Reader wire)
        {
            int start = wire.Position;
            Ros2Fanuc_msgsMsgRobotStatus value = new Ros2Fanuc_msgsMsgRobotStatus();
            value.field_in_error = wire.Bool();
            value.field_tp_enabled = wire.Bool();
            value.field_e_stopped = wire.Bool();
            value.field_motion_possible = wire.Bool();
            value.field_contact_stop_mode = wire.U8();
            if(wire.Position - start > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Nested aggregate exceeds registered wire bound");
            }
            return value;
        }
    }
}
