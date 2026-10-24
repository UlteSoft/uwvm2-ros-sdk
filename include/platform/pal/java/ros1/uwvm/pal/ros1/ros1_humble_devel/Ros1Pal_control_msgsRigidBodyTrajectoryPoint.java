package uwvm.pal.ros1.ros1_humble_devel;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 1 pal_control_msgs/RigidBodyTrajectoryPoint value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros1Pal_control_msgsRigidBodyTrajectoryPoint
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 160;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 160;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_25a24ab0d2eea5acbd4f1e0e0ba45262aa18750fcfb7cd6e57361ac782006d8f";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "pal_control_msgs/RigidBodyTrajectoryPoint";
    /** @brief Original native identity; empty native identity is unqualified. */
    public static final String NATIVE_IDENTITY = "";
    /** @brief Complete native field duration; scalar, text bound 0. */
    public Ros1Duration field_duration = new Ros1Duration();
    /** @brief Complete native field pose; scalar, text bound 0. */
    public Ros1Geometry_msgsPose field_pose = new Ros1Geometry_msgsPose();
    /** @brief Complete native field velocity; scalar, text bound 0. */
    public Ros1Geometry_msgsTwist field_velocity = new Ros1Geometry_msgsTwist();
    /** @brief Complete native field acceleration; scalar, text bound 0. */
    public Ros1Geometry_msgsAccel field_acceleration = new Ros1Geometry_msgsAccel();

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros1Pal_control_msgsRigidBodyTrajectoryPoint()
    {
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros1Pal_control_msgsRigidBodyTrajectoryPoint value)
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
    public static Ros1Pal_control_msgsRigidBodyTrajectoryPoint decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros1Pal_control_msgsRigidBodyTrajectoryPoint value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros1Pal_control_msgsRigidBodyTrajectoryPoint value)
    {
        if(value == null)
        {
            throw new IllegalArgumentException("Null canonical record");
        }
        int start = wire.position();
        Ros1Duration.writeFields(wire, value.field_duration);
        Ros1Geometry_msgsPose.writeFields(wire, value.field_pose);
        Ros1Geometry_msgsTwist.writeFields(wire, value.field_velocity);
        Ros1Geometry_msgsAccel.writeFields(wire, value.field_acceleration);
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
    public static Ros1Pal_control_msgsRigidBodyTrajectoryPoint readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros1Pal_control_msgsRigidBodyTrajectoryPoint value = new Ros1Pal_control_msgsRigidBodyTrajectoryPoint();
        value.field_duration = Ros1Duration.readFields(wire);
        value.field_pose = Ros1Geometry_msgsPose.readFields(wire);
        value.field_velocity = Ros1Geometry_msgsTwist.readFields(wire);
        value.field_acceleration = Ros1Geometry_msgsAccel.readFields(wire);
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
        return value;
    }
}
