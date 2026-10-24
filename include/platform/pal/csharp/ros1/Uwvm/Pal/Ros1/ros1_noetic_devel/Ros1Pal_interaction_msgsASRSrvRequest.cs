using System;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Pal.Ros1.ros1_noetic_devel
{
    /**
     * @brief Complete ROS 1 pal_interaction_msgs/ASRSrvRequest value and canonical codec.
     * @details All fields, constants, defaults and nested capacities come from the
     * canonical bounded catalog. Instances own their strings/arrays/nested values.
     * Encode/decode perform no ROS operation and confer no authority. Native type
     * identity must still be independently qualified by the deployment registry.
     */
    public sealed class Ros1Pal_interaction_msgsASRSrvRequest
    {
        /** @brief Exact registered max wire bytes. */
        public const int MAX_WIRE_BYTES = 526;
        /** @brief Exact registered min wire bytes. */
        public const int MIN_WIRE_BYTES = 14;
        /** @brief Original codec identity; empty native identity is unqualified. */
        public const string CODEC_IDENTITY =
            "UWVMROS1_3a7fc134e8d1e0c32421ff0ad9831a892e7bc94b211d8309f8a2c2e99720e170";
        /** @brief Original source type; empty native identity is unqualified. */
        public const string SOURCE_TYPE = "pal_interaction_msgs/ASRSrvRequest";
        /** @brief Original native identity; empty native identity is unqualified. */
        public const string NATIVE_IDENTITY = "";
        /** @brief Original source constant ACTIVATION; consumes no instance wire bytes. */
        public const sbyte CONST_ACTIVATION = (sbyte)1;
        /** @brief Original source constant GRAMMAR; consumes no instance wire bytes. */
        public const sbyte CONST_GRAMMAR = (sbyte)2;
        /** @brief Original source constant LANGUAGE; consumes no instance wire bytes. */
        public const sbyte CONST_LANGUAGE = (sbyte)3;
        /** @brief Original source constant STATUS; consumes no instance wire bytes. */
        public const sbyte CONST_STATUS = (sbyte)4;
        /** @brief Original source constant KWSPOTTING; consumes no instance wire bytes. */
        public const sbyte CONST_KWSPOTTING = (sbyte)5;
        /** @brief Complete native field requests; sequence capacity 256, text bound 0. */
        public sbyte[] field_requests = new sbyte[0];
        /** @brief Complete native field activation; scalar, text bound 0. */
        public Ros1Pal_interaction_msgsASRActivation field_activation = new Ros1Pal_interaction_msgsASRActivation();
        /** @brief Complete native field model; scalar, text bound 0. */
        public Ros1Pal_interaction_msgsASRLangModelMngmt field_model = new Ros1Pal_interaction_msgsASRLangModelMngmt();
        /** @brief Complete native field lang; scalar, text bound 0. */
        public Ros1Pal_interaction_msgsASRLanguage field_lang = new Ros1Pal_interaction_msgsASRLanguage();

        /**
         * @brief Construct the complete original default value with owned storage.
         * @details Nested fixed arrays initialize every logical element; sequences
         * start empty. No native capability, pointer, or shared buffer is retained.
         */
        public Ros1Pal_interaction_msgsASRSrvRequest()
        {
        }

        /**
         * @brief Encode every field of one complete bounded value.
         * @param value Borrowed stable value; all referenced arrays remain caller-owned.
         * @return Newly owned complete canonical bytes, excluding unused capacity.
         * @details Invalid fields/bounds/semantics throw ArgumentException.
         */
        public static byte[] Encode(Ros1Pal_interaction_msgsASRSrvRequest value)
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
        public static Ros1Pal_interaction_msgsASRSrvRequest Decode(byte[] bytes)
        {
            if (bytes == null || bytes.Length < MIN_WIRE_BYTES || bytes.Length > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Invalid complete canonical extent");
            }
            CatalogWire.Reader wire = new CatalogWire.Reader(bytes);
            Ros1Pal_interaction_msgsASRSrvRequest value = ReadFields(wire);
            wire.Finish();
            return value;
        }

        /**
         * @brief Write this complete nested value within the enclosing aggregate bound.
         * @param wire Borrowed caller-owned finite writer.
         * @param value Borrowed stable complete value.
         * @return No value; invalid fields or aggregate bounds throw before publication.
         */
        internal static void WriteFields(CatalogWire.Writer wire, Ros1Pal_interaction_msgsASRSrvRequest value)
        {
            if (value == null)
            {
                throw new ArgumentException("Null canonical record");
            }
            int start = wire.Position;
            if (value.field_requests == null || value.field_requests.Length > 256)
            {
                throw new ArgumentException("Invalid requests extent");
            }
            wire.U32((uint)value.field_requests.Length);
            for (int index = 0; index < value.field_requests.Length; ++index)
            {
                wire.I8(value.field_requests[index]);
            }
            Ros1Pal_interaction_msgsASRActivation.WriteFields(wire, value.field_activation);
            Ros1Pal_interaction_msgsASRLangModelMngmt.WriteFields(wire, value.field_model);
            Ros1Pal_interaction_msgsASRLanguage.WriteFields(wire, value.field_lang);
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
        internal static Ros1Pal_interaction_msgsASRSrvRequest ReadFields(CatalogWire.Reader wire)
        {
            int start = wire.Position;
            Ros1Pal_interaction_msgsASRSrvRequest value = new Ros1Pal_interaction_msgsASRSrvRequest();
            value.field_requests = new sbyte[wire.Count(256)];
            for (int index = 0; index < value.field_requests.Length; ++index)
            {
                value.field_requests[index] = wire.I8();
            }
            value.field_activation = Ros1Pal_interaction_msgsASRActivation.ReadFields(wire);
            value.field_model = Ros1Pal_interaction_msgsASRLangModelMngmt.ReadFields(wire);
            value.field_lang = Ros1Pal_interaction_msgsASRLanguage.ReadFields(wire);
            if (wire.Position - start > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Nested aggregate exceeds registered wire bound");
            }
            return value;
        }
    }
}
