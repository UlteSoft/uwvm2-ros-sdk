package uwvm.pal.ros1.ros1_indigo_devel;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 1 pal_device_msgs/TimedColourEffectRequest value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros1Pal_device_msgsTimedColourEffectRequest
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 29;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 29;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_ad05e8c9bbc7cececa0735b5828b81adcd042b7e738f346ffa758407cd20ded3";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "pal_device_msgs/TimedColourEffectRequest";
    /** @brief Original native identity; empty native identity is unqualified. */
    public static final String NATIVE_IDENTITY = "";
    /** @brief Complete native field leds; scalar, text bound 0. */
    public Ros1Pal_device_msgsLedGroup field_leds = new Ros1Pal_device_msgsLedGroup();
    /** @brief Complete native field color; scalar, text bound 0. */
    public Ros1Std_msgsColorRGBA field_color = new Ros1Std_msgsColorRGBA();
    /** @brief Complete native field effectDuration; scalar, text bound 0. */
    public Ros1Duration field_effectDuration = new Ros1Duration();
    /** @brief Complete native field priority; scalar, text bound 0. */
    public int field_priority = 0;

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros1Pal_device_msgsTimedColourEffectRequest()
    {
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros1Pal_device_msgsTimedColourEffectRequest value)
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
    public static Ros1Pal_device_msgsTimedColourEffectRequest decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros1Pal_device_msgsTimedColourEffectRequest value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros1Pal_device_msgsTimedColourEffectRequest value)
    {
        if(value == null)
        {
            throw new IllegalArgumentException("Null canonical record");
        }
        int start = wire.position();
        Ros1Pal_device_msgsLedGroup.writeFields(wire, value.field_leds);
        Ros1Std_msgsColorRGBA.writeFields(wire, value.field_color);
        Ros1Duration.writeFields(wire, value.field_effectDuration);
        wire.u8(value.field_priority);
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
    public static Ros1Pal_device_msgsTimedColourEffectRequest readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros1Pal_device_msgsTimedColourEffectRequest value = new Ros1Pal_device_msgsTimedColourEffectRequest();
        value.field_leds = Ros1Pal_device_msgsLedGroup.readFields(wire);
        value.field_color = Ros1Std_msgsColorRGBA.readFields(wire);
        value.field_effectDuration = Ros1Duration.readFields(wire);
        value.field_priority = wire.u8();
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
        return value;
    }
}
