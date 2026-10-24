using System;
using Uwvm.Ros;

namespace Uwvm.Trossen.Ros1.ros1_melodic
{
    /**
     * @brief Complete ROS 1 xarm_msgs/TCPOffsetRequest value and canonical codec.
     * @details All fields, constants, defaults and nested capacities come from the
     * canonical bounded catalog. Instances own their strings/arrays/nested values.
     * Encode/decode perform no ROS operation and confer no authority. Native type
     * identity must still be independently qualified by the deployment registry.
     */
    public sealed class Ros1Xarm_msgsTCPOffsetRequest
    {
        /** @brief Exact registered max wire bytes. */
        public const int MAX_WIRE_BYTES = 24;
        /** @brief Exact registered min wire bytes. */
        public const int MIN_WIRE_BYTES = 24;
        /** @brief Original codec identity; empty native identity is unqualified. */
        public const string CODEC_IDENTITY = "UWVMROS1_588f23b909cce18cc490801b9d2f0960335362b0c823651cda6d5c8a27ee0afd";
        /** @brief Original source type; empty native identity is unqualified. */
        public const string SOURCE_TYPE = "xarm_msgs/TCPOffsetRequest";
        /** @brief Original native identity; empty native identity is unqualified. */
        public const string NATIVE_IDENTITY = "";
        /** @brief Complete native field x; scalar, text bound 0. */
        public float field_x = BitConverter.Int32BitsToSingle(unchecked((int)0x00000000u));
        /** @brief Complete native field y; scalar, text bound 0. */
        public float field_y = BitConverter.Int32BitsToSingle(unchecked((int)0x00000000u));
        /** @brief Complete native field z; scalar, text bound 0. */
        public float field_z = BitConverter.Int32BitsToSingle(unchecked((int)0x00000000u));
        /** @brief Complete native field roll; scalar, text bound 0. */
        public float field_roll = BitConverter.Int32BitsToSingle(unchecked((int)0x00000000u));
        /** @brief Complete native field pitch; scalar, text bound 0. */
        public float field_pitch = BitConverter.Int32BitsToSingle(unchecked((int)0x00000000u));
        /** @brief Complete native field yaw; scalar, text bound 0. */
        public float field_yaw = BitConverter.Int32BitsToSingle(unchecked((int)0x00000000u));

        /**
         * @brief Construct the complete original default value with owned storage.
         * @details Nested fixed arrays initialize every logical element; sequences
         * start empty. No native capability, pointer, or shared buffer is retained.
         */
        public Ros1Xarm_msgsTCPOffsetRequest()
        {
        }

        /**
         * @brief Encode every field of one complete bounded value.
         * @param value Borrowed stable value; all referenced arrays remain caller-owned.
         * @return Newly owned complete canonical bytes, excluding unused capacity.
         * @details Invalid fields/bounds/semantics throw ArgumentException.
         */
        public static byte[] Encode(Ros1Xarm_msgsTCPOffsetRequest value)
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
        public static Ros1Xarm_msgsTCPOffsetRequest Decode(byte[] bytes)
        {
            if(bytes == null || bytes.Length < MIN_WIRE_BYTES || bytes.Length > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Invalid complete canonical extent");
            }
            Wire.Reader wire = new Wire.Reader(bytes);
            Ros1Xarm_msgsTCPOffsetRequest value = ReadFields(wire);
            wire.Finish();
            return value;
        }

        /**
         * @brief Write this complete nested value within the enclosing aggregate bound.
         * @param wire Borrowed caller-owned finite writer.
         * @param value Borrowed stable complete value.
         * @return No value; invalid fields or aggregate bounds throw before publication.
         */
        internal static void WriteFields(Wire.Writer wire, Ros1Xarm_msgsTCPOffsetRequest value)
        {
            if(value == null)
            {
                throw new ArgumentException("Null canonical record");
            }
            int start = wire.Position;
            if(!float.IsFinite(value.field_x))
            {
                throw new ArgumentException("Nonfinite x");
            }
            wire.F32(value.field_x);
            if(!float.IsFinite(value.field_y))
            {
                throw new ArgumentException("Nonfinite y");
            }
            wire.F32(value.field_y);
            if(!float.IsFinite(value.field_z))
            {
                throw new ArgumentException("Nonfinite z");
            }
            wire.F32(value.field_z);
            if(!float.IsFinite(value.field_roll))
            {
                throw new ArgumentException("Nonfinite roll");
            }
            wire.F32(value.field_roll);
            if(!float.IsFinite(value.field_pitch))
            {
                throw new ArgumentException("Nonfinite pitch");
            }
            wire.F32(value.field_pitch);
            if(!float.IsFinite(value.field_yaw))
            {
                throw new ArgumentException("Nonfinite yaw");
            }
            wire.F32(value.field_yaw);
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
        internal static Ros1Xarm_msgsTCPOffsetRequest ReadFields(Wire.Reader wire)
        {
            int start = wire.Position;
            Ros1Xarm_msgsTCPOffsetRequest value = new Ros1Xarm_msgsTCPOffsetRequest();
            value.field_x = wire.F32();
            if(!float.IsFinite(value.field_x))
            {
                throw new ArgumentException("Nonfinite x");
            }
            value.field_y = wire.F32();
            if(!float.IsFinite(value.field_y))
            {
                throw new ArgumentException("Nonfinite y");
            }
            value.field_z = wire.F32();
            if(!float.IsFinite(value.field_z))
            {
                throw new ArgumentException("Nonfinite z");
            }
            value.field_roll = wire.F32();
            if(!float.IsFinite(value.field_roll))
            {
                throw new ArgumentException("Nonfinite roll");
            }
            value.field_pitch = wire.F32();
            if(!float.IsFinite(value.field_pitch))
            {
                throw new ArgumentException("Nonfinite pitch");
            }
            value.field_yaw = wire.F32();
            if(!float.IsFinite(value.field_yaw))
            {
                throw new ArgumentException("Nonfinite yaw");
            }
            if(wire.Position - start > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Nested aggregate exceeds registered wire bound");
            }
            return value;
        }
    }
}
