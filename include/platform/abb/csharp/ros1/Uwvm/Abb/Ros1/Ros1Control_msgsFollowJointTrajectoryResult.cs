/**
 * @file Ros1Control_msgsFollowJointTrajectoryResult.cs
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
     * @brief Complete ROS 1 control_msgs/FollowJointTrajectoryResult value and canonical codec.
     * @details All fields, constants, defaults and nested capacities come from the
     * canonical bounded catalog. Instances own their strings/arrays/nested values.
     * Encode/decode perform no ROS operation and confer no authority. Native type
     * identity must still be independently qualified by the deployment registry.
     */
    public sealed class Ros1Control_msgsFollowJointTrajectoryResult
    {
        /** @brief Exact registered max wire bytes. */
        public const int MAX_WIRE_BYTES = 4104;
        /** @brief Exact registered min wire bytes. */
        public const int MIN_WIRE_BYTES = 8;
        /** @brief Original codec identity; empty native identity is unqualified. */
        public const string CODEC_IDENTITY = "UWVMROS1_71da832be83c08804668aa63576768bbe831f21f5f270cdc8d851b30d2fc4281";
        /** @brief Original source type; empty native identity is unqualified. */
        public const string SOURCE_TYPE = "control_msgs/FollowJointTrajectoryResult";
        /** @brief Original native identity; empty native identity is unqualified. */
        public const string NATIVE_IDENTITY = "";
        /** @brief Original source constant SUCCESSFUL; consumes no instance wire bytes. */
        public const int CONST_SUCCESSFUL = 0;
        /** @brief Original source constant INVALID_GOAL; consumes no instance wire bytes. */
        public const int CONST_INVALID_GOAL = -1;
        /** @brief Original source constant INVALID_JOINTS; consumes no instance wire bytes. */
        public const int CONST_INVALID_JOINTS = -2;
        /** @brief Original source constant OLD_HEADER_TIMESTAMP; consumes no instance wire bytes. */
        public const int CONST_OLD_HEADER_TIMESTAMP = -3;
        /** @brief Original source constant PATH_TOLERANCE_VIOLATED; consumes no instance wire bytes. */
        public const int CONST_PATH_TOLERANCE_VIOLATED = -4;
        /** @brief Original source constant GOAL_TOLERANCE_VIOLATED; consumes no instance wire bytes. */
        public const int CONST_GOAL_TOLERANCE_VIOLATED = -5;
        /** @brief Complete native field error_code; scalar, text bound 0. */
        public int field_error_code = 0;
        /** @brief Complete native field error_string; scalar, text bound 4096. */
        public string field_error_string = "";

        /**
         * @brief Construct the complete original default value with owned storage.
         * @details Nested fixed arrays initialize every logical element; sequences
         * start empty. No native capability, pointer, or shared buffer is retained.
         */
        public Ros1Control_msgsFollowJointTrajectoryResult()
        {
        }

        /**
         * @brief Encode every field of one complete bounded value.
         * @param value Borrowed stable value; all referenced arrays remain caller-owned.
         * @return Newly owned complete canonical bytes, excluding unused capacity.
         * @details Invalid fields/bounds/semantics throw ArgumentException.
         */
        public static byte[] Encode(Ros1Control_msgsFollowJointTrajectoryResult value)
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
        public static Ros1Control_msgsFollowJointTrajectoryResult Decode(byte[] bytes)
        {
            if(bytes == null || bytes.Length < MIN_WIRE_BYTES || bytes.Length > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Invalid complete canonical extent");
            }
            Wire.Reader wire = new Wire.Reader(bytes);
            Ros1Control_msgsFollowJointTrajectoryResult value = ReadFields(wire);
            wire.Finish();
            return value;
        }

        /**
         * @brief Write this complete nested value within the enclosing aggregate bound.
         * @param wire Borrowed caller-owned finite writer.
         * @param value Borrowed stable complete value.
         * @return No value; invalid fields or aggregate bounds throw before publication.
         */
        internal static void WriteFields(Wire.Writer wire, Ros1Control_msgsFollowJointTrajectoryResult value)
        {
            if(value == null)
            {
                throw new ArgumentException("Null canonical record");
            }
            int start = wire.Position;
            wire.I32(value.field_error_code);
            wire.String(value.field_error_string, 4096);
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
        internal static Ros1Control_msgsFollowJointTrajectoryResult ReadFields(Wire.Reader wire)
        {
            int start = wire.Position;
            Ros1Control_msgsFollowJointTrajectoryResult value = new Ros1Control_msgsFollowJointTrajectoryResult();
            value.field_error_code = wire.I32();
            value.field_error_string = wire.String(4096);
            if(wire.Position - start > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Nested aggregate exceeds registered wire bound");
            }
            return value;
        }
    }
}
