package uwvm.pal.ros2.ros2_humble_devel;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 2 std_msgs/msg/ColorRGBA value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros2Std_msgsMsgColorRGBA
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 16;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 16;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_087e0282f02c82a1d8f4580a47ff359ea71b7e72d477da47f49fc6bff61238b2";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "std_msgs/msg/ColorRGBA";
    /** @brief Original native identity; empty native identity is unqualified. */
    public static final String NATIVE_IDENTITY = "";
    /** @brief Complete native field r; scalar, text bound 0. */
    public float field_r = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field g; scalar, text bound 0. */
    public float field_g = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field b; scalar, text bound 0. */
    public float field_b = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field a; scalar, text bound 0. */
    public float field_a = Float.intBitsToFloat(0x00000000);

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros2Std_msgsMsgColorRGBA()
    {
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros2Std_msgsMsgColorRGBA value)
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
    public static Ros2Std_msgsMsgColorRGBA decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros2Std_msgsMsgColorRGBA value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros2Std_msgsMsgColorRGBA value)
    {
        if(value == null)
        {
            throw new IllegalArgumentException("Null canonical record");
        }
        int start = wire.position();
        if(!Float.isFinite(value.field_r))
        {
            throw new IllegalArgumentException("Nonfinite r");
        }
        wire.f32(value.field_r);
        if(!Float.isFinite(value.field_g))
        {
            throw new IllegalArgumentException("Nonfinite g");
        }
        wire.f32(value.field_g);
        if(!Float.isFinite(value.field_b))
        {
            throw new IllegalArgumentException("Nonfinite b");
        }
        wire.f32(value.field_b);
        if(!Float.isFinite(value.field_a))
        {
            throw new IllegalArgumentException("Nonfinite a");
        }
        wire.f32(value.field_a);
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
    public static Ros2Std_msgsMsgColorRGBA readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros2Std_msgsMsgColorRGBA value = new Ros2Std_msgsMsgColorRGBA();
        value.field_r = wire.f32();
        if(!Float.isFinite(value.field_r))
        {
            throw new IllegalArgumentException("Nonfinite r");
        }
        value.field_g = wire.f32();
        if(!Float.isFinite(value.field_g))
        {
            throw new IllegalArgumentException("Nonfinite g");
        }
        value.field_b = wire.f32();
        if(!Float.isFinite(value.field_b))
        {
            throw new IllegalArgumentException("Nonfinite b");
        }
        value.field_a = wire.f32();
        if(!Float.isFinite(value.field_a))
        {
            throw new IllegalArgumentException("Nonfinite a");
        }
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
        return value;
    }
}
