using System;
using Uwvm.Ros;

namespace Uwvm.Robotis.Ros1.noetic
{
    /**
     * @brief Complete ROS 1 sensor_msgs/LaserScan value and canonical codec.
     * @details All fields, constants, defaults and nested capacities come from the
     * canonical bounded catalog. Instances own their strings/arrays/nested values.
     * Encode/decode perform no ROS operation and confer no authority. Native type
     * identity must still be independently qualified by the deployment registry.
     */
    public sealed class Ros1Sensor_msgsLaserScan
    {
        /** @brief Exact registered max wire bytes. */
        public const int MAX_WIRE_BYTES = 8372;
        /** @brief Exact registered min wire bytes. */
        public const int MIN_WIRE_BYTES = 52;
        /** @brief Original codec identity; empty native identity is unqualified. */
        public const string CODEC_IDENTITY = "UWVMROS1_f7aee00335bf7d165004957149192f58abe5a27b5c4884bdf8d1ae9be06b366b";
        /** @brief Original source type; empty native identity is unqualified. */
        public const string SOURCE_TYPE = "sensor_msgs/LaserScan";
        /** @brief Original native identity; empty native identity is unqualified. */
        public const string NATIVE_IDENTITY = "";
        /** @brief Complete native field header; scalar, text bound 0. */
        public Ros1Std_msgsHeader field_header = new Ros1Std_msgsHeader();
        /** @brief Complete native field angle_min; scalar, text bound 0. */
        public float field_angle_min = BitConverter.Int32BitsToSingle(unchecked((int)0x00000000u));
        /** @brief Complete native field angle_max; scalar, text bound 0. */
        public float field_angle_max = BitConverter.Int32BitsToSingle(unchecked((int)0x00000000u));
        /** @brief Complete native field angle_increment; scalar, text bound 0. */
        public float field_angle_increment = BitConverter.Int32BitsToSingle(unchecked((int)0x00000000u));
        /** @brief Complete native field time_increment; scalar, text bound 0. */
        public float field_time_increment = BitConverter.Int32BitsToSingle(unchecked((int)0x00000000u));
        /** @brief Complete native field scan_time; scalar, text bound 0. */
        public float field_scan_time = BitConverter.Int32BitsToSingle(unchecked((int)0x00000000u));
        /** @brief Complete native field range_min; scalar, text bound 0. */
        public float field_range_min = BitConverter.Int32BitsToSingle(unchecked((int)0x00000000u));
        /** @brief Complete native field range_max; scalar, text bound 0. */
        public float field_range_max = BitConverter.Int32BitsToSingle(unchecked((int)0x00000000u));
        /** @brief Complete native field ranges; sequence capacity 1024, text bound 0. */
        public float[] field_ranges = new float[0];
        /** @brief Complete native field intensities; sequence capacity 1024, text bound 0. */
        public float[] field_intensities = new float[0];

        /**
         * @brief Construct the complete original default value with owned storage.
         * @details Nested fixed arrays initialize every logical element; sequences
         * start empty. No native capability, pointer, or shared buffer is retained.
         */
        public Ros1Sensor_msgsLaserScan()
        {
        }

        /**
         * @brief Encode every field of one complete bounded value.
         * @param value Borrowed stable value; all referenced arrays remain caller-owned.
         * @return Newly owned complete canonical bytes, excluding unused capacity.
         * @details Invalid fields/bounds/semantics throw ArgumentException.
         */
        public static byte[] Encode(Ros1Sensor_msgsLaserScan value)
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
        public static Ros1Sensor_msgsLaserScan Decode(byte[] bytes)
        {
            if(bytes == null || bytes.Length < MIN_WIRE_BYTES || bytes.Length > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Invalid complete canonical extent");
            }
            Wire.Reader wire = new Wire.Reader(bytes);
            Ros1Sensor_msgsLaserScan value = ReadFields(wire);
            wire.Finish();
            return value;
        }

        /**
         * @brief Write this complete nested value within the enclosing aggregate bound.
         * @param wire Borrowed caller-owned finite writer.
         * @param value Borrowed stable complete value.
         * @return No value; invalid fields or aggregate bounds throw before publication.
         */
        internal static void WriteFields(Wire.Writer wire, Ros1Sensor_msgsLaserScan value)
        {
            if(value == null)
            {
                throw new ArgumentException("Null canonical record");
            }
            int start = wire.Position;
            Ros1Std_msgsHeader.WriteFields(wire, value.field_header);
            if(!float.IsFinite(value.field_angle_min))
            {
                throw new ArgumentException("Nonfinite angle_min");
            }
            wire.F32(value.field_angle_min);
            if(!float.IsFinite(value.field_angle_max))
            {
                throw new ArgumentException("Nonfinite angle_max");
            }
            wire.F32(value.field_angle_max);
            if(!float.IsFinite(value.field_angle_increment))
            {
                throw new ArgumentException("Nonfinite angle_increment");
            }
            wire.F32(value.field_angle_increment);
            if(!float.IsFinite(value.field_time_increment))
            {
                throw new ArgumentException("Nonfinite time_increment");
            }
            wire.F32(value.field_time_increment);
            if(!float.IsFinite(value.field_scan_time))
            {
                throw new ArgumentException("Nonfinite scan_time");
            }
            wire.F32(value.field_scan_time);
            if(!float.IsFinite(value.field_range_min))
            {
                throw new ArgumentException("Nonfinite range_min");
            }
            wire.F32(value.field_range_min);
            if(!float.IsFinite(value.field_range_max))
            {
                throw new ArgumentException("Nonfinite range_max");
            }
            wire.F32(value.field_range_max);
            if(value.field_ranges == null || value.field_ranges.Length > 1024)
            {
                throw new ArgumentException("Invalid ranges extent");
            }
            wire.U32((uint)value.field_ranges.Length);
            for(int index = 0; index < value.field_ranges.Length; ++index)
            {
                if(!float.IsFinite(value.field_ranges[index]))
                {
                    throw new ArgumentException("Nonfinite ranges");
                }
                wire.F32(value.field_ranges[index]);
            }
            if(value.field_intensities == null || value.field_intensities.Length > 1024)
            {
                throw new ArgumentException("Invalid intensities extent");
            }
            wire.U32((uint)value.field_intensities.Length);
            for(int index = 0; index < value.field_intensities.Length; ++index)
            {
                if(!float.IsFinite(value.field_intensities[index]))
                {
                    throw new ArgumentException("Nonfinite intensities");
                }
                wire.F32(value.field_intensities[index]);
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
        internal static Ros1Sensor_msgsLaserScan ReadFields(Wire.Reader wire)
        {
            int start = wire.Position;
            Ros1Sensor_msgsLaserScan value = new Ros1Sensor_msgsLaserScan();
            value.field_header = Ros1Std_msgsHeader.ReadFields(wire);
            value.field_angle_min = wire.F32();
            if(!float.IsFinite(value.field_angle_min))
            {
                throw new ArgumentException("Nonfinite angle_min");
            }
            value.field_angle_max = wire.F32();
            if(!float.IsFinite(value.field_angle_max))
            {
                throw new ArgumentException("Nonfinite angle_max");
            }
            value.field_angle_increment = wire.F32();
            if(!float.IsFinite(value.field_angle_increment))
            {
                throw new ArgumentException("Nonfinite angle_increment");
            }
            value.field_time_increment = wire.F32();
            if(!float.IsFinite(value.field_time_increment))
            {
                throw new ArgumentException("Nonfinite time_increment");
            }
            value.field_scan_time = wire.F32();
            if(!float.IsFinite(value.field_scan_time))
            {
                throw new ArgumentException("Nonfinite scan_time");
            }
            value.field_range_min = wire.F32();
            if(!float.IsFinite(value.field_range_min))
            {
                throw new ArgumentException("Nonfinite range_min");
            }
            value.field_range_max = wire.F32();
            if(!float.IsFinite(value.field_range_max))
            {
                throw new ArgumentException("Nonfinite range_max");
            }
            value.field_ranges = new float[wire.Count(1024)];
            for(int index = 0; index < value.field_ranges.Length; ++index)
            {
                value.field_ranges[index] = wire.F32();
                if(!float.IsFinite(value.field_ranges[index]))
                {
                    throw new ArgumentException("Nonfinite ranges");
                }
            }
            value.field_intensities = new float[wire.Count(1024)];
            for(int index = 0; index < value.field_intensities.Length; ++index)
            {
                value.field_intensities[index] = wire.F32();
                if(!float.IsFinite(value.field_intensities[index]))
                {
                    throw new ArgumentException("Nonfinite intensities");
                }
            }
            if(wire.Position - start > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Nested aggregate exceeds registered wire bound");
            }
            return value;
        }
    }
}
