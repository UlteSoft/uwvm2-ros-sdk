/**
 * @file Ros1Abb_rapid_msgsRobTarget.cs
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
     * @brief Complete ROS 1 abb_rapid_msgs/RobTarget value and canonical codec.
     * @details All fields, constants, defaults and nested capacities come from the
     * canonical bounded catalog. Instances own their strings/arrays/nested values.
     * Encode/decode perform no ROS operation and confer no authority. Native type
     * identity must still be independently qualified by the deployment registry.
     */
    public sealed class Ros1Abb_rapid_msgsRobTarget
    {
        /** @brief Exact registered max wire bytes. */
        public const int MAX_WIRE_BYTES = 68;
        /** @brief Exact registered min wire bytes. */
        public const int MIN_WIRE_BYTES = 68;
        /** @brief Original codec identity; empty native identity is unqualified. */
        public const string CODEC_IDENTITY = "UWVMROS1_0abb3aee8b1303ccf9419f2774829d1231de3ac033e4b644d585f195972f09ce";
        /** @brief Original source type; empty native identity is unqualified. */
        public const string SOURCE_TYPE = "abb_rapid_msgs/RobTarget";
        /** @brief Original native identity; empty native identity is unqualified. */
        public const string NATIVE_IDENTITY = "";
        /** @brief Complete native field trans; scalar, text bound 0. */
        public Ros1Abb_rapid_msgsPos field_trans = new Ros1Abb_rapid_msgsPos();
        /** @brief Complete native field rot; scalar, text bound 0. */
        public Ros1Abb_rapid_msgsOrient field_rot = new Ros1Abb_rapid_msgsOrient();
        /** @brief Complete native field robconf; scalar, text bound 0. */
        public Ros1Abb_rapid_msgsConfData field_robconf = new Ros1Abb_rapid_msgsConfData();
        /** @brief Complete native field extax; scalar, text bound 0. */
        public Ros1Abb_rapid_msgsExtJoint field_extax = new Ros1Abb_rapid_msgsExtJoint();

        /**
         * @brief Construct the complete original default value with owned storage.
         * @details Nested fixed arrays initialize every logical element; sequences
         * start empty. No native capability, pointer, or shared buffer is retained.
         */
        public Ros1Abb_rapid_msgsRobTarget()
        {
        }

        /**
         * @brief Encode every field of one complete bounded value.
         * @param value Borrowed stable value; all referenced arrays remain caller-owned.
         * @return Newly owned complete canonical bytes, excluding unused capacity.
         * @details Invalid fields/bounds/semantics throw ArgumentException.
         */
        public static byte[] Encode(Ros1Abb_rapid_msgsRobTarget value)
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
        public static Ros1Abb_rapid_msgsRobTarget Decode(byte[] bytes)
        {
            if(bytes == null || bytes.Length < MIN_WIRE_BYTES || bytes.Length > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Invalid complete canonical extent");
            }
            Wire.Reader wire = new Wire.Reader(bytes);
            Ros1Abb_rapid_msgsRobTarget value = ReadFields(wire);
            wire.Finish();
            return value;
        }

        /**
         * @brief Write this complete nested value within the enclosing aggregate bound.
         * @param wire Borrowed caller-owned finite writer.
         * @param value Borrowed stable complete value.
         * @return No value; invalid fields or aggregate bounds throw before publication.
         */
        internal static void WriteFields(Wire.Writer wire, Ros1Abb_rapid_msgsRobTarget value)
        {
            if(value == null)
            {
                throw new ArgumentException("Null canonical record");
            }
            int start = wire.Position;
            Ros1Abb_rapid_msgsPos.WriteFields(wire, value.field_trans);
            Ros1Abb_rapid_msgsOrient.WriteFields(wire, value.field_rot);
            Ros1Abb_rapid_msgsConfData.WriteFields(wire, value.field_robconf);
            Ros1Abb_rapid_msgsExtJoint.WriteFields(wire, value.field_extax);
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
        internal static Ros1Abb_rapid_msgsRobTarget ReadFields(Wire.Reader wire)
        {
            int start = wire.Position;
            Ros1Abb_rapid_msgsRobTarget value = new Ros1Abb_rapid_msgsRobTarget();
            value.field_trans = Ros1Abb_rapid_msgsPos.ReadFields(wire);
            value.field_rot = Ros1Abb_rapid_msgsOrient.ReadFields(wire);
            value.field_robconf = Ros1Abb_rapid_msgsConfData.ReadFields(wire);
            value.field_extax = Ros1Abb_rapid_msgsExtJoint.ReadFields(wire);
            if(wire.Position - start > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Nested aggregate exceeds registered wire bound");
            }
            return value;
        }
    }
}
