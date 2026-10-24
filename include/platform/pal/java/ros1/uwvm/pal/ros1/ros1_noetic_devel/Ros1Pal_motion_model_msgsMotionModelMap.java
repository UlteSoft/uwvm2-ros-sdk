package uwvm.pal.ros1.ros1_noetic_devel;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 1 pal_motion_model_msgs/MotionModelMap value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros1Pal_motion_model_msgsMotionModelMap
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 624;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 96;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_6f1702acedc40207e16d9a06d68581fb055ac1b42135efdbbbd1477eff42b289";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "pal_motion_model_msgs/MotionModelMap";
    /** @brief Original native identity; empty native identity is unqualified. */
    public static final String NATIVE_IDENTITY = "";
    /** @brief Complete native field header; scalar, text bound 0. */
    public Ros1Std_msgsHeader field_header = new Ros1Std_msgsHeader();
    /** @brief Complete native field info; scalar, text bound 0. */
    public Ros1Nav_msgsMapMetaData field_info = new Ros1Nav_msgsMapMetaData();
    /** @brief Complete native field data; sequence capacity 4, text bound 0. */
    public Ros1Pal_motion_model_msgsMotionModelList[] field_data = new Ros1Pal_motion_model_msgsMotionModelList[0];

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros1Pal_motion_model_msgsMotionModelMap()
    {
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros1Pal_motion_model_msgsMotionModelMap value)
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
    public static Ros1Pal_motion_model_msgsMotionModelMap decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros1Pal_motion_model_msgsMotionModelMap value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros1Pal_motion_model_msgsMotionModelMap value)
    {
        if(value == null)
        {
            throw new IllegalArgumentException("Null canonical record");
        }
        int start = wire.position();
        Ros1Std_msgsHeader.writeFields(wire, value.field_header);
        Ros1Nav_msgsMapMetaData.writeFields(wire, value.field_info);
        if(value.field_data == null || value.field_data.length > 4)
        {
            throw new IllegalArgumentException("Invalid data extent");
        }
        wire.u32((long)value.field_data.length);
        for(int index = 0; index < value.field_data.length; index++)
        {
            Ros1Pal_motion_model_msgsMotionModelList.writeFields(wire, value.field_data[index]);
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
    public static Ros1Pal_motion_model_msgsMotionModelMap readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros1Pal_motion_model_msgsMotionModelMap value = new Ros1Pal_motion_model_msgsMotionModelMap();
        value.field_header = Ros1Std_msgsHeader.readFields(wire);
        value.field_info = Ros1Nav_msgsMapMetaData.readFields(wire);
        value.field_data = new Ros1Pal_motion_model_msgsMotionModelList[wire.count(4)];
        for(int index = 0; index < value.field_data.length; index++)
        {
            value.field_data[index] = Ros1Pal_motion_model_msgsMotionModelList.readFields(wire);
        }
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
        return value;
    }
}
