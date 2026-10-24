/**
 * @file Ros1Abb_rapid_sm_addin_msgsEGMSettings.java
 * @brief Represent the complete original ABB ROS 1 canonical value catalog.
 * @details The caller owns every record and its finite dynamic backing storage. Codecs retain all
 * fields, original constants and native defaults; field units and frames follow the retained
 * definitions. Malformed or out-of-bound wire values are rejected. These are guest values rather than
 * native ROS objects; importing them grants no transport alias.
 */
package uwvm.abb.ros1;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 1 abb_rapid_sm_addin_msgs/EGMSettings value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros1Abb_rapid_sm_addin_msgsEGMSettings
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 767;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 255;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_ebc0ca24a54451f863964c74bf0257b5b25546d0d4b8a75ac75c265e1d62317b";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "abb_rapid_sm_addin_msgs/EGMSettings";
    /** @brief Original native identity; empty native identity is unqualified. */
    public static final String NATIVE_IDENTITY = "";
    /** @brief Complete native field allow_egm_motions; scalar, text bound 0. */
    public boolean field_allow_egm_motions = false;
    /** @brief Complete native field use_presync; scalar, text bound 0. */
    public boolean field_use_presync = false;
    /** @brief Complete native field setup_uc; scalar, text bound 0. */
    public Ros1Abb_rapid_sm_addin_msgsEGMSetupSettings field_setup_uc = new Ros1Abb_rapid_sm_addin_msgsEGMSetupSettings();
    /** @brief Complete native field activate; scalar, text bound 0. */
    public Ros1Abb_rapid_sm_addin_msgsEGMActivateSettings field_activate = new Ros1Abb_rapid_sm_addin_msgsEGMActivateSettings();
    /** @brief Complete native field run; scalar, text bound 0. */
    public Ros1Abb_rapid_sm_addin_msgsEGMRunSettings field_run = new Ros1Abb_rapid_sm_addin_msgsEGMRunSettings();
    /** @brief Complete native field stop; scalar, text bound 0. */
    public Ros1Abb_rapid_sm_addin_msgsEGMStopSettings field_stop = new Ros1Abb_rapid_sm_addin_msgsEGMStopSettings();

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros1Abb_rapid_sm_addin_msgsEGMSettings()
    {
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros1Abb_rapid_sm_addin_msgsEGMSettings value)
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
    public static Ros1Abb_rapid_sm_addin_msgsEGMSettings decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros1Abb_rapid_sm_addin_msgsEGMSettings value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros1Abb_rapid_sm_addin_msgsEGMSettings value)
    {
        if(value == null)
        {
            throw new IllegalArgumentException("Null canonical record");
        }
        int start = wire.position();
        wire.bool(value.field_allow_egm_motions);
        wire.bool(value.field_use_presync);
        Ros1Abb_rapid_sm_addin_msgsEGMSetupSettings.writeFields(wire, value.field_setup_uc);
        Ros1Abb_rapid_sm_addin_msgsEGMActivateSettings.writeFields(wire, value.field_activate);
        Ros1Abb_rapid_sm_addin_msgsEGMRunSettings.writeFields(wire, value.field_run);
        Ros1Abb_rapid_sm_addin_msgsEGMStopSettings.writeFields(wire, value.field_stop);
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
    public static Ros1Abb_rapid_sm_addin_msgsEGMSettings readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros1Abb_rapid_sm_addin_msgsEGMSettings value = new Ros1Abb_rapid_sm_addin_msgsEGMSettings();
        value.field_allow_egm_motions = wire.bool();
        value.field_use_presync = wire.bool();
        value.field_setup_uc = Ros1Abb_rapid_sm_addin_msgsEGMSetupSettings.readFields(wire);
        value.field_activate = Ros1Abb_rapid_sm_addin_msgsEGMActivateSettings.readFields(wire);
        value.field_run = Ros1Abb_rapid_sm_addin_msgsEGMRunSettings.readFields(wire);
        value.field_stop = Ros1Abb_rapid_sm_addin_msgsEGMStopSettings.readFields(wire);
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
        return value;
    }
}
