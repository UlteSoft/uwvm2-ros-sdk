using System;
using Uwvm.Ros;

namespace Uwvm.Trossen.Ros1.ros1_noetic
{
    /**
     * @brief Complete ROS 1 interbotix_xs_msgs/RobotInfoResponse value and canonical codec.
     * @details All fields, constants, defaults and nested capacities come from the
     * canonical bounded catalog. Instances own their strings/arrays/nested values.
     * Encode/decode perform no ROS operation and confer no authority. Native type
     * identity must still be independently qualified by the deployment registry.
     */
    public sealed class Ros1Interbotix_xs_msgsRobotInfoResponse
    {
        /** @brief Exact registered max wire bytes. */
        public const int MAX_WIRE_BYTES = 18474;
        /** @brief Exact registered min wire bytes. */
        public const int MIN_WIRE_BYTES = 42;
        /** @brief Original codec identity; empty native identity is unqualified. */
        public const string CODEC_IDENTITY = "UWVMROS1_0dfb738c428366ca7450d932212e3cc69d86042432b2ddd7cd58da3c0b6b6d5d";
        /** @brief Original source type; empty native identity is unqualified. */
        public const string SOURCE_TYPE = "interbotix_xs_msgs/RobotInfoResponse";
        /** @brief Original native identity; empty native identity is unqualified. */
        public const string NATIVE_IDENTITY = "";
        /** @brief Complete native field mode; scalar, text bound 128. */
        public string field_mode = "";
        /** @brief Complete native field profile_type; scalar, text bound 128. */
        public string field_profile_type = "";
        /** @brief Complete native field joint_names; sequence capacity 64, text bound 128. */
        public string[] field_joint_names = new string[0];
        /** @brief Complete native field joint_ids; sequence capacity 64, text bound 0. */
        public short[] field_joint_ids = new short[0];
        /** @brief Complete native field joint_lower_limits; sequence capacity 64, text bound 0. */
        public float[] field_joint_lower_limits = new float[0];
        /** @brief Complete native field joint_upper_limits; sequence capacity 64, text bound 0. */
        public float[] field_joint_upper_limits = new float[0];
        /** @brief Complete native field joint_velocity_limits; sequence capacity 64, text bound 0. */
        public float[] field_joint_velocity_limits = new float[0];
        /** @brief Complete native field joint_sleep_positions; sequence capacity 64, text bound 0. */
        public float[] field_joint_sleep_positions = new float[0];
        /** @brief Complete native field joint_state_indices; sequence capacity 64, text bound 0. */
        public short[] field_joint_state_indices = new short[0];
        /** @brief Complete native field num_joints; scalar, text bound 0. */
        public short field_num_joints = (short)0;
        /** @brief Complete native field name; sequence capacity 64, text bound 128. */
        public string[] field_name = new string[0];

        /**
         * @brief Construct the complete original default value with owned storage.
         * @details Nested fixed arrays initialize every logical element; sequences
         * start empty. No native capability, pointer, or shared buffer is retained.
         */
        public Ros1Interbotix_xs_msgsRobotInfoResponse()
        {
        }

        /**
         * @brief Encode every field of one complete bounded value.
         * @param value Borrowed stable value; all referenced arrays remain caller-owned.
         * @return Newly owned complete canonical bytes, excluding unused capacity.
         * @details Invalid fields/bounds/semantics throw ArgumentException.
         */
        public static byte[] Encode(Ros1Interbotix_xs_msgsRobotInfoResponse value)
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
        public static Ros1Interbotix_xs_msgsRobotInfoResponse Decode(byte[] bytes)
        {
            if(bytes == null || bytes.Length < MIN_WIRE_BYTES || bytes.Length > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Invalid complete canonical extent");
            }
            Wire.Reader wire = new Wire.Reader(bytes);
            Ros1Interbotix_xs_msgsRobotInfoResponse value = ReadFields(wire);
            wire.Finish();
            return value;
        }

        /**
         * @brief Write this complete nested value within the enclosing aggregate bound.
         * @param wire Borrowed caller-owned finite writer.
         * @param value Borrowed stable complete value.
         * @return No value; invalid fields or aggregate bounds throw before publication.
         */
        internal static void WriteFields(Wire.Writer wire, Ros1Interbotix_xs_msgsRobotInfoResponse value)
        {
            if(value == null)
            {
                throw new ArgumentException("Null canonical record");
            }
            int start = wire.Position;
            wire.String(value.field_mode, 128);
            wire.String(value.field_profile_type, 128);
            if(value.field_joint_names == null || value.field_joint_names.Length > 64)
            {
                throw new ArgumentException("Invalid joint_names extent");
            }
            wire.U32((uint)value.field_joint_names.Length);
            for(int index = 0; index < value.field_joint_names.Length; ++index)
            {
                wire.String(value.field_joint_names[index], 128);
            }
            if(value.field_joint_ids == null || value.field_joint_ids.Length > 64)
            {
                throw new ArgumentException("Invalid joint_ids extent");
            }
            wire.U32((uint)value.field_joint_ids.Length);
            for(int index = 0; index < value.field_joint_ids.Length; ++index)
            {
                wire.I16(value.field_joint_ids[index]);
            }
            if(value.field_joint_lower_limits == null || value.field_joint_lower_limits.Length > 64)
            {
                throw new ArgumentException("Invalid joint_lower_limits extent");
            }
            wire.U32((uint)value.field_joint_lower_limits.Length);
            for(int index = 0; index < value.field_joint_lower_limits.Length; ++index)
            {
                if(!float.IsFinite(value.field_joint_lower_limits[index]))
                {
                    throw new ArgumentException("Nonfinite joint_lower_limits");
                }
                wire.F32(value.field_joint_lower_limits[index]);
            }
            if(value.field_joint_upper_limits == null || value.field_joint_upper_limits.Length > 64)
            {
                throw new ArgumentException("Invalid joint_upper_limits extent");
            }
            wire.U32((uint)value.field_joint_upper_limits.Length);
            for(int index = 0; index < value.field_joint_upper_limits.Length; ++index)
            {
                if(!float.IsFinite(value.field_joint_upper_limits[index]))
                {
                    throw new ArgumentException("Nonfinite joint_upper_limits");
                }
                wire.F32(value.field_joint_upper_limits[index]);
            }
            if(value.field_joint_velocity_limits == null || value.field_joint_velocity_limits.Length > 64)
            {
                throw new ArgumentException("Invalid joint_velocity_limits extent");
            }
            wire.U32((uint)value.field_joint_velocity_limits.Length);
            for(int index = 0; index < value.field_joint_velocity_limits.Length; ++index)
            {
                if(!float.IsFinite(value.field_joint_velocity_limits[index]))
                {
                    throw new ArgumentException("Nonfinite joint_velocity_limits");
                }
                wire.F32(value.field_joint_velocity_limits[index]);
            }
            if(value.field_joint_sleep_positions == null || value.field_joint_sleep_positions.Length > 64)
            {
                throw new ArgumentException("Invalid joint_sleep_positions extent");
            }
            wire.U32((uint)value.field_joint_sleep_positions.Length);
            for(int index = 0; index < value.field_joint_sleep_positions.Length; ++index)
            {
                if(!float.IsFinite(value.field_joint_sleep_positions[index]))
                {
                    throw new ArgumentException("Nonfinite joint_sleep_positions");
                }
                wire.F32(value.field_joint_sleep_positions[index]);
            }
            if(value.field_joint_state_indices == null || value.field_joint_state_indices.Length > 64)
            {
                throw new ArgumentException("Invalid joint_state_indices extent");
            }
            wire.U32((uint)value.field_joint_state_indices.Length);
            for(int index = 0; index < value.field_joint_state_indices.Length; ++index)
            {
                wire.I16(value.field_joint_state_indices[index]);
            }
            wire.I16(value.field_num_joints);
            if(value.field_name == null || value.field_name.Length > 64)
            {
                throw new ArgumentException("Invalid name extent");
            }
            wire.U32((uint)value.field_name.Length);
            for(int index = 0; index < value.field_name.Length; ++index)
            {
                wire.String(value.field_name[index], 128);
            }
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
        internal static Ros1Interbotix_xs_msgsRobotInfoResponse ReadFields(Wire.Reader wire)
        {
            int start = wire.Position;
            Ros1Interbotix_xs_msgsRobotInfoResponse value = new Ros1Interbotix_xs_msgsRobotInfoResponse();
            value.field_mode = wire.String(128);
            value.field_profile_type = wire.String(128);
            value.field_joint_names = new string[wire.Count(64)];
            for(int index = 0; index < value.field_joint_names.Length; ++index)
            {
                value.field_joint_names[index] = wire.String(128);
            }
            value.field_joint_ids = new short[wire.Count(64)];
            for(int index = 0; index < value.field_joint_ids.Length; ++index)
            {
                value.field_joint_ids[index] = wire.I16();
            }
            value.field_joint_lower_limits = new float[wire.Count(64)];
            for(int index = 0; index < value.field_joint_lower_limits.Length; ++index)
            {
                value.field_joint_lower_limits[index] = wire.F32();
                if(!float.IsFinite(value.field_joint_lower_limits[index]))
                {
                    throw new ArgumentException("Nonfinite joint_lower_limits");
                }
            }
            value.field_joint_upper_limits = new float[wire.Count(64)];
            for(int index = 0; index < value.field_joint_upper_limits.Length; ++index)
            {
                value.field_joint_upper_limits[index] = wire.F32();
                if(!float.IsFinite(value.field_joint_upper_limits[index]))
                {
                    throw new ArgumentException("Nonfinite joint_upper_limits");
                }
            }
            value.field_joint_velocity_limits = new float[wire.Count(64)];
            for(int index = 0; index < value.field_joint_velocity_limits.Length; ++index)
            {
                value.field_joint_velocity_limits[index] = wire.F32();
                if(!float.IsFinite(value.field_joint_velocity_limits[index]))
                {
                    throw new ArgumentException("Nonfinite joint_velocity_limits");
                }
            }
            value.field_joint_sleep_positions = new float[wire.Count(64)];
            for(int index = 0; index < value.field_joint_sleep_positions.Length; ++index)
            {
                value.field_joint_sleep_positions[index] = wire.F32();
                if(!float.IsFinite(value.field_joint_sleep_positions[index]))
                {
                    throw new ArgumentException("Nonfinite joint_sleep_positions");
                }
            }
            value.field_joint_state_indices = new short[wire.Count(64)];
            for(int index = 0; index < value.field_joint_state_indices.Length; ++index)
            {
                value.field_joint_state_indices[index] = wire.I16();
            }
            value.field_num_joints = wire.I16();
            value.field_name = new string[wire.Count(64)];
            for(int index = 0; index < value.field_name.Length; ++index)
            {
                value.field_name[index] = wire.String(128);
            }
            if(wire.Position - start > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Nested aggregate exceeds registered wire bound");
            }
            return value;
        }
    }
}
