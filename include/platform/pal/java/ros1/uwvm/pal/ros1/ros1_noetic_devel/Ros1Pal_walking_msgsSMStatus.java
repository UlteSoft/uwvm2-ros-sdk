package uwvm.pal.ros1.ros1_noetic_devel;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 1 pal_walking_msgs/SMStatus value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros1Pal_walking_msgsSMStatus
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 170;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 170;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_490c0966b36899ce64a1271d9c1eaf9802b9285eb7835b0565a3e2bbf01a0c6e";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "pal_walking_msgs/SMStatus";
    /** @brief Original native identity; empty native identity is unqualified. */
    public static final String NATIVE_IDENTITY = "";
    /** @brief Original source constant right; consumes no instance wire bytes. */
    public static final int CONST_right = 1;
    /** @brief Original source constant left; consumes no instance wire bytes. */
    public static final int CONST_left = 0;
    /** @brief Complete native field left_foot_pose; scalar, text bound 0. */
    public Ros1Geometry_msgsPose field_left_foot_pose = new Ros1Geometry_msgsPose();
    /** @brief Complete native field right_foot_pose; scalar, text bound 0. */
    public Ros1Geometry_msgsPose field_right_foot_pose = new Ros1Geometry_msgsPose();
    /** @brief Complete native field stance_foot_side; scalar, text bound 0. */
    public int field_stance_foot_side = 0;
    /** @brief Complete native field future_swing_landing_pose; scalar, text bound 0. */
    public Ros1Geometry_msgsPose field_future_swing_landing_pose = new Ros1Geometry_msgsPose();
    /** @brief Complete native field future_swing_side; scalar, text bound 0. */
    public int field_future_swing_side = 0;

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros1Pal_walking_msgsSMStatus()
    {
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros1Pal_walking_msgsSMStatus value)
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
    public static Ros1Pal_walking_msgsSMStatus decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros1Pal_walking_msgsSMStatus value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros1Pal_walking_msgsSMStatus value)
    {
        if(value == null)
        {
            throw new IllegalArgumentException("Null canonical record");
        }
        int start = wire.position();
        Ros1Geometry_msgsPose.writeFields(wire, value.field_left_foot_pose);
        Ros1Geometry_msgsPose.writeFields(wire, value.field_right_foot_pose);
        wire.u8(value.field_stance_foot_side);
        Ros1Geometry_msgsPose.writeFields(wire, value.field_future_swing_landing_pose);
        wire.u8(value.field_future_swing_side);
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
    public static Ros1Pal_walking_msgsSMStatus readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros1Pal_walking_msgsSMStatus value = new Ros1Pal_walking_msgsSMStatus();
        value.field_left_foot_pose = Ros1Geometry_msgsPose.readFields(wire);
        value.field_right_foot_pose = Ros1Geometry_msgsPose.readFields(wire);
        value.field_stance_foot_side = wire.u8();
        value.field_future_swing_landing_pose = Ros1Geometry_msgsPose.readFields(wire);
        value.field_future_swing_side = wire.u8();
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
        return value;
    }
}
