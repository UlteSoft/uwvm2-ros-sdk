/**
 * @file Ros1Control_msgsFollowJointTrajectoryGoal.cs
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
     * @brief Complete ROS 1 control_msgs/FollowJointTrajectoryGoal value and canonical codec.
     * @details All fields, constants, defaults and nested capacities come from the
     * canonical bounded catalog. Instances own their strings/arrays/nested values.
     * Encode/decode perform no ROS operation and confer no authority. Native type
     * identity must still be independently qualified by the deployment registry.
     */
    public sealed class Ros1Control_msgsFollowJointTrajectoryGoal
    {
        /** @brief Exact registered max wire bytes. */
        public const int MAX_WIRE_BYTES = 6392;
        /** @brief Exact registered min wire bytes. */
        public const int MIN_WIRE_BYTES = 40;
        /** @brief Original codec identity; empty native identity is unqualified. */
        public const string CODEC_IDENTITY = "UWVMROS1_e9fda6f9e732450f2cf1af046ceb67815e6e1a22105eda2fee38f8f470252d40";
        /** @brief Original source type; empty native identity is unqualified. */
        public const string SOURCE_TYPE = "control_msgs/FollowJointTrajectoryGoal";
        /** @brief Original native identity; empty native identity is unqualified. */
        public const string NATIVE_IDENTITY = "";
        /** @brief Complete native field trajectory; scalar, text bound 0. */
        public Ros1Trajectory_msgsJointTrajectory field_trajectory = new Ros1Trajectory_msgsJointTrajectory();
        /** @brief Complete native field path_tolerance; sequence capacity 12, text bound 0. */
        public Ros1Control_msgsJointTolerance[] field_path_tolerance = new Ros1Control_msgsJointTolerance[0];
        /** @brief Complete native field goal_tolerance; sequence capacity 12, text bound 0. */
        public Ros1Control_msgsJointTolerance[] field_goal_tolerance = new Ros1Control_msgsJointTolerance[0];
        /** @brief Complete native field goal_time_tolerance; scalar, text bound 0. */
        public Ros1Duration field_goal_time_tolerance = new Ros1Duration();

        /**
         * @brief Construct the complete original default value with owned storage.
         * @details Nested fixed arrays initialize every logical element; sequences
         * start empty. No native capability, pointer, or shared buffer is retained.
         */
        public Ros1Control_msgsFollowJointTrajectoryGoal()
        {
        }

        /**
         * @brief Encode every field of one complete bounded value.
         * @param value Borrowed stable value; all referenced arrays remain caller-owned.
         * @return Newly owned complete canonical bytes, excluding unused capacity.
         * @details Invalid fields/bounds/semantics throw ArgumentException.
         */
        public static byte[] Encode(Ros1Control_msgsFollowJointTrajectoryGoal value)
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
        public static Ros1Control_msgsFollowJointTrajectoryGoal Decode(byte[] bytes)
        {
            if(bytes == null || bytes.Length < MIN_WIRE_BYTES || bytes.Length > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Invalid complete canonical extent");
            }
            Wire.Reader wire = new Wire.Reader(bytes);
            Ros1Control_msgsFollowJointTrajectoryGoal value = ReadFields(wire);
            wire.Finish();
            return value;
        }

        /**
         * @brief Write this complete nested value within the enclosing aggregate bound.
         * @param wire Borrowed caller-owned finite writer.
         * @param value Borrowed stable complete value.
         * @return No value; invalid fields or aggregate bounds throw before publication.
         */
        internal static void WriteFields(Wire.Writer wire, Ros1Control_msgsFollowJointTrajectoryGoal value)
        {
            if(value == null)
            {
                throw new ArgumentException("Null canonical record");
            }
            int start = wire.Position;
            Ros1Trajectory_msgsJointTrajectory.WriteFields(wire, value.field_trajectory);
            if(value.field_path_tolerance == null || value.field_path_tolerance.Length > 12)
            {
                throw new ArgumentException("Invalid path_tolerance extent");
            }
            wire.U32((uint)value.field_path_tolerance.Length);
            for(int index = 0; index < value.field_path_tolerance.Length; ++index)
            {
                Ros1Control_msgsJointTolerance.WriteFields(wire, value.field_path_tolerance[index]);
            }
            if(value.field_goal_tolerance == null || value.field_goal_tolerance.Length > 12)
            {
                throw new ArgumentException("Invalid goal_tolerance extent");
            }
            wire.U32((uint)value.field_goal_tolerance.Length);
            for(int index = 0; index < value.field_goal_tolerance.Length; ++index)
            {
                Ros1Control_msgsJointTolerance.WriteFields(wire, value.field_goal_tolerance[index]);
            }
            Ros1Duration.WriteFields(wire, value.field_goal_time_tolerance);
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
        internal static Ros1Control_msgsFollowJointTrajectoryGoal ReadFields(Wire.Reader wire)
        {
            int start = wire.Position;
            Ros1Control_msgsFollowJointTrajectoryGoal value = new Ros1Control_msgsFollowJointTrajectoryGoal();
            value.field_trajectory = Ros1Trajectory_msgsJointTrajectory.ReadFields(wire);
            value.field_path_tolerance = new Ros1Control_msgsJointTolerance[wire.Count(12)];
            for(int index = 0; index < value.field_path_tolerance.Length; ++index)
            {
                value.field_path_tolerance[index] = Ros1Control_msgsJointTolerance.ReadFields(wire);
            }
            value.field_goal_tolerance = new Ros1Control_msgsJointTolerance[wire.Count(12)];
            for(int index = 0; index < value.field_goal_tolerance.Length; ++index)
            {
                value.field_goal_tolerance[index] = Ros1Control_msgsJointTolerance.ReadFields(wire);
            }
            value.field_goal_time_tolerance = Ros1Duration.ReadFields(wire);
            if(wire.Position - start > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Nested aggregate exceeds registered wire bound");
            }
            return value;
        }
    }
}
