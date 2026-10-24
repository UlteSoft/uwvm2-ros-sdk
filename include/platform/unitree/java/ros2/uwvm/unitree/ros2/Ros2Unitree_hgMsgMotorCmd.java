package uwvm.unitree.ros2;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 2 unitree_hg/msg/MotorCmd value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros2Unitree_hgMsgMotorCmd
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 25;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 25;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_f3e472df5d061a1515ac185f87b01f702ef2f2bbeff39e42c6c7088d1da26cbb";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "unitree_hg/msg/MotorCmd";
    /** @brief Original native identity; empty native identity is unqualified. */
    public static final String NATIVE_IDENTITY = "";
    /** @brief Complete native field mode; scalar, text bound 0. */
    public int field_mode = 0;
    /** @brief Complete native field q; scalar, text bound 0. */
    public float field_q = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field dq; scalar, text bound 0. */
    public float field_dq = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field tau; scalar, text bound 0. */
    public float field_tau = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field kp; scalar, text bound 0. */
    public float field_kp = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field kd; scalar, text bound 0. */
    public float field_kd = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field reserve; scalar, text bound 0. */
    public long field_reserve = 0L;

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros2Unitree_hgMsgMotorCmd()
    {
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros2Unitree_hgMsgMotorCmd value)
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
    public static Ros2Unitree_hgMsgMotorCmd decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros2Unitree_hgMsgMotorCmd value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros2Unitree_hgMsgMotorCmd value)
    {
        if(value == null)
        {
            throw new IllegalArgumentException("Null canonical record");
        }
        int start = wire.position();
        wire.u8(value.field_mode);
        if(!Float.isFinite(value.field_q))
        {
            throw new IllegalArgumentException("Nonfinite q");
        }
        wire.f32(value.field_q);
        if(!Float.isFinite(value.field_dq))
        {
            throw new IllegalArgumentException("Nonfinite dq");
        }
        wire.f32(value.field_dq);
        if(!Float.isFinite(value.field_tau))
        {
            throw new IllegalArgumentException("Nonfinite tau");
        }
        wire.f32(value.field_tau);
        if(!Float.isFinite(value.field_kp))
        {
            throw new IllegalArgumentException("Nonfinite kp");
        }
        wire.f32(value.field_kp);
        if(!Float.isFinite(value.field_kd))
        {
            throw new IllegalArgumentException("Nonfinite kd");
        }
        wire.f32(value.field_kd);
        wire.u32(value.field_reserve);
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
    public static Ros2Unitree_hgMsgMotorCmd readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros2Unitree_hgMsgMotorCmd value = new Ros2Unitree_hgMsgMotorCmd();
        value.field_mode = wire.u8();
        value.field_q = wire.f32();
        if(!Float.isFinite(value.field_q))
        {
            throw new IllegalArgumentException("Nonfinite q");
        }
        value.field_dq = wire.f32();
        if(!Float.isFinite(value.field_dq))
        {
            throw new IllegalArgumentException("Nonfinite dq");
        }
        value.field_tau = wire.f32();
        if(!Float.isFinite(value.field_tau))
        {
            throw new IllegalArgumentException("Nonfinite tau");
        }
        value.field_kp = wire.f32();
        if(!Float.isFinite(value.field_kp))
        {
            throw new IllegalArgumentException("Nonfinite kp");
        }
        value.field_kd = wire.f32();
        if(!Float.isFinite(value.field_kd))
        {
            throw new IllegalArgumentException("Nonfinite kd");
        }
        value.field_reserve = wire.u32();
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
        return value;
    }
}
