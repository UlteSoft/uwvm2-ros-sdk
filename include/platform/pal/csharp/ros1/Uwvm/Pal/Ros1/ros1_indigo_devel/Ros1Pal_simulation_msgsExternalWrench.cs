using System;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Pal.Ros1.ros1_indigo_devel
{
    /**
     * @brief Complete ROS 1 pal_simulation_msgs/ExternalWrench value and canonical codec.
     * @details All fields, constants, defaults and nested capacities come from the
     * canonical bounded catalog. Instances own their strings/arrays/nested values.
     * Encode/decode perform no ROS operation and confer no authority. Native type
     * identity must still be independently qualified by the deployment registry.
     */
    public sealed class Ros1Pal_simulation_msgsExternalWrench
    {
        /** @brief Exact registered max wire bytes. */
        public const int MAX_WIRE_BYTES = 356;
        /** @brief Exact registered min wire bytes. */
        public const int MIN_WIRE_BYTES = 100;
        /** @brief Original codec identity; empty native identity is unqualified. */
        public const string CODEC_IDENTITY =
            "UWVMROS1_b85249fbffa7b83dd13e2f42d71c5a4136743e892760cf0eb65bbaf3dfd0824c";
        /** @brief Original source type; empty native identity is unqualified. */
        public const string SOURCE_TYPE = "pal_simulation_msgs/ExternalWrench";
        /** @brief Original native identity; empty native identity is unqualified. */
        public const string NATIVE_IDENTITY = "";
        /** @brief Complete native field header; scalar, text bound 0. */
        public Ros1Std_msgsHeader field_header = new Ros1Std_msgsHeader();
        /** @brief Complete native field link_name; scalar, text bound 128. */
        public string field_link_name = "";
        /** @brief Complete native field wrench; scalar, text bound 0. */
        public Ros1Geometry_msgsWrench field_wrench = new Ros1Geometry_msgsWrench();
        /** @brief Complete native field application_point; scalar, text bound 0. */
        public Ros1Geometry_msgsPoint field_application_point = new Ros1Geometry_msgsPoint();
        /** @brief Complete native field duration; scalar, text bound 0. */
        public Ros1Duration field_duration = new Ros1Duration();

        /**
         * @brief Construct the complete original default value with owned storage.
         * @details Nested fixed arrays initialize every logical element; sequences
         * start empty. No native capability, pointer, or shared buffer is retained.
         */
        public Ros1Pal_simulation_msgsExternalWrench()
        {
        }

        /**
         * @brief Encode every field of one complete bounded value.
         * @param value Borrowed stable value; all referenced arrays remain caller-owned.
         * @return Newly owned complete canonical bytes, excluding unused capacity.
         * @details Invalid fields/bounds/semantics throw ArgumentException.
         */
        public static byte[] Encode(Ros1Pal_simulation_msgsExternalWrench value)
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
        public static Ros1Pal_simulation_msgsExternalWrench Decode(byte[] bytes)
        {
            if (bytes == null || bytes.Length < MIN_WIRE_BYTES || bytes.Length > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Invalid complete canonical extent");
            }
            CatalogWire.Reader wire = new CatalogWire.Reader(bytes);
            Ros1Pal_simulation_msgsExternalWrench value = ReadFields(wire);
            wire.Finish();
            return value;
        }

        /**
         * @brief Write this complete nested value within the enclosing aggregate bound.
         * @param wire Borrowed caller-owned finite writer.
         * @param value Borrowed stable complete value.
         * @return No value; invalid fields or aggregate bounds throw before publication.
         */
        internal static void WriteFields(CatalogWire.Writer wire, Ros1Pal_simulation_msgsExternalWrench value)
        {
            if (value == null)
            {
                throw new ArgumentException("Null canonical record");
            }
            int start = wire.Position;
            Ros1Std_msgsHeader.WriteFields(wire, value.field_header);
            wire.String(value.field_link_name, 128);
            Ros1Geometry_msgsWrench.WriteFields(wire, value.field_wrench);
            Ros1Geometry_msgsPoint.WriteFields(wire, value.field_application_point);
            Ros1Duration.WriteFields(wire, value.field_duration);
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
        internal static Ros1Pal_simulation_msgsExternalWrench ReadFields(CatalogWire.Reader wire)
        {
            int start = wire.Position;
            Ros1Pal_simulation_msgsExternalWrench value = new Ros1Pal_simulation_msgsExternalWrench();
            value.field_header = Ros1Std_msgsHeader.ReadFields(wire);
            value.field_link_name = wire.String(128);
            value.field_wrench = Ros1Geometry_msgsWrench.ReadFields(wire);
            value.field_application_point = Ros1Geometry_msgsPoint.ReadFields(wire);
            value.field_duration = Ros1Duration.ReadFields(wire);
            if (wire.Position - start > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Nested aggregate exceeds registered wire bound");
            }
            return value;
        }
    }
}
