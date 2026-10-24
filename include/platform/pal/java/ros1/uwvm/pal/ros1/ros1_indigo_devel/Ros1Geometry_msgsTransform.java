package uwvm.pal.ros1.ros1_indigo_devel;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 1 geometry_msgs/Transform value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros1Geometry_msgsTransform
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 56;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 56;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_61aabab03e8f766ea05949c9e5f4989186d72a26f793b8d11752e53f1f300085";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "geometry_msgs/Transform";
    /** @brief Original native identity; empty native identity is unqualified. */
    public static final String NATIVE_IDENTITY = "";
    /** @brief Complete native field translation; scalar, text bound 0. */
    public Ros1Geometry_msgsVector3 field_translation = new Ros1Geometry_msgsVector3();
    /** @brief Complete native field rotation; scalar, text bound 0. */
    public Ros1Geometry_msgsQuaternion field_rotation = new Ros1Geometry_msgsQuaternion();

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros1Geometry_msgsTransform()
    {
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros1Geometry_msgsTransform value)
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
    public static Ros1Geometry_msgsTransform decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros1Geometry_msgsTransform value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros1Geometry_msgsTransform value)
    {
        if(value == null)
        {
            throw new IllegalArgumentException("Null canonical record");
        }
        int start = wire.position();
        Ros1Geometry_msgsVector3.writeFields(wire, value.field_translation);
        Ros1Geometry_msgsQuaternion.writeFields(wire, value.field_rotation);
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
    public static Ros1Geometry_msgsTransform readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros1Geometry_msgsTransform value = new Ros1Geometry_msgsTransform();
        value.field_translation = Ros1Geometry_msgsVector3.readFields(wire);
        value.field_rotation = Ros1Geometry_msgsQuaternion.readFields(wire);
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
        return value;
    }
}
