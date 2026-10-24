/**
 * @file Ros1Abb_rapid_msgsLoadData.cs
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
     * @brief Complete ROS 1 abb_rapid_msgs/LoadData value and canonical codec.
     * @details All fields, constants, defaults and nested capacities come from the
     * canonical bounded catalog. Instances own their strings/arrays/nested values.
     * Encode/decode perform no ROS operation and confer no authority. Native type
     * identity must still be independently qualified by the deployment registry.
     */
    public sealed class Ros1Abb_rapid_msgsLoadData
    {
        /** @brief Exact registered max wire bytes. */
        public const int MAX_WIRE_BYTES = 44;
        /** @brief Exact registered min wire bytes. */
        public const int MIN_WIRE_BYTES = 44;
        /** @brief Original codec identity; empty native identity is unqualified. */
        public const string CODEC_IDENTITY = "UWVMROS1_2cc985cc188a03e7c6de3d22310802cac1e0a748bae7f828d957436c1e03303d";
        /** @brief Original source type; empty native identity is unqualified. */
        public const string SOURCE_TYPE = "abb_rapid_msgs/LoadData";
        /** @brief Original native identity; empty native identity is unqualified. */
        public const string NATIVE_IDENTITY = "";
        /** @brief Complete native field mass; scalar, text bound 0. */
        public float field_mass = BitConverter.Int32BitsToSingle(unchecked((int)0x00000000u));
        /** @brief Complete native field cog; scalar, text bound 0. */
        public Ros1Abb_rapid_msgsPos field_cog = new Ros1Abb_rapid_msgsPos();
        /** @brief Complete native field aom; scalar, text bound 0. */
        public Ros1Abb_rapid_msgsOrient field_aom = new Ros1Abb_rapid_msgsOrient();
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
        public Ros1Abb_rapid_msgsLoadData()
        {
        }

        /**
         * @brief Encode every field of one complete bounded value.
         * @param value Borrowed stable value; all referenced arrays remain caller-owned.
         * @return Newly owned complete canonical bytes, excluding unused capacity.
         * @details Invalid fields/bounds/semantics throw ArgumentException.
         */
        public static byte[] Encode(Ros1Abb_rapid_msgsLoadData value)
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
        public static Ros1Abb_rapid_msgsLoadData Decode(byte[] bytes)
        {
            if(bytes == null || bytes.Length < MIN_WIRE_BYTES || bytes.Length > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Invalid complete canonical extent");
            }
            Wire.Reader wire = new Wire.Reader(bytes);
            Ros1Abb_rapid_msgsLoadData value = ReadFields(wire);
            wire.Finish();
            return value;
        }

        /**
         * @brief Write this complete nested value within the enclosing aggregate bound.
         * @param wire Borrowed caller-owned finite writer.
         * @param value Borrowed stable complete value.
         * @return No value; invalid fields or aggregate bounds throw before publication.
         */
        internal static void WriteFields(Wire.Writer wire, Ros1Abb_rapid_msgsLoadData value)
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
            Ros1Abb_rapid_msgsPos.WriteFields(wire, value.field_cog);
            Ros1Abb_rapid_msgsOrient.WriteFields(wire, value.field_aom);
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
        internal static Ros1Abb_rapid_msgsLoadData ReadFields(Wire.Reader wire)
        {
            int start = wire.Position;
            Ros1Abb_rapid_msgsLoadData value = new Ros1Abb_rapid_msgsLoadData();
            value.field_mass = wire.F32();
            if(!float.IsFinite(value.field_mass))
            {
                throw new ArgumentException("Nonfinite mass");
            }
            value.field_cog = Ros1Abb_rapid_msgsPos.ReadFields(wire);
            value.field_aom = Ros1Abb_rapid_msgsOrient.ReadFields(wire);
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
