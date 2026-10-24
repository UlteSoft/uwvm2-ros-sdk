package uwvm.pal.ros1.ros1_indigo_devel;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 1 pal_device_msgs/LedEffectParams value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros1Pal_device_msgsLedEffectParams
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 395;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 203;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_c2d7568c4d0e241b555b76b29424dc46d72587421f5c2e0647204b792b9b17a6";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "pal_device_msgs/LedEffectParams";
    /** @brief Original native identity; empty native identity is unqualified. */
    public static final String NATIVE_IDENTITY = "";
    /** @brief Original source constant FIXED_COLOR; consumes no instance wire bytes. */
    public static final int CONST_FIXED_COLOR = 0;
    /** @brief Original source constant RAINBOW; consumes no instance wire bytes. */
    public static final int CONST_RAINBOW = 1;
    /** @brief Original source constant FADE; consumes no instance wire bytes. */
    public static final int CONST_FADE = 2;
    /** @brief Original source constant BLINK; consumes no instance wire bytes. */
    public static final int CONST_BLINK = 3;
    /** @brief Original source constant PROGRESS; consumes no instance wire bytes. */
    public static final int CONST_PROGRESS = 4;
    /** @brief Original source constant FLOW; consumes no instance wire bytes. */
    public static final int CONST_FLOW = 5;
    /** @brief Original source constant PREPROGRAMMED_EFFECT; consumes no instance wire bytes. */
    public static final int CONST_PREPROGRAMMED_EFFECT = 6;
    /** @brief Original source constant EFFECT_VIA_TOPIC; consumes no instance wire bytes. */
    public static final int CONST_EFFECT_VIA_TOPIC = 7;
    /** @brief Original source constant DATA_ARRAY; consumes no instance wire bytes. */
    public static final int CONST_DATA_ARRAY = 8;
    /** @brief Complete native field effectType; scalar, text bound 0. */
    public int field_effectType = 0;
    /** @brief Complete native field fixed_color; scalar, text bound 0. */
    public Ros1Pal_device_msgsLedFixedColorParams field_fixed_color = new Ros1Pal_device_msgsLedFixedColorParams();
    /** @brief Complete native field rainbow; scalar, text bound 0. */
    public Ros1Pal_device_msgsLedRainbowParams field_rainbow = new Ros1Pal_device_msgsLedRainbowParams();
    /** @brief Complete native field fade; scalar, text bound 0. */
    public Ros1Pal_device_msgsLedFadeParams field_fade = new Ros1Pal_device_msgsLedFadeParams();
    /** @brief Complete native field blink; scalar, text bound 0. */
    public Ros1Pal_device_msgsLedBlinkParams field_blink = new Ros1Pal_device_msgsLedBlinkParams();
    /** @brief Complete native field progress; scalar, text bound 0. */
    public Ros1Pal_device_msgsLedProgressParams field_progress = new Ros1Pal_device_msgsLedProgressParams();
    /** @brief Complete native field flow; scalar, text bound 0. */
    public Ros1Pal_device_msgsLedFlowParams field_flow = new Ros1Pal_device_msgsLedFlowParams();
    /** @brief Complete native field preprogrammed; scalar, text bound 0. */
    public Ros1Pal_device_msgsLedPreProgrammedParams field_preprogrammed = new Ros1Pal_device_msgsLedPreProgrammedParams();
    /** @brief Complete native field effect_via_topic; scalar, text bound 0. */
    public Ros1Pal_device_msgsLedEffectViaTopicParams field_effect_via_topic = new Ros1Pal_device_msgsLedEffectViaTopicParams();
    /** @brief Complete native field data_array; scalar, text bound 0. */
    public Ros1Pal_device_msgsLedDataArrayParams field_data_array = new Ros1Pal_device_msgsLedDataArrayParams();

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros1Pal_device_msgsLedEffectParams()
    {
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros1Pal_device_msgsLedEffectParams value)
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
    public static Ros1Pal_device_msgsLedEffectParams decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros1Pal_device_msgsLedEffectParams value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros1Pal_device_msgsLedEffectParams value)
    {
        if(value == null)
        {
            throw new IllegalArgumentException("Null canonical record");
        }
        int start = wire.position();
        wire.u8(value.field_effectType);
        Ros1Pal_device_msgsLedFixedColorParams.writeFields(wire, value.field_fixed_color);
        Ros1Pal_device_msgsLedRainbowParams.writeFields(wire, value.field_rainbow);
        Ros1Pal_device_msgsLedFadeParams.writeFields(wire, value.field_fade);
        Ros1Pal_device_msgsLedBlinkParams.writeFields(wire, value.field_blink);
        Ros1Pal_device_msgsLedProgressParams.writeFields(wire, value.field_progress);
        Ros1Pal_device_msgsLedFlowParams.writeFields(wire, value.field_flow);
        Ros1Pal_device_msgsLedPreProgrammedParams.writeFields(wire, value.field_preprogrammed);
        Ros1Pal_device_msgsLedEffectViaTopicParams.writeFields(wire, value.field_effect_via_topic);
        Ros1Pal_device_msgsLedDataArrayParams.writeFields(wire, value.field_data_array);
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
    public static Ros1Pal_device_msgsLedEffectParams readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros1Pal_device_msgsLedEffectParams value = new Ros1Pal_device_msgsLedEffectParams();
        value.field_effectType = wire.u8();
        value.field_fixed_color = Ros1Pal_device_msgsLedFixedColorParams.readFields(wire);
        value.field_rainbow = Ros1Pal_device_msgsLedRainbowParams.readFields(wire);
        value.field_fade = Ros1Pal_device_msgsLedFadeParams.readFields(wire);
        value.field_blink = Ros1Pal_device_msgsLedBlinkParams.readFields(wire);
        value.field_progress = Ros1Pal_device_msgsLedProgressParams.readFields(wire);
        value.field_flow = Ros1Pal_device_msgsLedFlowParams.readFields(wire);
        value.field_preprogrammed = Ros1Pal_device_msgsLedPreProgrammedParams.readFields(wire);
        value.field_effect_via_topic = Ros1Pal_device_msgsLedEffectViaTopicParams.readFields(wire);
        value.field_data_array = Ros1Pal_device_msgsLedDataArrayParams.readFields(wire);
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
        return value;
    }
}
