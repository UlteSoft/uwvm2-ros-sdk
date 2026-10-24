package uwvm.unitree.ros2;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 2 unitree_go/msg/PathPoint value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros2Unitree_goMsgPathPoint
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 28;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 28;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_35eb1cc629dcecbace17b342029c287310c30d4e6d988740bf2c212a1251cee4";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "unitree_go/msg/PathPoint";
    /** @brief Original native identity; empty native identity is unqualified. */
    public static final String NATIVE_IDENTITY = "";
    /** @brief Complete native field t_from_start; scalar, text bound 0. */
    public float field_t_from_start = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field x; scalar, text bound 0. */
    public float field_x = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field y; scalar, text bound 0. */
    public float field_y = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field yaw; scalar, text bound 0. */
    public float field_yaw = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field vx; scalar, text bound 0. */
    public float field_vx = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field vy; scalar, text bound 0. */
    public float field_vy = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field vyaw; scalar, text bound 0. */
    public float field_vyaw = Float.intBitsToFloat(0x00000000);

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros2Unitree_goMsgPathPoint()
    {
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros2Unitree_goMsgPathPoint value)
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
    public static Ros2Unitree_goMsgPathPoint decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros2Unitree_goMsgPathPoint value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros2Unitree_goMsgPathPoint value)
    {
        if(value == null)
        {
            throw new IllegalArgumentException("Null canonical record");
        }
        int start = wire.position();
        if(!Float.isFinite(value.field_t_from_start))
        {
            throw new IllegalArgumentException("Nonfinite t_from_start");
        }
        wire.f32(value.field_t_from_start);
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
        if(!Float.isFinite(value.field_yaw))
        {
            throw new IllegalArgumentException("Nonfinite yaw");
        }
        wire.f32(value.field_yaw);
        if(!Float.isFinite(value.field_vx))
        {
            throw new IllegalArgumentException("Nonfinite vx");
        }
        wire.f32(value.field_vx);
        if(!Float.isFinite(value.field_vy))
        {
            throw new IllegalArgumentException("Nonfinite vy");
        }
        wire.f32(value.field_vy);
        if(!Float.isFinite(value.field_vyaw))
        {
            throw new IllegalArgumentException("Nonfinite vyaw");
        }
        wire.f32(value.field_vyaw);
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
    public static Ros2Unitree_goMsgPathPoint readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros2Unitree_goMsgPathPoint value = new Ros2Unitree_goMsgPathPoint();
        value.field_t_from_start = wire.f32();
        if(!Float.isFinite(value.field_t_from_start))
        {
            throw new IllegalArgumentException("Nonfinite t_from_start");
        }
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
        value.field_yaw = wire.f32();
        if(!Float.isFinite(value.field_yaw))
        {
            throw new IllegalArgumentException("Nonfinite yaw");
        }
        value.field_vx = wire.f32();
        if(!Float.isFinite(value.field_vx))
        {
            throw new IllegalArgumentException("Nonfinite vx");
        }
        value.field_vy = wire.f32();
        if(!Float.isFinite(value.field_vy))
        {
            throw new IllegalArgumentException("Nonfinite vy");
        }
        value.field_vyaw = wire.f32();
        if(!Float.isFinite(value.field_vyaw))
        {
            throw new IllegalArgumentException("Nonfinite vyaw");
        }
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
        return value;
    }
}
