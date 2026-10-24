using System;
using Uwvm.Ros;

namespace Uwvm.Trossen.Ros2.ros2_iron
{
    /**
     * @brief Complete ROS 2 interbotix_slate_msgs/srv/SetLightState_Request value and canonical codec.
     * @details All fields, constants, defaults and nested capacities come from the
     * canonical bounded catalog. Instances own their strings/arrays/nested values.
     * Encode/decode perform no ROS operation and confer no authority. Native type
     * identity must still be independently qualified by the deployment registry.
     */
    public sealed class Ros2Interbotix_slate_msgsSrvSetLightState_Request
    {
        /** @brief Exact registered max wire bytes. */
        public const int MAX_WIRE_BYTES = 4;
        /** @brief Exact registered min wire bytes. */
        public const int MIN_WIRE_BYTES = 4;
        /** @brief Original codec identity; empty native identity is unqualified. */
        public const string CODEC_IDENTITY = "UWVMROS1_ff7ce99b264f9f71c006b31b92a9f265c87345e85a97e0cbfe1bef87faada554";
        /** @brief Original source type; empty native identity is unqualified. */
        public const string SOURCE_TYPE = "interbotix_slate_msgs/srv/SetLightState_Request";
        /** @brief Original native identity; empty native identity is unqualified. */
        public const string NATIVE_IDENTITY = "";
        /** @brief Original source constant LIGHT_STATE_OFF; consumes no instance wire bytes. */
        public const uint CONST_LIGHT_STATE_OFF = 0u;
        /** @brief Original source constant LIGHT_STATE_RED; consumes no instance wire bytes. */
        public const uint CONST_LIGHT_STATE_RED = 1u;
        /** @brief Original source constant LIGHT_STATE_GREEN; consumes no instance wire bytes. */
        public const uint CONST_LIGHT_STATE_GREEN = 2u;
        /** @brief Original source constant LIGHT_STATE_YELLOW; consumes no instance wire bytes. */
        public const uint CONST_LIGHT_STATE_YELLOW = 3u;
        /** @brief Original source constant LIGHT_STATE_BLUE; consumes no instance wire bytes. */
        public const uint CONST_LIGHT_STATE_BLUE = 4u;
        /** @brief Original source constant LIGHT_STATE_PURPLE; consumes no instance wire bytes. */
        public const uint CONST_LIGHT_STATE_PURPLE = 5u;
        /** @brief Original source constant LIGHT_STATE_CYAN; consumes no instance wire bytes. */
        public const uint CONST_LIGHT_STATE_CYAN = 6u;
        /** @brief Original source constant LIGHT_STATE_WHITE; consumes no instance wire bytes. */
        public const uint CONST_LIGHT_STATE_WHITE = 7u;
        /** @brief Original source constant LIGHT_STATE_RED_FLASH; consumes no instance wire bytes. */
        public const uint CONST_LIGHT_STATE_RED_FLASH = 9u;
        /** @brief Original source constant LIGHT_STATE_GREEN_FLASH; consumes no instance wire bytes. */
        public const uint CONST_LIGHT_STATE_GREEN_FLASH = 10u;
        /** @brief Original source constant LIGHT_STATE_YELLOW_FLASH; consumes no instance wire bytes. */
        public const uint CONST_LIGHT_STATE_YELLOW_FLASH = 11u;
        /** @brief Original source constant LIGHT_STATE_BLUE_FLASH; consumes no instance wire bytes. */
        public const uint CONST_LIGHT_STATE_BLUE_FLASH = 12u;
        /** @brief Original source constant LIGHT_STATE_PURPLE_FLASH; consumes no instance wire bytes. */
        public const uint CONST_LIGHT_STATE_PURPLE_FLASH = 13u;
        /** @brief Original source constant LIGHT_STATE_CYAN_FLASH; consumes no instance wire bytes. */
        public const uint CONST_LIGHT_STATE_CYAN_FLASH = 14u;
        /** @brief Original source constant LIGHT_STATE_WHITE_FLASH; consumes no instance wire bytes. */
        public const uint CONST_LIGHT_STATE_WHITE_FLASH = 15u;
        /** @brief Complete native field light_state; scalar, text bound 0. */
        public uint field_light_state = 0u;

        /**
         * @brief Construct the complete original default value with owned storage.
         * @details Nested fixed arrays initialize every logical element; sequences
         * start empty. No native capability, pointer, or shared buffer is retained.
         */
        public Ros2Interbotix_slate_msgsSrvSetLightState_Request()
        {
        }

        /**
         * @brief Encode every field of one complete bounded value.
         * @param value Borrowed stable value; all referenced arrays remain caller-owned.
         * @return Newly owned complete canonical bytes, excluding unused capacity.
         * @details Invalid fields/bounds/semantics throw ArgumentException.
         */
        public static byte[] Encode(Ros2Interbotix_slate_msgsSrvSetLightState_Request value)
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
        public static Ros2Interbotix_slate_msgsSrvSetLightState_Request Decode(byte[] bytes)
        {
            if(bytes == null || bytes.Length < MIN_WIRE_BYTES || bytes.Length > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Invalid complete canonical extent");
            }
            Wire.Reader wire = new Wire.Reader(bytes);
            Ros2Interbotix_slate_msgsSrvSetLightState_Request value = ReadFields(wire);
            wire.Finish();
            return value;
        }

        /**
         * @brief Write this complete nested value within the enclosing aggregate bound.
         * @param wire Borrowed caller-owned finite writer.
         * @param value Borrowed stable complete value.
         * @return No value; invalid fields or aggregate bounds throw before publication.
         */
        internal static void WriteFields(Wire.Writer wire, Ros2Interbotix_slate_msgsSrvSetLightState_Request value)
        {
            if(value == null)
            {
                throw new ArgumentException("Null canonical record");
            }
            int start = wire.Position;
            wire.U32(value.field_light_state);
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
        internal static Ros2Interbotix_slate_msgsSrvSetLightState_Request ReadFields(Wire.Reader wire)
        {
            int start = wire.Position;
            Ros2Interbotix_slate_msgsSrvSetLightState_Request value = new Ros2Interbotix_slate_msgsSrvSetLightState_Request();
            value.field_light_state = wire.U32();
            if(wire.Position - start > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Nested aggregate exceeds registered wire bound");
            }
            return value;
        }
    }
}
