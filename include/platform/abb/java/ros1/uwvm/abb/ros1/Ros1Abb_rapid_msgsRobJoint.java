/**
 * @file Ros1Abb_rapid_msgsRobJoint.java
 * @brief Represent the complete original ABB ROS 1 canonical value catalog.
 * @details The caller owns every record and its finite dynamic backing storage. Codecs retain all
 * fields, original constants and native defaults; field units and frames follow the retained
 * definitions. Malformed or out-of-bound wire values are rejected. These are guest values rather than
 * native ROS objects; importing them grants no transport alias.
 */
package uwvm.abb.ros1;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 1 abb_rapid_msgs/RobJoint value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros1Abb_rapid_msgsRobJoint
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 24;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 24;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_5d45bc0efae8c4f5b26e4043fe537e163c4cc4c6458d1eac9be429c37aaf82f0";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "abb_rapid_msgs/RobJoint";
    /** @brief Original native identity; empty native identity is unqualified. */
    public static final String NATIVE_IDENTITY = "";
    /** @brief Complete native field rax_1; scalar, text bound 0. */
    public float field_rax_1 = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field rax_2; scalar, text bound 0. */
    public float field_rax_2 = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field rax_3; scalar, text bound 0. */
    public float field_rax_3 = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field rax_4; scalar, text bound 0. */
    public float field_rax_4 = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field rax_5; scalar, text bound 0. */
    public float field_rax_5 = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field rax_6; scalar, text bound 0. */
    public float field_rax_6 = Float.intBitsToFloat(0x00000000);

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros1Abb_rapid_msgsRobJoint()
    {
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros1Abb_rapid_msgsRobJoint value)
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
    public static Ros1Abb_rapid_msgsRobJoint decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros1Abb_rapid_msgsRobJoint value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros1Abb_rapid_msgsRobJoint value)
    {
        if(value == null)
        {
            throw new IllegalArgumentException("Null canonical record");
        }
        int start = wire.position();
        if(!Float.isFinite(value.field_rax_1))
        {
            throw new IllegalArgumentException("Nonfinite rax_1");
        }
        wire.f32(value.field_rax_1);
        if(!Float.isFinite(value.field_rax_2))
        {
            throw new IllegalArgumentException("Nonfinite rax_2");
        }
        wire.f32(value.field_rax_2);
        if(!Float.isFinite(value.field_rax_3))
        {
            throw new IllegalArgumentException("Nonfinite rax_3");
        }
        wire.f32(value.field_rax_3);
        if(!Float.isFinite(value.field_rax_4))
        {
            throw new IllegalArgumentException("Nonfinite rax_4");
        }
        wire.f32(value.field_rax_4);
        if(!Float.isFinite(value.field_rax_5))
        {
            throw new IllegalArgumentException("Nonfinite rax_5");
        }
        wire.f32(value.field_rax_5);
        if(!Float.isFinite(value.field_rax_6))
        {
            throw new IllegalArgumentException("Nonfinite rax_6");
        }
        wire.f32(value.field_rax_6);
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
    public static Ros1Abb_rapid_msgsRobJoint readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros1Abb_rapid_msgsRobJoint value = new Ros1Abb_rapid_msgsRobJoint();
        value.field_rax_1 = wire.f32();
        if(!Float.isFinite(value.field_rax_1))
        {
            throw new IllegalArgumentException("Nonfinite rax_1");
        }
        value.field_rax_2 = wire.f32();
        if(!Float.isFinite(value.field_rax_2))
        {
            throw new IllegalArgumentException("Nonfinite rax_2");
        }
        value.field_rax_3 = wire.f32();
        if(!Float.isFinite(value.field_rax_3))
        {
            throw new IllegalArgumentException("Nonfinite rax_3");
        }
        value.field_rax_4 = wire.f32();
        if(!Float.isFinite(value.field_rax_4))
        {
            throw new IllegalArgumentException("Nonfinite rax_4");
        }
        value.field_rax_5 = wire.f32();
        if(!Float.isFinite(value.field_rax_5))
        {
            throw new IllegalArgumentException("Nonfinite rax_5");
        }
        value.field_rax_6 = wire.f32();
        if(!Float.isFinite(value.field_rax_6))
        {
            throw new IllegalArgumentException("Nonfinite rax_6");
        }
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
        return value;
    }
}
