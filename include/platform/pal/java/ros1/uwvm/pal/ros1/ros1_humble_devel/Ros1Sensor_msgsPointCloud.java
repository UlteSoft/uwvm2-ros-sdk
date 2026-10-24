package uwvm.pal.ros1.ros1_humble_devel;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 1 sensor_msgs/PointCloud value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros1Sensor_msgsPointCloud
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 1000;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 24;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_714f5812773665cb9e8cfb03b86e3926eaae188eed2d96cd775c20a9c42a3fce";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "sensor_msgs/PointCloud";
    /** @brief Original native identity; empty native identity is unqualified. */
    public static final String NATIVE_IDENTITY = "";
    /** @brief Complete native field header; scalar, text bound 0. */
    public Ros1Std_msgsHeader field_header = new Ros1Std_msgsHeader();
    /** @brief Complete native field points; sequence capacity 4, text bound 0. */
    public Ros1Geometry_msgsPoint32[] field_points = new Ros1Geometry_msgsPoint32[0];
    /** @brief Complete native field channels; sequence capacity 4, text bound 0. */
    public Ros1Sensor_msgsChannelFloat32[] field_channels = new Ros1Sensor_msgsChannelFloat32[0];

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros1Sensor_msgsPointCloud()
    {
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros1Sensor_msgsPointCloud value)
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
    public static Ros1Sensor_msgsPointCloud decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros1Sensor_msgsPointCloud value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros1Sensor_msgsPointCloud value)
    {
        if(value == null)
        {
            throw new IllegalArgumentException("Null canonical record");
        }
        int start = wire.position();
        Ros1Std_msgsHeader.writeFields(wire, value.field_header);
        if(value.field_points == null || value.field_points.length > 4)
        {
            throw new IllegalArgumentException("Invalid points extent");
        }
        wire.u32((long)value.field_points.length);
        for(int index = 0; index < value.field_points.length; index++)
        {
            Ros1Geometry_msgsPoint32.writeFields(wire, value.field_points[index]);
        }
        if(value.field_channels == null || value.field_channels.length > 4)
        {
            throw new IllegalArgumentException("Invalid channels extent");
        }
        wire.u32((long)value.field_channels.length);
        for(int index = 0; index < value.field_channels.length; index++)
        {
            Ros1Sensor_msgsChannelFloat32.writeFields(wire, value.field_channels[index]);
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
    public static Ros1Sensor_msgsPointCloud readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros1Sensor_msgsPointCloud value = new Ros1Sensor_msgsPointCloud();
        value.field_header = Ros1Std_msgsHeader.readFields(wire);
        value.field_points = new Ros1Geometry_msgsPoint32[wire.count(4)];
        for(int index = 0; index < value.field_points.length; index++)
        {
            value.field_points[index] = Ros1Geometry_msgsPoint32.readFields(wire);
        }
        value.field_channels = new Ros1Sensor_msgsChannelFloat32[wire.count(4)];
        for(int index = 0; index < value.field_channels.length; index++)
        {
            value.field_channels[index] = Ros1Sensor_msgsChannelFloat32.readFields(wire);
        }
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
        return value;
    }
}
