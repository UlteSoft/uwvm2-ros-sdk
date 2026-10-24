using System;
using Uwvm.Ros;

namespace Uwvm.Robotis.Ros2.main
{
    /**
     * @brief Complete ROS 2 sensor_msgs/msg/BatteryState value and canonical codec.
     * @details All fields, constants, defaults and nested capacities come from the
     * canonical bounded catalog. Instances own their strings/arrays/nested values.
     * Encode/decode perform no ROS operation and confer no authority. Native type
     * identity must still be independently qualified by the deployment registry.
     */
    public sealed class Ros2Sensor_msgsMsgBatteryState
    {
        /** @brief Exact registered max wire bytes. */
        public const int MAX_WIRE_BYTES = 828;
        /** @brief Exact registered min wire bytes. */
        public const int MIN_WIRE_BYTES = 60;
        /** @brief Original codec identity; empty native identity is unqualified. */
        public const string CODEC_IDENTITY = "UWVMROS1_9083c57dde00bba912db4dd736027cb92bbed2b1a79f965570dee86e1ff5a96e";
        /** @brief Original source type; empty native identity is unqualified. */
        public const string SOURCE_TYPE = "sensor_msgs/msg/BatteryState";
        /** @brief Original native identity; empty native identity is unqualified. */
        public const string NATIVE_IDENTITY = "";
        /** @brief Original source constant POWER_SUPPLY_STATUS_UNKNOWN; consumes no instance wire bytes. */
        public const byte CONST_POWER_SUPPLY_STATUS_UNKNOWN = (byte)0;
        /** @brief Original source constant POWER_SUPPLY_STATUS_CHARGING; consumes no instance wire bytes. */
        public const byte CONST_POWER_SUPPLY_STATUS_CHARGING = (byte)1;
        /** @brief Original source constant POWER_SUPPLY_STATUS_DISCHARGING; consumes no instance wire bytes. */
        public const byte CONST_POWER_SUPPLY_STATUS_DISCHARGING = (byte)2;
        /** @brief Original source constant POWER_SUPPLY_STATUS_NOT_CHARGING; consumes no instance wire bytes. */
        public const byte CONST_POWER_SUPPLY_STATUS_NOT_CHARGING = (byte)3;
        /** @brief Original source constant POWER_SUPPLY_STATUS_FULL; consumes no instance wire bytes. */
        public const byte CONST_POWER_SUPPLY_STATUS_FULL = (byte)4;
        /** @brief Original source constant POWER_SUPPLY_HEALTH_UNKNOWN; consumes no instance wire bytes. */
        public const byte CONST_POWER_SUPPLY_HEALTH_UNKNOWN = (byte)0;
        /** @brief Original source constant POWER_SUPPLY_HEALTH_GOOD; consumes no instance wire bytes. */
        public const byte CONST_POWER_SUPPLY_HEALTH_GOOD = (byte)1;
        /** @brief Original source constant POWER_SUPPLY_HEALTH_OVERHEAT; consumes no instance wire bytes. */
        public const byte CONST_POWER_SUPPLY_HEALTH_OVERHEAT = (byte)2;
        /** @brief Original source constant POWER_SUPPLY_HEALTH_DEAD; consumes no instance wire bytes. */
        public const byte CONST_POWER_SUPPLY_HEALTH_DEAD = (byte)3;
        /** @brief Original source constant POWER_SUPPLY_HEALTH_OVERVOLTAGE; consumes no instance wire bytes. */
        public const byte CONST_POWER_SUPPLY_HEALTH_OVERVOLTAGE = (byte)4;
        /** @brief Original source constant POWER_SUPPLY_HEALTH_UNSPEC_FAILURE; consumes no instance wire bytes. */
        public const byte CONST_POWER_SUPPLY_HEALTH_UNSPEC_FAILURE = (byte)5;
        /** @brief Original source constant POWER_SUPPLY_HEALTH_COLD; consumes no instance wire bytes. */
        public const byte CONST_POWER_SUPPLY_HEALTH_COLD = (byte)6;
        /** @brief Original source constant POWER_SUPPLY_HEALTH_WATCHDOG_TIMER_EXPIRE; consumes no instance wire bytes. */
        public const byte CONST_POWER_SUPPLY_HEALTH_WATCHDOG_TIMER_EXPIRE = (byte)7;
        /** @brief Original source constant POWER_SUPPLY_HEALTH_SAFETY_TIMER_EXPIRE; consumes no instance wire bytes. */
        public const byte CONST_POWER_SUPPLY_HEALTH_SAFETY_TIMER_EXPIRE = (byte)8;
        /** @brief Original source constant POWER_SUPPLY_TECHNOLOGY_UNKNOWN; consumes no instance wire bytes. */
        public const byte CONST_POWER_SUPPLY_TECHNOLOGY_UNKNOWN = (byte)0;
        /** @brief Original source constant POWER_SUPPLY_TECHNOLOGY_NIMH; consumes no instance wire bytes. */
        public const byte CONST_POWER_SUPPLY_TECHNOLOGY_NIMH = (byte)1;
        /** @brief Original source constant POWER_SUPPLY_TECHNOLOGY_LION; consumes no instance wire bytes. */
        public const byte CONST_POWER_SUPPLY_TECHNOLOGY_LION = (byte)2;
        /** @brief Original source constant POWER_SUPPLY_TECHNOLOGY_LIPO; consumes no instance wire bytes. */
        public const byte CONST_POWER_SUPPLY_TECHNOLOGY_LIPO = (byte)3;
        /** @brief Original source constant POWER_SUPPLY_TECHNOLOGY_LIFE; consumes no instance wire bytes. */
        public const byte CONST_POWER_SUPPLY_TECHNOLOGY_LIFE = (byte)4;
        /** @brief Original source constant POWER_SUPPLY_TECHNOLOGY_NICD; consumes no instance wire bytes. */
        public const byte CONST_POWER_SUPPLY_TECHNOLOGY_NICD = (byte)5;
        /** @brief Original source constant POWER_SUPPLY_TECHNOLOGY_LIMN; consumes no instance wire bytes. */
        public const byte CONST_POWER_SUPPLY_TECHNOLOGY_LIMN = (byte)6;
        /** @brief Original source constant POWER_SUPPLY_TECHNOLOGY_TERNARY; consumes no instance wire bytes. */
        public const byte CONST_POWER_SUPPLY_TECHNOLOGY_TERNARY = (byte)7;
        /** @brief Original source constant POWER_SUPPLY_TECHNOLOGY_VRLA; consumes no instance wire bytes. */
        public const byte CONST_POWER_SUPPLY_TECHNOLOGY_VRLA = (byte)8;
        /** @brief Complete native field header; scalar, text bound 0. */
        public Ros2Std_msgsMsgHeader field_header = new Ros2Std_msgsMsgHeader();
        /** @brief Complete native field voltage; scalar, text bound 0. */
        public float field_voltage = BitConverter.Int32BitsToSingle(unchecked((int)0x00000000u));
        /** @brief Complete native field temperature; scalar, text bound 0. */
        public float field_temperature = BitConverter.Int32BitsToSingle(unchecked((int)0x00000000u));
        /** @brief Complete native field current; scalar, text bound 0. */
        public float field_current = BitConverter.Int32BitsToSingle(unchecked((int)0x00000000u));
        /** @brief Complete native field charge; scalar, text bound 0. */
        public float field_charge = BitConverter.Int32BitsToSingle(unchecked((int)0x00000000u));
        /** @brief Complete native field capacity; scalar, text bound 0. */
        public float field_capacity = BitConverter.Int32BitsToSingle(unchecked((int)0x00000000u));
        /** @brief Complete native field design_capacity; scalar, text bound 0. */
        public float field_design_capacity = BitConverter.Int32BitsToSingle(unchecked((int)0x00000000u));
        /** @brief Complete native field percentage; scalar, text bound 0. */
        public float field_percentage = BitConverter.Int32BitsToSingle(unchecked((int)0x00000000u));
        /** @brief Complete native field power_supply_status; scalar, text bound 0. */
        public byte field_power_supply_status = (byte)0;
        /** @brief Complete native field power_supply_health; scalar, text bound 0. */
        public byte field_power_supply_health = (byte)0;
        /** @brief Complete native field power_supply_technology; scalar, text bound 0. */
        public byte field_power_supply_technology = (byte)0;
        /** @brief Complete native field present; scalar, text bound 0. */
        public bool field_present = false;
        /** @brief Complete native field cell_voltage; sequence capacity 16, text bound 0. */
        public float[] field_cell_voltage = new float[0];
        /** @brief Complete native field cell_temperature; sequence capacity 16, text bound 0. */
        public float[] field_cell_temperature = new float[0];
        /** @brief Complete native field location; scalar, text bound 256. */
        public string field_location = "";
        /** @brief Complete native field serial_number; scalar, text bound 256. */
        public string field_serial_number = "";

        /**
         * @brief Construct the complete original default value with owned storage.
         * @details Nested fixed arrays initialize every logical element; sequences
         * start empty. No native capability, pointer, or shared buffer is retained.
         */
        public Ros2Sensor_msgsMsgBatteryState()
        {
        }

        /**
         * @brief Encode every field of one complete bounded value.
         * @param value Borrowed stable value; all referenced arrays remain caller-owned.
         * @return Newly owned complete canonical bytes, excluding unused capacity.
         * @details Invalid fields/bounds/semantics throw ArgumentException.
         */
        public static byte[] Encode(Ros2Sensor_msgsMsgBatteryState value)
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
        public static Ros2Sensor_msgsMsgBatteryState Decode(byte[] bytes)
        {
            if(bytes == null || bytes.Length < MIN_WIRE_BYTES || bytes.Length > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Invalid complete canonical extent");
            }
            Wire.Reader wire = new Wire.Reader(bytes);
            Ros2Sensor_msgsMsgBatteryState value = ReadFields(wire);
            wire.Finish();
            return value;
        }

        /**
         * @brief Write this complete nested value within the enclosing aggregate bound.
         * @param wire Borrowed caller-owned finite writer.
         * @param value Borrowed stable complete value.
         * @return No value; invalid fields or aggregate bounds throw before publication.
         */
        internal static void WriteFields(Wire.Writer wire, Ros2Sensor_msgsMsgBatteryState value)
        {
            if(value == null)
            {
                throw new ArgumentException("Null canonical record");
            }
            int start = wire.Position;
            Ros2Std_msgsMsgHeader.WriteFields(wire, value.field_header);
            if(!float.IsFinite(value.field_voltage))
            {
                throw new ArgumentException("Nonfinite voltage");
            }
            wire.F32(value.field_voltage);
            if(!float.IsFinite(value.field_temperature))
            {
                throw new ArgumentException("Nonfinite temperature");
            }
            wire.F32(value.field_temperature);
            if(!float.IsFinite(value.field_current))
            {
                throw new ArgumentException("Nonfinite current");
            }
            wire.F32(value.field_current);
            if(!float.IsFinite(value.field_charge))
            {
                throw new ArgumentException("Nonfinite charge");
            }
            wire.F32(value.field_charge);
            if(!float.IsFinite(value.field_capacity))
            {
                throw new ArgumentException("Nonfinite capacity");
            }
            wire.F32(value.field_capacity);
            if(!float.IsFinite(value.field_design_capacity))
            {
                throw new ArgumentException("Nonfinite design_capacity");
            }
            wire.F32(value.field_design_capacity);
            if(!float.IsFinite(value.field_percentage))
            {
                throw new ArgumentException("Nonfinite percentage");
            }
            wire.F32(value.field_percentage);
            wire.U8(value.field_power_supply_status);
            wire.U8(value.field_power_supply_health);
            wire.U8(value.field_power_supply_technology);
            wire.Bool(value.field_present);
            if(value.field_cell_voltage == null || value.field_cell_voltage.Length > 16)
            {
                throw new ArgumentException("Invalid cell_voltage extent");
            }
            wire.U32((uint)value.field_cell_voltage.Length);
            for(int index = 0; index < value.field_cell_voltage.Length; ++index)
            {
                if(!float.IsFinite(value.field_cell_voltage[index]))
                {
                    throw new ArgumentException("Nonfinite cell_voltage");
                }
                wire.F32(value.field_cell_voltage[index]);
            }
            if(value.field_cell_temperature == null || value.field_cell_temperature.Length > 16)
            {
                throw new ArgumentException("Invalid cell_temperature extent");
            }
            wire.U32((uint)value.field_cell_temperature.Length);
            for(int index = 0; index < value.field_cell_temperature.Length; ++index)
            {
                if(!float.IsFinite(value.field_cell_temperature[index]))
                {
                    throw new ArgumentException("Nonfinite cell_temperature");
                }
                wire.F32(value.field_cell_temperature[index]);
            }
            wire.String(value.field_location, 256);
            wire.String(value.field_serial_number, 256);
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
        internal static Ros2Sensor_msgsMsgBatteryState ReadFields(Wire.Reader wire)
        {
            int start = wire.Position;
            Ros2Sensor_msgsMsgBatteryState value = new Ros2Sensor_msgsMsgBatteryState();
            value.field_header = Ros2Std_msgsMsgHeader.ReadFields(wire);
            value.field_voltage = wire.F32();
            if(!float.IsFinite(value.field_voltage))
            {
                throw new ArgumentException("Nonfinite voltage");
            }
            value.field_temperature = wire.F32();
            if(!float.IsFinite(value.field_temperature))
            {
                throw new ArgumentException("Nonfinite temperature");
            }
            value.field_current = wire.F32();
            if(!float.IsFinite(value.field_current))
            {
                throw new ArgumentException("Nonfinite current");
            }
            value.field_charge = wire.F32();
            if(!float.IsFinite(value.field_charge))
            {
                throw new ArgumentException("Nonfinite charge");
            }
            value.field_capacity = wire.F32();
            if(!float.IsFinite(value.field_capacity))
            {
                throw new ArgumentException("Nonfinite capacity");
            }
            value.field_design_capacity = wire.F32();
            if(!float.IsFinite(value.field_design_capacity))
            {
                throw new ArgumentException("Nonfinite design_capacity");
            }
            value.field_percentage = wire.F32();
            if(!float.IsFinite(value.field_percentage))
            {
                throw new ArgumentException("Nonfinite percentage");
            }
            value.field_power_supply_status = wire.U8();
            value.field_power_supply_health = wire.U8();
            value.field_power_supply_technology = wire.U8();
            value.field_present = wire.Bool();
            value.field_cell_voltage = new float[wire.Count(16)];
            for(int index = 0; index < value.field_cell_voltage.Length; ++index)
            {
                value.field_cell_voltage[index] = wire.F32();
                if(!float.IsFinite(value.field_cell_voltage[index]))
                {
                    throw new ArgumentException("Nonfinite cell_voltage");
                }
            }
            value.field_cell_temperature = new float[wire.Count(16)];
            for(int index = 0; index < value.field_cell_temperature.Length; ++index)
            {
                value.field_cell_temperature[index] = wire.F32();
                if(!float.IsFinite(value.field_cell_temperature[index]))
                {
                    throw new ArgumentException("Nonfinite cell_temperature");
                }
            }
            value.field_location = wire.String(256);
            value.field_serial_number = wire.String(256);
            if(wire.Position - start > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Nested aggregate exceeds registered wire bound");
            }
            return value;
        }
    }
}
