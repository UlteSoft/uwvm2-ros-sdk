/**
 * @file Ros2Abb_rapid_sm_addin_msgsMsgEGMRunSettings.cs
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
     * @brief Complete ROS 2 abb_rapid_sm_addin_msgs/msg/EGMRunSettings value and canonical codec.
     * @details All fields, constants, defaults and nested capacities come from the
     * canonical bounded catalog. Instances own their strings/arrays/nested values.
     * Encode/decode perform no ROS operation and confer no authority. Native type
     * identity must still be independently qualified by the deployment registry.
     */
    public sealed class Ros2Abb_rapid_sm_addin_msgsMsgEGMRunSettings
    {
        /** @brief Exact registered max wire bytes. */
        public const int MAX_WIRE_BYTES = 40;
        /** @brief Exact registered min wire bytes. */
        public const int MIN_WIRE_BYTES = 40;
        /** @brief Original codec identity; empty native identity is unqualified. */
        public const string CODEC_IDENTITY = "UWVMROS1_92a2a654eb2eda89077933f955f04ed87884827b8875cf563570eed5d211b0e2";
        /** @brief Original source type; empty native identity is unqualified. */
        public const string SOURCE_TYPE = "abb_rapid_sm_addin_msgs/msg/EGMRunSettings";
        /** @brief Original native identity; empty native identity is unqualified. */
        public const string NATIVE_IDENTITY = "";
        /** @brief Complete native field cond_time; scalar, text bound 0. */
        public float field_cond_time = BitConverter.Int32BitsToSingle(unchecked((int)0x00000000u));
        /** @brief Complete native field ramp_in_time; scalar, text bound 0. */
        public float field_ramp_in_time = BitConverter.Int32BitsToSingle(unchecked((int)0x00000000u));
        /** @brief Complete native field offset; scalar, text bound 0. */
        public Ros2Abb_rapid_msgsMsgPose field_offset = new Ros2Abb_rapid_msgsMsgPose();
        /** @brief Complete native field pos_corr_gain; scalar, text bound 0. */
        public float field_pos_corr_gain = BitConverter.Int32BitsToSingle(unchecked((int)0x00000000u));

        /**
         * @brief Construct the complete original default value with owned storage.
         * @details Nested fixed arrays initialize every logical element; sequences
         * start empty. No native capability, pointer, or shared buffer is retained.
         */
        public Ros2Abb_rapid_sm_addin_msgsMsgEGMRunSettings()
        {
        }

        /**
         * @brief Encode every field of one complete bounded value.
         * @param value Borrowed stable value; all referenced arrays remain caller-owned.
         * @return Newly owned complete canonical bytes, excluding unused capacity.
         * @details Invalid fields/bounds/semantics throw ArgumentException.
         */
        public static byte[] Encode(Ros2Abb_rapid_sm_addin_msgsMsgEGMRunSettings value)
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
        public static Ros2Abb_rapid_sm_addin_msgsMsgEGMRunSettings Decode(byte[] bytes)
        {
            if(bytes == null || bytes.Length < MIN_WIRE_BYTES || bytes.Length > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Invalid complete canonical extent");
            }
            Wire.Reader wire = new Wire.Reader(bytes);
            Ros2Abb_rapid_sm_addin_msgsMsgEGMRunSettings value = ReadFields(wire);
            wire.Finish();
            return value;
        }

        /**
         * @brief Write this complete nested value within the enclosing aggregate bound.
         * @param wire Borrowed caller-owned finite writer.
         * @param value Borrowed stable complete value.
         * @return No value; invalid fields or aggregate bounds throw before publication.
         */
        internal static void WriteFields(Wire.Writer wire, Ros2Abb_rapid_sm_addin_msgsMsgEGMRunSettings value)
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
            Ros2Abb_rapid_msgsMsgPose.WriteFields(wire, value.field_offset);
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
        internal static Ros2Abb_rapid_sm_addin_msgsMsgEGMRunSettings ReadFields(Wire.Reader wire)
        {
            int start = wire.Position;
            Ros2Abb_rapid_sm_addin_msgsMsgEGMRunSettings value = new Ros2Abb_rapid_sm_addin_msgsMsgEGMRunSettings();
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
            value.field_offset = Ros2Abb_rapid_msgsMsgPose.ReadFields(wire);
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
