using System;
using Uwvm.Ros;

namespace Uwvm.HelloRobot.Ros2.mobile_fjt_humble
{
    /**
     * @brief Complete ROS 2 control_msgs/action/FollowJointTrajectory_Result value and canonical codec.
     * @details All fields, constants, defaults and nested capacities come from the
     * canonical bounded catalog. Instances own their strings/arrays/nested values.
     * Encode/decode perform no ROS operation and confer no authority. Native type
     * identity must still be independently qualified by the deployment registry.
     */
    public sealed class Ros2Control_msgsActionFollowJointTrajectory_Result
    {
        /** @brief Exact registered max wire bytes. */
        public const int MAX_WIRE_BYTES = 264;
        /** @brief Exact registered min wire bytes. */
        public const int MIN_WIRE_BYTES = 8;
        /** @brief Original codec identity; empty native identity is unqualified. */
        public const string CODEC_IDENTITY = "UWVMROS1_df1e08076a5c725b865cc8807462d9ccf9577df11cbb71fcc0d280d77d0e5649";
        /** @brief Original source type; empty native identity is unqualified. */
        public const string SOURCE_TYPE = "control_msgs/action/FollowJointTrajectory_Result";
        /** @brief Original native identity; empty native identity is unqualified. */
        public const string NATIVE_IDENTITY = "";
        /** @brief Original source constant SUCCESSFUL; consumes no instance wire bytes. */
        public const int CONST_SUCCESSFUL = 0;
        /** @brief Original source constant INVALID_GOAL; consumes no instance wire bytes. */
        public const int CONST_INVALID_GOAL = -1;
        /** @brief Original source constant INVALID_JOINTS; consumes no instance wire bytes. */
        public const int CONST_INVALID_JOINTS = -2;
        /** @brief Original source constant OLD_HEADER_TIMESTAMP; consumes no instance wire bytes. */
        public const int CONST_OLD_HEADER_TIMESTAMP = -3;
        /** @brief Original source constant PATH_TOLERANCE_VIOLATED; consumes no instance wire bytes. */
        public const int CONST_PATH_TOLERANCE_VIOLATED = -4;
        /** @brief Original source constant GOAL_TOLERANCE_VIOLATED; consumes no instance wire bytes. */
        public const int CONST_GOAL_TOLERANCE_VIOLATED = -5;
        /** @brief Complete native field error_code; scalar, text bound 0. */
        public int field_error_code = 0;
        /** @brief Complete native field error_string; scalar, text bound 256. */
        public string field_error_string = "";

        /**
         * @brief Construct the complete original default value with owned storage.
         * @details Nested fixed arrays initialize every logical element; sequences
         * start empty. No native capability, pointer, or shared buffer is retained.
         */
        public Ros2Control_msgsActionFollowJointTrajectory_Result()
        {
        }

        /**
         * @brief Encode every field of one complete bounded value.
         * @param value Borrowed stable value; all referenced arrays remain caller-owned.
         * @return Newly owned complete canonical bytes, excluding unused capacity.
         * @details Invalid fields/bounds/semantics throw ArgumentException.
         */
        public static byte[] Encode(Ros2Control_msgsActionFollowJointTrajectory_Result value)
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
        public static Ros2Control_msgsActionFollowJointTrajectory_Result Decode(byte[] bytes)
        {
            if(bytes == null || bytes.Length < MIN_WIRE_BYTES || bytes.Length > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Invalid complete canonical extent");
            }
            Wire.Reader wire = new Wire.Reader(bytes);
            Ros2Control_msgsActionFollowJointTrajectory_Result value = ReadFields(wire);
            wire.Finish();
            return value;
        }

        /**
         * @brief Write this complete nested value within the enclosing aggregate bound.
         * @param wire Borrowed caller-owned finite writer.
         * @param value Borrowed stable complete value.
         * @return No value; invalid fields or aggregate bounds throw before publication.
         */
        internal static void WriteFields(Wire.Writer wire, Ros2Control_msgsActionFollowJointTrajectory_Result value)
        {
            if(value == null)
            {
                throw new ArgumentException("Null canonical record");
            }
            int start = wire.Position;
            wire.I32(value.field_error_code);
            wire.String(value.field_error_string, 256);
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
        internal static Ros2Control_msgsActionFollowJointTrajectory_Result ReadFields(Wire.Reader wire)
        {
            int start = wire.Position;
            Ros2Control_msgsActionFollowJointTrajectory_Result value = new Ros2Control_msgsActionFollowJointTrajectory_Result();
            value.field_error_code = wire.I32();
            value.field_error_string = wire.String(256);
            if(wire.Position - start > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Nested aggregate exceeds registered wire bound");
            }
            return value;
        }
    }
}
