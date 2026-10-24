/**
 * @file Ros2Motoros2_interfacesMsgQueueResultEnum.cs
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
     * @brief Complete ROS 2 motoros2_interfaces/msg/QueueResultEnum value and canonical codec.
     * @details All fields, constants, defaults and nested capacities come from the
     * canonical bounded catalog. Instances own their strings/arrays/nested values.
     * Encode/decode perform no ROS operation and confer no authority. Native type
     * identity must still be independently qualified by the deployment registry.
     */
    public sealed class Ros2Motoros2_interfacesMsgQueueResultEnum
    {
        /** @brief Exact registered max wire bytes. */
        public const int MAX_WIRE_BYTES = 2;
        /** @brief Exact registered min wire bytes. */
        public const int MIN_WIRE_BYTES = 2;
        /** @brief Original codec identity; empty native identity is unqualified. */
        public const string CODEC_IDENTITY = "UWVMROS1_146c6ce3f275b9e4a81622d73cca3d2298cf9f7bb95a783c0dea6279cb5b4f23";
        /** @brief Original source type; empty native identity is unqualified. */
        public const string SOURCE_TYPE = "motoros2_interfaces/msg/QueueResultEnum";
        /** @brief Original native identity; empty native identity is unqualified. */
        public const string NATIVE_IDENTITY = "";
        /** @brief Original source constant SUCCESS; consumes no instance wire bytes. */
        public const ushort CONST_SUCCESS = (ushort)1;
        /** @brief Original source constant SUCCESS_STR; consumes no instance wire bytes. */
        public const string CONST_SUCCESS_STR = "";
        /** @brief Original source constant WRONG_MODE; consumes no instance wire bytes. */
        public const ushort CONST_WRONG_MODE = (ushort)2;
        /** @brief Original source constant WRONG_MODE_STR; consumes no instance wire bytes. */
        public const string CONST_WRONG_MODE_STR = "Must call start_point_queue_mode service";
        /** @brief Original source constant INIT_FAILURE; consumes no instance wire bytes. */
        public const ushort CONST_INIT_FAILURE = (ushort)3;
        /** @brief Original source constant INIT_FAILURE_STR; consumes no instance wire bytes. */
        public const string CONST_INIT_FAILURE_STR = "Failed to initialize the streaming trajectory";
        /** @brief Original source constant BUSY; consumes no instance wire bytes. */
        public const ushort CONST_BUSY = (ushort)4;
        /** @brief Original source constant BUSY_STR; consumes no instance wire bytes. */
        public const string CONST_BUSY_STR = "Busy processing the previous trajectory point. Please resend the next point shortly";
        /** @brief Original source constant INVALID_JOINT_LIST; consumes no instance wire bytes. */
        public const ushort CONST_INVALID_JOINT_LIST = (ushort)5;
        /** @brief Original source constant INVALID_JOINT_LIST_STR; consumes no instance wire bytes. */
        public const string CONST_INVALID_JOINT_LIST_STR = "Point must contain data for all joints";
        /** @brief Original source constant UNABLE_TO_PROCESS_POINT; consumes no instance wire bytes. */
        public const ushort CONST_UNABLE_TO_PROCESS_POINT = (ushort)6;
        /** @brief Original source constant UNABLE_TO_PROCESS_POINT_STR; consumes no instance wire bytes. */
        public const string CONST_UNABLE_TO_PROCESS_POINT_STR = "Error while processing the trajectory point. Check debug log for more details";
        /** @brief Complete native field value; scalar, text bound 0. */
        public ushort field_value = (ushort)0;

        /**
         * @brief Construct the complete original default value with owned storage.
         * @details Nested fixed arrays initialize every logical element; sequences
         * start empty. No native capability, pointer, or shared buffer is retained.
         */
        public Ros2Motoros2_interfacesMsgQueueResultEnum()
        {
        }

        /**
         * @brief Encode every field of one complete bounded value.
         * @param value Borrowed stable value; all referenced arrays remain caller-owned.
         * @return Newly owned complete canonical bytes, excluding unused capacity.
         * @details Invalid fields/bounds/semantics throw ArgumentException.
         */
        public static byte[] Encode(Ros2Motoros2_interfacesMsgQueueResultEnum value)
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
        public static Ros2Motoros2_interfacesMsgQueueResultEnum Decode(byte[] bytes)
        {
            if(bytes == null || bytes.Length < MIN_WIRE_BYTES || bytes.Length > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Invalid complete canonical extent");
            }
            Wire.Reader wire = new Wire.Reader(bytes);
            Ros2Motoros2_interfacesMsgQueueResultEnum value = ReadFields(wire);
            wire.Finish();
            return value;
        }

        /**
         * @brief Write this complete nested value within the enclosing aggregate bound.
         * @param wire Borrowed caller-owned finite writer.
         * @param value Borrowed stable complete value.
         * @return No value; invalid fields or aggregate bounds throw before publication.
         */
        internal static void WriteFields(Wire.Writer wire, Ros2Motoros2_interfacesMsgQueueResultEnum value)
        {
            if(value == null)
            {
                throw new ArgumentException("Null canonical record");
            }
            int start = wire.Position;
            wire.U16(value.field_value);
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
        internal static Ros2Motoros2_interfacesMsgQueueResultEnum ReadFields(Wire.Reader wire)
        {
            int start = wire.Position;
            Ros2Motoros2_interfacesMsgQueueResultEnum value = new Ros2Motoros2_interfacesMsgQueueResultEnum();
            value.field_value = wire.U16();
            if(wire.Position - start > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Nested aggregate exceeds registered wire bound");
            }
            return value;
        }
    }
}
