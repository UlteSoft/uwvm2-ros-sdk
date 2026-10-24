/**
 * @file Ros1Abb_egm_msgsEGMChannelState.java
 * @brief Represent the complete original ABB ROS 1 canonical value catalog.
 * @details The caller owns every record and its finite dynamic backing storage. Codecs retain all
 * fields, original constants and native defaults; field units and frames follow the retained
 * definitions. Malformed or out-of-bound wire values are rejected. These are guest values rather than
 * native ROS objects; importing them grants no transport alias.
 */
package uwvm.abb.ros1;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 1 abb_egm_msgs/EGMChannelState value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros1Abb_egm_msgsEGMChannelState
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 81;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 17;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_452d2adde3b1475fe3ff09ea11ff2ec7105a58c32e20d764e0c2ff152cb432f2";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "abb_egm_msgs/EGMChannelState";
    /** @brief Original native identity; empty native identity is unqualified. */
    public static final String NATIVE_IDENTITY = "";
    /** @brief Original source constant EGM_UNDEFINED; consumes no instance wire bytes. */
    public static final int CONST_EGM_UNDEFINED = 1;
    /** @brief Original source constant EGM_ERROR; consumes no instance wire bytes. */
    public static final int CONST_EGM_ERROR = 2;
    /** @brief Original source constant EGM_STOPPED; consumes no instance wire bytes. */
    public static final int CONST_EGM_STOPPED = 3;
    /** @brief Original source constant EGM_RUNNING; consumes no instance wire bytes. */
    public static final int CONST_EGM_RUNNING = 4;
    /** @brief Original source constant MOTORS_UNDEFINED; consumes no instance wire bytes. */
    public static final int CONST_MOTORS_UNDEFINED = 1;
    /** @brief Original source constant MOTORS_ON; consumes no instance wire bytes. */
    public static final int CONST_MOTORS_ON = 2;
    /** @brief Original source constant MOTORS_OFF; consumes no instance wire bytes. */
    public static final int CONST_MOTORS_OFF = 3;
    /** @brief Original source constant RAPID_UNDEFINED; consumes no instance wire bytes. */
    public static final int CONST_RAPID_UNDEFINED = 1;
    /** @brief Original source constant RAPID_STOPPED; consumes no instance wire bytes. */
    public static final int CONST_RAPID_STOPPED = 2;
    /** @brief Original source constant RAPID_RUNNING; consumes no instance wire bytes. */
    public static final int CONST_RAPID_RUNNING = 3;
    /** @brief Complete native field name; scalar, text bound 64. */
    public String field_name = "";
    /** @brief Complete native field active; scalar, text bound 0. */
    public boolean field_active = false;
    /** @brief Complete native field egm_convergence_met; scalar, text bound 0. */
    public boolean field_egm_convergence_met = false;
    /** @brief Complete native field egm_client_state; scalar, text bound 0. */
    public int field_egm_client_state = 0;
    /** @brief Complete native field motor_state; scalar, text bound 0. */
    public int field_motor_state = 0;
    /** @brief Complete native field rapid_execution_state; scalar, text bound 0. */
    public int field_rapid_execution_state = 0;
    /** @brief Complete native field utilization_rate; scalar, text bound 0. */
    public double field_utilization_rate = Double.longBitsToDouble(0x0000000000000000L);

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros1Abb_egm_msgsEGMChannelState()
    {
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros1Abb_egm_msgsEGMChannelState value)
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
    public static Ros1Abb_egm_msgsEGMChannelState decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros1Abb_egm_msgsEGMChannelState value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros1Abb_egm_msgsEGMChannelState value)
    {
        if(value == null)
        {
            throw new IllegalArgumentException("Null canonical record");
        }
        int start = wire.position();
        wire.string(value.field_name, 64);
        wire.bool(value.field_active);
        wire.bool(value.field_egm_convergence_met);
        wire.u8(value.field_egm_client_state);
        wire.u8(value.field_motor_state);
        wire.u8(value.field_rapid_execution_state);
        if(!Double.isFinite(value.field_utilization_rate))
        {
            throw new IllegalArgumentException("Nonfinite utilization_rate");
        }
        wire.f64(value.field_utilization_rate);
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
    public static Ros1Abb_egm_msgsEGMChannelState readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros1Abb_egm_msgsEGMChannelState value = new Ros1Abb_egm_msgsEGMChannelState();
        value.field_name = wire.string(64);
        value.field_active = wire.bool();
        value.field_egm_convergence_met = wire.bool();
        value.field_egm_client_state = wire.u8();
        value.field_motor_state = wire.u8();
        value.field_rapid_execution_state = wire.u8();
        value.field_utilization_rate = wire.f64();
        if(!Double.isFinite(value.field_utilization_rate))
        {
            throw new IllegalArgumentException("Nonfinite utilization_rate");
        }
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
        return value;
    }
}
