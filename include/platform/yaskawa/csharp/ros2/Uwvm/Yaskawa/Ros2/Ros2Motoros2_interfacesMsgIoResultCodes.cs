/**
 * @file Ros2Motoros2_interfacesMsgIoResultCodes.cs
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
     * @brief Complete ROS 2 motoros2_interfaces/msg/IoResultCodes value and canonical codec.
     * @details All fields, constants, defaults and nested capacities come from the
     * canonical bounded catalog. Instances own their strings/arrays/nested values.
     * Encode/decode perform no ROS operation and confer no authority. Native type
     * identity must still be independently qualified by the deployment registry.
     */
    public sealed class Ros2Motoros2_interfacesMsgIoResultCodes
    {
        /** @brief Exact registered max wire bytes. */
        public const int MAX_WIRE_BYTES = 0;
        /** @brief Exact registered min wire bytes. */
        public const int MIN_WIRE_BYTES = 0;
        /** @brief Original codec identity; empty native identity is unqualified. */
        public const string CODEC_IDENTITY = "UWVMROS1_ef9ab829ae79d4e58336a56259b6beb2ad26a8b1b4070013d9004ac4ab269915";
        /** @brief Original source type; empty native identity is unqualified. */
        public const string SOURCE_TYPE = "motoros2_interfaces/msg/IoResultCodes";
        /** @brief Original native identity; empty native identity is unqualified. */
        public const string NATIVE_IDENTITY = "";
        /** @brief Original source constant OK; consumes no instance wire bytes. */
        public const uint CONST_OK = 0u;
        /** @brief Original source constant OK_STR; consumes no instance wire bytes. */
        public const string CONST_OK_STR = "Success";
        /** @brief Original source constant READ_ADDRESS_INVALID; consumes no instance wire bytes. */
        public const uint CONST_READ_ADDRESS_INVALID = 1001u;
        /** @brief Original source constant READ_ADDRESS_INVALID_STR; consumes no instance wire bytes. */
        public const string CONST_READ_ADDRESS_INVALID_STR = "Address cannot be read from (out of readable range)";
        /** @brief Original source constant WRITE_ADDRESS_INVALID; consumes no instance wire bytes. */
        public const uint CONST_WRITE_ADDRESS_INVALID = 1002u;
        /** @brief Original source constant WRITE_ADDRESS_INVALID_STR; consumes no instance wire bytes. */
        public const string CONST_WRITE_ADDRESS_INVALID_STR = "Address cannot be written to (out of writable range)";
        /** @brief Original source constant WRITE_VALUE_INVALID; consumes no instance wire bytes. */
        public const uint CONST_WRITE_VALUE_INVALID = 1003u;
        /** @brief Original source constant WRITE_VALUE_INVALID_STR; consumes no instance wire bytes. */
        public const string CONST_WRITE_VALUE_INVALID_STR = "Illegal value for the type of IO element addressed";
        /** @brief Original source constant READ_API_ERROR; consumes no instance wire bytes. */
        public const uint CONST_READ_API_ERROR = 1004u;
        /** @brief Original source constant READ_API_ERROR_STR; consumes no instance wire bytes. */
        public const string CONST_READ_API_ERROR_STR = "The MotoPlus function mpReadIO returned -1. No further information is available";
        /** @brief Original source constant WRITE_API_ERROR; consumes no instance wire bytes. */
        public const uint CONST_WRITE_API_ERROR = 1005u;
        /** @brief Original source constant WRITE_API_ERROR_STR; consumes no instance wire bytes. */
        public const string CONST_WRITE_API_ERROR_STR = "The MotoPlus function mpWriteIO returned -1. No further information is available";
        /** @brief Original source constant UNKNOWN_API_ERROR_STR; consumes no instance wire bytes. */
        public const string CONST_UNKNOWN_API_ERROR_STR = "Unknown error accessing I/O. No further information is available";

        /**
         * @brief Construct the complete original default value with owned storage.
         * @details Nested fixed arrays initialize every logical element; sequences
         * start empty. No native capability, pointer, or shared buffer is retained.
         */
        public Ros2Motoros2_interfacesMsgIoResultCodes()
        {
        }

        /**
         * @brief Encode every field of one complete bounded value.
         * @param value Borrowed stable value; all referenced arrays remain caller-owned.
         * @return Newly owned complete canonical bytes, excluding unused capacity.
         * @details Invalid fields/bounds/semantics throw ArgumentException.
         */
        public static byte[] Encode(Ros2Motoros2_interfacesMsgIoResultCodes value)
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
        public static Ros2Motoros2_interfacesMsgIoResultCodes Decode(byte[] bytes)
        {
            if(bytes == null || bytes.Length < MIN_WIRE_BYTES || bytes.Length > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Invalid complete canonical extent");
            }
            Wire.Reader wire = new Wire.Reader(bytes);
            Ros2Motoros2_interfacesMsgIoResultCodes value = ReadFields(wire);
            wire.Finish();
            return value;
        }

        /**
         * @brief Write this complete nested value within the enclosing aggregate bound.
         * @param wire Borrowed caller-owned finite writer.
         * @param value Borrowed stable complete value.
         * @return No value; invalid fields or aggregate bounds throw before publication.
         */
        internal static void WriteFields(Wire.Writer wire, Ros2Motoros2_interfacesMsgIoResultCodes value)
        {
            if(value == null)
            {
                throw new ArgumentException("Null canonical record");
            }
            int start = wire.Position;
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
        internal static Ros2Motoros2_interfacesMsgIoResultCodes ReadFields(Wire.Reader wire)
        {
            int start = wire.Position;
            Ros2Motoros2_interfacesMsgIoResultCodes value = new Ros2Motoros2_interfacesMsgIoResultCodes();
            if(wire.Position - start > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Nested aggregate exceeds registered wire bound");
            }
            return value;
        }
    }
}
