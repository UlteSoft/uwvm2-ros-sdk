/**
 * @file Ros1Abb_rapid_msgsRobJoint.cs
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
     * @brief Complete ROS 1 abb_rapid_msgs/RobJoint value and canonical codec.
     * @details All fields, constants, defaults and nested capacities come from the
     * canonical bounded catalog. Instances own their strings/arrays/nested values.
     * Encode/decode perform no ROS operation and confer no authority. Native type
     * identity must still be independently qualified by the deployment registry.
     */
    public sealed class Ros1Abb_rapid_msgsRobJoint
    {
        /** @brief Exact registered max wire bytes. */
        public const int MAX_WIRE_BYTES = 24;
        /** @brief Exact registered min wire bytes. */
        public const int MIN_WIRE_BYTES = 24;
        /** @brief Original codec identity; empty native identity is unqualified. */
        public const string CODEC_IDENTITY = "UWVMROS1_5d45bc0efae8c4f5b26e4043fe537e163c4cc4c6458d1eac9be429c37aaf82f0";
        /** @brief Original source type; empty native identity is unqualified. */
        public const string SOURCE_TYPE = "abb_rapid_msgs/RobJoint";
        /** @brief Original native identity; empty native identity is unqualified. */
        public const string NATIVE_IDENTITY = "";
        /** @brief Complete native field rax_1; scalar, text bound 0. */
        public float field_rax_1 = BitConverter.Int32BitsToSingle(unchecked((int)0x00000000u));
        /** @brief Complete native field rax_2; scalar, text bound 0. */
        public float field_rax_2 = BitConverter.Int32BitsToSingle(unchecked((int)0x00000000u));
        /** @brief Complete native field rax_3; scalar, text bound 0. */
        public float field_rax_3 = BitConverter.Int32BitsToSingle(unchecked((int)0x00000000u));
        /** @brief Complete native field rax_4; scalar, text bound 0. */
        public float field_rax_4 = BitConverter.Int32BitsToSingle(unchecked((int)0x00000000u));
        /** @brief Complete native field rax_5; scalar, text bound 0. */
        public float field_rax_5 = BitConverter.Int32BitsToSingle(unchecked((int)0x00000000u));
        /** @brief Complete native field rax_6; scalar, text bound 0. */
        public float field_rax_6 = BitConverter.Int32BitsToSingle(unchecked((int)0x00000000u));

        /**
         * @brief Construct the complete original default value with owned storage.
         * @details Nested fixed arrays initialize every logical element; sequences
         * start empty. No native capability, pointer, or shared buffer is retained.
         */
        public Ros1Abb_rapid_msgsRobJoint()
        {
        }

        /**
         * @brief Encode every field of one complete bounded value.
         * @param value Borrowed stable value; all referenced arrays remain caller-owned.
         * @return Newly owned complete canonical bytes, excluding unused capacity.
         * @details Invalid fields/bounds/semantics throw ArgumentException.
         */
        public static byte[] Encode(Ros1Abb_rapid_msgsRobJoint value)
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
        public static Ros1Abb_rapid_msgsRobJoint Decode(byte[] bytes)
        {
            if(bytes == null || bytes.Length < MIN_WIRE_BYTES || bytes.Length > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Invalid complete canonical extent");
            }
            Wire.Reader wire = new Wire.Reader(bytes);
            Ros1Abb_rapid_msgsRobJoint value = ReadFields(wire);
            wire.Finish();
            return value;
        }

        /**
         * @brief Write this complete nested value within the enclosing aggregate bound.
         * @param wire Borrowed caller-owned finite writer.
         * @param value Borrowed stable complete value.
         * @return No value; invalid fields or aggregate bounds throw before publication.
         */
        internal static void WriteFields(Wire.Writer wire, Ros1Abb_rapid_msgsRobJoint value)
        {
            if(value == null)
            {
                throw new ArgumentException("Null canonical record");
            }
            int start = wire.Position;
            if(!float.IsFinite(value.field_rax_1))
            {
                throw new ArgumentException("Nonfinite rax_1");
            }
            wire.F32(value.field_rax_1);
            if(!float.IsFinite(value.field_rax_2))
            {
                throw new ArgumentException("Nonfinite rax_2");
            }
            wire.F32(value.field_rax_2);
            if(!float.IsFinite(value.field_rax_3))
            {
                throw new ArgumentException("Nonfinite rax_3");
            }
            wire.F32(value.field_rax_3);
            if(!float.IsFinite(value.field_rax_4))
            {
                throw new ArgumentException("Nonfinite rax_4");
            }
            wire.F32(value.field_rax_4);
            if(!float.IsFinite(value.field_rax_5))
            {
                throw new ArgumentException("Nonfinite rax_5");
            }
            wire.F32(value.field_rax_5);
            if(!float.IsFinite(value.field_rax_6))
            {
                throw new ArgumentException("Nonfinite rax_6");
            }
            wire.F32(value.field_rax_6);
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
        internal static Ros1Abb_rapid_msgsRobJoint ReadFields(Wire.Reader wire)
        {
            int start = wire.Position;
            Ros1Abb_rapid_msgsRobJoint value = new Ros1Abb_rapid_msgsRobJoint();
            value.field_rax_1 = wire.F32();
            if(!float.IsFinite(value.field_rax_1))
            {
                throw new ArgumentException("Nonfinite rax_1");
            }
            value.field_rax_2 = wire.F32();
            if(!float.IsFinite(value.field_rax_2))
            {
                throw new ArgumentException("Nonfinite rax_2");
            }
            value.field_rax_3 = wire.F32();
            if(!float.IsFinite(value.field_rax_3))
            {
                throw new ArgumentException("Nonfinite rax_3");
            }
            value.field_rax_4 = wire.F32();
            if(!float.IsFinite(value.field_rax_4))
            {
                throw new ArgumentException("Nonfinite rax_4");
            }
            value.field_rax_5 = wire.F32();
            if(!float.IsFinite(value.field_rax_5))
            {
                throw new ArgumentException("Nonfinite rax_5");
            }
            value.field_rax_6 = wire.F32();
            if(!float.IsFinite(value.field_rax_6))
            {
                throw new ArgumentException("Nonfinite rax_6");
            }
            if(wire.Position - start > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Nested aggregate exceeds registered wire bound");
            }
            return value;
        }
    }
}
