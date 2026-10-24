package uwvm.pal.ros2.ros2_humble_devel;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 2 pal_device_msgs/srv/TimedColourEffect_Request value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros2Pal_device_msgsSrvTimedColourEffect_Request
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 29;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 29;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_bb25c25962a52120bd8575be65dabd983ac46c7a19794f3793b37c2bf8ccbfa8";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "pal_device_msgs/srv/TimedColourEffect_Request";
    /** @brief Original native identity; empty native identity is unqualified. */
    public static final String NATIVE_IDENTITY = "";
    /** @brief Complete native field leds; scalar, text bound 0. */
    public Ros2Pal_device_msgsMsgLedGroup field_leds = new Ros2Pal_device_msgsMsgLedGroup();
    /** @brief Complete native field color; scalar, text bound 0. */
    public Ros2Std_msgsMsgColorRGBA field_color = new Ros2Std_msgsMsgColorRGBA();
    /** @brief Complete native field effect_duration; scalar, text bound 0. */
    public Ros2Builtin_interfacesMsgDuration field_effect_duration = new Ros2Builtin_interfacesMsgDuration();
    /** @brief Complete native field priority; scalar, text bound 0. */
    public int field_priority = 0;

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros2Pal_device_msgsSrvTimedColourEffect_Request()
    {
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros2Pal_device_msgsSrvTimedColourEffect_Request value)
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
    public static Ros2Pal_device_msgsSrvTimedColourEffect_Request decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros2Pal_device_msgsSrvTimedColourEffect_Request value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros2Pal_device_msgsSrvTimedColourEffect_Request value)
    {
        if(value == null)
        {
            throw new IllegalArgumentException("Null canonical record");
        }
        int start = wire.position();
        Ros2Pal_device_msgsMsgLedGroup.writeFields(wire, value.field_leds);
        Ros2Std_msgsMsgColorRGBA.writeFields(wire, value.field_color);
        Ros2Builtin_interfacesMsgDuration.writeFields(wire, value.field_effect_duration);
        wire.u8(value.field_priority);
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
    public static Ros2Pal_device_msgsSrvTimedColourEffect_Request readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros2Pal_device_msgsSrvTimedColourEffect_Request value = new Ros2Pal_device_msgsSrvTimedColourEffect_Request();
        value.field_leds = Ros2Pal_device_msgsMsgLedGroup.readFields(wire);
        value.field_color = Ros2Std_msgsMsgColorRGBA.readFields(wire);
        value.field_effect_duration = Ros2Builtin_interfacesMsgDuration.readFields(wire);
        value.field_priority = wire.u8();
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
        return value;
    }
}
