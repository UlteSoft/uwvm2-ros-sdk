/**
 * @file Ros2Rmi_msgsSrvAddMotionInstruction_Request.java
 * @brief Represent the complete original FANUC ROS 2 canonical value catalog.
 * @details The caller owns every record and its finite dynamic backing storage. Codecs retain all
 * fields, original constants and native defaults; field units and frames follow the retained
 * definitions. Malformed or out-of-bound wire values are rejected. These are guest values rather than
 * native ROS objects; importing them grants no transport alias.
 */
package uwvm.fanuc.ros2;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 2 rmi_msgs/srv/AddMotionInstruction_Request value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros2Rmi_msgsSrvAddMotionInstruction_Request
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 4014;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 238;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_3f22c49cb2d32e6a8f3954f3d3cbf0021c87e0363b1f2ded4ac20a97a5b59391";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "rmi_msgs/srv/AddMotionInstruction_Request";
    /** @brief Original native identity; empty native identity is unqualified. */
    public static final String NATIVE_IDENTITY = "";
    /** @brief Complete native field motion_type; scalar, text bound 0. */
    public Ros2Rmi_msgsMsgMotionType field_motion_type = new Ros2Rmi_msgsMsgMotionType();
    /** @brief Complete native field incremental; scalar, text bound 0. */
    public boolean field_incremental = false;
    /** @brief Complete native field representation; scalar, text bound 0. */
    public Ros2Rmi_msgsMsgRepresentation field_representation = new Ros2Rmi_msgsMsgRepresentation();
    /** @brief Complete native field joint; scalar, text bound 0. */
    public Ros2Rmi_msgsMsgJoint field_joint = new Ros2Rmi_msgsMsgJoint();
    /** @brief Complete native field cartesian; scalar, text bound 0. */
    public Ros2Rmi_msgsMsgCartesian field_cartesian = new Ros2Rmi_msgsMsgCartesian();
    /** @brief Complete native field speed_type; scalar, text bound 0. */
    public Ros2Rmi_msgsMsgSpeedType field_speed_type = new Ros2Rmi_msgsMsgSpeedType();
    /** @brief Complete native field speed_value; scalar, text bound 0. */
    public int field_speed_value = 0;
    /** @brief Complete native field term_type; scalar, text bound 0. */
    public Ros2Rmi_msgsMsgTermType field_term_type = new Ros2Rmi_msgsMsgTermType();
    /** @brief Complete native field term_value; scalar, text bound 0. */
    public int field_term_value = 0;
    /** @brief Complete native field via_representation; scalar, text bound 0. */
    public Ros2Rmi_msgsMsgRepresentation field_via_representation = new Ros2Rmi_msgsMsgRepresentation();
    /** @brief Complete native field via_joint; scalar, text bound 0. */
    public Ros2Rmi_msgsMsgJoint field_via_joint = new Ros2Rmi_msgsMsgJoint();
    /** @brief Complete native field via_cartesian; scalar, text bound 0. */
    public Ros2Rmi_msgsMsgCartesian field_via_cartesian = new Ros2Rmi_msgsMsgCartesian();
    /** @brief Complete native field options; scalar, text bound 0. */
    public Ros2Rmi_msgsMsgMotionInstructionOptions field_options = new Ros2Rmi_msgsMsgMotionInstructionOptions();

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros2Rmi_msgsSrvAddMotionInstruction_Request()
    {
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros2Rmi_msgsSrvAddMotionInstruction_Request value)
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
    public static Ros2Rmi_msgsSrvAddMotionInstruction_Request decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros2Rmi_msgsSrvAddMotionInstruction_Request value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros2Rmi_msgsSrvAddMotionInstruction_Request value)
    {
        if(value == null)
        {
            throw new IllegalArgumentException("Null canonical record");
        }
        int start = wire.position();
        Ros2Rmi_msgsMsgMotionType.writeFields(wire, value.field_motion_type);
        wire.bool(value.field_incremental);
        Ros2Rmi_msgsMsgRepresentation.writeFields(wire, value.field_representation);
        Ros2Rmi_msgsMsgJoint.writeFields(wire, value.field_joint);
        Ros2Rmi_msgsMsgCartesian.writeFields(wire, value.field_cartesian);
        Ros2Rmi_msgsMsgSpeedType.writeFields(wire, value.field_speed_type);
        wire.u16(value.field_speed_value);
        Ros2Rmi_msgsMsgTermType.writeFields(wire, value.field_term_type);
        wire.u8(value.field_term_value);
        Ros2Rmi_msgsMsgRepresentation.writeFields(wire, value.field_via_representation);
        Ros2Rmi_msgsMsgJoint.writeFields(wire, value.field_via_joint);
        Ros2Rmi_msgsMsgCartesian.writeFields(wire, value.field_via_cartesian);
        Ros2Rmi_msgsMsgMotionInstructionOptions.writeFields(wire, value.field_options);
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
    public static Ros2Rmi_msgsSrvAddMotionInstruction_Request readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros2Rmi_msgsSrvAddMotionInstruction_Request value = new Ros2Rmi_msgsSrvAddMotionInstruction_Request();
        value.field_motion_type = Ros2Rmi_msgsMsgMotionType.readFields(wire);
        value.field_incremental = wire.bool();
        value.field_representation = Ros2Rmi_msgsMsgRepresentation.readFields(wire);
        value.field_joint = Ros2Rmi_msgsMsgJoint.readFields(wire);
        value.field_cartesian = Ros2Rmi_msgsMsgCartesian.readFields(wire);
        value.field_speed_type = Ros2Rmi_msgsMsgSpeedType.readFields(wire);
        value.field_speed_value = wire.u16();
        value.field_term_type = Ros2Rmi_msgsMsgTermType.readFields(wire);
        value.field_term_value = wire.u8();
        value.field_via_representation = Ros2Rmi_msgsMsgRepresentation.readFields(wire);
        value.field_via_joint = Ros2Rmi_msgsMsgJoint.readFields(wire);
        value.field_via_cartesian = Ros2Rmi_msgsMsgCartesian.readFields(wire);
        value.field_options = Ros2Rmi_msgsMsgMotionInstructionOptions.readFields(wire);
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
        return value;
    }
}
