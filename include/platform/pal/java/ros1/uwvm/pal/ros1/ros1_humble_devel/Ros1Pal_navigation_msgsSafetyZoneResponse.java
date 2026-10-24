package uwvm.pal.ros1.ros1_humble_devel;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 1 pal_navigation_msgs/SafetyZoneResponse value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros1Pal_navigation_msgsSafetyZoneResponse
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 34;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 34;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_237e4207a82e5b1a1caccdf5a010cef018d1bcebff8c00a550d11bb5f729d122";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "pal_navigation_msgs/SafetyZoneResponse";
    /** @brief Original native identity; empty native identity is unqualified. */
    public static final String NATIVE_IDENTITY = "";
    /** @brief Complete native field leftSafe; scalar, text bound 0. */
    public boolean field_leftSafe = false;
    /** @brief Complete native field leftMinDist; scalar, text bound 0. */
    public double field_leftMinDist = Double.longBitsToDouble(0x0000000000000000L);
    /** @brief Complete native field leftMinDistAngleRad; scalar, text bound 0. */
    public double field_leftMinDistAngleRad = Double.longBitsToDouble(0x0000000000000000L);
    /** @brief Complete native field rightSafe; scalar, text bound 0. */
    public boolean field_rightSafe = false;
    /** @brief Complete native field rightMinDist; scalar, text bound 0. */
    public double field_rightMinDist = Double.longBitsToDouble(0x0000000000000000L);
    /** @brief Complete native field rightMinDistAngleRad; scalar, text bound 0. */
    public double field_rightMinDistAngleRad = Double.longBitsToDouble(0x0000000000000000L);

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros1Pal_navigation_msgsSafetyZoneResponse()
    {
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros1Pal_navigation_msgsSafetyZoneResponse value)
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
    public static Ros1Pal_navigation_msgsSafetyZoneResponse decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros1Pal_navigation_msgsSafetyZoneResponse value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros1Pal_navigation_msgsSafetyZoneResponse value)
    {
        if(value == null)
        {
            throw new IllegalArgumentException("Null canonical record");
        }
        int start = wire.position();
        wire.bool(value.field_leftSafe);
        if(!Double.isFinite(value.field_leftMinDist))
        {
            throw new IllegalArgumentException("Nonfinite leftMinDist");
        }
        wire.f64(value.field_leftMinDist);
        if(!Double.isFinite(value.field_leftMinDistAngleRad))
        {
            throw new IllegalArgumentException("Nonfinite leftMinDistAngleRad");
        }
        wire.f64(value.field_leftMinDistAngleRad);
        wire.bool(value.field_rightSafe);
        if(!Double.isFinite(value.field_rightMinDist))
        {
            throw new IllegalArgumentException("Nonfinite rightMinDist");
        }
        wire.f64(value.field_rightMinDist);
        if(!Double.isFinite(value.field_rightMinDistAngleRad))
        {
            throw new IllegalArgumentException("Nonfinite rightMinDistAngleRad");
        }
        wire.f64(value.field_rightMinDistAngleRad);
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
    public static Ros1Pal_navigation_msgsSafetyZoneResponse readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros1Pal_navigation_msgsSafetyZoneResponse value = new Ros1Pal_navigation_msgsSafetyZoneResponse();
        value.field_leftSafe = wire.bool();
        value.field_leftMinDist = wire.f64();
        if(!Double.isFinite(value.field_leftMinDist))
        {
            throw new IllegalArgumentException("Nonfinite leftMinDist");
        }
        value.field_leftMinDistAngleRad = wire.f64();
        if(!Double.isFinite(value.field_leftMinDistAngleRad))
        {
            throw new IllegalArgumentException("Nonfinite leftMinDistAngleRad");
        }
        value.field_rightSafe = wire.bool();
        value.field_rightMinDist = wire.f64();
        if(!Double.isFinite(value.field_rightMinDist))
        {
            throw new IllegalArgumentException("Nonfinite rightMinDist");
        }
        value.field_rightMinDistAngleRad = wire.f64();
        if(!Double.isFinite(value.field_rightMinDistAngleRad))
        {
            throw new IllegalArgumentException("Nonfinite rightMinDistAngleRad");
        }
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
        return value;
    }
}
