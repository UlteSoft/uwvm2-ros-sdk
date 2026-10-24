/**
 * @file Ros2Fanuc_msgsSrvSetPayloadValue_Request.cs
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
     * @brief Complete ROS 2 fanuc_msgs/srv/SetPayloadValue_Request value and canonical codec.
     * @details All fields, constants, defaults and nested capacities come from the
     * canonical bounded catalog. Instances own their strings/arrays/nested values.
     * Encode/decode perform no ROS operation and confer no authority. Native type
     * identity must still be independently qualified by the deployment registry.
     */
    public sealed class Ros2Fanuc_msgsSrvSetPayloadValue_Request
    {
        /** @brief Exact registered max wire bytes. */
        public const int MAX_WIRE_BYTES = 31;
        /** @brief Exact registered min wire bytes. */
        public const int MIN_WIRE_BYTES = 31;
        /** @brief Original codec identity; empty native identity is unqualified. */
        public const string CODEC_IDENTITY = "UWVMROS1_5d56ce8f2f8df9c3450d6a5dc77e9e77861471805aa6b9c6f8815c2e7c324974";
        /** @brief Original source type; empty native identity is unqualified. */
        public const string SOURCE_TYPE = "fanuc_msgs/srv/SetPayloadValue_Request";
        /** @brief Original native identity; empty native identity is unqualified. */
        public const string NATIVE_IDENTITY = "";
        /** @brief Complete native field payload_schedule_id; scalar, text bound 0. */
        public ushort field_payload_schedule_id = (ushort)0;
        /** @brief Complete native field mass; scalar, text bound 0. */
        public float field_mass = BitConverter.Int32BitsToSingle(unchecked((int)0x00000000u));
        /** @brief Complete native field cg_x; scalar, text bound 0. */
        public float field_cg_x = BitConverter.Int32BitsToSingle(unchecked((int)0x00000000u));
        /** @brief Complete native field cg_y; scalar, text bound 0. */
        public float field_cg_y = BitConverter.Int32BitsToSingle(unchecked((int)0x00000000u));
        /** @brief Complete native field cg_z; scalar, text bound 0. */
        public float field_cg_z = BitConverter.Int32BitsToSingle(unchecked((int)0x00000000u));
        /** @brief Complete native field use_in; scalar, text bound 0. */
        public bool field_use_in = false;
        /** @brief Complete native field in_x; scalar, text bound 0. */
        public float field_in_x = BitConverter.Int32BitsToSingle(unchecked((int)0x00000000u));
        /** @brief Complete native field in_y; scalar, text bound 0. */
        public float field_in_y = BitConverter.Int32BitsToSingle(unchecked((int)0x00000000u));
        /** @brief Complete native field in_z; scalar, text bound 0. */
        public float field_in_z = BitConverter.Int32BitsToSingle(unchecked((int)0x00000000u));

        /**
         * @brief Construct the complete original default value with owned storage.
         * @details Nested fixed arrays initialize every logical element; sequences
         * start empty. No native capability, pointer, or shared buffer is retained.
         */
        public Ros2Fanuc_msgsSrvSetPayloadValue_Request()
        {
        }

        /**
         * @brief Encode every field of one complete bounded value.
         * @param value Borrowed stable value; all referenced arrays remain caller-owned.
         * @return Newly owned complete canonical bytes, excluding unused capacity.
         * @details Invalid fields/bounds/semantics throw ArgumentException.
         */
        public static byte[] Encode(Ros2Fanuc_msgsSrvSetPayloadValue_Request value)
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
        public static Ros2Fanuc_msgsSrvSetPayloadValue_Request Decode(byte[] bytes)
        {
            if(bytes == null || bytes.Length < MIN_WIRE_BYTES || bytes.Length > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Invalid complete canonical extent");
            }
            Wire.Reader wire = new Wire.Reader(bytes);
            Ros2Fanuc_msgsSrvSetPayloadValue_Request value = ReadFields(wire);
            wire.Finish();
            return value;
        }

        /**
         * @brief Write this complete nested value within the enclosing aggregate bound.
         * @param wire Borrowed caller-owned finite writer.
         * @param value Borrowed stable complete value.
         * @return No value; invalid fields or aggregate bounds throw before publication.
         */
        internal static void WriteFields(Wire.Writer wire, Ros2Fanuc_msgsSrvSetPayloadValue_Request value)
        {
            if(value == null)
            {
                throw new ArgumentException("Null canonical record");
            }
            int start = wire.Position;
            wire.U16(value.field_payload_schedule_id);
            if(!float.IsFinite(value.field_mass))
            {
                throw new ArgumentException("Nonfinite mass");
            }
            wire.F32(value.field_mass);
            if(!float.IsFinite(value.field_cg_x))
            {
                throw new ArgumentException("Nonfinite cg_x");
            }
            wire.F32(value.field_cg_x);
            if(!float.IsFinite(value.field_cg_y))
            {
                throw new ArgumentException("Nonfinite cg_y");
            }
            wire.F32(value.field_cg_y);
            if(!float.IsFinite(value.field_cg_z))
            {
                throw new ArgumentException("Nonfinite cg_z");
            }
            wire.F32(value.field_cg_z);
            wire.Bool(value.field_use_in);
            if(!float.IsFinite(value.field_in_x))
            {
                throw new ArgumentException("Nonfinite in_x");
            }
            wire.F32(value.field_in_x);
            if(!float.IsFinite(value.field_in_y))
            {
                throw new ArgumentException("Nonfinite in_y");
            }
            wire.F32(value.field_in_y);
            if(!float.IsFinite(value.field_in_z))
            {
                throw new ArgumentException("Nonfinite in_z");
            }
            wire.F32(value.field_in_z);
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
        internal static Ros2Fanuc_msgsSrvSetPayloadValue_Request ReadFields(Wire.Reader wire)
        {
            int start = wire.Position;
            Ros2Fanuc_msgsSrvSetPayloadValue_Request value = new Ros2Fanuc_msgsSrvSetPayloadValue_Request();
            value.field_payload_schedule_id = wire.U16();
            value.field_mass = wire.F32();
            if(!float.IsFinite(value.field_mass))
            {
                throw new ArgumentException("Nonfinite mass");
            }
            value.field_cg_x = wire.F32();
            if(!float.IsFinite(value.field_cg_x))
            {
                throw new ArgumentException("Nonfinite cg_x");
            }
            value.field_cg_y = wire.F32();
            if(!float.IsFinite(value.field_cg_y))
            {
                throw new ArgumentException("Nonfinite cg_y");
            }
            value.field_cg_z = wire.F32();
            if(!float.IsFinite(value.field_cg_z))
            {
                throw new ArgumentException("Nonfinite cg_z");
            }
            value.field_use_in = wire.Bool();
            value.field_in_x = wire.F32();
            if(!float.IsFinite(value.field_in_x))
            {
                throw new ArgumentException("Nonfinite in_x");
            }
            value.field_in_y = wire.F32();
            if(!float.IsFinite(value.field_in_y))
            {
                throw new ArgumentException("Nonfinite in_y");
            }
            value.field_in_z = wire.F32();
            if(!float.IsFinite(value.field_in_z))
            {
                throw new ArgumentException("Nonfinite in_z");
            }
            if(wire.Position - start > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Nested aggregate exceeds registered wire bound");
            }
            return value;
        }
    }
}
