using System;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Pal.Ros1.ros1_noetic_devel
{
    /**
     * @brief Complete ROS 1 pal_control_msgs/RigidBodyTrajectoryGoal value and canonical codec.
     * @details All fields, constants, defaults and nested capacities come from the
     * canonical bounded catalog. Instances own their strings/arrays/nested values.
     * Encode/decode perform no ROS operation and confer no authority. Native type
     * identity must still be independently qualified by the deployment registry.
     */
    public sealed class Ros1Pal_control_msgsRigidBodyTrajectoryGoal
    {
        /** @brief Exact registered max wire bytes. */
        public const int MAX_WIRE_BYTES = 789;
        /** @brief Exact registered min wire bytes. */
        public const int MIN_WIRE_BYTES = 21;
        /** @brief Original codec identity; empty native identity is unqualified. */
        public const string CODEC_IDENTITY =
            "UWVMROS1_03623f36fd48567680ea44e05f1e8fceb65f85bbbbfc9c76e19005deb2b2f599";
        /** @brief Original source type; empty native identity is unqualified. */
        public const string SOURCE_TYPE = "pal_control_msgs/RigidBodyTrajectoryGoal";
        /** @brief Original native identity; empty native identity is unqualified. */
        public const string NATIVE_IDENTITY = "";
        /** @brief Complete native field header; scalar, text bound 0. */
        public Ros1Std_msgsHeader field_header = new Ros1Std_msgsHeader();
        /** @brief Complete native field interpolation_type; scalar, text bound 0. */
        public sbyte field_interpolation_type = (sbyte)0;
        /** @brief Complete native field trajectory; sequence capacity 4, text bound 0. */
        public Ros1Pal_control_msgsRigidBodyTrajectoryPoint[] field_trajectory =
            new Ros1Pal_control_msgsRigidBodyTrajectoryPoint[0];

        /**
         * @brief Construct the complete original default value with owned storage.
         * @details Nested fixed arrays initialize every logical element; sequences
         * start empty. No native capability, pointer, or shared buffer is retained.
         */
        public Ros1Pal_control_msgsRigidBodyTrajectoryGoal()
        {
        }

        /**
         * @brief Encode every field of one complete bounded value.
         * @param value Borrowed stable value; all referenced arrays remain caller-owned.
         * @return Newly owned complete canonical bytes, excluding unused capacity.
         * @details Invalid fields/bounds/semantics throw ArgumentException.
         */
        public static byte[] Encode(Ros1Pal_control_msgsRigidBodyTrajectoryGoal value)
        {
            CatalogWire.Writer wire = new CatalogWire.Writer(MAX_WIRE_BYTES);
            WriteFields(wire, value);
            return wire.Finish();
        }

        /**
         * @brief Decode transactionally with exact extent and trailing-byte checks.
         * @param bytes Borrowed immutable complete canonical body.
         * @return Newly owned full value; failed decoding commits no caller storage.
         * @details Invalid wire, text, bounds or semantics throw ArgumentException.
         */
        public static Ros1Pal_control_msgsRigidBodyTrajectoryGoal Decode(byte[] bytes)
        {
            if (bytes == null || bytes.Length < MIN_WIRE_BYTES || bytes.Length > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Invalid complete canonical extent");
            }
            CatalogWire.Reader wire = new CatalogWire.Reader(bytes);
            Ros1Pal_control_msgsRigidBodyTrajectoryGoal value = ReadFields(wire);
            wire.Finish();
            return value;
        }

        /**
         * @brief Write this complete nested value within the enclosing aggregate bound.
         * @param wire Borrowed caller-owned finite writer.
         * @param value Borrowed stable complete value.
         * @return No value; invalid fields or aggregate bounds throw before publication.
         */
        internal static void WriteFields(CatalogWire.Writer wire, Ros1Pal_control_msgsRigidBodyTrajectoryGoal value)
        {
            if (value == null)
            {
                throw new ArgumentException("Null canonical record");
            }
            int start = wire.Position;
            Ros1Std_msgsHeader.WriteFields(wire, value.field_header);
            wire.I8(value.field_interpolation_type);
            if (value.field_trajectory == null || value.field_trajectory.Length > 4)
            {
                throw new ArgumentException("Invalid trajectory extent");
            }
            wire.U32((uint)value.field_trajectory.Length);
            for (int index = 0; index < value.field_trajectory.Length; ++index)
            {
                Ros1Pal_control_msgsRigidBodyTrajectoryPoint.WriteFields(wire, value.field_trajectory[index]);
            }
            if (wire.Position - start > MAX_WIRE_BYTES)
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
        internal static Ros1Pal_control_msgsRigidBodyTrajectoryGoal ReadFields(CatalogWire.Reader wire)
        {
            int start = wire.Position;
            Ros1Pal_control_msgsRigidBodyTrajectoryGoal value = new Ros1Pal_control_msgsRigidBodyTrajectoryGoal();
            value.field_header = Ros1Std_msgsHeader.ReadFields(wire);
            value.field_interpolation_type = wire.I8();
            value.field_trajectory = new Ros1Pal_control_msgsRigidBodyTrajectoryPoint[wire.Count(4)];
            for (int index = 0; index < value.field_trajectory.Length; ++index)
            {
                value.field_trajectory[index] = Ros1Pal_control_msgsRigidBodyTrajectoryPoint.ReadFields(wire);
            }
            if (wire.Position - start > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Nested aggregate exceeds registered wire bound");
            }
            return value;
        }
    }
}
