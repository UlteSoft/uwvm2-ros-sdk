/**
 * @file Ros2Trajectory_msgsMsgMultiDOFJointTrajectory.cs
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
     * @brief Complete ROS 2 trajectory_msgs/msg/MultiDOFJointTrajectory value and canonical codec.
     * @details All fields, constants, defaults and nested capacities come from the
     * canonical bounded catalog. Instances own their strings/arrays/nested values.
     * Encode/decode perform no ROS operation and confer no authority. Native type
     * identity must still be independently qualified by the deployment registry.
     */
    public sealed class Ros2Trajectory_msgsMsgMultiDOFJointTrajectory
    {
        /** @brief Exact registered max wire bytes. */
        public const int MAX_WIRE_BYTES = 1516;
        /** @brief Exact registered min wire bytes. */
        public const int MIN_WIRE_BYTES = 20;
        /** @brief Original codec identity; empty native identity is unqualified. */
        public const string CODEC_IDENTITY = "UWVMROS1_6ea66f146cdce31369361e521be484d2c39bca818cc4b2069e1209d250ec2401";
        /** @brief Original source type; empty native identity is unqualified. */
        public const string SOURCE_TYPE = "trajectory_msgs/msg/MultiDOFJointTrajectory";
        /** @brief Original native identity; empty native identity is unqualified. */
        public const string NATIVE_IDENTITY = "";
        /** @brief Complete native field header; scalar, text bound 0. */
        public Ros2Std_msgsMsgHeader field_header = new Ros2Std_msgsMsgHeader();
        /** @brief Complete native field joint_names; sequence capacity 2, text bound 64. */
        public string[] field_joint_names = new string[0];
        /** @brief Complete native field points; sequence capacity 4, text bound 0. */
        public Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint[] field_points = new Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint[0];

        /**
         * @brief Construct the complete original default value with owned storage.
         * @details Nested fixed arrays initialize every logical element; sequences
         * start empty. No native capability, pointer, or shared buffer is retained.
         */
        public Ros2Trajectory_msgsMsgMultiDOFJointTrajectory()
        {
        }

        /**
         * @brief Encode every field of one complete bounded value.
         * @param value Borrowed stable value; all referenced arrays remain caller-owned.
         * @return Newly owned complete canonical bytes, excluding unused capacity.
         * @details Invalid fields/bounds/semantics throw ArgumentException.
         */
        public static byte[] Encode(Ros2Trajectory_msgsMsgMultiDOFJointTrajectory value)
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
        public static Ros2Trajectory_msgsMsgMultiDOFJointTrajectory Decode(byte[] bytes)
        {
            if(bytes == null || bytes.Length < MIN_WIRE_BYTES || bytes.Length > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Invalid complete canonical extent");
            }
            Wire.Reader wire = new Wire.Reader(bytes);
            Ros2Trajectory_msgsMsgMultiDOFJointTrajectory value = ReadFields(wire);
            wire.Finish();
            return value;
        }

        /**
         * @brief Write this complete nested value within the enclosing aggregate bound.
         * @param wire Borrowed caller-owned finite writer.
         * @param value Borrowed stable complete value.
         * @return No value; invalid fields or aggregate bounds throw before publication.
         */
        internal static void WriteFields(Wire.Writer wire, Ros2Trajectory_msgsMsgMultiDOFJointTrajectory value)
        {
            if(value == null)
            {
                throw new ArgumentException("Null canonical record");
            }
            int start = wire.Position;
            Ros2Std_msgsMsgHeader.WriteFields(wire, value.field_header);
            if(value.field_joint_names == null || value.field_joint_names.Length > 2)
            {
                throw new ArgumentException("Invalid joint_names extent");
            }
            wire.U32((uint)value.field_joint_names.Length);
            for(int index = 0; index < value.field_joint_names.Length; ++index)
            {
                wire.String(value.field_joint_names[index], 64);
            }
            if(value.field_points == null || value.field_points.Length > 4)
            {
                throw new ArgumentException("Invalid points extent");
            }
            wire.U32((uint)value.field_points.Length);
            for(int index = 0; index < value.field_points.Length; ++index)
            {
                Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint.WriteFields(wire, value.field_points[index]);
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
        internal static Ros2Trajectory_msgsMsgMultiDOFJointTrajectory ReadFields(Wire.Reader wire)
        {
            int start = wire.Position;
            Ros2Trajectory_msgsMsgMultiDOFJointTrajectory value = new Ros2Trajectory_msgsMsgMultiDOFJointTrajectory();
            value.field_header = Ros2Std_msgsMsgHeader.ReadFields(wire);
            value.field_joint_names = new string[wire.Count(2)];
            for(int index = 0; index < value.field_joint_names.Length; ++index)
            {
                value.field_joint_names[index] = wire.String(64);
            }
            value.field_points = new Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint[wire.Count(4)];
            for(int index = 0; index < value.field_points.Length; ++index)
            {
                value.field_points[index] = Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint.ReadFields(wire);
            }
            if(wire.Position - start > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Nested aggregate exceeds registered wire bound");
            }
            return value;
        }
    }
}
