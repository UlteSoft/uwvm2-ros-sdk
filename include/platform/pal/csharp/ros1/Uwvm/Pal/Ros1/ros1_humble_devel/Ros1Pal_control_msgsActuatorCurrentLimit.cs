using System;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Pal.Ros1.ros1_humble_devel
{
    /**
     * @brief Complete ROS 1 pal_control_msgs/ActuatorCurrentLimit value and canonical codec.
     * @details All fields, constants, defaults and nested capacities come from the
     * canonical bounded catalog. Instances own their strings/arrays/nested values.
     * Encode/decode perform no ROS operation and confer no authority. Native type
     * identity must still be independently qualified by the deployment registry.
     */
    public sealed class Ros1Pal_control_msgsActuatorCurrentLimit
    {
        /** @brief Exact registered max wire bytes. */
        public const int MAX_WIRE_BYTES = 2248;
        /** @brief Exact registered min wire bytes. */
        public const int MIN_WIRE_BYTES = 8;
        /** @brief Original codec identity; empty native identity is unqualified. */
        public const string CODEC_IDENTITY =
            "UWVMROS1_cf7369861a4d556cc9edc22cc60c79f484ca84e295c508a2ff7d7332247addbe";
        /** @brief Original source type; empty native identity is unqualified. */
        public const string SOURCE_TYPE = "pal_control_msgs/ActuatorCurrentLimit";
        /** @brief Original native identity; empty native identity is unqualified. */
        public const string NATIVE_IDENTITY = "";
        /** @brief Complete native field actuator_names; sequence capacity 16, text bound 128. */
        public string[] field_actuator_names = new string[0];
        /** @brief Complete native field current_limits; sequence capacity 16, text bound 0. */
        public double[] field_current_limits = new double[0];

        /**
         * @brief Construct the complete original default value with owned storage.
         * @details Nested fixed arrays initialize every logical element; sequences
         * start empty. No native capability, pointer, or shared buffer is retained.
         */
        public Ros1Pal_control_msgsActuatorCurrentLimit()
        {
        }

        /**
         * @brief Encode every field of one complete bounded value.
         * @param value Borrowed stable value; all referenced arrays remain caller-owned.
         * @return Newly owned complete canonical bytes, excluding unused capacity.
         * @details Invalid fields/bounds/semantics throw ArgumentException.
         */
        public static byte[] Encode(Ros1Pal_control_msgsActuatorCurrentLimit value)
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
        public static Ros1Pal_control_msgsActuatorCurrentLimit Decode(byte[] bytes)
        {
            if (bytes == null || bytes.Length < MIN_WIRE_BYTES || bytes.Length > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Invalid complete canonical extent");
            }
            CatalogWire.Reader wire = new CatalogWire.Reader(bytes);
            Ros1Pal_control_msgsActuatorCurrentLimit value = ReadFields(wire);
            wire.Finish();
            return value;
        }

        /**
         * @brief Write this complete nested value within the enclosing aggregate bound.
         * @param wire Borrowed caller-owned finite writer.
         * @param value Borrowed stable complete value.
         * @return No value; invalid fields or aggregate bounds throw before publication.
         */
        internal static void WriteFields(CatalogWire.Writer wire, Ros1Pal_control_msgsActuatorCurrentLimit value)
        {
            if (value == null)
            {
                throw new ArgumentException("Null canonical record");
            }
            int start = wire.Position;
            if (value.field_actuator_names == null || value.field_actuator_names.Length > 16)
            {
                throw new ArgumentException("Invalid actuator_names extent");
            }
            wire.U32((uint)value.field_actuator_names.Length);
            for (int index = 0; index < value.field_actuator_names.Length; ++index)
            {
                wire.String(value.field_actuator_names[index], 128);
            }
            if (value.field_current_limits == null || value.field_current_limits.Length > 16)
            {
                throw new ArgumentException("Invalid current_limits extent");
            }
            wire.U32((uint)value.field_current_limits.Length);
            for (int index = 0; index < value.field_current_limits.Length; ++index)
            {
                if (!double.IsFinite(value.field_current_limits[index]))
                {
                    throw new ArgumentException("Nonfinite current_limits");
                }
                wire.F64(value.field_current_limits[index]);
            }
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
        internal static Ros1Pal_control_msgsActuatorCurrentLimit ReadFields(CatalogWire.Reader wire)
        {
            int start = wire.Position;
            Ros1Pal_control_msgsActuatorCurrentLimit value = new Ros1Pal_control_msgsActuatorCurrentLimit();
            value.field_actuator_names = new string[wire.Count(16)];
            for (int index = 0; index < value.field_actuator_names.Length; ++index)
            {
                value.field_actuator_names[index] = wire.String(128);
            }
            value.field_current_limits = new double[wire.Count(16)];
            for (int index = 0; index < value.field_current_limits.Length; ++index)
            {
                value.field_current_limits[index] = wire.F64();
                if (!double.IsFinite(value.field_current_limits[index]))
                {
                    throw new ArgumentException("Nonfinite current_limits");
                }
            }
            if (wire.Position - start > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Nested aggregate exceeds registered wire bound");
            }
            return value;
        }
    }
}
