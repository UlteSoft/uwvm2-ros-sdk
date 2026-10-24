package uwvm.robotis.ros1.noetic;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 1 sensor_msgs/BatteryState value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros1Sensor_msgsBatteryState
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 832;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 64;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_4b176902362348cd3b7eec6ae21e2035d33df6990b4682ddf5123ef6e0339441";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "sensor_msgs/BatteryState";
    /** @brief Original native identity; empty native identity is unqualified. */
    public static final String NATIVE_IDENTITY = "";
    /** @brief Original source constant POWER_SUPPLY_STATUS_UNKNOWN; consumes no instance wire bytes. */
    public static final int CONST_POWER_SUPPLY_STATUS_UNKNOWN = 0;
    /** @brief Original source constant POWER_SUPPLY_STATUS_CHARGING; consumes no instance wire bytes. */
    public static final int CONST_POWER_SUPPLY_STATUS_CHARGING = 1;
    /** @brief Original source constant POWER_SUPPLY_STATUS_DISCHARGING; consumes no instance wire bytes. */
    public static final int CONST_POWER_SUPPLY_STATUS_DISCHARGING = 2;
    /** @brief Original source constant POWER_SUPPLY_STATUS_NOT_CHARGING; consumes no instance wire bytes. */
    public static final int CONST_POWER_SUPPLY_STATUS_NOT_CHARGING = 3;
    /** @brief Original source constant POWER_SUPPLY_STATUS_FULL; consumes no instance wire bytes. */
    public static final int CONST_POWER_SUPPLY_STATUS_FULL = 4;
    /** @brief Original source constant POWER_SUPPLY_HEALTH_UNKNOWN; consumes no instance wire bytes. */
    public static final int CONST_POWER_SUPPLY_HEALTH_UNKNOWN = 0;
    /** @brief Original source constant POWER_SUPPLY_HEALTH_GOOD; consumes no instance wire bytes. */
    public static final int CONST_POWER_SUPPLY_HEALTH_GOOD = 1;
    /** @brief Original source constant POWER_SUPPLY_HEALTH_OVERHEAT; consumes no instance wire bytes. */
    public static final int CONST_POWER_SUPPLY_HEALTH_OVERHEAT = 2;
    /** @brief Original source constant POWER_SUPPLY_HEALTH_DEAD; consumes no instance wire bytes. */
    public static final int CONST_POWER_SUPPLY_HEALTH_DEAD = 3;
    /** @brief Original source constant POWER_SUPPLY_HEALTH_OVERVOLTAGE; consumes no instance wire bytes. */
    public static final int CONST_POWER_SUPPLY_HEALTH_OVERVOLTAGE = 4;
    /** @brief Original source constant POWER_SUPPLY_HEALTH_UNSPEC_FAILURE; consumes no instance wire bytes. */
    public static final int CONST_POWER_SUPPLY_HEALTH_UNSPEC_FAILURE = 5;
    /** @brief Original source constant POWER_SUPPLY_HEALTH_COLD; consumes no instance wire bytes. */
    public static final int CONST_POWER_SUPPLY_HEALTH_COLD = 6;
    /** @brief Original source constant POWER_SUPPLY_HEALTH_WATCHDOG_TIMER_EXPIRE; consumes no instance wire bytes. */
    public static final int CONST_POWER_SUPPLY_HEALTH_WATCHDOG_TIMER_EXPIRE = 7;
    /** @brief Original source constant POWER_SUPPLY_HEALTH_SAFETY_TIMER_EXPIRE; consumes no instance wire bytes. */
    public static final int CONST_POWER_SUPPLY_HEALTH_SAFETY_TIMER_EXPIRE = 8;
    /** @brief Original source constant POWER_SUPPLY_TECHNOLOGY_UNKNOWN; consumes no instance wire bytes. */
    public static final int CONST_POWER_SUPPLY_TECHNOLOGY_UNKNOWN = 0;
    /** @brief Original source constant POWER_SUPPLY_TECHNOLOGY_NIMH; consumes no instance wire bytes. */
    public static final int CONST_POWER_SUPPLY_TECHNOLOGY_NIMH = 1;
    /** @brief Original source constant POWER_SUPPLY_TECHNOLOGY_LION; consumes no instance wire bytes. */
    public static final int CONST_POWER_SUPPLY_TECHNOLOGY_LION = 2;
    /** @brief Original source constant POWER_SUPPLY_TECHNOLOGY_LIPO; consumes no instance wire bytes. */
    public static final int CONST_POWER_SUPPLY_TECHNOLOGY_LIPO = 3;
    /** @brief Original source constant POWER_SUPPLY_TECHNOLOGY_LIFE; consumes no instance wire bytes. */
    public static final int CONST_POWER_SUPPLY_TECHNOLOGY_LIFE = 4;
    /** @brief Original source constant POWER_SUPPLY_TECHNOLOGY_NICD; consumes no instance wire bytes. */
    public static final int CONST_POWER_SUPPLY_TECHNOLOGY_NICD = 5;
    /** @brief Original source constant POWER_SUPPLY_TECHNOLOGY_LIMN; consumes no instance wire bytes. */
    public static final int CONST_POWER_SUPPLY_TECHNOLOGY_LIMN = 6;
    /** @brief Complete native field header; scalar, text bound 0. */
    public Ros1Std_msgsHeader field_header = new Ros1Std_msgsHeader();
    /** @brief Complete native field voltage; scalar, text bound 0. */
    public float field_voltage = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field temperature; scalar, text bound 0. */
    public float field_temperature = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field current; scalar, text bound 0. */
    public float field_current = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field charge; scalar, text bound 0. */
    public float field_charge = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field capacity; scalar, text bound 0. */
    public float field_capacity = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field design_capacity; scalar, text bound 0. */
    public float field_design_capacity = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field percentage; scalar, text bound 0. */
    public float field_percentage = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field power_supply_status; scalar, text bound 0. */
    public int field_power_supply_status = 0;
    /** @brief Complete native field power_supply_health; scalar, text bound 0. */
    public int field_power_supply_health = 0;
    /** @brief Complete native field power_supply_technology; scalar, text bound 0. */
    public int field_power_supply_technology = 0;
    /** @brief Complete native field present; scalar, text bound 0. */
    public boolean field_present = false;
    /** @brief Complete native field cell_voltage; sequence capacity 16, text bound 0. */
    public float[] field_cell_voltage = new float[0];
    /** @brief Complete native field cell_temperature; sequence capacity 16, text bound 0. */
    public float[] field_cell_temperature = new float[0];
    /** @brief Complete native field location; scalar, text bound 256. */
    public String field_location = "";
    /** @brief Complete native field serial_number; scalar, text bound 256. */
    public String field_serial_number = "";

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros1Sensor_msgsBatteryState()
    {
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros1Sensor_msgsBatteryState value)
    {
        Wire.Writer wire = new Wire.Writer(MAX_WIRE_BYTES);
        writeFields(wire, value);
        return wire.finish();
    }

    /**
     * @brief Decode transactionally with exact extent and trailing-byte checks.
     * @param bytes Borrowed immutable complete canonical body.
     * @return Newly owned full value; failed decoding commits no caller storage.
     * @details Invalid wire, text, bounds or semantics throw IllegalArgumentException.
     */
    public static Ros1Sensor_msgsBatteryState decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros1Sensor_msgsBatteryState value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros1Sensor_msgsBatteryState value)
    {
        if(value == null)
        {
            throw new IllegalArgumentException("Null canonical record");
        }
        int start = wire.position();
        Ros1Std_msgsHeader.writeFields(wire, value.field_header);
        if(!Float.isFinite(value.field_voltage))
        {
            throw new IllegalArgumentException("Nonfinite voltage");
        }
        wire.f32(value.field_voltage);
        if(!Float.isFinite(value.field_temperature))
        {
            throw new IllegalArgumentException("Nonfinite temperature");
        }
        wire.f32(value.field_temperature);
        if(!Float.isFinite(value.field_current))
        {
            throw new IllegalArgumentException("Nonfinite current");
        }
        wire.f32(value.field_current);
        if(!Float.isFinite(value.field_charge))
        {
            throw new IllegalArgumentException("Nonfinite charge");
        }
        wire.f32(value.field_charge);
        if(!Float.isFinite(value.field_capacity))
        {
            throw new IllegalArgumentException("Nonfinite capacity");
        }
        wire.f32(value.field_capacity);
        if(!Float.isFinite(value.field_design_capacity))
        {
            throw new IllegalArgumentException("Nonfinite design_capacity");
        }
        wire.f32(value.field_design_capacity);
        if(!Float.isFinite(value.field_percentage))
        {
            throw new IllegalArgumentException("Nonfinite percentage");
        }
        wire.f32(value.field_percentage);
        wire.u8(value.field_power_supply_status);
        wire.u8(value.field_power_supply_health);
        wire.u8(value.field_power_supply_technology);
        wire.bool(value.field_present);
        if(value.field_cell_voltage == null || value.field_cell_voltage.length > 16)
        {
            throw new IllegalArgumentException("Invalid cell_voltage extent");
        }
        wire.u32((long)value.field_cell_voltage.length);
        for(int index = 0; index < value.field_cell_voltage.length; index++)
        {
            if(!Float.isFinite(value.field_cell_voltage[index]))
            {
                throw new IllegalArgumentException("Nonfinite cell_voltage");
            }
            wire.f32(value.field_cell_voltage[index]);
        }
        if(value.field_cell_temperature == null || value.field_cell_temperature.length > 16)
        {
            throw new IllegalArgumentException("Invalid cell_temperature extent");
        }
        wire.u32((long)value.field_cell_temperature.length);
        for(int index = 0; index < value.field_cell_temperature.length; index++)
        {
            if(!Float.isFinite(value.field_cell_temperature[index]))
            {
                throw new IllegalArgumentException("Nonfinite cell_temperature");
            }
            wire.f32(value.field_cell_temperature[index]);
        }
        wire.string(value.field_location, 256);
        wire.string(value.field_serial_number, 256);
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
    }

    /**
     * @brief Read one complete nested record without exposing partial values.
     * @param wire Borrowed immutable bounded reader and its private cursor.
     * @return Newly owned complete record; malformed nested input throws.
     * @details The caller separately requires complete top-level consumption.
     */
    public static Ros1Sensor_msgsBatteryState readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros1Sensor_msgsBatteryState value = new Ros1Sensor_msgsBatteryState();
        value.field_header = Ros1Std_msgsHeader.readFields(wire);
        value.field_voltage = wire.f32();
        if(!Float.isFinite(value.field_voltage))
        {
            throw new IllegalArgumentException("Nonfinite voltage");
        }
        value.field_temperature = wire.f32();
        if(!Float.isFinite(value.field_temperature))
        {
            throw new IllegalArgumentException("Nonfinite temperature");
        }
        value.field_current = wire.f32();
        if(!Float.isFinite(value.field_current))
        {
            throw new IllegalArgumentException("Nonfinite current");
        }
        value.field_charge = wire.f32();
        if(!Float.isFinite(value.field_charge))
        {
            throw new IllegalArgumentException("Nonfinite charge");
        }
        value.field_capacity = wire.f32();
        if(!Float.isFinite(value.field_capacity))
        {
            throw new IllegalArgumentException("Nonfinite capacity");
        }
        value.field_design_capacity = wire.f32();
        if(!Float.isFinite(value.field_design_capacity))
        {
            throw new IllegalArgumentException("Nonfinite design_capacity");
        }
        value.field_percentage = wire.f32();
        if(!Float.isFinite(value.field_percentage))
        {
            throw new IllegalArgumentException("Nonfinite percentage");
        }
        value.field_power_supply_status = wire.u8();
        value.field_power_supply_health = wire.u8();
        value.field_power_supply_technology = wire.u8();
        value.field_present = wire.bool();
        value.field_cell_voltage = new float[wire.count(16)];
        for(int index = 0; index < value.field_cell_voltage.length; index++)
        {
            value.field_cell_voltage[index] = wire.f32();
            if(!Float.isFinite(value.field_cell_voltage[index]))
            {
                throw new IllegalArgumentException("Nonfinite cell_voltage");
            }
        }
        value.field_cell_temperature = new float[wire.count(16)];
        for(int index = 0; index < value.field_cell_temperature.length; index++)
        {
            value.field_cell_temperature[index] = wire.f32();
            if(!Float.isFinite(value.field_cell_temperature[index]))
            {
                throw new IllegalArgumentException("Nonfinite cell_temperature");
            }
        }
        value.field_location = wire.string(256);
        value.field_serial_number = wire.string(256);
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
        return value;
    }
}
