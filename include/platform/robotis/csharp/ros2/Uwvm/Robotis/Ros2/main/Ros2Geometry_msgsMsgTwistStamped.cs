using System;
using Uwvm.Ros;

namespace Uwvm.Robotis.Ros2.main
{
    /**
     * @brief Complete ROS 2 geometry_msgs/msg/TwistStamped value and canonical codec.
     * @details All fields, constants, defaults and nested capacities come from the
     * canonical bounded catalog. Instances own their strings/arrays/nested values.
     * Encode/decode perform no ROS operation and confer no authority. Native type
     * identity must still be independently qualified by the deployment registry.
     */
    public sealed class Ros2Geometry_msgsMsgTwistStamped
    {
        /** @brief Exact registered max wire bytes. */
        public const int MAX_WIRE_BYTES = 188;
        /** @brief Exact registered min wire bytes. */
        public const int MIN_WIRE_BYTES = 60;
        /** @brief Original codec identity; empty native identity is unqualified. */
        public const string CODEC_IDENTITY = "UWVMROS1_7448b885388ff3454de1a35b8c5c895ee58b791267b435df1e4cf7c1eee0f573";
        /** @brief Original source type; empty native identity is unqualified. */
        public const string SOURCE_TYPE = "geometry_msgs/msg/TwistStamped";
        /** @brief Original native identity; empty native identity is unqualified. */
        public const string NATIVE_IDENTITY = "";
        /** @brief Complete native field header; scalar, text bound 0. */
        public Ros2Std_msgsMsgHeader field_header = new Ros2Std_msgsMsgHeader();
        /** @brief Complete native field twist; scalar, text bound 0. */
        public Ros2Geometry_msgsMsgTwist field_twist = new Ros2Geometry_msgsMsgTwist();

        /**
         * @brief Construct the complete original default value with owned storage.
         * @details Nested fixed arrays initialize every logical element; sequences
         * start empty. No native capability, pointer, or shared buffer is retained.
         */
        public Ros2Geometry_msgsMsgTwistStamped()
        {
        }

        /**
         * @brief Encode every field of one complete bounded value.
         * @param value Borrowed stable value; all referenced arrays remain caller-owned.
         * @return Newly owned complete canonical bytes, excluding unused capacity.
         * @details Invalid fields/bounds/semantics throw ArgumentException.
         */
        public static byte[] Encode(Ros2Geometry_msgsMsgTwistStamped value)
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
        public static Ros2Geometry_msgsMsgTwistStamped Decode(byte[] bytes)
        {
            if(bytes == null || bytes.Length < MIN_WIRE_BYTES || bytes.Length > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Invalid complete canonical extent");
            }
            Wire.Reader wire = new Wire.Reader(bytes);
            Ros2Geometry_msgsMsgTwistStamped value = ReadFields(wire);
            wire.Finish();
            return value;
        }

        /**
         * @brief Write this complete nested value within the enclosing aggregate bound.
         * @param wire Borrowed caller-owned finite writer.
         * @param value Borrowed stable complete value.
         * @return No value; invalid fields or aggregate bounds throw before publication.
         */
        internal static void WriteFields(Wire.Writer wire, Ros2Geometry_msgsMsgTwistStamped value)
        {
            if(value == null)
            {
                throw new ArgumentException("Null canonical record");
            }
            int start = wire.Position;
            Ros2Std_msgsMsgHeader.WriteFields(wire, value.field_header);
            Ros2Geometry_msgsMsgTwist.WriteFields(wire, value.field_twist);
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
        internal static Ros2Geometry_msgsMsgTwistStamped ReadFields(Wire.Reader wire)
        {
            int start = wire.Position;
            Ros2Geometry_msgsMsgTwistStamped value = new Ros2Geometry_msgsMsgTwistStamped();
            value.field_header = Ros2Std_msgsMsgHeader.ReadFields(wire);
            value.field_twist = Ros2Geometry_msgsMsgTwist.ReadFields(wire);
            if(wire.Position - start > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Nested aggregate exceeds registered wire bound");
            }
            return value;
        }
    }
}
