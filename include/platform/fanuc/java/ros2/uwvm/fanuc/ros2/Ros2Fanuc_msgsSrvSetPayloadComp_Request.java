/**
 * @file Ros2Fanuc_msgsSrvSetPayloadComp_Request.java
 * @brief Represent the complete original FANUC ROS 2 canonical value catalog.
 * @details The caller owns every record and its finite dynamic backing storage. Codecs retain all
 * fields, original constants and native defaults; field units and frames follow the retained
 * definitions. Malformed or out-of-bound wire values are rejected. These are guest values rather than
 * native ROS objects; importing them grants no transport alias.
 */
package uwvm.fanuc.ros2;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 2 fanuc_msgs/srv/SetPayloadComp_Request value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros2Fanuc_msgsSrvSetPayloadComp_Request
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 30;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 30;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_92c495d71657249e15c172e850aa91869929a25817437567778df1b01d9037a8";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "fanuc_msgs/srv/SetPayloadComp_Request";
    /** @brief Original native identity; empty native identity is unqualified. */
    public static final String NATIVE_IDENTITY = "";
    /** @brief Complete native field payload_schedule_id; scalar, text bound 0. */
    public int field_payload_schedule_id = 0;
    /** @brief Complete native field mass; scalar, text bound 0. */
    public float field_mass = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field cg_x; scalar, text bound 0. */
    public float field_cg_x = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field cg_y; scalar, text bound 0. */
    public float field_cg_y = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field cg_z; scalar, text bound 0. */
    public float field_cg_z = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field in_x; scalar, text bound 0. */
    public float field_in_x = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field in_y; scalar, text bound 0. */
    public float field_in_y = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field in_z; scalar, text bound 0. */
    public float field_in_z = Float.intBitsToFloat(0x00000000);

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros2Fanuc_msgsSrvSetPayloadComp_Request()
    {
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros2Fanuc_msgsSrvSetPayloadComp_Request value)
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
    public static Ros2Fanuc_msgsSrvSetPayloadComp_Request decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros2Fanuc_msgsSrvSetPayloadComp_Request value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros2Fanuc_msgsSrvSetPayloadComp_Request value)
    {
        if(value == null)
        {
            throw new IllegalArgumentException("Null canonical record");
        }
        int start = wire.position();
        wire.u16(value.field_payload_schedule_id);
        if(!Float.isFinite(value.field_mass))
        {
            throw new IllegalArgumentException("Nonfinite mass");
        }
        wire.f32(value.field_mass);
        if(!Float.isFinite(value.field_cg_x))
        {
            throw new IllegalArgumentException("Nonfinite cg_x");
        }
        wire.f32(value.field_cg_x);
        if(!Float.isFinite(value.field_cg_y))
        {
            throw new IllegalArgumentException("Nonfinite cg_y");
        }
        wire.f32(value.field_cg_y);
        if(!Float.isFinite(value.field_cg_z))
        {
            throw new IllegalArgumentException("Nonfinite cg_z");
        }
        wire.f32(value.field_cg_z);
        if(!Float.isFinite(value.field_in_x))
        {
            throw new IllegalArgumentException("Nonfinite in_x");
        }
        wire.f32(value.field_in_x);
        if(!Float.isFinite(value.field_in_y))
        {
            throw new IllegalArgumentException("Nonfinite in_y");
        }
        wire.f32(value.field_in_y);
        if(!Float.isFinite(value.field_in_z))
        {
            throw new IllegalArgumentException("Nonfinite in_z");
        }
        wire.f32(value.field_in_z);
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
    public static Ros2Fanuc_msgsSrvSetPayloadComp_Request readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros2Fanuc_msgsSrvSetPayloadComp_Request value = new Ros2Fanuc_msgsSrvSetPayloadComp_Request();
        value.field_payload_schedule_id = wire.u16();
        value.field_mass = wire.f32();
        if(!Float.isFinite(value.field_mass))
        {
            throw new IllegalArgumentException("Nonfinite mass");
        }
        value.field_cg_x = wire.f32();
        if(!Float.isFinite(value.field_cg_x))
        {
            throw new IllegalArgumentException("Nonfinite cg_x");
        }
        value.field_cg_y = wire.f32();
        if(!Float.isFinite(value.field_cg_y))
        {
            throw new IllegalArgumentException("Nonfinite cg_y");
        }
        value.field_cg_z = wire.f32();
        if(!Float.isFinite(value.field_cg_z))
        {
            throw new IllegalArgumentException("Nonfinite cg_z");
        }
        value.field_in_x = wire.f32();
        if(!Float.isFinite(value.field_in_x))
        {
            throw new IllegalArgumentException("Nonfinite in_x");
        }
        value.field_in_y = wire.f32();
        if(!Float.isFinite(value.field_in_y))
        {
            throw new IllegalArgumentException("Nonfinite in_y");
        }
        value.field_in_z = wire.f32();
        if(!Float.isFinite(value.field_in_z))
        {
            throw new IllegalArgumentException("Nonfinite in_z");
        }
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
        return value;
    }
}
