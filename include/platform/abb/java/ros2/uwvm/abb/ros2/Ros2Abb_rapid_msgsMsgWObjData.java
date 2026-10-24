/**
 * @file Ros2Abb_rapid_msgsMsgWObjData.java
 * @brief Represent the complete original ABB ROS 2 canonical value catalog.
 * @details The caller owns every record and its finite dynamic backing storage. Codecs retain all
 * fields, original constants and native defaults; field units and frames follow the retained
 * definitions. Malformed or out-of-bound wire values are rejected. These are guest values rather than
 * native ROS objects; importing them grants no transport alias.
 */
package uwvm.abb.ros2;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 2 abb_rapid_msgs/msg/WObjData value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros2Abb_rapid_msgsMsgWObjData
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 574;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 62;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_b36f0448512fab6028431d19b39a8ae31b7b81b2615ffc8311139f63b5d8e7cd";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "abb_rapid_msgs/msg/WObjData";
    /** @brief Original native identity; empty native identity is unqualified. */
    public static final String NATIVE_IDENTITY = "";
    /** @brief Complete native field robhold; scalar, text bound 0. */
    public boolean field_robhold = false;
    /** @brief Complete native field ufprog; scalar, text bound 0. */
    public boolean field_ufprog = false;
    /** @brief Complete native field ufmec; scalar, text bound 512. */
    public String field_ufmec = "";
    /** @brief Complete native field uframe; scalar, text bound 0. */
    public Ros2Abb_rapid_msgsMsgPose field_uframe = new Ros2Abb_rapid_msgsMsgPose();
    /** @brief Complete native field oframe; scalar, text bound 0. */
    public Ros2Abb_rapid_msgsMsgPose field_oframe = new Ros2Abb_rapid_msgsMsgPose();

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros2Abb_rapid_msgsMsgWObjData()
    {
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros2Abb_rapid_msgsMsgWObjData value)
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
    public static Ros2Abb_rapid_msgsMsgWObjData decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros2Abb_rapid_msgsMsgWObjData value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros2Abb_rapid_msgsMsgWObjData value)
    {
        if(value == null)
        {
            throw new IllegalArgumentException("Null canonical record");
        }
        int start = wire.position();
        wire.bool(value.field_robhold);
        wire.bool(value.field_ufprog);
        wire.string(value.field_ufmec, 512);
        Ros2Abb_rapid_msgsMsgPose.writeFields(wire, value.field_uframe);
        Ros2Abb_rapid_msgsMsgPose.writeFields(wire, value.field_oframe);
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
    public static Ros2Abb_rapid_msgsMsgWObjData readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros2Abb_rapid_msgsMsgWObjData value = new Ros2Abb_rapid_msgsMsgWObjData();
        value.field_robhold = wire.bool();
        value.field_ufprog = wire.bool();
        value.field_ufmec = wire.string(512);
        value.field_uframe = Ros2Abb_rapid_msgsMsgPose.readFields(wire);
        value.field_oframe = Ros2Abb_rapid_msgsMsgPose.readFields(wire);
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
        return value;
    }
}
