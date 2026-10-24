package uwvm.pal.ros1.ros1_noetic_devel;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 1 pal_vision_msgs/FaceDetection value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros1Pal_vision_msgsFaceDetection
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 124;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 60;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_57943eb9a19b9558fc5e7390bfbb3f7ab271cfb5ab7892bc1442a43c8d3217d5";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "pal_vision_msgs/FaceDetection";
    /** @brief Original native identity; empty native identity is unqualified. */
    public static final String NATIVE_IDENTITY = "";
    /** @brief Complete native field position3D; scalar, text bound 0. */
    public Ros1Geometry_msgsPoint field_position3D = new Ros1Geometry_msgsPoint();
    /** @brief Complete native field imageBoundingBox; scalar, text bound 0. */
    public Ros1Pal_vision_msgsRectangle field_imageBoundingBox = new Ros1Pal_vision_msgsRectangle();
    /** @brief Complete native field hog; sequence capacity 16, text bound 0. */
    public float[] field_hog = new float[0];

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros1Pal_vision_msgsFaceDetection()
    {
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros1Pal_vision_msgsFaceDetection value)
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
    public static Ros1Pal_vision_msgsFaceDetection decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros1Pal_vision_msgsFaceDetection value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros1Pal_vision_msgsFaceDetection value)
    {
        if(value == null)
        {
            throw new IllegalArgumentException("Null canonical record");
        }
        int start = wire.position();
        Ros1Geometry_msgsPoint.writeFields(wire, value.field_position3D);
        Ros1Pal_vision_msgsRectangle.writeFields(wire, value.field_imageBoundingBox);
        if(value.field_hog == null || value.field_hog.length > 16)
        {
            throw new IllegalArgumentException("Invalid hog extent");
        }
        wire.u32((long)value.field_hog.length);
        for(int index = 0; index < value.field_hog.length; index++)
        {
            if(!Float.isFinite(value.field_hog[index]))
            {
                throw new IllegalArgumentException("Nonfinite hog");
            }
            wire.f32(value.field_hog[index]);
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
    public static Ros1Pal_vision_msgsFaceDetection readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros1Pal_vision_msgsFaceDetection value = new Ros1Pal_vision_msgsFaceDetection();
        value.field_position3D = Ros1Geometry_msgsPoint.readFields(wire);
        value.field_imageBoundingBox = Ros1Pal_vision_msgsRectangle.readFields(wire);
        value.field_hog = new float[wire.count(16)];
        for(int index = 0; index < value.field_hog.length; index++)
        {
            value.field_hog[index] = wire.f32();
            if(!Float.isFinite(value.field_hog[index]))
            {
                throw new IllegalArgumentException("Nonfinite hog");
            }
        }
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
        return value;
    }
}
