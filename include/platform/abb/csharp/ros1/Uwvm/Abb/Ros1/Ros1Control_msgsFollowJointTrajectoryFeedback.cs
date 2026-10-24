/**
 * @file Ros1Control_msgsFollowJointTrajectoryFeedback.cs
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
     * @brief Complete ROS 1 control_msgs/FollowJointTrajectoryFeedback value and canonical codec.
     * @details All fields, constants, defaults and nested capacities come from the
     * canonical bounded catalog. Instances own their strings/arrays/nested values.
     * Encode/decode perform no ROS operation and confer no authority. Native type
     * identity must still be independently qualified by the deployment registry.
     */
    public sealed class Ros1Control_msgsFollowJointTrajectoryFeedback
    {
        /** @brief Exact registered max wire bytes. */
        public const int MAX_WIRE_BYTES = 2124;
        /** @brief Exact registered min wire bytes. */
        public const int MIN_WIRE_BYTES = 92;
        /** @brief Original codec identity; empty native identity is unqualified. */
        public const string CODEC_IDENTITY = "UWVMROS1_a1ad5a1f8a00b60f97d06209737993bd395d83d1a008705d65193b63933b62a8";
        /** @brief Original source type; empty native identity is unqualified. */
        public const string SOURCE_TYPE = "control_msgs/FollowJointTrajectoryFeedback";
        /** @brief Original native identity; empty native identity is unqualified. */
        public const string NATIVE_IDENTITY = "";
        /** @brief Complete native field header; scalar, text bound 0. */
        public Ros1Std_msgsHeader field_header = new Ros1Std_msgsHeader();
        /** @brief Complete native field joint_names; sequence capacity 12, text bound 64. */
        public string[] field_joint_names = new string[0];
        /** @brief Complete native field desired; scalar, text bound 0. */
        public Ros1Trajectory_msgsJointTrajectoryPoint field_desired = new Ros1Trajectory_msgsJointTrajectoryPoint();
        /** @brief Complete native field actual; scalar, text bound 0. */
        public Ros1Trajectory_msgsJointTrajectoryPoint field_actual = new Ros1Trajectory_msgsJointTrajectoryPoint();
        /** @brief Complete native field error; scalar, text bound 0. */
        public Ros1Trajectory_msgsJointTrajectoryPoint field_error = new Ros1Trajectory_msgsJointTrajectoryPoint();

        /**
         * @brief Construct the complete original default value with owned storage.
         * @details Nested fixed arrays initialize every logical element; sequences
         * start empty. No native capability, pointer, or shared buffer is retained.
         */
        public Ros1Control_msgsFollowJointTrajectoryFeedback()
        {
        }

        /**
         * @brief Encode every field of one complete bounded value.
         * @param value Borrowed stable value; all referenced arrays remain caller-owned.
         * @return Newly owned complete canonical bytes, excluding unused capacity.
         * @details Invalid fields/bounds/semantics throw ArgumentException.
         */
        public static byte[] Encode(Ros1Control_msgsFollowJointTrajectoryFeedback value)
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
        public static Ros1Control_msgsFollowJointTrajectoryFeedback Decode(byte[] bytes)
        {
            if(bytes == null || bytes.Length < MIN_WIRE_BYTES || bytes.Length > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Invalid complete canonical extent");
            }
            Wire.Reader wire = new Wire.Reader(bytes);
            Ros1Control_msgsFollowJointTrajectoryFeedback value = ReadFields(wire);
            wire.Finish();
            return value;
        }

        /**
         * @brief Write this complete nested value within the enclosing aggregate bound.
         * @param wire Borrowed caller-owned finite writer.
         * @param value Borrowed stable complete value.
         * @return No value; invalid fields or aggregate bounds throw before publication.
         */
        internal static void WriteFields(Wire.Writer wire, Ros1Control_msgsFollowJointTrajectoryFeedback value)
        {
            if(value == null)
            {
                throw new ArgumentException("Null canonical record");
            }
            int start = wire.Position;
            Ros1Std_msgsHeader.WriteFields(wire, value.field_header);
            if(value.field_joint_names == null || value.field_joint_names.Length > 12)
            {
                throw new ArgumentException("Invalid joint_names extent");
            }
            wire.U32((uint)value.field_joint_names.Length);
            for(int index = 0; index < value.field_joint_names.Length; ++index)
            {
                wire.String(value.field_joint_names[index], 64);
            }
            Ros1Trajectory_msgsJointTrajectoryPoint.WriteFields(wire, value.field_desired);
            Ros1Trajectory_msgsJointTrajectoryPoint.WriteFields(wire, value.field_actual);
            Ros1Trajectory_msgsJointTrajectoryPoint.WriteFields(wire, value.field_error);
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
        internal static Ros1Control_msgsFollowJointTrajectoryFeedback ReadFields(Wire.Reader wire)
        {
            int start = wire.Position;
            Ros1Control_msgsFollowJointTrajectoryFeedback value = new Ros1Control_msgsFollowJointTrajectoryFeedback();
            value.field_header = Ros1Std_msgsHeader.ReadFields(wire);
            value.field_joint_names = new string[wire.Count(12)];
            for(int index = 0; index < value.field_joint_names.Length; ++index)
            {
                value.field_joint_names[index] = wire.String(64);
            }
            value.field_desired = Ros1Trajectory_msgsJointTrajectoryPoint.ReadFields(wire);
            value.field_actual = Ros1Trajectory_msgsJointTrajectoryPoint.ReadFields(wire);
            value.field_error = Ros1Trajectory_msgsJointTrajectoryPoint.ReadFields(wire);
            if(wire.Position - start > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Nested aggregate exceeds registered wire bound");
            }
            return value;
        }
    }
}
