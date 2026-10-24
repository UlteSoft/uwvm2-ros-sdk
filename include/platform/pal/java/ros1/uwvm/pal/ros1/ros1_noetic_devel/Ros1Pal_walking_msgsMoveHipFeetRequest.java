package uwvm.pal.ros1.ros1_noetic_devel;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 1 pal_walking_msgs/MoveHipFeetRequest value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros1Pal_walking_msgsMoveHipFeetRequest
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 1248;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 64;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_5fb083fec01e8eab76d0023802e8ec7590fc993ba7a68d1a2033c43065131c5c";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "pal_walking_msgs/MoveHipFeetRequest";
    /** @brief Original native identity; empty native identity is unqualified. */
    public static final String NATIVE_IDENTITY = "";
    /** @brief Complete native field hip_poses; scalar, text bound 0. */
    public Ros1Geometry_msgsPoseArray field_hip_poses = new Ros1Geometry_msgsPoseArray();
    /** @brief Complete native field left_foot_poses; scalar, text bound 0. */
    public Ros1Geometry_msgsPoseArray field_left_foot_poses = new Ros1Geometry_msgsPoseArray();
    /** @brief Complete native field right_foot_poses; scalar, text bound 0. */
    public Ros1Geometry_msgsPoseArray field_right_foot_poses = new Ros1Geometry_msgsPoseArray();
    /** @brief Complete native field times_after_previous; sequence capacity 16, text bound 0. */
    public Ros1Duration[] field_times_after_previous = new Ros1Duration[0];

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros1Pal_walking_msgsMoveHipFeetRequest()
    {
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros1Pal_walking_msgsMoveHipFeetRequest value)
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
    public static Ros1Pal_walking_msgsMoveHipFeetRequest decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros1Pal_walking_msgsMoveHipFeetRequest value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros1Pal_walking_msgsMoveHipFeetRequest value)
    {
        if(value == null)
        {
            throw new IllegalArgumentException("Null canonical record");
        }
        int start = wire.position();
        Ros1Geometry_msgsPoseArray.writeFields(wire, value.field_hip_poses);
        Ros1Geometry_msgsPoseArray.writeFields(wire, value.field_left_foot_poses);
        Ros1Geometry_msgsPoseArray.writeFields(wire, value.field_right_foot_poses);
        if(value.field_times_after_previous == null || value.field_times_after_previous.length > 16)
        {
            throw new IllegalArgumentException("Invalid times_after_previous extent");
        }
        wire.u32((long)value.field_times_after_previous.length);
        for(int index = 0; index < value.field_times_after_previous.length; index++)
        {
            Ros1Duration.writeFields(wire, value.field_times_after_previous[index]);
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
    public static Ros1Pal_walking_msgsMoveHipFeetRequest readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros1Pal_walking_msgsMoveHipFeetRequest value = new Ros1Pal_walking_msgsMoveHipFeetRequest();
        value.field_hip_poses = Ros1Geometry_msgsPoseArray.readFields(wire);
        value.field_left_foot_poses = Ros1Geometry_msgsPoseArray.readFields(wire);
        value.field_right_foot_poses = Ros1Geometry_msgsPoseArray.readFields(wire);
        value.field_times_after_previous = new Ros1Duration[wire.count(16)];
        for(int index = 0; index < value.field_times_after_previous.length; index++)
        {
            value.field_times_after_previous[index] = Ros1Duration.readFields(wire);
        }
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
        return value;
    }
}
