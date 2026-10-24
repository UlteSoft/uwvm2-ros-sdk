/**
 * @file Ros1Abb_rapid_sm_addin_msgsEGMRunSettings.cs
 * @brief Represent the complete original ABB ROS 1 canonical value catalog.
 * @details The caller owns every record and its finite dynamic backing storage. Codecs retain all
 * fields, original constants and native defaults; field units and frames follow the retained
 * definitions. Malformed or out-of-bound wire values are rejected. These are guest values rather than
 * native ROS objects; importing them grants no transport alias.
 */
using System;
using Uwvm.Ros;

namespace Uwvm.Abb.Ros1
{
    /**
     * @brief Complete ROS 1 abb_rapid_sm_addin_msgs/EGMRunSettings value and canonical codec.
     * @details All fields, constants, defaults and nested capacities come from the
     * canonical bounded catalog. Instances own their strings/arrays/nested values.
     * Encode/decode perform no ROS operation and confer no authority. Native type
     * identity must still be independently qualified by the deployment registry.
     */
    public sealed class Ros1Abb_rapid_sm_addin_msgsEGMRunSettings
    {
        /** @brief Exact registered max wire bytes. */
        public const int MAX_WIRE_BYTES = 40;
        /** @brief Exact registered min wire bytes. */
        public const int MIN_WIRE_BYTES = 40;
        /** @brief Original codec identity; empty native identity is unqualified. */
        public const string CODEC_IDENTITY = "UWVMROS1_09a843da7aa89c60e6404f8d36b9a1a57f75e330329ac043449fd438b7029506";
        /** @brief Original source type; empty native identity is unqualified. */
        public const string SOURCE_TYPE = "abb_rapid_sm_addin_msgs/EGMRunSettings";
        /** @brief Original native identity; empty native identity is unqualified. */
        public const string NATIVE_IDENTITY = "";
        /** @brief Complete native field cond_time; scalar, text bound 0. */
        public float field_cond_time = BitConverter.Int32BitsToSingle(unchecked((int)0x00000000u));
        /** @brief Complete native field ramp_in_time; scalar, text bound 0. */
        public float field_ramp_in_time = BitConverter.Int32BitsToSingle(unchecked((int)0x00000000u));
        /** @brief Complete native field offset; scalar, text bound 0. */
        public Ros1Abb_rapid_msgsPose field_offset = new Ros1Abb_rapid_msgsPose();
        /** @brief Complete native field pos_corr_gain; scalar, text bound 0. */
        public float field_pos_corr_gain = BitConverter.Int32BitsToSingle(unchecked((int)0x00000000u));

        /**
         * @brief Construct the complete original default value with owned storage.
         * @details Nested fixed arrays initialize every logical element; sequences
         * start empty. No native capability, pointer, or shared buffer is retained.
         */
        public Ros1Abb_rapid_sm_addin_msgsEGMRunSettings()
        {
        }

        /**
         * @brief Encode every field of one complete bounded value.
         * @param value Borrowed stable value; all referenced arrays remain caller-owned.
         * @return Newly owned complete canonical bytes, excluding unused capacity.
         * @details Invalid fields/bounds/semantics throw ArgumentException.
         */
        public static byte[] Encode(Ros1Abb_rapid_sm_addin_msgsEGMRunSettings value)
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
        public static Ros1Abb_rapid_sm_addin_msgsEGMRunSettings Decode(byte[] bytes)
        {
            if(bytes == null || bytes.Length < MIN_WIRE_BYTES || bytes.Length > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Invalid complete canonical extent");
            }
            Wire.Reader wire = new Wire.Reader(bytes);
            Ros1Abb_rapid_sm_addin_msgsEGMRunSettings value = ReadFields(wire);
            wire.Finish();
            return value;
        }

        /**
         * @brief Write this complete nested value within the enclosing aggregate bound.
         * @param wire Borrowed caller-owned finite writer.
         * @param value Borrowed stable complete value.
         * @return No value; invalid fields or aggregate bounds throw before publication.
         */
        internal static void WriteFields(Wire.Writer wire, Ros1Abb_rapid_sm_addin_msgsEGMRunSettings value)
        {
            if(value == null)
            {
                throw new ArgumentException("Null canonical record");
            }
            int start = wire.Position;
            if(!float.IsFinite(value.field_cond_time))
            {
                throw new ArgumentException("Nonfinite cond_time");
            }
            wire.F32(value.field_cond_time);
            if(!float.IsFinite(value.field_ramp_in_time))
            {
                throw new ArgumentException("Nonfinite ramp_in_time");
            }
            wire.F32(value.field_ramp_in_time);
            Ros1Abb_rapid_msgsPose.WriteFields(wire, value.field_offset);
            if(!float.IsFinite(value.field_pos_corr_gain))
            {
                throw new ArgumentException("Nonfinite pos_corr_gain");
            }
            wire.F32(value.field_pos_corr_gain);
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
        internal static Ros1Abb_rapid_sm_addin_msgsEGMRunSettings ReadFields(Wire.Reader wire)
        {
            int start = wire.Position;
            Ros1Abb_rapid_sm_addin_msgsEGMRunSettings value = new Ros1Abb_rapid_sm_addin_msgsEGMRunSettings();
            value.field_cond_time = wire.F32();
            if(!float.IsFinite(value.field_cond_time))
            {
                throw new ArgumentException("Nonfinite cond_time");
            }
            value.field_ramp_in_time = wire.F32();
            if(!float.IsFinite(value.field_ramp_in_time))
            {
                throw new ArgumentException("Nonfinite ramp_in_time");
            }
            value.field_offset = Ros1Abb_rapid_msgsPose.ReadFields(wire);
            value.field_pos_corr_gain = wire.F32();
            if(!float.IsFinite(value.field_pos_corr_gain))
            {
                throw new ArgumentException("Nonfinite pos_corr_gain");
            }
            if(wire.Position - start > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Nested aggregate exceeds registered wire bound");
            }
            return value;
        }
    }
}
