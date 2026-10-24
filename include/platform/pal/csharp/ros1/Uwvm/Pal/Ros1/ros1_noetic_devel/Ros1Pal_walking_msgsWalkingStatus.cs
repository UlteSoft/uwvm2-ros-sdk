using System;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Pal.Ros1.ros1_noetic_devel
{
    /**
     * @brief Complete ROS 1 pal_walking_msgs/WalkingStatus value and canonical codec.
     * @details All fields, constants, defaults and nested capacities come from the
     * canonical bounded catalog. Instances own their strings/arrays/nested values.
     * Encode/decode perform no ROS operation and confer no authority. Native type
     * identity must still be independently qualified by the deployment registry.
     */
    public sealed class Ros1Pal_walking_msgsWalkingStatus
    {
        /** @brief Exact registered max wire bytes. */
        public const int MAX_WIRE_BYTES = 336;
        /** @brief Exact registered min wire bytes. */
        public const int MIN_WIRE_BYTES = 208;
        /** @brief Original codec identity; empty native identity is unqualified. */
        public const string CODEC_IDENTITY =
            "UWVMROS1_8831e9c68eeb3e065e2986f7671b2925425e07b18a48228e977f984fb9c09e02";
        /** @brief Original source type; empty native identity is unqualified. */
        public const string SOURCE_TYPE = "pal_walking_msgs/WalkingStatus";
        /** @brief Original native identity; empty native identity is unqualified. */
        public const string NATIVE_IDENTITY = "";
        /** @brief Complete native field header; scalar, text bound 0. */
        public Ros1Std_msgsHeader field_header = new Ros1Std_msgsHeader();
        /** @brief Complete native field hip_reference_pose; scalar, text bound 0. */
        public Ros1Geometry_msgsPose field_hip_reference_pose = new Ros1Geometry_msgsPose();
        /** @brief Complete native field foot_reference_pose; array capacity 2, text bound 0. */
        public Ros1Geometry_msgsPose[] field_foot_reference_pose = new Ros1Geometry_msgsPose[2];
        /** @brief Complete native field zmp_reference; scalar, text bound 0. */
        public Ros1Geometry_msgsPoint field_zmp_reference = new Ros1Geometry_msgsPoint();

        /**
         * @brief Construct the complete original default value with owned storage.
         * @details Nested fixed arrays initialize every logical element; sequences
         * start empty. No native capability, pointer, or shared buffer is retained.
         */
        public Ros1Pal_walking_msgsWalkingStatus()
        {
            for (int index = 0; index < 2; ++index)
            {
                field_foot_reference_pose[index] = new Ros1Geometry_msgsPose();
            }
        }

        /**
         * @brief Encode every field of one complete bounded value.
         * @param value Borrowed stable value; all referenced arrays remain caller-owned.
         * @return Newly owned complete canonical bytes, excluding unused capacity.
         * @details Invalid fields/bounds/semantics throw ArgumentException.
         */
        public static byte[] Encode(Ros1Pal_walking_msgsWalkingStatus value)
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
        public static Ros1Pal_walking_msgsWalkingStatus Decode(byte[] bytes)
        {
            if (bytes == null || bytes.Length < MIN_WIRE_BYTES || bytes.Length > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Invalid complete canonical extent");
            }
            CatalogWire.Reader wire = new CatalogWire.Reader(bytes);
            Ros1Pal_walking_msgsWalkingStatus value = ReadFields(wire);
            wire.Finish();
            return value;
        }

        /**
         * @brief Write this complete nested value within the enclosing aggregate bound.
         * @param wire Borrowed caller-owned finite writer.
         * @param value Borrowed stable complete value.
         * @return No value; invalid fields or aggregate bounds throw before publication.
         */
        internal static void WriteFields(CatalogWire.Writer wire, Ros1Pal_walking_msgsWalkingStatus value)
        {
            if (value == null)
            {
                throw new ArgumentException("Null canonical record");
            }
            int start = wire.Position;
            Ros1Std_msgsHeader.WriteFields(wire, value.field_header);
            Ros1Geometry_msgsPose.WriteFields(wire, value.field_hip_reference_pose);
            if (value.field_foot_reference_pose == null || value.field_foot_reference_pose.Length != 2)
            {
                throw new ArgumentException("Invalid foot_reference_pose extent");
            }
            for (int index = 0; index < value.field_foot_reference_pose.Length; ++index)
            {
                Ros1Geometry_msgsPose.WriteFields(wire, value.field_foot_reference_pose[index]);
            }
            Ros1Geometry_msgsPoint.WriteFields(wire, value.field_zmp_reference);
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
        internal static Ros1Pal_walking_msgsWalkingStatus ReadFields(CatalogWire.Reader wire)
        {
            int start = wire.Position;
            Ros1Pal_walking_msgsWalkingStatus value = new Ros1Pal_walking_msgsWalkingStatus();
            value.field_header = Ros1Std_msgsHeader.ReadFields(wire);
            value.field_hip_reference_pose = Ros1Geometry_msgsPose.ReadFields(wire);
            value.field_foot_reference_pose = new Ros1Geometry_msgsPose[2];
            for (int index = 0; index < value.field_foot_reference_pose.Length; ++index)
            {
                value.field_foot_reference_pose[index] = Ros1Geometry_msgsPose.ReadFields(wire);
            }
            value.field_zmp_reference = Ros1Geometry_msgsPoint.ReadFields(wire);
            if (wire.Position - start > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Nested aggregate exceeds registered wire bound");
            }
            return value;
        }
    }
}
