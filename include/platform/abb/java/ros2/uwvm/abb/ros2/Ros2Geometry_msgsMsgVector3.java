/**
 * @file Ros2Geometry_msgsMsgVector3.java
 * @brief Represent the complete original ABB ROS 2 canonical value catalog.
 * @details The caller owns every record and its finite dynamic backing storage. Codecs retain all
 * fields, original constants and native defaults; field units and frames follow the retained
 * definitions. Malformed or out-of-bound wire values are rejected. These are guest values rather than
 * native ROS objects; importing them grants no transport alias.
 */
package uwvm.abb.ros2;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 2 geometry_msgs/msg/Vector3 value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros2Geometry_msgsMsgVector3
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 24;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 24;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_5adebf211fe375fba92c0628f9b8ebf05bff9ab22ddc4bbf00629167af295d5e";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "geometry_msgs/msg/Vector3";
    /** @brief Original native identity; empty native identity is unqualified. */
    public static final String NATIVE_IDENTITY = "";
    /** @brief Complete native field x; scalar, text bound 0. */
    public double field_x = Double.longBitsToDouble(0x0000000000000000L);
    /** @brief Complete native field y; scalar, text bound 0. */
    public double field_y = Double.longBitsToDouble(0x0000000000000000L);
    /** @brief Complete native field z; scalar, text bound 0. */
    public double field_z = Double.longBitsToDouble(0x0000000000000000L);

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros2Geometry_msgsMsgVector3()
    {
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros2Geometry_msgsMsgVector3 value)
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
    public static Ros2Geometry_msgsMsgVector3 decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros2Geometry_msgsMsgVector3 value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros2Geometry_msgsMsgVector3 value)
    {
        if(value == null)
        {
            throw new IllegalArgumentException("Null canonical record");
        }
        int start = wire.position();
        if(!Double.isFinite(value.field_x))
        {
            throw new IllegalArgumentException("Nonfinite x");
        }
        wire.f64(value.field_x);
        if(!Double.isFinite(value.field_y))
        {
            throw new IllegalArgumentException("Nonfinite y");
        }
        wire.f64(value.field_y);
        if(!Double.isFinite(value.field_z))
        {
            throw new IllegalArgumentException("Nonfinite z");
        }
        wire.f64(value.field_z);
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
    public static Ros2Geometry_msgsMsgVector3 readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros2Geometry_msgsMsgVector3 value = new Ros2Geometry_msgsMsgVector3();
        value.field_x = wire.f64();
        if(!Double.isFinite(value.field_x))
        {
            throw new IllegalArgumentException("Nonfinite x");
        }
        value.field_y = wire.f64();
        if(!Double.isFinite(value.field_y))
        {
            throw new IllegalArgumentException("Nonfinite y");
        }
        value.field_z = wire.f64();
        if(!Double.isFinite(value.field_z))
        {
            throw new IllegalArgumentException("Nonfinite z");
        }
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
        return value;
    }
}
