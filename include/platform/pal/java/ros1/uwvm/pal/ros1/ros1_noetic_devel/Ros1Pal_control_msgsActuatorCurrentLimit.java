package uwvm.pal.ros1.ros1_noetic_devel;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 1 pal_control_msgs/ActuatorCurrentLimit value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros1Pal_control_msgsActuatorCurrentLimit
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 2248;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 8;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_cf7369861a4d556cc9edc22cc60c79f484ca84e295c508a2ff7d7332247addbe";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "pal_control_msgs/ActuatorCurrentLimit";
    /** @brief Original native identity; empty native identity is unqualified. */
    public static final String NATIVE_IDENTITY = "";
    /** @brief Complete native field actuator_names; sequence capacity 16, text bound 128. */
    public String[] field_actuator_names = new String[0];
    /** @brief Complete native field current_limits; sequence capacity 16, text bound 0. */
    public double[] field_current_limits = new double[0];

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros1Pal_control_msgsActuatorCurrentLimit()
    {
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros1Pal_control_msgsActuatorCurrentLimit value)
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
    public static Ros1Pal_control_msgsActuatorCurrentLimit decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros1Pal_control_msgsActuatorCurrentLimit value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros1Pal_control_msgsActuatorCurrentLimit value)
    {
        if(value == null)
        {
            throw new IllegalArgumentException("Null canonical record");
        }
        int start = wire.position();
        if(value.field_actuator_names == null || value.field_actuator_names.length > 16)
        {
            throw new IllegalArgumentException("Invalid actuator_names extent");
        }
        wire.u32((long)value.field_actuator_names.length);
        for(int index = 0; index < value.field_actuator_names.length; index++)
        {
            wire.string(value.field_actuator_names[index], 128);
        }
        if(value.field_current_limits == null || value.field_current_limits.length > 16)
        {
            throw new IllegalArgumentException("Invalid current_limits extent");
        }
        wire.u32((long)value.field_current_limits.length);
        for(int index = 0; index < value.field_current_limits.length; index++)
        {
            if(!Double.isFinite(value.field_current_limits[index]))
            {
                throw new IllegalArgumentException("Nonfinite current_limits");
            }
            wire.f64(value.field_current_limits[index]);
        }
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
    public static Ros1Pal_control_msgsActuatorCurrentLimit readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros1Pal_control_msgsActuatorCurrentLimit value = new Ros1Pal_control_msgsActuatorCurrentLimit();
        value.field_actuator_names = new String[wire.count(16)];
        for(int index = 0; index < value.field_actuator_names.length; index++)
        {
            value.field_actuator_names[index] = wire.string(128);
        }
        value.field_current_limits = new double[wire.count(16)];
        for(int index = 0; index < value.field_current_limits.length; index++)
        {
            value.field_current_limits[index] = wire.f64();
            if(!Double.isFinite(value.field_current_limits[index]))
            {
                throw new IllegalArgumentException("Nonfinite current_limits");
            }
        }
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
        return value;
    }
}
