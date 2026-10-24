package uwvm.pal.ros1.ros1_humble_devel;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 1 pal_navigation_msgs/SafetyZoneRequest value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros1Pal_navigation_msgsSafetyZoneRequest
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 28;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 28;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_c7bfca2804a0307c6666f800ecaacccc5daf70a315407b097799b2ea2ce8d53f";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "pal_navigation_msgs/SafetyZoneRequest";
    /** @brief Original native identity; empty native identity is unqualified. */
    public static final String NATIVE_IDENTITY = "";
    /** @brief Original source constant NO_SENSORS; consumes no instance wire bytes. */
    public static final byte CONST_NO_SENSORS = (byte)0;
    /** @brief Original source constant ALL_SENSORS; consumes no instance wire bytes. */
    public static final byte CONST_ALL_SENSORS = (byte)127;
    /** @brief Original source constant FRONT_SONARS; consumes no instance wire bytes. */
    public static final byte CONST_FRONT_SONARS = (byte)1;
    /** @brief Original source constant LEFT_SONARS; consumes no instance wire bytes. */
    public static final byte CONST_LEFT_SONARS = (byte)2;
    /** @brief Original source constant RIGHT_SONARS; consumes no instance wire bytes. */
    public static final byte CONST_RIGHT_SONARS = (byte)4;
    /** @brief Original source constant BACK_SONARS; consumes no instance wire bytes. */
    public static final byte CONST_BACK_SONARS = (byte)8;
    /** @brief Original source constant TORSO_SONARS; consumes no instance wire bytes. */
    public static final byte CONST_TORSO_SONARS = (byte)16;
    /** @brief Original source constant ONLY_SONARS; consumes no instance wire bytes. */
    public static final byte CONST_ONLY_SONARS = (byte)31;
    /** @brief Original source constant BASE_LASER; consumes no instance wire bytes. */
    public static final byte CONST_BASE_LASER = (byte)32;
    /** @brief Original source constant TORSO_LASER; consumes no instance wire bytes. */
    public static final byte CONST_TORSO_LASER = (byte)64;
    /** @brief Original source constant ONLY_LASERS; consumes no instance wire bytes. */
    public static final byte CONST_ONLY_LASERS = (byte)96;
    /** @brief Complete native field distance; scalar, text bound 0. */
    public double field_distance = Double.longBitsToDouble(0x0000000000000000L);
    /** @brief Complete native field leftAngleRad; scalar, text bound 0. */
    public double field_leftAngleRad = Double.longBitsToDouble(0x0000000000000000L);
    /** @brief Complete native field rightAngleRad; scalar, text bound 0. */
    public double field_rightAngleRad = Double.longBitsToDouble(0x0000000000000000L);
    /** @brief Complete native field sensorMask; scalar, text bound 0. */
    public long field_sensorMask = 0L;

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros1Pal_navigation_msgsSafetyZoneRequest()
    {
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros1Pal_navigation_msgsSafetyZoneRequest value)
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
    public static Ros1Pal_navigation_msgsSafetyZoneRequest decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros1Pal_navigation_msgsSafetyZoneRequest value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros1Pal_navigation_msgsSafetyZoneRequest value)
    {
        if(value == null)
        {
            throw new IllegalArgumentException("Null canonical record");
        }
        int start = wire.position();
        if(!Double.isFinite(value.field_distance))
        {
            throw new IllegalArgumentException("Nonfinite distance");
        }
        wire.f64(value.field_distance);
        if(!Double.isFinite(value.field_leftAngleRad))
        {
            throw new IllegalArgumentException("Nonfinite leftAngleRad");
        }
        wire.f64(value.field_leftAngleRad);
        if(!Double.isFinite(value.field_rightAngleRad))
        {
            throw new IllegalArgumentException("Nonfinite rightAngleRad");
        }
        wire.f64(value.field_rightAngleRad);
        wire.u32(value.field_sensorMask);
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
    public static Ros1Pal_navigation_msgsSafetyZoneRequest readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros1Pal_navigation_msgsSafetyZoneRequest value = new Ros1Pal_navigation_msgsSafetyZoneRequest();
        value.field_distance = wire.f64();
        if(!Double.isFinite(value.field_distance))
        {
            throw new IllegalArgumentException("Nonfinite distance");
        }
        value.field_leftAngleRad = wire.f64();
        if(!Double.isFinite(value.field_leftAngleRad))
        {
            throw new IllegalArgumentException("Nonfinite leftAngleRad");
        }
        value.field_rightAngleRad = wire.f64();
        if(!Double.isFinite(value.field_rightAngleRad))
        {
            throw new IllegalArgumentException("Nonfinite rightAngleRad");
        }
        value.field_sensorMask = wire.u32();
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
        return value;
    }
}
