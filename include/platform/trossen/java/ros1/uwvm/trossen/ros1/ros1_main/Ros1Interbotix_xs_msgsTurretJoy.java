package uwvm.trossen.ros1.ros1_main;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 1 interbotix_xs_msgs/TurretJoy value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros1Interbotix_xs_msgsTurretJoy
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 4;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 4;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_723dfe84ba93acb0acee9131da0af65fe5b508f33e43d5ff9d30d2137b102b70";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "interbotix_xs_msgs/TurretJoy";
    /** @brief Original native identity; empty native identity is unqualified. */
    public static final String NATIVE_IDENTITY = "";
    /** @brief Original source constant PAN_CCW; consumes no instance wire bytes. */
    public static final byte CONST_PAN_CCW = (byte)1;
    /** @brief Original source constant PAN_CW; consumes no instance wire bytes. */
    public static final byte CONST_PAN_CW = (byte)2;
    /** @brief Original source constant TILT_UP; consumes no instance wire bytes. */
    public static final byte CONST_TILT_UP = (byte)3;
    /** @brief Original source constant TILT_DOWN; consumes no instance wire bytes. */
    public static final byte CONST_TILT_DOWN = (byte)4;
    /** @brief Original source constant PAN_TILT_HOME; consumes no instance wire bytes. */
    public static final byte CONST_PAN_TILT_HOME = (byte)5;
    /** @brief Original source constant SPEED_INC; consumes no instance wire bytes. */
    public static final byte CONST_SPEED_INC = (byte)6;
    /** @brief Original source constant SPEED_DEC; consumes no instance wire bytes. */
    public static final byte CONST_SPEED_DEC = (byte)7;
    /** @brief Original source constant SPEED_COURSE; consumes no instance wire bytes. */
    public static final byte CONST_SPEED_COURSE = (byte)8;
    /** @brief Original source constant SPEED_FINE; consumes no instance wire bytes. */
    public static final byte CONST_SPEED_FINE = (byte)9;
    /** @brief Complete native field pan_cmd; scalar, text bound 0. */
    public byte field_pan_cmd = (byte)0;
    /** @brief Complete native field tilt_cmd; scalar, text bound 0. */
    public byte field_tilt_cmd = (byte)0;
    /** @brief Complete native field speed_cmd; scalar, text bound 0. */
    public byte field_speed_cmd = (byte)0;
    /** @brief Complete native field speed_toggle_cmd; scalar, text bound 0. */
    public byte field_speed_toggle_cmd = (byte)0;

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros1Interbotix_xs_msgsTurretJoy()
    {
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros1Interbotix_xs_msgsTurretJoy value)
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
    public static Ros1Interbotix_xs_msgsTurretJoy decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros1Interbotix_xs_msgsTurretJoy value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros1Interbotix_xs_msgsTurretJoy value)
    {
        if(value == null)
        {
            throw new IllegalArgumentException("Null canonical record");
        }
        int start = wire.position();
        wire.i8(value.field_pan_cmd);
        wire.i8(value.field_tilt_cmd);
        wire.i8(value.field_speed_cmd);
        wire.i8(value.field_speed_toggle_cmd);
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
    public static Ros1Interbotix_xs_msgsTurretJoy readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros1Interbotix_xs_msgsTurretJoy value = new Ros1Interbotix_xs_msgsTurretJoy();
        value.field_pan_cmd = wire.i8();
        value.field_tilt_cmd = wire.i8();
        value.field_speed_cmd = wire.i8();
        value.field_speed_toggle_cmd = wire.i8();
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
        return value;
    }
}
