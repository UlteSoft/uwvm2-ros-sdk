/**
 * @file Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Response.cs
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
     * @brief Complete ROS 2 motoros2_interfaces/srv/GetActiveAlarmInfo_Response value and canonical codec.
     * @details All fields, constants, defaults and nested capacities come from the
     * canonical bounded catalog. Instances own their strings/arrays/nested values.
     * Encode/decode perform no ROS operation and confer no authority. Native type
     * identity must still be independently qualified by the deployment registry.
     */
    public sealed class Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Response
    {
        /** @brief Exact registered max wire bytes. */
        public const int MAX_WIRE_BYTES = 32768;
        /** @brief Exact registered min wire bytes. */
        public const int MIN_WIRE_BYTES = 16;
        /** @brief Original codec identity; empty native identity is unqualified. */
        public const string CODEC_IDENTITY = "UWVMROS1_e11bdbb95b6ded88d035696260c58dad32bcf3604aa4e89dd41c0dab26541567";
        /** @brief Original source type; empty native identity is unqualified. */
        public const string SOURCE_TYPE = "motoros2_interfaces/srv/GetActiveAlarmInfo_Response";
        /** @brief Original native identity; empty native identity is unqualified. */
        public const string NATIVE_IDENTITY = "";
        /** @brief Complete native field result_code; scalar, text bound 0. */
        public uint field_result_code = 0u;
        /** @brief Complete native field result_message; scalar, text bound 512. */
        public string field_result_message = "";
        /** @brief Complete native field alarms; sequence capacity 16, text bound 0. */
        public Ros2Motoros2_interfacesMsgAlarmInfo[] field_alarms = new Ros2Motoros2_interfacesMsgAlarmInfo[0];
        /** @brief Complete native field errors; sequence capacity 16, text bound 0. */
        public Ros2Motoros2_interfacesMsgErrorInfo[] field_errors = new Ros2Motoros2_interfacesMsgErrorInfo[0];

        /**
         * @brief Construct the complete original default value with owned storage.
         * @details Nested fixed arrays initialize every logical element; sequences
         * start empty. No native capability, pointer, or shared buffer is retained.
         */
        public Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Response()
        {
        }

        /**
         * @brief Encode every field of one complete bounded value.
         * @param value Borrowed stable value; all referenced arrays remain caller-owned.
         * @return Newly owned complete canonical bytes, excluding unused capacity.
         * @details Invalid fields/bounds/semantics throw ArgumentException.
         */
        public static byte[] Encode(Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Response value)
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
        public static Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Response Decode(byte[] bytes)
        {
            if(bytes == null || bytes.Length < MIN_WIRE_BYTES || bytes.Length > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Invalid complete canonical extent");
            }
            Wire.Reader wire = new Wire.Reader(bytes);
            Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Response value = ReadFields(wire);
            wire.Finish();
            return value;
        }

        /**
         * @brief Write this complete nested value within the enclosing aggregate bound.
         * @param wire Borrowed caller-owned finite writer.
         * @param value Borrowed stable complete value.
         * @return No value; invalid fields or aggregate bounds throw before publication.
         */
        internal static void WriteFields(Wire.Writer wire, Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Response value)
        {
            if(value == null)
            {
                throw new ArgumentException("Null canonical record");
            }
            int start = wire.Position;
            wire.U32(value.field_result_code);
            wire.String(value.field_result_message, 512);
            if(value.field_alarms == null || value.field_alarms.Length > 16)
            {
                throw new ArgumentException("Invalid alarms extent");
            }
            wire.U32((uint)value.field_alarms.Length);
            for(int index = 0; index < value.field_alarms.Length; ++index)
            {
                Ros2Motoros2_interfacesMsgAlarmInfo.WriteFields(wire, value.field_alarms[index]);
            }
            if(value.field_errors == null || value.field_errors.Length > 16)
            {
                throw new ArgumentException("Invalid errors extent");
            }
            wire.U32((uint)value.field_errors.Length);
            for(int index = 0; index < value.field_errors.Length; ++index)
            {
                Ros2Motoros2_interfacesMsgErrorInfo.WriteFields(wire, value.field_errors[index]);
            }
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
        internal static Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Response ReadFields(Wire.Reader wire)
        {
            int start = wire.Position;
            Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Response value = new Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Response();
            value.field_result_code = wire.U32();
            value.field_result_message = wire.String(512);
            value.field_alarms = new Ros2Motoros2_interfacesMsgAlarmInfo[wire.Count(16)];
            for(int index = 0; index < value.field_alarms.Length; ++index)
            {
                value.field_alarms[index] = Ros2Motoros2_interfacesMsgAlarmInfo.ReadFields(wire);
            }
            value.field_errors = new Ros2Motoros2_interfacesMsgErrorInfo[wire.Count(16)];
            for(int index = 0; index < value.field_errors.Length; ++index)
            {
                value.field_errors[index] = Ros2Motoros2_interfacesMsgErrorInfo.ReadFields(wire);
            }
            if(wire.Position - start > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Nested aggregate exceeds registered wire bound");
            }
            return value;
        }
    }
}
