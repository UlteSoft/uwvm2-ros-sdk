package uwvm.pal.ros1.ros1_humble_devel;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 1 pal_detection_msgs/PersonDetections value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros1Pal_detection_msgsPersonDetections
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 5508;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 96;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_cafbf2a5df82057119e9638012e379e0126c0cb951ca159747ebe69c1ed0fd91";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "pal_detection_msgs/PersonDetections";
    /** @brief Original native identity; empty native identity is unqualified. */
    public static final String NATIVE_IDENTITY = "";
    /** @brief Complete native field header; scalar, text bound 0. */
    public Ros1Std_msgsHeader field_header = new Ros1Std_msgsHeader();
    /** @brief Complete native field persons; sequence capacity 4, text bound 0. */
    public Ros1Pal_detection_msgsPersonDetection[] field_persons = new Ros1Pal_detection_msgsPersonDetection[0];
    /** @brief Complete native field camera_pose; scalar, text bound 0. */
    public Ros1Geometry_msgsTransformStamped field_camera_pose = new Ros1Geometry_msgsTransformStamped();

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros1Pal_detection_msgsPersonDetections()
    {
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros1Pal_detection_msgsPersonDetections value)
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
    public static Ros1Pal_detection_msgsPersonDetections decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros1Pal_detection_msgsPersonDetections value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros1Pal_detection_msgsPersonDetections value)
    {
        if(value == null)
        {
            throw new IllegalArgumentException("Null canonical record");
        }
        int start = wire.position();
        Ros1Std_msgsHeader.writeFields(wire, value.field_header);
        if(value.field_persons == null || value.field_persons.length > 4)
        {
            throw new IllegalArgumentException("Invalid persons extent");
        }
        wire.u32((long)value.field_persons.length);
        for(int index = 0; index < value.field_persons.length; index++)
        {
            Ros1Pal_detection_msgsPersonDetection.writeFields(wire, value.field_persons[index]);
        }
        Ros1Geometry_msgsTransformStamped.writeFields(wire, value.field_camera_pose);
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
    public static Ros1Pal_detection_msgsPersonDetections readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros1Pal_detection_msgsPersonDetections value = new Ros1Pal_detection_msgsPersonDetections();
        value.field_header = Ros1Std_msgsHeader.readFields(wire);
        value.field_persons = new Ros1Pal_detection_msgsPersonDetection[wire.count(4)];
        for(int index = 0; index < value.field_persons.length; index++)
        {
            value.field_persons[index] = Ros1Pal_detection_msgsPersonDetection.readFields(wire);
        }
        value.field_camera_pose = Ros1Geometry_msgsTransformStamped.readFields(wire);
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
        return value;
    }
}
