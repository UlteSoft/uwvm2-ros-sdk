package uwvm.trossen.ros1.ros1_noetic;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 1 xarm_msgs/TCPOffsetRequest value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros1Xarm_msgsTCPOffsetRequest
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 24;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 24;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_588f23b909cce18cc490801b9d2f0960335362b0c823651cda6d5c8a27ee0afd";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "xarm_msgs/TCPOffsetRequest";
    /** @brief Original native identity; empty native identity is unqualified. */
    public static final String NATIVE_IDENTITY = "";
    /** @brief Complete native field x; scalar, text bound 0. */
    public float field_x = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field y; scalar, text bound 0. */
    public float field_y = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field z; scalar, text bound 0. */
    public float field_z = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field roll; scalar, text bound 0. */
    public float field_roll = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field pitch; scalar, text bound 0. */
    public float field_pitch = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field yaw; scalar, text bound 0. */
    public float field_yaw = Float.intBitsToFloat(0x00000000);

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros1Xarm_msgsTCPOffsetRequest()
    {
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros1Xarm_msgsTCPOffsetRequest value)
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
    public static Ros1Xarm_msgsTCPOffsetRequest decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros1Xarm_msgsTCPOffsetRequest value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros1Xarm_msgsTCPOffsetRequest value)
    {
        if(value == null)
        {
            throw new IllegalArgumentException("Null canonical record");
        }
        int start = wire.position();
        if(!Float.isFinite(value.field_x))
        {
            throw new IllegalArgumentException("Nonfinite x");
        }
        wire.f32(value.field_x);
        if(!Float.isFinite(value.field_y))
        {
            throw new IllegalArgumentException("Nonfinite y");
        }
        wire.f32(value.field_y);
        if(!Float.isFinite(value.field_z))
        {
            throw new IllegalArgumentException("Nonfinite z");
        }
        wire.f32(value.field_z);
        if(!Float.isFinite(value.field_roll))
        {
            throw new IllegalArgumentException("Nonfinite roll");
        }
        wire.f32(value.field_roll);
        if(!Float.isFinite(value.field_pitch))
        {
            throw new IllegalArgumentException("Nonfinite pitch");
        }
        wire.f32(value.field_pitch);
        if(!Float.isFinite(value.field_yaw))
        {
            throw new IllegalArgumentException("Nonfinite yaw");
        }
        wire.f32(value.field_yaw);
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
    public static Ros1Xarm_msgsTCPOffsetRequest readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros1Xarm_msgsTCPOffsetRequest value = new Ros1Xarm_msgsTCPOffsetRequest();
        value.field_x = wire.f32();
        if(!Float.isFinite(value.field_x))
        {
            throw new IllegalArgumentException("Nonfinite x");
        }
        value.field_y = wire.f32();
        if(!Float.isFinite(value.field_y))
        {
            throw new IllegalArgumentException("Nonfinite y");
        }
        value.field_z = wire.f32();
        if(!Float.isFinite(value.field_z))
        {
            throw new IllegalArgumentException("Nonfinite z");
        }
        value.field_roll = wire.f32();
        if(!Float.isFinite(value.field_roll))
        {
            throw new IllegalArgumentException("Nonfinite roll");
        }
        value.field_pitch = wire.f32();
        if(!Float.isFinite(value.field_pitch))
        {
            throw new IllegalArgumentException("Nonfinite pitch");
        }
        value.field_yaw = wire.f32();
        if(!Float.isFinite(value.field_yaw))
        {
            throw new IllegalArgumentException("Nonfinite yaw");
        }
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
        return value;
    }
}
