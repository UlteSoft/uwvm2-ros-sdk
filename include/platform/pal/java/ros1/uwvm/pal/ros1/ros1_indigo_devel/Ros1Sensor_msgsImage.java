package uwvm.pal.ros1.ros1_indigo_devel;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 1 sensor_msgs/Image value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros1Sensor_msgsImage
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 4389;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 37;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_da3bee65c72205c46f51ab123a4399369df1a0a1419c32fdcd350f16bd5f76ce";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "sensor_msgs/Image";
    /** @brief Original native identity; empty native identity is unqualified. */
    public static final String NATIVE_IDENTITY = "";
    /** @brief Complete native field header; scalar, text bound 0. */
    public Ros1Std_msgsHeader field_header = new Ros1Std_msgsHeader();
    /** @brief Complete native field height; scalar, text bound 0. */
    public long field_height = 0L;
    /** @brief Complete native field width; scalar, text bound 0. */
    public long field_width = 0L;
    /** @brief Complete native field encoding; scalar, text bound 128. */
    public String field_encoding = "";
    /** @brief Complete native field is_bigendian; scalar, text bound 0. */
    public int field_is_bigendian = 0;
    /** @brief Complete native field step; scalar, text bound 0. */
    public long field_step = 0L;
    /** @brief Complete native field data; sequence capacity 4096, text bound 0. */
    public int[] field_data = new int[0];

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros1Sensor_msgsImage()
    {
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros1Sensor_msgsImage value)
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
    public static Ros1Sensor_msgsImage decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros1Sensor_msgsImage value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros1Sensor_msgsImage value)
    {
        if(value == null)
        {
            throw new IllegalArgumentException("Null canonical record");
        }
        int start = wire.position();
        Ros1Std_msgsHeader.writeFields(wire, value.field_header);
        wire.u32(value.field_height);
        wire.u32(value.field_width);
        wire.string(value.field_encoding, 128);
        wire.u8(value.field_is_bigendian);
        wire.u32(value.field_step);
        if(value.field_data == null || value.field_data.length > 4096)
        {
            throw new IllegalArgumentException("Invalid data extent");
        }
        wire.u32((long)value.field_data.length);
        for(int index = 0; index < value.field_data.length; index++)
        {
            wire.u8(value.field_data[index]);
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
    public static Ros1Sensor_msgsImage readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros1Sensor_msgsImage value = new Ros1Sensor_msgsImage();
        value.field_header = Ros1Std_msgsHeader.readFields(wire);
        value.field_height = wire.u32();
        value.field_width = wire.u32();
        value.field_encoding = wire.string(128);
        value.field_is_bigendian = wire.u8();
        value.field_step = wire.u32();
        value.field_data = new int[wire.count(4096)];
        for(int index = 0; index < value.field_data.length; index++)
        {
            value.field_data[index] = wire.u8();
        }
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
        return value;
    }
}
