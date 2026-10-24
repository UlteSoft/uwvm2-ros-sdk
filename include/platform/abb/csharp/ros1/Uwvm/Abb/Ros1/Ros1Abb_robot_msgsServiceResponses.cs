/**
 * @file Ros1Abb_robot_msgsServiceResponses.cs
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
     * @brief Complete ROS 1 abb_robot_msgs/ServiceResponses value and canonical codec.
     * @details All fields, constants, defaults and nested capacities come from the
     * canonical bounded catalog. Instances own their strings/arrays/nested values.
     * Encode/decode perform no ROS operation and confer no authority. Native type
     * identity must still be independently qualified by the deployment registry.
     */
    public sealed class Ros1Abb_robot_msgsServiceResponses
    {
        /** @brief Exact registered max wire bytes. */
        public const int MAX_WIRE_BYTES = 0;
        /** @brief Exact registered min wire bytes. */
        public const int MIN_WIRE_BYTES = 0;
        /** @brief Original codec identity; empty native identity is unqualified. */
        public const string CODEC_IDENTITY = "UWVMROS1_f0a3c4b160bf0ca52dbbb4e26d2c8a7d3c6a40ac70787ba59cf181945e4276d4";
        /** @brief Original source type; empty native identity is unqualified. */
        public const string SOURCE_TYPE = "abb_robot_msgs/ServiceResponses";
        /** @brief Original native identity; empty native identity is unqualified. */
        public const string NATIVE_IDENTITY = "";
        /** @brief Original source constant SUCCESS; consumes no instance wire bytes. */
        public const string CONST_SUCCESS = "";
        /** @brief Original source constant RC_SUCCESS; consumes no instance wire bytes. */
        public const ushort CONST_RC_SUCCESS = (ushort)1;
        /** @brief Original source constant FAILED; consumes no instance wire bytes. */
        public const string CONST_FAILED = "Service failed (e.g. timeout or resource not found, see the DEBUG log for details)";
        /** @brief Original source constant RC_FAILED; consumes no instance wire bytes. */
        public const ushort CONST_RC_FAILED = (ushort)2;
        /** @brief Original source constant SERVER_IS_BUSY; consumes no instance wire bytes. */
        public const string CONST_SERVER_IS_BUSY = "Server is busy";
        /** @brief Original source constant RC_SERVER_IS_BUSY; consumes no instance wire bytes. */
        public const ushort CONST_RC_SERVER_IS_BUSY = (ushort)1001;
        /** @brief Original source constant EMPTY_FILENAME; consumes no instance wire bytes. */
        public const string CONST_EMPTY_FILENAME = "Filename is empty";
        /** @brief Original source constant RC_EMPTY_FILENAME; consumes no instance wire bytes. */
        public const ushort CONST_RC_EMPTY_FILENAME = (ushort)2001;
        /** @brief Original source constant EMPTY_SIGNAL_NAME; consumes no instance wire bytes. */
        public const string CONST_EMPTY_SIGNAL_NAME = "Signal name is empty";
        /** @brief Original source constant RC_EMPTY_SIGNAL_NAME; consumes no instance wire bytes. */
        public const ushort CONST_RC_EMPTY_SIGNAL_NAME = (ushort)2002;
        /** @brief Original source constant EMPTY_RAPID_TASK_NAME; consumes no instance wire bytes. */
        public const string CONST_EMPTY_RAPID_TASK_NAME = "RAPID task name is empty";
        /** @brief Original source constant RC_EMPTY_RAPID_TASK_NAME; consumes no instance wire bytes. */
        public const ushort CONST_RC_EMPTY_RAPID_TASK_NAME = (ushort)2003;
        /** @brief Original source constant EMPTY_RAPID_MODULE_NAME; consumes no instance wire bytes. */
        public const string CONST_EMPTY_RAPID_MODULE_NAME = "RAPID module name is empty";
        /** @brief Original source constant RC_EMPTY_RAPID_MODULE_NAME; consumes no instance wire bytes. */
        public const ushort CONST_RC_EMPTY_RAPID_MODULE_NAME = (ushort)2004;
        /** @brief Original source constant EMPTY_RAPID_SYMBOL_NAME; consumes no instance wire bytes. */
        public const string CONST_EMPTY_RAPID_SYMBOL_NAME = "RAPID symbol name is empty";
        /** @brief Original source constant RC_EMPTY_RAPID_SYMBOL_NAME; consumes no instance wire bytes. */
        public const ushort CONST_RC_EMPTY_RAPID_SYMBOL_NAME = (ushort)2005;
        /** @brief Original source constant NOT_IN_AUTO_MODE; consumes no instance wire bytes. */
        public const string CONST_NOT_IN_AUTO_MODE = "Robot controller is not in AUTO mode";
        /** @brief Original source constant RC_NOT_IN_AUTO_MODE; consumes no instance wire bytes. */
        public const ushort CONST_RC_NOT_IN_AUTO_MODE = (ushort)3001;
        /** @brief Original source constant MOTORS_ARE_OFF; consumes no instance wire bytes. */
        public const string CONST_MOTORS_ARE_OFF = "Motors are off";
        /** @brief Original source constant RC_MOTORS_ARE_OFF; consumes no instance wire bytes. */
        public const ushort CONST_RC_MOTORS_ARE_OFF = (ushort)3002;
        /** @brief Original source constant MOTORS_ARE_ON; consumes no instance wire bytes. */
        public const string CONST_MOTORS_ARE_ON = "Motors are on";
        /** @brief Original source constant RC_MOTORS_ARE_ON; consumes no instance wire bytes. */
        public const ushort CONST_RC_MOTORS_ARE_ON = (ushort)3003;
        /** @brief Original source constant RAPID_NOT_STOPPED; consumes no instance wire bytes. */
        public const string CONST_RAPID_NOT_STOPPED = "RAPID has not been stopped";
        /** @brief Original source constant RC_RAPID_NOT_STOPPED; consumes no instance wire bytes. */
        public const ushort CONST_RC_RAPID_NOT_STOPPED = (ushort)3004;
        /** @brief Original source constant RAPID_NOT_RUNNING; consumes no instance wire bytes. */
        public const string CONST_RAPID_NOT_RUNNING = "RAPID is not running";
        /** @brief Original source constant RC_RAPID_NOT_RUNNING; consumes no instance wire bytes. */
        public const ushort CONST_RC_RAPID_NOT_RUNNING = (ushort)3005;
        /** @brief Original source constant SM_RUNTIME_STATES_MISSING; consumes no instance wire bytes. */
        public const string CONST_SM_RUNTIME_STATES_MISSING = "No runtime states received for any StateMachine Add-In instance";
        /** @brief Original source constant RC_SM_RUNTIME_STATES_MISSING; consumes no instance wire bytes. */
        public const ushort CONST_RC_SM_RUNTIME_STATES_MISSING = (ushort)4001;
        /** @brief Original source constant SM_UNKNOWN_RAPID_TASK; consumes no instance wire bytes. */
        public const string CONST_SM_UNKNOWN_RAPID_TASK = "RAPID task not found among known StateMachine Add-In instances";
        /** @brief Original source constant RC_SM_UNKNOWN_RAPID_TASK; consumes no instance wire bytes. */
        public const ushort CONST_RC_SM_UNKNOWN_RAPID_TASK = (ushort)4002;
        /** @brief Original source constant SM_UNINITIALIZED; consumes no instance wire bytes. */
        public const string CONST_SM_UNINITIALIZED = "StateMachine Add-In instance has not been initialized";
        /** @brief Original source constant RC_SM_UNINITIALIZED; consumes no instance wire bytes. */
        public const ushort CONST_RC_SM_UNINITIALIZED = (ushort)4003;

        /**
         * @brief Construct the complete original default value with owned storage.
         * @details Nested fixed arrays initialize every logical element; sequences
         * start empty. No native capability, pointer, or shared buffer is retained.
         */
        public Ros1Abb_robot_msgsServiceResponses()
        {
        }

        /**
         * @brief Encode every field of one complete bounded value.
         * @param value Borrowed stable value; all referenced arrays remain caller-owned.
         * @return Newly owned complete canonical bytes, excluding unused capacity.
         * @details Invalid fields/bounds/semantics throw ArgumentException.
         */
        public static byte[] Encode(Ros1Abb_robot_msgsServiceResponses value)
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
        public static Ros1Abb_robot_msgsServiceResponses Decode(byte[] bytes)
        {
            if(bytes == null || bytes.Length < MIN_WIRE_BYTES || bytes.Length > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Invalid complete canonical extent");
            }
            Wire.Reader wire = new Wire.Reader(bytes);
            Ros1Abb_robot_msgsServiceResponses value = ReadFields(wire);
            wire.Finish();
            return value;
        }

        /**
         * @brief Write this complete nested value within the enclosing aggregate bound.
         * @param wire Borrowed caller-owned finite writer.
         * @param value Borrowed stable complete value.
         * @return No value; invalid fields or aggregate bounds throw before publication.
         */
        internal static void WriteFields(Wire.Writer wire, Ros1Abb_robot_msgsServiceResponses value)
        {
            if(value == null)
            {
                throw new ArgumentException("Null canonical record");
            }
            int start = wire.Position;
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
        internal static Ros1Abb_robot_msgsServiceResponses ReadFields(Wire.Reader wire)
        {
            int start = wire.Position;
            Ros1Abb_robot_msgsServiceResponses value = new Ros1Abb_robot_msgsServiceResponses();
            if(wire.Position - start > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Nested aggregate exceeds registered wire bound");
            }
            return value;
        }
    }
}
