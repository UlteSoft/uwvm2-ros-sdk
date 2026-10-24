/**
 * @file Ros2Fanuc_msgsMsgFrame.cs
 * @brief Represent the complete original FANUC ROS 2 canonical value catalog.
 * @details The caller owns every record and its finite dynamic backing storage. Codecs retain all
 * fields, original constants and native defaults; field units and frames follow the retained
 * definitions. Malformed or out-of-bound wire values are rejected. These are guest values rather than
 * native ROS objects; importing them grants no transport alias.
 */
using System;
using Uwvm.Ros;

namespace Uwvm.Fanuc.Ros2
{
    /**
     * @brief Complete ROS 2 fanuc_msgs/msg/Frame value and canonical codec.
     * @details All fields, constants, defaults and nested capacities come from the
     * canonical bounded catalog. Instances own their strings/arrays/nested values.
     * Encode/decode perform no ROS operation and confer no authority. Native type
     * identity must still be independently qualified by the deployment registry.
     */
    public sealed class Ros2Fanuc_msgsMsgFrame
    {
        /** @brief Exact registered max wire bytes. */
        public const int MAX_WIRE_BYTES = 24;
        /** @brief Exact registered min wire bytes. */
        public const int MIN_WIRE_BYTES = 24;
        /** @brief Original codec identity; empty native identity is unqualified. */
        public const string CODEC_IDENTITY = "UWVMROS1_609d1b7e49315f7f0a0fe86fa997673acd0d009e57b563690f36624b59b9effb";
        /** @brief Original source type; empty native identity is unqualified. */
        public const string SOURCE_TYPE = "fanuc_msgs/msg/Frame";
        /** @brief Original native identity; empty native identity is unqualified. */
        public const string NATIVE_IDENTITY = "";
        /** @brief Complete native field x; scalar, text bound 0. */
        public float field_x = BitConverter.Int32BitsToSingle(unchecked((int)0x00000000u));
        /** @brief Complete native field y; scalar, text bound 0. */
        public float field_y = BitConverter.Int32BitsToSingle(unchecked((int)0x00000000u));
        /** @brief Complete native field z; scalar, text bound 0. */
        public float field_z = BitConverter.Int32BitsToSingle(unchecked((int)0x00000000u));
        /** @brief Complete native field w; scalar, text bound 0. */
        public float field_w = BitConverter.Int32BitsToSingle(unchecked((int)0x00000000u));
        /** @brief Complete native field p; scalar, text bound 0. */
        public float field_p = BitConverter.Int32BitsToSingle(unchecked((int)0x00000000u));
        /** @brief Complete native field r; scalar, text bound 0. */
        public float field_r = BitConverter.Int32BitsToSingle(unchecked((int)0x00000000u));

        /**
         * @brief Construct the complete original default value with owned storage.
         * @details Nested fixed arrays initialize every logical element; sequences
         * start empty. No native capability, pointer, or shared buffer is retained.
         */
        public Ros2Fanuc_msgsMsgFrame()
        {
        }

        /**
         * @brief Encode every field of one complete bounded value.
         * @param value Borrowed stable value; all referenced arrays remain caller-owned.
         * @return Newly owned complete canonical bytes, excluding unused capacity.
         * @details Invalid fields/bounds/semantics throw ArgumentException.
         */
        public static byte[] Encode(Ros2Fanuc_msgsMsgFrame value)
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
        public static Ros2Fanuc_msgsMsgFrame Decode(byte[] bytes)
        {
            if(bytes == null || bytes.Length < MIN_WIRE_BYTES || bytes.Length > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Invalid complete canonical extent");
            }
            Wire.Reader wire = new Wire.Reader(bytes);
            Ros2Fanuc_msgsMsgFrame value = ReadFields(wire);
            wire.Finish();
            return value;
        }

        /**
         * @brief Write this complete nested value within the enclosing aggregate bound.
         * @param wire Borrowed caller-owned finite writer.
         * @param value Borrowed stable complete value.
         * @return No value; invalid fields or aggregate bounds throw before publication.
         */
        internal static void WriteFields(Wire.Writer wire, Ros2Fanuc_msgsMsgFrame value)
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
            if(!float.IsFinite(value.field_w))
            {
                throw new ArgumentException("Nonfinite w");
            }
            wire.F32(value.field_w);
            if(!float.IsFinite(value.field_p))
            {
                throw new ArgumentException("Nonfinite p");
            }
            wire.F32(value.field_p);
            if(!float.IsFinite(value.field_r))
            {
                throw new ArgumentException("Nonfinite r");
            }
            wire.F32(value.field_r);
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
        internal static Ros2Fanuc_msgsMsgFrame ReadFields(Wire.Reader wire)
        {
            int start = wire.Position;
            Ros2Fanuc_msgsMsgFrame value = new Ros2Fanuc_msgsMsgFrame();
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
            value.field_w = wire.F32();
            if(!float.IsFinite(value.field_w))
            {
                throw new ArgumentException("Nonfinite w");
            }
            value.field_p = wire.F32();
            if(!float.IsFinite(value.field_p))
            {
                throw new ArgumentException("Nonfinite p");
            }
            value.field_r = wire.F32();
            if(!float.IsFinite(value.field_r))
            {
                throw new ArgumentException("Nonfinite r");
            }
            if(wire.Position - start > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Nested aggregate exceeds registered wire bound");
            }
            return value;
        }
    }
}
