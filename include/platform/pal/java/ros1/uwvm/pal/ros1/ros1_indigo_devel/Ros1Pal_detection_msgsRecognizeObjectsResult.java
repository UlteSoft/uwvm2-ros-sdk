package uwvm.pal.ros1.ros1_indigo_devel;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 1 pal_detection_msgs/RecognizeObjectsResult value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros1Pal_detection_msgsRecognizeObjectsResult
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 5138;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 46;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_1d30540a71461481094e70b11d19c4a327881fd6ed81689bc948b3de5853b8da";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "pal_detection_msgs/RecognizeObjectsResult";
    /** @brief Original native identity; empty native identity is unqualified. */
    public static final String NATIVE_IDENTITY = "";
    /** @brief Complete native field image; scalar, text bound 0. */
    public Ros1Sensor_msgsCompressedImage field_image = new Ros1Sensor_msgsCompressedImage();
    /** @brief Complete native field num_detections; scalar, text bound 0. */
    public short field_num_detections = (short)0;
    /** @brief Complete native field recognized_objects; scalar, text bound 0. */
    public Ros1Pal_detection_msgsRecognizedObjectArray field_recognized_objects = new Ros1Pal_detection_msgsRecognizedObjectArray();

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros1Pal_detection_msgsRecognizeObjectsResult()
    {
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros1Pal_detection_msgsRecognizeObjectsResult value)
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
    public static Ros1Pal_detection_msgsRecognizeObjectsResult decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros1Pal_detection_msgsRecognizeObjectsResult value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros1Pal_detection_msgsRecognizeObjectsResult value)
    {
        if(value == null)
        {
            throw new IllegalArgumentException("Null canonical record");
        }
        int start = wire.position();
        Ros1Sensor_msgsCompressedImage.writeFields(wire, value.field_image);
        wire.i16(value.field_num_detections);
        Ros1Pal_detection_msgsRecognizedObjectArray.writeFields(wire, value.field_recognized_objects);
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
    public static Ros1Pal_detection_msgsRecognizeObjectsResult readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros1Pal_detection_msgsRecognizeObjectsResult value = new Ros1Pal_detection_msgsRecognizeObjectsResult();
        value.field_image = Ros1Sensor_msgsCompressedImage.readFields(wire);
        value.field_num_detections = wire.i16();
        value.field_recognized_objects = Ros1Pal_detection_msgsRecognizedObjectArray.readFields(wire);
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
        return value;
    }
}
