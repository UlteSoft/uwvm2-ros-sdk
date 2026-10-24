/**
 * @file Ros2Abb_rapid_msgsMsgRobTarget.java
 * @brief Represent the complete original ABB ROS 2 canonical value catalog.
 * @details The caller owns every record and its finite dynamic backing storage. Codecs retain all
 * fields, original constants and native defaults; field units and frames follow the retained
 * definitions. Malformed or out-of-bound wire values are rejected. These are guest values rather than
 * native ROS objects; importing them grants no transport alias.
 */
package uwvm.abb.ros2;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 2 abb_rapid_msgs/msg/RobTarget value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros2Abb_rapid_msgsMsgRobTarget
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 68;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 68;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_8decb56e8faf0a6a954af974adfea5c500aea8392e6a778ae7394174323489d8";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "abb_rapid_msgs/msg/RobTarget";
    /** @brief Original native identity; empty native identity is unqualified. */
    public static final String NATIVE_IDENTITY = "";
    /** @brief Complete native field trans; scalar, text bound 0. */
    public Ros2Abb_rapid_msgsMsgPos field_trans = new Ros2Abb_rapid_msgsMsgPos();
    /** @brief Complete native field rot; scalar, text bound 0. */
    public Ros2Abb_rapid_msgsMsgOrient field_rot = new Ros2Abb_rapid_msgsMsgOrient();
    /** @brief Complete native field robconf; scalar, text bound 0. */
    public Ros2Abb_rapid_msgsMsgConfData field_robconf = new Ros2Abb_rapid_msgsMsgConfData();
    /** @brief Complete native field extax; scalar, text bound 0. */
    public Ros2Abb_rapid_msgsMsgExtJoint field_extax = new Ros2Abb_rapid_msgsMsgExtJoint();

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros2Abb_rapid_msgsMsgRobTarget()
    {
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros2Abb_rapid_msgsMsgRobTarget value)
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
    public static Ros2Abb_rapid_msgsMsgRobTarget decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros2Abb_rapid_msgsMsgRobTarget value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros2Abb_rapid_msgsMsgRobTarget value)
    {
        if(value == null)
        {
            throw new IllegalArgumentException("Null canonical record");
        }
        int start = wire.position();
        Ros2Abb_rapid_msgsMsgPos.writeFields(wire, value.field_trans);
        Ros2Abb_rapid_msgsMsgOrient.writeFields(wire, value.field_rot);
        Ros2Abb_rapid_msgsMsgConfData.writeFields(wire, value.field_robconf);
        Ros2Abb_rapid_msgsMsgExtJoint.writeFields(wire, value.field_extax);
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
    public static Ros2Abb_rapid_msgsMsgRobTarget readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros2Abb_rapid_msgsMsgRobTarget value = new Ros2Abb_rapid_msgsMsgRobTarget();
        value.field_trans = Ros2Abb_rapid_msgsMsgPos.readFields(wire);
        value.field_rot = Ros2Abb_rapid_msgsMsgOrient.readFields(wire);
        value.field_robconf = Ros2Abb_rapid_msgsMsgConfData.readFields(wire);
        value.field_extax = Ros2Abb_rapid_msgsMsgExtJoint.readFields(wire);
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
        return value;
    }
}
