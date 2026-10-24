/**
 * @file Ros2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings.cs
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
     * @brief Complete ROS 2 abb_rapid_sm_addin_msgs/msg/EGMActivateSettings value and canonical codec.
     * @details All fields, constants, defaults and nested capacities come from the
     * canonical bounded catalog. Instances own their strings/arrays/nested values.
     * Encode/decode perform no ROS operation and confer no authority. Native type
     * identity must still be independently qualified by the deployment registry.
     */
    public sealed class Ros2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings
    {
        /** @brief Exact registered max wire bytes. */
        public const int MAX_WIRE_BYTES = 716;
        /** @brief Exact registered min wire bytes. */
        public const int MIN_WIRE_BYTES = 204;
        /** @brief Original codec identity; empty native identity is unqualified. */
        public const string CODEC_IDENTITY = "UWVMROS1_fce73aea80d9b8a299b8e2ab742602871146b3ebbd624a2e807e25c1ac107cfa";
        /** @brief Original source type; empty native identity is unqualified. */
        public const string SOURCE_TYPE = "abb_rapid_sm_addin_msgs/msg/EGMActivateSettings";
        /** @brief Original native identity; empty native identity is unqualified. */
        public const string NATIVE_IDENTITY = "";
        /** @brief Complete native field tool; scalar, text bound 0. */
        public Ros2Abb_rapid_msgsMsgToolData field_tool = new Ros2Abb_rapid_msgsMsgToolData();
        /** @brief Complete native field wobj; scalar, text bound 0. */
        public Ros2Abb_rapid_msgsMsgWObjData field_wobj = new Ros2Abb_rapid_msgsMsgWObjData();
        /** @brief Complete native field correction_frame; scalar, text bound 0. */
        public Ros2Abb_rapid_msgsMsgPose field_correction_frame = new Ros2Abb_rapid_msgsMsgPose();
        /** @brief Complete native field sensor_frame; scalar, text bound 0. */
        public Ros2Abb_rapid_msgsMsgPose field_sensor_frame = new Ros2Abb_rapid_msgsMsgPose();
        /** @brief Complete native field cond_min_max; scalar, text bound 0. */
        public float field_cond_min_max = BitConverter.Int32BitsToSingle(unchecked((int)0x00000000u));
        /** @brief Complete native field lp_filter; scalar, text bound 0. */
        public float field_lp_filter = BitConverter.Int32BitsToSingle(unchecked((int)0x00000000u));
        /** @brief Complete native field sample_rate; scalar, text bound 0. */
        public byte field_sample_rate = (byte)0;
        /** @brief Complete native field max_speed_deviation; scalar, text bound 0. */
        public float field_max_speed_deviation = BitConverter.Int32BitsToSingle(unchecked((int)0x00000000u));

        /**
         * @brief Construct the complete original default value with owned storage.
         * @details Nested fixed arrays initialize every logical element; sequences
         * start empty. No native capability, pointer, or shared buffer is retained.
         */
        public Ros2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings()
        {
        }

        /**
         * @brief Encode every field of one complete bounded value.
         * @param value Borrowed stable value; all referenced arrays remain caller-owned.
         * @return Newly owned complete canonical bytes, excluding unused capacity.
         * @details Invalid fields/bounds/semantics throw ArgumentException.
         */
        public static byte[] Encode(Ros2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings value)
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
        public static Ros2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings Decode(byte[] bytes)
        {
            if(bytes == null || bytes.Length < MIN_WIRE_BYTES || bytes.Length > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Invalid complete canonical extent");
            }
            Wire.Reader wire = new Wire.Reader(bytes);
            Ros2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings value = ReadFields(wire);
            wire.Finish();
            return value;
        }

        /**
         * @brief Write this complete nested value within the enclosing aggregate bound.
         * @param wire Borrowed caller-owned finite writer.
         * @param value Borrowed stable complete value.
         * @return No value; invalid fields or aggregate bounds throw before publication.
         */
        internal static void WriteFields(Wire.Writer wire, Ros2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings value)
        {
            if(value == null)
            {
                throw new ArgumentException("Null canonical record");
            }
            int start = wire.Position;
            Ros2Abb_rapid_msgsMsgToolData.WriteFields(wire, value.field_tool);
            Ros2Abb_rapid_msgsMsgWObjData.WriteFields(wire, value.field_wobj);
            Ros2Abb_rapid_msgsMsgPose.WriteFields(wire, value.field_correction_frame);
            Ros2Abb_rapid_msgsMsgPose.WriteFields(wire, value.field_sensor_frame);
            if(!float.IsFinite(value.field_cond_min_max))
            {
                throw new ArgumentException("Nonfinite cond_min_max");
            }
            wire.F32(value.field_cond_min_max);
            if(!float.IsFinite(value.field_lp_filter))
            {
                throw new ArgumentException("Nonfinite lp_filter");
            }
            wire.F32(value.field_lp_filter);
            wire.U8(value.field_sample_rate);
            if(!float.IsFinite(value.field_max_speed_deviation))
            {
                throw new ArgumentException("Nonfinite max_speed_deviation");
            }
            wire.F32(value.field_max_speed_deviation);
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
        internal static Ros2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings ReadFields(Wire.Reader wire)
        {
            int start = wire.Position;
            Ros2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings value = new Ros2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings();
            value.field_tool = Ros2Abb_rapid_msgsMsgToolData.ReadFields(wire);
            value.field_wobj = Ros2Abb_rapid_msgsMsgWObjData.ReadFields(wire);
            value.field_correction_frame = Ros2Abb_rapid_msgsMsgPose.ReadFields(wire);
            value.field_sensor_frame = Ros2Abb_rapid_msgsMsgPose.ReadFields(wire);
            value.field_cond_min_max = wire.F32();
            if(!float.IsFinite(value.field_cond_min_max))
            {
                throw new ArgumentException("Nonfinite cond_min_max");
            }
            value.field_lp_filter = wire.F32();
            if(!float.IsFinite(value.field_lp_filter))
            {
                throw new ArgumentException("Nonfinite lp_filter");
            }
            value.field_sample_rate = wire.U8();
            value.field_max_speed_deviation = wire.F32();
            if(!float.IsFinite(value.field_max_speed_deviation))
            {
                throw new ArgumentException("Nonfinite max_speed_deviation");
            }
            if(wire.Position - start > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Nested aggregate exceeds registered wire bound");
            }
            return value;
        }
    }
}
