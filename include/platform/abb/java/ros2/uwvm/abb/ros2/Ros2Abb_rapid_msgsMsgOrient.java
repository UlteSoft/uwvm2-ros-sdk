/**
 * @file Ros2Abb_rapid_msgsMsgOrient.java
 * @brief Represent the complete original ABB ROS 2 canonical value catalog.
 * @details The caller owns every record and its finite dynamic backing storage. Codecs retain all
 * fields, original constants and native defaults; field units and frames follow the retained
 * definitions. Malformed or out-of-bound wire values are rejected. These are guest values rather than
 * native ROS objects; importing them grants no transport alias.
 */
package uwvm.abb.ros2;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 2 abb_rapid_msgs/msg/Orient value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros2Abb_rapid_msgsMsgOrient
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 16;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 16;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_821d887b88298422f9466aaf3926db580f878e964055fbd72226b7f76f2f536e";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "abb_rapid_msgs/msg/Orient";
    /** @brief Original native identity; empty native identity is unqualified. */
    public static final String NATIVE_IDENTITY = "";
    /** @brief Complete native field q1; scalar, text bound 0. */
    public float field_q1 = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field q2; scalar, text bound 0. */
    public float field_q2 = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field q3; scalar, text bound 0. */
    public float field_q3 = Float.intBitsToFloat(0x00000000);
    /** @brief Complete native field q4; scalar, text bound 0. */
    public float field_q4 = Float.intBitsToFloat(0x00000000);

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros2Abb_rapid_msgsMsgOrient()
    {
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros2Abb_rapid_msgsMsgOrient value)
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
    public static Ros2Abb_rapid_msgsMsgOrient decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros2Abb_rapid_msgsMsgOrient value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros2Abb_rapid_msgsMsgOrient value)
    {
        if(value == null)
        {
            throw new IllegalArgumentException("Null canonical record");
        }
        int start = wire.position();
        if(!Float.isFinite(value.field_q1))
        {
            throw new IllegalArgumentException("Nonfinite q1");
        }
        wire.f32(value.field_q1);
        if(!Float.isFinite(value.field_q2))
        {
            throw new IllegalArgumentException("Nonfinite q2");
        }
        wire.f32(value.field_q2);
        if(!Float.isFinite(value.field_q3))
        {
            throw new IllegalArgumentException("Nonfinite q3");
        }
        wire.f32(value.field_q3);
        if(!Float.isFinite(value.field_q4))
        {
            throw new IllegalArgumentException("Nonfinite q4");
        }
        wire.f32(value.field_q4);
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
    public static Ros2Abb_rapid_msgsMsgOrient readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros2Abb_rapid_msgsMsgOrient value = new Ros2Abb_rapid_msgsMsgOrient();
        value.field_q1 = wire.f32();
        if(!Float.isFinite(value.field_q1))
        {
            throw new IllegalArgumentException("Nonfinite q1");
        }
        value.field_q2 = wire.f32();
        if(!Float.isFinite(value.field_q2))
        {
            throw new IllegalArgumentException("Nonfinite q2");
        }
        value.field_q3 = wire.f32();
        if(!Float.isFinite(value.field_q3))
        {
            throw new IllegalArgumentException("Nonfinite q3");
        }
        value.field_q4 = wire.f32();
        if(!Float.isFinite(value.field_q4))
        {
            throw new IllegalArgumentException("Nonfinite q4");
        }
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
        return value;
    }
}
