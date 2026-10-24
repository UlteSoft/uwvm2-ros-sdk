/**
 * @file Ros2Abb_rapid_msgsMsgLoadData.cs
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
     * @brief Complete ROS 2 abb_rapid_msgs/msg/LoadData value and canonical codec.
     * @details All fields, constants, defaults and nested capacities come from the
     * canonical bounded catalog. Instances own their strings/arrays/nested values.
     * Encode/decode perform no ROS operation and confer no authority. Native type
     * identity must still be independently qualified by the deployment registry.
     */
    public sealed class Ros2Abb_rapid_msgsMsgLoadData
    {
        /** @brief Exact registered max wire bytes. */
        public const int MAX_WIRE_BYTES = 44;
        /** @brief Exact registered min wire bytes. */
        public const int MIN_WIRE_BYTES = 44;
        /** @brief Original codec identity; empty native identity is unqualified. */
        public const string CODEC_IDENTITY = "UWVMROS1_f73e480a0e6746a4df8f4d62bc123d68d01d3dc48f0bc5f0eac51b859a0750f9";
        /** @brief Original source type; empty native identity is unqualified. */
        public const string SOURCE_TYPE = "abb_rapid_msgs/msg/LoadData";
        /** @brief Original native identity; empty native identity is unqualified. */
        public const string NATIVE_IDENTITY = "";
        /** @brief Complete native field mass; scalar, text bound 0. */
        public float field_mass = BitConverter.Int32BitsToSingle(unchecked((int)0x00000000u));
        /** @brief Complete native field cog; scalar, text bound 0. */
        public Ros2Abb_rapid_msgsMsgPos field_cog = new Ros2Abb_rapid_msgsMsgPos();
        /** @brief Complete native field aom; scalar, text bound 0. */
        public Ros2Abb_rapid_msgsMsgOrient field_aom = new Ros2Abb_rapid_msgsMsgOrient();
        /** @brief Complete native field ix; scalar, text bound 0. */
        public float field_ix = BitConverter.Int32BitsToSingle(unchecked((int)0x00000000u));
        /** @brief Complete native field iy; scalar, text bound 0. */
        public float field_iy = BitConverter.Int32BitsToSingle(unchecked((int)0x00000000u));
        /** @brief Complete native field iz; scalar, text bound 0. */
        public float field_iz = BitConverter.Int32BitsToSingle(unchecked((int)0x00000000u));

        /**
         * @brief Construct the complete original default value with owned storage.
         * @details Nested fixed arrays initialize every logical element; sequences
         * start empty. No native capability, pointer, or shared buffer is retained.
         */
        public Ros2Abb_rapid_msgsMsgLoadData()
        {
        }

        /**
         * @brief Encode every field of one complete bounded value.
         * @param value Borrowed stable value; all referenced arrays remain caller-owned.
         * @return Newly owned complete canonical bytes, excluding unused capacity.
         * @details Invalid fields/bounds/semantics throw ArgumentException.
         */
        public static byte[] Encode(Ros2Abb_rapid_msgsMsgLoadData value)
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
        public static Ros2Abb_rapid_msgsMsgLoadData Decode(byte[] bytes)
        {
            if(bytes == null || bytes.Length < MIN_WIRE_BYTES || bytes.Length > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Invalid complete canonical extent");
            }
            Wire.Reader wire = new Wire.Reader(bytes);
            Ros2Abb_rapid_msgsMsgLoadData value = ReadFields(wire);
            wire.Finish();
            return value;
        }

        /**
         * @brief Write this complete nested value within the enclosing aggregate bound.
         * @param wire Borrowed caller-owned finite writer.
         * @param value Borrowed stable complete value.
         * @return No value; invalid fields or aggregate bounds throw before publication.
         */
        internal static void WriteFields(Wire.Writer wire, Ros2Abb_rapid_msgsMsgLoadData value)
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
            Ros2Abb_rapid_msgsMsgPos.WriteFields(wire, value.field_cog);
            Ros2Abb_rapid_msgsMsgOrient.WriteFields(wire, value.field_aom);
            if(!float.IsFinite(value.field_ix))
            {
                throw new ArgumentException("Nonfinite ix");
            }
            wire.F32(value.field_ix);
            if(!float.IsFinite(value.field_iy))
            {
                throw new ArgumentException("Nonfinite iy");
            }
            wire.F32(value.field_iy);
            if(!float.IsFinite(value.field_iz))
            {
                throw new ArgumentException("Nonfinite iz");
            }
            wire.F32(value.field_iz);
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
        internal static Ros2Abb_rapid_msgsMsgLoadData ReadFields(Wire.Reader wire)
        {
            int start = wire.Position;
            Ros2Abb_rapid_msgsMsgLoadData value = new Ros2Abb_rapid_msgsMsgLoadData();
            value.field_mass = wire.F32();
            if(!float.IsFinite(value.field_mass))
            {
                throw new ArgumentException("Nonfinite mass");
            }
            value.field_cog = Ros2Abb_rapid_msgsMsgPos.ReadFields(wire);
            value.field_aom = Ros2Abb_rapid_msgsMsgOrient.ReadFields(wire);
            value.field_ix = wire.F32();
            if(!float.IsFinite(value.field_ix))
            {
                throw new ArgumentException("Nonfinite ix");
            }
            value.field_iy = wire.F32();
            if(!float.IsFinite(value.field_iy))
            {
                throw new ArgumentException("Nonfinite iy");
            }
            value.field_iz = wire.F32();
            if(!float.IsFinite(value.field_iz))
            {
                throw new ArgumentException("Nonfinite iz");
            }
            if(wire.Position - start > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Nested aggregate exceeds registered wire bound");
            }
            return value;
        }
    }
}
