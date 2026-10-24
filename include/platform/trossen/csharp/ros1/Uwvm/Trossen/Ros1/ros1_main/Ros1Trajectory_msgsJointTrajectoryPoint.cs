using System;
using Uwvm.Ros;

namespace Uwvm.Trossen.Ros1.ros1_main
{
    /**
     * @brief Complete ROS 1 trajectory_msgs/JointTrajectoryPoint value and canonical codec.
     * @details All fields, constants, defaults and nested capacities come from the
     * canonical bounded catalog. Instances own their strings/arrays/nested values.
     * Encode/decode perform no ROS operation and confer no authority. Native type
     * identity must still be independently qualified by the deployment registry.
     */
    public sealed class Ros1Trajectory_msgsJointTrajectoryPoint
    {
        /** @brief Exact registered max wire bytes. */
        public const int MAX_WIRE_BYTES = 536;
        /** @brief Exact registered min wire bytes. */
        public const int MIN_WIRE_BYTES = 24;
        /** @brief Original codec identity; empty native identity is unqualified. */
        public const string CODEC_IDENTITY = "UWVMROS1_e93c84b6980a95c9695bd13be2bf9ebc4b2f400fc8a39909578e59f3dd03db81";
        /** @brief Original source type; empty native identity is unqualified. */
        public const string SOURCE_TYPE = "trajectory_msgs/JointTrajectoryPoint";
        /** @brief Original native identity; empty native identity is unqualified. */
        public const string NATIVE_IDENTITY = "";
        /** @brief Complete native field positions; sequence capacity 16, text bound 0. */
        public double[] field_positions = new double[0];
        /** @brief Complete native field velocities; sequence capacity 16, text bound 0. */
        public double[] field_velocities = new double[0];
        /** @brief Complete native field accelerations; sequence capacity 16, text bound 0. */
        public double[] field_accelerations = new double[0];
        /** @brief Complete native field effort; sequence capacity 16, text bound 0. */
        public double[] field_effort = new double[0];
        /** @brief Complete native field time_from_start; scalar, text bound 0. */
        public Ros1Duration field_time_from_start = new Ros1Duration();

        /**
         * @brief Construct the complete original default value with owned storage.
         * @details Nested fixed arrays initialize every logical element; sequences
         * start empty. No native capability, pointer, or shared buffer is retained.
         */
        public Ros1Trajectory_msgsJointTrajectoryPoint()
        {
        }

        /**
         * @brief Encode every field of one complete bounded value.
         * @param value Borrowed stable value; all referenced arrays remain caller-owned.
         * @return Newly owned complete canonical bytes, excluding unused capacity.
         * @details Invalid fields/bounds/semantics throw ArgumentException.
         */
        public static byte[] Encode(Ros1Trajectory_msgsJointTrajectoryPoint value)
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
        public static Ros1Trajectory_msgsJointTrajectoryPoint Decode(byte[] bytes)
        {
            if(bytes == null || bytes.Length < MIN_WIRE_BYTES || bytes.Length > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Invalid complete canonical extent");
            }
            Wire.Reader wire = new Wire.Reader(bytes);
            Ros1Trajectory_msgsJointTrajectoryPoint value = ReadFields(wire);
            wire.Finish();
            return value;
        }

        /**
         * @brief Write this complete nested value within the enclosing aggregate bound.
         * @param wire Borrowed caller-owned finite writer.
         * @param value Borrowed stable complete value.
         * @return No value; invalid fields or aggregate bounds throw before publication.
         */
        internal static void WriteFields(Wire.Writer wire, Ros1Trajectory_msgsJointTrajectoryPoint value)
        {
            if(value == null)
            {
                throw new ArgumentException("Null canonical record");
            }
            int start = wire.Position;
            if(value.field_positions == null || value.field_positions.Length > 16)
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
            if(value.field_velocities == null || value.field_velocities.Length > 16)
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
            if(value.field_accelerations == null || value.field_accelerations.Length > 16)
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
            if(value.field_effort == null || value.field_effort.Length > 16)
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
            Ros1Duration.WriteFields(wire, value.field_time_from_start);
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
        internal static Ros1Trajectory_msgsJointTrajectoryPoint ReadFields(Wire.Reader wire)
        {
            int start = wire.Position;
            Ros1Trajectory_msgsJointTrajectoryPoint value = new Ros1Trajectory_msgsJointTrajectoryPoint();
            value.field_positions = new double[wire.Count(16)];
            for(int index = 0; index < value.field_positions.Length; ++index)
            {
                value.field_positions[index] = wire.F64();
                if(!double.IsFinite(value.field_positions[index]))
                {
                    throw new ArgumentException("Nonfinite positions");
                }
            }
            value.field_velocities = new double[wire.Count(16)];
            for(int index = 0; index < value.field_velocities.Length; ++index)
            {
                value.field_velocities[index] = wire.F64();
                if(!double.IsFinite(value.field_velocities[index]))
                {
                    throw new ArgumentException("Nonfinite velocities");
                }
            }
            value.field_accelerations = new double[wire.Count(16)];
            for(int index = 0; index < value.field_accelerations.Length; ++index)
            {
                value.field_accelerations[index] = wire.F64();
                if(!double.IsFinite(value.field_accelerations[index]))
                {
                    throw new ArgumentException("Nonfinite accelerations");
                }
            }
            value.field_effort = new double[wire.Count(16)];
            for(int index = 0; index < value.field_effort.Length; ++index)
            {
                value.field_effort[index] = wire.F64();
                if(!double.IsFinite(value.field_effort[index]))
                {
                    throw new ArgumentException("Nonfinite effort");
                }
            }
            value.field_time_from_start = Ros1Duration.ReadFields(wire);
            if(wire.Position - start > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Nested aggregate exceeds registered wire bound");
            }
            return value;
        }
    }
}
