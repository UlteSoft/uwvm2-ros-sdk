/**
 * @file Ros1Abb_robot_msgsRAPIDTaskState.cs
 * @brief Represent the complete original ABB ROS 1 canonical value catalog.
 * @details The caller owns every record and its finite dynamic backing storage. Codecs retain all
 * fields, original constants and native defaults; field units and frames follow the retained
 * definitions. Malformed or out-of-bound wire values are rejected. These are guest values rather than
 * native ROS objects; importing them grants no transport alias.
 */
using System;
using Uwvm.Ros;

namespace Uwvm.Abb.Ros1
{
    /**
     * @brief Complete ROS 1 abb_robot_msgs/RAPIDTaskState value and canonical codec.
     * @details All fields, constants, defaults and nested capacities come from the
     * canonical bounded catalog. Instances own their strings/arrays/nested values.
     * Encode/decode perform no ROS operation and confer no authority. Native type
     * identity must still be independently qualified by the deployment registry.
     */
    public sealed class Ros1Abb_robot_msgsRAPIDTaskState
    {
        /** @brief Exact registered max wire bytes. */
        public const int MAX_WIRE_BYTES = 71;
        /** @brief Exact registered min wire bytes. */
        public const int MIN_WIRE_BYTES = 7;
        /** @brief Original codec identity; empty native identity is unqualified. */
        public const string CODEC_IDENTITY = "UWVMROS1_ab1245cc352efa91cdcc8de801392857e25a4101a141439554b761525b31b947";
        /** @brief Original source type; empty native identity is unqualified. */
        public const string SOURCE_TYPE = "abb_robot_msgs/RAPIDTaskState";
        /** @brief Original native identity; empty native identity is unqualified. */
        public const string NATIVE_IDENTITY = "";
        /** @brief Original source constant EXECUTION_STATE_UNKNOWN; consumes no instance wire bytes. */
        public const byte CONST_EXECUTION_STATE_UNKNOWN = (byte)1;
        /** @brief Original source constant EXECUTION_STATE_READY; consumes no instance wire bytes. */
        public const byte CONST_EXECUTION_STATE_READY = (byte)2;
        /** @brief Original source constant EXECUTION_STATE_STOPPED; consumes no instance wire bytes. */
        public const byte CONST_EXECUTION_STATE_STOPPED = (byte)3;
        /** @brief Original source constant EXECUTION_STATE_STARTED; consumes no instance wire bytes. */
        public const byte CONST_EXECUTION_STATE_STARTED = (byte)4;
        /** @brief Original source constant EXECUTION_STATE_UNINITIALIZED; consumes no instance wire bytes. */
        public const byte CONST_EXECUTION_STATE_UNINITIALIZED = (byte)5;
        /** @brief Complete native field name; scalar, text bound 64. */
        public string field_name = "";
        /** @brief Complete native field activated; scalar, text bound 0. */
        public bool field_activated = false;
        /** @brief Complete native field execution_state; scalar, text bound 0. */
        public byte field_execution_state = (byte)0;
        /** @brief Complete native field motion_task; scalar, text bound 0. */
        public bool field_motion_task = false;

        /**
         * @brief Construct the complete original default value with owned storage.
         * @details Nested fixed arrays initialize every logical element; sequences
         * start empty. No native capability, pointer, or shared buffer is retained.
         */
        public Ros1Abb_robot_msgsRAPIDTaskState()
        {
        }

        /**
         * @brief Encode every field of one complete bounded value.
         * @param value Borrowed stable value; all referenced arrays remain caller-owned.
         * @return Newly owned complete canonical bytes, excluding unused capacity.
         * @details Invalid fields/bounds/semantics throw ArgumentException.
         */
        public static byte[] Encode(Ros1Abb_robot_msgsRAPIDTaskState value)
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
        public static Ros1Abb_robot_msgsRAPIDTaskState Decode(byte[] bytes)
        {
            if(bytes == null || bytes.Length < MIN_WIRE_BYTES || bytes.Length > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Invalid complete canonical extent");
            }
            Wire.Reader wire = new Wire.Reader(bytes);
            Ros1Abb_robot_msgsRAPIDTaskState value = ReadFields(wire);
            wire.Finish();
            return value;
        }

        /**
         * @brief Write this complete nested value within the enclosing aggregate bound.
         * @param wire Borrowed caller-owned finite writer.
         * @param value Borrowed stable complete value.
         * @return No value; invalid fields or aggregate bounds throw before publication.
         */
        internal static void WriteFields(Wire.Writer wire, Ros1Abb_robot_msgsRAPIDTaskState value)
        {
            if(value == null)
            {
                throw new ArgumentException("Null canonical record");
            }
            int start = wire.Position;
            wire.String(value.field_name, 64);
            wire.Bool(value.field_activated);
            wire.U8(value.field_execution_state);
            wire.Bool(value.field_motion_task);
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
        internal static Ros1Abb_robot_msgsRAPIDTaskState ReadFields(Wire.Reader wire)
        {
            int start = wire.Position;
            Ros1Abb_robot_msgsRAPIDTaskState value = new Ros1Abb_robot_msgsRAPIDTaskState();
            value.field_name = wire.String(64);
            value.field_activated = wire.Bool();
            value.field_execution_state = wire.U8();
            value.field_motion_task = wire.Bool();
            if(wire.Position - start > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Nested aggregate exceeds registered wire bound");
            }
            return value;
        }
    }
}
