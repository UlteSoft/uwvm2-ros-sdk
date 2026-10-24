/**
 * @file Ros2Motoros2_interfacesMsgAlarmInfo.cs
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
     * @brief Complete ROS 2 motoros2_interfaces/msg/AlarmInfo value and canonical codec.
     * @details All fields, constants, defaults and nested capacities come from the
     * canonical bounded catalog. Instances own their strings/arrays/nested values.
     * Encode/decode perform no ROS operation and confer no authority. Native type
     * identity must still be independently qualified by the deployment registry.
     */
    public sealed class Ros2Motoros2_interfacesMsgAlarmInfo
    {
        /** @brief Exact registered max wire bytes. */
        public const int MAX_WIRE_BYTES = 25248;
        /** @brief Exact registered min wire bytes. */
        public const int MIN_WIRE_BYTES = 32;
        /** @brief Original codec identity; empty native identity is unqualified. */
        public const string CODEC_IDENTITY = "UWVMROS1_7cf3fa3037f28f295dd62009e708ea3e46a80f83471d0a0f9fb55af125c0c27f";
        /** @brief Original source type; empty native identity is unqualified. */
        public const string SOURCE_TYPE = "motoros2_interfaces/msg/AlarmInfo";
        /** @brief Original native identity; empty native identity is unqualified. */
        public const string NATIVE_IDENTITY = "";
        /** @brief Complete native field number; scalar, text bound 0. */
        public uint field_number = 0u;
        /** @brief Complete native field message; scalar, text bound 512. */
        public string field_message = "";
        /** @brief Complete native field sub_code; scalar, text bound 0. */
        public int field_sub_code = 0;
        /** @brief Complete native field datetime; scalar, text bound 0. */
        public Ros2Builtin_interfacesMsgTime field_datetime = new Ros2Builtin_interfacesMsgTime();
        /** @brief Complete native field contents; scalar, text bound 4096. */
        public string field_contents = "";
        /** @brief Complete native field description; scalar, text bound 4096. */
        public string field_description = "";
        /** @brief Complete native field help; sequence capacity 16, text bound 0. */
        public Ros2Motoros2_interfacesMsgAlarmCauseRemedy[] field_help = new Ros2Motoros2_interfacesMsgAlarmCauseRemedy[0];

        /**
         * @brief Construct the complete original default value with owned storage.
         * @details Nested fixed arrays initialize every logical element; sequences
         * start empty. No native capability, pointer, or shared buffer is retained.
         */
        public Ros2Motoros2_interfacesMsgAlarmInfo()
        {
        }

        /**
         * @brief Encode every field of one complete bounded value.
         * @param value Borrowed stable value; all referenced arrays remain caller-owned.
         * @return Newly owned complete canonical bytes, excluding unused capacity.
         * @details Invalid fields/bounds/semantics throw ArgumentException.
         */
        public static byte[] Encode(Ros2Motoros2_interfacesMsgAlarmInfo value)
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
        public static Ros2Motoros2_interfacesMsgAlarmInfo Decode(byte[] bytes)
        {
            if(bytes == null || bytes.Length < MIN_WIRE_BYTES || bytes.Length > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Invalid complete canonical extent");
            }
            Wire.Reader wire = new Wire.Reader(bytes);
            Ros2Motoros2_interfacesMsgAlarmInfo value = ReadFields(wire);
            wire.Finish();
            return value;
        }

        /**
         * @brief Write this complete nested value within the enclosing aggregate bound.
         * @param wire Borrowed caller-owned finite writer.
         * @param value Borrowed stable complete value.
         * @return No value; invalid fields or aggregate bounds throw before publication.
         */
        internal static void WriteFields(Wire.Writer wire, Ros2Motoros2_interfacesMsgAlarmInfo value)
        {
            if(value == null)
            {
                throw new ArgumentException("Null canonical record");
            }
            int start = wire.Position;
            wire.U32(value.field_number);
            wire.String(value.field_message, 512);
            wire.I32(value.field_sub_code);
            Ros2Builtin_interfacesMsgTime.WriteFields(wire, value.field_datetime);
            wire.String(value.field_contents, 4096);
            wire.String(value.field_description, 4096);
            if(value.field_help == null || value.field_help.Length > 16)
            {
                throw new ArgumentException("Invalid help extent");
            }
            wire.U32((uint)value.field_help.Length);
            for(int index = 0; index < value.field_help.Length; ++index)
            {
                Ros2Motoros2_interfacesMsgAlarmCauseRemedy.WriteFields(wire, value.field_help[index]);
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
        internal static Ros2Motoros2_interfacesMsgAlarmInfo ReadFields(Wire.Reader wire)
        {
            int start = wire.Position;
            Ros2Motoros2_interfacesMsgAlarmInfo value = new Ros2Motoros2_interfacesMsgAlarmInfo();
            value.field_number = wire.U32();
            value.field_message = wire.String(512);
            value.field_sub_code = wire.I32();
            value.field_datetime = Ros2Builtin_interfacesMsgTime.ReadFields(wire);
            value.field_contents = wire.String(4096);
            value.field_description = wire.String(4096);
            value.field_help = new Ros2Motoros2_interfacesMsgAlarmCauseRemedy[wire.Count(16)];
            for(int index = 0; index < value.field_help.Length; ++index)
            {
                value.field_help[index] = Ros2Motoros2_interfacesMsgAlarmCauseRemedy.ReadFields(wire);
            }
            if(wire.Position - start > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Nested aggregate exceeds registered wire bound");
            }
            return value;
        }
    }
}
