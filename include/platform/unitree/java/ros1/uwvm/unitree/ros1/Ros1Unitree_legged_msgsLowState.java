package uwvm.unitree.ros1;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 1 unitree_legged_msgs/LowState value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros1Unitree_legged_msgsLowState
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 1069;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 1069;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_37425ed49c0eebd762b6084ee413c7706fc43defc524414d3f50cdd2d25552c0";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "unitree_legged_msgs/LowState";
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
    /** @brief Complete native field imu; scalar, text bound 0. */
    public Ros1Unitree_legged_msgsIMU field_imu = new Ros1Unitree_legged_msgsIMU();
    /** @brief Complete native field motorState; array capacity 20, text bound 0. */
    public Ros1Unitree_legged_msgsMotorState[] field_motorState = new Ros1Unitree_legged_msgsMotorState[20];
    /** @brief Complete native field bms; scalar, text bound 0. */
    public Ros1Unitree_legged_msgsBmsState field_bms = new Ros1Unitree_legged_msgsBmsState();
    /** @brief Complete native field footForce; array capacity 4, text bound 0. */
    public short[] field_footForce = new short[4];
    /** @brief Complete native field footForceEst; array capacity 4, text bound 0. */
    public short[] field_footForceEst = new short[4];
    /** @brief Complete native field tick; scalar, text bound 0. */
    public long field_tick = 0L;
    /** @brief Complete native field wirelessRemote; array capacity 40, text bound 0. */
    public int[] field_wirelessRemote = new int[40];
    /** @brief Complete native field reserve; scalar, text bound 0. */
    public long field_reserve = 0L;
    /** @brief Complete native field crc; scalar, text bound 0. */
    public long field_crc = 0L;
    /** @brief Complete native field eeForceRaw; array capacity 4, text bound 0. */
    public Ros1Unitree_legged_msgsCartesian[] field_eeForceRaw = new Ros1Unitree_legged_msgsCartesian[4];
    /** @brief Complete native field eeForce; array capacity 4, text bound 0. */
    public Ros1Unitree_legged_msgsCartesian[] field_eeForce = new Ros1Unitree_legged_msgsCartesian[4];
    /** @brief Complete native field position; scalar, text bound 0. */
    public Ros1Unitree_legged_msgsCartesian field_position = new Ros1Unitree_legged_msgsCartesian();
    /** @brief Complete native field velocity; scalar, text bound 0. */
    public Ros1Unitree_legged_msgsCartesian field_velocity = new Ros1Unitree_legged_msgsCartesian();
    /** @brief Complete native field velocity_w; scalar, text bound 0. */
    public Ros1Unitree_legged_msgsCartesian field_velocity_w = new Ros1Unitree_legged_msgsCartesian();

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros1Unitree_legged_msgsLowState()
    {
        for(int index = 0; index < 20; ++index)
        {
            field_motorState[index] = new Ros1Unitree_legged_msgsMotorState();
        }
        for(int index = 0; index < 4; ++index)
        {
            field_eeForceRaw[index] = new Ros1Unitree_legged_msgsCartesian();
        }
        for(int index = 0; index < 4; ++index)
        {
            field_eeForce[index] = new Ros1Unitree_legged_msgsCartesian();
        }
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros1Unitree_legged_msgsLowState value)
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
    public static Ros1Unitree_legged_msgsLowState decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros1Unitree_legged_msgsLowState value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros1Unitree_legged_msgsLowState value)
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
        Ros1Unitree_legged_msgsIMU.writeFields(wire, value.field_imu);
        if(value.field_motorState == null || value.field_motorState.length != 20)
        {
            throw new IllegalArgumentException("Invalid motorState extent");
        }
        for(int index = 0; index < value.field_motorState.length; index++)
        {
            Ros1Unitree_legged_msgsMotorState.writeFields(wire, value.field_motorState[index]);
        }
        Ros1Unitree_legged_msgsBmsState.writeFields(wire, value.field_bms);
        if(value.field_footForce == null || value.field_footForce.length != 4)
        {
            throw new IllegalArgumentException("Invalid footForce extent");
        }
        for(int index = 0; index < value.field_footForce.length; index++)
        {
            wire.i16(value.field_footForce[index]);
        }
        if(value.field_footForceEst == null || value.field_footForceEst.length != 4)
        {
            throw new IllegalArgumentException("Invalid footForceEst extent");
        }
        for(int index = 0; index < value.field_footForceEst.length; index++)
        {
            wire.i16(value.field_footForceEst[index]);
        }
        wire.u32(value.field_tick);
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
        if(value.field_eeForceRaw == null || value.field_eeForceRaw.length != 4)
        {
            throw new IllegalArgumentException("Invalid eeForceRaw extent");
        }
        for(int index = 0; index < value.field_eeForceRaw.length; index++)
        {
            Ros1Unitree_legged_msgsCartesian.writeFields(wire, value.field_eeForceRaw[index]);
        }
        if(value.field_eeForce == null || value.field_eeForce.length != 4)
        {
            throw new IllegalArgumentException("Invalid eeForce extent");
        }
        for(int index = 0; index < value.field_eeForce.length; index++)
        {
            Ros1Unitree_legged_msgsCartesian.writeFields(wire, value.field_eeForce[index]);
        }
        Ros1Unitree_legged_msgsCartesian.writeFields(wire, value.field_position);
        Ros1Unitree_legged_msgsCartesian.writeFields(wire, value.field_velocity);
        Ros1Unitree_legged_msgsCartesian.writeFields(wire, value.field_velocity_w);
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
    public static Ros1Unitree_legged_msgsLowState readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros1Unitree_legged_msgsLowState value = new Ros1Unitree_legged_msgsLowState();
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
        value.field_imu = Ros1Unitree_legged_msgsIMU.readFields(wire);
        value.field_motorState = new Ros1Unitree_legged_msgsMotorState[20];
        for(int index = 0; index < value.field_motorState.length; index++)
        {
            value.field_motorState[index] = Ros1Unitree_legged_msgsMotorState.readFields(wire);
        }
        value.field_bms = Ros1Unitree_legged_msgsBmsState.readFields(wire);
        value.field_footForce = new short[4];
        for(int index = 0; index < value.field_footForce.length; index++)
        {
            value.field_footForce[index] = wire.i16();
        }
        value.field_footForceEst = new short[4];
        for(int index = 0; index < value.field_footForceEst.length; index++)
        {
            value.field_footForceEst[index] = wire.i16();
        }
        value.field_tick = wire.u32();
        value.field_wirelessRemote = new int[40];
        for(int index = 0; index < value.field_wirelessRemote.length; index++)
        {
            value.field_wirelessRemote[index] = wire.u8();
        }
        value.field_reserve = wire.u32();
        value.field_crc = wire.u32();
        value.field_eeForceRaw = new Ros1Unitree_legged_msgsCartesian[4];
        for(int index = 0; index < value.field_eeForceRaw.length; index++)
        {
            value.field_eeForceRaw[index] = Ros1Unitree_legged_msgsCartesian.readFields(wire);
        }
        value.field_eeForce = new Ros1Unitree_legged_msgsCartesian[4];
        for(int index = 0; index < value.field_eeForce.length; index++)
        {
            value.field_eeForce[index] = Ros1Unitree_legged_msgsCartesian.readFields(wire);
        }
        value.field_position = Ros1Unitree_legged_msgsCartesian.readFields(wire);
        value.field_velocity = Ros1Unitree_legged_msgsCartesian.readFields(wire);
        value.field_velocity_w = Ros1Unitree_legged_msgsCartesian.readFields(wire);
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
        return value;
    }
}
