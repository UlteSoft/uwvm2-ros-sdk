using System;
using Uwvm.Ros;

namespace Uwvm.Trossen.Ros1.ros1_main
{
    /**
     * @brief Complete ROS 1 xarm_msgs/ClearErrResponse value and canonical codec.
     * @details All fields, constants, defaults and nested capacities come from the
     * canonical bounded catalog. Instances own their strings/arrays/nested values.
     * Encode/decode perform no ROS operation and confer no authority. Native type
     * identity must still be independently qualified by the deployment registry.
     */
    public sealed class Ros1Xarm_msgsClearErrResponse
    {
        /** @brief Exact registered max wire bytes. */
        public const int MAX_WIRE_BYTES = 134;
        /** @brief Exact registered min wire bytes. */
        public const int MIN_WIRE_BYTES = 6;
        /** @brief Original codec identity; empty native identity is unqualified. */
        public const string CODEC_IDENTITY = "UWVMROS1_8edb7089d54f07c68008fdf769fa42d37da738066fce87da976c4888adf8a1a1";
        /** @brief Original source type; empty native identity is unqualified. */
        public const string SOURCE_TYPE = "xarm_msgs/ClearErrResponse";
        /** @brief Original native identity; empty native identity is unqualified. */
        public const string NATIVE_IDENTITY = "";
        /** @brief Complete native field ret; scalar, text bound 0. */
        public short field_ret = (short)0;
        /** @brief Complete native field message; scalar, text bound 128. */
        public string field_message = "";

        /**
         * @brief Construct the complete original default value with owned storage.
         * @details Nested fixed arrays initialize every logical element; sequences
         * start empty. No native capability, pointer, or shared buffer is retained.
         */
        public Ros1Xarm_msgsClearErrResponse()
        {
        }

        /**
         * @brief Encode every field of one complete bounded value.
         * @param value Borrowed stable value; all referenced arrays remain caller-owned.
         * @return Newly owned complete canonical bytes, excluding unused capacity.
         * @details Invalid fields/bounds/semantics throw ArgumentException.
         */
        public static byte[] Encode(Ros1Xarm_msgsClearErrResponse value)
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
        public static Ros1Xarm_msgsClearErrResponse Decode(byte[] bytes)
        {
            if(bytes == null || bytes.Length < MIN_WIRE_BYTES || bytes.Length > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Invalid complete canonical extent");
            }
            Wire.Reader wire = new Wire.Reader(bytes);
            Ros1Xarm_msgsClearErrResponse value = ReadFields(wire);
            wire.Finish();
            return value;
        }

        /**
         * @brief Write this complete nested value within the enclosing aggregate bound.
         * @param wire Borrowed caller-owned finite writer.
         * @param value Borrowed stable complete value.
         * @return No value; invalid fields or aggregate bounds throw before publication.
         */
        internal static void WriteFields(Wire.Writer wire, Ros1Xarm_msgsClearErrResponse value)
        {
            if(value == null)
            {
                throw new ArgumentException("Null canonical record");
            }
            int start = wire.Position;
            wire.I16(value.field_ret);
            wire.String(value.field_message, 128);
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
        internal static Ros1Xarm_msgsClearErrResponse ReadFields(Wire.Reader wire)
        {
            int start = wire.Position;
            Ros1Xarm_msgsClearErrResponse value = new Ros1Xarm_msgsClearErrResponse();
            value.field_ret = wire.I16();
            value.field_message = wire.String(128);
            if(wire.Position - start > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Nested aggregate exceeds registered wire bound");
            }
            return value;
        }
    }
}
