/**
 * @file Ros2Sensor_msgsMsgJointState.java
 * @brief Represent the complete original FANUC ROS 2 canonical value catalog.
 * @details The caller owns every record and its finite dynamic backing storage. Codecs retain all
 * fields, original constants and native defaults; field units and frames follow the retained
 * definitions. Malformed or out-of-bound wire values are rejected. These are guest values rather than
 * native ROS objects; importing them grants no transport alias.
 */
package uwvm.fanuc.ros2;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 2 sensor_msgs/msg/JointState value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros2Sensor_msgsMsgJointState
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 1196;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 28;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_88d44f7bdb40f8c45539a041a25903609561fa74db90b9972e1369ebbff6c884";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "sensor_msgs/msg/JointState";
    /** @brief Original native identity; empty native identity is unqualified. */
    public static final String NATIVE_IDENTITY = "";
    /** @brief Complete native field header; scalar, text bound 0. */
    public Ros2Std_msgsMsgHeader field_header = new Ros2Std_msgsMsgHeader();
    /** @brief Complete native field name; sequence capacity 12, text bound 64. */
    public String[] field_name = new String[0];
    /** @brief Complete native field position; sequence capacity 12, text bound 0. */
    public double[] field_position = new double[0];
    /** @brief Complete native field velocity; sequence capacity 12, text bound 0. */
    public double[] field_velocity = new double[0];
    /** @brief Complete native field effort; sequence capacity 12, text bound 0. */
    public double[] field_effort = new double[0];

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros2Sensor_msgsMsgJointState()
    {
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros2Sensor_msgsMsgJointState value)
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
    public static Ros2Sensor_msgsMsgJointState decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros2Sensor_msgsMsgJointState value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros2Sensor_msgsMsgJointState value)
    {
        if(value == null)
        {
            throw new IllegalArgumentException("Null canonical record");
        }
        int start = wire.position();
        Ros2Std_msgsMsgHeader.writeFields(wire, value.field_header);
        if(value.field_name == null || value.field_name.length > 12)
        {
            throw new IllegalArgumentException("Invalid name extent");
        }
        wire.u32((long)value.field_name.length);
        for(int index = 0; index < value.field_name.length; index++)
        {
            wire.string(value.field_name[index], 64);
        }
        if(value.field_position == null || value.field_position.length > 12)
        {
            throw new IllegalArgumentException("Invalid position extent");
        }
        wire.u32((long)value.field_position.length);
        for(int index = 0; index < value.field_position.length; index++)
        {
            if(!Double.isFinite(value.field_position[index]))
            {
                throw new IllegalArgumentException("Nonfinite position");
            }
            wire.f64(value.field_position[index]);
        }
        if(value.field_velocity == null || value.field_velocity.length > 12)
        {
            throw new IllegalArgumentException("Invalid velocity extent");
        }
        wire.u32((long)value.field_velocity.length);
        for(int index = 0; index < value.field_velocity.length; index++)
        {
            if(!Double.isFinite(value.field_velocity[index]))
            {
                throw new IllegalArgumentException("Nonfinite velocity");
            }
            wire.f64(value.field_velocity[index]);
        }
        if(value.field_effort == null || value.field_effort.length > 12)
        {
            throw new IllegalArgumentException("Invalid effort extent");
        }
        wire.u32((long)value.field_effort.length);
        for(int index = 0; index < value.field_effort.length; index++)
        {
            if(!Double.isFinite(value.field_effort[index]))
            {
                throw new IllegalArgumentException("Nonfinite effort");
            }
            wire.f64(value.field_effort[index]);
        }
        if(value.field_position.length != 0 && value.field_position.length != value.field_name.length)
        {
            throw new IllegalArgumentException("JointState optional array length mismatch");
        }
        if(value.field_velocity.length != 0 && value.field_velocity.length != value.field_name.length)
        {
            throw new IllegalArgumentException("JointState optional array length mismatch");
        }
        if(value.field_effort.length != 0 && value.field_effort.length != value.field_name.length)
        {
            throw new IllegalArgumentException("JointState optional array length mismatch");
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
    public static Ros2Sensor_msgsMsgJointState readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros2Sensor_msgsMsgJointState value = new Ros2Sensor_msgsMsgJointState();
        value.field_header = Ros2Std_msgsMsgHeader.readFields(wire);
        value.field_name = new String[wire.count(12)];
        for(int index = 0; index < value.field_name.length; index++)
        {
            value.field_name[index] = wire.string(64);
        }
        value.field_position = new double[wire.count(12)];
        for(int index = 0; index < value.field_position.length; index++)
        {
            value.field_position[index] = wire.f64();
            if(!Double.isFinite(value.field_position[index]))
            {
                throw new IllegalArgumentException("Nonfinite position");
            }
        }
        value.field_velocity = new double[wire.count(12)];
        for(int index = 0; index < value.field_velocity.length; index++)
        {
            value.field_velocity[index] = wire.f64();
            if(!Double.isFinite(value.field_velocity[index]))
            {
                throw new IllegalArgumentException("Nonfinite velocity");
            }
        }
        value.field_effort = new double[wire.count(12)];
        for(int index = 0; index < value.field_effort.length; index++)
        {
            value.field_effort[index] = wire.f64();
            if(!Double.isFinite(value.field_effort[index]))
            {
                throw new IllegalArgumentException("Nonfinite effort");
            }
        }
        if(value.field_position.length != 0 && value.field_position.length != value.field_name.length)
        {
            throw new IllegalArgumentException("JointState optional array length mismatch");
        }
        if(value.field_velocity.length != 0 && value.field_velocity.length != value.field_name.length)
        {
            throw new IllegalArgumentException("JointState optional array length mismatch");
        }
        if(value.field_effort.length != 0 && value.field_effort.length != value.field_name.length)
        {
            throw new IllegalArgumentException("JointState optional array length mismatch");
        }
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
        return value;
    }
}
