using System;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Pal.Ros1.ros1_noetic_devel
{
    /**
     * @brief Complete ROS 1 pal_interaction_msgs/AudioDeviceDescription value and canonical codec.
     * @details All fields, constants, defaults and nested capacities come from the
     * canonical bounded catalog. Instances own their strings/arrays/nested values.
     * Encode/decode perform no ROS operation and confer no authority. Native type
     * identity must still be independently qualified by the deployment registry.
     */
    public sealed class Ros1Pal_interaction_msgsAudioDeviceDescription
    {
        /** @brief Exact registered max wire bytes. */
        public const int MAX_WIRE_BYTES = 141;
        /** @brief Exact registered min wire bytes. */
        public const int MIN_WIRE_BYTES = 13;
        /** @brief Original codec identity; empty native identity is unqualified. */
        public const string CODEC_IDENTITY =
            "UWVMROS1_899a8393d0b03ca92891b0c60871b5e3a697750b036ef34b37709eed88139857";
        /** @brief Original source type; empty native identity is unqualified. */
        public const string SOURCE_TYPE = "pal_interaction_msgs/AudioDeviceDescription";
        /** @brief Original native identity; empty native identity is unqualified. */
        public const string NATIVE_IDENTITY = "";
        /** @brief Original source constant SIGNED; consumes no instance wire bytes. */
        public const sbyte CONST_SIGNED = (sbyte)0;
        /** @brief Original source constant UNSIGNED; consumes no instance wire bytes. */
        public const sbyte CONST_UNSIGNED = (sbyte)1;
        /** @brief Complete native field device_name; scalar, text bound 128. */
        public string field_device_name = "";
        /** @brief Complete native field sample_rate; scalar, text bound 0. */
        public uint field_sample_rate = 0u;
        /** @brief Complete native field sample_size; scalar, text bound 0. */
        public sbyte field_sample_size = (sbyte)0;
        /** @brief Complete native field format; scalar, text bound 0. */
        public sbyte field_format = (sbyte)0;
        /** @brief Complete native field buffer_size; scalar, text bound 0. */
        public ushort field_buffer_size = (ushort)0;
        /** @brief Complete native field number_of_channels; scalar, text bound 0. */
        public sbyte field_number_of_channels = (sbyte)0;

        /**
         * @brief Construct the complete original default value with owned storage.
         * @details Nested fixed arrays initialize every logical element; sequences
         * start empty. No native capability, pointer, or shared buffer is retained.
         */
        public Ros1Pal_interaction_msgsAudioDeviceDescription()
        {
        }

        /**
         * @brief Encode every field of one complete bounded value.
         * @param value Borrowed stable value; all referenced arrays remain caller-owned.
         * @return Newly owned complete canonical bytes, excluding unused capacity.
         * @details Invalid fields/bounds/semantics throw ArgumentException.
         */
        public static byte[] Encode(Ros1Pal_interaction_msgsAudioDeviceDescription value)
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
        public static Ros1Pal_interaction_msgsAudioDeviceDescription Decode(byte[] bytes)
        {
            if (bytes == null || bytes.Length < MIN_WIRE_BYTES || bytes.Length > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Invalid complete canonical extent");
            }
            CatalogWire.Reader wire = new CatalogWire.Reader(bytes);
            Ros1Pal_interaction_msgsAudioDeviceDescription value = ReadFields(wire);
            wire.Finish();
            return value;
        }

        /**
         * @brief Write this complete nested value within the enclosing aggregate bound.
         * @param wire Borrowed caller-owned finite writer.
         * @param value Borrowed stable complete value.
         * @return No value; invalid fields or aggregate bounds throw before publication.
         */
        internal static void WriteFields(CatalogWire.Writer wire, Ros1Pal_interaction_msgsAudioDeviceDescription value)
        {
            if (value == null)
            {
                throw new ArgumentException("Null canonical record");
            }
            int start = wire.Position;
            wire.String(value.field_device_name, 128);
            wire.U32(value.field_sample_rate);
            wire.I8(value.field_sample_size);
            wire.I8(value.field_format);
            wire.U16(value.field_buffer_size);
            wire.I8(value.field_number_of_channels);
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
        internal static Ros1Pal_interaction_msgsAudioDeviceDescription ReadFields(CatalogWire.Reader wire)
        {
            int start = wire.Position;
            Ros1Pal_interaction_msgsAudioDeviceDescription value = new Ros1Pal_interaction_msgsAudioDeviceDescription();
            value.field_device_name = wire.String(128);
            value.field_sample_rate = wire.U32();
            value.field_sample_size = wire.I8();
            value.field_format = wire.I8();
            value.field_buffer_size = wire.U16();
            value.field_number_of_channels = wire.I8();
            if (wire.Position - start > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Nested aggregate exceeds registered wire bound");
            }
            return value;
        }
    }
}
