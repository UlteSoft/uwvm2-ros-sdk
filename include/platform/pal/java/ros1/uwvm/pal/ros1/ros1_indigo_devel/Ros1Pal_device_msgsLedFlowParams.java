package uwvm.pal.ros1.ros1_indigo_devel;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 1 pal_device_msgs/LedFlowParams value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros1Pal_device_msgsLedFlowParams
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 40;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 40;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_b056dfced68aebfe2fda868b0d012ff75254be3787cf16f83a3ed939d7647aa7";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "pal_device_msgs/LedFlowParams";
    /** @brief Original native identity; empty native identity is unqualified. */
    public static final String NATIVE_IDENTITY = "";
    /** @brief Complete native field first_color; scalar, text bound 0. */
    public Ros1Std_msgsColorRGBA field_first_color = new Ros1Std_msgsColorRGBA();
    /** @brief Complete native field second_color; scalar, text bound 0. */
    public Ros1Std_msgsColorRGBA field_second_color = new Ros1Std_msgsColorRGBA();
    /** @brief Complete native field percentage; scalar, text bound 0. */
    public float field_percentage = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field velocity; scalar, text bound 0. */
    public float field_velocity = Float.intBitsToFloat(0x00000000);

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros1Pal_device_msgsLedFlowParams()
    {
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros1Pal_device_msgsLedFlowParams value)
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
    public static Ros1Pal_device_msgsLedFlowParams decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros1Pal_device_msgsLedFlowParams value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros1Pal_device_msgsLedFlowParams value)
    {
        if(value == null)
        {
            throw new IllegalArgumentException("Null canonical record");
        }
        int start = wire.position();
        Ros1Std_msgsColorRGBA.writeFields(wire, value.field_first_color);
        Ros1Std_msgsColorRGBA.writeFields(wire, value.field_second_color);
        if(!Float.isFinite(value.field_percentage))
        {
            throw new IllegalArgumentException("Nonfinite percentage");
        }
        wire.f32(value.field_percentage);
        if(!Float.isFinite(value.field_velocity))
        {
            throw new IllegalArgumentException("Nonfinite velocity");
        }
        wire.f32(value.field_velocity);
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
    public static Ros1Pal_device_msgsLedFlowParams readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros1Pal_device_msgsLedFlowParams value = new Ros1Pal_device_msgsLedFlowParams();
        value.field_first_color = Ros1Std_msgsColorRGBA.readFields(wire);
        value.field_second_color = Ros1Std_msgsColorRGBA.readFields(wire);
        value.field_percentage = wire.f32();
        if(!Float.isFinite(value.field_percentage))
        {
            throw new IllegalArgumentException("Nonfinite percentage");
        }
        value.field_velocity = wire.f32();
        if(!Float.isFinite(value.field_velocity))
        {
            throw new IllegalArgumentException("Nonfinite velocity");
        }
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
        return value;
    }
}
