package uwvm.robotis.ros1.noetic;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 1 sensor_msgs/Imu value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros1Sensor_msgsImu
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 440;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 312;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_de9c3f5bb37e1dc20be73cb44f614a9ff8645c4cfbc305dc18425d8d9f130bc3";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "sensor_msgs/Imu";
    /** @brief Original native identity; empty native identity is unqualified. */
    public static final String NATIVE_IDENTITY = "";
    /** @brief Complete native field header; scalar, text bound 0. */
    public Ros1Std_msgsHeader field_header = new Ros1Std_msgsHeader();
    /** @brief Complete native field orientation; scalar, text bound 0. */
    public Ros1Geometry_msgsQuaternion field_orientation = new Ros1Geometry_msgsQuaternion();
    /** @brief Complete native field orientation_covariance; array capacity 9, text bound 0. */
    public double[] field_orientation_covariance = new double[9];
    /** @brief Complete native field angular_velocity; scalar, text bound 0. */
    public Ros1Geometry_msgsVector3 field_angular_velocity = new Ros1Geometry_msgsVector3();
    /** @brief Complete native field angular_velocity_covariance; array capacity 9, text bound 0. */
    public double[] field_angular_velocity_covariance = new double[9];
    /** @brief Complete native field linear_acceleration; scalar, text bound 0. */
    public Ros1Geometry_msgsVector3 field_linear_acceleration = new Ros1Geometry_msgsVector3();
    /** @brief Complete native field linear_acceleration_covariance; array capacity 9, text bound 0. */
    public double[] field_linear_acceleration_covariance = new double[9];

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros1Sensor_msgsImu()
    {
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros1Sensor_msgsImu value)
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
    public static Ros1Sensor_msgsImu decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros1Sensor_msgsImu value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros1Sensor_msgsImu value)
    {
        if(value == null)
        {
            throw new IllegalArgumentException("Null canonical record");
        }
        int start = wire.position();
        Ros1Std_msgsHeader.writeFields(wire, value.field_header);
        Ros1Geometry_msgsQuaternion.writeFields(wire, value.field_orientation);
        if(value.field_orientation_covariance == null || value.field_orientation_covariance.length != 9)
        {
            throw new IllegalArgumentException("Invalid orientation_covariance extent");
        }
        for(int index = 0; index < value.field_orientation_covariance.length; index++)
        {
            if(!Double.isFinite(value.field_orientation_covariance[index]))
            {
                throw new IllegalArgumentException("Nonfinite orientation_covariance");
            }
            wire.f64(value.field_orientation_covariance[index]);
        }
        Ros1Geometry_msgsVector3.writeFields(wire, value.field_angular_velocity);
        if(value.field_angular_velocity_covariance == null || value.field_angular_velocity_covariance.length != 9)
        {
            throw new IllegalArgumentException("Invalid angular_velocity_covariance extent");
        }
        for(int index = 0; index < value.field_angular_velocity_covariance.length; index++)
        {
            if(!Double.isFinite(value.field_angular_velocity_covariance[index]))
            {
                throw new IllegalArgumentException("Nonfinite angular_velocity_covariance");
            }
            wire.f64(value.field_angular_velocity_covariance[index]);
        }
        Ros1Geometry_msgsVector3.writeFields(wire, value.field_linear_acceleration);
        if(value.field_linear_acceleration_covariance == null || value.field_linear_acceleration_covariance.length != 9)
        {
            throw new IllegalArgumentException("Invalid linear_acceleration_covariance extent");
        }
        for(int index = 0; index < value.field_linear_acceleration_covariance.length; index++)
        {
            if(!Double.isFinite(value.field_linear_acceleration_covariance[index]))
            {
                throw new IllegalArgumentException("Nonfinite linear_acceleration_covariance");
            }
            wire.f64(value.field_linear_acceleration_covariance[index]);
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
    public static Ros1Sensor_msgsImu readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros1Sensor_msgsImu value = new Ros1Sensor_msgsImu();
        value.field_header = Ros1Std_msgsHeader.readFields(wire);
        value.field_orientation = Ros1Geometry_msgsQuaternion.readFields(wire);
        value.field_orientation_covariance = new double[9];
        for(int index = 0; index < value.field_orientation_covariance.length; index++)
        {
            value.field_orientation_covariance[index] = wire.f64();
            if(!Double.isFinite(value.field_orientation_covariance[index]))
            {
                throw new IllegalArgumentException("Nonfinite orientation_covariance");
            }
        }
        value.field_angular_velocity = Ros1Geometry_msgsVector3.readFields(wire);
        value.field_angular_velocity_covariance = new double[9];
        for(int index = 0; index < value.field_angular_velocity_covariance.length; index++)
        {
            value.field_angular_velocity_covariance[index] = wire.f64();
            if(!Double.isFinite(value.field_angular_velocity_covariance[index]))
            {
                throw new IllegalArgumentException("Nonfinite angular_velocity_covariance");
            }
        }
        value.field_linear_acceleration = Ros1Geometry_msgsVector3.readFields(wire);
        value.field_linear_acceleration_covariance = new double[9];
        for(int index = 0; index < value.field_linear_acceleration_covariance.length; index++)
        {
            value.field_linear_acceleration_covariance[index] = wire.f64();
            if(!Double.isFinite(value.field_linear_acceleration_covariance[index]))
            {
                throw new IllegalArgumentException("Nonfinite linear_acceleration_covariance");
            }
        }
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
        return value;
    }
}
