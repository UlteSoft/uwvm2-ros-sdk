/**
 * @file Ros2Fanuc_msgsMsgRobotStatusExt.cs
 * @brief Represent the complete original FANUC ROS 2 canonical value catalog.
 * @details The caller owns every record and its finite dynamic backing storage. Codecs retain all
 * fields, original constants and native defaults; field units and frames follow the retained
 * definitions. Malformed or out-of-bound wire values are rejected. These are guest values rather than
 * native ROS objects; importing them grants no transport alias.
 */
using System;
using Uwvm.Ros;

namespace Uwvm.Fanuc.Ros2
{
    /**
     * @brief Complete ROS 2 fanuc_msgs/msg/RobotStatusExt value and canonical codec.
     * @details All fields, constants, defaults and nested capacities come from the
     * canonical bounded catalog. Instances own their strings/arrays/nested values.
     * Encode/decode perform no ROS operation and confer no authority. Native type
     * identity must still be independently qualified by the deployment registry.
     */
    public sealed class Ros2Fanuc_msgsMsgRobotStatusExt
    {
        /** @brief Exact registered max wire bytes. */
        public const int MAX_WIRE_BYTES = 1042;
        /** @brief Exact registered min wire bytes. */
        public const int MIN_WIRE_BYTES = 18;
        /** @brief Original codec identity; empty native identity is unqualified. */
        public const string CODEC_IDENTITY = "UWVMROS1_8ba47a11bfbe02026fe79b32e1ed02e5f609499ea55bb57c9f09af9fba389648";
        /** @brief Original source type; empty native identity is unqualified. */
        public const string SOURCE_TYPE = "fanuc_msgs/msg/RobotStatusExt";
        /** @brief Original native identity; empty native identity is unqualified. */
        public const string NATIVE_IDENTITY = "";
        /** @brief Complete native field error_code; scalar, text bound 512. */
        public string field_error_code = "";
        /** @brief Complete native field in_motion; scalar, text bound 0. */
        public bool field_in_motion = false;
        /** @brief Complete native field drives_powered; scalar, text bound 0. */
        public bool field_drives_powered = false;
        /** @brief Complete native field gen_override; scalar, text bound 0. */
        public int field_gen_override = 0;
        /** @brief Complete native field speed_clamp_limit; scalar, text bound 0. */
        public float field_speed_clamp_limit = BitConverter.Int32BitsToSingle(unchecked((int)0x00000000u));
        /** @brief Complete native field control_mode; scalar, text bound 512. */
        public string field_control_mode = "";

        /**
         * @brief Construct the complete original default value with owned storage.
         * @details Nested fixed arrays initialize every logical element; sequences
         * start empty. No native capability, pointer, or shared buffer is retained.
         */
        public Ros2Fanuc_msgsMsgRobotStatusExt()
        {
        }

        /**
         * @brief Encode every field of one complete bounded value.
         * @param value Borrowed stable value; all referenced arrays remain caller-owned.
         * @return Newly owned complete canonical bytes, excluding unused capacity.
         * @details Invalid fields/bounds/semantics throw ArgumentException.
         */
        public static byte[] Encode(Ros2Fanuc_msgsMsgRobotStatusExt value)
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
        public static Ros2Fanuc_msgsMsgRobotStatusExt Decode(byte[] bytes)
        {
            if(bytes == null || bytes.Length < MIN_WIRE_BYTES || bytes.Length > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Invalid complete canonical extent");
            }
            Wire.Reader wire = new Wire.Reader(bytes);
            Ros2Fanuc_msgsMsgRobotStatusExt value = ReadFields(wire);
            wire.Finish();
            return value;
        }

        /**
         * @brief Write this complete nested value within the enclosing aggregate bound.
         * @param wire Borrowed caller-owned finite writer.
         * @param value Borrowed stable complete value.
         * @return No value; invalid fields or aggregate bounds throw before publication.
         */
        internal static void WriteFields(Wire.Writer wire, Ros2Fanuc_msgsMsgRobotStatusExt value)
        {
            if(value == null)
            {
                throw new ArgumentException("Null canonical record");
            }
            int start = wire.Position;
            wire.String(value.field_error_code, 512);
            wire.Bool(value.field_in_motion);
            wire.Bool(value.field_drives_powered);
            wire.I32(value.field_gen_override);
            if(!float.IsFinite(value.field_speed_clamp_limit))
            {
                throw new ArgumentException("Nonfinite speed_clamp_limit");
            }
            wire.F32(value.field_speed_clamp_limit);
            wire.String(value.field_control_mode, 512);
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
        internal static Ros2Fanuc_msgsMsgRobotStatusExt ReadFields(Wire.Reader wire)
        {
            int start = wire.Position;
            Ros2Fanuc_msgsMsgRobotStatusExt value = new Ros2Fanuc_msgsMsgRobotStatusExt();
            value.field_error_code = wire.String(512);
            value.field_in_motion = wire.Bool();
            value.field_drives_powered = wire.Bool();
            value.field_gen_override = wire.I32();
            value.field_speed_clamp_limit = wire.F32();
            if(!float.IsFinite(value.field_speed_clamp_limit))
            {
                throw new ArgumentException("Nonfinite speed_clamp_limit");
            }
            value.field_control_mode = wire.String(512);
            if(wire.Position - start > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Nested aggregate exceeds registered wire bound");
            }
            return value;
        }
    }
}
