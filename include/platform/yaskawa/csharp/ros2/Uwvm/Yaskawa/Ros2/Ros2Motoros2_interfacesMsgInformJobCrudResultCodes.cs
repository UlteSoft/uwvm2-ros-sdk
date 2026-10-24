/**
 * @file Ros2Motoros2_interfacesMsgInformJobCrudResultCodes.cs
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
     * @brief Complete ROS 2 motoros2_interfaces/msg/InformJobCrudResultCodes value and canonical codec.
     * @details All fields, constants, defaults and nested capacities come from the
     * canonical bounded catalog. Instances own their strings/arrays/nested values.
     * Encode/decode perform no ROS operation and confer no authority. Native type
     * identity must still be independently qualified by the deployment registry.
     */
    public sealed class Ros2Motoros2_interfacesMsgInformJobCrudResultCodes
    {
        /** @brief Exact registered max wire bytes. */
        public const int MAX_WIRE_BYTES = 0;
        /** @brief Exact registered min wire bytes. */
        public const int MIN_WIRE_BYTES = 0;
        /** @brief Original codec identity; empty native identity is unqualified. */
        public const string CODEC_IDENTITY = "UWVMROS1_f5ed037b83926b48a88fa486ed8db5f5d3e39e4a486d4a90190ffd6a70452613";
        /** @brief Original source type; empty native identity is unqualified. */
        public const string SOURCE_TYPE = "motoros2_interfaces/msg/InformJobCrudResultCodes";
        /** @brief Original native identity; empty native identity is unqualified. */
        public const string NATIVE_IDENTITY = "";
        /** @brief Original source constant RC_OK; consumes no instance wire bytes. */
        public const uint CONST_RC_OK = 1u;
        /** @brief Original source constant STR_OK; consumes no instance wire bytes. */
        public const string CONST_STR_OK = "Success";
        /** @brief Original source constant RC_ERR_REFRESHING_JOB_LIST; consumes no instance wire bytes. */
        public const uint CONST_RC_ERR_REFRESHING_JOB_LIST = 10u;
        /** @brief Original source constant STR_ERR_REFRESHING_JOB_LIST; consumes no instance wire bytes. */
        public const string CONST_STR_ERR_REFRESHING_JOB_LIST = "Error refreshing job list";
        /** @brief Original source constant RC_ERR_RETRIEVING_FILE_COUNT; consumes no instance wire bytes. */
        public const uint CONST_RC_ERR_RETRIEVING_FILE_COUNT = 11u;
        /** @brief Original source constant STR_ERR_RETRIEVING_FILE_COUNT; consumes no instance wire bytes. */
        public const string CONST_STR_ERR_RETRIEVING_FILE_COUNT = "Error retrieving file count";
        /** @brief Original source constant RC_ERR_TOO_MANY_JOBS; consumes no instance wire bytes. */
        public const uint CONST_RC_ERR_TOO_MANY_JOBS = 12u;
        /** @brief Original source constant STR_ERR_TOO_MANY_JOBS; consumes no instance wire bytes. */
        public const string CONST_STR_ERR_TOO_MANY_JOBS = "Too many jobs";
        /** @brief Original source constant RC_ERR_RETRIEVING_JOB_NAME_FROM_LIST; consumes no instance wire bytes. */
        public const uint CONST_RC_ERR_RETRIEVING_JOB_NAME_FROM_LIST = 13u;
        /** @brief Original source constant STR_ERR_RETRIEVING_JOB_NAME_FROM_LIST; consumes no instance wire bytes. */
        public const string CONST_STR_ERR_RETRIEVING_JOB_NAME_FROM_LIST = "Failed retrieving job name from list";
        /** @brief Original source constant RC_ERR_APPENDING_JOB_NAME_TO_SVC_RESPONSE; consumes no instance wire bytes.
         */
        public const uint CONST_RC_ERR_APPENDING_JOB_NAME_TO_SVC_RESPONSE = 14u;
        /** @brief Original source constant STR_ERR_APPENDING_JOB_NAME_TO_SVC_RESPONSE; consumes no instance wire bytes.
         */
        public const string CONST_STR_ERR_APPENDING_JOB_NAME_TO_SVC_RESPONSE = "Error adding job name to service response";

        /**
         * @brief Construct the complete original default value with owned storage.
         * @details Nested fixed arrays initialize every logical element; sequences
         * start empty. No native capability, pointer, or shared buffer is retained.
         */
        public Ros2Motoros2_interfacesMsgInformJobCrudResultCodes()
        {
        }

        /**
         * @brief Encode every field of one complete bounded value.
         * @param value Borrowed stable value; all referenced arrays remain caller-owned.
         * @return Newly owned complete canonical bytes, excluding unused capacity.
         * @details Invalid fields/bounds/semantics throw ArgumentException.
         */
        public static byte[] Encode(Ros2Motoros2_interfacesMsgInformJobCrudResultCodes value)
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
        public static Ros2Motoros2_interfacesMsgInformJobCrudResultCodes Decode(byte[] bytes)
        {
            if(bytes == null || bytes.Length < MIN_WIRE_BYTES || bytes.Length > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Invalid complete canonical extent");
            }
            Wire.Reader wire = new Wire.Reader(bytes);
            Ros2Motoros2_interfacesMsgInformJobCrudResultCodes value = ReadFields(wire);
            wire.Finish();
            return value;
        }

        /**
         * @brief Write this complete nested value within the enclosing aggregate bound.
         * @param wire Borrowed caller-owned finite writer.
         * @param value Borrowed stable complete value.
         * @return No value; invalid fields or aggregate bounds throw before publication.
         */
        internal static void WriteFields(Wire.Writer wire, Ros2Motoros2_interfacesMsgInformJobCrudResultCodes value)
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
        internal static Ros2Motoros2_interfacesMsgInformJobCrudResultCodes ReadFields(Wire.Reader wire)
        {
            int start = wire.Position;
            Ros2Motoros2_interfacesMsgInformJobCrudResultCodes value = new Ros2Motoros2_interfacesMsgInformJobCrudResultCodes();
            if(wire.Position - start > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Nested aggregate exceeds registered wire bound");
            }
            return value;
        }
    }
}
