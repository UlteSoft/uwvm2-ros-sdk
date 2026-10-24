/**
 * @file Ros2Abb_rapid_msgsMsgExtJoint.java
 * @brief Represent the complete original ABB ROS 2 canonical value catalog.
 * @details The caller owns every record and its finite dynamic backing storage. Codecs retain all
 * fields, original constants and native defaults; field units and frames follow the retained
 * definitions. Malformed or out-of-bound wire values are rejected. These are guest values rather than
 * native ROS objects; importing them grants no transport alias.
 */
package uwvm.abb.ros2;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 2 abb_rapid_msgs/msg/ExtJoint value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros2Abb_rapid_msgsMsgExtJoint
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 24;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 24;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_8b799c6bec9e4eab0900a633a93375a7792e49fde0bf302f6752115a001a4ae2";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "abb_rapid_msgs/msg/ExtJoint";
    /** @brief Original native identity; empty native identity is unqualified. */
    public static final String NATIVE_IDENTITY = "";
    /** @brief Complete native field eax_a; scalar, text bound 0. */
    public float field_eax_a = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field eax_b; scalar, text bound 0. */
    public float field_eax_b = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field eax_c; scalar, text bound 0. */
    public float field_eax_c = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field eax_d; scalar, text bound 0. */
    public float field_eax_d = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field eax_e; scalar, text bound 0. */
    public float field_eax_e = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field eax_f; scalar, text bound 0. */
    public float field_eax_f = Float.intBitsToFloat(0x00000000);

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros2Abb_rapid_msgsMsgExtJoint()
    {
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros2Abb_rapid_msgsMsgExtJoint value)
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
    public static Ros2Abb_rapid_msgsMsgExtJoint decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros2Abb_rapid_msgsMsgExtJoint value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros2Abb_rapid_msgsMsgExtJoint value)
    {
        if(value == null)
        {
            throw new IllegalArgumentException("Null canonical record");
        }
        int start = wire.position();
        if(!Float.isFinite(value.field_eax_a))
        {
            throw new IllegalArgumentException("Nonfinite eax_a");
        }
        wire.f32(value.field_eax_a);
        if(!Float.isFinite(value.field_eax_b))
        {
            throw new IllegalArgumentException("Nonfinite eax_b");
        }
        wire.f32(value.field_eax_b);
        if(!Float.isFinite(value.field_eax_c))
        {
            throw new IllegalArgumentException("Nonfinite eax_c");
        }
        wire.f32(value.field_eax_c);
        if(!Float.isFinite(value.field_eax_d))
        {
            throw new IllegalArgumentException("Nonfinite eax_d");
        }
        wire.f32(value.field_eax_d);
        if(!Float.isFinite(value.field_eax_e))
        {
            throw new IllegalArgumentException("Nonfinite eax_e");
        }
        wire.f32(value.field_eax_e);
        if(!Float.isFinite(value.field_eax_f))
        {
            throw new IllegalArgumentException("Nonfinite eax_f");
        }
        wire.f32(value.field_eax_f);
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
    public static Ros2Abb_rapid_msgsMsgExtJoint readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros2Abb_rapid_msgsMsgExtJoint value = new Ros2Abb_rapid_msgsMsgExtJoint();
        value.field_eax_a = wire.f32();
        if(!Float.isFinite(value.field_eax_a))
        {
            throw new IllegalArgumentException("Nonfinite eax_a");
        }
        value.field_eax_b = wire.f32();
        if(!Float.isFinite(value.field_eax_b))
        {
            throw new IllegalArgumentException("Nonfinite eax_b");
        }
        value.field_eax_c = wire.f32();
        if(!Float.isFinite(value.field_eax_c))
        {
            throw new IllegalArgumentException("Nonfinite eax_c");
        }
        value.field_eax_d = wire.f32();
        if(!Float.isFinite(value.field_eax_d))
        {
            throw new IllegalArgumentException("Nonfinite eax_d");
        }
        value.field_eax_e = wire.f32();
        if(!Float.isFinite(value.field_eax_e))
        {
            throw new IllegalArgumentException("Nonfinite eax_e");
        }
        value.field_eax_f = wire.f32();
        if(!Float.isFinite(value.field_eax_f))
        {
            throw new IllegalArgumentException("Nonfinite eax_f");
        }
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
        return value;
    }
}
