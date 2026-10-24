package uwvm.pal.ros2.ros2_humble_devel;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 2 pal_device_msgs/msg/LedDataArrayParams value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros2Pal_device_msgsMsgLedDataArrayParams
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 68;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 4;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_f52b27f234be53ae9cfc421d8434f6a9d0e02ca8fc88de7534dac2472a0a4349";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "pal_device_msgs/msg/LedDataArrayParams";
    /** @brief Original native identity; empty native identity is unqualified. */
    public static final String NATIVE_IDENTITY = "";
    /** @brief Complete native field data; sequence capacity 4, text bound 0. */
    public Ros2Std_msgsMsgColorRGBA[] field_data = new Ros2Std_msgsMsgColorRGBA[0];

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros2Pal_device_msgsMsgLedDataArrayParams()
    {
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros2Pal_device_msgsMsgLedDataArrayParams value)
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
    public static Ros2Pal_device_msgsMsgLedDataArrayParams decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros2Pal_device_msgsMsgLedDataArrayParams value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros2Pal_device_msgsMsgLedDataArrayParams value)
    {
        if(value == null)
        {
            throw new IllegalArgumentException("Null canonical record");
        }
        int start = wire.position();
        if(value.field_data == null || value.field_data.length > 4)
        {
            throw new IllegalArgumentException("Invalid data extent");
        }
        wire.u32((long)value.field_data.length);
        for(int index = 0; index < value.field_data.length; index++)
        {
            Ros2Std_msgsMsgColorRGBA.writeFields(wire, value.field_data[index]);
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
    public static Ros2Pal_device_msgsMsgLedDataArrayParams readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros2Pal_device_msgsMsgLedDataArrayParams value = new Ros2Pal_device_msgsMsgLedDataArrayParams();
        value.field_data = new Ros2Std_msgsMsgColorRGBA[wire.count(4)];
        for(int index = 0; index < value.field_data.length; index++)
        {
            value.field_data[index] = Ros2Std_msgsMsgColorRGBA.readFields(wire);
        }
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
        return value;
    }
}
