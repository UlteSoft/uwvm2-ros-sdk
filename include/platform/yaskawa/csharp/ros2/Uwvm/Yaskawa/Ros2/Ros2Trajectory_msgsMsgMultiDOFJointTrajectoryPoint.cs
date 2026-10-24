/**
 * @file Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint.cs
 * @brief Represent the complete original YASKAWA ROS 2 canonical value catalog.
 * @details The caller owns every record and its finite dynamic backing storage. Codecs retain all
 * fields, original constants and native defaults; field units and frames follow the retained
 * definitions. Malformed or out-of-bound wire values are rejected. These are guest values rather than
 * native ROS objects; importing them grants no transport alias.
 */
using System;
using Uwvm.Ros;

namespace Uwvm.Yaskawa.Ros2
{
    /**
     * @brief Complete ROS 2 trajectory_msgs/msg/MultiDOFJointTrajectoryPoint value and canonical codec.
     * @details All fields, constants, defaults and nested capacities come from the
     * canonical bounded catalog. Instances own their strings/arrays/nested values.
     * Encode/decode perform no ROS operation and confer no authority. Native type
     * identity must still be independently qualified by the deployment registry.
     */
    public sealed class Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint
    {
        /** @brief Exact registered max wire bytes. */
        public const int MAX_WIRE_BYTES = 324;
        /** @brief Exact registered min wire bytes. */
        public const int MIN_WIRE_BYTES = 20;
        /** @brief Original codec identity; empty native identity is unqualified. */
        public const string CODEC_IDENTITY = "UWVMROS1_6590b7ca1cdaa89da04b7a661266e2d4c6e3e2668dc90505a7c24d7be8a43242";
        /** @brief Original source type; empty native identity is unqualified. */
        public const string SOURCE_TYPE = "trajectory_msgs/msg/MultiDOFJointTrajectoryPoint";
        /** @brief Original native identity; empty native identity is unqualified. */
        public const string NATIVE_IDENTITY = "";
        /** @brief Complete native field transforms; sequence capacity 2, text bound 0. */
        public Ros2Geometry_msgsMsgTransform[] field_transforms = new Ros2Geometry_msgsMsgTransform[0];
        /** @brief Complete native field velocities; sequence capacity 2, text bound 0. */
        public Ros2Geometry_msgsMsgTwist[] field_velocities = new Ros2Geometry_msgsMsgTwist[0];
        /** @brief Complete native field accelerations; sequence capacity 2, text bound 0. */
        public Ros2Geometry_msgsMsgTwist[] field_accelerations = new Ros2Geometry_msgsMsgTwist[0];
        /** @brief Complete native field time_from_start; scalar, text bound 0. */
        public Ros2Builtin_interfacesMsgDuration field_time_from_start = new Ros2Builtin_interfacesMsgDuration();

        /**
         * @brief Construct the complete original default value with owned storage.
         * @details Nested fixed arrays initialize every logical element; sequences
         * start empty. No native capability, pointer, or shared buffer is retained.
         */
        public Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint()
        {
        }

        /**
         * @brief Encode every field of one complete bounded value.
         * @param value Borrowed stable value; all referenced arrays remain caller-owned.
         * @return Newly owned complete canonical bytes, excluding unused capacity.
         * @details Invalid fields/bounds/semantics throw ArgumentException.
         */
        public static byte[] Encode(Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint value)
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
        public static Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint Decode(byte[] bytes)
        {
            if(bytes == null || bytes.Length < MIN_WIRE_BYTES || bytes.Length > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Invalid complete canonical extent");
            }
            Wire.Reader wire = new Wire.Reader(bytes);
            Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint value = ReadFields(wire);
            wire.Finish();
            return value;
        }

        /**
         * @brief Write this complete nested value within the enclosing aggregate bound.
         * @param wire Borrowed caller-owned finite writer.
         * @param value Borrowed stable complete value.
         * @return No value; invalid fields or aggregate bounds throw before publication.
         */
        internal static void WriteFields(Wire.Writer wire, Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint value)
        {
            if(value == null)
            {
                throw new ArgumentException("Null canonical record");
            }
            int start = wire.Position;
            if(value.field_transforms == null || value.field_transforms.Length > 2)
            {
                throw new ArgumentException("Invalid transforms extent");
            }
            wire.U32((uint)value.field_transforms.Length);
            for(int index = 0; index < value.field_transforms.Length; ++index)
            {
                Ros2Geometry_msgsMsgTransform.WriteFields(wire, value.field_transforms[index]);
            }
            if(value.field_velocities == null || value.field_velocities.Length > 2)
            {
                throw new ArgumentException("Invalid velocities extent");
            }
            wire.U32((uint)value.field_velocities.Length);
            for(int index = 0; index < value.field_velocities.Length; ++index)
            {
                Ros2Geometry_msgsMsgTwist.WriteFields(wire, value.field_velocities[index]);
            }
            if(value.field_accelerations == null || value.field_accelerations.Length > 2)
            {
                throw new ArgumentException("Invalid accelerations extent");
            }
            wire.U32((uint)value.field_accelerations.Length);
            for(int index = 0; index < value.field_accelerations.Length; ++index)
            {
                Ros2Geometry_msgsMsgTwist.WriteFields(wire, value.field_accelerations[index]);
            }
            Ros2Builtin_interfacesMsgDuration.WriteFields(wire, value.field_time_from_start);
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
        internal static Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint ReadFields(Wire.Reader wire)
        {
            int start = wire.Position;
            Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint value = new Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint();
            value.field_transforms = new Ros2Geometry_msgsMsgTransform[wire.Count(2)];
            for(int index = 0; index < value.field_transforms.Length; ++index)
            {
                value.field_transforms[index] = Ros2Geometry_msgsMsgTransform.ReadFields(wire);
            }
            value.field_velocities = new Ros2Geometry_msgsMsgTwist[wire.Count(2)];
            for(int index = 0; index < value.field_velocities.Length; ++index)
            {
                value.field_velocities[index] = Ros2Geometry_msgsMsgTwist.ReadFields(wire);
            }
            value.field_accelerations = new Ros2Geometry_msgsMsgTwist[wire.Count(2)];
            for(int index = 0; index < value.field_accelerations.Length; ++index)
            {
                value.field_accelerations[index] = Ros2Geometry_msgsMsgTwist.ReadFields(wire);
            }
            value.field_time_from_start = Ros2Builtin_interfacesMsgDuration.ReadFields(wire);
            if(wire.Position - start > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Nested aggregate exceeds registered wire bound");
            }
            return value;
        }
    }
}
