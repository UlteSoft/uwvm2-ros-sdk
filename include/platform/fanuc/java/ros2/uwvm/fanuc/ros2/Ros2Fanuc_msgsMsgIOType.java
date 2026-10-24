/**
 * @file Ros2Fanuc_msgsMsgIOType.java
 * @brief Represent the complete original FANUC ROS 2 canonical value catalog.
 * @details The caller owns every record and its finite dynamic backing storage. Codecs retain all
 * fields, original constants and native defaults; field units and frames follow the retained
 * definitions. Malformed or out-of-bound wire values are rejected. These are guest values rather than
 * native ROS objects; importing them grants no transport alias.
 */
package uwvm.fanuc.ros2;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 2 fanuc_msgs/msg/IOType value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros2Fanuc_msgsMsgIOType
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 68;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 4;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_1815aa6b1bcab1efe21de0e31570ca650553b5c70f0793301f82c0ca7934c586";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "fanuc_msgs/msg/IOType";
    /** @brief Original native identity; empty native identity is unqualified. */
    public static final String NATIVE_IDENTITY = "";
    /** @brief Original source constant AI; consumes no instance wire bytes. */
    public static final String CONST_AI = "AI";
    /** @brief Original source constant AO; consumes no instance wire bytes. */
    public static final String CONST_AO = "AO";
    /** @brief Original source constant DI; consumes no instance wire bytes. */
    public static final String CONST_DI = "DI";
    /** @brief Original source constant DO; consumes no instance wire bytes. */
    public static final String CONST_DO = "DO";
    /** @brief Original source constant RI; consumes no instance wire bytes. */
    public static final String CONST_RI = "RI";
    /** @brief Original source constant RO; consumes no instance wire bytes. */
    public static final String CONST_RO = "RO";
    /** @brief Original source constant SI; consumes no instance wire bytes. */
    public static final String CONST_SI = "SI";
    /** @brief Original source constant SO; consumes no instance wire bytes. */
    public static final String CONST_SO = "SO";
    /** @brief Original source constant WI; consumes no instance wire bytes. */
    public static final String CONST_WI = "WI";
    /** @brief Original source constant WO; consumes no instance wire bytes. */
    public static final String CONST_WO = "WO";
    /** @brief Original source constant UI; consumes no instance wire bytes. */
    public static final String CONST_UI = "UI";
    /** @brief Original source constant UO; consumes no instance wire bytes. */
    public static final String CONST_UO = "UO";
    /** @brief Original source constant WSI; consumes no instance wire bytes. */
    public static final String CONST_WSI = "WSI";
    /** @brief Original source constant WSO; consumes no instance wire bytes. */
    public static final String CONST_WSO = "WSO";
    /** @brief Original source constant F; consumes no instance wire bytes. */
    public static final String CONST_F = "F";
    /** @brief Original source constant M; consumes no instance wire bytes. */
    public static final String CONST_M = "M";
    /** @brief Original source constant GI; consumes no instance wire bytes. */
    public static final String CONST_GI = "GI";
    /** @brief Original source constant GO; consumes no instance wire bytes. */
    public static final String CONST_GO = "GO";
    /** @brief Complete native field type; scalar, text bound 64. */
    public String field_type = "";

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros2Fanuc_msgsMsgIOType()
    {
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros2Fanuc_msgsMsgIOType value)
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
    public static Ros2Fanuc_msgsMsgIOType decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros2Fanuc_msgsMsgIOType value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros2Fanuc_msgsMsgIOType value)
    {
        if(value == null)
        {
            throw new IllegalArgumentException("Null canonical record");
        }
        int start = wire.position();
        wire.string(value.field_type, 64);
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
    public static Ros2Fanuc_msgsMsgIOType readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros2Fanuc_msgsMsgIOType value = new Ros2Fanuc_msgsMsgIOType();
        value.field_type = wire.string(64);
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
        return value;
    }
}
