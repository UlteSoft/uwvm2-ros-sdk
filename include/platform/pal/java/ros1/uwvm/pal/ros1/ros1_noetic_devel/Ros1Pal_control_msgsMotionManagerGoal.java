package uwvm.pal.ros1.ros1_noetic_devel;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 1 pal_control_msgs/MotionManagerGoal value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros1Pal_control_msgsMotionManagerGoal
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 140;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 12;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_d2191004950c3f14c8fd71cc2c59cbe39eb76a3c521327293e7355f88e8d2383";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "pal_control_msgs/MotionManagerGoal";
    /** @brief Original native identity; empty native identity is unqualified. */
    public static final String NATIVE_IDENTITY = "";
    /** @brief Complete native field filename; scalar, text bound 128. */
    public String field_filename = "";
    /** @brief Complete native field plan; scalar, text bound 0. */
    public boolean field_plan = false;
    /** @brief Complete native field checkSafety; scalar, text bound 0. */
    public boolean field_checkSafety = false;
    /** @brief Complete native field repeat; scalar, text bound 0. */
    public boolean field_repeat = false;
    /** @brief Complete native field priority; scalar, text bound 0. */
    public int field_priority = 0;
    /** @brief Complete native field queueTimeout; scalar, text bound 0. */
    public int field_queueTimeout = 0;

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros1Pal_control_msgsMotionManagerGoal()
    {
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros1Pal_control_msgsMotionManagerGoal value)
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
    public static Ros1Pal_control_msgsMotionManagerGoal decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros1Pal_control_msgsMotionManagerGoal value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros1Pal_control_msgsMotionManagerGoal value)
    {
        if(value == null)
        {
            throw new IllegalArgumentException("Null canonical record");
        }
        int start = wire.position();
        wire.string(value.field_filename, 128);
        wire.bool(value.field_plan);
        wire.bool(value.field_checkSafety);
        wire.bool(value.field_repeat);
        wire.u8(value.field_priority);
        wire.i32(value.field_queueTimeout);
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
    public static Ros1Pal_control_msgsMotionManagerGoal readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros1Pal_control_msgsMotionManagerGoal value = new Ros1Pal_control_msgsMotionManagerGoal();
        value.field_filename = wire.string(128);
        value.field_plan = wire.bool();
        value.field_checkSafety = wire.bool();
        value.field_repeat = wire.bool();
        value.field_priority = wire.u8();
        value.field_queueTimeout = wire.i32();
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
        return value;
    }
}
