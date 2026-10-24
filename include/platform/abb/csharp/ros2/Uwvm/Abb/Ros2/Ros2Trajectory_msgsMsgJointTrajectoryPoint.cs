/**
 * @file Ros2Trajectory_msgsMsgJointTrajectoryPoint.cs
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
     * @brief Complete ROS 2 trajectory_msgs/msg/JointTrajectoryPoint value and canonical codec.
     * @details All fields, constants, defaults and nested capacities come from the
     * canonical bounded catalog. Instances own their strings/arrays/nested values.
     * Encode/decode perform no ROS operation and confer no authority. Native type
     * identity must still be independently qualified by the deployment registry.
     */
    public sealed class Ros2Trajectory_msgsMsgJointTrajectoryPoint
    {
        /** @brief Exact registered max wire bytes. */
        public const int MAX_WIRE_BYTES = 408;
        /** @brief Exact registered min wire bytes. */
        public const int MIN_WIRE_BYTES = 24;
        /** @brief Original codec identity; empty native identity is unqualified. */
        public const string CODEC_IDENTITY = "UWVMROS1_4d55f494f060a9a3ff23bedd54da49f9e70e6b77acbdf911878afbf672cbadc5";
        /** @brief Original source type; empty native identity is unqualified. */
        public const string SOURCE_TYPE = "trajectory_msgs/msg/JointTrajectoryPoint";
        /** @brief Original native identity; empty native identity is unqualified. */
        public const string NATIVE_IDENTITY = "";
        /** @brief Complete native field positions; sequence capacity 12, text bound 0. */
        public double[] field_positions = new double[0];
        /** @brief Complete native field velocities; sequence capacity 12, text bound 0. */
        public double[] field_velocities = new double[0];
        /** @brief Complete native field accelerations; sequence capacity 12, text bound 0. */
        public double[] field_accelerations = new double[0];
        /** @brief Complete native field effort; sequence capacity 12, text bound 0. */
        public double[] field_effort = new double[0];
        /** @brief Complete native field time_from_start; scalar, text bound 0. */
        public Ros2Builtin_interfacesMsgDuration field_time_from_start = new Ros2Builtin_interfacesMsgDuration();

        /**
         * @brief Construct the complete original default value with owned storage.
         * @details Nested fixed arrays initialize every logical element; sequences
         * start empty. No native capability, pointer, or shared buffer is retained.
         */
        public Ros2Trajectory_msgsMsgJointTrajectoryPoint()
        {
        }

        /**
         * @brief Encode every field of one complete bounded value.
         * @param value Borrowed stable value; all referenced arrays remain caller-owned.
         * @return Newly owned complete canonical bytes, excluding unused capacity.
         * @details Invalid fields/bounds/semantics throw ArgumentException.
         */
        public static byte[] Encode(Ros2Trajectory_msgsMsgJointTrajectoryPoint value)
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
        public static Ros2Trajectory_msgsMsgJointTrajectoryPoint Decode(byte[] bytes)
        {
            if(bytes == null || bytes.Length < MIN_WIRE_BYTES || bytes.Length > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Invalid complete canonical extent");
            }
            Wire.Reader wire = new Wire.Reader(bytes);
            Ros2Trajectory_msgsMsgJointTrajectoryPoint value = ReadFields(wire);
            wire.Finish();
            return value;
        }

        /**
         * @brief Write this complete nested value within the enclosing aggregate bound.
         * @param wire Borrowed caller-owned finite writer.
         * @param value Borrowed stable complete value.
         * @return No value; invalid fields or aggregate bounds throw before publication.
         */
        internal static void WriteFields(Wire.Writer wire, Ros2Trajectory_msgsMsgJointTrajectoryPoint value)
        {
            if(value == null)
            {
                throw new ArgumentException("Null canonical record");
            }
            int start = wire.Position;
            if(value.field_positions == null || value.field_positions.Length > 12)
            {
                throw new ArgumentException("Invalid positions extent");
            }
            wire.U32((uint)value.field_positions.Length);
            for(int index = 0; index < value.field_positions.Length; ++index)
            {
                if(!double.IsFinite(value.field_positions[index]))
                {
                    throw new ArgumentException("Nonfinite positions");
                }
                wire.F64(value.field_positions[index]);
            }
            if(value.field_velocities == null || value.field_velocities.Length > 12)
            {
                throw new ArgumentException("Invalid velocities extent");
            }
            wire.U32((uint)value.field_velocities.Length);
            for(int index = 0; index < value.field_velocities.Length; ++index)
            {
                if(!double.IsFinite(value.field_velocities[index]))
                {
                    throw new ArgumentException("Nonfinite velocities");
                }
                wire.F64(value.field_velocities[index]);
            }
            if(value.field_accelerations == null || value.field_accelerations.Length > 12)
            {
                throw new ArgumentException("Invalid accelerations extent");
            }
            wire.U32((uint)value.field_accelerations.Length);
            for(int index = 0; index < value.field_accelerations.Length; ++index)
            {
                if(!double.IsFinite(value.field_accelerations[index]))
                {
                    throw new ArgumentException("Nonfinite accelerations");
                }
                wire.F64(value.field_accelerations[index]);
            }
            if(value.field_effort == null || value.field_effort.Length > 12)
            {
                throw new ArgumentException("Invalid effort extent");
            }
            wire.U32((uint)value.field_effort.Length);
            for(int index = 0; index < value.field_effort.Length; ++index)
            {
                if(!double.IsFinite(value.field_effort[index]))
                {
                    throw new ArgumentException("Nonfinite effort");
                }
                wire.F64(value.field_effort[index]);
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
        internal static Ros2Trajectory_msgsMsgJointTrajectoryPoint ReadFields(Wire.Reader wire)
        {
            int start = wire.Position;
            Ros2Trajectory_msgsMsgJointTrajectoryPoint value = new Ros2Trajectory_msgsMsgJointTrajectoryPoint();
            value.field_positions = new double[wire.Count(12)];
            for(int index = 0; index < value.field_positions.Length; ++index)
            {
                value.field_positions[index] = wire.F64();
                if(!double.IsFinite(value.field_positions[index]))
                {
                    throw new ArgumentException("Nonfinite positions");
                }
            }
            value.field_velocities = new double[wire.Count(12)];
            for(int index = 0; index < value.field_velocities.Length; ++index)
            {
                value.field_velocities[index] = wire.F64();
                if(!double.IsFinite(value.field_velocities[index]))
                {
                    throw new ArgumentException("Nonfinite velocities");
                }
            }
            value.field_accelerations = new double[wire.Count(12)];
            for(int index = 0; index < value.field_accelerations.Length; ++index)
            {
                value.field_accelerations[index] = wire.F64();
                if(!double.IsFinite(value.field_accelerations[index]))
                {
                    throw new ArgumentException("Nonfinite accelerations");
                }
            }
            value.field_effort = new double[wire.Count(12)];
            for(int index = 0; index < value.field_effort.Length; ++index)
            {
                value.field_effort[index] = wire.F64();
                if(!double.IsFinite(value.field_effort[index]))
                {
                    throw new ArgumentException("Nonfinite effort");
                }
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
