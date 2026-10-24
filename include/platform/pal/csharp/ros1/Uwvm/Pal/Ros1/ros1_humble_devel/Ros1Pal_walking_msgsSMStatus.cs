using System;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Pal.Ros1.ros1_humble_devel
{
    /**
     * @brief Complete ROS 1 pal_walking_msgs/SMStatus value and canonical codec.
     * @details All fields, constants, defaults and nested capacities come from the
     * canonical bounded catalog. Instances own their strings/arrays/nested values.
     * Encode/decode perform no ROS operation and confer no authority. Native type
     * identity must still be independently qualified by the deployment registry.
     */
    public sealed class Ros1Pal_walking_msgsSMStatus
    {
        /** @brief Exact registered max wire bytes. */
        public const int MAX_WIRE_BYTES = 170;
        /** @brief Exact registered min wire bytes. */
        public const int MIN_WIRE_BYTES = 170;
        /** @brief Original codec identity; empty native identity is unqualified. */
        public const string CODEC_IDENTITY =
            "UWVMROS1_490c0966b36899ce64a1271d9c1eaf9802b9285eb7835b0565a3e2bbf01a0c6e";
        /** @brief Original source type; empty native identity is unqualified. */
        public const string SOURCE_TYPE = "pal_walking_msgs/SMStatus";
        /** @brief Original native identity; empty native identity is unqualified. */
        public const string NATIVE_IDENTITY = "";
        /** @brief Original source constant right; consumes no instance wire bytes. */
        public const byte CONST_right = (byte)1;
        /** @brief Original source constant left; consumes no instance wire bytes. */
        public const byte CONST_left = (byte)0;
        /** @brief Complete native field left_foot_pose; scalar, text bound 0. */
        public Ros1Geometry_msgsPose field_left_foot_pose = new Ros1Geometry_msgsPose();
        /** @brief Complete native field right_foot_pose; scalar, text bound 0. */
        public Ros1Geometry_msgsPose field_right_foot_pose = new Ros1Geometry_msgsPose();
        /** @brief Complete native field stance_foot_side; scalar, text bound 0. */
        public byte field_stance_foot_side = (byte)0;
        /** @brief Complete native field future_swing_landing_pose; scalar, text bound 0. */
        public Ros1Geometry_msgsPose field_future_swing_landing_pose = new Ros1Geometry_msgsPose();
        /** @brief Complete native field future_swing_side; scalar, text bound 0. */
        public byte field_future_swing_side = (byte)0;

        /**
         * @brief Construct the complete original default value with owned storage.
         * @details Nested fixed arrays initialize every logical element; sequences
         * start empty. No native capability, pointer, or shared buffer is retained.
         */
        public Ros1Pal_walking_msgsSMStatus()
        {
        }

        /**
         * @brief Encode every field of one complete bounded value.
         * @param value Borrowed stable value; all referenced arrays remain caller-owned.
         * @return Newly owned complete canonical bytes, excluding unused capacity.
         * @details Invalid fields/bounds/semantics throw ArgumentException.
         */
        public static byte[] Encode(Ros1Pal_walking_msgsSMStatus value)
        {
            CatalogWire.Writer wire = new CatalogWire.Writer(MAX_WIRE_BYTES);
            WriteFields(wire, value);
            return wire.Finish();
        }

        /**
         * @brief Decode transactionally with exact extent and trailing-byte checks.
         * @param bytes Borrowed immutable complete canonical body.
         * @return Newly owned full value; failed decoding commits no caller storage.
         * @details Invalid wire, text, bounds or semantics throw ArgumentException.
         */
        public static Ros1Pal_walking_msgsSMStatus Decode(byte[] bytes)
        {
            if (bytes == null || bytes.Length < MIN_WIRE_BYTES || bytes.Length > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Invalid complete canonical extent");
            }
            CatalogWire.Reader wire = new CatalogWire.Reader(bytes);
            Ros1Pal_walking_msgsSMStatus value = ReadFields(wire);
            wire.Finish();
            return value;
        }

        /**
         * @brief Write this complete nested value within the enclosing aggregate bound.
         * @param wire Borrowed caller-owned finite writer.
         * @param value Borrowed stable complete value.
         * @return No value; invalid fields or aggregate bounds throw before publication.
         */
        internal static void WriteFields(CatalogWire.Writer wire, Ros1Pal_walking_msgsSMStatus value)
        {
            if (value == null)
            {
                throw new ArgumentException("Null canonical record");
            }
            int start = wire.Position;
            Ros1Geometry_msgsPose.WriteFields(wire, value.field_left_foot_pose);
            Ros1Geometry_msgsPose.WriteFields(wire, value.field_right_foot_pose);
            wire.U8(value.field_stance_foot_side);
            Ros1Geometry_msgsPose.WriteFields(wire, value.field_future_swing_landing_pose);
            wire.U8(value.field_future_swing_side);
            if (wire.Position - start > MAX_WIRE_BYTES)
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
        internal static Ros1Pal_walking_msgsSMStatus ReadFields(CatalogWire.Reader wire)
        {
            int start = wire.Position;
            Ros1Pal_walking_msgsSMStatus value = new Ros1Pal_walking_msgsSMStatus();
            value.field_left_foot_pose = Ros1Geometry_msgsPose.ReadFields(wire);
            value.field_right_foot_pose = Ros1Geometry_msgsPose.ReadFields(wire);
            value.field_stance_foot_side = wire.U8();
            value.field_future_swing_landing_pose = Ros1Geometry_msgsPose.ReadFields(wire);
            value.field_future_swing_side = wire.U8();
            if (wire.Position - start > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Nested aggregate exceeds registered wire bound");
            }
            return value;
        }
    }
}
