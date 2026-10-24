using System;
using Uwvm.Ros;

namespace Uwvm.Trossen.Ros2.ros2_humble
{
    /**
     * @brief Complete ROS 2 interbotix_xs_msgs/msg/TurretJoy value and canonical codec.
     * @details All fields, constants, defaults and nested capacities come from the
     * canonical bounded catalog. Instances own their strings/arrays/nested values.
     * Encode/decode perform no ROS operation and confer no authority. Native type
     * identity must still be independently qualified by the deployment registry.
     */
    public sealed class Ros2Interbotix_xs_msgsMsgTurretJoy
    {
        /** @brief Exact registered max wire bytes. */
        public const int MAX_WIRE_BYTES = 4;
        /** @brief Exact registered min wire bytes. */
        public const int MIN_WIRE_BYTES = 4;
        /** @brief Original codec identity; empty native identity is unqualified. */
        public const string CODEC_IDENTITY = "UWVMROS1_ed098904f5694e04331c31f8096f8c4f7b3f938ffa0007b65cba5ea2f6c36e0f";
        /** @brief Original source type; empty native identity is unqualified. */
        public const string SOURCE_TYPE = "interbotix_xs_msgs/msg/TurretJoy";
        /** @brief Original native identity; empty native identity is unqualified. */
        public const string NATIVE_IDENTITY = "";
        /** @brief Original source constant PAN_CCW; consumes no instance wire bytes. */
        public const sbyte CONST_PAN_CCW = (sbyte)1;
        /** @brief Original source constant PAN_CW; consumes no instance wire bytes. */
        public const sbyte CONST_PAN_CW = (sbyte)2;
        /** @brief Original source constant TILT_UP; consumes no instance wire bytes. */
        public const sbyte CONST_TILT_UP = (sbyte)3;
        /** @brief Original source constant TILT_DOWN; consumes no instance wire bytes. */
        public const sbyte CONST_TILT_DOWN = (sbyte)4;
        /** @brief Original source constant PAN_TILT_HOME; consumes no instance wire bytes. */
        public const sbyte CONST_PAN_TILT_HOME = (sbyte)5;
        /** @brief Original source constant SPEED_INC; consumes no instance wire bytes. */
        public const sbyte CONST_SPEED_INC = (sbyte)6;
        /** @brief Original source constant SPEED_DEC; consumes no instance wire bytes. */
        public const sbyte CONST_SPEED_DEC = (sbyte)7;
        /** @brief Original source constant SPEED_COARSE; consumes no instance wire bytes. */
        public const sbyte CONST_SPEED_COARSE = (sbyte)8;
        /** @brief Original source constant SPEED_FINE; consumes no instance wire bytes. */
        public const sbyte CONST_SPEED_FINE = (sbyte)9;
        /** @brief Complete native field pan_cmd; scalar, text bound 0. */
        public sbyte field_pan_cmd = (sbyte)0;
        /** @brief Complete native field tilt_cmd; scalar, text bound 0. */
        public sbyte field_tilt_cmd = (sbyte)0;
        /** @brief Complete native field speed_cmd; scalar, text bound 0. */
        public sbyte field_speed_cmd = (sbyte)0;
        /** @brief Complete native field speed_toggle_cmd; scalar, text bound 0. */
        public sbyte field_speed_toggle_cmd = (sbyte)0;

        /**
         * @brief Construct the complete original default value with owned storage.
         * @details Nested fixed arrays initialize every logical element; sequences
         * start empty. No native capability, pointer, or shared buffer is retained.
         */
        public Ros2Interbotix_xs_msgsMsgTurretJoy()
        {
        }

        /**
         * @brief Encode every field of one complete bounded value.
         * @param value Borrowed stable value; all referenced arrays remain caller-owned.
         * @return Newly owned complete canonical bytes, excluding unused capacity.
         * @details Invalid fields/bounds/semantics throw ArgumentException.
         */
        public static byte[] Encode(Ros2Interbotix_xs_msgsMsgTurretJoy value)
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
        public static Ros2Interbotix_xs_msgsMsgTurretJoy Decode(byte[] bytes)
        {
            if(bytes == null || bytes.Length < MIN_WIRE_BYTES || bytes.Length > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Invalid complete canonical extent");
            }
            Wire.Reader wire = new Wire.Reader(bytes);
            Ros2Interbotix_xs_msgsMsgTurretJoy value = ReadFields(wire);
            wire.Finish();
            return value;
        }

        /**
         * @brief Write this complete nested value within the enclosing aggregate bound.
         * @param wire Borrowed caller-owned finite writer.
         * @param value Borrowed stable complete value.
         * @return No value; invalid fields or aggregate bounds throw before publication.
         */
        internal static void WriteFields(Wire.Writer wire, Ros2Interbotix_xs_msgsMsgTurretJoy value)
        {
            if(value == null)
            {
                throw new ArgumentException("Null canonical record");
            }
            int start = wire.Position;
            wire.I8(value.field_pan_cmd);
            wire.I8(value.field_tilt_cmd);
            wire.I8(value.field_speed_cmd);
            wire.I8(value.field_speed_toggle_cmd);
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
        internal static Ros2Interbotix_xs_msgsMsgTurretJoy ReadFields(Wire.Reader wire)
        {
            int start = wire.Position;
            Ros2Interbotix_xs_msgsMsgTurretJoy value = new Ros2Interbotix_xs_msgsMsgTurretJoy();
            value.field_pan_cmd = wire.I8();
            value.field_tilt_cmd = wire.I8();
            value.field_speed_cmd = wire.I8();
            value.field_speed_toggle_cmd = wire.I8();
            if(wire.Position - start > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Nested aggregate exceeds registered wire bound");
            }
            return value;
        }
    }
}
