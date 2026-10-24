// @brief Complete original kinova ros2_humble canonical values.
// @details UTF-8 limits count bytes and sequence limits count elements. Complete-value codecs retain
// every original field; native registration and manually granted ROS authority are separate. Caller-
// owned values and codec failures are described by each operation and the locale API reference.
package org.uwvm.kinova.ros2humble;

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
         * @brief Duration defines a period between two time points. Messages of this datatype are of ROS Time
         * following this design: https://design.ros2.org/articles/clock_and_time.html The seconds component,
         * valid over all int32 values.
         * @details Original builtin_interfaces/msg/Duration.sec; native type int32. Scalar value. Storage
         * belongs to the complete value and acquires no ROS resource.
         */
        public int sec = 0;
        /**
         * @brief The nanoseconds component, valid in the range [0, 1e9), to be added to the seconds component.
         * e.g. The duration -1.7 seconds is represented as {sec: -2, nanosec: 3e8} The duration 1.7 seconds is
         * represented as {sec: 1, nanosec: 7e8}
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
         * @brief This message communicates ROS Time defined here:
         * https://design.ros2.org/articles/clock_and_time.html The seconds component, valid over all int32
         * values.
         * @details Original builtin_interfaces/msg/Time.sec; native type int32. Scalar value. Storage belongs
         * to the complete value and acquires no ROS resource.
         */
        public int sec = 0;
        /**
         * @brief The nanoseconds component, valid in the range [0, 1e9), to be added to the seconds component.
         * e.g. The time -1.7 seconds is represented as {sec: -2, nanosec: 3e8} The time 1.7 seconds is
         * represented as {sec: 1, nanosec: 7e8}
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

    // @brief Own every original field of std_msgs/msg/Header.
    // @details Canonical extent 12..140 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros2Std_msgsMsgHeader
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "std_msgs/msg/Header";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_ce081e9caac05e464c4cff0da5e94cad44014652c0ddf244ee6c35ac3b0d1e96";
        public static final int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 140;
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
         * @details Original std_msgs/msg/Header.frame_id; native type string. Scalar value. UTF-8 capacity 128
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
        writeText(writer, part1, 128);
    }

    private static Ros2Std_msgsMsgHeader readRos2Std_msgsMsgHeader(Codecs.Reader reader)
    {
        Ros2Std_msgsMsgHeader value = new Ros2Std_msgsMsgHeader();
        value.stamp = readRos2Builtin_interfacesMsgTime(reader);
        value.frame_id = readText(reader, 128);
        return value;
    }

    // @brief Own every original field of trajectory_msgs/msg/JointTrajectoryPoint.
    // @details Canonical extent 24..280 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros2Trajectory_msgsMsgJointTrajectoryPoint
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "trajectory_msgs/msg/JointTrajectoryPoint";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_a512b971211baa8604440e02a046b586e7970293242607002ceb89196c9d99b1";
        public static final int MIN_WIRE_BYTES = 24, MAX_WIRE_BYTES = 280;
        /**
         * @brief Each trajectory point specifies either positions[, velocities[, accelerations]] or
         * positions[, effort] for the trajectory to be executed. All specified values are in the same order as
         * the joint names in JointTrajectory.msg. Single DOF joint positions for each joint relative to their
         * "0" position. The units depend on the specific joint type: radians for revolute or continuous
         * joints, and meters for prismatic joints.
         * @details Original trajectory_msgs/msg/JointTrajectoryPoint.positions; native type float64. At most 8
         * elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
         * acquires no ROS resource.
         */
        public double[] positions = new double[0];
        /**
         * @brief The rate of change in position of each joint. Units are joint type dependent. Radians/second
         * for revolute or continuous joints, and meters/second for prismatic joints.
         * @details Original trajectory_msgs/msg/JointTrajectoryPoint.velocities; native type float64. At most
         * 8 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value
         * and acquires no ROS resource.
         */
        public double[] velocities = new double[0];
        /**
         * @brief Rate of change in velocity of each joint. Units are joint type dependent. Radians/second^2
         * for revolute or continuous joints, and meters/second^2 for prismatic joints.
         * @details Original trajectory_msgs/msg/JointTrajectoryPoint.accelerations; native type float64. At
         * most 8 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete
         * value and acquires no ROS resource.
         */
        public double[] accelerations = new double[0];
        /**
         * @brief The torque or the force to be applied at each joint. For revolute/continuous joints effort
         * denotes a torque in newton-meters. For prismatic joints, effort denotes a force in newtons.
         * @details Original trajectory_msgs/msg/JointTrajectoryPoint.effort; native type float64. At most 8
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
        if(part0 == null || part0.length > 8)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part0.length, 4, false);
        for(int i = 0; i < part0.length; ++i)
        {
            writer.f64(part0[i]);
        }
        double[] part1 = value.velocities;
        if(part1 == null || part1.length > 8)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part1.length, 4, false);
        for(int i = 0; i < part1.length; ++i)
        {
            writer.f64(part1[i]);
        }
        double[] part2 = value.accelerations;
        if(part2 == null || part2.length > 8)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part2.length, 4, false);
        for(int i = 0; i < part2.length; ++i)
        {
            writer.f64(part2[i]);
        }
        double[] part3 = value.effort;
        if(part3 == null || part3.length > 8)
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
        value.positions = new double[readCount(reader, 8, 8)];
        for(int i = 0; i < value.positions.length; ++i)
            value.positions[i] = reader.f64();
        value.velocities = new double[readCount(reader, 8, 8)];
        for(int i = 0; i < value.velocities.length; ++i)
            value.velocities[i] = reader.f64();
        value.accelerations = new double[readCount(reader, 8, 8)];
        for(int i = 0; i < value.accelerations.length; ++i)
            value.accelerations[i] = reader.f64();
        value.effort = new double[readCount(reader, 8, 8)];
        for(int i = 0; i < value.effort.length; ++i)
            value.effort[i] = reader.f64();
        value.time_from_start = readRos2Builtin_interfacesMsgDuration(reader);
        return value;
    }

    // @brief Own every original field of trajectory_msgs/msg/JointTrajectory.
    // @details Canonical extent 20..1484 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros2Trajectory_msgsMsgJointTrajectory
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "trajectory_msgs/msg/JointTrajectory";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_e32bd7016b5fefcab6adeb42072e2d56c45d4b9f7cb372bdb5bfac97abf8cb77";
        public static final int MIN_WIRE_BYTES = 20, MAX_WIRE_BYTES = 1484;
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
         * @details Original trajectory_msgs/msg/JointTrajectory.joint_names; native type string. At most 8
         * elements. UTF-8 capacity 128 bytes; no embedded NUL. Storage belongs to the complete value and
         * acquires no ROS resource.
         */
        public String[] joint_names = new String[0];
        /**
         * @brief Array of trajectory points, which describe the positions, velocities, accelerations and/or
         * efforts of the joints at each time point.
         * @details Original trajectory_msgs/msg/JointTrajectory.points; native type
         * trajectory_msgs/msg/JointTrajectoryPoint. At most 1 elements. Storage belongs to the complete value
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
        if(part1 == null || part1.length > 8)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part1.length, 4, false);
        for(int i = 0; i < part1.length; ++i)
        {
            writeText(writer, part1[i], 128);
        }
        Ros2Trajectory_msgsMsgJointTrajectoryPoint[] part2 = value.points;
        if(part2 == null || part2.length > 1)
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
        value.joint_names = new String[readCount(reader, 8, 4)];
        for(int i = 0; i < value.joint_names.length; ++i)
            value.joint_names[i] = readText(reader, 128);
        value.points = new Ros2Trajectory_msgsMsgJointTrajectoryPoint[readCount(reader, 1, 24)];
        for(int i = 0; i < value.points.length; ++i)
            value.points[i] = readRos2Trajectory_msgsMsgJointTrajectoryPoint(reader);
        return value;
    }

    // @brief Own every original field of geometry_msgs/msg/Vector3.
    // @details Canonical extent 24..24 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros2Geometry_msgsMsgVector3
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "geometry_msgs/msg/Vector3";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_5adebf211fe375fba92c0628f9b8ebf05bff9ab22ddc4bbf00629167af295d5e";
        public static final int MIN_WIRE_BYTES = 24, MAX_WIRE_BYTES = 24;
        /**
         * @brief This represents a vector in free space. This is semantically different than a point. A vector
         * is always anchored at the origin. When a transform is applied to a vector, only the rotational
         * component is applied.
         * @details Original geometry_msgs/msg/Vector3.x; native type float64. Scalar value. Finite IEEE
         * values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double x = 0;
        /**
         * @brief Retain the complete original float64 field.
         * @details Original geometry_msgs/msg/Vector3.y; native type float64. Scalar value. Finite IEEE
         * values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double y = 0;
        /**
         * @brief Retain the complete original float64 field.
         * @details Original geometry_msgs/msg/Vector3.z; native type float64. Scalar value. Finite IEEE
         * values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double z = 0;

        public Ros2Geometry_msgsMsgVector3()
        {
        }

        public static final Codec<Ros2Geometry_msgsMsgVector3> CODEC = new Codec<Ros2Geometry_msgsMsgVector3>() {
            public byte[] encode(Ros2Geometry_msgsMsgVector3 value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Geometry_msgsMsgVector3(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Geometry_msgsMsgVector3 decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Geometry_msgsMsgVector3 value = readRos2Geometry_msgsMsgVector3(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Geometry_msgsMsgVector3(Codecs.Writer writer, Ros2Geometry_msgsMsgVector3 value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        double part0 = value.x;
        writer.f64(part0);
        double part1 = value.y;
        writer.f64(part1);
        double part2 = value.z;
        writer.f64(part2);
    }

    private static Ros2Geometry_msgsMsgVector3 readRos2Geometry_msgsMsgVector3(Codecs.Reader reader)
    {
        Ros2Geometry_msgsMsgVector3 value = new Ros2Geometry_msgsMsgVector3();
        value.x = reader.f64();
        value.y = reader.f64();
        value.z = reader.f64();
        return value;
    }

    // @brief Own every original field of geometry_msgs/msg/Quaternion.
    // @details Canonical extent 32..32 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros2Geometry_msgsMsgQuaternion
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "geometry_msgs/msg/Quaternion";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_34a32c3470cbfe2ff12340781a5bf22f6c370a8f5c06669f25a34321ade81672";
        public static final int MIN_WIRE_BYTES = 32, MAX_WIRE_BYTES = 32;
        /**
         * @brief This represents an orientation in free space in quaternion form.
         * @details Original geometry_msgs/msg/Quaternion.x; native type float64. Scalar value. Declared
         * original default 0.0. Finite IEEE values; no implicit unit conversion. Storage belongs to the
         * complete value and acquires no ROS resource.
         */
        public double x = Double.longBitsToDouble(0x0000000000000000L);
        /**
         * @brief Retain the complete original float64 field.
         * @details Original geometry_msgs/msg/Quaternion.y; native type float64. Scalar value. Declared
         * original default 0.0. Finite IEEE values; no implicit unit conversion. Storage belongs to the
         * complete value and acquires no ROS resource.
         */
        public double y = Double.longBitsToDouble(0x0000000000000000L);
        /**
         * @brief Retain the complete original float64 field.
         * @details Original geometry_msgs/msg/Quaternion.z; native type float64. Scalar value. Declared
         * original default 0.0. Finite IEEE values; no implicit unit conversion. Storage belongs to the
         * complete value and acquires no ROS resource.
         */
        public double z = Double.longBitsToDouble(0x0000000000000000L);
        /**
         * @brief Retain the complete original float64 field.
         * @details Original geometry_msgs/msg/Quaternion.w; native type float64. Scalar value. Declared
         * original default 1.0. Finite IEEE values; no implicit unit conversion. Storage belongs to the
         * complete value and acquires no ROS resource.
         */
        public double w = Double.longBitsToDouble(0x3ff0000000000000L);

        public Ros2Geometry_msgsMsgQuaternion()
        {
        }

        public static final Codec<Ros2Geometry_msgsMsgQuaternion> CODEC = new Codec<Ros2Geometry_msgsMsgQuaternion>() {
            public byte[] encode(Ros2Geometry_msgsMsgQuaternion value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Geometry_msgsMsgQuaternion(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Geometry_msgsMsgQuaternion decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Geometry_msgsMsgQuaternion value = readRos2Geometry_msgsMsgQuaternion(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Geometry_msgsMsgQuaternion(Codecs.Writer writer, Ros2Geometry_msgsMsgQuaternion value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        double part0 = value.x;
        writer.f64(part0);
        double part1 = value.y;
        writer.f64(part1);
        double part2 = value.z;
        writer.f64(part2);
        double part3 = value.w;
        writer.f64(part3);
    }

    private static Ros2Geometry_msgsMsgQuaternion readRos2Geometry_msgsMsgQuaternion(Codecs.Reader reader)
    {
        Ros2Geometry_msgsMsgQuaternion value = new Ros2Geometry_msgsMsgQuaternion();
        value.x = reader.f64();
        value.y = reader.f64();
        value.z = reader.f64();
        value.w = reader.f64();
        return value;
    }

    // @brief Own every original field of geometry_msgs/msg/Transform.
    // @details Canonical extent 56..56 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros2Geometry_msgsMsgTransform
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "geometry_msgs/msg/Transform";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_7ddcb1c3fca43f4a0299d43fb6fac1b77a8f26001af809dc13307f4f9c61d65b";
        public static final int MIN_WIRE_BYTES = 56, MAX_WIRE_BYTES = 56;
        /**
         * @brief This represents the transform between two coordinate frames in free space.
         * @details Original geometry_msgs/msg/Transform.translation; native type geometry_msgs/msg/Vector3.
         * Scalar value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public Ros2Geometry_msgsMsgVector3 translation = new Ros2Geometry_msgsMsgVector3();
        /**
         * @brief Retain the complete original geometry_msgs/msg/Quaternion field.
         * @details Original geometry_msgs/msg/Transform.rotation; native type geometry_msgs/msg/Quaternion.
         * Scalar value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public Ros2Geometry_msgsMsgQuaternion rotation = new Ros2Geometry_msgsMsgQuaternion();

        public Ros2Geometry_msgsMsgTransform()
        {
        }

        public static final Codec<Ros2Geometry_msgsMsgTransform> CODEC = new Codec<Ros2Geometry_msgsMsgTransform>() {
            public byte[] encode(Ros2Geometry_msgsMsgTransform value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Geometry_msgsMsgTransform(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Geometry_msgsMsgTransform decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Geometry_msgsMsgTransform value = readRos2Geometry_msgsMsgTransform(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Geometry_msgsMsgTransform(Codecs.Writer writer, Ros2Geometry_msgsMsgTransform value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Geometry_msgsMsgVector3 part0 = value.translation;
        writeRos2Geometry_msgsMsgVector3(writer, part0);
        Ros2Geometry_msgsMsgQuaternion part1 = value.rotation;
        writeRos2Geometry_msgsMsgQuaternion(writer, part1);
    }

    private static Ros2Geometry_msgsMsgTransform readRos2Geometry_msgsMsgTransform(Codecs.Reader reader)
    {
        Ros2Geometry_msgsMsgTransform value = new Ros2Geometry_msgsMsgTransform();
        value.translation = readRos2Geometry_msgsMsgVector3(reader);
        value.rotation = readRos2Geometry_msgsMsgQuaternion(reader);
        return value;
    }

    // @brief Own every original field of geometry_msgs/msg/Twist.
    // @details Canonical extent 48..48 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros2Geometry_msgsMsgTwist
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "geometry_msgs/msg/Twist";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_1a6c18d19bb6853a2cff3b775974ba31f8e3674c1bbe566444ccabf0ef9d117e";
        public static final int MIN_WIRE_BYTES = 48, MAX_WIRE_BYTES = 48;
        /**
         * @brief This expresses velocity in free space broken into its linear and angular parts.
         * @details Original geometry_msgs/msg/Twist.linear; native type geometry_msgs/msg/Vector3. Scalar
         * value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public Ros2Geometry_msgsMsgVector3 linear = new Ros2Geometry_msgsMsgVector3();
        /**
         * @brief Retain the complete original geometry_msgs/msg/Vector3 field.
         * @details Original geometry_msgs/msg/Twist.angular; native type geometry_msgs/msg/Vector3. Scalar
         * value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public Ros2Geometry_msgsMsgVector3 angular = new Ros2Geometry_msgsMsgVector3();

        public Ros2Geometry_msgsMsgTwist()
        {
        }

        public static final Codec<Ros2Geometry_msgsMsgTwist> CODEC = new Codec<Ros2Geometry_msgsMsgTwist>() {
            public byte[] encode(Ros2Geometry_msgsMsgTwist value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Geometry_msgsMsgTwist(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Geometry_msgsMsgTwist decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Geometry_msgsMsgTwist value = readRos2Geometry_msgsMsgTwist(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Geometry_msgsMsgTwist(Codecs.Writer writer, Ros2Geometry_msgsMsgTwist value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Geometry_msgsMsgVector3 part0 = value.linear;
        writeRos2Geometry_msgsMsgVector3(writer, part0);
        Ros2Geometry_msgsMsgVector3 part1 = value.angular;
        writeRos2Geometry_msgsMsgVector3(writer, part1);
    }

    private static Ros2Geometry_msgsMsgTwist readRos2Geometry_msgsMsgTwist(Codecs.Reader reader)
    {
        Ros2Geometry_msgsMsgTwist value = new Ros2Geometry_msgsMsgTwist();
        value.linear = readRos2Geometry_msgsMsgVector3(reader);
        value.angular = readRos2Geometry_msgsMsgVector3(reader);
        return value;
    }

    // @brief Own every original field of trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.
    // @details Canonical extent 20..844 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "trajectory_msgs/msg/MultiDOFJointTrajectoryPoint";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_4b4b6ba78f11918fcdc138544f7ef1a140d1fc51b385349ab1ad5716472c3daf";
        public static final int MIN_WIRE_BYTES = 20, MAX_WIRE_BYTES = 844;
        /**
         * @brief Each multi-dof joint can specify a transform (up to 6 DOF).
         * @details Original trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.transforms; native type
         * geometry_msgs/msg/Transform. At most 1 elements. Storage belongs to the complete value and acquires
         * no ROS resource.
         */
        public Ros2Geometry_msgsMsgTransform[] transforms = new Ros2Geometry_msgsMsgTransform[0];
        /**
         * @brief There can be a velocity specified for the origin of the joint.
         * @details Original trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.velocities; native type
         * geometry_msgs/msg/Twist. At most 8 elements. Storage belongs to the complete value and acquires no
         * ROS resource.
         */
        public Ros2Geometry_msgsMsgTwist[] velocities = new Ros2Geometry_msgsMsgTwist[0];
        /**
         * @brief There can be an acceleration specified for the origin of the joint.
         * @details Original trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.accelerations; native type
         * geometry_msgs/msg/Twist. At most 8 elements. Storage belongs to the complete value and acquires no
         * ROS resource.
         */
        public Ros2Geometry_msgsMsgTwist[] accelerations = new Ros2Geometry_msgsMsgTwist[0];
        /**
         * @brief Desired time from the trajectory start to arrive at this trajectory point.
         * @details Original trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.time_from_start; native type
         * builtin_interfaces/msg/Duration. Scalar value. Storage belongs to the complete value and acquires no
         * ROS resource.
         */
        public Ros2Builtin_interfacesMsgDuration time_from_start = new Ros2Builtin_interfacesMsgDuration();

        public Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint()
        {
        }

        public static final Codec<Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint> CODEC = new Codec<Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint>() {
            public byte[] encode(Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint value = readRos2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint(Codecs.Writer writer, Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Geometry_msgsMsgTransform[] part0 = value.transforms;
        if(part0 == null || part0.length > 1)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part0.length, 4, false);
        for(int i = 0; i < part0.length; ++i)
        {
            writeRos2Geometry_msgsMsgTransform(writer, part0[i]);
        }
        Ros2Geometry_msgsMsgTwist[] part1 = value.velocities;
        if(part1 == null || part1.length > 8)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part1.length, 4, false);
        for(int i = 0; i < part1.length; ++i)
        {
            writeRos2Geometry_msgsMsgTwist(writer, part1[i]);
        }
        Ros2Geometry_msgsMsgTwist[] part2 = value.accelerations;
        if(part2 == null || part2.length > 8)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part2.length, 4, false);
        for(int i = 0; i < part2.length; ++i)
        {
            writeRos2Geometry_msgsMsgTwist(writer, part2[i]);
        }
        Ros2Builtin_interfacesMsgDuration part3 = value.time_from_start;
        writeRos2Builtin_interfacesMsgDuration(writer, part3);
    }

    private static Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint readRos2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint(Codecs.Reader reader)
    {
        Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint value = new Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint();
        value.transforms = new Ros2Geometry_msgsMsgTransform[readCount(reader, 1, 56)];
        for(int i = 0; i < value.transforms.length; ++i)
            value.transforms[i] = readRos2Geometry_msgsMsgTransform(reader);
        value.velocities = new Ros2Geometry_msgsMsgTwist[readCount(reader, 8, 48)];
        for(int i = 0; i < value.velocities.length; ++i)
            value.velocities[i] = readRos2Geometry_msgsMsgTwist(reader);
        value.accelerations = new Ros2Geometry_msgsMsgTwist[readCount(reader, 8, 48)];
        for(int i = 0; i < value.accelerations.length; ++i)
            value.accelerations[i] = readRos2Geometry_msgsMsgTwist(reader);
        value.time_from_start = readRos2Builtin_interfacesMsgDuration(reader);
        return value;
    }

    // @brief Own every original field of trajectory_msgs/msg/MultiDOFJointTrajectory.
    // @details Canonical extent 20..2048 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros2Trajectory_msgsMsgMultiDOFJointTrajectory
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "trajectory_msgs/msg/MultiDOFJointTrajectory";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_b822a2d5db9b83e916dcc9db4932952a314773ef53c9fbaf825902e0eb7c8cb5";
        public static final int MIN_WIRE_BYTES = 20, MAX_WIRE_BYTES = 2048;
        /**
         * @brief The header is used to specify the coordinate frame and the reference time for the trajectory
         * durations
         * @details Original trajectory_msgs/msg/MultiDOFJointTrajectory.header; native type
         * std_msgs/msg/Header. Scalar value. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public Ros2Std_msgsMsgHeader header = new Ros2Std_msgsMsgHeader();
        /**
         * @brief A representation of a multi-dof joint trajectory (each point is a transformation) Each point
         * along the trajectory will include an array of positions/velocities/accelerations that has the same
         * length as the array of joint names, and has the same order of joints as the joint names array.
         * @details Original trajectory_msgs/msg/MultiDOFJointTrajectory.joint_names; native type string. At
         * most 8 elements. UTF-8 capacity 128 bytes; no embedded NUL. Storage belongs to the complete value
         * and acquires no ROS resource.
         */
        public String[] joint_names = new String[0];
        /**
         * @brief Retain the complete original trajectory_msgs/msg/MultiDOFJointTrajectoryPoint field.
         * @details Original trajectory_msgs/msg/MultiDOFJointTrajectory.points; native type
         * trajectory_msgs/msg/MultiDOFJointTrajectoryPoint. At most 1 elements. Storage belongs to the
         * complete value and acquires no ROS resource.
         */
        public Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint[] points = new Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint[0];

        public Ros2Trajectory_msgsMsgMultiDOFJointTrajectory()
        {
        }

        public static final Codec<Ros2Trajectory_msgsMsgMultiDOFJointTrajectory> CODEC = new Codec<Ros2Trajectory_msgsMsgMultiDOFJointTrajectory>() {
            public byte[] encode(Ros2Trajectory_msgsMsgMultiDOFJointTrajectory value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Trajectory_msgsMsgMultiDOFJointTrajectory(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Trajectory_msgsMsgMultiDOFJointTrajectory decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Trajectory_msgsMsgMultiDOFJointTrajectory value = readRos2Trajectory_msgsMsgMultiDOFJointTrajectory(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Trajectory_msgsMsgMultiDOFJointTrajectory(Codecs.Writer writer, Ros2Trajectory_msgsMsgMultiDOFJointTrajectory value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Std_msgsMsgHeader part0 = value.header;
        writeRos2Std_msgsMsgHeader(writer, part0);
        String[] part1 = value.joint_names;
        if(part1 == null || part1.length > 8)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part1.length, 4, false);
        for(int i = 0; i < part1.length; ++i)
        {
            writeText(writer, part1[i], 128);
        }
        Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint[] part2 = value.points;
        if(part2 == null || part2.length > 1)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part2.length, 4, false);
        for(int i = 0; i < part2.length; ++i)
        {
            writeRos2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint(writer, part2[i]);
        }
    }

    private static Ros2Trajectory_msgsMsgMultiDOFJointTrajectory readRos2Trajectory_msgsMsgMultiDOFJointTrajectory(Codecs.Reader reader)
    {
        Ros2Trajectory_msgsMsgMultiDOFJointTrajectory value = new Ros2Trajectory_msgsMsgMultiDOFJointTrajectory();
        value.header = readRos2Std_msgsMsgHeader(reader);
        value.joint_names = new String[readCount(reader, 8, 4)];
        for(int i = 0; i < value.joint_names.length; ++i)
            value.joint_names[i] = readText(reader, 128);
        value.points = new Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint[readCount(reader, 1, 20)];
        for(int i = 0; i < value.points.length; ++i)
            value.points[i] = readRos2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint(reader);
        return value;
    }

    // @brief Own every original field of control_msgs/msg/JointTolerance.
    // @details Canonical extent 28..156 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros2Control_msgsMsgJointTolerance
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "control_msgs/msg/JointTolerance";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_3864af88029b3b1f51907b3da63d2d821104c29b9469a146a5a34f73f3598b8a";
        public static final int MIN_WIRE_BYTES = 28, MAX_WIRE_BYTES = 156;
        /**
         * @brief The tolerances specify the amount the position, velocity, and accelerations can vary from the
         * setpoints.  For example, in the case of trajectory control, when the actual position varies beyond
         * (desired position + position tolerance), the trajectory goal may abort.  There are two special
         * values for tolerances: * 0 - The tolerance is unspecified and will remain at whatever the default is
         * * -1 - The tolerance is "erased".  If there was a default, the joint will be allowed to move without
         * restriction.
         * @details Original control_msgs/msg/JointTolerance.name; native type string. Scalar value. UTF-8
         * capacity 128 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public String name = "";
        /**
         * @brief in radians or meters (for a revolute or prismatic joint, respectively)
         * @details Original control_msgs/msg/JointTolerance.position; native type float64. Scalar value.
         * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
         * no ROS resource.
         */
        public double position = 0;
        /**
         * @brief in rad/sec or m/sec
         * @details Original control_msgs/msg/JointTolerance.velocity; native type float64. Scalar value.
         * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
         * no ROS resource.
         */
        public double velocity = 0;
        /**
         * @brief in rad/sec^2 or m/sec^2
         * @details Original control_msgs/msg/JointTolerance.acceleration; native type float64. Scalar value.
         * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
         * no ROS resource.
         */
        public double acceleration = 0;

        public Ros2Control_msgsMsgJointTolerance()
        {
        }

        public static final Codec<Ros2Control_msgsMsgJointTolerance> CODEC = new Codec<Ros2Control_msgsMsgJointTolerance>() {
            public byte[] encode(Ros2Control_msgsMsgJointTolerance value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Control_msgsMsgJointTolerance(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Control_msgsMsgJointTolerance decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Control_msgsMsgJointTolerance value = readRos2Control_msgsMsgJointTolerance(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Control_msgsMsgJointTolerance(Codecs.Writer writer, Ros2Control_msgsMsgJointTolerance value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String part0 = value.name;
        writeText(writer, part0, 128);
        double part1 = value.position;
        writer.f64(part1);
        double part2 = value.velocity;
        writer.f64(part2);
        double part3 = value.acceleration;
        writer.f64(part3);
    }

    private static Ros2Control_msgsMsgJointTolerance readRos2Control_msgsMsgJointTolerance(Codecs.Reader reader)
    {
        Ros2Control_msgsMsgJointTolerance value = new Ros2Control_msgsMsgJointTolerance();
        value.name = readText(reader, 128);
        value.position = reader.f64();
        value.velocity = reader.f64();
        value.acceleration = reader.f64();
        return value;
    }

    // @brief Own every original field of control_msgs/msg/JointComponentTolerance.
    // @details Canonical extent 30..158 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros2Control_msgsMsgJointComponentTolerance
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "control_msgs/msg/JointComponentTolerance";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_8a10f659b38feae6dfcf89818d35a164743b02c0e5cfe2d86aae7eda56e914fb";
        public static final int MIN_WIRE_BYTES = 30, MAX_WIRE_BYTES = 158;
        /**
         * @brief Retain the complete original string field.
         * @details Original control_msgs/msg/JointComponentTolerance.joint_name; native type string. Scalar
         * value. UTF-8 capacity 128 bytes; no embedded NUL. Storage belongs to the complete value and acquires
         * no ROS resource.
         */
        public String joint_name = "";
        /**
         * @brief Retain the complete original uint16 field.
         * @details Original control_msgs/msg/JointComponentTolerance.component; native type uint16. Scalar
         * value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public int component = 0;
        /**
         * @brief Retain the complete original float64 field.
         * @details Original control_msgs/msg/JointComponentTolerance.position; native type float64. Scalar
         * value. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
         * acquires no ROS resource.
         */
        public double position = 0;
        /**
         * @brief Retain the complete original float64 field.
         * @details Original control_msgs/msg/JointComponentTolerance.velocity; native type float64. Scalar
         * value. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
         * acquires no ROS resource.
         */
        public double velocity = 0;
        /**
         * @brief Retain the complete original float64 field.
         * @details Original control_msgs/msg/JointComponentTolerance.acceleration; native type float64. Scalar
         * value. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
         * acquires no ROS resource.
         */
        public double acceleration = 0;

        public Ros2Control_msgsMsgJointComponentTolerance()
        {
        }

        public static final Codec<Ros2Control_msgsMsgJointComponentTolerance> CODEC = new Codec<Ros2Control_msgsMsgJointComponentTolerance>() {
            public byte[] encode(Ros2Control_msgsMsgJointComponentTolerance value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Control_msgsMsgJointComponentTolerance(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Control_msgsMsgJointComponentTolerance decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Control_msgsMsgJointComponentTolerance value = readRos2Control_msgsMsgJointComponentTolerance(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Control_msgsMsgJointComponentTolerance(Codecs.Writer writer, Ros2Control_msgsMsgJointComponentTolerance value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String part0 = value.joint_name;
        writeText(writer, part0, 128);
        int part1 = value.component;
        writer.integer(part1, 2, false);
        double part2 = value.position;
        writer.f64(part2);
        double part3 = value.velocity;
        writer.f64(part3);
        double part4 = value.acceleration;
        writer.f64(part4);
    }

    private static Ros2Control_msgsMsgJointComponentTolerance readRos2Control_msgsMsgJointComponentTolerance(Codecs.Reader reader)
    {
        Ros2Control_msgsMsgJointComponentTolerance value = new Ros2Control_msgsMsgJointComponentTolerance();
        value.joint_name = readText(reader, 128);
        value.component = (int)reader.integer(2, false);
        value.position = reader.f64();
        value.velocity = reader.f64();
        value.acceleration = reader.f64();
        return value;
    }

    // @brief Own every original field of control_msgs/action/FollowJointTrajectory_Goal.
    // @details Canonical extent 64..8580 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros2Control_msgsActionFollowJointTrajectory_Goal
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "control_msgs/action/FollowJointTrajectory_Goal";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_fa8334eb129cc91c50febaccfebb371f6fbdd82188d6301823344d6664300018";
        public static final int MIN_WIRE_BYTES = 64, MAX_WIRE_BYTES = 8580;
        /**
         * @brief The trajectory for all revolute, continuous or prismatic joints
         * @details Original control_msgs/action/FollowJointTrajectory_Goal.trajectory; native type
         * trajectory_msgs/msg/JointTrajectory. Scalar value. Storage belongs to the complete value and
         * acquires no ROS resource.
         */
        public Ros2Trajectory_msgsMsgJointTrajectory trajectory = new Ros2Trajectory_msgsMsgJointTrajectory();
        /**
         * @brief The trajectory for all planar or floating joints (i.e. individual joints with more than one
         * DOF)
         * @details Original control_msgs/action/FollowJointTrajectory_Goal.multi_dof_trajectory; native type
         * trajectory_msgs/msg/MultiDOFJointTrajectory. Scalar value. Storage belongs to the complete value and
         * acquires no ROS resource.
         */
        public Ros2Trajectory_msgsMsgMultiDOFJointTrajectory multi_dof_trajectory = new Ros2Trajectory_msgsMsgMultiDOFJointTrajectory();
        /**
         * @brief Tolerances for the trajectory.  If the measured joint values fall outside the tolerances the
         * trajectory goal is aborted.  Any tolerances that are not specified (by being omitted or set to 0)
         * are set to the defaults for the action server (often taken from the parameter server). Tolerances
         * applied to the joints as the trajectory is executed.  If violated, the goal aborts with error_code
         * set to PATH_TOLERANCE_VIOLATED.
         * @details Original control_msgs/action/FollowJointTrajectory_Goal.path_tolerance; native type
         * control_msgs/msg/JointTolerance. At most 8 elements. Storage belongs to the complete value and
         * acquires no ROS resource.
         */
        public Ros2Control_msgsMsgJointTolerance[] path_tolerance = new Ros2Control_msgsMsgJointTolerance[0];
        /**
         * @brief Retain the complete original control_msgs/msg/JointComponentTolerance field.
         * @details Original control_msgs/action/FollowJointTrajectory_Goal.component_path_tolerance; native
         * type control_msgs/msg/JointComponentTolerance. At most 8 elements. Storage belongs to the complete
         * value and acquires no ROS resource.
         */
        public Ros2Control_msgsMsgJointComponentTolerance[] component_path_tolerance = new Ros2Control_msgsMsgJointComponentTolerance[0];
        /**
         * @brief To report success, the joints must be within goal_tolerance of the final trajectory value.
         * The goal must be achieved by time the trajectory ends plus goal_time_tolerance.
         * (goal_time_tolerance allows some leeway in time, so that the trajectory goal can still succeed even
         * if the joints reach the goal some time after the precise end time of the trajectory).  If the joints
         * are not within goal_tolerance after "trajectory finish time" + goal_time_tolerance, the goal aborts
         * with error_code set to GOAL_TOLERANCE_VIOLATED
         * @details Original control_msgs/action/FollowJointTrajectory_Goal.goal_tolerance; native type
         * control_msgs/msg/JointTolerance. At most 8 elements. Storage belongs to the complete value and
         * acquires no ROS resource.
         */
        public Ros2Control_msgsMsgJointTolerance[] goal_tolerance = new Ros2Control_msgsMsgJointTolerance[0];
        /**
         * @brief Retain the complete original control_msgs/msg/JointComponentTolerance field.
         * @details Original control_msgs/action/FollowJointTrajectory_Goal.component_goal_tolerance; native
         * type control_msgs/msg/JointComponentTolerance. At most 8 elements. Storage belongs to the complete
         * value and acquires no ROS resource.
         */
        public Ros2Control_msgsMsgJointComponentTolerance[] component_goal_tolerance = new Ros2Control_msgsMsgJointComponentTolerance[0];
        /**
         * @brief Retain the complete original builtin_interfaces/msg/Duration field.
         * @details Original control_msgs/action/FollowJointTrajectory_Goal.goal_time_tolerance; native type
         * builtin_interfaces/msg/Duration. Scalar value. Storage belongs to the complete value and acquires no
         * ROS resource.
         */
        public Ros2Builtin_interfacesMsgDuration goal_time_tolerance = new Ros2Builtin_interfacesMsgDuration();

        public Ros2Control_msgsActionFollowJointTrajectory_Goal()
        {
        }

        public static final Codec<Ros2Control_msgsActionFollowJointTrajectory_Goal> CODEC = new Codec<Ros2Control_msgsActionFollowJointTrajectory_Goal>() {
            public byte[] encode(Ros2Control_msgsActionFollowJointTrajectory_Goal value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Control_msgsActionFollowJointTrajectory_Goal(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Control_msgsActionFollowJointTrajectory_Goal decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Control_msgsActionFollowJointTrajectory_Goal value = readRos2Control_msgsActionFollowJointTrajectory_Goal(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Control_msgsActionFollowJointTrajectory_Goal(Codecs.Writer writer, Ros2Control_msgsActionFollowJointTrajectory_Goal value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Trajectory_msgsMsgJointTrajectory part0 = value.trajectory;
        writeRos2Trajectory_msgsMsgJointTrajectory(writer, part0);
        Ros2Trajectory_msgsMsgMultiDOFJointTrajectory part1 = value.multi_dof_trajectory;
        writeRos2Trajectory_msgsMsgMultiDOFJointTrajectory(writer, part1);
        Ros2Control_msgsMsgJointTolerance[] part2 = value.path_tolerance;
        if(part2 == null || part2.length > 8)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part2.length, 4, false);
        for(int i = 0; i < part2.length; ++i)
        {
            writeRos2Control_msgsMsgJointTolerance(writer, part2[i]);
        }
        Ros2Control_msgsMsgJointComponentTolerance[] part3 = value.component_path_tolerance;
        if(part3 == null || part3.length > 8)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part3.length, 4, false);
        for(int i = 0; i < part3.length; ++i)
        {
            writeRos2Control_msgsMsgJointComponentTolerance(writer, part3[i]);
        }
        Ros2Control_msgsMsgJointTolerance[] part4 = value.goal_tolerance;
        if(part4 == null || part4.length > 8)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part4.length, 4, false);
        for(int i = 0; i < part4.length; ++i)
        {
            writeRos2Control_msgsMsgJointTolerance(writer, part4[i]);
        }
        Ros2Control_msgsMsgJointComponentTolerance[] part5 = value.component_goal_tolerance;
        if(part5 == null || part5.length > 8)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part5.length, 4, false);
        for(int i = 0; i < part5.length; ++i)
        {
            writeRos2Control_msgsMsgJointComponentTolerance(writer, part5[i]);
        }
        Ros2Builtin_interfacesMsgDuration part6 = value.goal_time_tolerance;
        writeRos2Builtin_interfacesMsgDuration(writer, part6);
    }

    private static Ros2Control_msgsActionFollowJointTrajectory_Goal readRos2Control_msgsActionFollowJointTrajectory_Goal(Codecs.Reader reader)
    {
        Ros2Control_msgsActionFollowJointTrajectory_Goal value = new Ros2Control_msgsActionFollowJointTrajectory_Goal();
        value.trajectory = readRos2Trajectory_msgsMsgJointTrajectory(reader);
        value.multi_dof_trajectory = readRos2Trajectory_msgsMsgMultiDOFJointTrajectory(reader);
        value.path_tolerance = new Ros2Control_msgsMsgJointTolerance[readCount(reader, 8, 28)];
        for(int i = 0; i < value.path_tolerance.length; ++i)
            value.path_tolerance[i] = readRos2Control_msgsMsgJointTolerance(reader);
        value.component_path_tolerance = new Ros2Control_msgsMsgJointComponentTolerance[readCount(reader, 8, 30)];
        for(int i = 0; i < value.component_path_tolerance.length; ++i)
            value.component_path_tolerance[i] = readRos2Control_msgsMsgJointComponentTolerance(reader);
        value.goal_tolerance = new Ros2Control_msgsMsgJointTolerance[readCount(reader, 8, 28)];
        for(int i = 0; i < value.goal_tolerance.length; ++i)
            value.goal_tolerance[i] = readRos2Control_msgsMsgJointTolerance(reader);
        value.component_goal_tolerance = new Ros2Control_msgsMsgJointComponentTolerance[readCount(reader, 8, 30)];
        for(int i = 0; i < value.component_goal_tolerance.length; ++i)
            value.component_goal_tolerance[i] = readRos2Control_msgsMsgJointComponentTolerance(reader);
        value.goal_time_tolerance = readRos2Builtin_interfacesMsgDuration(reader);
        return value;
    }

    // @brief Own every original field of control_msgs/action/FollowJointTrajectory_Result.
    // @details Canonical extent 8..264 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros2Control_msgsActionFollowJointTrajectory_Result
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "control_msgs/action/FollowJointTrajectory_Result";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_df1e08076a5c725b865cc8807462d9ccf9577df11cbb71fcc0d280d77d0e5649";
        public static final int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 264;
        /**
         * @brief Retain the complete original int32 field.
         * @details Original control_msgs/action/FollowJointTrajectory_Result.error_code; native type int32.
         * Scalar value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public int error_code = 0;
        /**
         * @brief Human readable description of the error code. Contains complementary information that is
         * especially useful when execution fails, for instance: - INVALID_GOAL: The reason for the invalid
         * goal (e.g., the requested trajectory is in the past). - INVALID_JOINTS: The mismatch between the
         * expected controller joints and those provided in the goal. - PATH_TOLERANCE_VIOLATED and
         * GOAL_TOLERANCE_VIOLATED: Which joint violated which tolerance, and by how much.
         * @details Original control_msgs/action/FollowJointTrajectory_Result.error_string; native type string.
         * Scalar value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and
         * acquires no ROS resource.
         */
        public String error_string = "";

        public Ros2Control_msgsActionFollowJointTrajectory_Result()
        {
        }

        public static final Codec<Ros2Control_msgsActionFollowJointTrajectory_Result> CODEC = new Codec<Ros2Control_msgsActionFollowJointTrajectory_Result>() {
            public byte[] encode(Ros2Control_msgsActionFollowJointTrajectory_Result value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Control_msgsActionFollowJointTrajectory_Result(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Control_msgsActionFollowJointTrajectory_Result decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Control_msgsActionFollowJointTrajectory_Result value = readRos2Control_msgsActionFollowJointTrajectory_Result(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Control_msgsActionFollowJointTrajectory_Result(Codecs.Writer writer, Ros2Control_msgsActionFollowJointTrajectory_Result value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int part0 = value.error_code;
        writer.integer(part0, 4, true);
        String part1 = value.error_string;
        writeText(writer, part1, 256);
    }

    private static Ros2Control_msgsActionFollowJointTrajectory_Result readRos2Control_msgsActionFollowJointTrajectory_Result(Codecs.Reader reader)
    {
        Ros2Control_msgsActionFollowJointTrajectory_Result value = new Ros2Control_msgsActionFollowJointTrajectory_Result();
        value.error_code = (int)reader.integer(4, true);
        value.error_string = readText(reader, 256);
        return value;
    }

    // @brief Own every original field of control_msgs/action/FollowJointTrajectory_Feedback.
    // @details Canonical extent 152..4708 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros2Control_msgsActionFollowJointTrajectory_Feedback
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "control_msgs/action/FollowJointTrajectory_Feedback";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_ae2175027c3e45997d272b9610d15ef52cc665d23c0a371892d10b3d100e3529";
        public static final int MIN_WIRE_BYTES = 152, MAX_WIRE_BYTES = 4708;
        /**
         * @brief Retain the complete original std_msgs/msg/Header field.
         * @details Original control_msgs/action/FollowJointTrajectory_Feedback.header; native type
         * std_msgs/msg/Header. Scalar value. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public Ros2Std_msgsMsgHeader header = new Ros2Std_msgsMsgHeader();
        /**
         * @brief Retain the complete original string field.
         * @details Original control_msgs/action/FollowJointTrajectory_Feedback.joint_names; native type
         * string. At most 8 elements. UTF-8 capacity 128 bytes; no embedded NUL. Storage belongs to the
         * complete value and acquires no ROS resource.
         */
        public String[] joint_names = new String[0];
        /**
         * @brief Retain the complete original trajectory_msgs/msg/JointTrajectoryPoint field.
         * @details Original control_msgs/action/FollowJointTrajectory_Feedback.desired; native type
         * trajectory_msgs/msg/JointTrajectoryPoint. Scalar value. Storage belongs to the complete value and
         * acquires no ROS resource.
         */
        public Ros2Trajectory_msgsMsgJointTrajectoryPoint desired = new Ros2Trajectory_msgsMsgJointTrajectoryPoint();
        /**
         * @brief Retain the complete original trajectory_msgs/msg/JointTrajectoryPoint field.
         * @details Original control_msgs/action/FollowJointTrajectory_Feedback.actual; native type
         * trajectory_msgs/msg/JointTrajectoryPoint. Scalar value. Storage belongs to the complete value and
         * acquires no ROS resource.
         */
        public Ros2Trajectory_msgsMsgJointTrajectoryPoint actual = new Ros2Trajectory_msgsMsgJointTrajectoryPoint();
        /**
         * @brief Retain the complete original trajectory_msgs/msg/JointTrajectoryPoint field.
         * @details Original control_msgs/action/FollowJointTrajectory_Feedback.error; native type
         * trajectory_msgs/msg/JointTrajectoryPoint. Scalar value. Storage belongs to the complete value and
         * acquires no ROS resource.
         */
        public Ros2Trajectory_msgsMsgJointTrajectoryPoint error = new Ros2Trajectory_msgsMsgJointTrajectoryPoint();
        /**
         * @brief Retain the complete original string field.
         * @details Original control_msgs/action/FollowJointTrajectory_Feedback.multi_dof_joint_names; native
         * type string. At most 1 elements. UTF-8 capacity 128 bytes; no embedded NUL. Storage belongs to the
         * complete value and acquires no ROS resource.
         */
        public String[] multi_dof_joint_names = new String[0];
        /**
         * @brief Retain the complete original trajectory_msgs/msg/MultiDOFJointTrajectoryPoint field.
         * @details Original control_msgs/action/FollowJointTrajectory_Feedback.multi_dof_desired; native type
         * trajectory_msgs/msg/MultiDOFJointTrajectoryPoint. Scalar value. Storage belongs to the complete
         * value and acquires no ROS resource.
         */
        public Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint multi_dof_desired = new Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint();
        /**
         * @brief Retain the complete original trajectory_msgs/msg/MultiDOFJointTrajectoryPoint field.
         * @details Original control_msgs/action/FollowJointTrajectory_Feedback.multi_dof_actual; native type
         * trajectory_msgs/msg/MultiDOFJointTrajectoryPoint. Scalar value. Storage belongs to the complete
         * value and acquires no ROS resource.
         */
        public Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint multi_dof_actual = new Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint();
        /**
         * @brief Retain the complete original trajectory_msgs/msg/MultiDOFJointTrajectoryPoint field.
         * @details Original control_msgs/action/FollowJointTrajectory_Feedback.multi_dof_error; native type
         * trajectory_msgs/msg/MultiDOFJointTrajectoryPoint. Scalar value. Storage belongs to the complete
         * value and acquires no ROS resource.
         */
        public Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint multi_dof_error = new Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint();

        public Ros2Control_msgsActionFollowJointTrajectory_Feedback()
        {
        }

        public static final Codec<Ros2Control_msgsActionFollowJointTrajectory_Feedback> CODEC =
            new Codec<Ros2Control_msgsActionFollowJointTrajectory_Feedback>() {
                public byte[] encode(Ros2Control_msgsActionFollowJointTrajectory_Feedback value)
                {
                    Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                    writeRos2Control_msgsActionFollowJointTrajectory_Feedback(writer, value);
                    byte[] wire = writer.finish();
                    if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                        throw new IllegalArgumentException("complete encoded extent");
                    return wire;
                }
                public Ros2Control_msgsActionFollowJointTrajectory_Feedback decode(byte[] bytes)
                {
                    Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                    Ros2Control_msgsActionFollowJointTrajectory_Feedback value = readRos2Control_msgsActionFollowJointTrajectory_Feedback(reader);
                    reader.end();
                    return value;
                }
            };
    }

    private static void writeRos2Control_msgsActionFollowJointTrajectory_Feedback(Codecs.Writer writer,
                                                                                  Ros2Control_msgsActionFollowJointTrajectory_Feedback value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Std_msgsMsgHeader part0 = value.header;
        writeRos2Std_msgsMsgHeader(writer, part0);
        String[] part1 = value.joint_names;
        if(part1 == null || part1.length > 8)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part1.length, 4, false);
        for(int i = 0; i < part1.length; ++i)
        {
            writeText(writer, part1[i], 128);
        }
        Ros2Trajectory_msgsMsgJointTrajectoryPoint part2 = value.desired;
        writeRos2Trajectory_msgsMsgJointTrajectoryPoint(writer, part2);
        Ros2Trajectory_msgsMsgJointTrajectoryPoint part3 = value.actual;
        writeRos2Trajectory_msgsMsgJointTrajectoryPoint(writer, part3);
        Ros2Trajectory_msgsMsgJointTrajectoryPoint part4 = value.error;
        writeRos2Trajectory_msgsMsgJointTrajectoryPoint(writer, part4);
        String[] part5 = value.multi_dof_joint_names;
        if(part5 == null || part5.length > 1)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part5.length, 4, false);
        for(int i = 0; i < part5.length; ++i)
        {
            writeText(writer, part5[i], 128);
        }
        Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint part6 = value.multi_dof_desired;
        writeRos2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint(writer, part6);
        Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint part7 = value.multi_dof_actual;
        writeRos2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint(writer, part7);
        Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint part8 = value.multi_dof_error;
        writeRos2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint(writer, part8);
    }

    private static Ros2Control_msgsActionFollowJointTrajectory_Feedback readRos2Control_msgsActionFollowJointTrajectory_Feedback(Codecs.Reader reader)
    {
        Ros2Control_msgsActionFollowJointTrajectory_Feedback value = new Ros2Control_msgsActionFollowJointTrajectory_Feedback();
        value.header = readRos2Std_msgsMsgHeader(reader);
        value.joint_names = new String[readCount(reader, 8, 4)];
        for(int i = 0; i < value.joint_names.length; ++i)
            value.joint_names[i] = readText(reader, 128);
        value.desired = readRos2Trajectory_msgsMsgJointTrajectoryPoint(reader);
        value.actual = readRos2Trajectory_msgsMsgJointTrajectoryPoint(reader);
        value.error = readRos2Trajectory_msgsMsgJointTrajectoryPoint(reader);
        value.multi_dof_joint_names = new String[readCount(reader, 1, 4)];
        for(int i = 0; i < value.multi_dof_joint_names.length; ++i)
            value.multi_dof_joint_names[i] = readText(reader, 128);
        value.multi_dof_desired = readRos2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint(reader);
        value.multi_dof_actual = readRos2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint(reader);
        value.multi_dof_error = readRos2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint(reader);
        return value;
    }

    // @brief Own every original field of sensor_msgs/msg/JointState.
    // @details Canonical extent 28..1404 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public static final class Ros2Sensor_msgsMsgJointState
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "sensor_msgs/msg/JointState";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_bba20c36db70a98b594ba603d05b8a979038fb95b701221ba3b8689f55b06b11";
        public static final int MIN_WIRE_BYTES = 28, MAX_WIRE_BYTES = 1404;
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
         * @details Original sensor_msgs/msg/JointState.name; native type string. At most 8 elements. UTF-8
         * capacity 128 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public String[] name = new String[0];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original sensor_msgs/msg/JointState.position; native type float64. At most 8 elements.
         * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
         * no ROS resource.
         */
        public double[] position = new double[0];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original sensor_msgs/msg/JointState.velocity; native type float64. At most 8 elements.
         * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
         * no ROS resource.
         */
        public double[] velocity = new double[0];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original sensor_msgs/msg/JointState.effort; native type float64. At most 8 elements. Finite
         * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
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
        if(part1 == null || part1.length > 8)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part1.length, 4, false);
        for(int i = 0; i < part1.length; ++i)
        {
            writeText(writer, part1[i], 128);
        }
        double[] part2 = value.position;
        if(part2 == null || part2.length > 8)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part2.length, 4, false);
        for(int i = 0; i < part2.length; ++i)
        {
            writer.f64(part2[i]);
        }
        double[] part3 = value.velocity;
        if(part3 == null || part3.length > 8)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part3.length, 4, false);
        for(int i = 0; i < part3.length; ++i)
        {
            writer.f64(part3[i]);
        }
        double[] part4 = value.effort;
        if(part4 == null || part4.length > 8)
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
        value.name = new String[readCount(reader, 8, 4)];
        for(int i = 0; i < value.name.length; ++i)
            value.name[i] = readText(reader, 128);
        value.position = new double[readCount(reader, 8, 8)];
        for(int i = 0; i < value.position.length; ++i)
            value.position[i] = reader.f64();
        value.velocity = new double[readCount(reader, 8, 8)];
        for(int i = 0; i < value.velocity.length; ++i)
            value.velocity[i] = reader.f64();
        value.effort = new double[readCount(reader, 8, 8)];
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
}
