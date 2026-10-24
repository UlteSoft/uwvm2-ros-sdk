using System;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Pal.Ros1.ros1_humble_devel
{
    /**
     * @brief Complete ROS 1 pal_navigation_msgs/ServiceStatus value and canonical codec.
     * @details All fields, constants, defaults and nested capacities come from the
     * canonical bounded catalog. Instances own their strings/arrays/nested values.
     * Encode/decode perform no ROS operation and confer no authority. Native type
     * identity must still be independently qualified by the deployment registry.
     */
    public sealed class Ros1Pal_navigation_msgsServiceStatus
    {
        /** @brief Exact registered max wire bytes. */
        public const int MAX_WIRE_BYTES = 146;
        /** @brief Exact registered min wire bytes. */
        public const int MIN_WIRE_BYTES = 18;
        /** @brief Original codec identity; empty native identity is unqualified. */
        public const string CODEC_IDENTITY =
            "UWVMROS1_c08ab79758b14d1722aaaf425096153a299db64bf4efa8f154d08f20b0d68622";
        /** @brief Original source type; empty native identity is unqualified. */
        public const string SOURCE_TYPE = "pal_navigation_msgs/ServiceStatus";
        /** @brief Original native identity; empty native identity is unqualified. */
        public const string NATIVE_IDENTITY = "";
        /** @brief Complete native field serviceName; scalar, text bound 128. */
        public string field_serviceName = "";
        /** @brief Complete native field is_running; scalar, text bound 0. */
        public bool field_is_running = false;
        /** @brief Complete native field update_frequency; scalar, text bound 0. */
        public float field_update_frequency = BitConverter.Int32BitsToSingle(unchecked((int)0x00000000u));
        /** @brief Complete native field latest_run_time; scalar, text bound 0. */
        public Ros1Time field_latest_run_time = new Ros1Time();
        /** @brief Complete native field status; scalar, text bound 0. */
        public bool field_status = false;

        /**
         * @brief Construct the complete original default value with owned storage.
         * @details Nested fixed arrays initialize every logical element; sequences
         * start empty. No native capability, pointer, or shared buffer is retained.
         */
        public Ros1Pal_navigation_msgsServiceStatus()
        {
        }

        /**
         * @brief Encode every field of one complete bounded value.
         * @param value Borrowed stable value; all referenced arrays remain caller-owned.
         * @return Newly owned complete canonical bytes, excluding unused capacity.
         * @details Invalid fields/bounds/semantics throw ArgumentException.
         */
        public static byte[] Encode(Ros1Pal_navigation_msgsServiceStatus value)
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
        public static Ros1Pal_navigation_msgsServiceStatus Decode(byte[] bytes)
        {
            if (bytes == null || bytes.Length < MIN_WIRE_BYTES || bytes.Length > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Invalid complete canonical extent");
            }
            CatalogWire.Reader wire = new CatalogWire.Reader(bytes);
            Ros1Pal_navigation_msgsServiceStatus value = ReadFields(wire);
            wire.Finish();
            return value;
        }

        /**
         * @brief Write this complete nested value within the enclosing aggregate bound.
         * @param wire Borrowed caller-owned finite writer.
         * @param value Borrowed stable complete value.
         * @return No value; invalid fields or aggregate bounds throw before publication.
         */
        internal static void WriteFields(CatalogWire.Writer wire, Ros1Pal_navigation_msgsServiceStatus value)
        {
            if (value == null)
            {
                throw new ArgumentException("Null canonical record");
            }
            int start = wire.Position;
            wire.String(value.field_serviceName, 128);
            wire.Bool(value.field_is_running);
            if (!float.IsFinite(value.field_update_frequency))
            {
                throw new ArgumentException("Nonfinite update_frequency");
            }
            wire.F32(value.field_update_frequency);
            Ros1Time.WriteFields(wire, value.field_latest_run_time);
            wire.Bool(value.field_status);
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
        internal static Ros1Pal_navigation_msgsServiceStatus ReadFields(CatalogWire.Reader wire)
        {
            int start = wire.Position;
            Ros1Pal_navigation_msgsServiceStatus value = new Ros1Pal_navigation_msgsServiceStatus();
            value.field_serviceName = wire.String(128);
            value.field_is_running = wire.Bool();
            value.field_update_frequency = wire.F32();
            if (!float.IsFinite(value.field_update_frequency))
            {
                throw new ArgumentException("Nonfinite update_frequency");
            }
            value.field_latest_run_time = Ros1Time.ReadFields(wire);
            value.field_status = wire.Bool();
            if (wire.Position - start > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Nested aggregate exceeds registered wire bound");
            }
            return value;
        }
    }
}
