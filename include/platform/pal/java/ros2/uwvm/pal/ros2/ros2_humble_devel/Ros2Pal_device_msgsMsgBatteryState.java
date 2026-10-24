package uwvm.pal.ros2.ros2_humble_devel;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 2 pal_device_msgs/msg/BatteryState value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros2Pal_device_msgsMsgBatteryState
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 5;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 5;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_a9ea99580734e3ff1f8254e19a2543e049b52bb480642e6b31beda7fff3dc904";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "pal_device_msgs/msg/BatteryState";
    /** @brief Original native identity; empty native identity is unqualified. */
    public static final String NATIVE_IDENTITY = "";
    /** @brief Original source constant FULL; consumes no instance wire bytes. */
    public static final int CONST_FULL = 5;
    /** @brief Original source constant HIGH; consumes no instance wire bytes. */
    public static final int CONST_HIGH = 4;
    /** @brief Original source constant MEDIUM; consumes no instance wire bytes. */
    public static final int CONST_MEDIUM = 3;
    /** @brief Original source constant LOW; consumes no instance wire bytes. */
    public static final int CONST_LOW = 2;
    /** @brief Original source constant CRITICAL_LOW; consumes no instance wire bytes. */
    public static final int CONST_CRITICAL_LOW = 1;
    /** @brief Complete native field charge_state; scalar, text bound 0. */
    public byte field_charge_state = (byte)0;
    /** @brief Complete native field battery_percentage; scalar, text bound 0. */
    public float field_battery_percentage = Float.intBitsToFloat(0x00000000);

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros2Pal_device_msgsMsgBatteryState()
    {
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros2Pal_device_msgsMsgBatteryState value)
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
    public static Ros2Pal_device_msgsMsgBatteryState decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros2Pal_device_msgsMsgBatteryState value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros2Pal_device_msgsMsgBatteryState value)
    {
        if(value == null)
        {
            throw new IllegalArgumentException("Null canonical record");
        }
        int start = wire.position();
        wire.i8(value.field_charge_state);
        if(!Float.isFinite(value.field_battery_percentage))
        {
            throw new IllegalArgumentException("Nonfinite battery_percentage");
        }
        wire.f32(value.field_battery_percentage);
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
    public static Ros2Pal_device_msgsMsgBatteryState readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros2Pal_device_msgsMsgBatteryState value = new Ros2Pal_device_msgsMsgBatteryState();
        value.field_charge_state = wire.i8();
        value.field_battery_percentage = wire.f32();
        if(!Float.isFinite(value.field_battery_percentage))
        {
            throw new IllegalArgumentException("Nonfinite battery_percentage");
        }
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
        return value;
    }
}
