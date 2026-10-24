package uwvm.pal.ros1.ros1_humble_devel;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 1 pal_navigation_msgs/ExecuteParkingGoal value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros1Pal_navigation_msgsExecuteParkingGoal
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 281;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 25;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_5bc772cbbc3a5f90165c84a9f5d81d961a789e78bbbf2fe19706d76be3e3dfae";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "pal_navigation_msgs/ExecuteParkingGoal";
    /** @brief Original native identity; empty native identity is unqualified. */
    public static final String NATIVE_IDENTITY = "";
    /** @brief Complete native field source_frame; scalar, text bound 128. */
    public String field_source_frame = "";
    /** @brief Complete native field target_frame; scalar, text bound 128. */
    public String field_target_frame = "";
    /** @brief Complete native field backwards; scalar, text bound 0. */
    public boolean field_backwards = false;
    /** @brief Complete native field max_lin_vel; scalar, text bound 0. */
    public double field_max_lin_vel = Double.longBitsToDouble(0x0000000000000000L);
    /** @brief Complete native field max_rot_vel; scalar, text bound 0. */
    public double field_max_rot_vel = Double.longBitsToDouble(0x0000000000000000L);

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros1Pal_navigation_msgsExecuteParkingGoal()
    {
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros1Pal_navigation_msgsExecuteParkingGoal value)
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
    public static Ros1Pal_navigation_msgsExecuteParkingGoal decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros1Pal_navigation_msgsExecuteParkingGoal value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros1Pal_navigation_msgsExecuteParkingGoal value)
    {
        if(value == null)
        {
            throw new IllegalArgumentException("Null canonical record");
        }
        int start = wire.position();
        wire.string(value.field_source_frame, 128);
        wire.string(value.field_target_frame, 128);
        wire.bool(value.field_backwards);
        if(!Double.isFinite(value.field_max_lin_vel))
        {
            throw new IllegalArgumentException("Nonfinite max_lin_vel");
        }
        wire.f64(value.field_max_lin_vel);
        if(!Double.isFinite(value.field_max_rot_vel))
        {
            throw new IllegalArgumentException("Nonfinite max_rot_vel");
        }
        wire.f64(value.field_max_rot_vel);
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
    public static Ros1Pal_navigation_msgsExecuteParkingGoal readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros1Pal_navigation_msgsExecuteParkingGoal value = new Ros1Pal_navigation_msgsExecuteParkingGoal();
        value.field_source_frame = wire.string(128);
        value.field_target_frame = wire.string(128);
        value.field_backwards = wire.bool();
        value.field_max_lin_vel = wire.f64();
        if(!Double.isFinite(value.field_max_lin_vel))
        {
            throw new IllegalArgumentException("Nonfinite max_lin_vel");
        }
        value.field_max_rot_vel = wire.f64();
        if(!Double.isFinite(value.field_max_rot_vel))
        {
            throw new IllegalArgumentException("Nonfinite max_rot_vel");
        }
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
        return value;
    }
}
