package uwvm.pal.ros1.ros1_humble_devel;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 1 pal_navigation_msgs/ServiceStatus value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros1Pal_navigation_msgsServiceStatus
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 146;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 18;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_c08ab79758b14d1722aaaf425096153a299db64bf4efa8f154d08f20b0d68622";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "pal_navigation_msgs/ServiceStatus";
    /** @brief Original native identity; empty native identity is unqualified. */
    public static final String NATIVE_IDENTITY = "";
    /** @brief Complete native field serviceName; scalar, text bound 128. */
    public String field_serviceName = "";
    /** @brief Complete native field is_running; scalar, text bound 0. */
    public boolean field_is_running = false;
    /** @brief Complete native field update_frequency; scalar, text bound 0. */
    public float field_update_frequency = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field latest_run_time; scalar, text bound 0. */
    public Ros1Time field_latest_run_time = new Ros1Time();
    /** @brief Complete native field status; scalar, text bound 0. */
    public boolean field_status = false;

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros1Pal_navigation_msgsServiceStatus()
    {
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros1Pal_navigation_msgsServiceStatus value)
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
    public static Ros1Pal_navigation_msgsServiceStatus decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros1Pal_navigation_msgsServiceStatus value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros1Pal_navigation_msgsServiceStatus value)
    {
        if(value == null)
        {
            throw new IllegalArgumentException("Null canonical record");
        }
        int start = wire.position();
        wire.string(value.field_serviceName, 128);
        wire.bool(value.field_is_running);
        if(!Float.isFinite(value.field_update_frequency))
        {
            throw new IllegalArgumentException("Nonfinite update_frequency");
        }
        wire.f32(value.field_update_frequency);
        Ros1Time.writeFields(wire, value.field_latest_run_time);
        wire.bool(value.field_status);
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
    public static Ros1Pal_navigation_msgsServiceStatus readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros1Pal_navigation_msgsServiceStatus value = new Ros1Pal_navigation_msgsServiceStatus();
        value.field_serviceName = wire.string(128);
        value.field_is_running = wire.bool();
        value.field_update_frequency = wire.f32();
        if(!Float.isFinite(value.field_update_frequency))
        {
            throw new IllegalArgumentException("Nonfinite update_frequency");
        }
        value.field_latest_run_time = Ros1Time.readFields(wire);
        value.field_status = wire.bool();
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
        return value;
    }
}
