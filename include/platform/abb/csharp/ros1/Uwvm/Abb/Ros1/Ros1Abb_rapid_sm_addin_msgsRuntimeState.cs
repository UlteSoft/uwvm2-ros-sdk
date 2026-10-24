/**
 * @file Ros1Abb_rapid_sm_addin_msgsRuntimeState.cs
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
     * @brief Complete ROS 1 abb_rapid_sm_addin_msgs/RuntimeState value and canonical codec.
     * @details All fields, constants, defaults and nested capacities come from the
     * canonical bounded catalog. Instances own their strings/arrays/nested values.
     * Encode/decode perform no ROS operation and confer no authority. Native type
     * identity must still be independently qualified by the deployment registry.
     */
    public sealed class Ros1Abb_rapid_sm_addin_msgsRuntimeState
    {
        /** @brief Exact registered max wire bytes. */
        public const int MAX_WIRE_BYTES = 8372;
        /** @brief Exact registered min wire bytes. */
        public const int MIN_WIRE_BYTES = 20;
        /** @brief Original codec identity; empty native identity is unqualified. */
        public const string CODEC_IDENTITY = "UWVMROS1_50d7eab2eed3ce0b55160e85b44b4108d966290f6b8f126980ee452846f3660c";
        /** @brief Original source type; empty native identity is unqualified. */
        public const string SOURCE_TYPE = "abb_rapid_sm_addin_msgs/RuntimeState";
        /** @brief Original native identity; empty native identity is unqualified. */
        public const string NATIVE_IDENTITY = "";
        /** @brief Complete native field header; scalar, text bound 0. */
        public Ros1Std_msgsHeader field_header = new Ros1Std_msgsHeader();
        /** @brief Complete native field state_machines; sequence capacity 16, text bound 0. */
        public Ros1Abb_rapid_sm_addin_msgsStateMachineState[] field_state_machines = new Ros1Abb_rapid_sm_addin_msgsStateMachineState[0];

        /**
         * @brief Construct the complete original default value with owned storage.
         * @details Nested fixed arrays initialize every logical element; sequences
         * start empty. No native capability, pointer, or shared buffer is retained.
         */
        public Ros1Abb_rapid_sm_addin_msgsRuntimeState()
        {
        }

        /**
         * @brief Encode every field of one complete bounded value.
         * @param value Borrowed stable value; all referenced arrays remain caller-owned.
         * @return Newly owned complete canonical bytes, excluding unused capacity.
         * @details Invalid fields/bounds/semantics throw ArgumentException.
         */
        public static byte[] Encode(Ros1Abb_rapid_sm_addin_msgsRuntimeState value)
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
        public static Ros1Abb_rapid_sm_addin_msgsRuntimeState Decode(byte[] bytes)
        {
            if(bytes == null || bytes.Length < MIN_WIRE_BYTES || bytes.Length > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Invalid complete canonical extent");
            }
            Wire.Reader wire = new Wire.Reader(bytes);
            Ros1Abb_rapid_sm_addin_msgsRuntimeState value = ReadFields(wire);
            wire.Finish();
            return value;
        }

        /**
         * @brief Write this complete nested value within the enclosing aggregate bound.
         * @param wire Borrowed caller-owned finite writer.
         * @param value Borrowed stable complete value.
         * @return No value; invalid fields or aggregate bounds throw before publication.
         */
        internal static void WriteFields(Wire.Writer wire, Ros1Abb_rapid_sm_addin_msgsRuntimeState value)
        {
            if(value == null)
            {
                throw new ArgumentException("Null canonical record");
            }
            int start = wire.Position;
            Ros1Std_msgsHeader.WriteFields(wire, value.field_header);
            if(value.field_state_machines == null || value.field_state_machines.Length > 16)
            {
                throw new ArgumentException("Invalid state_machines extent");
            }
            wire.U32((uint)value.field_state_machines.Length);
            for(int index = 0; index < value.field_state_machines.Length; ++index)
            {
                Ros1Abb_rapid_sm_addin_msgsStateMachineState.WriteFields(wire, value.field_state_machines[index]);
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
        internal static Ros1Abb_rapid_sm_addin_msgsRuntimeState ReadFields(Wire.Reader wire)
        {
            int start = wire.Position;
            Ros1Abb_rapid_sm_addin_msgsRuntimeState value = new Ros1Abb_rapid_sm_addin_msgsRuntimeState();
            value.field_header = Ros1Std_msgsHeader.ReadFields(wire);
            value.field_state_machines = new Ros1Abb_rapid_sm_addin_msgsStateMachineState[wire.Count(16)];
            for(int index = 0; index < value.field_state_machines.Length; ++index)
            {
                value.field_state_machines[index] = Ros1Abb_rapid_sm_addin_msgsStateMachineState.ReadFields(wire);
            }
            if(wire.Position - start > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Nested aggregate exceeds registered wire bound");
            }
            return value;
        }
    }
}
