using System;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Pal.Ros2.ros2_humble_devel
{
    /**
     * @brief Complete ROS 2 pal_device_msgs/action/DoTimedLedEffect_Goal value and canonical codec.
     * @details All fields, constants, defaults and nested capacities come from the
     * canonical bounded catalog. Instances own their strings/arrays/nested values.
     * Encode/decode perform no ROS operation and confer no authority. Native type
     * identity must still be independently qualified by the deployment registry.
     */
    public sealed class Ros2Pal_device_msgsActionDoTimedLedEffect_Goal
    {
        /** @brief Exact registered max wire bytes. */
        public const int MAX_WIRE_BYTES = 472;
        /** @brief Exact registered min wire bytes. */
        public const int MIN_WIRE_BYTES = 216;
        /** @brief Original codec identity; empty native identity is unqualified. */
        public const string CODEC_IDENTITY =
            "UWVMROS1_a7d6aafeeae03e2122a76727ab8503990df3791f351161c72d75a6ecf868a4f2";
        /** @brief Original source type; empty native identity is unqualified. */
        public const string SOURCE_TYPE = "pal_device_msgs/action/DoTimedLedEffect_Goal";
        /** @brief Original native identity; empty native identity is unqualified. */
        public const string NATIVE_IDENTITY = "";
        /** @brief Complete native field devices; sequence capacity 16, text bound 0. */
        public uint[] field_devices = new uint[0];
        /** @brief Complete native field params; scalar, text bound 0. */
        public Ros2Pal_device_msgsMsgLedEffectParams field_params = new Ros2Pal_device_msgsMsgLedEffectParams();
        /** @brief Complete native field effect_duration; scalar, text bound 0. */
        public Ros2Builtin_interfacesMsgDuration field_effect_duration = new Ros2Builtin_interfacesMsgDuration();
        /** @brief Complete native field priority; scalar, text bound 0. */
        public byte field_priority = (byte)0;

        /**
         * @brief Construct the complete original default value with owned storage.
         * @details Nested fixed arrays initialize every logical element; sequences
         * start empty. No native capability, pointer, or shared buffer is retained.
         */
        public Ros2Pal_device_msgsActionDoTimedLedEffect_Goal()
        {
        }

        /**
         * @brief Encode every field of one complete bounded value.
         * @param value Borrowed stable value; all referenced arrays remain caller-owned.
         * @return Newly owned complete canonical bytes, excluding unused capacity.
         * @details Invalid fields/bounds/semantics throw ArgumentException.
         */
        public static byte[] Encode(Ros2Pal_device_msgsActionDoTimedLedEffect_Goal value)
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
        public static Ros2Pal_device_msgsActionDoTimedLedEffect_Goal Decode(byte[] bytes)
        {
            if (bytes == null || bytes.Length < MIN_WIRE_BYTES || bytes.Length > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Invalid complete canonical extent");
            }
            CatalogWire.Reader wire = new CatalogWire.Reader(bytes);
            Ros2Pal_device_msgsActionDoTimedLedEffect_Goal value = ReadFields(wire);
            wire.Finish();
            return value;
        }

        /**
         * @brief Write this complete nested value within the enclosing aggregate bound.
         * @param wire Borrowed caller-owned finite writer.
         * @param value Borrowed stable complete value.
         * @return No value; invalid fields or aggregate bounds throw before publication.
         */
        internal static void WriteFields(CatalogWire.Writer wire, Ros2Pal_device_msgsActionDoTimedLedEffect_Goal value)
        {
            if (value == null)
            {
                throw new ArgumentException("Null canonical record");
            }
            int start = wire.Position;
            if (value.field_devices == null || value.field_devices.Length > 16)
            {
                throw new ArgumentException("Invalid devices extent");
            }
            wire.U32((uint)value.field_devices.Length);
            for (int index = 0; index < value.field_devices.Length; ++index)
            {
                wire.U32(value.field_devices[index]);
            }
            Ros2Pal_device_msgsMsgLedEffectParams.WriteFields(wire, value.field_params);
            Ros2Builtin_interfacesMsgDuration.WriteFields(wire, value.field_effect_duration);
            wire.U8(value.field_priority);
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
        internal static Ros2Pal_device_msgsActionDoTimedLedEffect_Goal ReadFields(CatalogWire.Reader wire)
        {
            int start = wire.Position;
            Ros2Pal_device_msgsActionDoTimedLedEffect_Goal value = new Ros2Pal_device_msgsActionDoTimedLedEffect_Goal();
            value.field_devices = new uint[wire.Count(16)];
            for (int index = 0; index < value.field_devices.Length; ++index)
            {
                value.field_devices[index] = wire.U32();
            }
            value.field_params = Ros2Pal_device_msgsMsgLedEffectParams.ReadFields(wire);
            value.field_effect_duration = Ros2Builtin_interfacesMsgDuration.ReadFields(wire);
            value.field_priority = wire.U8();
            if (wire.Position - start > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Nested aggregate exceeds registered wire bound");
            }
            return value;
        }
    }
}
