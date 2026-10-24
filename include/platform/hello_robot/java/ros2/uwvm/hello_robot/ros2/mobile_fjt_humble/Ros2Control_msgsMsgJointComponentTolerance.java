package uwvm.hello_robot.ros2.mobile_fjt_humble;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 2 control_msgs/msg/JointComponentTolerance value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros2Control_msgsMsgJointComponentTolerance
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 158;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 30;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_8a10f659b38feae6dfcf89818d35a164743b02c0e5cfe2d86aae7eda56e914fb";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "control_msgs/msg/JointComponentTolerance";
    /** @brief Original native identity; empty native identity is unqualified. */
    public static final String NATIVE_IDENTITY = "";
    /** @brief Original source constant X_AXIS; consumes no instance wire bytes. */
    public static final int CONST_X_AXIS = 1;
    /** @brief Original source constant Y_AXIS; consumes no instance wire bytes. */
    public static final int CONST_Y_AXIS = 2;
    /** @brief Original source constant Z_AXIS; consumes no instance wire bytes. */
    public static final int CONST_Z_AXIS = 3;
    /** @brief Original source constant TRANSLATION; consumes no instance wire bytes. */
    public static final int CONST_TRANSLATION = 4;
    /** @brief Original source constant ROTATION; consumes no instance wire bytes. */
    public static final int CONST_ROTATION = 5;
    /** @brief Complete native field joint_name; scalar, text bound 128. */
    public String field_joint_name = "";
    /** @brief Complete native field component; scalar, text bound 0. */
    public int field_component = 0;
    /** @brief Complete native field position; scalar, text bound 0. */
    public double field_position = Double.longBitsToDouble(0x0000000000000000L);
    /** @brief Complete native field velocity; scalar, text bound 0. */
    public double field_velocity = Double.longBitsToDouble(0x0000000000000000L);
    /** @brief Complete native field acceleration; scalar, text bound 0. */
    public double field_acceleration = Double.longBitsToDouble(0x0000000000000000L);

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros2Control_msgsMsgJointComponentTolerance()
    {
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros2Control_msgsMsgJointComponentTolerance value)
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
    public static Ros2Control_msgsMsgJointComponentTolerance decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros2Control_msgsMsgJointComponentTolerance value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros2Control_msgsMsgJointComponentTolerance value)
    {
        if(value == null)
        {
            throw new IllegalArgumentException("Null canonical record");
        }
        int start = wire.position();
        wire.string(value.field_joint_name, 128);
        wire.u16(value.field_component);
        if(!Double.isFinite(value.field_position))
        {
            throw new IllegalArgumentException("Nonfinite position");
        }
        wire.f64(value.field_position);
        if(!Double.isFinite(value.field_velocity))
        {
            throw new IllegalArgumentException("Nonfinite velocity");
        }
        wire.f64(value.field_velocity);
        if(!Double.isFinite(value.field_acceleration))
        {
            throw new IllegalArgumentException("Nonfinite acceleration");
        }
        wire.f64(value.field_acceleration);
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
    public static Ros2Control_msgsMsgJointComponentTolerance readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros2Control_msgsMsgJointComponentTolerance value = new Ros2Control_msgsMsgJointComponentTolerance();
        value.field_joint_name = wire.string(128);
        value.field_component = wire.u16();
        value.field_position = wire.f64();
        if(!Double.isFinite(value.field_position))
        {
            throw new IllegalArgumentException("Nonfinite position");
        }
        value.field_velocity = wire.f64();
        if(!Double.isFinite(value.field_velocity))
        {
            throw new IllegalArgumentException("Nonfinite velocity");
        }
        value.field_acceleration = wire.f64();
        if(!Double.isFinite(value.field_acceleration))
        {
            throw new IllegalArgumentException("Nonfinite acceleration");
        }
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
        return value;
    }
}
