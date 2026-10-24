/**
 * @file Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request.cs
 * @brief Represent the complete original ABB ROS 2 canonical value catalog.
 * @details The caller owns every record and its finite dynamic backing storage. Codecs retain all
 * fields, original constants and native defaults; field units and frames follow the retained
 * definitions. Malformed or out-of-bound wire values are rejected. These are guest values rather than
 * native ROS objects; importing them grants no transport alias.
 */
using System;
using Uwvm.Ros;

namespace Uwvm.Abb.Ros2
{
    /**
     * @brief Complete ROS 2 abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request value and canonical codec.
     * @details All fields, constants, defaults and nested capacities come from the
     * canonical bounded catalog. Instances own their strings/arrays/nested values.
     * Encode/decode perform no ROS operation and confer no authority. Native type
     * identity must still be independently qualified by the deployment registry.
     */
    public sealed class Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request
    {
        /** @brief Exact registered max wire bytes. */
        public const int MAX_WIRE_BYTES = 73;
        /** @brief Exact registered min wire bytes. */
        public const int MIN_WIRE_BYTES = 9;
        /** @brief Original codec identity; empty native identity is unqualified. */
        public const string CODEC_IDENTITY = "UWVMROS1_5d6983aa85c2c52f8ec06cbd723d5929cfc381db2e0bfffb4c27078497d86c90";
        /** @brief Original source type; empty native identity is unqualified. */
        public const string SOURCE_TYPE = "abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request";
        /** @brief Original native identity; empty native identity is unqualified. */
        public const string NATIVE_IDENTITY = "";
        /** @brief Original source constant SG_COMMAND_UNKNOWN; consumes no instance wire bytes. */
        public const byte CONST_SG_COMMAND_UNKNOWN = (byte)1;
        /** @brief Original source constant SG_COMMAND_NONE; consumes no instance wire bytes. */
        public const byte CONST_SG_COMMAND_NONE = (byte)2;
        /** @brief Original source constant SG_COMMAND_INITIALIZE; consumes no instance wire bytes. */
        public const byte CONST_SG_COMMAND_INITIALIZE = (byte)3;
        /** @brief Original source constant SG_COMMAND_CALIBRATE; consumes no instance wire bytes. */
        public const byte CONST_SG_COMMAND_CALIBRATE = (byte)4;
        /** @brief Original source constant SG_COMMAND_MOVE_TO; consumes no instance wire bytes. */
        public const byte CONST_SG_COMMAND_MOVE_TO = (byte)5;
        /** @brief Original source constant SG_COMMAND_GRIP_IN; consumes no instance wire bytes. */
        public const byte CONST_SG_COMMAND_GRIP_IN = (byte)6;
        /** @brief Original source constant SG_COMMAND_GRIP_OUT; consumes no instance wire bytes. */
        public const byte CONST_SG_COMMAND_GRIP_OUT = (byte)7;
        /** @brief Original source constant SG_COMMAND_BLOW_ON_1; consumes no instance wire bytes. */
        public const byte CONST_SG_COMMAND_BLOW_ON_1 = (byte)8;
        /** @brief Original source constant SG_COMMAND_BLOW_ON_2; consumes no instance wire bytes. */
        public const byte CONST_SG_COMMAND_BLOW_ON_2 = (byte)9;
        /** @brief Original source constant SG_COMMAND_BLOW_OFF_1; consumes no instance wire bytes. */
        public const byte CONST_SG_COMMAND_BLOW_OFF_1 = (byte)10;
        /** @brief Original source constant SG_COMMAND_BLOW_OFF_2; consumes no instance wire bytes. */
        public const byte CONST_SG_COMMAND_BLOW_OFF_2 = (byte)11;
        /** @brief Original source constant SG_COMMAND_VACUUM_ON_1; consumes no instance wire bytes. */
        public const byte CONST_SG_COMMAND_VACUUM_ON_1 = (byte)12;
        /** @brief Original source constant SG_COMMAND_VACUUM_ON_2; consumes no instance wire bytes. */
        public const byte CONST_SG_COMMAND_VACUUM_ON_2 = (byte)13;
        /** @brief Original source constant SG_COMMAND_VACUUM_OFF_1; consumes no instance wire bytes. */
        public const byte CONST_SG_COMMAND_VACUUM_OFF_1 = (byte)14;
        /** @brief Original source constant SG_COMMAND_VACUUM_OFF_2; consumes no instance wire bytes. */
        public const byte CONST_SG_COMMAND_VACUUM_OFF_2 = (byte)15;
        /** @brief Complete native field task; scalar, text bound 64. */
        public string field_task = "";
        /** @brief Complete native field command; scalar, text bound 0. */
        public byte field_command = (byte)0;
        /** @brief Complete native field target_position; scalar, text bound 0. */
        public float field_target_position = BitConverter.Int32BitsToSingle(unchecked((int)0x00000000u));

        /**
         * @brief Construct the complete original default value with owned storage.
         * @details Nested fixed arrays initialize every logical element; sequences
         * start empty. No native capability, pointer, or shared buffer is retained.
         */
        public Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request()
        {
        }

        /**
         * @brief Encode every field of one complete bounded value.
         * @param value Borrowed stable value; all referenced arrays remain caller-owned.
         * @return Newly owned complete canonical bytes, excluding unused capacity.
         * @details Invalid fields/bounds/semantics throw ArgumentException.
         */
        public static byte[] Encode(Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request value)
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
        public static Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request Decode(byte[] bytes)
        {
            if(bytes == null || bytes.Length < MIN_WIRE_BYTES || bytes.Length > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Invalid complete canonical extent");
            }
            Wire.Reader wire = new Wire.Reader(bytes);
            Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request value = ReadFields(wire);
            wire.Finish();
            return value;
        }

        /**
         * @brief Write this complete nested value within the enclosing aggregate bound.
         * @param wire Borrowed caller-owned finite writer.
         * @param value Borrowed stable complete value.
         * @return No value; invalid fields or aggregate bounds throw before publication.
         */
        internal static void WriteFields(Wire.Writer wire, Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request value)
        {
            if(value == null)
            {
                throw new ArgumentException("Null canonical record");
            }
            int start = wire.Position;
            wire.String(value.field_task, 64);
            wire.U8(value.field_command);
            if(!float.IsFinite(value.field_target_position))
            {
                throw new ArgumentException("Nonfinite target_position");
            }
            wire.F32(value.field_target_position);
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
        internal static Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request ReadFields(Wire.Reader wire)
        {
            int start = wire.Position;
            Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request value = new Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request();
            value.field_task = wire.String(64);
            value.field_command = wire.U8();
            value.field_target_position = wire.F32();
            if(!float.IsFinite(value.field_target_position))
            {
                throw new ArgumentException("Nonfinite target_position");
            }
            if(wire.Position - start > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Nested aggregate exceeds registered wire bound");
            }
            return value;
        }
    }
}
