using System;
using Uwvm.Ros;

namespace Uwvm.Robotis.Ros1.noetic
{
    /**
     * @brief Complete ROS 1 turtlebot3_msgs/Sound value and canonical codec.
     * @details All fields, constants, defaults and nested capacities come from the
     * canonical bounded catalog. Instances own their strings/arrays/nested values.
     * Encode/decode perform no ROS operation and confer no authority. Native type
     * identity must still be independently qualified by the deployment registry.
     */
    public sealed class Ros1Turtlebot3_msgsSound
    {
        /** @brief Exact registered max wire bytes. */
        public const int MAX_WIRE_BYTES = 1;
        /** @brief Exact registered min wire bytes. */
        public const int MIN_WIRE_BYTES = 1;
        /** @brief Original codec identity; empty native identity is unqualified. */
        public const string CODEC_IDENTITY = "UWVMROS1_0e5af3d5a2acbfff5bf5ba94c1520490fe281e70aff02cfb6ad31acd89e7536a";
        /** @brief Original source type; empty native identity is unqualified. */
        public const string SOURCE_TYPE = "turtlebot3_msgs/Sound";
        /** @brief Original native identity; empty native identity is unqualified. */
        public const string NATIVE_IDENTITY = "";
        /** @brief Original source constant OFF; consumes no instance wire bytes. */
        public const byte CONST_OFF = (byte)0;
        /** @brief Original source constant ON; consumes no instance wire bytes. */
        public const byte CONST_ON = (byte)1;
        /** @brief Original source constant LOW_BATTERY; consumes no instance wire bytes. */
        public const byte CONST_LOW_BATTERY = (byte)2;
        /** @brief Original source constant ERROR; consumes no instance wire bytes. */
        public const byte CONST_ERROR = (byte)3;
        /** @brief Original source constant BUTTON1; consumes no instance wire bytes. */
        public const byte CONST_BUTTON1 = (byte)4;
        /** @brief Original source constant BUTTON2; consumes no instance wire bytes. */
        public const byte CONST_BUTTON2 = (byte)5;
        /** @brief Complete native field value; scalar, text bound 0. */
        public byte field_value = (byte)0;

        /**
         * @brief Construct the complete original default value with owned storage.
         * @details Nested fixed arrays initialize every logical element; sequences
         * start empty. No native capability, pointer, or shared buffer is retained.
         */
        public Ros1Turtlebot3_msgsSound()
        {
        }

        /**
         * @brief Encode every field of one complete bounded value.
         * @param value Borrowed stable value; all referenced arrays remain caller-owned.
         * @return Newly owned complete canonical bytes, excluding unused capacity.
         * @details Invalid fields/bounds/semantics throw ArgumentException.
         */
        public static byte[] Encode(Ros1Turtlebot3_msgsSound value)
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
        public static Ros1Turtlebot3_msgsSound Decode(byte[] bytes)
        {
            if(bytes == null || bytes.Length < MIN_WIRE_BYTES || bytes.Length > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Invalid complete canonical extent");
            }
            Wire.Reader wire = new Wire.Reader(bytes);
            Ros1Turtlebot3_msgsSound value = ReadFields(wire);
            wire.Finish();
            return value;
        }

        /**
         * @brief Write this complete nested value within the enclosing aggregate bound.
         * @param wire Borrowed caller-owned finite writer.
         * @param value Borrowed stable complete value.
         * @return No value; invalid fields or aggregate bounds throw before publication.
         */
        internal static void WriteFields(Wire.Writer wire, Ros1Turtlebot3_msgsSound value)
        {
            if(value == null)
            {
                throw new ArgumentException("Null canonical record");
            }
            int start = wire.Position;
            wire.U8(value.field_value);
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
        internal static Ros1Turtlebot3_msgsSound ReadFields(Wire.Reader wire)
        {
            int start = wire.Position;
            Ros1Turtlebot3_msgsSound value = new Ros1Turtlebot3_msgsSound();
            value.field_value = wire.U8();
            if(wire.Position - start > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Nested aggregate exceeds registered wire bound");
            }
            return value;
        }
    }
}
