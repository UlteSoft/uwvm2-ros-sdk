package uwvm.unitree.ros1;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 1 unitree_legged_msgs/HighCmd value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros1Unitree_legged_msgsHighCmd
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 129;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 129;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_ec6ec8937b2629a4441adc4a21eed83fca940b18d46b970d96e05c957ac90b38";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "unitree_legged_msgs/HighCmd";
    /** @brief Original native identity; empty native identity is unqualified. */
    public static final String NATIVE_IDENTITY = "";
    /** @brief Complete native field head; array capacity 2, text bound 0. */
    public int[] field_head = new int[2];
    /** @brief Complete native field levelFlag; scalar, text bound 0. */
    public int field_levelFlag = 0;
    /** @brief Complete native field frameReserve; scalar, text bound 0. */
    public int field_frameReserve = 0;
    /** @brief Complete native field SN; array capacity 2, text bound 0. */
    public long[] field_SN = new long[2];
    /** @brief Complete native field version; array capacity 2, text bound 0. */
    public long[] field_version = new long[2];
    /** @brief Complete native field bandWidth; scalar, text bound 0. */
    public int field_bandWidth = 0;
    /** @brief Complete native field mode; scalar, text bound 0. */
    public int field_mode = 0;
    /** @brief Complete native field gaitType; scalar, text bound 0. */
    public int field_gaitType = 0;
    /** @brief Complete native field speedLevel; scalar, text bound 0. */
    public int field_speedLevel = 0;
    /** @brief Complete native field footRaiseHeight; scalar, text bound 0. */
    public float field_footRaiseHeight = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field bodyHeight; scalar, text bound 0. */
    public float field_bodyHeight = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field position; array capacity 2, text bound 0. */
    public float[] field_position = new float[2];
    /** @brief Complete native field euler; array capacity 3, text bound 0. */
    public float[] field_euler = new float[3];
    /** @brief Complete native field velocity; array capacity 2, text bound 0. */
    public float[] field_velocity = new float[2];
    /** @brief Complete native field yawSpeed; scalar, text bound 0. */
    public float field_yawSpeed = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field bms; scalar, text bound 0. */
    public Ros1Unitree_legged_msgsBmsCmd field_bms = new Ros1Unitree_legged_msgsBmsCmd();
    /** @brief Complete native field led; array capacity 4, text bound 0. */
    public Ros1Unitree_legged_msgsLED[] field_led = new Ros1Unitree_legged_msgsLED[4];
    /** @brief Complete native field wirelessRemote; array capacity 40, text bound 0. */
    public int[] field_wirelessRemote = new int[40];
    /** @brief Complete native field reserve; scalar, text bound 0. */
    public long field_reserve = 0L;
    /** @brief Complete native field crc; scalar, text bound 0. */
    public long field_crc = 0L;

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros1Unitree_legged_msgsHighCmd()
    {
        for(int index = 0; index < 4; ++index)
        {
            field_led[index] = new Ros1Unitree_legged_msgsLED();
        }
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros1Unitree_legged_msgsHighCmd value)
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
    public static Ros1Unitree_legged_msgsHighCmd decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros1Unitree_legged_msgsHighCmd value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros1Unitree_legged_msgsHighCmd value)
    {
        if(value == null)
        {
            throw new IllegalArgumentException("Null canonical record");
        }
        int start = wire.position();
        if(value.field_head == null || value.field_head.length != 2)
        {
            throw new IllegalArgumentException("Invalid head extent");
        }
        for(int index = 0; index < value.field_head.length; index++)
        {
            wire.u8(value.field_head[index]);
        }
        wire.u8(value.field_levelFlag);
        wire.u8(value.field_frameReserve);
        if(value.field_SN == null || value.field_SN.length != 2)
        {
            throw new IllegalArgumentException("Invalid SN extent");
        }
        for(int index = 0; index < value.field_SN.length; index++)
        {
            wire.u32(value.field_SN[index]);
        }
        if(value.field_version == null || value.field_version.length != 2)
        {
            throw new IllegalArgumentException("Invalid version extent");
        }
        for(int index = 0; index < value.field_version.length; index++)
        {
            wire.u32(value.field_version[index]);
        }
        wire.u16(value.field_bandWidth);
        wire.u8(value.field_mode);
        wire.u8(value.field_gaitType);
        wire.u8(value.field_speedLevel);
        if(!Float.isFinite(value.field_footRaiseHeight))
        {
            throw new IllegalArgumentException("Nonfinite footRaiseHeight");
        }
        wire.f32(value.field_footRaiseHeight);
        if(!Float.isFinite(value.field_bodyHeight))
        {
            throw new IllegalArgumentException("Nonfinite bodyHeight");
        }
        wire.f32(value.field_bodyHeight);
        if(value.field_position == null || value.field_position.length != 2)
        {
            throw new IllegalArgumentException("Invalid position extent");
        }
        for(int index = 0; index < value.field_position.length; index++)
        {
            if(!Float.isFinite(value.field_position[index]))
            {
                throw new IllegalArgumentException("Nonfinite position");
            }
            wire.f32(value.field_position[index]);
        }
        if(value.field_euler == null || value.field_euler.length != 3)
        {
            throw new IllegalArgumentException("Invalid euler extent");
        }
        for(int index = 0; index < value.field_euler.length; index++)
        {
            if(!Float.isFinite(value.field_euler[index]))
            {
                throw new IllegalArgumentException("Nonfinite euler");
            }
            wire.f32(value.field_euler[index]);
        }
        if(value.field_velocity == null || value.field_velocity.length != 2)
        {
            throw new IllegalArgumentException("Invalid velocity extent");
        }
        for(int index = 0; index < value.field_velocity.length; index++)
        {
            if(!Float.isFinite(value.field_velocity[index]))
            {
                throw new IllegalArgumentException("Nonfinite velocity");
            }
            wire.f32(value.field_velocity[index]);
        }
        if(!Float.isFinite(value.field_yawSpeed))
        {
            throw new IllegalArgumentException("Nonfinite yawSpeed");
        }
        wire.f32(value.field_yawSpeed);
        Ros1Unitree_legged_msgsBmsCmd.writeFields(wire, value.field_bms);
        if(value.field_led == null || value.field_led.length != 4)
        {
            throw new IllegalArgumentException("Invalid led extent");
        }
        for(int index = 0; index < value.field_led.length; index++)
        {
            Ros1Unitree_legged_msgsLED.writeFields(wire, value.field_led[index]);
        }
        if(value.field_wirelessRemote == null || value.field_wirelessRemote.length != 40)
        {
            throw new IllegalArgumentException("Invalid wirelessRemote extent");
        }
        for(int index = 0; index < value.field_wirelessRemote.length; index++)
        {
            wire.u8(value.field_wirelessRemote[index]);
        }
        wire.u32(value.field_reserve);
        wire.u32(value.field_crc);
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
    public static Ros1Unitree_legged_msgsHighCmd readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros1Unitree_legged_msgsHighCmd value = new Ros1Unitree_legged_msgsHighCmd();
        value.field_head = new int[2];
        for(int index = 0; index < value.field_head.length; index++)
        {
            value.field_head[index] = wire.u8();
        }
        value.field_levelFlag = wire.u8();
        value.field_frameReserve = wire.u8();
        value.field_SN = new long[2];
        for(int index = 0; index < value.field_SN.length; index++)
        {
            value.field_SN[index] = wire.u32();
        }
        value.field_version = new long[2];
        for(int index = 0; index < value.field_version.length; index++)
        {
            value.field_version[index] = wire.u32();
        }
        value.field_bandWidth = wire.u16();
        value.field_mode = wire.u8();
        value.field_gaitType = wire.u8();
        value.field_speedLevel = wire.u8();
        value.field_footRaiseHeight = wire.f32();
        if(!Float.isFinite(value.field_footRaiseHeight))
        {
            throw new IllegalArgumentException("Nonfinite footRaiseHeight");
        }
        value.field_bodyHeight = wire.f32();
        if(!Float.isFinite(value.field_bodyHeight))
        {
            throw new IllegalArgumentException("Nonfinite bodyHeight");
        }
        value.field_position = new float[2];
        for(int index = 0; index < value.field_position.length; index++)
        {
            value.field_position[index] = wire.f32();
            if(!Float.isFinite(value.field_position[index]))
            {
                throw new IllegalArgumentException("Nonfinite position");
            }
        }
        value.field_euler = new float[3];
        for(int index = 0; index < value.field_euler.length; index++)
        {
            value.field_euler[index] = wire.f32();
            if(!Float.isFinite(value.field_euler[index]))
            {
                throw new IllegalArgumentException("Nonfinite euler");
            }
        }
        value.field_velocity = new float[2];
        for(int index = 0; index < value.field_velocity.length; index++)
        {
            value.field_velocity[index] = wire.f32();
            if(!Float.isFinite(value.field_velocity[index]))
            {
                throw new IllegalArgumentException("Nonfinite velocity");
            }
        }
        value.field_yawSpeed = wire.f32();
        if(!Float.isFinite(value.field_yawSpeed))
        {
            throw new IllegalArgumentException("Nonfinite yawSpeed");
        }
        value.field_bms = Ros1Unitree_legged_msgsBmsCmd.readFields(wire);
        value.field_led = new Ros1Unitree_legged_msgsLED[4];
        for(int index = 0; index < value.field_led.length; index++)
        {
            value.field_led[index] = Ros1Unitree_legged_msgsLED.readFields(wire);
        }
        value.field_wirelessRemote = new int[40];
        for(int index = 0; index < value.field_wirelessRemote.length; index++)
        {
            value.field_wirelessRemote[index] = wire.u8();
        }
        value.field_reserve = wire.u32();
        value.field_crc = wire.u32();
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
        return value;
    }
}
