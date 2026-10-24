using System;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Pal.Ros1.ros1_indigo_devel
{
    /**
     * @brief Complete ROS 1 pal_walking_msgs/WalkingStep value and canonical codec.
     * @details All fields, constants, defaults and nested capacities come from the
     * canonical bounded catalog. Instances own their strings/arrays/nested values.
     * Encode/decode perform no ROS operation and confer no authority. Native type
     * identity must still be independently qualified by the deployment registry.
     */
    public sealed class Ros1Pal_walking_msgsWalkingStep
    {
        /** @brief Exact registered max wire bytes. */
        public const int MAX_WIRE_BYTES = 181;
        /** @brief Exact registered min wire bytes. */
        public const int MIN_WIRE_BYTES = 53;
        /** @brief Original codec identity; empty native identity is unqualified. */
        public const string CODEC_IDENTITY =
            "UWVMROS1_b6bacf08a7ff7277b0c96730c5b2691540af208dd61f2662990253ba4d1925dd";
        /** @brief Original source type; empty native identity is unqualified. */
        public const string SOURCE_TYPE = "pal_walking_msgs/WalkingStep";
        /** @brief Original native identity; empty native identity is unqualified. */
        public const string NATIVE_IDENTITY = "";
        /** @brief Complete native field header; scalar, text bound 0. */
        public Ros1Std_msgsHeader field_header = new Ros1Std_msgsHeader();
        /** @brief Complete native field step_target; scalar, text bound 0. */
        public Ros1Humanoid_nav_msgsStepTarget field_step_target = new Ros1Humanoid_nav_msgsStepTarget();
        /** @brief Complete native field step_duration; scalar, text bound 0. */
        public Ros1Std_msgsDuration field_step_duration = new Ros1Std_msgsDuration();
        /** @brief Complete native field step_list_size; scalar, text bound 0. */
        public int field_step_list_size = 0;

        /**
         * @brief Construct the complete original default value with owned storage.
         * @details Nested fixed arrays initialize every logical element; sequences
         * start empty. No native capability, pointer, or shared buffer is retained.
         */
        public Ros1Pal_walking_msgsWalkingStep()
        {
        }

        /**
         * @brief Encode every field of one complete bounded value.
         * @param value Borrowed stable value; all referenced arrays remain caller-owned.
         * @return Newly owned complete canonical bytes, excluding unused capacity.
         * @details Invalid fields/bounds/semantics throw ArgumentException.
         */
        public static byte[] Encode(Ros1Pal_walking_msgsWalkingStep value)
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
        public static Ros1Pal_walking_msgsWalkingStep Decode(byte[] bytes)
        {
            if (bytes == null || bytes.Length < MIN_WIRE_BYTES || bytes.Length > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Invalid complete canonical extent");
            }
            CatalogWire.Reader wire = new CatalogWire.Reader(bytes);
            Ros1Pal_walking_msgsWalkingStep value = ReadFields(wire);
            wire.Finish();
            return value;
        }

        /**
         * @brief Write this complete nested value within the enclosing aggregate bound.
         * @param wire Borrowed caller-owned finite writer.
         * @param value Borrowed stable complete value.
         * @return No value; invalid fields or aggregate bounds throw before publication.
         */
        internal static void WriteFields(CatalogWire.Writer wire, Ros1Pal_walking_msgsWalkingStep value)
        {
            if (value == null)
            {
                throw new ArgumentException("Null canonical record");
            }
            int start = wire.Position;
            Ros1Std_msgsHeader.WriteFields(wire, value.field_header);
            Ros1Humanoid_nav_msgsStepTarget.WriteFields(wire, value.field_step_target);
            Ros1Std_msgsDuration.WriteFields(wire, value.field_step_duration);
            wire.I32(value.field_step_list_size);
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
        internal static Ros1Pal_walking_msgsWalkingStep ReadFields(CatalogWire.Reader wire)
        {
            int start = wire.Position;
            Ros1Pal_walking_msgsWalkingStep value = new Ros1Pal_walking_msgsWalkingStep();
            value.field_header = Ros1Std_msgsHeader.ReadFields(wire);
            value.field_step_target = Ros1Humanoid_nav_msgsStepTarget.ReadFields(wire);
            value.field_step_duration = Ros1Std_msgsDuration.ReadFields(wire);
            value.field_step_list_size = wire.I32();
            if (wire.Position - start > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Nested aggregate exceeds registered wire bound");
            }
            return value;
        }
    }
}
