using System;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Pal.Ros1.ros1_humble_devel
{
    /**
     * @brief Complete ROS 1 pal_control_msgs/OperationalSpaceGoal value and canonical codec.
     * @details All fields, constants, defaults and nested capacities come from the
     * canonical bounded catalog. Instances own their strings/arrays/nested values.
     * Encode/decode perform no ROS operation and confer no authority. Native type
     * identity must still be independently qualified by the deployment registry.
     */
    public sealed class Ros1Pal_control_msgsOperationalSpaceGoal
    {
        /** @brief Exact registered max wire bytes. */
        public const int MAX_WIRE_BYTES = 306;
        /** @brief Exact registered min wire bytes. */
        public const int MIN_WIRE_BYTES = 178;
        /** @brief Original codec identity; empty native identity is unqualified. */
        public const string CODEC_IDENTITY =
            "UWVMROS1_c2a633eaaae880b4becdac4e48068d798b121a63ed50339ae5f8eb455416c752";
        /** @brief Original source type; empty native identity is unqualified. */
        public const string SOURCE_TYPE = "pal_control_msgs/OperationalSpaceGoal";
        /** @brief Original native identity; empty native identity is unqualified. */
        public const string NATIVE_IDENTITY = "";
        /** @brief Complete native field header; scalar, text bound 0. */
        public Ros1Std_msgsHeader field_header = new Ros1Std_msgsHeader();
        /** @brief Complete native field has_vel; scalar, text bound 0. */
        public bool field_has_vel = false;
        /** @brief Complete native field has_accel; scalar, text bound 0. */
        public bool field_has_accel = false;
        /** @brief Complete native field duration; scalar, text bound 0. */
        public Ros1Duration field_duration = new Ros1Duration();
        /** @brief Complete native field pose; scalar, text bound 0. */
        public Ros1Geometry_msgsPose field_pose = new Ros1Geometry_msgsPose();
        /** @brief Complete native field velocity; scalar, text bound 0. */
        public Ros1Geometry_msgsTwist field_velocity = new Ros1Geometry_msgsTwist();
        /** @brief Complete native field acceleration; scalar, text bound 0. */
        public Ros1Geometry_msgsAccel field_acceleration = new Ros1Geometry_msgsAccel();

        /**
         * @brief Construct the complete original default value with owned storage.
         * @details Nested fixed arrays initialize every logical element; sequences
         * start empty. No native capability, pointer, or shared buffer is retained.
         */
        public Ros1Pal_control_msgsOperationalSpaceGoal()
        {
        }

        /**
         * @brief Encode every field of one complete bounded value.
         * @param value Borrowed stable value; all referenced arrays remain caller-owned.
         * @return Newly owned complete canonical bytes, excluding unused capacity.
         * @details Invalid fields/bounds/semantics throw ArgumentException.
         */
        public static byte[] Encode(Ros1Pal_control_msgsOperationalSpaceGoal value)
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
        public static Ros1Pal_control_msgsOperationalSpaceGoal Decode(byte[] bytes)
        {
            if (bytes == null || bytes.Length < MIN_WIRE_BYTES || bytes.Length > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Invalid complete canonical extent");
            }
            CatalogWire.Reader wire = new CatalogWire.Reader(bytes);
            Ros1Pal_control_msgsOperationalSpaceGoal value = ReadFields(wire);
            wire.Finish();
            return value;
        }

        /**
         * @brief Write this complete nested value within the enclosing aggregate bound.
         * @param wire Borrowed caller-owned finite writer.
         * @param value Borrowed stable complete value.
         * @return No value; invalid fields or aggregate bounds throw before publication.
         */
        internal static void WriteFields(CatalogWire.Writer wire, Ros1Pal_control_msgsOperationalSpaceGoal value)
        {
            if (value == null)
            {
                throw new ArgumentException("Null canonical record");
            }
            int start = wire.Position;
            Ros1Std_msgsHeader.WriteFields(wire, value.field_header);
            wire.Bool(value.field_has_vel);
            wire.Bool(value.field_has_accel);
            Ros1Duration.WriteFields(wire, value.field_duration);
            Ros1Geometry_msgsPose.WriteFields(wire, value.field_pose);
            Ros1Geometry_msgsTwist.WriteFields(wire, value.field_velocity);
            Ros1Geometry_msgsAccel.WriteFields(wire, value.field_acceleration);
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
        internal static Ros1Pal_control_msgsOperationalSpaceGoal ReadFields(CatalogWire.Reader wire)
        {
            int start = wire.Position;
            Ros1Pal_control_msgsOperationalSpaceGoal value = new Ros1Pal_control_msgsOperationalSpaceGoal();
            value.field_header = Ros1Std_msgsHeader.ReadFields(wire);
            value.field_has_vel = wire.Bool();
            value.field_has_accel = wire.Bool();
            value.field_duration = Ros1Duration.ReadFields(wire);
            value.field_pose = Ros1Geometry_msgsPose.ReadFields(wire);
            value.field_velocity = Ros1Geometry_msgsTwist.ReadFields(wire);
            value.field_acceleration = Ros1Geometry_msgsAccel.ReadFields(wire);
            if (wire.Position - start > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Nested aggregate exceeds registered wire bound");
            }
            return value;
        }
    }
}
