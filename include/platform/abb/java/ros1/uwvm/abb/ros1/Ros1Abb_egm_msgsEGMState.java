/**
 * @file Ros1Abb_egm_msgsEGMState.java
 * @brief Represent the complete original ABB ROS 1 canonical value catalog.
 * @details The caller owns every record and its finite dynamic backing storage. Codecs retain all
 * fields, original constants and native defaults; field units and frames follow the retained
 * definitions. Malformed or out-of-bound wire values are rejected. These are guest values rather than
 * native ROS objects; importing them grants no transport alias.
 */
package uwvm.abb.ros1;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 1 abb_egm_msgs/EGMState value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros1Abb_egm_msgsEGMState
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 1380;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 20;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_f7fe1d3924dc4e497c58aab27da69cfa6ab1a11f64b970b42e2d040a1312c4d8";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "abb_egm_msgs/EGMState";
    /** @brief Original native identity; empty native identity is unqualified. */
    public static final String NATIVE_IDENTITY = "";
    /** @brief Complete native field header; scalar, text bound 0. */
    public Ros1Std_msgsHeader field_header = new Ros1Std_msgsHeader();
    /** @brief Complete native field egm_channels; sequence capacity 16, text bound 0. */
    public Ros1Abb_egm_msgsEGMChannelState[] field_egm_channels = new Ros1Abb_egm_msgsEGMChannelState[0];

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros1Abb_egm_msgsEGMState()
    {
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros1Abb_egm_msgsEGMState value)
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
    public static Ros1Abb_egm_msgsEGMState decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros1Abb_egm_msgsEGMState value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros1Abb_egm_msgsEGMState value)
    {
        if(value == null)
        {
            throw new IllegalArgumentException("Null canonical record");
        }
        int start = wire.position();
        Ros1Std_msgsHeader.writeFields(wire, value.field_header);
        if(value.field_egm_channels == null || value.field_egm_channels.length > 16)
        {
            throw new IllegalArgumentException("Invalid egm_channels extent");
        }
        wire.u32((long)value.field_egm_channels.length);
        for(int index = 0; index < value.field_egm_channels.length; index++)
        {
            Ros1Abb_egm_msgsEGMChannelState.writeFields(wire, value.field_egm_channels[index]);
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
    public static Ros1Abb_egm_msgsEGMState readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros1Abb_egm_msgsEGMState value = new Ros1Abb_egm_msgsEGMState();
        value.field_header = Ros1Std_msgsHeader.readFields(wire);
        value.field_egm_channels = new Ros1Abb_egm_msgsEGMChannelState[wire.count(16)];
        for(int index = 0; index < value.field_egm_channels.length; index++)
        {
            value.field_egm_channels[index] = Ros1Abb_egm_msgsEGMChannelState.readFields(wire);
        }
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
        return value;
    }
}
