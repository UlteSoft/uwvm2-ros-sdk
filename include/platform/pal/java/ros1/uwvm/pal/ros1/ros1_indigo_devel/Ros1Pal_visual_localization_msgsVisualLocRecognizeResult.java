package uwvm.pal.ros1.ros1_indigo_devel;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 1 pal_visual_localization_msgs/VisualLocRecognizeResult value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros1Pal_visual_localization_msgsVisualLocRecognizeResult
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 497;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 369;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_e20e2e4ba374756256518e0e7075689be3c87660703926ab5d1cb33c8ff1c6da";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "pal_visual_localization_msgs/VisualLocRecognizeResult";
    /** @brief Original native identity; empty native identity is unqualified. */
    public static final String NATIVE_IDENTITY = "";
    /** @brief Complete native field success; scalar, text bound 0. */
    public boolean field_success = false;
    /** @brief Complete native field confidence; scalar, text bound 0. */
    public double field_confidence = Double.longBitsToDouble(0x0000000000000000L);
    /** @brief Complete native field estimatedPose; scalar, text bound 0. */
    public Ros1Geometry_msgsPoseWithCovarianceStamped field_estimatedPose = new Ros1Geometry_msgsPoseWithCovarianceStamped();

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros1Pal_visual_localization_msgsVisualLocRecognizeResult()
    {
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros1Pal_visual_localization_msgsVisualLocRecognizeResult value)
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
    public static Ros1Pal_visual_localization_msgsVisualLocRecognizeResult decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros1Pal_visual_localization_msgsVisualLocRecognizeResult value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros1Pal_visual_localization_msgsVisualLocRecognizeResult value)
    {
        if(value == null)
        {
            throw new IllegalArgumentException("Null canonical record");
        }
        int start = wire.position();
        wire.bool(value.field_success);
        if(!Double.isFinite(value.field_confidence))
        {
            throw new IllegalArgumentException("Nonfinite confidence");
        }
        wire.f64(value.field_confidence);
        Ros1Geometry_msgsPoseWithCovarianceStamped.writeFields(wire, value.field_estimatedPose);
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
    public static Ros1Pal_visual_localization_msgsVisualLocRecognizeResult readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros1Pal_visual_localization_msgsVisualLocRecognizeResult value = new Ros1Pal_visual_localization_msgsVisualLocRecognizeResult();
        value.field_success = wire.bool();
        value.field_confidence = wire.f64();
        if(!Double.isFinite(value.field_confidence))
        {
            throw new IllegalArgumentException("Nonfinite confidence");
        }
        value.field_estimatedPose = Ros1Geometry_msgsPoseWithCovarianceStamped.readFields(wire);
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
        return value;
    }
}
