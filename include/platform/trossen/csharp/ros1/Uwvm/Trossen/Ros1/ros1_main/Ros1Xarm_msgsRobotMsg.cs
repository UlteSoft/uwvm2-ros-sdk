using System;
using Uwvm.Ros;

namespace Uwvm.Trossen.Ros1.ros1_main
{
    /**
     * @brief Complete ROS 1 xarm_msgs/RobotMsg value and canonical codec.
     * @details All fields, constants, defaults and nested capacities come from the
     * canonical bounded catalog. Instances own their strings/arrays/nested values.
     * Encode/decode perform no ROS operation and confer no authority. Native type
     * identity must still be independently qualified by the deployment registry.
     */
    public sealed class Ros1Xarm_msgsRobotMsg
    {
        /** @brief Exact registered max wire bytes. */
        public const int MAX_WIRE_BYTES = 130;
        /** @brief Exact registered min wire bytes. */
        public const int MIN_WIRE_BYTES = 66;
        /** @brief Original codec identity; empty native identity is unqualified. */
        public const string CODEC_IDENTITY = "UWVMROS1_0e645cbe57caece23f38f4a23ca610d3be2f4367841c2f493317d23b39df9e41";
        /** @brief Original source type; empty native identity is unqualified. */
        public const string SOURCE_TYPE = "xarm_msgs/RobotMsg";
        /** @brief Original native identity; empty native identity is unqualified. */
        public const string NATIVE_IDENTITY = "";
        /** @brief Complete native field state; scalar, text bound 0. */
        public short field_state = (short)0;
        /** @brief Complete native field mode; scalar, text bound 0. */
        public short field_mode = (short)0;
        /** @brief Complete native field cmdnum; scalar, text bound 0. */
        public short field_cmdnum = (short)0;
        /** @brief Complete native field mt_brake; scalar, text bound 0. */
        public short field_mt_brake = (short)0;
        /** @brief Complete native field mt_able; scalar, text bound 0. */
        public short field_mt_able = (short)0;
        /** @brief Complete native field err; scalar, text bound 0. */
        public short field_err = (short)0;
        /** @brief Complete native field warn; scalar, text bound 0. */
        public short field_warn = (short)0;
        /** @brief Complete native field angle; sequence capacity 16, text bound 0. */
        public float[] field_angle = new float[0];
        /** @brief Complete native field pose; array capacity 6, text bound 0. */
        public float[] field_pose = new float[6];
        /** @brief Complete native field offset; array capacity 6, text bound 0. */
        public float[] field_offset = new float[6];

        /**
         * @brief Construct the complete original default value with owned storage.
         * @details Nested fixed arrays initialize every logical element; sequences
         * start empty. No native capability, pointer, or shared buffer is retained.
         */
        public Ros1Xarm_msgsRobotMsg()
        {
        }

        /**
         * @brief Encode every field of one complete bounded value.
         * @param value Borrowed stable value; all referenced arrays remain caller-owned.
         * @return Newly owned complete canonical bytes, excluding unused capacity.
         * @details Invalid fields/bounds/semantics throw ArgumentException.
         */
        public static byte[] Encode(Ros1Xarm_msgsRobotMsg value)
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
        public static Ros1Xarm_msgsRobotMsg Decode(byte[] bytes)
        {
            if(bytes == null || bytes.Length < MIN_WIRE_BYTES || bytes.Length > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Invalid complete canonical extent");
            }
            Wire.Reader wire = new Wire.Reader(bytes);
            Ros1Xarm_msgsRobotMsg value = ReadFields(wire);
            wire.Finish();
            return value;
        }

        /**
         * @brief Write this complete nested value within the enclosing aggregate bound.
         * @param wire Borrowed caller-owned finite writer.
         * @param value Borrowed stable complete value.
         * @return No value; invalid fields or aggregate bounds throw before publication.
         */
        internal static void WriteFields(Wire.Writer wire, Ros1Xarm_msgsRobotMsg value)
        {
            if(value == null)
            {
                throw new ArgumentException("Null canonical record");
            }
            int start = wire.Position;
            wire.I16(value.field_state);
            wire.I16(value.field_mode);
            wire.I16(value.field_cmdnum);
            wire.I16(value.field_mt_brake);
            wire.I16(value.field_mt_able);
            wire.I16(value.field_err);
            wire.I16(value.field_warn);
            if(value.field_angle == null || value.field_angle.Length > 16)
            {
                throw new ArgumentException("Invalid angle extent");
            }
            wire.U32((uint)value.field_angle.Length);
            for(int index = 0; index < value.field_angle.Length; ++index)
            {
                if(!float.IsFinite(value.field_angle[index]))
                {
                    throw new ArgumentException("Nonfinite angle");
                }
                wire.F32(value.field_angle[index]);
            }
            if(value.field_pose == null || value.field_pose.Length != 6)
            {
                throw new ArgumentException("Invalid pose extent");
            }
            for(int index = 0; index < value.field_pose.Length; ++index)
            {
                if(!float.IsFinite(value.field_pose[index]))
                {
                    throw new ArgumentException("Nonfinite pose");
                }
                wire.F32(value.field_pose[index]);
            }
            if(value.field_offset == null || value.field_offset.Length != 6)
            {
                throw new ArgumentException("Invalid offset extent");
            }
            for(int index = 0; index < value.field_offset.Length; ++index)
            {
                if(!float.IsFinite(value.field_offset[index]))
                {
                    throw new ArgumentException("Nonfinite offset");
                }
                wire.F32(value.field_offset[index]);
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
        internal static Ros1Xarm_msgsRobotMsg ReadFields(Wire.Reader wire)
        {
            int start = wire.Position;
            Ros1Xarm_msgsRobotMsg value = new Ros1Xarm_msgsRobotMsg();
            value.field_state = wire.I16();
            value.field_mode = wire.I16();
            value.field_cmdnum = wire.I16();
            value.field_mt_brake = wire.I16();
            value.field_mt_able = wire.I16();
            value.field_err = wire.I16();
            value.field_warn = wire.I16();
            value.field_angle = new float[wire.Count(16)];
            for(int index = 0; index < value.field_angle.Length; ++index)
            {
                value.field_angle[index] = wire.F32();
                if(!float.IsFinite(value.field_angle[index]))
                {
                    throw new ArgumentException("Nonfinite angle");
                }
            }
            value.field_pose = new float[6];
            for(int index = 0; index < value.field_pose.Length; ++index)
            {
                value.field_pose[index] = wire.F32();
                if(!float.IsFinite(value.field_pose[index]))
                {
                    throw new ArgumentException("Nonfinite pose");
                }
            }
            value.field_offset = new float[6];
            for(int index = 0; index < value.field_offset.Length; ++index)
            {
                value.field_offset[index] = wire.F32();
                if(!float.IsFinite(value.field_offset[index]))
                {
                    throw new ArgumentException("Nonfinite offset");
                }
            }
            if(wire.Position - start > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Nested aggregate exceeds registered wire bound");
            }
            return value;
        }
    }
}
