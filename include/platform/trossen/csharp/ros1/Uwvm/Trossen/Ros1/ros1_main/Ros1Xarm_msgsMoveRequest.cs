using System;
using Uwvm.Ros;

namespace Uwvm.Trossen.Ros1.ros1_main
{
    /**
     * @brief Complete ROS 1 xarm_msgs/MoveRequest value and canonical codec.
     * @details All fields, constants, defaults and nested capacities come from the
     * canonical bounded catalog. Instances own their strings/arrays/nested values.
     * Encode/decode perform no ROS operation and confer no authority. Native type
     * identity must still be independently qualified by the deployment registry.
     */
    public sealed class Ros1Xarm_msgsMoveRequest
    {
        /** @brief Exact registered max wire bytes. */
        public const int MAX_WIRE_BYTES = 84;
        /** @brief Exact registered min wire bytes. */
        public const int MIN_WIRE_BYTES = 20;
        /** @brief Original codec identity; empty native identity is unqualified. */
        public const string CODEC_IDENTITY = "UWVMROS1_b0e6f307ca9a12c92e3b2a6acbc79b0aba223e67788a060e5dc443240c9235e5";
        /** @brief Original source type; empty native identity is unqualified. */
        public const string SOURCE_TYPE = "xarm_msgs/MoveRequest";
        /** @brief Original native identity; empty native identity is unqualified. */
        public const string NATIVE_IDENTITY = "";
        /** @brief Complete native field pose; sequence capacity 16, text bound 0. */
        public float[] field_pose = new float[0];
        /** @brief Complete native field mvvelo; scalar, text bound 0. */
        public float field_mvvelo = BitConverter.Int32BitsToSingle(unchecked((int)0x00000000u));
        /** @brief Complete native field mvacc; scalar, text bound 0. */
        public float field_mvacc = BitConverter.Int32BitsToSingle(unchecked((int)0x00000000u));
        /** @brief Complete native field mvtime; scalar, text bound 0. */
        public float field_mvtime = BitConverter.Int32BitsToSingle(unchecked((int)0x00000000u));
        /** @brief Complete native field mvradii; scalar, text bound 0. */
        public float field_mvradii = BitConverter.Int32BitsToSingle(unchecked((int)0x00000000u));

        /**
         * @brief Construct the complete original default value with owned storage.
         * @details Nested fixed arrays initialize every logical element; sequences
         * start empty. No native capability, pointer, or shared buffer is retained.
         */
        public Ros1Xarm_msgsMoveRequest()
        {
        }

        /**
         * @brief Encode every field of one complete bounded value.
         * @param value Borrowed stable value; all referenced arrays remain caller-owned.
         * @return Newly owned complete canonical bytes, excluding unused capacity.
         * @details Invalid fields/bounds/semantics throw ArgumentException.
         */
        public static byte[] Encode(Ros1Xarm_msgsMoveRequest value)
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
        public static Ros1Xarm_msgsMoveRequest Decode(byte[] bytes)
        {
            if(bytes == null || bytes.Length < MIN_WIRE_BYTES || bytes.Length > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Invalid complete canonical extent");
            }
            Wire.Reader wire = new Wire.Reader(bytes);
            Ros1Xarm_msgsMoveRequest value = ReadFields(wire);
            wire.Finish();
            return value;
        }

        /**
         * @brief Write this complete nested value within the enclosing aggregate bound.
         * @param wire Borrowed caller-owned finite writer.
         * @param value Borrowed stable complete value.
         * @return No value; invalid fields or aggregate bounds throw before publication.
         */
        internal static void WriteFields(Wire.Writer wire, Ros1Xarm_msgsMoveRequest value)
        {
            if(value == null)
            {
                throw new ArgumentException("Null canonical record");
            }
            int start = wire.Position;
            if(value.field_pose == null || value.field_pose.Length > 16)
            {
                throw new ArgumentException("Invalid pose extent");
            }
            wire.U32((uint)value.field_pose.Length);
            for(int index = 0; index < value.field_pose.Length; ++index)
            {
                if(!float.IsFinite(value.field_pose[index]))
                {
                    throw new ArgumentException("Nonfinite pose");
                }
                wire.F32(value.field_pose[index]);
            }
            if(!float.IsFinite(value.field_mvvelo))
            {
                throw new ArgumentException("Nonfinite mvvelo");
            }
            wire.F32(value.field_mvvelo);
            if(!float.IsFinite(value.field_mvacc))
            {
                throw new ArgumentException("Nonfinite mvacc");
            }
            wire.F32(value.field_mvacc);
            if(!float.IsFinite(value.field_mvtime))
            {
                throw new ArgumentException("Nonfinite mvtime");
            }
            wire.F32(value.field_mvtime);
            if(!float.IsFinite(value.field_mvradii))
            {
                throw new ArgumentException("Nonfinite mvradii");
            }
            wire.F32(value.field_mvradii);
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
        internal static Ros1Xarm_msgsMoveRequest ReadFields(Wire.Reader wire)
        {
            int start = wire.Position;
            Ros1Xarm_msgsMoveRequest value = new Ros1Xarm_msgsMoveRequest();
            value.field_pose = new float[wire.Count(16)];
            for(int index = 0; index < value.field_pose.Length; ++index)
            {
                value.field_pose[index] = wire.F32();
                if(!float.IsFinite(value.field_pose[index]))
                {
                    throw new ArgumentException("Nonfinite pose");
                }
            }
            value.field_mvvelo = wire.F32();
            if(!float.IsFinite(value.field_mvvelo))
            {
                throw new ArgumentException("Nonfinite mvvelo");
            }
            value.field_mvacc = wire.F32();
            if(!float.IsFinite(value.field_mvacc))
            {
                throw new ArgumentException("Nonfinite mvacc");
            }
            value.field_mvtime = wire.F32();
            if(!float.IsFinite(value.field_mvtime))
            {
                throw new ArgumentException("Nonfinite mvtime");
            }
            value.field_mvradii = wire.F32();
            if(!float.IsFinite(value.field_mvradii))
            {
                throw new ArgumentException("Nonfinite mvradii");
            }
            if(wire.Position - start > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Nested aggregate exceeds registered wire bound");
            }
            return value;
        }
    }
}
