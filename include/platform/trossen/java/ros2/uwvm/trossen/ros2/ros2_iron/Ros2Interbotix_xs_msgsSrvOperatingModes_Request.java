package uwvm.trossen.ros2.ros2_iron;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 2 interbotix_xs_msgs/srv/OperatingModes_Request value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros2Interbotix_xs_msgsSrvOperatingModes_Request
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 536;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 24;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_79c4fb8d937d09f9bd7d97774174db4a647070f564f4496c9e77d117cba27f15";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "interbotix_xs_msgs/srv/OperatingModes_Request";
    /** @brief Original native identity; empty native identity is unqualified. */
    public static final String NATIVE_IDENTITY = "";
    /** @brief Complete native field cmd_type; scalar, text bound 128. */
    public String field_cmd_type = "";
    /** @brief Complete native field name; scalar, text bound 128. */
    public String field_name = "";
    /** @brief Complete native field mode; scalar, text bound 128. */
    public String field_mode = "";
    /** @brief Complete native field profile_type; scalar, text bound 128. */
    public String field_profile_type = "";
    /** @brief Complete native field profile_velocity; scalar, text bound 0. */
    public int field_profile_velocity = 0;
    /** @brief Complete native field profile_acceleration; scalar, text bound 0. */
    public int field_profile_acceleration = 0;

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros2Interbotix_xs_msgsSrvOperatingModes_Request()
    {
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros2Interbotix_xs_msgsSrvOperatingModes_Request value)
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
    public static Ros2Interbotix_xs_msgsSrvOperatingModes_Request decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros2Interbotix_xs_msgsSrvOperatingModes_Request value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros2Interbotix_xs_msgsSrvOperatingModes_Request value)
    {
        if(value == null)
        {
            throw new IllegalArgumentException("Null canonical record");
        }
        int start = wire.position();
        wire.string(value.field_cmd_type, 128);
        wire.string(value.field_name, 128);
        wire.string(value.field_mode, 128);
        wire.string(value.field_profile_type, 128);
        wire.i32(value.field_profile_velocity);
        wire.i32(value.field_profile_acceleration);
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
    public static Ros2Interbotix_xs_msgsSrvOperatingModes_Request readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros2Interbotix_xs_msgsSrvOperatingModes_Request value = new Ros2Interbotix_xs_msgsSrvOperatingModes_Request();
        value.field_cmd_type = wire.string(128);
        value.field_name = wire.string(128);
        value.field_mode = wire.string(128);
        value.field_profile_type = wire.string(128);
        value.field_profile_velocity = wire.i32();
        value.field_profile_acceleration = wire.i32();
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
        return value;
    }
}
