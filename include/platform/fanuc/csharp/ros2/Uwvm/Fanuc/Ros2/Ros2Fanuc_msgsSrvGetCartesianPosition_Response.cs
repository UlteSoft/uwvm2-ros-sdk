/**
 * @file Ros2Fanuc_msgsSrvGetCartesianPosition_Response.cs
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
     * @brief Complete ROS 2 fanuc_msgs/srv/GetCartesianPosition_Response value and canonical codec.
     * @details All fields, constants, defaults and nested capacities come from the
     * canonical bounded catalog. Instances own their strings/arrays/nested values.
     * Encode/decode perform no ROS operation and confer no authority. Native type
     * identity must still be independently qualified by the deployment registry.
     */
    public sealed class Ros2Fanuc_msgsSrvGetCartesianPosition_Response
    {
        /** @brief Exact registered max wire bytes. */
        public const int MAX_WIRE_BYTES = 54;
        /** @brief Exact registered min wire bytes. */
        public const int MIN_WIRE_BYTES = 54;
        /** @brief Original codec identity; empty native identity is unqualified. */
        public const string CODEC_IDENTITY = "UWVMROS1_0516f0145717b06550674e02f0b9c47f9b312f4f361c791f56257fbb79e67329";
        /** @brief Original source type; empty native identity is unqualified. */
        public const string SOURCE_TYPE = "fanuc_msgs/srv/GetCartesianPosition_Response";
        /** @brief Original native identity; empty native identity is unqualified. */
        public const string NATIVE_IDENTITY = "";
        /** @brief Complete native field result; scalar, text bound 0. */
        public int field_result = 0;
        /** @brief Complete native field timetag; scalar, text bound 0. */
        public int field_timetag = 0;
        /** @brief Complete native field utool; scalar, text bound 0. */
        public byte field_utool = (byte)0;
        /** @brief Complete native field uframe; scalar, text bound 0. */
        public byte field_uframe = (byte)0;
        /** @brief Complete native field front; scalar, text bound 0. */
        public byte field_front = (byte)0;
        /** @brief Complete native field up; scalar, text bound 0. */
        public byte field_up = (byte)0;
        /** @brief Complete native field left; scalar, text bound 0. */
        public byte field_left = (byte)0;
        /** @brief Complete native field flip; scalar, text bound 0. */
        public byte field_flip = (byte)0;
        /** @brief Complete native field turn4; scalar, text bound 0. */
        public sbyte field_turn4 = (sbyte)0;
        /** @brief Complete native field turn5; scalar, text bound 0. */
        public sbyte field_turn5 = (sbyte)0;
        /** @brief Complete native field turn6; scalar, text bound 0. */
        public sbyte field_turn6 = (sbyte)0;
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
        /** @brief Complete native field ext1; scalar, text bound 0. */
        public float field_ext1 = BitConverter.Int32BitsToSingle(unchecked((int)0x00000000u));
        /** @brief Complete native field ext2; scalar, text bound 0. */
        public float field_ext2 = BitConverter.Int32BitsToSingle(unchecked((int)0x00000000u));
        /** @brief Complete native field ext3; scalar, text bound 0. */
        public float field_ext3 = BitConverter.Int32BitsToSingle(unchecked((int)0x00000000u));
        /** @brief Complete native field group; scalar, text bound 0. */
        public byte field_group = (byte)0;

        /**
         * @brief Construct the complete original default value with owned storage.
         * @details Nested fixed arrays initialize every logical element; sequences
         * start empty. No native capability, pointer, or shared buffer is retained.
         */
        public Ros2Fanuc_msgsSrvGetCartesianPosition_Response()
        {
        }

        /**
         * @brief Encode every field of one complete bounded value.
         * @param value Borrowed stable value; all referenced arrays remain caller-owned.
         * @return Newly owned complete canonical bytes, excluding unused capacity.
         * @details Invalid fields/bounds/semantics throw ArgumentException.
         */
        public static byte[] Encode(Ros2Fanuc_msgsSrvGetCartesianPosition_Response value)
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
        public static Ros2Fanuc_msgsSrvGetCartesianPosition_Response Decode(byte[] bytes)
        {
            if(bytes == null || bytes.Length < MIN_WIRE_BYTES || bytes.Length > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Invalid complete canonical extent");
            }
            Wire.Reader wire = new Wire.Reader(bytes);
            Ros2Fanuc_msgsSrvGetCartesianPosition_Response value = ReadFields(wire);
            wire.Finish();
            return value;
        }

        /**
         * @brief Write this complete nested value within the enclosing aggregate bound.
         * @param wire Borrowed caller-owned finite writer.
         * @param value Borrowed stable complete value.
         * @return No value; invalid fields or aggregate bounds throw before publication.
         */
        internal static void WriteFields(Wire.Writer wire, Ros2Fanuc_msgsSrvGetCartesianPosition_Response value)
        {
            if(value == null)
            {
                throw new ArgumentException("Null canonical record");
            }
            int start = wire.Position;
            wire.I32(value.field_result);
            wire.I32(value.field_timetag);
            wire.U8(value.field_utool);
            wire.U8(value.field_uframe);
            wire.U8(value.field_front);
            wire.U8(value.field_up);
            wire.U8(value.field_left);
            wire.U8(value.field_flip);
            wire.I8(value.field_turn4);
            wire.I8(value.field_turn5);
            wire.I8(value.field_turn6);
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
            if(!float.IsFinite(value.field_ext1))
            {
                throw new ArgumentException("Nonfinite ext1");
            }
            wire.F32(value.field_ext1);
            if(!float.IsFinite(value.field_ext2))
            {
                throw new ArgumentException("Nonfinite ext2");
            }
            wire.F32(value.field_ext2);
            if(!float.IsFinite(value.field_ext3))
            {
                throw new ArgumentException("Nonfinite ext3");
            }
            wire.F32(value.field_ext3);
            wire.U8(value.field_group);
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
        internal static Ros2Fanuc_msgsSrvGetCartesianPosition_Response ReadFields(Wire.Reader wire)
        {
            int start = wire.Position;
            Ros2Fanuc_msgsSrvGetCartesianPosition_Response value = new Ros2Fanuc_msgsSrvGetCartesianPosition_Response();
            value.field_result = wire.I32();
            value.field_timetag = wire.I32();
            value.field_utool = wire.U8();
            value.field_uframe = wire.U8();
            value.field_front = wire.U8();
            value.field_up = wire.U8();
            value.field_left = wire.U8();
            value.field_flip = wire.U8();
            value.field_turn4 = wire.I8();
            value.field_turn5 = wire.I8();
            value.field_turn6 = wire.I8();
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
            value.field_ext1 = wire.F32();
            if(!float.IsFinite(value.field_ext1))
            {
                throw new ArgumentException("Nonfinite ext1");
            }
            value.field_ext2 = wire.F32();
            if(!float.IsFinite(value.field_ext2))
            {
                throw new ArgumentException("Nonfinite ext2");
            }
            value.field_ext3 = wire.F32();
            if(!float.IsFinite(value.field_ext3))
            {
                throw new ArgumentException("Nonfinite ext3");
            }
            value.field_group = wire.U8();
            if(wire.Position - start > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Nested aggregate exceeds registered wire bound");
            }
            return value;
        }
    }
}
