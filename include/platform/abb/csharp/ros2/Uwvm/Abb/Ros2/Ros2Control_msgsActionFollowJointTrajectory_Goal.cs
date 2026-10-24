/**
 * @file Ros2Control_msgsActionFollowJointTrajectory_Goal.cs
 * @brief Represent the complete original ABB ROS 2 canonical value catalog.
 * @details The caller owns every record and its finite dynamic backing storage. Codecs retain all
 * fields, original constants and native defaults; field units and frames follow the retained
 * definitions. Malformed or out-of-bound wire values are rejected. These are guest values rather than
 * native ROS objects; importing them grants no transport alias.
 */
using System;
using Uwvm.Ros;

namespace Uwvm.Abb.Ros2
{
    /**
     * @brief Complete ROS 2 control_msgs/action/FollowJointTrajectory_Goal value and canonical codec.
     * @details All fields, constants, defaults and nested capacities come from the
     * canonical bounded catalog. Instances own their strings/arrays/nested values.
     * Encode/decode perform no ROS operation and confer no authority. Native type
     * identity must still be independently qualified by the deployment registry.
     */
    public sealed class Ros2Control_msgsActionFollowJointTrajectory_Goal
    {
        /** @brief Exact registered max wire bytes. */
        public const int MAX_WIRE_BYTES = 20920;
        /** @brief Exact registered min wire bytes. */
        public const int MIN_WIRE_BYTES = 64;
        /** @brief Original codec identity; empty native identity is unqualified. */
        public const string CODEC_IDENTITY = "UWVMROS1_8945d5b29832f1190b0a4f8c4af4e82686c4b913413affe9c0945570b4fb1f16";
        /** @brief Original source type; empty native identity is unqualified. */
        public const string SOURCE_TYPE = "control_msgs/action/FollowJointTrajectory_Goal";
        /** @brief Original native identity; empty native identity is unqualified. */
        public const string NATIVE_IDENTITY = "";
        /** @brief Complete native field trajectory; scalar, text bound 0. */
        public Ros2Trajectory_msgsMsgJointTrajectory field_trajectory = new Ros2Trajectory_msgsMsgJointTrajectory();
        /** @brief Complete native field multi_dof_trajectory; scalar, text bound 0. */
        public Ros2Trajectory_msgsMsgMultiDOFJointTrajectory field_multi_dof_trajectory = new Ros2Trajectory_msgsMsgMultiDOFJointTrajectory();
        /** @brief Complete native field path_tolerance; sequence capacity 12, text bound 0. */
        public Ros2Control_msgsMsgJointTolerance[] field_path_tolerance = new Ros2Control_msgsMsgJointTolerance[0];
        /** @brief Complete native field component_path_tolerance; sequence capacity 12, text bound 0. */
        public Ros2Control_msgsMsgJointComponentTolerance[] field_component_path_tolerance = new Ros2Control_msgsMsgJointComponentTolerance[0];
        /** @brief Complete native field goal_tolerance; sequence capacity 12, text bound 0. */
        public Ros2Control_msgsMsgJointTolerance[] field_goal_tolerance = new Ros2Control_msgsMsgJointTolerance[0];
        /** @brief Complete native field component_goal_tolerance; sequence capacity 12, text bound 0. */
        public Ros2Control_msgsMsgJointComponentTolerance[] field_component_goal_tolerance = new Ros2Control_msgsMsgJointComponentTolerance[0];
        /** @brief Complete native field goal_time_tolerance; scalar, text bound 0. */
        public Ros2Builtin_interfacesMsgDuration field_goal_time_tolerance = new Ros2Builtin_interfacesMsgDuration();

        /**
         * @brief Construct the complete original default value with owned storage.
         * @details Nested fixed arrays initialize every logical element; sequences
         * start empty. No native capability, pointer, or shared buffer is retained.
         */
        public Ros2Control_msgsActionFollowJointTrajectory_Goal()
        {
        }

        /**
         * @brief Encode every field of one complete bounded value.
         * @param value Borrowed stable value; all referenced arrays remain caller-owned.
         * @return Newly owned complete canonical bytes, excluding unused capacity.
         * @details Invalid fields/bounds/semantics throw ArgumentException.
         */
        public static byte[] Encode(Ros2Control_msgsActionFollowJointTrajectory_Goal value)
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
        public static Ros2Control_msgsActionFollowJointTrajectory_Goal Decode(byte[] bytes)
        {
            if(bytes == null || bytes.Length < MIN_WIRE_BYTES || bytes.Length > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Invalid complete canonical extent");
            }
            Wire.Reader wire = new Wire.Reader(bytes);
            Ros2Control_msgsActionFollowJointTrajectory_Goal value = ReadFields(wire);
            wire.Finish();
            return value;
        }

        /**
         * @brief Write this complete nested value within the enclosing aggregate bound.
         * @param wire Borrowed caller-owned finite writer.
         * @param value Borrowed stable complete value.
         * @return No value; invalid fields or aggregate bounds throw before publication.
         */
        internal static void WriteFields(Wire.Writer wire, Ros2Control_msgsActionFollowJointTrajectory_Goal value)
        {
            if(value == null)
            {
                throw new ArgumentException("Null canonical record");
            }
            int start = wire.Position;
            Ros2Trajectory_msgsMsgJointTrajectory.WriteFields(wire, value.field_trajectory);
            Ros2Trajectory_msgsMsgMultiDOFJointTrajectory.WriteFields(wire, value.field_multi_dof_trajectory);
            if(value.field_path_tolerance == null || value.field_path_tolerance.Length > 12)
            {
                throw new ArgumentException("Invalid path_tolerance extent");
            }
            wire.U32((uint)value.field_path_tolerance.Length);
            for(int index = 0; index < value.field_path_tolerance.Length; ++index)
            {
                Ros2Control_msgsMsgJointTolerance.WriteFields(wire, value.field_path_tolerance[index]);
            }
            if(value.field_component_path_tolerance == null || value.field_component_path_tolerance.Length > 12)
            {
                throw new ArgumentException("Invalid component_path_tolerance extent");
            }
            wire.U32((uint)value.field_component_path_tolerance.Length);
            for(int index = 0; index < value.field_component_path_tolerance.Length; ++index)
            {
                Ros2Control_msgsMsgJointComponentTolerance.WriteFields(wire, value.field_component_path_tolerance[index]);
            }
            if(value.field_goal_tolerance == null || value.field_goal_tolerance.Length > 12)
            {
                throw new ArgumentException("Invalid goal_tolerance extent");
            }
            wire.U32((uint)value.field_goal_tolerance.Length);
            for(int index = 0; index < value.field_goal_tolerance.Length; ++index)
            {
                Ros2Control_msgsMsgJointTolerance.WriteFields(wire, value.field_goal_tolerance[index]);
            }
            if(value.field_component_goal_tolerance == null || value.field_component_goal_tolerance.Length > 12)
            {
                throw new ArgumentException("Invalid component_goal_tolerance extent");
            }
            wire.U32((uint)value.field_component_goal_tolerance.Length);
            for(int index = 0; index < value.field_component_goal_tolerance.Length; ++index)
            {
                Ros2Control_msgsMsgJointComponentTolerance.WriteFields(wire, value.field_component_goal_tolerance[index]);
            }
            Ros2Builtin_interfacesMsgDuration.WriteFields(wire, value.field_goal_time_tolerance);
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
        internal static Ros2Control_msgsActionFollowJointTrajectory_Goal ReadFields(Wire.Reader wire)
        {
            int start = wire.Position;
            Ros2Control_msgsActionFollowJointTrajectory_Goal value = new Ros2Control_msgsActionFollowJointTrajectory_Goal();
            value.field_trajectory = Ros2Trajectory_msgsMsgJointTrajectory.ReadFields(wire);
            value.field_multi_dof_trajectory = Ros2Trajectory_msgsMsgMultiDOFJointTrajectory.ReadFields(wire);
            value.field_path_tolerance = new Ros2Control_msgsMsgJointTolerance[wire.Count(12)];
            for(int index = 0; index < value.field_path_tolerance.Length; ++index)
            {
                value.field_path_tolerance[index] = Ros2Control_msgsMsgJointTolerance.ReadFields(wire);
            }
            value.field_component_path_tolerance = new Ros2Control_msgsMsgJointComponentTolerance[wire.Count(12)];
            for(int index = 0; index < value.field_component_path_tolerance.Length; ++index)
            {
                value.field_component_path_tolerance[index] = Ros2Control_msgsMsgJointComponentTolerance.ReadFields(wire);
            }
            value.field_goal_tolerance = new Ros2Control_msgsMsgJointTolerance[wire.Count(12)];
            for(int index = 0; index < value.field_goal_tolerance.Length; ++index)
            {
                value.field_goal_tolerance[index] = Ros2Control_msgsMsgJointTolerance.ReadFields(wire);
            }
            value.field_component_goal_tolerance = new Ros2Control_msgsMsgJointComponentTolerance[wire.Count(12)];
            for(int index = 0; index < value.field_component_goal_tolerance.Length; ++index)
            {
                value.field_component_goal_tolerance[index] = Ros2Control_msgsMsgJointComponentTolerance.ReadFields(wire);
            }
            value.field_goal_time_tolerance = Ros2Builtin_interfacesMsgDuration.ReadFields(wire);
            if(wire.Position - start > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Nested aggregate exceeds registered wire bound");
            }
            return value;
        }
    }
}
