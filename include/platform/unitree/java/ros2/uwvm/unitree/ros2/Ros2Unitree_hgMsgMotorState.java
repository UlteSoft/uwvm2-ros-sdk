package uwvm.unitree.ros2;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 2 unitree_hg/msg/MotorState value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros2Unitree_hgMsgMotorState
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 53;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 53;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_65497908fe0136a5c90f11b4a2cda2110507bcc8805f9347ac82be3b32fe5934";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "unitree_hg/msg/MotorState";
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
    /** @brief Complete native field tau_est; scalar, text bound 0. */
    public float field_tau_est = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field temperature; array capacity 2, text bound 0. */
    public short[] field_temperature = new short[2];
    /** @brief Complete native field vol; scalar, text bound 0. */
    public float field_vol = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field sensor; array capacity 2, text bound 0. */
    public long[] field_sensor = new long[2];
    /** @brief Complete native field motorstate; scalar, text bound 0. */
    public long field_motorstate = 0L;
    /** @brief Complete native field reserve; array capacity 4, text bound 0. */
    public long[] field_reserve = new long[4];

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros2Unitree_hgMsgMotorState()
    {
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros2Unitree_hgMsgMotorState value)
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
    public static Ros2Unitree_hgMsgMotorState decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros2Unitree_hgMsgMotorState value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros2Unitree_hgMsgMotorState value)
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
        if(!Float.isFinite(value.field_tau_est))
        {
            throw new IllegalArgumentException("Nonfinite tau_est");
        }
        wire.f32(value.field_tau_est);
        if(value.field_temperature == null || value.field_temperature.length != 2)
        {
            throw new IllegalArgumentException("Invalid temperature extent");
        }
        for(int index = 0; index < value.field_temperature.length; index++)
        {
            wire.i16(value.field_temperature[index]);
        }
        if(!Float.isFinite(value.field_vol))
        {
            throw new IllegalArgumentException("Nonfinite vol");
        }
        wire.f32(value.field_vol);
        if(value.field_sensor == null || value.field_sensor.length != 2)
        {
            throw new IllegalArgumentException("Invalid sensor extent");
        }
        for(int index = 0; index < value.field_sensor.length; index++)
        {
            wire.u32(value.field_sensor[index]);
        }
        wire.u32(value.field_motorstate);
        if(value.field_reserve == null || value.field_reserve.length != 4)
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
    public static Ros2Unitree_hgMsgMotorState readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros2Unitree_hgMsgMotorState value = new Ros2Unitree_hgMsgMotorState();
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
        value.field_tau_est = wire.f32();
        if(!Float.isFinite(value.field_tau_est))
        {
            throw new IllegalArgumentException("Nonfinite tau_est");
        }
        value.field_temperature = new short[2];
        for(int index = 0; index < value.field_temperature.length; index++)
        {
            value.field_temperature[index] = wire.i16();
        }
        value.field_vol = wire.f32();
        if(!Float.isFinite(value.field_vol))
        {
            throw new IllegalArgumentException("Nonfinite vol");
        }
        value.field_sensor = new long[2];
        for(int index = 0; index < value.field_sensor.length; index++)
        {
            value.field_sensor[index] = wire.u32();
        }
        value.field_motorstate = wire.u32();
        value.field_reserve = new long[4];
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
