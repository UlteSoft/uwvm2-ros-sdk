using System;
using Uwvm.Ros;

namespace Uwvm.Robotis.Ros2.humble
{
    /**
     * @brief Complete ROS 2 nav_msgs/msg/Odometry value and canonical codec.
     * @details All fields, constants, defaults and nested capacities come from the
     * canonical bounded catalog. Instances own their strings/arrays/nested values.
     * Encode/decode perform no ROS operation and confer no authority. Native type
     * identity must still be independently qualified by the deployment registry.
     */
    public sealed class Ros2Nav_msgsMsgOdometry
    {
        /** @brief Exact registered max wire bytes. */
        public const int MAX_WIRE_BYTES = 1080;
        /** @brief Exact registered min wire bytes. */
        public const int MIN_WIRE_BYTES = 696;
        /** @brief Original codec identity; empty native identity is unqualified. */
        public const string CODEC_IDENTITY = "UWVMROS1_4eb9aa4edb3d288080deaae0326c26a75923e69d40c9b10219baf6d441ea8111";
        /** @brief Original source type; empty native identity is unqualified. */
        public const string SOURCE_TYPE = "nav_msgs/msg/Odometry";
        /** @brief Original native identity; empty native identity is unqualified. */
        public const string NATIVE_IDENTITY = "";
        /** @brief Complete native field header; scalar, text bound 0. */
        public Ros2Std_msgsMsgHeader field_header = new Ros2Std_msgsMsgHeader();
        /** @brief Complete native field child_frame_id; scalar, text bound 256. */
        public string field_child_frame_id = "";
        /** @brief Complete native field pose; scalar, text bound 0. */
        public Ros2Geometry_msgsMsgPoseWithCovariance field_pose = new Ros2Geometry_msgsMsgPoseWithCovariance();
        /** @brief Complete native field twist; scalar, text bound 0. */
        public Ros2Geometry_msgsMsgTwistWithCovariance field_twist = new Ros2Geometry_msgsMsgTwistWithCovariance();

        /**
         * @brief Construct the complete original default value with owned storage.
         * @details Nested fixed arrays initialize every logical element; sequences
         * start empty. No native capability, pointer, or shared buffer is retained.
         */
        public Ros2Nav_msgsMsgOdometry()
        {
        }

        /**
         * @brief Encode every field of one complete bounded value.
         * @param value Borrowed stable value; all referenced arrays remain caller-owned.
         * @return Newly owned complete canonical bytes, excluding unused capacity.
         * @details Invalid fields/bounds/semantics throw ArgumentException.
         */
        public static byte[] Encode(Ros2Nav_msgsMsgOdometry value)
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
        public static Ros2Nav_msgsMsgOdometry Decode(byte[] bytes)
        {
            if(bytes == null || bytes.Length < MIN_WIRE_BYTES || bytes.Length > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Invalid complete canonical extent");
            }
            Wire.Reader wire = new Wire.Reader(bytes);
            Ros2Nav_msgsMsgOdometry value = ReadFields(wire);
            wire.Finish();
            return value;
        }

        /**
         * @brief Write this complete nested value within the enclosing aggregate bound.
         * @param wire Borrowed caller-owned finite writer.
         * @param value Borrowed stable complete value.
         * @return No value; invalid fields or aggregate bounds throw before publication.
         */
        internal static void WriteFields(Wire.Writer wire, Ros2Nav_msgsMsgOdometry value)
        {
            if(value == null)
            {
                throw new ArgumentException("Null canonical record");
            }
            int start = wire.Position;
            Ros2Std_msgsMsgHeader.WriteFields(wire, value.field_header);
            wire.String(value.field_child_frame_id, 256);
            Ros2Geometry_msgsMsgPoseWithCovariance.WriteFields(wire, value.field_pose);
            Ros2Geometry_msgsMsgTwistWithCovariance.WriteFields(wire, value.field_twist);
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
        internal static Ros2Nav_msgsMsgOdometry ReadFields(Wire.Reader wire)
        {
            int start = wire.Position;
            Ros2Nav_msgsMsgOdometry value = new Ros2Nav_msgsMsgOdometry();
            value.field_header = Ros2Std_msgsMsgHeader.ReadFields(wire);
            value.field_child_frame_id = wire.String(256);
            value.field_pose = Ros2Geometry_msgsMsgPoseWithCovariance.ReadFields(wire);
            value.field_twist = Ros2Geometry_msgsMsgTwistWithCovariance.ReadFields(wire);
            if(wire.Position - start > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Nested aggregate exceeds registered wire bound");
            }
            return value;
        }
    }
}
