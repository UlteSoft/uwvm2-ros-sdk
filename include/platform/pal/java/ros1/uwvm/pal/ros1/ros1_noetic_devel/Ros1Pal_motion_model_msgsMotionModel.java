package uwvm.pal.ros1.ros1_noetic_devel;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 1 pal_motion_model_msgs/MotionModel value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros1Pal_motion_model_msgsMotionModel
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 24;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 24;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_3d44b889a1c70d5e84107202bccf2143c8dd559a2cd5499d0c7319568469c1ea";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "pal_motion_model_msgs/MotionModel";
    /** @brief Original native identity; empty native identity is unqualified. */
    public static final String NATIVE_IDENTITY = "";
    /** @brief Complete native field heading_mean; scalar, text bound 0. */
    public float field_heading_mean = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field heading_std_dev; scalar, text bound 0. */
    public float field_heading_std_dev = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field linear_speed_mean; scalar, text bound 0. */
    public float field_linear_speed_mean = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field linear_speed_std_dev; scalar, text bound 0. */
    public float field_linear_speed_std_dev = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field angular_speed_mean; scalar, text bound 0. */
    public float field_angular_speed_mean = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field angular_speed_std_dev; scalar, text bound 0. */
    public float field_angular_speed_std_dev = Float.intBitsToFloat(0x00000000);

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros1Pal_motion_model_msgsMotionModel()
    {
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros1Pal_motion_model_msgsMotionModel value)
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
    public static Ros1Pal_motion_model_msgsMotionModel decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros1Pal_motion_model_msgsMotionModel value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros1Pal_motion_model_msgsMotionModel value)
    {
        if(value == null)
        {
            throw new IllegalArgumentException("Null canonical record");
        }
        int start = wire.position();
        if(!Float.isFinite(value.field_heading_mean))
        {
            throw new IllegalArgumentException("Nonfinite heading_mean");
        }
        wire.f32(value.field_heading_mean);
        if(!Float.isFinite(value.field_heading_std_dev))
        {
            throw new IllegalArgumentException("Nonfinite heading_std_dev");
        }
        wire.f32(value.field_heading_std_dev);
        if(!Float.isFinite(value.field_linear_speed_mean))
        {
            throw new IllegalArgumentException("Nonfinite linear_speed_mean");
        }
        wire.f32(value.field_linear_speed_mean);
        if(!Float.isFinite(value.field_linear_speed_std_dev))
        {
            throw new IllegalArgumentException("Nonfinite linear_speed_std_dev");
        }
        wire.f32(value.field_linear_speed_std_dev);
        if(!Float.isFinite(value.field_angular_speed_mean))
        {
            throw new IllegalArgumentException("Nonfinite angular_speed_mean");
        }
        wire.f32(value.field_angular_speed_mean);
        if(!Float.isFinite(value.field_angular_speed_std_dev))
        {
            throw new IllegalArgumentException("Nonfinite angular_speed_std_dev");
        }
        wire.f32(value.field_angular_speed_std_dev);
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
    public static Ros1Pal_motion_model_msgsMotionModel readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros1Pal_motion_model_msgsMotionModel value = new Ros1Pal_motion_model_msgsMotionModel();
        value.field_heading_mean = wire.f32();
        if(!Float.isFinite(value.field_heading_mean))
        {
            throw new IllegalArgumentException("Nonfinite heading_mean");
        }
        value.field_heading_std_dev = wire.f32();
        if(!Float.isFinite(value.field_heading_std_dev))
        {
            throw new IllegalArgumentException("Nonfinite heading_std_dev");
        }
        value.field_linear_speed_mean = wire.f32();
        if(!Float.isFinite(value.field_linear_speed_mean))
        {
            throw new IllegalArgumentException("Nonfinite linear_speed_mean");
        }
        value.field_linear_speed_std_dev = wire.f32();
        if(!Float.isFinite(value.field_linear_speed_std_dev))
        {
            throw new IllegalArgumentException("Nonfinite linear_speed_std_dev");
        }
        value.field_angular_speed_mean = wire.f32();
        if(!Float.isFinite(value.field_angular_speed_mean))
        {
            throw new IllegalArgumentException("Nonfinite angular_speed_mean");
        }
        value.field_angular_speed_std_dev = wire.f32();
        if(!Float.isFinite(value.field_angular_speed_std_dev))
        {
            throw new IllegalArgumentException("Nonfinite angular_speed_std_dev");
        }
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
        return value;
    }
}
