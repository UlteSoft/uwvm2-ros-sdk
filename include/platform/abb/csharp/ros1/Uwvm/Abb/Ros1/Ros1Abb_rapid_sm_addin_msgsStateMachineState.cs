/**
 * @file Ros1Abb_rapid_sm_addin_msgsStateMachineState.cs
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
     * @brief Complete ROS 1 abb_rapid_sm_addin_msgs/StateMachineState value and canonical codec.
     * @details All fields, constants, defaults and nested capacities come from the
     * canonical bounded catalog. Instances own their strings/arrays/nested values.
     * Encode/decode perform no ROS operation and confer no authority. Native type
     * identity must still be independently qualified by the deployment registry.
     */
    public sealed class Ros1Abb_rapid_sm_addin_msgsStateMachineState
    {
        /** @brief Exact registered max wire bytes. */
        public const int MAX_WIRE_BYTES = 518;
        /** @brief Exact registered min wire bytes. */
        public const int MIN_WIRE_BYTES = 6;
        /** @brief Original codec identity; empty native identity is unqualified. */
        public const string CODEC_IDENTITY = "UWVMROS1_9ef8cc3a0438ad892acc1a2f485039ca49abce6fedf40cc5d9b2fe03dd9490bb";
        /** @brief Original source type; empty native identity is unqualified. */
        public const string SOURCE_TYPE = "abb_rapid_sm_addin_msgs/StateMachineState";
        /** @brief Original native identity; empty native identity is unqualified. */
        public const string NATIVE_IDENTITY = "";
        /** @brief Original source constant SM_STATE_UNKNOWN; consumes no instance wire bytes. */
        public const byte CONST_SM_STATE_UNKNOWN = (byte)1;
        /** @brief Original source constant SM_STATE_IDLE; consumes no instance wire bytes. */
        public const byte CONST_SM_STATE_IDLE = (byte)2;
        /** @brief Original source constant SM_STATE_INITIALIZE; consumes no instance wire bytes. */
        public const byte CONST_SM_STATE_INITIALIZE = (byte)3;
        /** @brief Original source constant SM_STATE_RUN_RAPID_ROUTINE; consumes no instance wire bytes. */
        public const byte CONST_SM_STATE_RUN_RAPID_ROUTINE = (byte)4;
        /** @brief Original source constant SM_STATE_RUN_EGM_ROUTINE; consumes no instance wire bytes. */
        public const byte CONST_SM_STATE_RUN_EGM_ROUTINE = (byte)5;
        /** @brief Original source constant EGM_ACTION_UNKNOWN; consumes no instance wire bytes. */
        public const byte CONST_EGM_ACTION_UNKNOWN = (byte)1;
        /** @brief Original source constant EGM_ACTION_NONE; consumes no instance wire bytes. */
        public const byte CONST_EGM_ACTION_NONE = (byte)2;
        /** @brief Original source constant EGM_ACTION_RUN_JOINT; consumes no instance wire bytes. */
        public const byte CONST_EGM_ACTION_RUN_JOINT = (byte)3;
        /** @brief Original source constant EGM_ACTION_RUN_POSE; consumes no instance wire bytes. */
        public const byte CONST_EGM_ACTION_RUN_POSE = (byte)4;
        /** @brief Original source constant EGM_ACTION_STOP; consumes no instance wire bytes. */
        public const byte CONST_EGM_ACTION_STOP = (byte)5;
        /** @brief Original source constant EGM_ACTION_START_STREAM; consumes no instance wire bytes. */
        public const byte CONST_EGM_ACTION_START_STREAM = (byte)6;
        /** @brief Original source constant EGM_ACTION_STOP_STREAM; consumes no instance wire bytes. */
        public const byte CONST_EGM_ACTION_STOP_STREAM = (byte)7;
        /** @brief Complete native field rapid_task; scalar, text bound 512. */
        public string field_rapid_task = "";
        /** @brief Complete native field sm_state; scalar, text bound 0. */
        public byte field_sm_state = (byte)0;
        /** @brief Complete native field egm_action; scalar, text bound 0. */
        public byte field_egm_action = (byte)0;

        /**
         * @brief Construct the complete original default value with owned storage.
         * @details Nested fixed arrays initialize every logical element; sequences
         * start empty. No native capability, pointer, or shared buffer is retained.
         */
        public Ros1Abb_rapid_sm_addin_msgsStateMachineState()
        {
        }

        /**
         * @brief Encode every field of one complete bounded value.
         * @param value Borrowed stable value; all referenced arrays remain caller-owned.
         * @return Newly owned complete canonical bytes, excluding unused capacity.
         * @details Invalid fields/bounds/semantics throw ArgumentException.
         */
        public static byte[] Encode(Ros1Abb_rapid_sm_addin_msgsStateMachineState value)
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
        public static Ros1Abb_rapid_sm_addin_msgsStateMachineState Decode(byte[] bytes)
        {
            if(bytes == null || bytes.Length < MIN_WIRE_BYTES || bytes.Length > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Invalid complete canonical extent");
            }
            Wire.Reader wire = new Wire.Reader(bytes);
            Ros1Abb_rapid_sm_addin_msgsStateMachineState value = ReadFields(wire);
            wire.Finish();
            return value;
        }

        /**
         * @brief Write this complete nested value within the enclosing aggregate bound.
         * @param wire Borrowed caller-owned finite writer.
         * @param value Borrowed stable complete value.
         * @return No value; invalid fields or aggregate bounds throw before publication.
         */
        internal static void WriteFields(Wire.Writer wire, Ros1Abb_rapid_sm_addin_msgsStateMachineState value)
        {
            if(value == null)
            {
                throw new ArgumentException("Null canonical record");
            }
            int start = wire.Position;
            wire.String(value.field_rapid_task, 512);
            wire.U8(value.field_sm_state);
            wire.U8(value.field_egm_action);
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
        internal static Ros1Abb_rapid_sm_addin_msgsStateMachineState ReadFields(Wire.Reader wire)
        {
            int start = wire.Position;
            Ros1Abb_rapid_sm_addin_msgsStateMachineState value = new Ros1Abb_rapid_sm_addin_msgsStateMachineState();
            value.field_rapid_task = wire.String(512);
            value.field_sm_state = wire.U8();
            value.field_egm_action = wire.U8();
            if(wire.Position - start > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Nested aggregate exceeds registered wire bound");
            }
            return value;
        }
    }
}
