using System;
using Uwvm.Ros;

namespace Uwvm.Trossen.Ros1.ros1_noetic
{
    /**
     * @brief Complete ROS 1 xarm_msgs/SetLoadRequest value and canonical codec.
     * @details All fields, constants, defaults and nested capacities come from the
     * canonical bounded catalog. Instances own their strings/arrays/nested values.
     * Encode/decode perform no ROS operation and confer no authority. Native type
     * identity must still be independently qualified by the deployment registry.
     */
    public sealed class Ros1Xarm_msgsSetLoadRequest
    {
        /** @brief Exact registered max wire bytes. */
        public const int MAX_WIRE_BYTES = 16;
        /** @brief Exact registered min wire bytes. */
        public const int MIN_WIRE_BYTES = 16;
        /** @brief Original codec identity; empty native identity is unqualified. */
        public const string CODEC_IDENTITY = "UWVMROS1_47f2147c37956f007e24d79ddcdc080fb185aca0b30f5f2394f9c74bd00ee077";
        /** @brief Original source type; empty native identity is unqualified. */
        public const string SOURCE_TYPE = "xarm_msgs/SetLoadRequest";
        /** @brief Original native identity; empty native identity is unqualified. */
        public const string NATIVE_IDENTITY = "";
        /** @brief Complete native field mass; scalar, text bound 0. */
        public float field_mass = BitConverter.Int32BitsToSingle(unchecked((int)0x00000000u));
        /** @brief Complete native field xc; scalar, text bound 0. */
        public float field_xc = BitConverter.Int32BitsToSingle(unchecked((int)0x00000000u));
        /** @brief Complete native field yc; scalar, text bound 0. */
        public float field_yc = BitConverter.Int32BitsToSingle(unchecked((int)0x00000000u));
        /** @brief Complete native field zc; scalar, text bound 0. */
        public float field_zc = BitConverter.Int32BitsToSingle(unchecked((int)0x00000000u));

        /**
         * @brief Construct the complete original default value with owned storage.
         * @details Nested fixed arrays initialize every logical element; sequences
         * start empty. No native capability, pointer, or shared buffer is retained.
         */
        public Ros1Xarm_msgsSetLoadRequest()
        {
        }

        /**
         * @brief Encode every field of one complete bounded value.
         * @param value Borrowed stable value; all referenced arrays remain caller-owned.
         * @return Newly owned complete canonical bytes, excluding unused capacity.
         * @details Invalid fields/bounds/semantics throw ArgumentException.
         */
        public static byte[] Encode(Ros1Xarm_msgsSetLoadRequest value)
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
        public static Ros1Xarm_msgsSetLoadRequest Decode(byte[] bytes)
        {
            if(bytes == null || bytes.Length < MIN_WIRE_BYTES || bytes.Length > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Invalid complete canonical extent");
            }
            Wire.Reader wire = new Wire.Reader(bytes);
            Ros1Xarm_msgsSetLoadRequest value = ReadFields(wire);
            wire.Finish();
            return value;
        }

        /**
         * @brief Write this complete nested value within the enclosing aggregate bound.
         * @param wire Borrowed caller-owned finite writer.
         * @param value Borrowed stable complete value.
         * @return No value; invalid fields or aggregate bounds throw before publication.
         */
        internal static void WriteFields(Wire.Writer wire, Ros1Xarm_msgsSetLoadRequest value)
        {
            if(value == null)
            {
                throw new ArgumentException("Null canonical record");
            }
            int start = wire.Position;
            if(!float.IsFinite(value.field_mass))
            {
                throw new ArgumentException("Nonfinite mass");
            }
            wire.F32(value.field_mass);
            if(!float.IsFinite(value.field_xc))
            {
                throw new ArgumentException("Nonfinite xc");
            }
            wire.F32(value.field_xc);
            if(!float.IsFinite(value.field_yc))
            {
                throw new ArgumentException("Nonfinite yc");
            }
            wire.F32(value.field_yc);
            if(!float.IsFinite(value.field_zc))
            {
                throw new ArgumentException("Nonfinite zc");
            }
            wire.F32(value.field_zc);
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
        internal static Ros1Xarm_msgsSetLoadRequest ReadFields(Wire.Reader wire)
        {
            int start = wire.Position;
            Ros1Xarm_msgsSetLoadRequest value = new Ros1Xarm_msgsSetLoadRequest();
            value.field_mass = wire.F32();
            if(!float.IsFinite(value.field_mass))
            {
                throw new ArgumentException("Nonfinite mass");
            }
            value.field_xc = wire.F32();
            if(!float.IsFinite(value.field_xc))
            {
                throw new ArgumentException("Nonfinite xc");
            }
            value.field_yc = wire.F32();
            if(!float.IsFinite(value.field_yc))
            {
                throw new ArgumentException("Nonfinite yc");
            }
            value.field_zc = wire.F32();
            if(!float.IsFinite(value.field_zc))
            {
                throw new ArgumentException("Nonfinite zc");
            }
            if(wire.Position - start > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Nested aggregate exceeds registered wire bound");
            }
            return value;
        }
    }
}
