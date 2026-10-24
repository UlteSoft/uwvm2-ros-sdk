/**
 * @file Ros1Abb_rapid_sm_addin_msgsEGMSettings.cs
 * @brief Represent the complete original ABB ROS 1 canonical value catalog.
 * @details The caller owns every record and its finite dynamic backing storage. Codecs retain all
 * fields, original constants and native defaults; field units and frames follow the retained
 * definitions. Malformed or out-of-bound wire values are rejected. These are guest values rather than
 * native ROS objects; importing them grants no transport alias.
 */
using System;
using Uwvm.Ros;

namespace Uwvm.Abb.Ros1
{
    /**
     * @brief Complete ROS 1 abb_rapid_sm_addin_msgs/EGMSettings value and canonical codec.
     * @details All fields, constants, defaults and nested capacities come from the
     * canonical bounded catalog. Instances own their strings/arrays/nested values.
     * Encode/decode perform no ROS operation and confer no authority. Native type
     * identity must still be independently qualified by the deployment registry.
     */
    public sealed class Ros1Abb_rapid_sm_addin_msgsEGMSettings
    {
        /** @brief Exact registered max wire bytes. */
        public const int MAX_WIRE_BYTES = 767;
        /** @brief Exact registered min wire bytes. */
        public const int MIN_WIRE_BYTES = 255;
        /** @brief Original codec identity; empty native identity is unqualified. */
        public const string CODEC_IDENTITY = "UWVMROS1_ebc0ca24a54451f863964c74bf0257b5b25546d0d4b8a75ac75c265e1d62317b";
        /** @brief Original source type; empty native identity is unqualified. */
        public const string SOURCE_TYPE = "abb_rapid_sm_addin_msgs/EGMSettings";
        /** @brief Original native identity; empty native identity is unqualified. */
        public const string NATIVE_IDENTITY = "";
        /** @brief Complete native field allow_egm_motions; scalar, text bound 0. */
        public bool field_allow_egm_motions = false;
        /** @brief Complete native field use_presync; scalar, text bound 0. */
        public bool field_use_presync = false;
        /** @brief Complete native field setup_uc; scalar, text bound 0. */
        public Ros1Abb_rapid_sm_addin_msgsEGMSetupSettings field_setup_uc = new Ros1Abb_rapid_sm_addin_msgsEGMSetupSettings();
        /** @brief Complete native field activate; scalar, text bound 0. */
        public Ros1Abb_rapid_sm_addin_msgsEGMActivateSettings field_activate = new Ros1Abb_rapid_sm_addin_msgsEGMActivateSettings();
        /** @brief Complete native field run; scalar, text bound 0. */
        public Ros1Abb_rapid_sm_addin_msgsEGMRunSettings field_run = new Ros1Abb_rapid_sm_addin_msgsEGMRunSettings();
        /** @brief Complete native field stop; scalar, text bound 0. */
        public Ros1Abb_rapid_sm_addin_msgsEGMStopSettings field_stop = new Ros1Abb_rapid_sm_addin_msgsEGMStopSettings();

        /**
         * @brief Construct the complete original default value with owned storage.
         * @details Nested fixed arrays initialize every logical element; sequences
         * start empty. No native capability, pointer, or shared buffer is retained.
         */
        public Ros1Abb_rapid_sm_addin_msgsEGMSettings()
        {
        }

        /**
         * @brief Encode every field of one complete bounded value.
         * @param value Borrowed stable value; all referenced arrays remain caller-owned.
         * @return Newly owned complete canonical bytes, excluding unused capacity.
         * @details Invalid fields/bounds/semantics throw ArgumentException.
         */
        public static byte[] Encode(Ros1Abb_rapid_sm_addin_msgsEGMSettings value)
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
        public static Ros1Abb_rapid_sm_addin_msgsEGMSettings Decode(byte[] bytes)
        {
            if(bytes == null || bytes.Length < MIN_WIRE_BYTES || bytes.Length > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Invalid complete canonical extent");
            }
            Wire.Reader wire = new Wire.Reader(bytes);
            Ros1Abb_rapid_sm_addin_msgsEGMSettings value = ReadFields(wire);
            wire.Finish();
            return value;
        }

        /**
         * @brief Write this complete nested value within the enclosing aggregate bound.
         * @param wire Borrowed caller-owned finite writer.
         * @param value Borrowed stable complete value.
         * @return No value; invalid fields or aggregate bounds throw before publication.
         */
        internal static void WriteFields(Wire.Writer wire, Ros1Abb_rapid_sm_addin_msgsEGMSettings value)
        {
            if(value == null)
            {
                throw new ArgumentException("Null canonical record");
            }
            int start = wire.Position;
            wire.Bool(value.field_allow_egm_motions);
            wire.Bool(value.field_use_presync);
            Ros1Abb_rapid_sm_addin_msgsEGMSetupSettings.WriteFields(wire, value.field_setup_uc);
            Ros1Abb_rapid_sm_addin_msgsEGMActivateSettings.WriteFields(wire, value.field_activate);
            Ros1Abb_rapid_sm_addin_msgsEGMRunSettings.WriteFields(wire, value.field_run);
            Ros1Abb_rapid_sm_addin_msgsEGMStopSettings.WriteFields(wire, value.field_stop);
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
        internal static Ros1Abb_rapid_sm_addin_msgsEGMSettings ReadFields(Wire.Reader wire)
        {
            int start = wire.Position;
            Ros1Abb_rapid_sm_addin_msgsEGMSettings value = new Ros1Abb_rapid_sm_addin_msgsEGMSettings();
            value.field_allow_egm_motions = wire.Bool();
            value.field_use_presync = wire.Bool();
            value.field_setup_uc = Ros1Abb_rapid_sm_addin_msgsEGMSetupSettings.ReadFields(wire);
            value.field_activate = Ros1Abb_rapid_sm_addin_msgsEGMActivateSettings.ReadFields(wire);
            value.field_run = Ros1Abb_rapid_sm_addin_msgsEGMRunSettings.ReadFields(wire);
            value.field_stop = Ros1Abb_rapid_sm_addin_msgsEGMStopSettings.ReadFields(wire);
            if(wire.Position - start > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Nested aggregate exceeds registered wire bound");
            }
            return value;
        }
    }
}
