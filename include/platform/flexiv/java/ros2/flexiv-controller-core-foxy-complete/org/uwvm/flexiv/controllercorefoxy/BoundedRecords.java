// @brief Complete original flexiv controller_core_foxy canonical values.
// @details UTF-8 limits count bytes and sequence limits count elements. Complete-value codecs retain
// every original field; native registration and manually granted ROS authority are separate. Caller-
// owned values and codec failures are described by each operation and the locale API reference.
package org.uwvm.flexiv.controllercorefoxy;

import org.uwvm.roswasm.Codec;
import org.uwvm.roswasm.Codecs;

/** Generated complete canonical records; no CDR/native registration or ROS authority. */
public final class BoundedRecords
{
    private BoundedRecords()
    {
    }

    private static void writeText(Codecs.Writer writer, String value, int maximum)
    {
        if(value == null || value.length() > maximum || value.indexOf('\0') >= 0)
            throw new IllegalArgumentException("bounded custom string without NUL required");
        byte[] bytes = Codecs.utf8(value);
        if(bytes.length > maximum)
            throw new IllegalArgumentException("custom UTF-8 byte bound");
        writer.integer(bytes.length, 4, false).raw(bytes);
    }

    private static String readText(Codecs.Reader reader, int maximum)
    {
        long count = reader.integer(4, false);
        if(count > maximum || count > reader.remaining())
            throw new IllegalArgumentException("custom UTF-8 extent");
        String value = Codecs.text(reader.take((int)count));
        if(value.indexOf('\0') >= 0)
            throw new IllegalArgumentException("NUL in custom string");
        return value;
    }

    private static int readCount(Codecs.Reader reader, int maximum, int elementMinimum)
    {
        long count = reader.integer(4, false);
        if(count > maximum || (elementMinimum != 0 && count > reader.remaining() / elementMinimum))
            throw new IllegalArgumentException("sequence count/remaining extent");
        return (int)count;
    }

    private static boolean readBool(Codecs.Reader reader)
    {
        long value = reader.integer(1, false);
        if(value > 1)
            throw new IllegalArgumentException("canonical bool must be0/1");
        return value == 1;
    }

    private static byte[] ownedWire(byte[] value, int minimum, int maximum)
    {
        if(value == null || value.length < minimum || value.length > maximum)
            throw new IllegalArgumentException("complete bounded wire required");
        return value.clone();
    }

    // @brief Own every original field of builtin_interfaces/msg/Time.
    // @details Canonical extent 8..8 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros2Builtin_interfacesMsgTime
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "builtin_interfaces/msg/Time";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7";
        public static final int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 8;
        /**
         * @brief Time indicates a specific point in time, relative to a clock's 0 point. The seconds
         * component, valid over all int32 values.
         * @details Original builtin_interfaces/msg/Time.sec; native type int32. Scalar value. Storage belongs
         * to the complete value and acquires no ROS resource.
         */
        public int sec = 0;
        /**
         * @brief The nanoseconds component, valid in the range [0, 10e9).
         * @details Original builtin_interfaces/msg/Time.nanosec; native type uint32. Scalar value. Storage
         * belongs to the complete value and acquires no ROS resource.
         */
        public long nanosec = 0;

        public Ros2Builtin_interfacesMsgTime()
        {
        }

        public static final Codec<Ros2Builtin_interfacesMsgTime> CODEC = new Codec<Ros2Builtin_interfacesMsgTime>() {
            public byte[] encode(Ros2Builtin_interfacesMsgTime value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Builtin_interfacesMsgTime(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Builtin_interfacesMsgTime decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Builtin_interfacesMsgTime value = readRos2Builtin_interfacesMsgTime(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Builtin_interfacesMsgTime(Codecs.Writer writer, Ros2Builtin_interfacesMsgTime value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int part0 = value.sec;
        writer.integer(part0, 4, true);
        long part1 = value.nanosec;
        writer.integer(part1, 4, false);
        if(part1 < 0 || part1 >= 1000000000L)
            throw new IllegalArgumentException("normalized subsecond field required");
    }

    private static Ros2Builtin_interfacesMsgTime readRos2Builtin_interfacesMsgTime(Codecs.Reader reader)
    {
        Ros2Builtin_interfacesMsgTime value = new Ros2Builtin_interfacesMsgTime();
        value.sec = (int)reader.integer(4, true);
        value.nanosec = reader.integer(4, false);
        if(value.nanosec < 0 || value.nanosec >= 1000000000L)
            throw new IllegalArgumentException("normalized subsecond field required");
        return value;
    }

    // @brief Own every original field of builtin_interfaces/msg/Duration.
    // @details Canonical extent 8..8 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros2Builtin_interfacesMsgDuration
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "builtin_interfaces/msg/Duration";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_3804444fae7a82a57907d25c2c3dc54d9a42dcd305f41ca073b1221dca7d36e4";
        public static final int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 8;
        /**
         * @brief Duration defines a period between two time points. It is comprised of a seconds component and
         * a nanoseconds component. Seconds component, range is valid over any possible int32 value.
         * @details Original builtin_interfaces/msg/Duration.sec; native type int32. Scalar value. Storage
         * belongs to the complete value and acquires no ROS resource.
         */
        public int sec = 0;
        /**
         * @brief Nanoseconds component in the range of [0, 10e9).
         * @details Original builtin_interfaces/msg/Duration.nanosec; native type uint32. Scalar value. Storage
         * belongs to the complete value and acquires no ROS resource.
         */
        public long nanosec = 0;

        public Ros2Builtin_interfacesMsgDuration()
        {
        }

        public static final Codec<Ros2Builtin_interfacesMsgDuration> CODEC = new Codec<Ros2Builtin_interfacesMsgDuration>() {
            public byte[] encode(Ros2Builtin_interfacesMsgDuration value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Builtin_interfacesMsgDuration(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Builtin_interfacesMsgDuration decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Builtin_interfacesMsgDuration value = readRos2Builtin_interfacesMsgDuration(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Builtin_interfacesMsgDuration(Codecs.Writer writer, Ros2Builtin_interfacesMsgDuration value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int part0 = value.sec;
        writer.integer(part0, 4, true);
        long part1 = value.nanosec;
        writer.integer(part1, 4, false);
        if(part1 < 0 || part1 >= 1000000000L)
            throw new IllegalArgumentException("normalized subsecond field required");
    }

    private static Ros2Builtin_interfacesMsgDuration readRos2Builtin_interfacesMsgDuration(Codecs.Reader reader)
    {
        Ros2Builtin_interfacesMsgDuration value = new Ros2Builtin_interfacesMsgDuration();
        value.sec = (int)reader.integer(4, true);
        value.nanosec = reader.integer(4, false);
        if(value.nanosec < 0 || value.nanosec >= 1000000000L)
            throw new IllegalArgumentException("normalized subsecond field required");
        return value;
    }

    // @brief Own every original field of std_msgs/msg/Header.
    // @details Canonical extent 12..268 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros2Std_msgsMsgHeader
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "std_msgs/msg/Header";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_2f4f374a97a14337b36f87987a2c2fe2fba6dc9597fa4455029ba3bef65c1c2b";
        public static final int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 268;
        /**
         * @brief Standard metadata for higher-level stamped data types. This is generally used to communicate
         * timestamped data in a particular coordinate frame. Two-integer timestamp that is expressed as
         * seconds and nanoseconds.
         * @details Original std_msgs/msg/Header.stamp; native type builtin_interfaces/msg/Time. Scalar value.
         * Storage belongs to the complete value and acquires no ROS resource.
         */
        public Ros2Builtin_interfacesMsgTime stamp = new Ros2Builtin_interfacesMsgTime();
        /**
         * @brief Transform frame with which this data is associated.
         * @details Original std_msgs/msg/Header.frame_id; native type string. Scalar value. UTF-8 capacity 256
         * bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS resource.
         */
        public String frame_id = "";

        public Ros2Std_msgsMsgHeader()
        {
        }

        public static final Codec<Ros2Std_msgsMsgHeader> CODEC = new Codec<Ros2Std_msgsMsgHeader>() {
            public byte[] encode(Ros2Std_msgsMsgHeader value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Std_msgsMsgHeader(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Std_msgsMsgHeader decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Std_msgsMsgHeader value = readRos2Std_msgsMsgHeader(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Std_msgsMsgHeader(Codecs.Writer writer, Ros2Std_msgsMsgHeader value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Builtin_interfacesMsgTime part0 = value.stamp;
        writeRos2Builtin_interfacesMsgTime(writer, part0);
        String part1 = value.frame_id;
        writeText(writer, part1, 256);
    }

    private static Ros2Std_msgsMsgHeader readRos2Std_msgsMsgHeader(Codecs.Reader reader)
    {
        Ros2Std_msgsMsgHeader value = new Ros2Std_msgsMsgHeader();
        value.stamp = readRos2Builtin_interfacesMsgTime(reader);
        value.frame_id = readText(reader, 256);
        return value;
    }

    // @brief Own every original field of sensor_msgs/msg/JointState.
    // @details Canonical extent 28..9372 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros2Sensor_msgsMsgJointState
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "sensor_msgs/msg/JointState";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_3faa9cdc746cb2cf7ac581bb2b0b6e32e2c6601d72043c7893249142730d8556";
        public static final int MIN_WIRE_BYTES = 28, MAX_WIRE_BYTES = 9372;
        /**
         * @brief This is a message that holds data to describe the state of a set of torque controlled joints.
         * The state of each joint (revolute or prismatic) is defined by: * the position of the joint (rad or
         * m), * the velocity of the joint (rad/s or m/s) and * the effort that is applied in the joint (Nm or
         * N).  Each joint is uniquely identified by its name The header specifies the time at which the joint
         * states were recorded. All the joint states in one message have to be recorded at the same time.
         * This message consists of a multiple arrays, one for each part of the joint state. The goal is to
         * make each of the fields optional. When e.g. your joints have no effort associated with them, you can
         * leave the effort array empty.  All arrays in this message should have the same size, or be empty.
         * This is the only way to uniquely associate the joint name with the correct states.
         * @details Original sensor_msgs/msg/JointState.header; native type std_msgs/msg/Header. Scalar value.
         * Storage belongs to the complete value and acquires no ROS resource.
         */
        public Ros2Std_msgsMsgHeader header = new Ros2Std_msgsMsgHeader();
        /**
         * @brief Retain the complete original string field.
         * @details Original sensor_msgs/msg/JointState.name; native type string. At most 32 elements. UTF-8
         * capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public String[] name = new String[0];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original sensor_msgs/msg/JointState.position; native type float64. At most 32 elements.
         * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
         * no ROS resource.
         */
        public double[] position = new double[0];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original sensor_msgs/msg/JointState.velocity; native type float64. At most 32 elements.
         * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
         * no ROS resource.
         */
        public double[] velocity = new double[0];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original sensor_msgs/msg/JointState.effort; native type float64. At most 32 elements.
         * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
         * no ROS resource.
         */
        public double[] effort = new double[0];

        public Ros2Sensor_msgsMsgJointState()
        {
        }

        public static final Codec<Ros2Sensor_msgsMsgJointState> CODEC = new Codec<Ros2Sensor_msgsMsgJointState>() {
            public byte[] encode(Ros2Sensor_msgsMsgJointState value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Sensor_msgsMsgJointState(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Sensor_msgsMsgJointState decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Sensor_msgsMsgJointState value = readRos2Sensor_msgsMsgJointState(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Sensor_msgsMsgJointState(Codecs.Writer writer, Ros2Sensor_msgsMsgJointState value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Std_msgsMsgHeader part0 = value.header;
        writeRos2Std_msgsMsgHeader(writer, part0);
        String[] part1 = value.name;
        if(part1 == null || part1.length > 32)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part1.length, 4, false);
        for(int i = 0; i < part1.length; ++i)
        {
            writeText(writer, part1[i], 256);
        }
        double[] part2 = value.position;
        if(part2 == null || part2.length > 32)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part2.length, 4, false);
        for(int i = 0; i < part2.length; ++i)
        {
            writer.f64(part2[i]);
        }
        double[] part3 = value.velocity;
        if(part3 == null || part3.length > 32)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part3.length, 4, false);
        for(int i = 0; i < part3.length; ++i)
        {
            writer.f64(part3[i]);
        }
        double[] part4 = value.effort;
        if(part4 == null || part4.length > 32)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part4.length, 4, false);
        for(int i = 0; i < part4.length; ++i)
        {
            writer.f64(part4[i]);
        }
        if((part1.length != 0 && part2.length != 0 && part1.length != part2.length) ||
           (part1.length != 0 && part3.length != 0 && part1.length != part3.length) ||
           (part1.length != 0 && part4.length != 0 && part1.length != part4.length) ||
           (part2.length != 0 && part3.length != 0 && part2.length != part3.length) ||
           (part2.length != 0 && part4.length != 0 && part2.length != part4.length) || (part3.length != 0 && part4.length != 0 && part3.length != part4.length))
            throw new IllegalArgumentException("nonempty JointState arrays must have equal length");
    }

    private static Ros2Sensor_msgsMsgJointState readRos2Sensor_msgsMsgJointState(Codecs.Reader reader)
    {
        Ros2Sensor_msgsMsgJointState value = new Ros2Sensor_msgsMsgJointState();
        value.header = readRos2Std_msgsMsgHeader(reader);
        value.name = new String[readCount(reader, 32, 4)];
        for(int i = 0; i < value.name.length; ++i)
            value.name[i] = readText(reader, 256);
        value.position = new double[readCount(reader, 32, 8)];
        for(int i = 0; i < value.position.length; ++i)
            value.position[i] = reader.f64();
        value.velocity = new double[readCount(reader, 32, 8)];
        for(int i = 0; i < value.velocity.length; ++i)
            value.velocity[i] = reader.f64();
        value.effort = new double[readCount(reader, 32, 8)];
        for(int i = 0; i < value.effort.length; ++i)
            value.effort[i] = reader.f64();
        if((value.name.length != 0 && value.position.length != 0 && value.name.length != value.position.length) ||
           (value.name.length != 0 && value.velocity.length != 0 && value.name.length != value.velocity.length) ||
           (value.name.length != 0 && value.effort.length != 0 && value.name.length != value.effort.length) ||
           (value.position.length != 0 && value.velocity.length != 0 && value.position.length != value.velocity.length) ||
           (value.position.length != 0 && value.effort.length != 0 && value.position.length != value.effort.length) ||
           (value.velocity.length != 0 && value.effort.length != 0 && value.velocity.length != value.effort.length))
            throw new IllegalArgumentException("nonempty JointState arrays must have equal length");
        return value;
    }

    // @brief Own every original field of trajectory_msgs/msg/JointTrajectoryPoint.
    // @details Canonical extent 24..1048 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros2Trajectory_msgsMsgJointTrajectoryPoint
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "trajectory_msgs/msg/JointTrajectoryPoint";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_8320f791cea3b2edbbe7b78c9a3750708fb0284ae6a322058921c8c105f7130c";
        public static final int MIN_WIRE_BYTES = 24, MAX_WIRE_BYTES = 1048;
        /**
         * @brief Each trajectory point specifies either positions[, velocities[, accelerations]] or
         * positions[, effort] for the trajectory to be executed. All specified values are in the same order as
         * the joint names in JointTrajectory.msg. Single DOF joint positions for each joint relative to their
         * "0" position. The units depend on the specific joint type: radians for revolute or continuous
         * joints, and meters for prismatic joints.
         * @details Original trajectory_msgs/msg/JointTrajectoryPoint.positions; native type float64. At most
         * 32 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value
         * and acquires no ROS resource.
         */
        public double[] positions = new double[0];
        /**
         * @brief The rate of change in position of each joint. Units are joint type dependent. Radians/second
         * for revolute or continuous joints, and meters/second for prismatic joints.
         * @details Original trajectory_msgs/msg/JointTrajectoryPoint.velocities; native type float64. At most
         * 32 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value
         * and acquires no ROS resource.
         */
        public double[] velocities = new double[0];
        /**
         * @brief Rate of change in velocity of each joint. Units are joint type dependent. Radians/second^2
         * for revolute or continuous joints, and meters/second^2 for prismatic joints.
         * @details Original trajectory_msgs/msg/JointTrajectoryPoint.accelerations; native type float64. At
         * most 32 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete
         * value and acquires no ROS resource.
         */
        public double[] accelerations = new double[0];
        /**
         * @brief The torque or the force to be applied at each joint. For revolute/continuous joints effort
         * denotes a torque in newton-meters. For prismatic joints, effort denotes a force in newtons.
         * @details Original trajectory_msgs/msg/JointTrajectoryPoint.effort; native type float64. At most 32
         * elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
         * acquires no ROS resource.
         */
        public double[] effort = new double[0];
        /**
         * @brief Desired time from the trajectory start to arrive at this trajectory point.
         * @details Original trajectory_msgs/msg/JointTrajectoryPoint.time_from_start; native type
         * builtin_interfaces/msg/Duration. Scalar value. Storage belongs to the complete value and acquires no
         * ROS resource.
         */
        public Ros2Builtin_interfacesMsgDuration time_from_start = new Ros2Builtin_interfacesMsgDuration();

        public Ros2Trajectory_msgsMsgJointTrajectoryPoint()
        {
        }

        public static final Codec<Ros2Trajectory_msgsMsgJointTrajectoryPoint> CODEC = new Codec<Ros2Trajectory_msgsMsgJointTrajectoryPoint>() {
            public byte[] encode(Ros2Trajectory_msgsMsgJointTrajectoryPoint value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Trajectory_msgsMsgJointTrajectoryPoint(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Trajectory_msgsMsgJointTrajectoryPoint decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Trajectory_msgsMsgJointTrajectoryPoint value = readRos2Trajectory_msgsMsgJointTrajectoryPoint(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Trajectory_msgsMsgJointTrajectoryPoint(Codecs.Writer writer, Ros2Trajectory_msgsMsgJointTrajectoryPoint value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        double[] part0 = value.positions;
        if(part0 == null || part0.length > 32)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part0.length, 4, false);
        for(int i = 0; i < part0.length; ++i)
        {
            writer.f64(part0[i]);
        }
        double[] part1 = value.velocities;
        if(part1 == null || part1.length > 32)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part1.length, 4, false);
        for(int i = 0; i < part1.length; ++i)
        {
            writer.f64(part1[i]);
        }
        double[] part2 = value.accelerations;
        if(part2 == null || part2.length > 32)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part2.length, 4, false);
        for(int i = 0; i < part2.length; ++i)
        {
            writer.f64(part2[i]);
        }
        double[] part3 = value.effort;
        if(part3 == null || part3.length > 32)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part3.length, 4, false);
        for(int i = 0; i < part3.length; ++i)
        {
            writer.f64(part3[i]);
        }
        Ros2Builtin_interfacesMsgDuration part4 = value.time_from_start;
        writeRos2Builtin_interfacesMsgDuration(writer, part4);
    }

    private static Ros2Trajectory_msgsMsgJointTrajectoryPoint readRos2Trajectory_msgsMsgJointTrajectoryPoint(Codecs.Reader reader)
    {
        Ros2Trajectory_msgsMsgJointTrajectoryPoint value = new Ros2Trajectory_msgsMsgJointTrajectoryPoint();
        value.positions = new double[readCount(reader, 32, 8)];
        for(int i = 0; i < value.positions.length; ++i)
            value.positions[i] = reader.f64();
        value.velocities = new double[readCount(reader, 32, 8)];
        for(int i = 0; i < value.velocities.length; ++i)
            value.velocities[i] = reader.f64();
        value.accelerations = new double[readCount(reader, 32, 8)];
        for(int i = 0; i < value.accelerations.length; ++i)
            value.accelerations[i] = reader.f64();
        value.effort = new double[readCount(reader, 32, 8)];
        for(int i = 0; i < value.effort.length; ++i)
            value.effort[i] = reader.f64();
        value.time_from_start = readRos2Builtin_interfacesMsgDuration(reader);
        return value;
    }

    // @brief Own every original field of trajectory_msgs/msg/JointTrajectory.
    // @details Canonical extent 20..16980 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros2Trajectory_msgsMsgJointTrajectory
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "trajectory_msgs/msg/JointTrajectory";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_0b691c3ed52f8cc3bf5e4c5a7cec1d82a15d08b7d2575bd30b34c49e37877af4";
        public static final int MIN_WIRE_BYTES = 20, MAX_WIRE_BYTES = 16980;
        /**
         * @brief The header is used to specify the coordinate frame and the reference time for the trajectory
         * durations
         * @details Original trajectory_msgs/msg/JointTrajectory.header; native type std_msgs/msg/Header.
         * Scalar value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public Ros2Std_msgsMsgHeader header = new Ros2Std_msgsMsgHeader();
        /**
         * @brief The names of the active joints in each trajectory point. These names are ordered and must
         * correspond to the values in each trajectory point.
         * @details Original trajectory_msgs/msg/JointTrajectory.joint_names; native type string. At most 32
         * elements. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and
         * acquires no ROS resource.
         */
        public String[] joint_names = new String[0];
        /**
         * @brief Array of trajectory points, which describe the positions, velocities, accelerations and/or
         * efforts of the joints at each time point.
         * @details Original trajectory_msgs/msg/JointTrajectory.points; native type
         * trajectory_msgs/msg/JointTrajectoryPoint. At most 8 elements. Storage belongs to the complete value
         * and acquires no ROS resource.
         */
        public Ros2Trajectory_msgsMsgJointTrajectoryPoint[] points = new Ros2Trajectory_msgsMsgJointTrajectoryPoint[0];

        public Ros2Trajectory_msgsMsgJointTrajectory()
        {
        }

        public static final Codec<Ros2Trajectory_msgsMsgJointTrajectory> CODEC = new Codec<Ros2Trajectory_msgsMsgJointTrajectory>() {
            public byte[] encode(Ros2Trajectory_msgsMsgJointTrajectory value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Trajectory_msgsMsgJointTrajectory(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Trajectory_msgsMsgJointTrajectory decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Trajectory_msgsMsgJointTrajectory value = readRos2Trajectory_msgsMsgJointTrajectory(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Trajectory_msgsMsgJointTrajectory(Codecs.Writer writer, Ros2Trajectory_msgsMsgJointTrajectory value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Std_msgsMsgHeader part0 = value.header;
        writeRos2Std_msgsMsgHeader(writer, part0);
        String[] part1 = value.joint_names;
        if(part1 == null || part1.length > 32)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part1.length, 4, false);
        for(int i = 0; i < part1.length; ++i)
        {
            writeText(writer, part1[i], 256);
        }
        Ros2Trajectory_msgsMsgJointTrajectoryPoint[] part2 = value.points;
        if(part2 == null || part2.length > 8)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part2.length, 4, false);
        for(int i = 0; i < part2.length; ++i)
        {
            writeRos2Trajectory_msgsMsgJointTrajectoryPoint(writer, part2[i]);
        }
    }

    private static Ros2Trajectory_msgsMsgJointTrajectory readRos2Trajectory_msgsMsgJointTrajectory(Codecs.Reader reader)
    {
        Ros2Trajectory_msgsMsgJointTrajectory value = new Ros2Trajectory_msgsMsgJointTrajectory();
        value.header = readRos2Std_msgsMsgHeader(reader);
        value.joint_names = new String[readCount(reader, 32, 4)];
        for(int i = 0; i < value.joint_names.length; ++i)
            value.joint_names[i] = readText(reader, 256);
        value.points = new Ros2Trajectory_msgsMsgJointTrajectoryPoint[readCount(reader, 8, 24)];
        for(int i = 0; i < value.points.length; ++i)
            value.points[i] = readRos2Trajectory_msgsMsgJointTrajectoryPoint(reader);
        return value;
    }

    // @brief Own every original field of std_msgs/msg/MultiArrayDimension.
    // @details Canonical extent 12..268 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros2Std_msgsMsgMultiArrayDimension
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "std_msgs/msg/MultiArrayDimension";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_95110a90e1600af2696a69f4dec6bfde2afe315bfd453bda2e1c84f5984ae80d";
        public static final int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 268;
        /**
         * @brief This was originally provided as an example message. It is deprecated as of Foxy It is
         * recommended to create your own semantically meaningful message. However if you would like to
         * continue using this please use the equivalent in example_msgs. label of given dimension
         * @details Original std_msgs/msg/MultiArrayDimension.label; native type string. Scalar value. UTF-8
         * capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public String label = "";
        /**
         * @brief size of given dimension (in type units)
         * @details Original std_msgs/msg/MultiArrayDimension.size; native type uint32. Scalar value. Storage
         * belongs to the complete value and acquires no ROS resource.
         */
        public long size = 0;
        /**
         * @brief stride of given dimension
         * @details Original std_msgs/msg/MultiArrayDimension.stride; native type uint32. Scalar value. Storage
         * belongs to the complete value and acquires no ROS resource.
         */
        public long stride = 0;

        public Ros2Std_msgsMsgMultiArrayDimension()
        {
        }

        public static final Codec<Ros2Std_msgsMsgMultiArrayDimension> CODEC = new Codec<Ros2Std_msgsMsgMultiArrayDimension>() {
            public byte[] encode(Ros2Std_msgsMsgMultiArrayDimension value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Std_msgsMsgMultiArrayDimension(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Std_msgsMsgMultiArrayDimension decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Std_msgsMsgMultiArrayDimension value = readRos2Std_msgsMsgMultiArrayDimension(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Std_msgsMsgMultiArrayDimension(Codecs.Writer writer, Ros2Std_msgsMsgMultiArrayDimension value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String part0 = value.label;
        writeText(writer, part0, 256);
        long part1 = value.size;
        writer.integer(part1, 4, false);
        long part2 = value.stride;
        writer.integer(part2, 4, false);
    }

    private static Ros2Std_msgsMsgMultiArrayDimension readRos2Std_msgsMsgMultiArrayDimension(Codecs.Reader reader)
    {
        Ros2Std_msgsMsgMultiArrayDimension value = new Ros2Std_msgsMsgMultiArrayDimension();
        value.label = readText(reader, 256);
        value.size = reader.integer(4, false);
        value.stride = reader.integer(4, false);
        return value;
    }

    // @brief Own every original field of std_msgs/msg/MultiArrayLayout.
    // @details Canonical extent 8..2152 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros2Std_msgsMsgMultiArrayLayout
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "std_msgs/msg/MultiArrayLayout";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_1e1ea54500602a3813c1cc3b5db7dfd9a7dd9260a3d5af43e8495f6b48e32f40";
        public static final int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 2152;
        /**
         * @brief This was originally provided as an example message. It is deprecated as of Foxy It is
         * recommended to create your own semantically meaningful message. However if you would like to
         * continue using this please use the equivalent in example_msgs. The multiarray declares a generic
         * multi-dimensional array of a particular data type.  Dimensions are ordered from outer most to inner
         * most.  Accessors should ALWAYS be written in terms of dimension stride and specified outer-most
         * dimension first.  multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]  A
         * standard, 3-channel 640x480 image with interleaved color channels would be specified as:
         * dim[0].label  = "height" dim[0].size   = 480 dim[0].stride = 3*640*480 = 921600  (note dim[0] stride
         * is just size of image) dim[1].label  = "width" dim[1].size   = 640 dim[1].stride = 3*640 = 1920
         * dim[2].label  = "channel" dim[2].size   = 3 dim[2].stride = 3  multiarray(i,j,k) refers to the ith
         * row, jth column, and kth channel. Array of dimension properties
         * @details Original std_msgs/msg/MultiArrayLayout.dim; native type std_msgs/msg/MultiArrayDimension.
         * At most 8 elements. Storage belongs to the complete value and acquires no ROS resource.
         */
        public Ros2Std_msgsMsgMultiArrayDimension[] dim = new Ros2Std_msgsMsgMultiArrayDimension[0];
        /**
         * @brief padding bytes at front of data
         * @details Original std_msgs/msg/MultiArrayLayout.data_offset; native type uint32. Scalar value.
         * Storage belongs to the complete value and acquires no ROS resource.
         */
        public long data_offset = 0;

        public Ros2Std_msgsMsgMultiArrayLayout()
        {
        }

        public static final Codec<Ros2Std_msgsMsgMultiArrayLayout> CODEC = new Codec<Ros2Std_msgsMsgMultiArrayLayout>() {
            public byte[] encode(Ros2Std_msgsMsgMultiArrayLayout value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Std_msgsMsgMultiArrayLayout(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Std_msgsMsgMultiArrayLayout decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Std_msgsMsgMultiArrayLayout value = readRos2Std_msgsMsgMultiArrayLayout(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Std_msgsMsgMultiArrayLayout(Codecs.Writer writer, Ros2Std_msgsMsgMultiArrayLayout value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Std_msgsMsgMultiArrayDimension[] part0 = value.dim;
        if(part0 == null || part0.length > 8)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part0.length, 4, false);
        for(int i = 0; i < part0.length; ++i)
        {
            writeRos2Std_msgsMsgMultiArrayDimension(writer, part0[i]);
        }
        long part1 = value.data_offset;
        writer.integer(part1, 4, false);
    }

    private static Ros2Std_msgsMsgMultiArrayLayout readRos2Std_msgsMsgMultiArrayLayout(Codecs.Reader reader)
    {
        Ros2Std_msgsMsgMultiArrayLayout value = new Ros2Std_msgsMsgMultiArrayLayout();
        value.dim = new Ros2Std_msgsMsgMultiArrayDimension[readCount(reader, 8, 12)];
        for(int i = 0; i < value.dim.length; ++i)
            value.dim[i] = readRos2Std_msgsMsgMultiArrayDimension(reader);
        value.data_offset = reader.integer(4, false);
        return value;
    }

    // @brief Own every original field of std_msgs/msg/Float64MultiArray.
    // @details Canonical extent 12..2412 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros2Std_msgsMsgFloat64MultiArray
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "std_msgs/msg/Float64MultiArray";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_9950573380aa134d889e1662549f28ffd493e8c4da68170fd076c4c9cc3db8c2";
        public static final int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 2412;
        /**
         * @brief This was originally provided as an example message. It is deprecated as of Foxy It is
         * recommended to create your own semantically meaningful message. However if you would like to
         * continue using this please use the equivalent in example_msgs. Please look at the MultiArrayLayout
         * message definition for documentation on all multiarrays. specification of data layout
         * @details Original std_msgs/msg/Float64MultiArray.layout; native type std_msgs/msg/MultiArrayLayout.
         * Scalar value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public Ros2Std_msgsMsgMultiArrayLayout layout = new Ros2Std_msgsMsgMultiArrayLayout();
        /**
         * @brief array of data
         * @details Original std_msgs/msg/Float64MultiArray.data; native type float64. At most 32 elements.
         * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
         * no ROS resource.
         */
        public double[] data = new double[0];

        public Ros2Std_msgsMsgFloat64MultiArray()
        {
        }

        public static final Codec<Ros2Std_msgsMsgFloat64MultiArray> CODEC = new Codec<Ros2Std_msgsMsgFloat64MultiArray>() {
            public byte[] encode(Ros2Std_msgsMsgFloat64MultiArray value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Std_msgsMsgFloat64MultiArray(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Std_msgsMsgFloat64MultiArray decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Std_msgsMsgFloat64MultiArray value = readRos2Std_msgsMsgFloat64MultiArray(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Std_msgsMsgFloat64MultiArray(Codecs.Writer writer, Ros2Std_msgsMsgFloat64MultiArray value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Std_msgsMsgMultiArrayLayout part0 = value.layout;
        writeRos2Std_msgsMsgMultiArrayLayout(writer, part0);
        double[] part1 = value.data;
        if(part1 == null || part1.length > 32)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part1.length, 4, false);
        for(int i = 0; i < part1.length; ++i)
        {
            writer.f64(part1[i]);
        }
    }

    private static Ros2Std_msgsMsgFloat64MultiArray readRos2Std_msgsMsgFloat64MultiArray(Codecs.Reader reader)
    {
        Ros2Std_msgsMsgFloat64MultiArray value = new Ros2Std_msgsMsgFloat64MultiArray();
        value.layout = readRos2Std_msgsMsgMultiArrayLayout(reader);
        value.data = new double[readCount(reader, 32, 8)];
        for(int i = 0; i < value.data.length; ++i)
            value.data[i] = reader.f64();
        return value;
    }
}
