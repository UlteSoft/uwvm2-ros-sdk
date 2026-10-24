/**
 * @file Ros1Abb_rapid_msgsRobTarget.java
 * @brief Represent the complete original ABB ROS 1 canonical value catalog.
 * @details The caller owns every record and its finite dynamic backing storage. Codecs retain all
 * fields, original constants and native defaults; field units and frames follow the retained
 * definitions. Malformed or out-of-bound wire values are rejected. These are guest values rather than
 * native ROS objects; importing them grants no transport alias.
 */
package uwvm.abb.ros1;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 1 abb_rapid_msgs/RobTarget value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros1Abb_rapid_msgsRobTarget
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 68;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 68;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_0abb3aee8b1303ccf9419f2774829d1231de3ac033e4b644d585f195972f09ce";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "abb_rapid_msgs/RobTarget";
    /** @brief Original native identity; empty native identity is unqualified. */
    public static final String NATIVE_IDENTITY = "";
    /** @brief Complete native field trans; scalar, text bound 0. */
    public Ros1Abb_rapid_msgsPos field_trans = new Ros1Abb_rapid_msgsPos();
    /** @brief Complete native field rot; scalar, text bound 0. */
    public Ros1Abb_rapid_msgsOrient field_rot = new Ros1Abb_rapid_msgsOrient();
    /** @brief Complete native field robconf; scalar, text bound 0. */
    public Ros1Abb_rapid_msgsConfData field_robconf = new Ros1Abb_rapid_msgsConfData();
    /** @brief Complete native field extax; scalar, text bound 0. */
    public Ros1Abb_rapid_msgsExtJoint field_extax = new Ros1Abb_rapid_msgsExtJoint();

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros1Abb_rapid_msgsRobTarget()
    {
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros1Abb_rapid_msgsRobTarget value)
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
    public static Ros1Abb_rapid_msgsRobTarget decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros1Abb_rapid_msgsRobTarget value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros1Abb_rapid_msgsRobTarget value)
    {
        if(value == null)
        {
            throw new IllegalArgumentException("Null canonical record");
        }
        int start = wire.position();
        Ros1Abb_rapid_msgsPos.writeFields(wire, value.field_trans);
        Ros1Abb_rapid_msgsOrient.writeFields(wire, value.field_rot);
        Ros1Abb_rapid_msgsConfData.writeFields(wire, value.field_robconf);
        Ros1Abb_rapid_msgsExtJoint.writeFields(wire, value.field_extax);
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
    public static Ros1Abb_rapid_msgsRobTarget readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros1Abb_rapid_msgsRobTarget value = new Ros1Abb_rapid_msgsRobTarget();
        value.field_trans = Ros1Abb_rapid_msgsPos.readFields(wire);
        value.field_rot = Ros1Abb_rapid_msgsOrient.readFields(wire);
        value.field_robconf = Ros1Abb_rapid_msgsConfData.readFields(wire);
        value.field_extax = Ros1Abb_rapid_msgsExtJoint.readFields(wire);
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
        return value;
    }
}
