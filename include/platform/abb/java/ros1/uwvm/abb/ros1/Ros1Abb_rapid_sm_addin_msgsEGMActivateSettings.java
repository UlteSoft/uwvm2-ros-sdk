/**
 * @file Ros1Abb_rapid_sm_addin_msgsEGMActivateSettings.java
 * @brief Represent the complete original ABB ROS 1 canonical value catalog.
 * @details The caller owns every record and its finite dynamic backing storage. Codecs retain all
 * fields, original constants and native defaults; field units and frames follow the retained
 * definitions. Malformed or out-of-bound wire values are rejected. These are guest values rather than
 * native ROS objects; importing them grants no transport alias.
 */
package uwvm.abb.ros1;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 1 abb_rapid_sm_addin_msgs/EGMActivateSettings value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros1Abb_rapid_sm_addin_msgsEGMActivateSettings
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 716;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 204;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_c50be5682021e5d1a7a938e6fe3595cec7c0b0ae727070c0924da731c2c73d4d";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "abb_rapid_sm_addin_msgs/EGMActivateSettings";
    /** @brief Original native identity; empty native identity is unqualified. */
    public static final String NATIVE_IDENTITY = "";
    /** @brief Complete native field tool; scalar, text bound 0. */
    public Ros1Abb_rapid_msgsToolData field_tool = new Ros1Abb_rapid_msgsToolData();
    /** @brief Complete native field wobj; scalar, text bound 0. */
    public Ros1Abb_rapid_msgsWObjData field_wobj = new Ros1Abb_rapid_msgsWObjData();
    /** @brief Complete native field correction_frame; scalar, text bound 0. */
    public Ros1Abb_rapid_msgsPose field_correction_frame = new Ros1Abb_rapid_msgsPose();
    /** @brief Complete native field sensor_frame; scalar, text bound 0. */
    public Ros1Abb_rapid_msgsPose field_sensor_frame = new Ros1Abb_rapid_msgsPose();
    /** @brief Complete native field cond_min_max; scalar, text bound 0. */
    public float field_cond_min_max = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field lp_filter; scalar, text bound 0. */
    public float field_lp_filter = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field sample_rate; scalar, text bound 0. */
    public int field_sample_rate = 0;
    /** @brief Complete native field max_speed_deviation; scalar, text bound 0. */
    public float field_max_speed_deviation = Float.intBitsToFloat(0x00000000);

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros1Abb_rapid_sm_addin_msgsEGMActivateSettings()
    {
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros1Abb_rapid_sm_addin_msgsEGMActivateSettings value)
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
    public static Ros1Abb_rapid_sm_addin_msgsEGMActivateSettings decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros1Abb_rapid_sm_addin_msgsEGMActivateSettings value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros1Abb_rapid_sm_addin_msgsEGMActivateSettings value)
    {
        if(value == null)
        {
            throw new IllegalArgumentException("Null canonical record");
        }
        int start = wire.position();
        Ros1Abb_rapid_msgsToolData.writeFields(wire, value.field_tool);
        Ros1Abb_rapid_msgsWObjData.writeFields(wire, value.field_wobj);
        Ros1Abb_rapid_msgsPose.writeFields(wire, value.field_correction_frame);
        Ros1Abb_rapid_msgsPose.writeFields(wire, value.field_sensor_frame);
        if(!Float.isFinite(value.field_cond_min_max))
        {
            throw new IllegalArgumentException("Nonfinite cond_min_max");
        }
        wire.f32(value.field_cond_min_max);
        if(!Float.isFinite(value.field_lp_filter))
        {
            throw new IllegalArgumentException("Nonfinite lp_filter");
        }
        wire.f32(value.field_lp_filter);
        wire.u8(value.field_sample_rate);
        if(!Float.isFinite(value.field_max_speed_deviation))
        {
            throw new IllegalArgumentException("Nonfinite max_speed_deviation");
        }
        wire.f32(value.field_max_speed_deviation);
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
    public static Ros1Abb_rapid_sm_addin_msgsEGMActivateSettings readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros1Abb_rapid_sm_addin_msgsEGMActivateSettings value = new Ros1Abb_rapid_sm_addin_msgsEGMActivateSettings();
        value.field_tool = Ros1Abb_rapid_msgsToolData.readFields(wire);
        value.field_wobj = Ros1Abb_rapid_msgsWObjData.readFields(wire);
        value.field_correction_frame = Ros1Abb_rapid_msgsPose.readFields(wire);
        value.field_sensor_frame = Ros1Abb_rapid_msgsPose.readFields(wire);
        value.field_cond_min_max = wire.f32();
        if(!Float.isFinite(value.field_cond_min_max))
        {
            throw new IllegalArgumentException("Nonfinite cond_min_max");
        }
        value.field_lp_filter = wire.f32();
        if(!Float.isFinite(value.field_lp_filter))
        {
            throw new IllegalArgumentException("Nonfinite lp_filter");
        }
        value.field_sample_rate = wire.u8();
        value.field_max_speed_deviation = wire.f32();
        if(!Float.isFinite(value.field_max_speed_deviation))
        {
            throw new IllegalArgumentException("Nonfinite max_speed_deviation");
        }
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
        return value;
    }
}
