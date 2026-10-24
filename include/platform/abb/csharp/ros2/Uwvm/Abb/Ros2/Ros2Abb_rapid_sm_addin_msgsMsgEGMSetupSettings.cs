/**
 * @file Ros2Abb_rapid_sm_addin_msgsMsgEGMSetupSettings.cs
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
     * @brief Complete ROS 2 abb_rapid_sm_addin_msgs/msg/EGMSetupSettings value and canonical codec.
     * @details All fields, constants, defaults and nested capacities come from the
     * canonical bounded catalog. Instances own their strings/arrays/nested values.
     * Encode/decode perform no ROS operation and confer no authority. Native type
     * identity must still be independently qualified by the deployment registry.
     */
    public sealed class Ros2Abb_rapid_sm_addin_msgsMsgEGMSetupSettings
    {
        /** @brief Exact registered max wire bytes. */
        public const int MAX_WIRE_BYTES = 5;
        /** @brief Exact registered min wire bytes. */
        public const int MIN_WIRE_BYTES = 5;
        /** @brief Original codec identity; empty native identity is unqualified. */
        public const string CODEC_IDENTITY = "UWVMROS1_2565bed5b83b132c69f37d7294c69181800ad2974ddc54f60868da57e28e782c";
        /** @brief Original source type; empty native identity is unqualified. */
        public const string SOURCE_TYPE = "abb_rapid_sm_addin_msgs/msg/EGMSetupSettings";
        /** @brief Original native identity; empty native identity is unqualified. */
        public const string NATIVE_IDENTITY = "";
        /** @brief Complete native field use_filtering; scalar, text bound 0. */
        public bool field_use_filtering = false;
        /** @brief Complete native field comm_timeout; scalar, text bound 0. */
        public float field_comm_timeout = BitConverter.Int32BitsToSingle(unchecked((int)0x00000000u));

        /**
         * @brief Construct the complete original default value with owned storage.
         * @details Nested fixed arrays initialize every logical element; sequences
         * start empty. No native capability, pointer, or shared buffer is retained.
         */
        public Ros2Abb_rapid_sm_addin_msgsMsgEGMSetupSettings()
        {
        }

        /**
         * @brief Encode every field of one complete bounded value.
         * @param value Borrowed stable value; all referenced arrays remain caller-owned.
         * @return Newly owned complete canonical bytes, excluding unused capacity.
         * @details Invalid fields/bounds/semantics throw ArgumentException.
         */
        public static byte[] Encode(Ros2Abb_rapid_sm_addin_msgsMsgEGMSetupSettings value)
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
        public static Ros2Abb_rapid_sm_addin_msgsMsgEGMSetupSettings Decode(byte[] bytes)
        {
            if(bytes == null || bytes.Length < MIN_WIRE_BYTES || bytes.Length > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Invalid complete canonical extent");
            }
            Wire.Reader wire = new Wire.Reader(bytes);
            Ros2Abb_rapid_sm_addin_msgsMsgEGMSetupSettings value = ReadFields(wire);
            wire.Finish();
            return value;
        }

        /**
         * @brief Write this complete nested value within the enclosing aggregate bound.
         * @param wire Borrowed caller-owned finite writer.
         * @param value Borrowed stable complete value.
         * @return No value; invalid fields or aggregate bounds throw before publication.
         */
        internal static void WriteFields(Wire.Writer wire, Ros2Abb_rapid_sm_addin_msgsMsgEGMSetupSettings value)
        {
            if(value == null)
            {
                throw new ArgumentException("Null canonical record");
            }
            int start = wire.Position;
            wire.Bool(value.field_use_filtering);
            if(!float.IsFinite(value.field_comm_timeout))
            {
                throw new ArgumentException("Nonfinite comm_timeout");
            }
            wire.F32(value.field_comm_timeout);
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
        internal static Ros2Abb_rapid_sm_addin_msgsMsgEGMSetupSettings ReadFields(Wire.Reader wire)
        {
            int start = wire.Position;
            Ros2Abb_rapid_sm_addin_msgsMsgEGMSetupSettings value = new Ros2Abb_rapid_sm_addin_msgsMsgEGMSetupSettings();
            value.field_use_filtering = wire.Bool();
            value.field_comm_timeout = wire.F32();
            if(!float.IsFinite(value.field_comm_timeout))
            {
                throw new ArgumentException("Nonfinite comm_timeout");
            }
            if(wire.Position - start > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Nested aggregate exceeds registered wire bound");
            }
            return value;
        }
    }
}
