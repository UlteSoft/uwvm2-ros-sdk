package uwvm.pal.ros1.ros1_noetic_devel;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 1 pal_vision_msgs/DetectedPerson value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros1Pal_vision_msgsDetectedPerson
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 264;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 136;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_ce1f7b8789e0928dc98ba3819be067f6bb077a9144f475f5c50a849be781c82e";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "pal_vision_msgs/DetectedPerson";
    /** @brief Original native identity; empty native identity is unqualified. */
    public static final String NATIVE_IDENTITY = "";
    /** @brief Complete native field header; scalar, text bound 0. */
    public Ros1Std_msgsHeader field_header = new Ros1Std_msgsHeader();
    /** @brief Complete native field objectId; scalar, text bound 0. */
    public long field_objectId = 0x0000000000000000L;
    /** @brief Complete native field boxColour; scalar, text bound 0. */
    public Ros1Std_msgsColorRGBA field_boxColour = new Ros1Std_msgsColorRGBA();
    /** @brief Complete native field confidence; scalar, text bound 0. */
    public double field_confidence = Double.longBitsToDouble(0x0000000000000000L);
    /** @brief Complete native field position3D; scalar, text bound 0. */
    public Ros1Geometry_msgsPoint field_position3D = new Ros1Geometry_msgsPoint();
    /** @brief Complete native field box; scalar, text bound 0. */
    public Ros1Pal_vision_msgsRectangle field_box = new Ros1Pal_vision_msgsRectangle();
    /** @brief Complete native field faceBox; scalar, text bound 0. */
    public Ros1Pal_vision_msgsRectangle field_faceBox = new Ros1Pal_vision_msgsRectangle();

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros1Pal_vision_msgsDetectedPerson()
    {
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros1Pal_vision_msgsDetectedPerson value)
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
    public static Ros1Pal_vision_msgsDetectedPerson decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros1Pal_vision_msgsDetectedPerson value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros1Pal_vision_msgsDetectedPerson value)
    {
        if(value == null)
        {
            throw new IllegalArgumentException("Null canonical record");
        }
        int start = wire.position();
        Ros1Std_msgsHeader.writeFields(wire, value.field_header);
        wire.i64(value.field_objectId);
        Ros1Std_msgsColorRGBA.writeFields(wire, value.field_boxColour);
        if(!Double.isFinite(value.field_confidence))
        {
            throw new IllegalArgumentException("Nonfinite confidence");
        }
        wire.f64(value.field_confidence);
        Ros1Geometry_msgsPoint.writeFields(wire, value.field_position3D);
        Ros1Pal_vision_msgsRectangle.writeFields(wire, value.field_box);
        Ros1Pal_vision_msgsRectangle.writeFields(wire, value.field_faceBox);
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
    public static Ros1Pal_vision_msgsDetectedPerson readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros1Pal_vision_msgsDetectedPerson value = new Ros1Pal_vision_msgsDetectedPerson();
        value.field_header = Ros1Std_msgsHeader.readFields(wire);
        value.field_objectId = wire.i64();
        value.field_boxColour = Ros1Std_msgsColorRGBA.readFields(wire);
        value.field_confidence = wire.f64();
        if(!Double.isFinite(value.field_confidence))
        {
            throw new IllegalArgumentException("Nonfinite confidence");
        }
        value.field_position3D = Ros1Geometry_msgsPoint.readFields(wire);
        value.field_box = Ros1Pal_vision_msgsRectangle.readFields(wire);
        value.field_faceBox = Ros1Pal_vision_msgsRectangle.readFields(wire);
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
        return value;
    }
}
