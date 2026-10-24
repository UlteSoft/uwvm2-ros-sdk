package uwvm.unitree.ros1;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 1 unitree_legged_msgs/MotorState value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros1Unitree_legged_msgsMotorState
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 38;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 38;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_be540cb22db5f08b6b9a8082777c76244e80f3148e9cfd63f510e4b2acdc0abf";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "unitree_legged_msgs/MotorState";
    /** @brief Original native identity; empty native identity is unqualified. */
    public static final String NATIVE_IDENTITY = "";
    /** @brief Complete native field mode; scalar, text bound 0. */
    public int field_mode = 0;
    /** @brief Complete native field q; scalar, text bound 0. */
    public float field_q = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field dq; scalar, text bound 0. */
    public float field_dq = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field ddq; scalar, text bound 0. */
    public float field_ddq = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field tauEst; scalar, text bound 0. */
    public float field_tauEst = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field q_raw; scalar, text bound 0. */
    public float field_q_raw = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field dq_raw; scalar, text bound 0. */
    public float field_dq_raw = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field ddq_raw; scalar, text bound 0. */
    public float field_ddq_raw = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field temperature; scalar, text bound 0. */
    public byte field_temperature = (byte)0;
    /** @brief Complete native field reserve; array capacity 2, text bound 0. */
    public long[] field_reserve = new long[2];

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros1Unitree_legged_msgsMotorState()
    {
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros1Unitree_legged_msgsMotorState value)
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
    public static Ros1Unitree_legged_msgsMotorState decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros1Unitree_legged_msgsMotorState value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros1Unitree_legged_msgsMotorState value)
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
        if(!Float.isFinite(value.field_ddq))
        {
            throw new IllegalArgumentException("Nonfinite ddq");
        }
        wire.f32(value.field_ddq);
        if(!Float.isFinite(value.field_tauEst))
        {
            throw new IllegalArgumentException("Nonfinite tauEst");
        }
        wire.f32(value.field_tauEst);
        if(!Float.isFinite(value.field_q_raw))
        {
            throw new IllegalArgumentException("Nonfinite q_raw");
        }
        wire.f32(value.field_q_raw);
        if(!Float.isFinite(value.field_dq_raw))
        {
            throw new IllegalArgumentException("Nonfinite dq_raw");
        }
        wire.f32(value.field_dq_raw);
        if(!Float.isFinite(value.field_ddq_raw))
        {
            throw new IllegalArgumentException("Nonfinite ddq_raw");
        }
        wire.f32(value.field_ddq_raw);
        wire.i8(value.field_temperature);
        if(value.field_reserve == null || value.field_reserve.length != 2)
        {
            throw new IllegalArgumentException("Invalid reserve extent");
        }
        for(int index = 0; index < value.field_reserve.length; index++)
        {
            wire.u32(value.field_reserve[index]);
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
    public static Ros1Unitree_legged_msgsMotorState readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros1Unitree_legged_msgsMotorState value = new Ros1Unitree_legged_msgsMotorState();
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
        value.field_ddq = wire.f32();
        if(!Float.isFinite(value.field_ddq))
        {
            throw new IllegalArgumentException("Nonfinite ddq");
        }
        value.field_tauEst = wire.f32();
        if(!Float.isFinite(value.field_tauEst))
        {
            throw new IllegalArgumentException("Nonfinite tauEst");
        }
        value.field_q_raw = wire.f32();
        if(!Float.isFinite(value.field_q_raw))
        {
            throw new IllegalArgumentException("Nonfinite q_raw");
        }
        value.field_dq_raw = wire.f32();
        if(!Float.isFinite(value.field_dq_raw))
        {
            throw new IllegalArgumentException("Nonfinite dq_raw");
        }
        value.field_ddq_raw = wire.f32();
        if(!Float.isFinite(value.field_ddq_raw))
        {
            throw new IllegalArgumentException("Nonfinite ddq_raw");
        }
        value.field_temperature = wire.i8();
        value.field_reserve = new long[2];
        for(int index = 0; index < value.field_reserve.length; index++)
        {
            value.field_reserve[index] = wire.u32();
        }
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
        return value;
    }
}
