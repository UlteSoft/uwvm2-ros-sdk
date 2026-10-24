package uwvm.pal.ros1.ros1_humble_devel;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 1 pal_vision_msgs/FaceRecognitionFeedback value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros1Pal_vision_msgsFaceRecognitionFeedback
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 2185;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 9;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_42cb3618f562e3083ca7069e0f41233a9584cd00b9a3d2cb791d5956735dbfd7";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "pal_vision_msgs/FaceRecognitionFeedback";
    /** @brief Original native identity; empty native identity is unqualified. */
    public static final String NATIVE_IDENTITY = "";
    /** @brief Complete native field order_id; scalar, text bound 0. */
    public int field_order_id = 0;
    /** @brief Complete native field names; sequence capacity 16, text bound 128. */
    public String[] field_names = new String[0];
    /** @brief Complete native field confidence; sequence capacity 16, text bound 0. */
    public float[] field_confidence = new float[0];

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros1Pal_vision_msgsFaceRecognitionFeedback()
    {
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros1Pal_vision_msgsFaceRecognitionFeedback value)
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
    public static Ros1Pal_vision_msgsFaceRecognitionFeedback decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros1Pal_vision_msgsFaceRecognitionFeedback value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros1Pal_vision_msgsFaceRecognitionFeedback value)
    {
        if(value == null)
        {
            throw new IllegalArgumentException("Null canonical record");
        }
        int start = wire.position();
        wire.u8(value.field_order_id);
        if(value.field_names == null || value.field_names.length > 16)
        {
            throw new IllegalArgumentException("Invalid names extent");
        }
        wire.u32((long)value.field_names.length);
        for(int index = 0; index < value.field_names.length; index++)
        {
            wire.string(value.field_names[index], 128);
        }
        if(value.field_confidence == null || value.field_confidence.length > 16)
        {
            throw new IllegalArgumentException("Invalid confidence extent");
        }
        wire.u32((long)value.field_confidence.length);
        for(int index = 0; index < value.field_confidence.length; index++)
        {
            if(!Float.isFinite(value.field_confidence[index]))
            {
                throw new IllegalArgumentException("Nonfinite confidence");
            }
            wire.f32(value.field_confidence[index]);
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
    public static Ros1Pal_vision_msgsFaceRecognitionFeedback readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros1Pal_vision_msgsFaceRecognitionFeedback value = new Ros1Pal_vision_msgsFaceRecognitionFeedback();
        value.field_order_id = wire.u8();
        value.field_names = new String[wire.count(16)];
        for(int index = 0; index < value.field_names.length; index++)
        {
            value.field_names[index] = wire.string(128);
        }
        value.field_confidence = new float[wire.count(16)];
        for(int index = 0; index < value.field_confidence.length; index++)
        {
            value.field_confidence[index] = wire.f32();
            if(!Float.isFinite(value.field_confidence[index]))
            {
                throw new IllegalArgumentException("Nonfinite confidence");
            }
        }
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
        return value;
    }
}
