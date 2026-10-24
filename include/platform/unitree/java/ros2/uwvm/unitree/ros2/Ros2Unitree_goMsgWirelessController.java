package uwvm.unitree.ros2;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 2 unitree_go/msg/WirelessController value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros2Unitree_goMsgWirelessController
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 18;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 18;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_536e69ce5459227cb68b3c6d484a96bfa40e1400aab820f8ad0d0d62ff6ba438";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "unitree_go/msg/WirelessController";
    /** @brief Original native identity; empty native identity is unqualified. */
    public static final String NATIVE_IDENTITY = "";
    /** @brief Complete native field lx; scalar, text bound 0. */
    public float field_lx = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field ly; scalar, text bound 0. */
    public float field_ly = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field rx; scalar, text bound 0. */
    public float field_rx = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field ry; scalar, text bound 0. */
    public float field_ry = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field keys; scalar, text bound 0. */
    public int field_keys = 0;

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros2Unitree_goMsgWirelessController()
    {
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros2Unitree_goMsgWirelessController value)
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
    public static Ros2Unitree_goMsgWirelessController decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros2Unitree_goMsgWirelessController value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros2Unitree_goMsgWirelessController value)
    {
        if(value == null)
        {
            throw new IllegalArgumentException("Null canonical record");
        }
        int start = wire.position();
        if(!Float.isFinite(value.field_lx))
        {
            throw new IllegalArgumentException("Nonfinite lx");
        }
        wire.f32(value.field_lx);
        if(!Float.isFinite(value.field_ly))
        {
            throw new IllegalArgumentException("Nonfinite ly");
        }
        wire.f32(value.field_ly);
        if(!Float.isFinite(value.field_rx))
        {
            throw new IllegalArgumentException("Nonfinite rx");
        }
        wire.f32(value.field_rx);
        if(!Float.isFinite(value.field_ry))
        {
            throw new IllegalArgumentException("Nonfinite ry");
        }
        wire.f32(value.field_ry);
        wire.u16(value.field_keys);
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
    public static Ros2Unitree_goMsgWirelessController readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros2Unitree_goMsgWirelessController value = new Ros2Unitree_goMsgWirelessController();
        value.field_lx = wire.f32();
        if(!Float.isFinite(value.field_lx))
        {
            throw new IllegalArgumentException("Nonfinite lx");
        }
        value.field_ly = wire.f32();
        if(!Float.isFinite(value.field_ly))
        {
            throw new IllegalArgumentException("Nonfinite ly");
        }
        value.field_rx = wire.f32();
        if(!Float.isFinite(value.field_rx))
        {
            throw new IllegalArgumentException("Nonfinite rx");
        }
        value.field_ry = wire.f32();
        if(!Float.isFinite(value.field_ry))
        {
            throw new IllegalArgumentException("Nonfinite ry");
        }
        value.field_keys = wire.u16();
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
        return value;
    }
}
