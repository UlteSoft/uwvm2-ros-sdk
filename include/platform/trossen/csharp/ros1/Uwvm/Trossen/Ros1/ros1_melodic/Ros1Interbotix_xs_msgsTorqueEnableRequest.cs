using System;
using Uwvm.Ros;

namespace Uwvm.Trossen.Ros1.ros1_melodic
{
    /**
     * @brief Complete ROS 1 interbotix_xs_msgs/TorqueEnableRequest value and canonical codec.
     * @details All fields, constants, defaults and nested capacities come from the
     * canonical bounded catalog. Instances own their strings/arrays/nested values.
     * Encode/decode perform no ROS operation and confer no authority. Native type
     * identity must still be independently qualified by the deployment registry.
     */
    public sealed class Ros1Interbotix_xs_msgsTorqueEnableRequest
    {
        /** @brief Exact registered max wire bytes. */
        public const int MAX_WIRE_BYTES = 265;
        /** @brief Exact registered min wire bytes. */
        public const int MIN_WIRE_BYTES = 9;
        /** @brief Original codec identity; empty native identity is unqualified. */
        public const string CODEC_IDENTITY = "UWVMROS1_0586e2a4917ddf684f7834ada07775ccc118f0b2abbfd7fda72d4b76be8a146a";
        /** @brief Original source type; empty native identity is unqualified. */
        public const string SOURCE_TYPE = "interbotix_xs_msgs/TorqueEnableRequest";
        /** @brief Original native identity; empty native identity is unqualified. */
        public const string NATIVE_IDENTITY = "";
        /** @brief Complete native field cmd_type; scalar, text bound 128. */
        public string field_cmd_type = "";
        /** @brief Complete native field name; scalar, text bound 128. */
        public string field_name = "";
        /** @brief Complete native field enable; scalar, text bound 0. */
        public bool field_enable = false;

        /**
         * @brief Construct the complete original default value with owned storage.
         * @details Nested fixed arrays initialize every logical element; sequences
         * start empty. No native capability, pointer, or shared buffer is retained.
         */
        public Ros1Interbotix_xs_msgsTorqueEnableRequest()
        {
        }

        /**
         * @brief Encode every field of one complete bounded value.
         * @param value Borrowed stable value; all referenced arrays remain caller-owned.
         * @return Newly owned complete canonical bytes, excluding unused capacity.
         * @details Invalid fields/bounds/semantics throw ArgumentException.
         */
        public static byte[] Encode(Ros1Interbotix_xs_msgsTorqueEnableRequest value)
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
        public static Ros1Interbotix_xs_msgsTorqueEnableRequest Decode(byte[] bytes)
        {
            if(bytes == null || bytes.Length < MIN_WIRE_BYTES || bytes.Length > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Invalid complete canonical extent");
            }
            Wire.Reader wire = new Wire.Reader(bytes);
            Ros1Interbotix_xs_msgsTorqueEnableRequest value = ReadFields(wire);
            wire.Finish();
            return value;
        }

        /**
         * @brief Write this complete nested value within the enclosing aggregate bound.
         * @param wire Borrowed caller-owned finite writer.
         * @param value Borrowed stable complete value.
         * @return No value; invalid fields or aggregate bounds throw before publication.
         */
        internal static void WriteFields(Wire.Writer wire, Ros1Interbotix_xs_msgsTorqueEnableRequest value)
        {
            if(value == null)
            {
                throw new ArgumentException("Null canonical record");
            }
            int start = wire.Position;
            wire.String(value.field_cmd_type, 128);
            wire.String(value.field_name, 128);
            wire.Bool(value.field_enable);
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
        internal static Ros1Interbotix_xs_msgsTorqueEnableRequest ReadFields(Wire.Reader wire)
        {
            int start = wire.Position;
            Ros1Interbotix_xs_msgsTorqueEnableRequest value = new Ros1Interbotix_xs_msgsTorqueEnableRequest();
            value.field_cmd_type = wire.String(128);
            value.field_name = wire.String(128);
            value.field_enable = wire.Bool();
            if(wire.Position - start > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Nested aggregate exceeds registered wire bound");
            }
            return value;
        }
    }
}
