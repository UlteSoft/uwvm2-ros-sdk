using System;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Pal.Ros1.ros1_indigo_devel
{
    /**
     * @brief Complete ROS 1 pal_walking_msgs/StepOverRequest value and canonical codec.
     * @details All fields, constants, defaults and nested capacities come from the
     * canonical bounded catalog. Instances own their strings/arrays/nested values.
     * Encode/decode perform no ROS operation and confer no authority. Native type
     * identity must still be independently qualified by the deployment registry.
     */
    public sealed class Ros1Pal_walking_msgsStepOverRequest
    {
        /** @brief Exact registered max wire bytes. */
        public const int MAX_WIRE_BYTES = 32;
        /** @brief Exact registered min wire bytes. */
        public const int MIN_WIRE_BYTES = 32;
        /** @brief Original codec identity; empty native identity is unqualified. */
        public const string CODEC_IDENTITY =
            "UWVMROS1_00736de4ce830d33f33d93ca8c703dfc555f0ecc2ac86d90002929f4cefaedde";
        /** @brief Original source type; empty native identity is unqualified. */
        public const string SOURCE_TYPE = "pal_walking_msgs/StepOverRequest";
        /** @brief Original native identity; empty native identity is unqualified. */
        public const string NATIVE_IDENTITY = "";
        /** @brief Complete native field step_length; scalar, text bound 0. */
        public double field_step_length = BitConverter.Int64BitsToDouble(unchecked((long)0x0000000000000000UL));
        /** @brief Complete native field step_time; scalar, text bound 0. */
        public double field_step_time = BitConverter.Int64BitsToDouble(unchecked((long)0x0000000000000000UL));
        /** @brief Complete native field step_height; scalar, text bound 0. */
        public double field_step_height = BitConverter.Int64BitsToDouble(unchecked((long)0x0000000000000000UL));
        /** @brief Complete native field z_lipm; scalar, text bound 0. */
        public double field_z_lipm = BitConverter.Int64BitsToDouble(unchecked((long)0x0000000000000000UL));

        /**
         * @brief Construct the complete original default value with owned storage.
         * @details Nested fixed arrays initialize every logical element; sequences
         * start empty. No native capability, pointer, or shared buffer is retained.
         */
        public Ros1Pal_walking_msgsStepOverRequest()
        {
        }

        /**
         * @brief Encode every field of one complete bounded value.
         * @param value Borrowed stable value; all referenced arrays remain caller-owned.
         * @return Newly owned complete canonical bytes, excluding unused capacity.
         * @details Invalid fields/bounds/semantics throw ArgumentException.
         */
        public static byte[] Encode(Ros1Pal_walking_msgsStepOverRequest value)
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
        public static Ros1Pal_walking_msgsStepOverRequest Decode(byte[] bytes)
        {
            if (bytes == null || bytes.Length < MIN_WIRE_BYTES || bytes.Length > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Invalid complete canonical extent");
            }
            CatalogWire.Reader wire = new CatalogWire.Reader(bytes);
            Ros1Pal_walking_msgsStepOverRequest value = ReadFields(wire);
            wire.Finish();
            return value;
        }

        /**
         * @brief Write this complete nested value within the enclosing aggregate bound.
         * @param wire Borrowed caller-owned finite writer.
         * @param value Borrowed stable complete value.
         * @return No value; invalid fields or aggregate bounds throw before publication.
         */
        internal static void WriteFields(CatalogWire.Writer wire, Ros1Pal_walking_msgsStepOverRequest value)
        {
            if (value == null)
            {
                throw new ArgumentException("Null canonical record");
            }
            int start = wire.Position;
            if (!double.IsFinite(value.field_step_length))
            {
                throw new ArgumentException("Nonfinite step_length");
            }
            wire.F64(value.field_step_length);
            if (!double.IsFinite(value.field_step_time))
            {
                throw new ArgumentException("Nonfinite step_time");
            }
            wire.F64(value.field_step_time);
            if (!double.IsFinite(value.field_step_height))
            {
                throw new ArgumentException("Nonfinite step_height");
            }
            wire.F64(value.field_step_height);
            if (!double.IsFinite(value.field_z_lipm))
            {
                throw new ArgumentException("Nonfinite z_lipm");
            }
            wire.F64(value.field_z_lipm);
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
        internal static Ros1Pal_walking_msgsStepOverRequest ReadFields(CatalogWire.Reader wire)
        {
            int start = wire.Position;
            Ros1Pal_walking_msgsStepOverRequest value = new Ros1Pal_walking_msgsStepOverRequest();
            value.field_step_length = wire.F64();
            if (!double.IsFinite(value.field_step_length))
            {
                throw new ArgumentException("Nonfinite step_length");
            }
            value.field_step_time = wire.F64();
            if (!double.IsFinite(value.field_step_time))
            {
                throw new ArgumentException("Nonfinite step_time");
            }
            value.field_step_height = wire.F64();
            if (!double.IsFinite(value.field_step_height))
            {
                throw new ArgumentException("Nonfinite step_height");
            }
            value.field_z_lipm = wire.F64();
            if (!double.IsFinite(value.field_z_lipm))
            {
                throw new ArgumentException("Nonfinite z_lipm");
            }
            if (wire.Position - start > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Nested aggregate exceeds registered wire bound");
            }
            return value;
        }
    }
}
