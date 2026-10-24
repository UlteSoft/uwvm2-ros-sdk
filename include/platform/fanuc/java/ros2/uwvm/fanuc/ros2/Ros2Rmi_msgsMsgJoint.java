/**
 * @file Ros2Rmi_msgsMsgJoint.java
 * @brief Represent the complete original FANUC ROS 2 canonical value catalog.
 * @details The caller owns every record and its finite dynamic backing storage. Codecs retain all
 * fields, original constants and native defaults; field units and frames follow the retained
 * definitions. Malformed or out-of-bound wire values are rejected. These are guest values rather than
 * native ROS objects; importing them grants no transport alias.
 */
package uwvm.fanuc.ros2;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 2 rmi_msgs/msg/Joint value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros2Rmi_msgsMsgJoint
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 36;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 36;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_0ba90adf6cc287bc306fd2a77c52c2e4d62731cfac37bb2cc116ee846249a42d";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "rmi_msgs/msg/Joint";
    /** @brief Original native identity; empty native identity is unqualified. */
    public static final String NATIVE_IDENTITY = "";
    /** @brief Complete native field positions; array capacity 9, text bound 0. */
    public float[] field_positions = new float[9];

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros2Rmi_msgsMsgJoint()
    {
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros2Rmi_msgsMsgJoint value)
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
    public static Ros2Rmi_msgsMsgJoint decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros2Rmi_msgsMsgJoint value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros2Rmi_msgsMsgJoint value)
    {
        if(value == null)
        {
            throw new IllegalArgumentException("Null canonical record");
        }
        int start = wire.position();
        if(value.field_positions == null || value.field_positions.length != 9)
        {
            throw new IllegalArgumentException("Invalid positions extent");
        }
        for(int index = 0; index < value.field_positions.length; index++)
        {
            if(!Float.isFinite(value.field_positions[index]))
            {
                throw new IllegalArgumentException("Nonfinite positions");
            }
            wire.f32(value.field_positions[index]);
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
    public static Ros2Rmi_msgsMsgJoint readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros2Rmi_msgsMsgJoint value = new Ros2Rmi_msgsMsgJoint();
        value.field_positions = new float[9];
        for(int index = 0; index < value.field_positions.length; index++)
        {
            value.field_positions[index] = wire.f32();
            if(!Float.isFinite(value.field_positions[index]))
            {
                throw new IllegalArgumentException("Nonfinite positions");
            }
        }
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
        return value;
    }
}
