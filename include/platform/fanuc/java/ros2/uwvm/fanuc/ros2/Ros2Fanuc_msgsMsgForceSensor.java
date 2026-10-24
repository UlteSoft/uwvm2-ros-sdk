/**
 * @file Ros2Fanuc_msgsMsgForceSensor.java
 * @brief Represent the complete original FANUC ROS 2 canonical value catalog.
 * @details The caller owns every record and its finite dynamic backing storage. Codecs retain all
 * fields, original constants and native defaults; field units and frames follow the retained
 * definitions. Malformed or out-of-bound wire values are rejected. These are guest values rather than
 * native ROS objects; importing them grants no transport alias.
 */
package uwvm.fanuc.ros2;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 2 fanuc_msgs/msg/ForceSensor value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros2Fanuc_msgsMsgForceSensor
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 28;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 28;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_06c99b43d7347646179850f3ba79192da7ce71296667d93d88659efbc1004032";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "fanuc_msgs/msg/ForceSensor";
    /** @brief Original native identity; empty native identity is unqualified. */
    public static final String NATIVE_IDENTITY = "";
    /** @brief Complete native field force_x; scalar, text bound 0. */
    public float field_force_x = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field force_y; scalar, text bound 0. */
    public float field_force_y = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field force_z; scalar, text bound 0. */
    public float field_force_z = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field moment_x; scalar, text bound 0. */
    public float field_moment_x = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field moment_y; scalar, text bound 0. */
    public float field_moment_y = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field moment_z; scalar, text bound 0. */
    public float field_moment_z = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field fs_type; scalar, text bound 0. */
    public long field_fs_type = 0L;

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros2Fanuc_msgsMsgForceSensor()
    {
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros2Fanuc_msgsMsgForceSensor value)
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
    public static Ros2Fanuc_msgsMsgForceSensor decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros2Fanuc_msgsMsgForceSensor value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros2Fanuc_msgsMsgForceSensor value)
    {
        if(value == null)
        {
            throw new IllegalArgumentException("Null canonical record");
        }
        int start = wire.position();
        if(!Float.isFinite(value.field_force_x))
        {
            throw new IllegalArgumentException("Nonfinite force_x");
        }
        wire.f32(value.field_force_x);
        if(!Float.isFinite(value.field_force_y))
        {
            throw new IllegalArgumentException("Nonfinite force_y");
        }
        wire.f32(value.field_force_y);
        if(!Float.isFinite(value.field_force_z))
        {
            throw new IllegalArgumentException("Nonfinite force_z");
        }
        wire.f32(value.field_force_z);
        if(!Float.isFinite(value.field_moment_x))
        {
            throw new IllegalArgumentException("Nonfinite moment_x");
        }
        wire.f32(value.field_moment_x);
        if(!Float.isFinite(value.field_moment_y))
        {
            throw new IllegalArgumentException("Nonfinite moment_y");
        }
        wire.f32(value.field_moment_y);
        if(!Float.isFinite(value.field_moment_z))
        {
            throw new IllegalArgumentException("Nonfinite moment_z");
        }
        wire.f32(value.field_moment_z);
        wire.u32(value.field_fs_type);
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
    public static Ros2Fanuc_msgsMsgForceSensor readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros2Fanuc_msgsMsgForceSensor value = new Ros2Fanuc_msgsMsgForceSensor();
        value.field_force_x = wire.f32();
        if(!Float.isFinite(value.field_force_x))
        {
            throw new IllegalArgumentException("Nonfinite force_x");
        }
        value.field_force_y = wire.f32();
        if(!Float.isFinite(value.field_force_y))
        {
            throw new IllegalArgumentException("Nonfinite force_y");
        }
        value.field_force_z = wire.f32();
        if(!Float.isFinite(value.field_force_z))
        {
            throw new IllegalArgumentException("Nonfinite force_z");
        }
        value.field_moment_x = wire.f32();
        if(!Float.isFinite(value.field_moment_x))
        {
            throw new IllegalArgumentException("Nonfinite moment_x");
        }
        value.field_moment_y = wire.f32();
        if(!Float.isFinite(value.field_moment_y))
        {
            throw new IllegalArgumentException("Nonfinite moment_y");
        }
        value.field_moment_z = wire.f32();
        if(!Float.isFinite(value.field_moment_z))
        {
            throw new IllegalArgumentException("Nonfinite moment_z");
        }
        value.field_fs_type = wire.u32();
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
        return value;
    }
}
