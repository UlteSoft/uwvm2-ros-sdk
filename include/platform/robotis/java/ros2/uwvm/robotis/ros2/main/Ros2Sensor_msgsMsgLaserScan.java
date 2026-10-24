package uwvm.robotis.ros2.main;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 2 sensor_msgs/msg/LaserScan value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros2Sensor_msgsMsgLaserScan
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 8368;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 48;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_89faa8e14fc7f79a62a576d35c0bb377caf0cbaef6a6f181a5af2da0ead6cce4";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "sensor_msgs/msg/LaserScan";
    /** @brief Original native identity; empty native identity is unqualified. */
    public static final String NATIVE_IDENTITY = "";
    /** @brief Complete native field header; scalar, text bound 0. */
    public Ros2Std_msgsMsgHeader field_header = new Ros2Std_msgsMsgHeader();
    /** @brief Complete native field angle_min; scalar, text bound 0. */
    public float field_angle_min = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field angle_max; scalar, text bound 0. */
    public float field_angle_max = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field angle_increment; scalar, text bound 0. */
    public float field_angle_increment = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field time_increment; scalar, text bound 0. */
    public float field_time_increment = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field scan_time; scalar, text bound 0. */
    public float field_scan_time = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field range_min; scalar, text bound 0. */
    public float field_range_min = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field range_max; scalar, text bound 0. */
    public float field_range_max = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field ranges; sequence capacity 1024, text bound 0. */
    public float[] field_ranges = new float[0];
    /** @brief Complete native field intensities; sequence capacity 1024, text bound 0. */
    public float[] field_intensities = new float[0];

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros2Sensor_msgsMsgLaserScan()
    {
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros2Sensor_msgsMsgLaserScan value)
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
    public static Ros2Sensor_msgsMsgLaserScan decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros2Sensor_msgsMsgLaserScan value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros2Sensor_msgsMsgLaserScan value)
    {
        if(value == null)
        {
            throw new IllegalArgumentException("Null canonical record");
        }
        int start = wire.position();
        Ros2Std_msgsMsgHeader.writeFields(wire, value.field_header);
        if(!Float.isFinite(value.field_angle_min))
        {
            throw new IllegalArgumentException("Nonfinite angle_min");
        }
        wire.f32(value.field_angle_min);
        if(!Float.isFinite(value.field_angle_max))
        {
            throw new IllegalArgumentException("Nonfinite angle_max");
        }
        wire.f32(value.field_angle_max);
        if(!Float.isFinite(value.field_angle_increment))
        {
            throw new IllegalArgumentException("Nonfinite angle_increment");
        }
        wire.f32(value.field_angle_increment);
        if(!Float.isFinite(value.field_time_increment))
        {
            throw new IllegalArgumentException("Nonfinite time_increment");
        }
        wire.f32(value.field_time_increment);
        if(!Float.isFinite(value.field_scan_time))
        {
            throw new IllegalArgumentException("Nonfinite scan_time");
        }
        wire.f32(value.field_scan_time);
        if(!Float.isFinite(value.field_range_min))
        {
            throw new IllegalArgumentException("Nonfinite range_min");
        }
        wire.f32(value.field_range_min);
        if(!Float.isFinite(value.field_range_max))
        {
            throw new IllegalArgumentException("Nonfinite range_max");
        }
        wire.f32(value.field_range_max);
        if(value.field_ranges == null || value.field_ranges.length > 1024)
        {
            throw new IllegalArgumentException("Invalid ranges extent");
        }
        wire.u32((long)value.field_ranges.length);
        for(int index = 0; index < value.field_ranges.length; index++)
        {
            if(!Float.isFinite(value.field_ranges[index]))
            {
                throw new IllegalArgumentException("Nonfinite ranges");
            }
            wire.f32(value.field_ranges[index]);
        }
        if(value.field_intensities == null || value.field_intensities.length > 1024)
        {
            throw new IllegalArgumentException("Invalid intensities extent");
        }
        wire.u32((long)value.field_intensities.length);
        for(int index = 0; index < value.field_intensities.length; index++)
        {
            if(!Float.isFinite(value.field_intensities[index]))
            {
                throw new IllegalArgumentException("Nonfinite intensities");
            }
            wire.f32(value.field_intensities[index]);
        }
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
    public static Ros2Sensor_msgsMsgLaserScan readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros2Sensor_msgsMsgLaserScan value = new Ros2Sensor_msgsMsgLaserScan();
        value.field_header = Ros2Std_msgsMsgHeader.readFields(wire);
        value.field_angle_min = wire.f32();
        if(!Float.isFinite(value.field_angle_min))
        {
            throw new IllegalArgumentException("Nonfinite angle_min");
        }
        value.field_angle_max = wire.f32();
        if(!Float.isFinite(value.field_angle_max))
        {
            throw new IllegalArgumentException("Nonfinite angle_max");
        }
        value.field_angle_increment = wire.f32();
        if(!Float.isFinite(value.field_angle_increment))
        {
            throw new IllegalArgumentException("Nonfinite angle_increment");
        }
        value.field_time_increment = wire.f32();
        if(!Float.isFinite(value.field_time_increment))
        {
            throw new IllegalArgumentException("Nonfinite time_increment");
        }
        value.field_scan_time = wire.f32();
        if(!Float.isFinite(value.field_scan_time))
        {
            throw new IllegalArgumentException("Nonfinite scan_time");
        }
        value.field_range_min = wire.f32();
        if(!Float.isFinite(value.field_range_min))
        {
            throw new IllegalArgumentException("Nonfinite range_min");
        }
        value.field_range_max = wire.f32();
        if(!Float.isFinite(value.field_range_max))
        {
            throw new IllegalArgumentException("Nonfinite range_max");
        }
        value.field_ranges = new float[wire.count(1024)];
        for(int index = 0; index < value.field_ranges.length; index++)
        {
            value.field_ranges[index] = wire.f32();
            if(!Float.isFinite(value.field_ranges[index]))
            {
                throw new IllegalArgumentException("Nonfinite ranges");
            }
        }
        value.field_intensities = new float[wire.count(1024)];
        for(int index = 0; index < value.field_intensities.length; index++)
        {
            value.field_intensities[index] = wire.f32();
            if(!Float.isFinite(value.field_intensities[index]))
            {
                throw new IllegalArgumentException("Nonfinite intensities");
            }
        }
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
        return value;
    }
}
