package uwvm.pal.ros1.ros1_indigo_devel;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 1 pal_walking_msgs/StepOverRequest value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros1Pal_walking_msgsStepOverRequest
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 32;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 32;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_00736de4ce830d33f33d93ca8c703dfc555f0ecc2ac86d90002929f4cefaedde";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "pal_walking_msgs/StepOverRequest";
    /** @brief Original native identity; empty native identity is unqualified. */
    public static final String NATIVE_IDENTITY = "";
    /** @brief Complete native field step_length; scalar, text bound 0. */
    public double field_step_length = Double.longBitsToDouble(0x0000000000000000L);
    /** @brief Complete native field step_time; scalar, text bound 0. */
    public double field_step_time = Double.longBitsToDouble(0x0000000000000000L);
    /** @brief Complete native field step_height; scalar, text bound 0. */
    public double field_step_height = Double.longBitsToDouble(0x0000000000000000L);
    /** @brief Complete native field z_lipm; scalar, text bound 0. */
    public double field_z_lipm = Double.longBitsToDouble(0x0000000000000000L);

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros1Pal_walking_msgsStepOverRequest()
    {
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros1Pal_walking_msgsStepOverRequest value)
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
    public static Ros1Pal_walking_msgsStepOverRequest decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros1Pal_walking_msgsStepOverRequest value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros1Pal_walking_msgsStepOverRequest value)
    {
        if(value == null)
        {
            throw new IllegalArgumentException("Null canonical record");
        }
        int start = wire.position();
        if(!Double.isFinite(value.field_step_length))
        {
            throw new IllegalArgumentException("Nonfinite step_length");
        }
        wire.f64(value.field_step_length);
        if(!Double.isFinite(value.field_step_time))
        {
            throw new IllegalArgumentException("Nonfinite step_time");
        }
        wire.f64(value.field_step_time);
        if(!Double.isFinite(value.field_step_height))
        {
            throw new IllegalArgumentException("Nonfinite step_height");
        }
        wire.f64(value.field_step_height);
        if(!Double.isFinite(value.field_z_lipm))
        {
            throw new IllegalArgumentException("Nonfinite z_lipm");
        }
        wire.f64(value.field_z_lipm);
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
    public static Ros1Pal_walking_msgsStepOverRequest readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros1Pal_walking_msgsStepOverRequest value = new Ros1Pal_walking_msgsStepOverRequest();
        value.field_step_length = wire.f64();
        if(!Double.isFinite(value.field_step_length))
        {
            throw new IllegalArgumentException("Nonfinite step_length");
        }
        value.field_step_time = wire.f64();
        if(!Double.isFinite(value.field_step_time))
        {
            throw new IllegalArgumentException("Nonfinite step_time");
        }
        value.field_step_height = wire.f64();
        if(!Double.isFinite(value.field_step_height))
        {
            throw new IllegalArgumentException("Nonfinite step_height");
        }
        value.field_z_lipm = wire.f64();
        if(!Double.isFinite(value.field_z_lipm))
        {
            throw new IllegalArgumentException("Nonfinite z_lipm");
        }
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
        return value;
    }
}
