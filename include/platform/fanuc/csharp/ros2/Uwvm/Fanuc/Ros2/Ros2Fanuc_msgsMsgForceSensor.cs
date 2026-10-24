/**
 * @file Ros2Fanuc_msgsMsgForceSensor.cs
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
     * @brief Complete ROS 2 fanuc_msgs/msg/ForceSensor value and canonical codec.
     * @details All fields, constants, defaults and nested capacities come from the
     * canonical bounded catalog. Instances own their strings/arrays/nested values.
     * Encode/decode perform no ROS operation and confer no authority. Native type
     * identity must still be independently qualified by the deployment registry.
     */
    public sealed class Ros2Fanuc_msgsMsgForceSensor
    {
        /** @brief Exact registered max wire bytes. */
        public const int MAX_WIRE_BYTES = 28;
        /** @brief Exact registered min wire bytes. */
        public const int MIN_WIRE_BYTES = 28;
        /** @brief Original codec identity; empty native identity is unqualified. */
        public const string CODEC_IDENTITY = "UWVMROS1_06c99b43d7347646179850f3ba79192da7ce71296667d93d88659efbc1004032";
        /** @brief Original source type; empty native identity is unqualified. */
        public const string SOURCE_TYPE = "fanuc_msgs/msg/ForceSensor";
        /** @brief Original native identity; empty native identity is unqualified. */
        public const string NATIVE_IDENTITY = "";
        /** @brief Complete native field force_x; scalar, text bound 0. */
        public float field_force_x = BitConverter.Int32BitsToSingle(unchecked((int)0x00000000u));
        /** @brief Complete native field force_y; scalar, text bound 0. */
        public float field_force_y = BitConverter.Int32BitsToSingle(unchecked((int)0x00000000u));
        /** @brief Complete native field force_z; scalar, text bound 0. */
        public float field_force_z = BitConverter.Int32BitsToSingle(unchecked((int)0x00000000u));
        /** @brief Complete native field moment_x; scalar, text bound 0. */
        public float field_moment_x = BitConverter.Int32BitsToSingle(unchecked((int)0x00000000u));
        /** @brief Complete native field moment_y; scalar, text bound 0. */
        public float field_moment_y = BitConverter.Int32BitsToSingle(unchecked((int)0x00000000u));
        /** @brief Complete native field moment_z; scalar, text bound 0. */
        public float field_moment_z = BitConverter.Int32BitsToSingle(unchecked((int)0x00000000u));
        /** @brief Complete native field fs_type; scalar, text bound 0. */
        public uint field_fs_type = 0u;

        /**
         * @brief Construct the complete original default value with owned storage.
         * @details Nested fixed arrays initialize every logical element; sequences
         * start empty. No native capability, pointer, or shared buffer is retained.
         */
        public Ros2Fanuc_msgsMsgForceSensor()
        {
        }

        /**
         * @brief Encode every field of one complete bounded value.
         * @param value Borrowed stable value; all referenced arrays remain caller-owned.
         * @return Newly owned complete canonical bytes, excluding unused capacity.
         * @details Invalid fields/bounds/semantics throw ArgumentException.
         */
        public static byte[] Encode(Ros2Fanuc_msgsMsgForceSensor value)
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
        public static Ros2Fanuc_msgsMsgForceSensor Decode(byte[] bytes)
        {
            if(bytes == null || bytes.Length < MIN_WIRE_BYTES || bytes.Length > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Invalid complete canonical extent");
            }
            Wire.Reader wire = new Wire.Reader(bytes);
            Ros2Fanuc_msgsMsgForceSensor value = ReadFields(wire);
            wire.Finish();
            return value;
        }

        /**
         * @brief Write this complete nested value within the enclosing aggregate bound.
         * @param wire Borrowed caller-owned finite writer.
         * @param value Borrowed stable complete value.
         * @return No value; invalid fields or aggregate bounds throw before publication.
         */
        internal static void WriteFields(Wire.Writer wire, Ros2Fanuc_msgsMsgForceSensor value)
        {
            if(value == null)
            {
                throw new ArgumentException("Null canonical record");
            }
            int start = wire.Position;
            if(!float.IsFinite(value.field_force_x))
            {
                throw new ArgumentException("Nonfinite force_x");
            }
            wire.F32(value.field_force_x);
            if(!float.IsFinite(value.field_force_y))
            {
                throw new ArgumentException("Nonfinite force_y");
            }
            wire.F32(value.field_force_y);
            if(!float.IsFinite(value.field_force_z))
            {
                throw new ArgumentException("Nonfinite force_z");
            }
            wire.F32(value.field_force_z);
            if(!float.IsFinite(value.field_moment_x))
            {
                throw new ArgumentException("Nonfinite moment_x");
            }
            wire.F32(value.field_moment_x);
            if(!float.IsFinite(value.field_moment_y))
            {
                throw new ArgumentException("Nonfinite moment_y");
            }
            wire.F32(value.field_moment_y);
            if(!float.IsFinite(value.field_moment_z))
            {
                throw new ArgumentException("Nonfinite moment_z");
            }
            wire.F32(value.field_moment_z);
            wire.U32(value.field_fs_type);
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
        internal static Ros2Fanuc_msgsMsgForceSensor ReadFields(Wire.Reader wire)
        {
            int start = wire.Position;
            Ros2Fanuc_msgsMsgForceSensor value = new Ros2Fanuc_msgsMsgForceSensor();
            value.field_force_x = wire.F32();
            if(!float.IsFinite(value.field_force_x))
            {
                throw new ArgumentException("Nonfinite force_x");
            }
            value.field_force_y = wire.F32();
            if(!float.IsFinite(value.field_force_y))
            {
                throw new ArgumentException("Nonfinite force_y");
            }
            value.field_force_z = wire.F32();
            if(!float.IsFinite(value.field_force_z))
            {
                throw new ArgumentException("Nonfinite force_z");
            }
            value.field_moment_x = wire.F32();
            if(!float.IsFinite(value.field_moment_x))
            {
                throw new ArgumentException("Nonfinite moment_x");
            }
            value.field_moment_y = wire.F32();
            if(!float.IsFinite(value.field_moment_y))
            {
                throw new ArgumentException("Nonfinite moment_y");
            }
            value.field_moment_z = wire.F32();
            if(!float.IsFinite(value.field_moment_z))
            {
                throw new ArgumentException("Nonfinite moment_z");
            }
            value.field_fs_type = wire.U32();
            if(wire.Position - start > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Nested aggregate exceeds registered wire bound");
            }
            return value;
        }
    }
}
