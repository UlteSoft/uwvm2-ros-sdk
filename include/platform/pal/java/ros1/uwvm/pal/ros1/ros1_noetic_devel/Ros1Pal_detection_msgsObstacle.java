package uwvm.pal.ros1.ros1_noetic_devel;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 1 pal_detection_msgs/Obstacle value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros1Pal_detection_msgsObstacle
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 72;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 72;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_ebc85fb238f48ed8d9d595afd92f5f28c4ead850154e350733e09ec1d407c661";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "pal_detection_msgs/Obstacle";
    /** @brief Original native identity; empty native identity is unqualified. */
    public static final String NATIVE_IDENTITY = "";
    /** @brief Complete native field id; scalar, text bound 0. */
    public long field_id = 0x0000000000000000L;
    /** @brief Complete native field position; scalar, text bound 0. */
    public Ros1Geometry_msgsPoint field_position = new Ros1Geometry_msgsPoint();
    /** @brief Complete native field position_covariance; array capacity 4, text bound 0. */
    public double[] field_position_covariance = new double[4];
    /** @brief Complete native field width; scalar, text bound 0. */
    public float field_width = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field height; scalar, text bound 0. */
    public float field_height = Float.intBitsToFloat(0x00000000);

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros1Pal_detection_msgsObstacle()
    {
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros1Pal_detection_msgsObstacle value)
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
    public static Ros1Pal_detection_msgsObstacle decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros1Pal_detection_msgsObstacle value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros1Pal_detection_msgsObstacle value)
    {
        if(value == null)
        {
            throw new IllegalArgumentException("Null canonical record");
        }
        int start = wire.position();
        wire.i64(value.field_id);
        Ros1Geometry_msgsPoint.writeFields(wire, value.field_position);
        if(value.field_position_covariance == null || value.field_position_covariance.length != 4)
        {
            throw new IllegalArgumentException("Invalid position_covariance extent");
        }
        for(int index = 0; index < value.field_position_covariance.length; index++)
        {
            if(!Double.isFinite(value.field_position_covariance[index]))
            {
                throw new IllegalArgumentException("Nonfinite position_covariance");
            }
            wire.f64(value.field_position_covariance[index]);
        }
        if(!Float.isFinite(value.field_width))
        {
            throw new IllegalArgumentException("Nonfinite width");
        }
        wire.f32(value.field_width);
        if(!Float.isFinite(value.field_height))
        {
            throw new IllegalArgumentException("Nonfinite height");
        }
        wire.f32(value.field_height);
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
    public static Ros1Pal_detection_msgsObstacle readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros1Pal_detection_msgsObstacle value = new Ros1Pal_detection_msgsObstacle();
        value.field_id = wire.i64();
        value.field_position = Ros1Geometry_msgsPoint.readFields(wire);
        value.field_position_covariance = new double[4];
        for(int index = 0; index < value.field_position_covariance.length; index++)
        {
            value.field_position_covariance[index] = wire.f64();
            if(!Double.isFinite(value.field_position_covariance[index]))
            {
                throw new IllegalArgumentException("Nonfinite position_covariance");
            }
        }
        value.field_width = wire.f32();
        if(!Float.isFinite(value.field_width))
        {
            throw new IllegalArgumentException("Nonfinite width");
        }
        value.field_height = wire.f32();
        if(!Float.isFinite(value.field_height))
        {
            throw new IllegalArgumentException("Nonfinite height");
        }
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
        return value;
    }
}
