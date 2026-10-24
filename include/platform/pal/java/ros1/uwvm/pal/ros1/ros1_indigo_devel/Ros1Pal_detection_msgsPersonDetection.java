package uwvm.pal.ros1.ros1_indigo_devel;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 1 pal_detection_msgs/PersonDetection value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros1Pal_detection_msgsPersonDetection
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 1257;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 265;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_4da91c014135c4fc077060bdfdde36f82e41d45729fe56642b33b83157d07853";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "pal_detection_msgs/PersonDetection";
    /** @brief Original native identity; empty native identity is unqualified. */
    public static final String NATIVE_IDENTITY = "";
    /** @brief Complete native field full_body; scalar, text bound 0. */
    public Ros1Pal_detection_msgsDetection2d field_full_body = new Ros1Pal_detection_msgsDetection2d();
    /** @brief Complete native field face; scalar, text bound 0. */
    public Ros1Pal_detection_msgsFaceDetection field_face = new Ros1Pal_detection_msgsFaceDetection();
    /** @brief Complete native field legs; scalar, text bound 0. */
    public Ros1Pal_detection_msgsLegDetections field_legs = new Ros1Pal_detection_msgsLegDetections();
    /** @brief Complete native field position3D; scalar, text bound 0. */
    public Ros1Geometry_msgsPointStamped field_position3D = new Ros1Geometry_msgsPointStamped();

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros1Pal_detection_msgsPersonDetection()
    {
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros1Pal_detection_msgsPersonDetection value)
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
    public static Ros1Pal_detection_msgsPersonDetection decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros1Pal_detection_msgsPersonDetection value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros1Pal_detection_msgsPersonDetection value)
    {
        if(value == null)
        {
            throw new IllegalArgumentException("Null canonical record");
        }
        int start = wire.position();
        Ros1Pal_detection_msgsDetection2d.writeFields(wire, value.field_full_body);
        Ros1Pal_detection_msgsFaceDetection.writeFields(wire, value.field_face);
        Ros1Pal_detection_msgsLegDetections.writeFields(wire, value.field_legs);
        Ros1Geometry_msgsPointStamped.writeFields(wire, value.field_position3D);
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
    public static Ros1Pal_detection_msgsPersonDetection readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros1Pal_detection_msgsPersonDetection value = new Ros1Pal_detection_msgsPersonDetection();
        value.field_full_body = Ros1Pal_detection_msgsDetection2d.readFields(wire);
        value.field_face = Ros1Pal_detection_msgsFaceDetection.readFields(wire);
        value.field_legs = Ros1Pal_detection_msgsLegDetections.readFields(wire);
        value.field_position3D = Ros1Geometry_msgsPointStamped.readFields(wire);
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
        return value;
    }
}
