package uwvm.pal.ros1.ros1_humble_devel;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 1 humanoid_nav_msgs/StepTarget value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros1Humanoid_nav_msgsStepTarget
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 25;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 25;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_569ffb799d7e55047bf9191eee9af61296726974e01efa8e3b59be779f25c0e6";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "humanoid_nav_msgs/StepTarget";
    /** @brief Original native identity; empty native identity is unqualified. */
    public static final String NATIVE_IDENTITY = "";
    /** @brief Original source constant right; consumes no instance wire bytes. */
    public static final int CONST_right = 0;
    /** @brief Original source constant left; consumes no instance wire bytes. */
    public static final int CONST_left = 1;
    /** @brief Complete native field pose; scalar, text bound 0. */
    public Ros1Geometry_msgsPose2D field_pose = new Ros1Geometry_msgsPose2D();
    /** @brief Complete native field leg; scalar, text bound 0. */
    public int field_leg = 0;

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros1Humanoid_nav_msgsStepTarget()
    {
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros1Humanoid_nav_msgsStepTarget value)
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
    public static Ros1Humanoid_nav_msgsStepTarget decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros1Humanoid_nav_msgsStepTarget value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros1Humanoid_nav_msgsStepTarget value)
    {
        if(value == null)
        {
            throw new IllegalArgumentException("Null canonical record");
        }
        int start = wire.position();
        Ros1Geometry_msgsPose2D.writeFields(wire, value.field_pose);
        wire.u8(value.field_leg);
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
    public static Ros1Humanoid_nav_msgsStepTarget readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros1Humanoid_nav_msgsStepTarget value = new Ros1Humanoid_nav_msgsStepTarget();
        value.field_pose = Ros1Geometry_msgsPose2D.readFields(wire);
        value.field_leg = wire.u8();
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
        return value;
    }
}
