package uwvm.pal.ros2.ros2_humble_devel;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 2 pal_device_msgs/msg/LedEffectParams value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros2Pal_device_msgsMsgLedEffectParams
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 395;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 203;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_dbaf26734baee7c339c249fb6bd35f42672b48bac23966670f525f5d921f8848";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "pal_device_msgs/msg/LedEffectParams";
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
    /** @brief Complete native field effect_type; scalar, text bound 0. */
    public int field_effect_type = 0;
    /** @brief Complete native field fixed_color; scalar, text bound 0. */
    public Ros2Pal_device_msgsMsgLedFixedColorParams field_fixed_color = new Ros2Pal_device_msgsMsgLedFixedColorParams();
    /** @brief Complete native field rainbow; scalar, text bound 0. */
    public Ros2Pal_device_msgsMsgLedRainbowParams field_rainbow = new Ros2Pal_device_msgsMsgLedRainbowParams();
    /** @brief Complete native field fade; scalar, text bound 0. */
    public Ros2Pal_device_msgsMsgLedFadeParams field_fade = new Ros2Pal_device_msgsMsgLedFadeParams();
    /** @brief Complete native field blink; scalar, text bound 0. */
    public Ros2Pal_device_msgsMsgLedBlinkParams field_blink = new Ros2Pal_device_msgsMsgLedBlinkParams();
    /** @brief Complete native field progress; scalar, text bound 0. */
    public Ros2Pal_device_msgsMsgLedProgressParams field_progress = new Ros2Pal_device_msgsMsgLedProgressParams();
    /** @brief Complete native field flow; scalar, text bound 0. */
    public Ros2Pal_device_msgsMsgLedFlowParams field_flow = new Ros2Pal_device_msgsMsgLedFlowParams();
    /** @brief Complete native field preprogrammed; scalar, text bound 0. */
    public Ros2Pal_device_msgsMsgLedPreProgrammedParams field_preprogrammed = new Ros2Pal_device_msgsMsgLedPreProgrammedParams();
    /** @brief Complete native field effect_via_topic; scalar, text bound 0. */
    public Ros2Pal_device_msgsMsgLedEffectViaTopicParams field_effect_via_topic = new Ros2Pal_device_msgsMsgLedEffectViaTopicParams();
    /** @brief Complete native field data_array; scalar, text bound 0. */
    public Ros2Pal_device_msgsMsgLedDataArrayParams field_data_array = new Ros2Pal_device_msgsMsgLedDataArrayParams();

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros2Pal_device_msgsMsgLedEffectParams()
    {
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros2Pal_device_msgsMsgLedEffectParams value)
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
    public static Ros2Pal_device_msgsMsgLedEffectParams decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros2Pal_device_msgsMsgLedEffectParams value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros2Pal_device_msgsMsgLedEffectParams value)
    {
        if(value == null)
        {
            throw new IllegalArgumentException("Null canonical record");
        }
        int start = wire.position();
        wire.u8(value.field_effect_type);
        Ros2Pal_device_msgsMsgLedFixedColorParams.writeFields(wire, value.field_fixed_color);
        Ros2Pal_device_msgsMsgLedRainbowParams.writeFields(wire, value.field_rainbow);
        Ros2Pal_device_msgsMsgLedFadeParams.writeFields(wire, value.field_fade);
        Ros2Pal_device_msgsMsgLedBlinkParams.writeFields(wire, value.field_blink);
        Ros2Pal_device_msgsMsgLedProgressParams.writeFields(wire, value.field_progress);
        Ros2Pal_device_msgsMsgLedFlowParams.writeFields(wire, value.field_flow);
        Ros2Pal_device_msgsMsgLedPreProgrammedParams.writeFields(wire, value.field_preprogrammed);
        Ros2Pal_device_msgsMsgLedEffectViaTopicParams.writeFields(wire, value.field_effect_via_topic);
        Ros2Pal_device_msgsMsgLedDataArrayParams.writeFields(wire, value.field_data_array);
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
    public static Ros2Pal_device_msgsMsgLedEffectParams readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros2Pal_device_msgsMsgLedEffectParams value = new Ros2Pal_device_msgsMsgLedEffectParams();
        value.field_effect_type = wire.u8();
        value.field_fixed_color = Ros2Pal_device_msgsMsgLedFixedColorParams.readFields(wire);
        value.field_rainbow = Ros2Pal_device_msgsMsgLedRainbowParams.readFields(wire);
        value.field_fade = Ros2Pal_device_msgsMsgLedFadeParams.readFields(wire);
        value.field_blink = Ros2Pal_device_msgsMsgLedBlinkParams.readFields(wire);
        value.field_progress = Ros2Pal_device_msgsMsgLedProgressParams.readFields(wire);
        value.field_flow = Ros2Pal_device_msgsMsgLedFlowParams.readFields(wire);
        value.field_preprogrammed = Ros2Pal_device_msgsMsgLedPreProgrammedParams.readFields(wire);
        value.field_effect_via_topic = Ros2Pal_device_msgsMsgLedEffectViaTopicParams.readFields(wire);
        value.field_data_array = Ros2Pal_device_msgsMsgLedDataArrayParams.readFields(wire);
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
        return value;
    }
}
