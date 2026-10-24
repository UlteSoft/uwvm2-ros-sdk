using System;
using Uwvm.Ros;

namespace Uwvm.Trossen.Ros2.ros2_jazzy
{
    /**
     * @brief Complete ROS 2 interbotix_xs_msgs/msg/JointTemps value and canonical codec.
     * @details All fields, constants, defaults and nested capacities come from the
     * canonical bounded catalog. Instances own their strings/arrays/nested values.
     * Encode/decode perform no ROS operation and confer no authority. Native type
     * identity must still be independently qualified by the deployment registry.
     */
    public sealed class Ros2Interbotix_xs_msgsMsgJointTemps
    {
        /** @brief Exact registered max wire bytes. */
        public const int MAX_WIRE_BYTES = 8712;
        /** @brief Exact registered min wire bytes. */
        public const int MIN_WIRE_BYTES = 8;
        /** @brief Original codec identity; empty native identity is unqualified. */
        public const string CODEC_IDENTITY = "UWVMROS1_e38f321a150c349a7bc72bbe45d004ac18cd2f147bf4cb73b1d53428a63fd2e4";
        /** @brief Original source type; empty native identity is unqualified. */
        public const string SOURCE_TYPE = "interbotix_xs_msgs/msg/JointTemps";
        /** @brief Original native identity; empty native identity is unqualified. */
        public const string NATIVE_IDENTITY = "";
        /** @brief Complete native field names; sequence capacity 64, text bound 128. */
        public string[] field_names = new string[0];
        /** @brief Complete native field temps; sequence capacity 64, text bound 0. */
        public int[] field_temps = new int[0];

        /**
         * @brief Construct the complete original default value with owned storage.
         * @details Nested fixed arrays initialize every logical element; sequences
         * start empty. No native capability, pointer, or shared buffer is retained.
         */
        public Ros2Interbotix_xs_msgsMsgJointTemps()
        {
        }

        /**
         * @brief Encode every field of one complete bounded value.
         * @param value Borrowed stable value; all referenced arrays remain caller-owned.
         * @return Newly owned complete canonical bytes, excluding unused capacity.
         * @details Invalid fields/bounds/semantics throw ArgumentException.
         */
        public static byte[] Encode(Ros2Interbotix_xs_msgsMsgJointTemps value)
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
        public static Ros2Interbotix_xs_msgsMsgJointTemps Decode(byte[] bytes)
        {
            if(bytes == null || bytes.Length < MIN_WIRE_BYTES || bytes.Length > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Invalid complete canonical extent");
            }
            Wire.Reader wire = new Wire.Reader(bytes);
            Ros2Interbotix_xs_msgsMsgJointTemps value = ReadFields(wire);
            wire.Finish();
            return value;
        }

        /**
         * @brief Write this complete nested value within the enclosing aggregate bound.
         * @param wire Borrowed caller-owned finite writer.
         * @param value Borrowed stable complete value.
         * @return No value; invalid fields or aggregate bounds throw before publication.
         */
        internal static void WriteFields(Wire.Writer wire, Ros2Interbotix_xs_msgsMsgJointTemps value)
        {
            if(value == null)
            {
                throw new ArgumentException("Null canonical record");
            }
            int start = wire.Position;
            if(value.field_names == null || value.field_names.Length > 64)
            {
                throw new ArgumentException("Invalid names extent");
            }
            wire.U32((uint)value.field_names.Length);
            for(int index = 0; index < value.field_names.Length; ++index)
            {
                wire.String(value.field_names[index], 128);
            }
            if(value.field_temps == null || value.field_temps.Length > 64)
            {
                throw new ArgumentException("Invalid temps extent");
            }
            wire.U32((uint)value.field_temps.Length);
            for(int index = 0; index < value.field_temps.Length; ++index)
            {
                wire.I32(value.field_temps[index]);
            }
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
        internal static Ros2Interbotix_xs_msgsMsgJointTemps ReadFields(Wire.Reader wire)
        {
            int start = wire.Position;
            Ros2Interbotix_xs_msgsMsgJointTemps value = new Ros2Interbotix_xs_msgsMsgJointTemps();
            value.field_names = new string[wire.Count(64)];
            for(int index = 0; index < value.field_names.Length; ++index)
            {
                value.field_names[index] = wire.String(128);
            }
            value.field_temps = new int[wire.Count(64)];
            for(int index = 0; index < value.field_temps.Length; ++index)
            {
                value.field_temps[index] = wire.I32();
            }
            if(wire.Position - start > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Nested aggregate exceeds registered wire bound");
            }
            return value;
        }
    }
}
