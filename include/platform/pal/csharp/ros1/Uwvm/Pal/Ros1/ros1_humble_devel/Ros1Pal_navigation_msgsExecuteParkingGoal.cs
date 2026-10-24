using System;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Pal.Ros1.ros1_humble_devel
{
    /**
     * @brief Complete ROS 1 pal_navigation_msgs/ExecuteParkingGoal value and canonical codec.
     * @details All fields, constants, defaults and nested capacities come from the
     * canonical bounded catalog. Instances own their strings/arrays/nested values.
     * Encode/decode perform no ROS operation and confer no authority. Native type
     * identity must still be independently qualified by the deployment registry.
     */
    public sealed class Ros1Pal_navigation_msgsExecuteParkingGoal
    {
        /** @brief Exact registered max wire bytes. */
        public const int MAX_WIRE_BYTES = 281;
        /** @brief Exact registered min wire bytes. */
        public const int MIN_WIRE_BYTES = 25;
        /** @brief Original codec identity; empty native identity is unqualified. */
        public const string CODEC_IDENTITY =
            "UWVMROS1_5bc772cbbc3a5f90165c84a9f5d81d961a789e78bbbf2fe19706d76be3e3dfae";
        /** @brief Original source type; empty native identity is unqualified. */
        public const string SOURCE_TYPE = "pal_navigation_msgs/ExecuteParkingGoal";
        /** @brief Original native identity; empty native identity is unqualified. */
        public const string NATIVE_IDENTITY = "";
        /** @brief Complete native field source_frame; scalar, text bound 128. */
        public string field_source_frame = "";
        /** @brief Complete native field target_frame; scalar, text bound 128. */
        public string field_target_frame = "";
        /** @brief Complete native field backwards; scalar, text bound 0. */
        public bool field_backwards = false;
        /** @brief Complete native field max_lin_vel; scalar, text bound 0. */
        public double field_max_lin_vel = BitConverter.Int64BitsToDouble(unchecked((long)0x0000000000000000UL));
        /** @brief Complete native field max_rot_vel; scalar, text bound 0. */
        public double field_max_rot_vel = BitConverter.Int64BitsToDouble(unchecked((long)0x0000000000000000UL));

        /**
         * @brief Construct the complete original default value with owned storage.
         * @details Nested fixed arrays initialize every logical element; sequences
         * start empty. No native capability, pointer, or shared buffer is retained.
         */
        public Ros1Pal_navigation_msgsExecuteParkingGoal()
        {
        }

        /**
         * @brief Encode every field of one complete bounded value.
         * @param value Borrowed stable value; all referenced arrays remain caller-owned.
         * @return Newly owned complete canonical bytes, excluding unused capacity.
         * @details Invalid fields/bounds/semantics throw ArgumentException.
         */
        public static byte[] Encode(Ros1Pal_navigation_msgsExecuteParkingGoal value)
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
        public static Ros1Pal_navigation_msgsExecuteParkingGoal Decode(byte[] bytes)
        {
            if (bytes == null || bytes.Length < MIN_WIRE_BYTES || bytes.Length > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Invalid complete canonical extent");
            }
            CatalogWire.Reader wire = new CatalogWire.Reader(bytes);
            Ros1Pal_navigation_msgsExecuteParkingGoal value = ReadFields(wire);
            wire.Finish();
            return value;
        }

        /**
         * @brief Write this complete nested value within the enclosing aggregate bound.
         * @param wire Borrowed caller-owned finite writer.
         * @param value Borrowed stable complete value.
         * @return No value; invalid fields or aggregate bounds throw before publication.
         */
        internal static void WriteFields(CatalogWire.Writer wire, Ros1Pal_navigation_msgsExecuteParkingGoal value)
        {
            if (value == null)
            {
                throw new ArgumentException("Null canonical record");
            }
            int start = wire.Position;
            wire.String(value.field_source_frame, 128);
            wire.String(value.field_target_frame, 128);
            wire.Bool(value.field_backwards);
            if (!double.IsFinite(value.field_max_lin_vel))
            {
                throw new ArgumentException("Nonfinite max_lin_vel");
            }
            wire.F64(value.field_max_lin_vel);
            if (!double.IsFinite(value.field_max_rot_vel))
            {
                throw new ArgumentException("Nonfinite max_rot_vel");
            }
            wire.F64(value.field_max_rot_vel);
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
        internal static Ros1Pal_navigation_msgsExecuteParkingGoal ReadFields(CatalogWire.Reader wire)
        {
            int start = wire.Position;
            Ros1Pal_navigation_msgsExecuteParkingGoal value = new Ros1Pal_navigation_msgsExecuteParkingGoal();
            value.field_source_frame = wire.String(128);
            value.field_target_frame = wire.String(128);
            value.field_backwards = wire.Bool();
            value.field_max_lin_vel = wire.F64();
            if (!double.IsFinite(value.field_max_lin_vel))
            {
                throw new ArgumentException("Nonfinite max_lin_vel");
            }
            value.field_max_rot_vel = wire.F64();
            if (!double.IsFinite(value.field_max_rot_vel))
            {
                throw new ArgumentException("Nonfinite max_rot_vel");
            }
            if (wire.Position - start > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Nested aggregate exceeds registered wire bound");
            }
            return value;
        }
    }
}
