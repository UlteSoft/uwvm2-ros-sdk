package uwvm.trossen.ros2.ros2_humble;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 2 interbotix_slate_msgs/srv/SetLightState_Request value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros2Interbotix_slate_msgsSrvSetLightState_Request
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 4;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 4;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_ff7ce99b264f9f71c006b31b92a9f265c87345e85a97e0cbfe1bef87faada554";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "interbotix_slate_msgs/srv/SetLightState_Request";
    /** @brief Original native identity; empty native identity is unqualified. */
    public static final String NATIVE_IDENTITY = "";
    /** @brief Original source constant LIGHT_STATE_OFF; consumes no instance wire bytes. */
    public static final long CONST_LIGHT_STATE_OFF = 0L;
    /** @brief Original source constant LIGHT_STATE_RED; consumes no instance wire bytes. */
    public static final long CONST_LIGHT_STATE_RED = 1L;
    /** @brief Original source constant LIGHT_STATE_GREEN; consumes no instance wire bytes. */
    public static final long CONST_LIGHT_STATE_GREEN = 2L;
    /** @brief Original source constant LIGHT_STATE_YELLOW; consumes no instance wire bytes. */
    public static final long CONST_LIGHT_STATE_YELLOW = 3L;
    /** @brief Original source constant LIGHT_STATE_BLUE; consumes no instance wire bytes. */
    public static final long CONST_LIGHT_STATE_BLUE = 4L;
    /** @brief Original source constant LIGHT_STATE_PURPLE; consumes no instance wire bytes. */
    public static final long CONST_LIGHT_STATE_PURPLE = 5L;
    /** @brief Original source constant LIGHT_STATE_CYAN; consumes no instance wire bytes. */
    public static final long CONST_LIGHT_STATE_CYAN = 6L;
    /** @brief Original source constant LIGHT_STATE_WHITE; consumes no instance wire bytes. */
    public static final long CONST_LIGHT_STATE_WHITE = 7L;
    /** @brief Original source constant LIGHT_STATE_RED_FLASH; consumes no instance wire bytes. */
    public static final long CONST_LIGHT_STATE_RED_FLASH = 9L;
    /** @brief Original source constant LIGHT_STATE_GREEN_FLASH; consumes no instance wire bytes. */
    public static final long CONST_LIGHT_STATE_GREEN_FLASH = 10L;
    /** @brief Original source constant LIGHT_STATE_YELLOW_FLASH; consumes no instance wire bytes. */
    public static final long CONST_LIGHT_STATE_YELLOW_FLASH = 11L;
    /** @brief Original source constant LIGHT_STATE_BLUE_FLASH; consumes no instance wire bytes. */
    public static final long CONST_LIGHT_STATE_BLUE_FLASH = 12L;
    /** @brief Original source constant LIGHT_STATE_PURPLE_FLASH; consumes no instance wire bytes. */
    public static final long CONST_LIGHT_STATE_PURPLE_FLASH = 13L;
    /** @brief Original source constant LIGHT_STATE_CYAN_FLASH; consumes no instance wire bytes. */
    public static final long CONST_LIGHT_STATE_CYAN_FLASH = 14L;
    /** @brief Original source constant LIGHT_STATE_WHITE_FLASH; consumes no instance wire bytes. */
    public static final long CONST_LIGHT_STATE_WHITE_FLASH = 15L;
    /** @brief Complete native field light_state; scalar, text bound 0. */
    public long field_light_state = 0L;

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros2Interbotix_slate_msgsSrvSetLightState_Request()
    {
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros2Interbotix_slate_msgsSrvSetLightState_Request value)
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
    public static Ros2Interbotix_slate_msgsSrvSetLightState_Request decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros2Interbotix_slate_msgsSrvSetLightState_Request value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros2Interbotix_slate_msgsSrvSetLightState_Request value)
    {
        if(value == null)
        {
            throw new IllegalArgumentException("Null canonical record");
        }
        int start = wire.position();
        wire.u32(value.field_light_state);
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
    public static Ros2Interbotix_slate_msgsSrvSetLightState_Request readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros2Interbotix_slate_msgsSrvSetLightState_Request value = new Ros2Interbotix_slate_msgsSrvSetLightState_Request();
        value.field_light_state = wire.u32();
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
        return value;
    }
}
