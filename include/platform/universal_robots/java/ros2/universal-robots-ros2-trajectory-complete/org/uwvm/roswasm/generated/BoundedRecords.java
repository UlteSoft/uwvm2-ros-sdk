/**
 * @file BoundedRecords.java
 * @brief Complete universal_robots values and adapters for the selected original interface catalog.
 * @details Retain original field order, scalar widths, array capacities, string bounds, constants and declared
 * defaults. Pure value access and canonical codecs create no native ROS allocation or resource grant. Transport
 * roles require the separately admitted SDK owner.
 * @see share/platform/universal_robots/domains/universal-robots-ros2-trajectory-complete.ir.json
 * @see document/platform/universal_robots/en_US/README.md
 */

package org.uwvm.universal_robots.universal_robots_ros2_trajectory_complete;

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

    public static final class Ros2Builtin_interfacesMsgDuration
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "builtin_interfaces/msg/Duration";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_3804444fae7a82a57907d25c2c3dc54d9a42dcd305f41ca073b1221dca7d36e4";
        public static final int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 8;
        public int sec = 0;
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

    public static final class Ros2Builtin_interfacesMsgTime
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "builtin_interfaces/msg/Time";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7";
        public static final int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 8;
        public int sec = 0;
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

    public static final class Ros2Std_msgsMsgHeader
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "std_msgs/msg/Header";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_ce081e9caac05e464c4cff0da5e94cad44014652c0ddf244ee6c35ac3b0d1e96";
        public static final int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 140;
        public Ros2Builtin_interfacesMsgTime stamp = new Ros2Builtin_interfacesMsgTime();
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

    public static final class Ros2Trajectory_msgsMsgJointTrajectoryPoint
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "trajectory_msgs/msg/JointTrajectoryPoint";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_c4eafb6efd22d299b5c6fc21844d8bf69789cf27ee5414a1d7d2371f0b1acbbf";
        public static final int MIN_WIRE_BYTES = 24, MAX_WIRE_BYTES = 216;
        public double[] positions = new double[0];
        public double[] velocities = new double[0];
        public double[] accelerations = new double[0];
        public double[] effort = new double[0];
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
        if(part0 == null || part0.length > 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part0.length, 4, false);
        for(int i = 0; i < part0.length; ++i)
        {
            writer.f64(part0[i]);
        }
        double[] part1 = value.velocities;
        if(part1 == null || part1.length > 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part1.length, 4, false);
        for(int i = 0; i < part1.length; ++i)
        {
            writer.f64(part1[i]);
        }
        double[] part2 = value.accelerations;
        if(part2 == null || part2.length > 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part2.length, 4, false);
        for(int i = 0; i < part2.length; ++i)
        {
            writer.f64(part2[i]);
        }
        double[] part3 = value.effort;
        if(part3 == null || part3.length > 6)
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
        value.positions = new double[readCount(reader, 6, 8)];
        for(int i = 0; i < value.positions.length; ++i)
            value.positions[i] = reader.f64();
        value.velocities = new double[readCount(reader, 6, 8)];
        for(int i = 0; i < value.velocities.length; ++i)
            value.velocities[i] = reader.f64();
        value.accelerations = new double[readCount(reader, 6, 8)];
        for(int i = 0; i < value.accelerations.length; ++i)
            value.accelerations[i] = reader.f64();
        value.effort = new double[readCount(reader, 6, 8)];
        for(int i = 0; i < value.effort.length; ++i)
            value.effort[i] = reader.f64();
        value.time_from_start = readRos2Builtin_interfacesMsgDuration(reader);
        return value;
    }

    public static final class Ros2Trajectory_msgsMsgJointTrajectory
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "trajectory_msgs/msg/JointTrajectory";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_e77c37c75123e442edb6a7f6f2a21dcbe33d8bb8fd2577f9906653a6ad5f8225";
        public static final int MIN_WIRE_BYTES = 20, MAX_WIRE_BYTES = 5164;
        public Ros2Std_msgsMsgHeader header = new Ros2Std_msgsMsgHeader();
        public String[] joint_names = new String[0];
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
        if(part1 == null || part1.length > 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part1.length, 4, false);
        for(int i = 0; i < part1.length; ++i)
        {
            writeText(writer, part1[i], 256);
        }
        Ros2Trajectory_msgsMsgJointTrajectoryPoint[] part2 = value.points;
        if(part2 == null || part2.length > 16)
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
        value.joint_names = new String[readCount(reader, 6, 4)];
        for(int i = 0; i < value.joint_names.length; ++i)
            value.joint_names[i] = readText(reader, 256);
        value.points = new Ros2Trajectory_msgsMsgJointTrajectoryPoint[readCount(reader, 16, 24)];
        for(int i = 0; i < value.points.length; ++i)
            value.points[i] = readRos2Trajectory_msgsMsgJointTrajectoryPoint(reader);
        return value;
    }

    public static final class Ros2Geometry_msgsMsgVector3
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "geometry_msgs/msg/Vector3";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_5adebf211fe375fba92c0628f9b8ebf05bff9ab22ddc4bbf00629167af295d5e";
        public static final int MIN_WIRE_BYTES = 24, MAX_WIRE_BYTES = 24;
        public double x = 0;
        public double y = 0;
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

    public static final class Ros2Geometry_msgsMsgQuaternion
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "geometry_msgs/msg/Quaternion";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_34a32c3470cbfe2ff12340781a5bf22f6c370a8f5c06669f25a34321ade81672";
        public static final int MIN_WIRE_BYTES = 32, MAX_WIRE_BYTES = 32;
        public double x = Double.longBitsToDouble(0x0000000000000000L);
        public double y = Double.longBitsToDouble(0x0000000000000000L);
        public double z = Double.longBitsToDouble(0x0000000000000000L);
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

    public static final class Ros2Geometry_msgsMsgTransform
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "geometry_msgs/msg/Transform";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_7ddcb1c3fca43f4a0299d43fb6fac1b77a8f26001af809dc13307f4f9c61d65b";
        public static final int MIN_WIRE_BYTES = 56, MAX_WIRE_BYTES = 56;
        public Ros2Geometry_msgsMsgVector3 translation = new Ros2Geometry_msgsMsgVector3();
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

    public static final class Ros2Geometry_msgsMsgTwist
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "geometry_msgs/msg/Twist";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_1a6c18d19bb6853a2cff3b775974ba31f8e3674c1bbe566444ccabf0ef9d117e";
        public static final int MIN_WIRE_BYTES = 48, MAX_WIRE_BYTES = 48;
        public Ros2Geometry_msgsMsgVector3 linear = new Ros2Geometry_msgsMsgVector3();
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

    public static final class Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "trajectory_msgs/msg/MultiDOFJointTrajectoryPoint";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_6590b7ca1cdaa89da04b7a661266e2d4c6e3e2668dc90505a7c24d7be8a43242";
        public static final int MIN_WIRE_BYTES = 20, MAX_WIRE_BYTES = 324;
        public Ros2Geometry_msgsMsgTransform[] transforms = new Ros2Geometry_msgsMsgTransform[0];
        public Ros2Geometry_msgsMsgTwist[] velocities = new Ros2Geometry_msgsMsgTwist[0];
        public Ros2Geometry_msgsMsgTwist[] accelerations = new Ros2Geometry_msgsMsgTwist[0];
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
        if(part0 == null || part0.length > 2)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part0.length, 4, false);
        for(int i = 0; i < part0.length; ++i)
        {
            writeRos2Geometry_msgsMsgTransform(writer, part0[i]);
        }
        Ros2Geometry_msgsMsgTwist[] part1 = value.velocities;
        if(part1 == null || part1.length > 2)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part1.length, 4, false);
        for(int i = 0; i < part1.length; ++i)
        {
            writeRos2Geometry_msgsMsgTwist(writer, part1[i]);
        }
        Ros2Geometry_msgsMsgTwist[] part2 = value.accelerations;
        if(part2 == null || part2.length > 2)
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
        value.transforms = new Ros2Geometry_msgsMsgTransform[readCount(reader, 2, 56)];
        for(int i = 0; i < value.transforms.length; ++i)
            value.transforms[i] = readRos2Geometry_msgsMsgTransform(reader);
        value.velocities = new Ros2Geometry_msgsMsgTwist[readCount(reader, 2, 48)];
        for(int i = 0; i < value.velocities.length; ++i)
            value.velocities[i] = readRos2Geometry_msgsMsgTwist(reader);
        value.accelerations = new Ros2Geometry_msgsMsgTwist[readCount(reader, 2, 48)];
        for(int i = 0; i < value.accelerations.length; ++i)
            value.accelerations[i] = readRos2Geometry_msgsMsgTwist(reader);
        value.time_from_start = readRos2Builtin_interfacesMsgDuration(reader);
        return value;
    }

    public static final class Ros2Trajectory_msgsMsgMultiDOFJointTrajectory
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "trajectory_msgs/msg/MultiDOFJointTrajectory";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_2bf467681a39a08ac0d1ca84fb0c1792628850af3dffa4b56108d01ecca81974";
        public static final int MIN_WIRE_BYTES = 20, MAX_WIRE_BYTES = 1060;
        public Ros2Std_msgsMsgHeader header = new Ros2Std_msgsMsgHeader();
        public String[] joint_names = new String[0];
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
        if(part1 == null || part1.length > 2)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part1.length, 4, false);
        for(int i = 0; i < part1.length; ++i)
        {
            writeText(writer, part1[i], 128);
        }
        Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint[] part2 = value.points;
        if(part2 == null || part2.length > 2)
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
        value.joint_names = new String[readCount(reader, 2, 4)];
        for(int i = 0; i < value.joint_names.length; ++i)
            value.joint_names[i] = readText(reader, 128);
        value.points = new Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint[readCount(reader, 2, 20)];
        for(int i = 0; i < value.points.length; ++i)
            value.points[i] = readRos2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint(reader);
        return value;
    }

    public static final class Ros2Control_msgsMsgJointTolerance
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "control_msgs/msg/JointTolerance";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_3864af88029b3b1f51907b3da63d2d821104c29b9469a146a5a34f73f3598b8a";
        public static final int MIN_WIRE_BYTES = 28, MAX_WIRE_BYTES = 156;
        public String name = "";
        public double position = 0;
        public double velocity = 0;
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

    public static final class Ros2Control_msgsMsgJointComponentTolerance
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "control_msgs/msg/JointComponentTolerance";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_8a10f659b38feae6dfcf89818d35a164743b02c0e5cfe2d86aae7eda56e914fb";
        public static final int MIN_WIRE_BYTES = 30, MAX_WIRE_BYTES = 158;
        public String joint_name = "";
        public int component = 0;
        public double position = 0;
        public double velocity = 0;
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

    public static final class Ros2Control_msgsActionFollowJointTrajectory_Goal
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "control_msgs/action/FollowJointTrajectory_Goal";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_34db8e96526d0dae9e4107c6b1a4de32bbf468b2903b01e30fc7c7be44773e23";
        public static final int MIN_WIRE_BYTES = 64, MAX_WIRE_BYTES = 10016;
        public Ros2Trajectory_msgsMsgJointTrajectory trajectory = new Ros2Trajectory_msgsMsgJointTrajectory();
        public Ros2Trajectory_msgsMsgMultiDOFJointTrajectory multi_dof_trajectory = new Ros2Trajectory_msgsMsgMultiDOFJointTrajectory();
        public Ros2Control_msgsMsgJointTolerance[] path_tolerance = new Ros2Control_msgsMsgJointTolerance[0];
        public Ros2Control_msgsMsgJointComponentTolerance[] component_path_tolerance = new Ros2Control_msgsMsgJointComponentTolerance[0];
        public Ros2Control_msgsMsgJointTolerance[] goal_tolerance = new Ros2Control_msgsMsgJointTolerance[0];
        public Ros2Control_msgsMsgJointComponentTolerance[] component_goal_tolerance = new Ros2Control_msgsMsgJointComponentTolerance[0];
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
        if(part2 == null || part2.length > 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part2.length, 4, false);
        for(int i = 0; i < part2.length; ++i)
        {
            writeRos2Control_msgsMsgJointTolerance(writer, part2[i]);
        }
        Ros2Control_msgsMsgJointComponentTolerance[] part3 = value.component_path_tolerance;
        if(part3 == null || part3.length > 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part3.length, 4, false);
        for(int i = 0; i < part3.length; ++i)
        {
            writeRos2Control_msgsMsgJointComponentTolerance(writer, part3[i]);
        }
        Ros2Control_msgsMsgJointTolerance[] part4 = value.goal_tolerance;
        if(part4 == null || part4.length > 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part4.length, 4, false);
        for(int i = 0; i < part4.length; ++i)
        {
            writeRos2Control_msgsMsgJointTolerance(writer, part4[i]);
        }
        Ros2Control_msgsMsgJointComponentTolerance[] part5 = value.component_goal_tolerance;
        if(part5 == null || part5.length > 6)
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
        value.path_tolerance = new Ros2Control_msgsMsgJointTolerance[readCount(reader, 6, 28)];
        for(int i = 0; i < value.path_tolerance.length; ++i)
            value.path_tolerance[i] = readRos2Control_msgsMsgJointTolerance(reader);
        value.component_path_tolerance = new Ros2Control_msgsMsgJointComponentTolerance[readCount(reader, 6, 30)];
        for(int i = 0; i < value.component_path_tolerance.length; ++i)
            value.component_path_tolerance[i] = readRos2Control_msgsMsgJointComponentTolerance(reader);
        value.goal_tolerance = new Ros2Control_msgsMsgJointTolerance[readCount(reader, 6, 28)];
        for(int i = 0; i < value.goal_tolerance.length; ++i)
            value.goal_tolerance[i] = readRos2Control_msgsMsgJointTolerance(reader);
        value.component_goal_tolerance = new Ros2Control_msgsMsgJointComponentTolerance[readCount(reader, 6, 30)];
        for(int i = 0; i < value.component_goal_tolerance.length; ++i)
            value.component_goal_tolerance[i] = readRos2Control_msgsMsgJointComponentTolerance(reader);
        value.goal_time_tolerance = readRos2Builtin_interfacesMsgDuration(reader);
        return value;
    }

    public static final class Ros2Control_msgsActionFollowJointTrajectory_Result
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "control_msgs/action/FollowJointTrajectory_Result";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_c698e3a3a772735ff6027b04af28e9bc88d6b7138863ce5737aa090f543dac70";
        public static final int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 4104;
        public int error_code = 0;
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
        writeText(writer, part1, 4096);
    }

    private static Ros2Control_msgsActionFollowJointTrajectory_Result readRos2Control_msgsActionFollowJointTrajectory_Result(Codecs.Reader reader)
    {
        Ros2Control_msgsActionFollowJointTrajectory_Result value = new Ros2Control_msgsActionFollowJointTrajectory_Result();
        value.error_code = (int)reader.integer(4, true);
        value.error_string = readText(reader, 4096);
        return value;
    }

    public static final class Ros2Control_msgsActionFollowJointTrajectory_Feedback
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "control_msgs/action/FollowJointTrajectory_Feedback";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_ed813f6e8b6223b6ecc8fa6f2f9b732c7b6d97c834baec8fbc5f8878e11c45c6";
        public static final int MIN_WIRE_BYTES = 152, MAX_WIRE_BYTES = 3592;
        public Ros2Std_msgsMsgHeader header = new Ros2Std_msgsMsgHeader();
        public String[] joint_names = new String[0];
        public Ros2Trajectory_msgsMsgJointTrajectoryPoint desired = new Ros2Trajectory_msgsMsgJointTrajectoryPoint();
        public Ros2Trajectory_msgsMsgJointTrajectoryPoint actual = new Ros2Trajectory_msgsMsgJointTrajectoryPoint();
        public Ros2Trajectory_msgsMsgJointTrajectoryPoint error = new Ros2Trajectory_msgsMsgJointTrajectoryPoint();
        public String[] multi_dof_joint_names = new String[0];
        public Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint multi_dof_desired = new Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint();
        public Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint multi_dof_actual = new Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint();
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
        if(part1 == null || part1.length > 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part1.length, 4, false);
        for(int i = 0; i < part1.length; ++i)
        {
            writeText(writer, part1[i], 256);
        }
        Ros2Trajectory_msgsMsgJointTrajectoryPoint part2 = value.desired;
        writeRos2Trajectory_msgsMsgJointTrajectoryPoint(writer, part2);
        Ros2Trajectory_msgsMsgJointTrajectoryPoint part3 = value.actual;
        writeRos2Trajectory_msgsMsgJointTrajectoryPoint(writer, part3);
        Ros2Trajectory_msgsMsgJointTrajectoryPoint part4 = value.error;
        writeRos2Trajectory_msgsMsgJointTrajectoryPoint(writer, part4);
        String[] part5 = value.multi_dof_joint_names;
        if(part5 == null || part5.length > 2)
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
        value.joint_names = new String[readCount(reader, 6, 4)];
        for(int i = 0; i < value.joint_names.length; ++i)
            value.joint_names[i] = readText(reader, 256);
        value.desired = readRos2Trajectory_msgsMsgJointTrajectoryPoint(reader);
        value.actual = readRos2Trajectory_msgsMsgJointTrajectoryPoint(reader);
        value.error = readRos2Trajectory_msgsMsgJointTrajectoryPoint(reader);
        value.multi_dof_joint_names = new String[readCount(reader, 2, 4)];
        for(int i = 0; i < value.multi_dof_joint_names.length; ++i)
            value.multi_dof_joint_names[i] = readText(reader, 128);
        value.multi_dof_desired = readRos2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint(reader);
        value.multi_dof_actual = readRos2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint(reader);
        value.multi_dof_error = readRos2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint(reader);
        return value;
    }

    public static final class Ros2Geometry_msgsMsgPoint
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "geometry_msgs/msg/Point";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_80f43d054abe333673c940c6d0fd88e8e26cea4a1cff53ff789cccaa38240616";
        public static final int MIN_WIRE_BYTES = 24, MAX_WIRE_BYTES = 24;
        public double x = 0;
        public double y = 0;
        public double z = 0;

        public Ros2Geometry_msgsMsgPoint()
        {
        }

        public static final Codec<Ros2Geometry_msgsMsgPoint> CODEC = new Codec<Ros2Geometry_msgsMsgPoint>() {
            public byte[] encode(Ros2Geometry_msgsMsgPoint value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Geometry_msgsMsgPoint(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Geometry_msgsMsgPoint decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Geometry_msgsMsgPoint value = readRos2Geometry_msgsMsgPoint(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Geometry_msgsMsgPoint(Codecs.Writer writer, Ros2Geometry_msgsMsgPoint value)
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

    private static Ros2Geometry_msgsMsgPoint readRos2Geometry_msgsMsgPoint(Codecs.Reader reader)
    {
        Ros2Geometry_msgsMsgPoint value = new Ros2Geometry_msgsMsgPoint();
        value.x = reader.f64();
        value.y = reader.f64();
        value.z = reader.f64();
        return value;
    }

    public static final class Ros2Geometry_msgsMsgPose
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "geometry_msgs/msg/Pose";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_9468a10b8b2728fe71a370b4348ffe5e81b884ff957533f8700aa16e70b12777";
        public static final int MIN_WIRE_BYTES = 56, MAX_WIRE_BYTES = 56;
        public Ros2Geometry_msgsMsgPoint position = new Ros2Geometry_msgsMsgPoint();
        public Ros2Geometry_msgsMsgQuaternion orientation = new Ros2Geometry_msgsMsgQuaternion();

        public Ros2Geometry_msgsMsgPose()
        {
        }

        public static final Codec<Ros2Geometry_msgsMsgPose> CODEC = new Codec<Ros2Geometry_msgsMsgPose>() {
            public byte[] encode(Ros2Geometry_msgsMsgPose value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Geometry_msgsMsgPose(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Geometry_msgsMsgPose decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Geometry_msgsMsgPose value = readRos2Geometry_msgsMsgPose(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Geometry_msgsMsgPose(Codecs.Writer writer, Ros2Geometry_msgsMsgPose value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Geometry_msgsMsgPoint part0 = value.position;
        writeRos2Geometry_msgsMsgPoint(writer, part0);
        Ros2Geometry_msgsMsgQuaternion part1 = value.orientation;
        writeRos2Geometry_msgsMsgQuaternion(writer, part1);
    }

    private static Ros2Geometry_msgsMsgPose readRos2Geometry_msgsMsgPose(Codecs.Reader reader)
    {
        Ros2Geometry_msgsMsgPose value = new Ros2Geometry_msgsMsgPose();
        value.position = readRos2Geometry_msgsMsgPoint(reader);
        value.orientation = readRos2Geometry_msgsMsgQuaternion(reader);
        return value;
    }

    public static final class Ros2Geometry_msgsMsgPoseStamped
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "geometry_msgs/msg/PoseStamped";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_71abdc844f18f02f45a354967a5f1c644fb20dc14cbc61c64aa41b927e0712a2";
        public static final int MIN_WIRE_BYTES = 68, MAX_WIRE_BYTES = 196;
        public Ros2Std_msgsMsgHeader header = new Ros2Std_msgsMsgHeader();
        public Ros2Geometry_msgsMsgPose pose = new Ros2Geometry_msgsMsgPose();

        public Ros2Geometry_msgsMsgPoseStamped()
        {
        }

        public static final Codec<Ros2Geometry_msgsMsgPoseStamped> CODEC = new Codec<Ros2Geometry_msgsMsgPoseStamped>() {
            public byte[] encode(Ros2Geometry_msgsMsgPoseStamped value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Geometry_msgsMsgPoseStamped(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Geometry_msgsMsgPoseStamped decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Geometry_msgsMsgPoseStamped value = readRos2Geometry_msgsMsgPoseStamped(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Geometry_msgsMsgPoseStamped(Codecs.Writer writer, Ros2Geometry_msgsMsgPoseStamped value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Std_msgsMsgHeader part0 = value.header;
        writeRos2Std_msgsMsgHeader(writer, part0);
        Ros2Geometry_msgsMsgPose part1 = value.pose;
        writeRos2Geometry_msgsMsgPose(writer, part1);
    }

    private static Ros2Geometry_msgsMsgPoseStamped readRos2Geometry_msgsMsgPoseStamped(Codecs.Reader reader)
    {
        Ros2Geometry_msgsMsgPoseStamped value = new Ros2Geometry_msgsMsgPoseStamped();
        value.header = readRos2Std_msgsMsgHeader(reader);
        value.pose = readRos2Geometry_msgsMsgPose(reader);
        return value;
    }

    public static final class Ros2Geometry_msgsMsgVector3Stamped
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "geometry_msgs/msg/Vector3Stamped";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_c6b67646d3fc6d29c195637ea353dafa7085b2bdb55a15a8b65009200b5ed31b";
        public static final int MIN_WIRE_BYTES = 36, MAX_WIRE_BYTES = 164;
        public Ros2Std_msgsMsgHeader header = new Ros2Std_msgsMsgHeader();
        public Ros2Geometry_msgsMsgVector3 vector = new Ros2Geometry_msgsMsgVector3();

        public Ros2Geometry_msgsMsgVector3Stamped()
        {
        }

        public static final Codec<Ros2Geometry_msgsMsgVector3Stamped> CODEC = new Codec<Ros2Geometry_msgsMsgVector3Stamped>() {
            public byte[] encode(Ros2Geometry_msgsMsgVector3Stamped value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Geometry_msgsMsgVector3Stamped(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Geometry_msgsMsgVector3Stamped decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Geometry_msgsMsgVector3Stamped value = readRos2Geometry_msgsMsgVector3Stamped(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Geometry_msgsMsgVector3Stamped(Codecs.Writer writer, Ros2Geometry_msgsMsgVector3Stamped value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Std_msgsMsgHeader part0 = value.header;
        writeRos2Std_msgsMsgHeader(writer, part0);
        Ros2Geometry_msgsMsgVector3 part1 = value.vector;
        writeRos2Geometry_msgsMsgVector3(writer, part1);
    }

    private static Ros2Geometry_msgsMsgVector3Stamped readRos2Geometry_msgsMsgVector3Stamped(Codecs.Reader reader)
    {
        Ros2Geometry_msgsMsgVector3Stamped value = new Ros2Geometry_msgsMsgVector3Stamped();
        value.header = readRos2Std_msgsMsgHeader(reader);
        value.vector = readRos2Geometry_msgsMsgVector3(reader);
        return value;
    }

    public static final class Ros2Geometry_msgsMsgWrench
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "geometry_msgs/msg/Wrench";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_fdfdf2474c0129b0ce1f85972cc87fd80478ac7d2429d9de1ec58951a82a11b6";
        public static final int MIN_WIRE_BYTES = 48, MAX_WIRE_BYTES = 48;
        public Ros2Geometry_msgsMsgVector3 force = new Ros2Geometry_msgsMsgVector3();
        public Ros2Geometry_msgsMsgVector3 torque = new Ros2Geometry_msgsMsgVector3();

        public Ros2Geometry_msgsMsgWrench()
        {
        }

        public static final Codec<Ros2Geometry_msgsMsgWrench> CODEC = new Codec<Ros2Geometry_msgsMsgWrench>() {
            public byte[] encode(Ros2Geometry_msgsMsgWrench value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Geometry_msgsMsgWrench(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Geometry_msgsMsgWrench decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Geometry_msgsMsgWrench value = readRos2Geometry_msgsMsgWrench(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Geometry_msgsMsgWrench(Codecs.Writer writer, Ros2Geometry_msgsMsgWrench value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Geometry_msgsMsgVector3 part0 = value.force;
        writeRos2Geometry_msgsMsgVector3(writer, part0);
        Ros2Geometry_msgsMsgVector3 part1 = value.torque;
        writeRos2Geometry_msgsMsgVector3(writer, part1);
    }

    private static Ros2Geometry_msgsMsgWrench readRos2Geometry_msgsMsgWrench(Codecs.Reader reader)
    {
        Ros2Geometry_msgsMsgWrench value = new Ros2Geometry_msgsMsgWrench();
        value.force = readRos2Geometry_msgsMsgVector3(reader);
        value.torque = readRos2Geometry_msgsMsgVector3(reader);
        return value;
    }

    public static final class Ros2Sensor_msgsMsgJointState
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "sensor_msgs/msg/JointState";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_b27092c8f58e8f9f96d790d525f894b30953ddbcffcc52a1d316e7dcce0908b9";
        public static final int MIN_WIRE_BYTES = 28, MAX_WIRE_BYTES = 1860;
        public Ros2Std_msgsMsgHeader header = new Ros2Std_msgsMsgHeader();
        public String[] name = new String[0];
        public double[] position = new double[0];
        public double[] velocity = new double[0];
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
        if(part1 == null || part1.length > 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part1.length, 4, false);
        for(int i = 0; i < part1.length; ++i)
        {
            writeText(writer, part1[i], 256);
        }
        double[] part2 = value.position;
        if(part2 == null || part2.length > 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part2.length, 4, false);
        for(int i = 0; i < part2.length; ++i)
        {
            writer.f64(part2[i]);
        }
        double[] part3 = value.velocity;
        if(part3 == null || part3.length > 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part3.length, 4, false);
        for(int i = 0; i < part3.length; ++i)
        {
            writer.f64(part3[i]);
        }
        double[] part4 = value.effort;
        if(part4 == null || part4.length > 6)
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
        value.name = new String[readCount(reader, 6, 4)];
        for(int i = 0; i < value.name.length; ++i)
            value.name[i] = readText(reader, 256);
        value.position = new double[readCount(reader, 6, 8)];
        for(int i = 0; i < value.position.length; ++i)
            value.position[i] = reader.f64();
        value.velocity = new double[readCount(reader, 6, 8)];
        for(int i = 0; i < value.velocity.length; ++i)
            value.velocity[i] = reader.f64();
        value.effort = new double[readCount(reader, 6, 8)];
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

    public static final class Ros2Ur_dashboard_msgsActionSetMode_Goal
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "ur_dashboard_msgs/action/SetMode_Goal";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_8a7484a60bad21933df3f847d3fd554e41098ed596dee270335ce9f092dc313d";
        public static final int MIN_WIRE_BYTES = 3, MAX_WIRE_BYTES = 3;
        public byte target_robot_mode = 0;
        public boolean stop_program = false;
        public boolean play_program = false;

        public Ros2Ur_dashboard_msgsActionSetMode_Goal()
        {
        }

        public static final Codec<Ros2Ur_dashboard_msgsActionSetMode_Goal> CODEC = new Codec<Ros2Ur_dashboard_msgsActionSetMode_Goal>() {
            public byte[] encode(Ros2Ur_dashboard_msgsActionSetMode_Goal value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Ur_dashboard_msgsActionSetMode_Goal(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Ur_dashboard_msgsActionSetMode_Goal decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Ur_dashboard_msgsActionSetMode_Goal value = readRos2Ur_dashboard_msgsActionSetMode_Goal(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Ur_dashboard_msgsActionSetMode_Goal(Codecs.Writer writer, Ros2Ur_dashboard_msgsActionSetMode_Goal value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        byte part0 = value.target_robot_mode;
        writer.integer(part0, 1, true);
        boolean part1 = value.stop_program;
        writer.integer(part1 ? 1 : 0, 1, false);
        boolean part2 = value.play_program;
        writer.integer(part2 ? 1 : 0, 1, false);
    }

    private static Ros2Ur_dashboard_msgsActionSetMode_Goal readRos2Ur_dashboard_msgsActionSetMode_Goal(Codecs.Reader reader)
    {
        Ros2Ur_dashboard_msgsActionSetMode_Goal value = new Ros2Ur_dashboard_msgsActionSetMode_Goal();
        value.target_robot_mode = (byte)reader.integer(1, true);
        value.stop_program = readBool(reader);
        value.play_program = readBool(reader);
        return value;
    }

    public static final class Ros2Ur_dashboard_msgsActionSetMode_Result
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "ur_dashboard_msgs/action/SetMode_Result";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_ef2a557ff27171319d46170ab16a80f5cba5fbd59e44c21cc1b704d01764b913";
        public static final int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 261;
        public boolean success = false;
        public String message = "";

        public Ros2Ur_dashboard_msgsActionSetMode_Result()
        {
        }

        public static final Codec<Ros2Ur_dashboard_msgsActionSetMode_Result> CODEC = new Codec<Ros2Ur_dashboard_msgsActionSetMode_Result>() {
            public byte[] encode(Ros2Ur_dashboard_msgsActionSetMode_Result value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Ur_dashboard_msgsActionSetMode_Result(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Ur_dashboard_msgsActionSetMode_Result decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Ur_dashboard_msgsActionSetMode_Result value = readRos2Ur_dashboard_msgsActionSetMode_Result(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Ur_dashboard_msgsActionSetMode_Result(Codecs.Writer writer, Ros2Ur_dashboard_msgsActionSetMode_Result value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
        String part1 = value.message;
        writeText(writer, part1, 256);
    }

    private static Ros2Ur_dashboard_msgsActionSetMode_Result readRos2Ur_dashboard_msgsActionSetMode_Result(Codecs.Reader reader)
    {
        Ros2Ur_dashboard_msgsActionSetMode_Result value = new Ros2Ur_dashboard_msgsActionSetMode_Result();
        value.success = readBool(reader);
        value.message = readText(reader, 256);
        return value;
    }

    public static final class Ros2Ur_dashboard_msgsActionSetMode_Feedback
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "ur_dashboard_msgs/action/SetMode_Feedback";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_afd74cd0a79174b53499a40b23b040ba96ec3d3e332129999525dcf6ca287ac6";
        public static final int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;
        public byte current_robot_mode = 0;
        public byte current_safety_mode = 0;

        public Ros2Ur_dashboard_msgsActionSetMode_Feedback()
        {
        }

        public static final Codec<Ros2Ur_dashboard_msgsActionSetMode_Feedback> CODEC = new Codec<Ros2Ur_dashboard_msgsActionSetMode_Feedback>() {
            public byte[] encode(Ros2Ur_dashboard_msgsActionSetMode_Feedback value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Ur_dashboard_msgsActionSetMode_Feedback(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Ur_dashboard_msgsActionSetMode_Feedback decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Ur_dashboard_msgsActionSetMode_Feedback value = readRos2Ur_dashboard_msgsActionSetMode_Feedback(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Ur_dashboard_msgsActionSetMode_Feedback(Codecs.Writer writer, Ros2Ur_dashboard_msgsActionSetMode_Feedback value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        byte part0 = value.current_robot_mode;
        writer.integer(part0, 1, true);
        byte part1 = value.current_safety_mode;
        writer.integer(part1, 1, true);
    }

    private static Ros2Ur_dashboard_msgsActionSetMode_Feedback readRos2Ur_dashboard_msgsActionSetMode_Feedback(Codecs.Reader reader)
    {
        Ros2Ur_dashboard_msgsActionSetMode_Feedback value = new Ros2Ur_dashboard_msgsActionSetMode_Feedback();
        value.current_robot_mode = (byte)reader.integer(1, true);
        value.current_safety_mode = (byte)reader.integer(1, true);
        return value;
    }

    public static final class Ros2Ur_dashboard_msgsMsgOperationalMode
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "ur_dashboard_msgs/msg/OperationalMode";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_7a0be8522cdc20e01d382218499030176a0f6565376fadc5bbdd871a01b9316e";
        public static final int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 260;
        public String mode = "";

        public Ros2Ur_dashboard_msgsMsgOperationalMode()
        {
        }

        public static final Codec<Ros2Ur_dashboard_msgsMsgOperationalMode> CODEC = new Codec<Ros2Ur_dashboard_msgsMsgOperationalMode>() {
            public byte[] encode(Ros2Ur_dashboard_msgsMsgOperationalMode value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Ur_dashboard_msgsMsgOperationalMode(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Ur_dashboard_msgsMsgOperationalMode decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Ur_dashboard_msgsMsgOperationalMode value = readRos2Ur_dashboard_msgsMsgOperationalMode(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Ur_dashboard_msgsMsgOperationalMode(Codecs.Writer writer, Ros2Ur_dashboard_msgsMsgOperationalMode value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String part0 = value.mode;
        writeText(writer, part0, 256);
    }

    private static Ros2Ur_dashboard_msgsMsgOperationalMode readRos2Ur_dashboard_msgsMsgOperationalMode(Codecs.Reader reader)
    {
        Ros2Ur_dashboard_msgsMsgOperationalMode value = new Ros2Ur_dashboard_msgsMsgOperationalMode();
        value.mode = readText(reader, 256);
        return value;
    }

    public static final class Ros2Ur_dashboard_msgsMsgProgramInformation
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "ur_dashboard_msgs/msg/ProgramInformation";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_9299ce545acd0b6ff064998334820fbe503b71dc47a475ef93545d2cdb41f965";
        public static final int MIN_WIRE_BYTES = 36, MAX_WIRE_BYTES = 676;
        public String name = "";
        public String description = "";
        public long created_date = 0;
        public long last_saved_date = 0;
        public long last_modified_date = 0;
        public String program_state = "";

        public Ros2Ur_dashboard_msgsMsgProgramInformation()
        {
        }

        public static final Codec<Ros2Ur_dashboard_msgsMsgProgramInformation> CODEC = new Codec<Ros2Ur_dashboard_msgsMsgProgramInformation>() {
            public byte[] encode(Ros2Ur_dashboard_msgsMsgProgramInformation value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Ur_dashboard_msgsMsgProgramInformation(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Ur_dashboard_msgsMsgProgramInformation decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Ur_dashboard_msgsMsgProgramInformation value = readRos2Ur_dashboard_msgsMsgProgramInformation(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Ur_dashboard_msgsMsgProgramInformation(Codecs.Writer writer, Ros2Ur_dashboard_msgsMsgProgramInformation value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String part0 = value.name;
        writeText(writer, part0, 128);
        String part1 = value.description;
        writeText(writer, part1, 256);
        long part2 = value.created_date;
        writer.integer(part2, 8, false);
        long part3 = value.last_saved_date;
        writer.integer(part3, 8, false);
        long part4 = value.last_modified_date;
        writer.integer(part4, 8, false);
        String part5 = value.program_state;
        writeText(writer, part5, 256);
    }

    private static Ros2Ur_dashboard_msgsMsgProgramInformation readRos2Ur_dashboard_msgsMsgProgramInformation(Codecs.Reader reader)
    {
        Ros2Ur_dashboard_msgsMsgProgramInformation value = new Ros2Ur_dashboard_msgsMsgProgramInformation();
        value.name = readText(reader, 128);
        value.description = readText(reader, 256);
        value.created_date = reader.integer(8, false);
        value.last_saved_date = reader.integer(8, false);
        value.last_modified_date = reader.integer(8, false);
        value.program_state = readText(reader, 256);
        return value;
    }

    public static final class Ros2Ur_dashboard_msgsMsgProgramState
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "ur_dashboard_msgs/msg/ProgramState";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_1462a3c2323792afbbfc6d48a600a6ab66a50a6f6f583e57a62da2458ea81f26";
        public static final int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 260;
        public String state = "";

        public Ros2Ur_dashboard_msgsMsgProgramState()
        {
        }

        public static final Codec<Ros2Ur_dashboard_msgsMsgProgramState> CODEC = new Codec<Ros2Ur_dashboard_msgsMsgProgramState>() {
            public byte[] encode(Ros2Ur_dashboard_msgsMsgProgramState value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Ur_dashboard_msgsMsgProgramState(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Ur_dashboard_msgsMsgProgramState decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Ur_dashboard_msgsMsgProgramState value = readRos2Ur_dashboard_msgsMsgProgramState(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Ur_dashboard_msgsMsgProgramState(Codecs.Writer writer, Ros2Ur_dashboard_msgsMsgProgramState value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String part0 = value.state;
        writeText(writer, part0, 256);
    }

    private static Ros2Ur_dashboard_msgsMsgProgramState readRos2Ur_dashboard_msgsMsgProgramState(Codecs.Reader reader)
    {
        Ros2Ur_dashboard_msgsMsgProgramState value = new Ros2Ur_dashboard_msgsMsgProgramState();
        value.state = readText(reader, 256);
        return value;
    }

    public static final class Ros2Ur_dashboard_msgsMsgRobotMode
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "ur_dashboard_msgs/msg/RobotMode";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_81a79c84083520d911de108a728ad1877de78a57ec9e27b5cc432590be4616bb";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public byte mode = 0;

        public Ros2Ur_dashboard_msgsMsgRobotMode()
        {
        }

        public static final Codec<Ros2Ur_dashboard_msgsMsgRobotMode> CODEC = new Codec<Ros2Ur_dashboard_msgsMsgRobotMode>() {
            public byte[] encode(Ros2Ur_dashboard_msgsMsgRobotMode value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Ur_dashboard_msgsMsgRobotMode(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Ur_dashboard_msgsMsgRobotMode decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Ur_dashboard_msgsMsgRobotMode value = readRos2Ur_dashboard_msgsMsgRobotMode(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Ur_dashboard_msgsMsgRobotMode(Codecs.Writer writer, Ros2Ur_dashboard_msgsMsgRobotMode value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        byte part0 = value.mode;
        writer.integer(part0, 1, true);
    }

    private static Ros2Ur_dashboard_msgsMsgRobotMode readRos2Ur_dashboard_msgsMsgRobotMode(Codecs.Reader reader)
    {
        Ros2Ur_dashboard_msgsMsgRobotMode value = new Ros2Ur_dashboard_msgsMsgRobotMode();
        value.mode = (byte)reader.integer(1, true);
        return value;
    }

    public static final class Ros2Ur_dashboard_msgsMsgSafetyMode
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "ur_dashboard_msgs/msg/SafetyMode";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_2eb3d5075a2d7d1765a604c1d1d198379010867d83a98d0327488ca51f5e1aac";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public int mode = 0;

        public Ros2Ur_dashboard_msgsMsgSafetyMode()
        {
        }

        public static final Codec<Ros2Ur_dashboard_msgsMsgSafetyMode> CODEC = new Codec<Ros2Ur_dashboard_msgsMsgSafetyMode>() {
            public byte[] encode(Ros2Ur_dashboard_msgsMsgSafetyMode value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Ur_dashboard_msgsMsgSafetyMode(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Ur_dashboard_msgsMsgSafetyMode decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Ur_dashboard_msgsMsgSafetyMode value = readRos2Ur_dashboard_msgsMsgSafetyMode(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Ur_dashboard_msgsMsgSafetyMode(Codecs.Writer writer, Ros2Ur_dashboard_msgsMsgSafetyMode value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int part0 = value.mode;
        writer.integer(part0, 1, false);
    }

    private static Ros2Ur_dashboard_msgsMsgSafetyMode readRos2Ur_dashboard_msgsMsgSafetyMode(Codecs.Reader reader)
    {
        Ros2Ur_dashboard_msgsMsgSafetyMode value = new Ros2Ur_dashboard_msgsMsgSafetyMode();
        value.mode = (int)reader.integer(1, false);
        return value;
    }

    public static final class Ros2Ur_dashboard_msgsMsgSafetyStatus
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "ur_dashboard_msgs/msg/SafetyStatus";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_1b1a7257c40d9c62e0b6291f241825d029fe38f3f3695265a182a270899a79e9";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public byte status = 0;

        public Ros2Ur_dashboard_msgsMsgSafetyStatus()
        {
        }

        public static final Codec<Ros2Ur_dashboard_msgsMsgSafetyStatus> CODEC = new Codec<Ros2Ur_dashboard_msgsMsgSafetyStatus>() {
            public byte[] encode(Ros2Ur_dashboard_msgsMsgSafetyStatus value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Ur_dashboard_msgsMsgSafetyStatus(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Ur_dashboard_msgsMsgSafetyStatus decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Ur_dashboard_msgsMsgSafetyStatus value = readRos2Ur_dashboard_msgsMsgSafetyStatus(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Ur_dashboard_msgsMsgSafetyStatus(Codecs.Writer writer, Ros2Ur_dashboard_msgsMsgSafetyStatus value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        byte part0 = value.status;
        writer.integer(part0, 1, true);
    }

    private static Ros2Ur_dashboard_msgsMsgSafetyStatus readRos2Ur_dashboard_msgsMsgSafetyStatus(Codecs.Reader reader)
    {
        Ros2Ur_dashboard_msgsMsgSafetyStatus value = new Ros2Ur_dashboard_msgsMsgSafetyStatus();
        value.status = (byte)reader.integer(1, true);
        return value;
    }

    public static final class Ros2Ur_dashboard_msgsMsgUserRole
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "ur_dashboard_msgs/msg/UserRole";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_7568bc9417685a9bc56cfdd2b41ff81ab99bd8e20fbe5f9e537b5b5d0689440a";
        public static final int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 260;
        public String role = "";

        public Ros2Ur_dashboard_msgsMsgUserRole()
        {
        }

        public static final Codec<Ros2Ur_dashboard_msgsMsgUserRole> CODEC = new Codec<Ros2Ur_dashboard_msgsMsgUserRole>() {
            public byte[] encode(Ros2Ur_dashboard_msgsMsgUserRole value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Ur_dashboard_msgsMsgUserRole(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Ur_dashboard_msgsMsgUserRole decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Ur_dashboard_msgsMsgUserRole value = readRos2Ur_dashboard_msgsMsgUserRole(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Ur_dashboard_msgsMsgUserRole(Codecs.Writer writer, Ros2Ur_dashboard_msgsMsgUserRole value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String part0 = value.role;
        writeText(writer, part0, 256);
    }

    private static Ros2Ur_dashboard_msgsMsgUserRole readRos2Ur_dashboard_msgsMsgUserRole(Codecs.Reader reader)
    {
        Ros2Ur_dashboard_msgsMsgUserRole value = new Ros2Ur_dashboard_msgsMsgUserRole();
        value.role = readText(reader, 256);
        return value;
    }

    public static final class Ros2Ur_dashboard_msgsMsgVersionInformation
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "ur_dashboard_msgs/msg/VersionInformation";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_450c41c4361f1bca51f864dd9ef596851b17ebc79d4f784e7abb8b721752443d";
        public static final int MIN_WIRE_BYTES = 16, MAX_WIRE_BYTES = 16;
        public long major = 0;
        public long minor = 0;
        public long bugfix = 0;
        public long build = 0;

        public Ros2Ur_dashboard_msgsMsgVersionInformation()
        {
        }

        public static final Codec<Ros2Ur_dashboard_msgsMsgVersionInformation> CODEC = new Codec<Ros2Ur_dashboard_msgsMsgVersionInformation>() {
            public byte[] encode(Ros2Ur_dashboard_msgsMsgVersionInformation value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Ur_dashboard_msgsMsgVersionInformation(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Ur_dashboard_msgsMsgVersionInformation decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Ur_dashboard_msgsMsgVersionInformation value = readRos2Ur_dashboard_msgsMsgVersionInformation(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Ur_dashboard_msgsMsgVersionInformation(Codecs.Writer writer, Ros2Ur_dashboard_msgsMsgVersionInformation value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        long part0 = value.major;
        writer.integer(part0, 4, false);
        long part1 = value.minor;
        writer.integer(part1, 4, false);
        long part2 = value.bugfix;
        writer.integer(part2, 4, false);
        long part3 = value.build;
        writer.integer(part3, 4, false);
    }

    private static Ros2Ur_dashboard_msgsMsgVersionInformation readRos2Ur_dashboard_msgsMsgVersionInformation(Codecs.Reader reader)
    {
        Ros2Ur_dashboard_msgsMsgVersionInformation value = new Ros2Ur_dashboard_msgsMsgVersionInformation();
        value.major = reader.integer(4, false);
        value.minor = reader.integer(4, false);
        value.bugfix = reader.integer(4, false);
        value.build = reader.integer(4, false);
        return value;
    }

    public static final class Ros2Ur_dashboard_msgsSrvAddToLog_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "ur_dashboard_msgs/srv/AddToLog_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_ecfe5bb0d0db92bc5dfdec9bf82fbe730e3b3b4d65680812d0540b9055590142";
        public static final int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 260;
        public String message = "";

        public Ros2Ur_dashboard_msgsSrvAddToLog_Request()
        {
        }

        public static final Codec<Ros2Ur_dashboard_msgsSrvAddToLog_Request> CODEC = new Codec<Ros2Ur_dashboard_msgsSrvAddToLog_Request>() {
            public byte[] encode(Ros2Ur_dashboard_msgsSrvAddToLog_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Ur_dashboard_msgsSrvAddToLog_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Ur_dashboard_msgsSrvAddToLog_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Ur_dashboard_msgsSrvAddToLog_Request value = readRos2Ur_dashboard_msgsSrvAddToLog_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Ur_dashboard_msgsSrvAddToLog_Request(Codecs.Writer writer, Ros2Ur_dashboard_msgsSrvAddToLog_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String part0 = value.message;
        writeText(writer, part0, 256);
    }

    private static Ros2Ur_dashboard_msgsSrvAddToLog_Request readRos2Ur_dashboard_msgsSrvAddToLog_Request(Codecs.Reader reader)
    {
        Ros2Ur_dashboard_msgsSrvAddToLog_Request value = new Ros2Ur_dashboard_msgsSrvAddToLog_Request();
        value.message = readText(reader, 256);
        return value;
    }

    public static final class Ros2Ur_dashboard_msgsSrvAddToLog_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "ur_dashboard_msgs/srv/AddToLog_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_57b0c150a353d3fca6e96c4dc86e72f71b452663ede1eeb69e51069992d07e4c";
        public static final int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 261;
        public String answer = "";
        public boolean success = false;

        public Ros2Ur_dashboard_msgsSrvAddToLog_Response()
        {
        }

        public static final Codec<Ros2Ur_dashboard_msgsSrvAddToLog_Response> CODEC = new Codec<Ros2Ur_dashboard_msgsSrvAddToLog_Response>() {
            public byte[] encode(Ros2Ur_dashboard_msgsSrvAddToLog_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Ur_dashboard_msgsSrvAddToLog_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Ur_dashboard_msgsSrvAddToLog_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Ur_dashboard_msgsSrvAddToLog_Response value = readRos2Ur_dashboard_msgsSrvAddToLog_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Ur_dashboard_msgsSrvAddToLog_Response(Codecs.Writer writer, Ros2Ur_dashboard_msgsSrvAddToLog_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String part0 = value.answer;
        writeText(writer, part0, 256);
        boolean part1 = value.success;
        writer.integer(part1 ? 1 : 0, 1, false);
    }

    private static Ros2Ur_dashboard_msgsSrvAddToLog_Response readRos2Ur_dashboard_msgsSrvAddToLog_Response(Codecs.Reader reader)
    {
        Ros2Ur_dashboard_msgsSrvAddToLog_Response value = new Ros2Ur_dashboard_msgsSrvAddToLog_Response();
        value.answer = readText(reader, 256);
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Ur_dashboard_msgsSrvDownloadProgram_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "ur_dashboard_msgs/srv/DownloadProgram_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_5c84420393aae13ea448d171a7b2956a55a39f3321f504b9f3bd5b4a38960c2f";
        public static final int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 520;
        public String program_name = "";
        public String target_path = "";

        public Ros2Ur_dashboard_msgsSrvDownloadProgram_Request()
        {
        }

        public static final Codec<Ros2Ur_dashboard_msgsSrvDownloadProgram_Request> CODEC = new Codec<Ros2Ur_dashboard_msgsSrvDownloadProgram_Request>() {
            public byte[] encode(Ros2Ur_dashboard_msgsSrvDownloadProgram_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Ur_dashboard_msgsSrvDownloadProgram_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Ur_dashboard_msgsSrvDownloadProgram_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Ur_dashboard_msgsSrvDownloadProgram_Request value = readRos2Ur_dashboard_msgsSrvDownloadProgram_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Ur_dashboard_msgsSrvDownloadProgram_Request(Codecs.Writer writer, Ros2Ur_dashboard_msgsSrvDownloadProgram_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String part0 = value.program_name;
        writeText(writer, part0, 256);
        String part1 = value.target_path;
        writeText(writer, part1, 256);
    }

    private static Ros2Ur_dashboard_msgsSrvDownloadProgram_Request readRos2Ur_dashboard_msgsSrvDownloadProgram_Request(Codecs.Reader reader)
    {
        Ros2Ur_dashboard_msgsSrvDownloadProgram_Request value = new Ros2Ur_dashboard_msgsSrvDownloadProgram_Request();
        value.program_name = readText(reader, 256);
        value.target_path = readText(reader, 256);
        return value;
    }

    public static final class Ros2Ur_dashboard_msgsSrvDownloadProgram_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "ur_dashboard_msgs/srv/DownloadProgram_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_46b0a73805282bad5f819f712275b7dd2ca4a6bb8c73c445ea8ae0a3d0f9e8e0";
        public static final int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 261;
        public String answer = "";
        public boolean success = false;

        public Ros2Ur_dashboard_msgsSrvDownloadProgram_Response()
        {
        }

        public static final Codec<Ros2Ur_dashboard_msgsSrvDownloadProgram_Response> CODEC = new Codec<Ros2Ur_dashboard_msgsSrvDownloadProgram_Response>() {
            public byte[] encode(Ros2Ur_dashboard_msgsSrvDownloadProgram_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Ur_dashboard_msgsSrvDownloadProgram_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Ur_dashboard_msgsSrvDownloadProgram_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Ur_dashboard_msgsSrvDownloadProgram_Response value = readRos2Ur_dashboard_msgsSrvDownloadProgram_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Ur_dashboard_msgsSrvDownloadProgram_Response(Codecs.Writer writer, Ros2Ur_dashboard_msgsSrvDownloadProgram_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String part0 = value.answer;
        writeText(writer, part0, 256);
        boolean part1 = value.success;
        writer.integer(part1 ? 1 : 0, 1, false);
    }

    private static Ros2Ur_dashboard_msgsSrvDownloadProgram_Response readRos2Ur_dashboard_msgsSrvDownloadProgram_Response(Codecs.Reader reader)
    {
        Ros2Ur_dashboard_msgsSrvDownloadProgram_Response value = new Ros2Ur_dashboard_msgsSrvDownloadProgram_Response();
        value.answer = readText(reader, 256);
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Ur_dashboard_msgsSrvDownloadSupportFile_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "ur_dashboard_msgs/srv/DownloadSupportFile_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_d919563629f81d5a8c10f1d2921ea16f3c912a49b8d3bcf65d17b8daa0a38140";
        public static final int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 260;
        public String target_path = "";

        public Ros2Ur_dashboard_msgsSrvDownloadSupportFile_Request()
        {
        }

        public static final Codec<Ros2Ur_dashboard_msgsSrvDownloadSupportFile_Request> CODEC =
            new Codec<Ros2Ur_dashboard_msgsSrvDownloadSupportFile_Request>() {
                public byte[] encode(Ros2Ur_dashboard_msgsSrvDownloadSupportFile_Request value)
                {
                    Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                    writeRos2Ur_dashboard_msgsSrvDownloadSupportFile_Request(writer, value);
                    byte[] wire = writer.finish();
                    if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                        throw new IllegalArgumentException("complete encoded extent");
                    return wire;
                }
                public Ros2Ur_dashboard_msgsSrvDownloadSupportFile_Request decode(byte[] bytes)
                {
                    Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                    Ros2Ur_dashboard_msgsSrvDownloadSupportFile_Request value = readRos2Ur_dashboard_msgsSrvDownloadSupportFile_Request(reader);
                    reader.end();
                    return value;
                }
            };
    }

    private static void writeRos2Ur_dashboard_msgsSrvDownloadSupportFile_Request(Codecs.Writer writer,
                                                                                 Ros2Ur_dashboard_msgsSrvDownloadSupportFile_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String part0 = value.target_path;
        writeText(writer, part0, 256);
    }

    private static Ros2Ur_dashboard_msgsSrvDownloadSupportFile_Request readRos2Ur_dashboard_msgsSrvDownloadSupportFile_Request(Codecs.Reader reader)
    {
        Ros2Ur_dashboard_msgsSrvDownloadSupportFile_Request value = new Ros2Ur_dashboard_msgsSrvDownloadSupportFile_Request();
        value.target_path = readText(reader, 256);
        return value;
    }

    public static final class Ros2Ur_dashboard_msgsSrvDownloadSupportFile_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "ur_dashboard_msgs/srv/DownloadSupportFile_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_76e190e6e9f1ddfff3082ea2adb0463d21ba9fb6795153fe6bbacee8a3334667";
        public static final int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 262;
        public String answer = "";
        public boolean success = false;
        public boolean support_files_present = false;

        public Ros2Ur_dashboard_msgsSrvDownloadSupportFile_Response()
        {
        }

        public static final Codec<Ros2Ur_dashboard_msgsSrvDownloadSupportFile_Response> CODEC =
            new Codec<Ros2Ur_dashboard_msgsSrvDownloadSupportFile_Response>() {
                public byte[] encode(Ros2Ur_dashboard_msgsSrvDownloadSupportFile_Response value)
                {
                    Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                    writeRos2Ur_dashboard_msgsSrvDownloadSupportFile_Response(writer, value);
                    byte[] wire = writer.finish();
                    if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                        throw new IllegalArgumentException("complete encoded extent");
                    return wire;
                }
                public Ros2Ur_dashboard_msgsSrvDownloadSupportFile_Response decode(byte[] bytes)
                {
                    Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                    Ros2Ur_dashboard_msgsSrvDownloadSupportFile_Response value = readRos2Ur_dashboard_msgsSrvDownloadSupportFile_Response(reader);
                    reader.end();
                    return value;
                }
            };
    }

    private static void writeRos2Ur_dashboard_msgsSrvDownloadSupportFile_Response(Codecs.Writer writer,
                                                                                  Ros2Ur_dashboard_msgsSrvDownloadSupportFile_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String part0 = value.answer;
        writeText(writer, part0, 256);
        boolean part1 = value.success;
        writer.integer(part1 ? 1 : 0, 1, false);
        boolean part2 = value.support_files_present;
        writer.integer(part2 ? 1 : 0, 1, false);
    }

    private static Ros2Ur_dashboard_msgsSrvDownloadSupportFile_Response readRos2Ur_dashboard_msgsSrvDownloadSupportFile_Response(Codecs.Reader reader)
    {
        Ros2Ur_dashboard_msgsSrvDownloadSupportFile_Response value = new Ros2Ur_dashboard_msgsSrvDownloadSupportFile_Response();
        value.answer = readText(reader, 256);
        value.success = readBool(reader);
        value.support_files_present = readBool(reader);
        return value;
    }

    public static final class Ros2Ur_dashboard_msgsSrvGenerateFlightReport_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "ur_dashboard_msgs/srv/GenerateFlightReport_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_7246d97690c0c827e9cfab2f8297cf27a10e60e41ebb3ba345f361a109057099";
        public static final int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 260;
        public String report_type = "SYSTEM";

        public Ros2Ur_dashboard_msgsSrvGenerateFlightReport_Request()
        {
        }

        public static final Codec<Ros2Ur_dashboard_msgsSrvGenerateFlightReport_Request> CODEC =
            new Codec<Ros2Ur_dashboard_msgsSrvGenerateFlightReport_Request>() {
                public byte[] encode(Ros2Ur_dashboard_msgsSrvGenerateFlightReport_Request value)
                {
                    Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                    writeRos2Ur_dashboard_msgsSrvGenerateFlightReport_Request(writer, value);
                    byte[] wire = writer.finish();
                    if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                        throw new IllegalArgumentException("complete encoded extent");
                    return wire;
                }
                public Ros2Ur_dashboard_msgsSrvGenerateFlightReport_Request decode(byte[] bytes)
                {
                    Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                    Ros2Ur_dashboard_msgsSrvGenerateFlightReport_Request value = readRos2Ur_dashboard_msgsSrvGenerateFlightReport_Request(reader);
                    reader.end();
                    return value;
                }
            };
    }

    private static void writeRos2Ur_dashboard_msgsSrvGenerateFlightReport_Request(Codecs.Writer writer,
                                                                                  Ros2Ur_dashboard_msgsSrvGenerateFlightReport_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String part0 = value.report_type;
        writeText(writer, part0, 256);
    }

    private static Ros2Ur_dashboard_msgsSrvGenerateFlightReport_Request readRos2Ur_dashboard_msgsSrvGenerateFlightReport_Request(Codecs.Reader reader)
    {
        Ros2Ur_dashboard_msgsSrvGenerateFlightReport_Request value = new Ros2Ur_dashboard_msgsSrvGenerateFlightReport_Request();
        value.report_type = readText(reader, 256);
        return value;
    }

    public static final class Ros2Ur_dashboard_msgsSrvGenerateFlightReport_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "ur_dashboard_msgs/srv/GenerateFlightReport_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_adebf67876b5ae3377cec0aa04138c2ab73ef7c0d7942c77c6c06b248a836445";
        public static final int MIN_WIRE_BYTES = 9, MAX_WIRE_BYTES = 521;
        public boolean success = false;
        public String answer = "";
        public String report_id = "";

        public Ros2Ur_dashboard_msgsSrvGenerateFlightReport_Response()
        {
        }

        public static final Codec<Ros2Ur_dashboard_msgsSrvGenerateFlightReport_Response> CODEC =
            new Codec<Ros2Ur_dashboard_msgsSrvGenerateFlightReport_Response>() {
                public byte[] encode(Ros2Ur_dashboard_msgsSrvGenerateFlightReport_Response value)
                {
                    Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                    writeRos2Ur_dashboard_msgsSrvGenerateFlightReport_Response(writer, value);
                    byte[] wire = writer.finish();
                    if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                        throw new IllegalArgumentException("complete encoded extent");
                    return wire;
                }
                public Ros2Ur_dashboard_msgsSrvGenerateFlightReport_Response decode(byte[] bytes)
                {
                    Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                    Ros2Ur_dashboard_msgsSrvGenerateFlightReport_Response value = readRos2Ur_dashboard_msgsSrvGenerateFlightReport_Response(reader);
                    reader.end();
                    return value;
                }
            };
    }

    private static void writeRos2Ur_dashboard_msgsSrvGenerateFlightReport_Response(Codecs.Writer writer,
                                                                                   Ros2Ur_dashboard_msgsSrvGenerateFlightReport_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
        String part1 = value.answer;
        writeText(writer, part1, 256);
        String part2 = value.report_id;
        writeText(writer, part2, 256);
    }

    private static Ros2Ur_dashboard_msgsSrvGenerateFlightReport_Response readRos2Ur_dashboard_msgsSrvGenerateFlightReport_Response(Codecs.Reader reader)
    {
        Ros2Ur_dashboard_msgsSrvGenerateFlightReport_Response value = new Ros2Ur_dashboard_msgsSrvGenerateFlightReport_Response();
        value.success = readBool(reader);
        value.answer = readText(reader, 256);
        value.report_id = readText(reader, 256);
        return value;
    }

    public static final class Ros2Ur_dashboard_msgsSrvGenerateSupportFile_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "ur_dashboard_msgs/srv/GenerateSupportFile_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_10b0371b77db32d75a77dcb0605b325caa1915ccfb7d0917896fd75234e6ada7";
        public static final int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 260;
        public String dir_path = ".";

        public Ros2Ur_dashboard_msgsSrvGenerateSupportFile_Request()
        {
        }

        public static final Codec<Ros2Ur_dashboard_msgsSrvGenerateSupportFile_Request> CODEC =
            new Codec<Ros2Ur_dashboard_msgsSrvGenerateSupportFile_Request>() {
                public byte[] encode(Ros2Ur_dashboard_msgsSrvGenerateSupportFile_Request value)
                {
                    Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                    writeRos2Ur_dashboard_msgsSrvGenerateSupportFile_Request(writer, value);
                    byte[] wire = writer.finish();
                    if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                        throw new IllegalArgumentException("complete encoded extent");
                    return wire;
                }
                public Ros2Ur_dashboard_msgsSrvGenerateSupportFile_Request decode(byte[] bytes)
                {
                    Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                    Ros2Ur_dashboard_msgsSrvGenerateSupportFile_Request value = readRos2Ur_dashboard_msgsSrvGenerateSupportFile_Request(reader);
                    reader.end();
                    return value;
                }
            };
    }

    private static void writeRos2Ur_dashboard_msgsSrvGenerateSupportFile_Request(Codecs.Writer writer,
                                                                                 Ros2Ur_dashboard_msgsSrvGenerateSupportFile_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String part0 = value.dir_path;
        writeText(writer, part0, 256);
    }

    private static Ros2Ur_dashboard_msgsSrvGenerateSupportFile_Request readRos2Ur_dashboard_msgsSrvGenerateSupportFile_Request(Codecs.Reader reader)
    {
        Ros2Ur_dashboard_msgsSrvGenerateSupportFile_Request value = new Ros2Ur_dashboard_msgsSrvGenerateSupportFile_Request();
        value.dir_path = readText(reader, 256);
        return value;
    }

    public static final class Ros2Ur_dashboard_msgsSrvGenerateSupportFile_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "ur_dashboard_msgs/srv/GenerateSupportFile_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_f370623fe690f218073f8538aa9fcf41c94d4abd3e0507e09607ef11e10edf38";
        public static final int MIN_WIRE_BYTES = 9, MAX_WIRE_BYTES = 521;
        public boolean success = false;
        public String answer = "";
        public String generated_file_name = "";

        public Ros2Ur_dashboard_msgsSrvGenerateSupportFile_Response()
        {
        }

        public static final Codec<Ros2Ur_dashboard_msgsSrvGenerateSupportFile_Response> CODEC =
            new Codec<Ros2Ur_dashboard_msgsSrvGenerateSupportFile_Response>() {
                public byte[] encode(Ros2Ur_dashboard_msgsSrvGenerateSupportFile_Response value)
                {
                    Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                    writeRos2Ur_dashboard_msgsSrvGenerateSupportFile_Response(writer, value);
                    byte[] wire = writer.finish();
                    if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                        throw new IllegalArgumentException("complete encoded extent");
                    return wire;
                }
                public Ros2Ur_dashboard_msgsSrvGenerateSupportFile_Response decode(byte[] bytes)
                {
                    Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                    Ros2Ur_dashboard_msgsSrvGenerateSupportFile_Response value = readRos2Ur_dashboard_msgsSrvGenerateSupportFile_Response(reader);
                    reader.end();
                    return value;
                }
            };
    }

    private static void writeRos2Ur_dashboard_msgsSrvGenerateSupportFile_Response(Codecs.Writer writer,
                                                                                  Ros2Ur_dashboard_msgsSrvGenerateSupportFile_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
        String part1 = value.answer;
        writeText(writer, part1, 256);
        String part2 = value.generated_file_name;
        writeText(writer, part2, 256);
    }

    private static Ros2Ur_dashboard_msgsSrvGenerateSupportFile_Response readRos2Ur_dashboard_msgsSrvGenerateSupportFile_Response(Codecs.Reader reader)
    {
        Ros2Ur_dashboard_msgsSrvGenerateSupportFile_Response value = new Ros2Ur_dashboard_msgsSrvGenerateSupportFile_Response();
        value.success = readBool(reader);
        value.answer = readText(reader, 256);
        value.generated_file_name = readText(reader, 256);
        return value;
    }

    public static final class Ros2Ur_dashboard_msgsSrvGetLoadedProgram_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "ur_dashboard_msgs/srv/GetLoadedProgram_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_030e5746e6a4da8f266e37d11cc3826715099ff1aa1c845a97042aec987707e3";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public Ros2Ur_dashboard_msgsSrvGetLoadedProgram_Request()
        {
        }

        public static final Codec<Ros2Ur_dashboard_msgsSrvGetLoadedProgram_Request> CODEC = new Codec<Ros2Ur_dashboard_msgsSrvGetLoadedProgram_Request>() {
            public byte[] encode(Ros2Ur_dashboard_msgsSrvGetLoadedProgram_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Ur_dashboard_msgsSrvGetLoadedProgram_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Ur_dashboard_msgsSrvGetLoadedProgram_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Ur_dashboard_msgsSrvGetLoadedProgram_Request value = readRos2Ur_dashboard_msgsSrvGetLoadedProgram_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Ur_dashboard_msgsSrvGetLoadedProgram_Request(Codecs.Writer writer, Ros2Ur_dashboard_msgsSrvGetLoadedProgram_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
    }

    private static Ros2Ur_dashboard_msgsSrvGetLoadedProgram_Request readRos2Ur_dashboard_msgsSrvGetLoadedProgram_Request(Codecs.Reader reader)
    {
        Ros2Ur_dashboard_msgsSrvGetLoadedProgram_Request value = new Ros2Ur_dashboard_msgsSrvGetLoadedProgram_Request();
        return value;
    }

    public static final class Ros2Ur_dashboard_msgsSrvGetLoadedProgram_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "ur_dashboard_msgs/srv/GetLoadedProgram_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_3e8c7f3c8711faea01de37b9a011f34a9c6dd660cc222e46177b2c1898ec2f7e";
        public static final int MIN_WIRE_BYTES = 9, MAX_WIRE_BYTES = 521;
        public String answer = "";
        public String program_name = "";
        public boolean success = false;

        public Ros2Ur_dashboard_msgsSrvGetLoadedProgram_Response()
        {
        }

        public static final Codec<Ros2Ur_dashboard_msgsSrvGetLoadedProgram_Response> CODEC = new Codec<Ros2Ur_dashboard_msgsSrvGetLoadedProgram_Response>() {
            public byte[] encode(Ros2Ur_dashboard_msgsSrvGetLoadedProgram_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Ur_dashboard_msgsSrvGetLoadedProgram_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Ur_dashboard_msgsSrvGetLoadedProgram_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Ur_dashboard_msgsSrvGetLoadedProgram_Response value = readRos2Ur_dashboard_msgsSrvGetLoadedProgram_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Ur_dashboard_msgsSrvGetLoadedProgram_Response(Codecs.Writer writer, Ros2Ur_dashboard_msgsSrvGetLoadedProgram_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String part0 = value.answer;
        writeText(writer, part0, 256);
        String part1 = value.program_name;
        writeText(writer, part1, 256);
        boolean part2 = value.success;
        writer.integer(part2 ? 1 : 0, 1, false);
    }

    private static Ros2Ur_dashboard_msgsSrvGetLoadedProgram_Response readRos2Ur_dashboard_msgsSrvGetLoadedProgram_Response(Codecs.Reader reader)
    {
        Ros2Ur_dashboard_msgsSrvGetLoadedProgram_Response value = new Ros2Ur_dashboard_msgsSrvGetLoadedProgram_Response();
        value.answer = readText(reader, 256);
        value.program_name = readText(reader, 256);
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Ur_dashboard_msgsSrvGetOperationalMode_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "ur_dashboard_msgs/srv/GetOperationalMode_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_3f348b5d9e04a8ba01f5277ad259c34a6816ae0693f47c49e348a5497a90a325";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public Ros2Ur_dashboard_msgsSrvGetOperationalMode_Request()
        {
        }

        public static final Codec<Ros2Ur_dashboard_msgsSrvGetOperationalMode_Request> CODEC = new Codec<Ros2Ur_dashboard_msgsSrvGetOperationalMode_Request>() {
            public byte[] encode(Ros2Ur_dashboard_msgsSrvGetOperationalMode_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Ur_dashboard_msgsSrvGetOperationalMode_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Ur_dashboard_msgsSrvGetOperationalMode_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Ur_dashboard_msgsSrvGetOperationalMode_Request value = readRos2Ur_dashboard_msgsSrvGetOperationalMode_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Ur_dashboard_msgsSrvGetOperationalMode_Request(Codecs.Writer writer, Ros2Ur_dashboard_msgsSrvGetOperationalMode_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
    }

    private static Ros2Ur_dashboard_msgsSrvGetOperationalMode_Request readRos2Ur_dashboard_msgsSrvGetOperationalMode_Request(Codecs.Reader reader)
    {
        Ros2Ur_dashboard_msgsSrvGetOperationalMode_Request value = new Ros2Ur_dashboard_msgsSrvGetOperationalMode_Request();
        return value;
    }

    public static final class Ros2Ur_dashboard_msgsSrvGetOperationalMode_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "ur_dashboard_msgs/srv/GetOperationalMode_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_6c2da335fd551162020eb394b91e99aaeca17e34e7c2e98de935c81912efb5f6";
        public static final int MIN_WIRE_BYTES = 9, MAX_WIRE_BYTES = 521;
        public boolean success = false;
        public String answer = "";
        public Ros2Ur_dashboard_msgsMsgOperationalMode operational_mode = new Ros2Ur_dashboard_msgsMsgOperationalMode();

        public Ros2Ur_dashboard_msgsSrvGetOperationalMode_Response()
        {
        }

        public static final Codec<Ros2Ur_dashboard_msgsSrvGetOperationalMode_Response> CODEC =
            new Codec<Ros2Ur_dashboard_msgsSrvGetOperationalMode_Response>() {
                public byte[] encode(Ros2Ur_dashboard_msgsSrvGetOperationalMode_Response value)
                {
                    Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                    writeRos2Ur_dashboard_msgsSrvGetOperationalMode_Response(writer, value);
                    byte[] wire = writer.finish();
                    if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                        throw new IllegalArgumentException("complete encoded extent");
                    return wire;
                }
                public Ros2Ur_dashboard_msgsSrvGetOperationalMode_Response decode(byte[] bytes)
                {
                    Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                    Ros2Ur_dashboard_msgsSrvGetOperationalMode_Response value = readRos2Ur_dashboard_msgsSrvGetOperationalMode_Response(reader);
                    reader.end();
                    return value;
                }
            };
    }

    private static void writeRos2Ur_dashboard_msgsSrvGetOperationalMode_Response(Codecs.Writer writer,
                                                                                 Ros2Ur_dashboard_msgsSrvGetOperationalMode_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
        String part1 = value.answer;
        writeText(writer, part1, 256);
        Ros2Ur_dashboard_msgsMsgOperationalMode part2 = value.operational_mode;
        writeRos2Ur_dashboard_msgsMsgOperationalMode(writer, part2);
    }

    private static Ros2Ur_dashboard_msgsSrvGetOperationalMode_Response readRos2Ur_dashboard_msgsSrvGetOperationalMode_Response(Codecs.Reader reader)
    {
        Ros2Ur_dashboard_msgsSrvGetOperationalMode_Response value = new Ros2Ur_dashboard_msgsSrvGetOperationalMode_Response();
        value.success = readBool(reader);
        value.answer = readText(reader, 256);
        value.operational_mode = readRos2Ur_dashboard_msgsMsgOperationalMode(reader);
        return value;
    }

    public static final class Ros2Ur_dashboard_msgsSrvGetPolyScopeVersion_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "ur_dashboard_msgs/srv/GetPolyScopeVersion_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_88193ae202f0cb02746bc5556e8e8ee277fb4fae72ee4b96a6539c980dc86f13";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public Ros2Ur_dashboard_msgsSrvGetPolyScopeVersion_Request()
        {
        }

        public static final Codec<Ros2Ur_dashboard_msgsSrvGetPolyScopeVersion_Request> CODEC =
            new Codec<Ros2Ur_dashboard_msgsSrvGetPolyScopeVersion_Request>() {
                public byte[] encode(Ros2Ur_dashboard_msgsSrvGetPolyScopeVersion_Request value)
                {
                    Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                    writeRos2Ur_dashboard_msgsSrvGetPolyScopeVersion_Request(writer, value);
                    byte[] wire = writer.finish();
                    if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                        throw new IllegalArgumentException("complete encoded extent");
                    return wire;
                }
                public Ros2Ur_dashboard_msgsSrvGetPolyScopeVersion_Request decode(byte[] bytes)
                {
                    Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                    Ros2Ur_dashboard_msgsSrvGetPolyScopeVersion_Request value = readRos2Ur_dashboard_msgsSrvGetPolyScopeVersion_Request(reader);
                    reader.end();
                    return value;
                }
            };
    }

    private static void writeRos2Ur_dashboard_msgsSrvGetPolyScopeVersion_Request(Codecs.Writer writer,
                                                                                 Ros2Ur_dashboard_msgsSrvGetPolyScopeVersion_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
    }

    private static Ros2Ur_dashboard_msgsSrvGetPolyScopeVersion_Request readRos2Ur_dashboard_msgsSrvGetPolyScopeVersion_Request(Codecs.Reader reader)
    {
        Ros2Ur_dashboard_msgsSrvGetPolyScopeVersion_Request value = new Ros2Ur_dashboard_msgsSrvGetPolyScopeVersion_Request();
        return value;
    }

    public static final class Ros2Ur_dashboard_msgsSrvGetPolyScopeVersion_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "ur_dashboard_msgs/srv/GetPolyScopeVersion_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_c8d53d0a920806e86ceb6d2ac5a692a92e62b057432554bed9dcf57bed0ff9bd";
        public static final int MIN_WIRE_BYTES = 21, MAX_WIRE_BYTES = 277;
        public String answer = "";
        public boolean success = false;
        public Ros2Ur_dashboard_msgsMsgVersionInformation version = new Ros2Ur_dashboard_msgsMsgVersionInformation();

        public Ros2Ur_dashboard_msgsSrvGetPolyScopeVersion_Response()
        {
        }

        public static final Codec<Ros2Ur_dashboard_msgsSrvGetPolyScopeVersion_Response> CODEC =
            new Codec<Ros2Ur_dashboard_msgsSrvGetPolyScopeVersion_Response>() {
                public byte[] encode(Ros2Ur_dashboard_msgsSrvGetPolyScopeVersion_Response value)
                {
                    Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                    writeRos2Ur_dashboard_msgsSrvGetPolyScopeVersion_Response(writer, value);
                    byte[] wire = writer.finish();
                    if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                        throw new IllegalArgumentException("complete encoded extent");
                    return wire;
                }
                public Ros2Ur_dashboard_msgsSrvGetPolyScopeVersion_Response decode(byte[] bytes)
                {
                    Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                    Ros2Ur_dashboard_msgsSrvGetPolyScopeVersion_Response value = readRos2Ur_dashboard_msgsSrvGetPolyScopeVersion_Response(reader);
                    reader.end();
                    return value;
                }
            };
    }

    private static void writeRos2Ur_dashboard_msgsSrvGetPolyScopeVersion_Response(Codecs.Writer writer,
                                                                                  Ros2Ur_dashboard_msgsSrvGetPolyScopeVersion_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String part0 = value.answer;
        writeText(writer, part0, 256);
        boolean part1 = value.success;
        writer.integer(part1 ? 1 : 0, 1, false);
        Ros2Ur_dashboard_msgsMsgVersionInformation part2 = value.version;
        writeRos2Ur_dashboard_msgsMsgVersionInformation(writer, part2);
    }

    private static Ros2Ur_dashboard_msgsSrvGetPolyScopeVersion_Response readRos2Ur_dashboard_msgsSrvGetPolyScopeVersion_Response(Codecs.Reader reader)
    {
        Ros2Ur_dashboard_msgsSrvGetPolyScopeVersion_Response value = new Ros2Ur_dashboard_msgsSrvGetPolyScopeVersion_Response();
        value.answer = readText(reader, 256);
        value.success = readBool(reader);
        value.version = readRos2Ur_dashboard_msgsMsgVersionInformation(reader);
        return value;
    }

    public static final class Ros2Ur_dashboard_msgsSrvGetProgramState_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "ur_dashboard_msgs/srv/GetProgramState_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_fe42d1d1aa3d7bdbaa410bce045120d6dd841213ef10c5dd158c2b76fa157f65";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public Ros2Ur_dashboard_msgsSrvGetProgramState_Request()
        {
        }

        public static final Codec<Ros2Ur_dashboard_msgsSrvGetProgramState_Request> CODEC = new Codec<Ros2Ur_dashboard_msgsSrvGetProgramState_Request>() {
            public byte[] encode(Ros2Ur_dashboard_msgsSrvGetProgramState_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Ur_dashboard_msgsSrvGetProgramState_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Ur_dashboard_msgsSrvGetProgramState_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Ur_dashboard_msgsSrvGetProgramState_Request value = readRos2Ur_dashboard_msgsSrvGetProgramState_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Ur_dashboard_msgsSrvGetProgramState_Request(Codecs.Writer writer, Ros2Ur_dashboard_msgsSrvGetProgramState_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
    }

    private static Ros2Ur_dashboard_msgsSrvGetProgramState_Request readRos2Ur_dashboard_msgsSrvGetProgramState_Request(Codecs.Reader reader)
    {
        Ros2Ur_dashboard_msgsSrvGetProgramState_Request value = new Ros2Ur_dashboard_msgsSrvGetProgramState_Request();
        return value;
    }

    public static final class Ros2Ur_dashboard_msgsSrvGetProgramState_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "ur_dashboard_msgs/srv/GetProgramState_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_b20731b8552f323837c5939f390060a6c7c92e9447df5e620891708cfce51ff4";
        public static final int MIN_WIRE_BYTES = 13, MAX_WIRE_BYTES = 781;
        public Ros2Ur_dashboard_msgsMsgProgramState state = new Ros2Ur_dashboard_msgsMsgProgramState();
        public String program_name = "";
        public String answer = "";
        public boolean success = false;

        public Ros2Ur_dashboard_msgsSrvGetProgramState_Response()
        {
        }

        public static final Codec<Ros2Ur_dashboard_msgsSrvGetProgramState_Response> CODEC = new Codec<Ros2Ur_dashboard_msgsSrvGetProgramState_Response>() {
            public byte[] encode(Ros2Ur_dashboard_msgsSrvGetProgramState_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Ur_dashboard_msgsSrvGetProgramState_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Ur_dashboard_msgsSrvGetProgramState_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Ur_dashboard_msgsSrvGetProgramState_Response value = readRos2Ur_dashboard_msgsSrvGetProgramState_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Ur_dashboard_msgsSrvGetProgramState_Response(Codecs.Writer writer, Ros2Ur_dashboard_msgsSrvGetProgramState_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Ur_dashboard_msgsMsgProgramState part0 = value.state;
        writeRos2Ur_dashboard_msgsMsgProgramState(writer, part0);
        String part1 = value.program_name;
        writeText(writer, part1, 256);
        String part2 = value.answer;
        writeText(writer, part2, 256);
        boolean part3 = value.success;
        writer.integer(part3 ? 1 : 0, 1, false);
    }

    private static Ros2Ur_dashboard_msgsSrvGetProgramState_Response readRos2Ur_dashboard_msgsSrvGetProgramState_Response(Codecs.Reader reader)
    {
        Ros2Ur_dashboard_msgsSrvGetProgramState_Response value = new Ros2Ur_dashboard_msgsSrvGetProgramState_Response();
        value.state = readRos2Ur_dashboard_msgsMsgProgramState(reader);
        value.program_name = readText(reader, 256);
        value.answer = readText(reader, 256);
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Ur_dashboard_msgsSrvGetPrograms_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "ur_dashboard_msgs/srv/GetPrograms_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_8d7b4f3fb9a15854b59c85c5205bf20d3e0f6a1a972ccbdf77ee8377c9e40d6d";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public Ros2Ur_dashboard_msgsSrvGetPrograms_Request()
        {
        }

        public static final Codec<Ros2Ur_dashboard_msgsSrvGetPrograms_Request> CODEC = new Codec<Ros2Ur_dashboard_msgsSrvGetPrograms_Request>() {
            public byte[] encode(Ros2Ur_dashboard_msgsSrvGetPrograms_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Ur_dashboard_msgsSrvGetPrograms_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Ur_dashboard_msgsSrvGetPrograms_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Ur_dashboard_msgsSrvGetPrograms_Request value = readRos2Ur_dashboard_msgsSrvGetPrograms_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Ur_dashboard_msgsSrvGetPrograms_Request(Codecs.Writer writer, Ros2Ur_dashboard_msgsSrvGetPrograms_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
    }

    private static Ros2Ur_dashboard_msgsSrvGetPrograms_Request readRos2Ur_dashboard_msgsSrvGetPrograms_Request(Codecs.Reader reader)
    {
        Ros2Ur_dashboard_msgsSrvGetPrograms_Request value = new Ros2Ur_dashboard_msgsSrvGetPrograms_Request();
        return value;
    }

    public static final class Ros2Ur_dashboard_msgsSrvGetPrograms_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "ur_dashboard_msgs/srv/GetPrograms_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_111b67c562ba0c77c2924b97058e4126055ad6deb7f99049b8caf8990b3f979c";
        public static final int MIN_WIRE_BYTES = 9, MAX_WIRE_BYTES = 11081;
        public Ros2Ur_dashboard_msgsMsgProgramInformation[] programs = new Ros2Ur_dashboard_msgsMsgProgramInformation[0];
        public String answer = "";
        public boolean success = false;

        public Ros2Ur_dashboard_msgsSrvGetPrograms_Response()
        {
        }

        public static final Codec<Ros2Ur_dashboard_msgsSrvGetPrograms_Response> CODEC = new Codec<Ros2Ur_dashboard_msgsSrvGetPrograms_Response>() {
            public byte[] encode(Ros2Ur_dashboard_msgsSrvGetPrograms_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Ur_dashboard_msgsSrvGetPrograms_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Ur_dashboard_msgsSrvGetPrograms_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Ur_dashboard_msgsSrvGetPrograms_Response value = readRos2Ur_dashboard_msgsSrvGetPrograms_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Ur_dashboard_msgsSrvGetPrograms_Response(Codecs.Writer writer, Ros2Ur_dashboard_msgsSrvGetPrograms_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Ur_dashboard_msgsMsgProgramInformation[] part0 = value.programs;
        if(part0 == null || part0.length > 16)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part0.length, 4, false);
        for(int i = 0; i < part0.length; ++i)
        {
            writeRos2Ur_dashboard_msgsMsgProgramInformation(writer, part0[i]);
        }
        String part1 = value.answer;
        writeText(writer, part1, 256);
        boolean part2 = value.success;
        writer.integer(part2 ? 1 : 0, 1, false);
    }

    private static Ros2Ur_dashboard_msgsSrvGetPrograms_Response readRos2Ur_dashboard_msgsSrvGetPrograms_Response(Codecs.Reader reader)
    {
        Ros2Ur_dashboard_msgsSrvGetPrograms_Response value = new Ros2Ur_dashboard_msgsSrvGetPrograms_Response();
        value.programs = new Ros2Ur_dashboard_msgsMsgProgramInformation[readCount(reader, 16, 36)];
        for(int i = 0; i < value.programs.length; ++i)
            value.programs[i] = readRos2Ur_dashboard_msgsMsgProgramInformation(reader);
        value.answer = readText(reader, 256);
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Ur_dashboard_msgsSrvGetRobotMode_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "ur_dashboard_msgs/srv/GetRobotMode_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_d1d9cd94a443b20ec0d41a8db1a6d87291657597abc014e7da0f46a58c6c5614";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public Ros2Ur_dashboard_msgsSrvGetRobotMode_Request()
        {
        }

        public static final Codec<Ros2Ur_dashboard_msgsSrvGetRobotMode_Request> CODEC = new Codec<Ros2Ur_dashboard_msgsSrvGetRobotMode_Request>() {
            public byte[] encode(Ros2Ur_dashboard_msgsSrvGetRobotMode_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Ur_dashboard_msgsSrvGetRobotMode_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Ur_dashboard_msgsSrvGetRobotMode_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Ur_dashboard_msgsSrvGetRobotMode_Request value = readRos2Ur_dashboard_msgsSrvGetRobotMode_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Ur_dashboard_msgsSrvGetRobotMode_Request(Codecs.Writer writer, Ros2Ur_dashboard_msgsSrvGetRobotMode_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
    }

    private static Ros2Ur_dashboard_msgsSrvGetRobotMode_Request readRos2Ur_dashboard_msgsSrvGetRobotMode_Request(Codecs.Reader reader)
    {
        Ros2Ur_dashboard_msgsSrvGetRobotMode_Request value = new Ros2Ur_dashboard_msgsSrvGetRobotMode_Request();
        return value;
    }

    public static final class Ros2Ur_dashboard_msgsSrvGetRobotMode_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "ur_dashboard_msgs/srv/GetRobotMode_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_67db750ad95b3b207d61b18513a117c868040c22c93638f07fa74645d87bcfba";
        public static final int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 262;
        public Ros2Ur_dashboard_msgsMsgRobotMode robot_mode = new Ros2Ur_dashboard_msgsMsgRobotMode();
        public String answer = "";
        public boolean success = false;

        public Ros2Ur_dashboard_msgsSrvGetRobotMode_Response()
        {
        }

        public static final Codec<Ros2Ur_dashboard_msgsSrvGetRobotMode_Response> CODEC = new Codec<Ros2Ur_dashboard_msgsSrvGetRobotMode_Response>() {
            public byte[] encode(Ros2Ur_dashboard_msgsSrvGetRobotMode_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Ur_dashboard_msgsSrvGetRobotMode_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Ur_dashboard_msgsSrvGetRobotMode_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Ur_dashboard_msgsSrvGetRobotMode_Response value = readRos2Ur_dashboard_msgsSrvGetRobotMode_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Ur_dashboard_msgsSrvGetRobotMode_Response(Codecs.Writer writer, Ros2Ur_dashboard_msgsSrvGetRobotMode_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Ur_dashboard_msgsMsgRobotMode part0 = value.robot_mode;
        writeRos2Ur_dashboard_msgsMsgRobotMode(writer, part0);
        String part1 = value.answer;
        writeText(writer, part1, 256);
        boolean part2 = value.success;
        writer.integer(part2 ? 1 : 0, 1, false);
    }

    private static Ros2Ur_dashboard_msgsSrvGetRobotMode_Response readRos2Ur_dashboard_msgsSrvGetRobotMode_Response(Codecs.Reader reader)
    {
        Ros2Ur_dashboard_msgsSrvGetRobotMode_Response value = new Ros2Ur_dashboard_msgsSrvGetRobotMode_Response();
        value.robot_mode = readRos2Ur_dashboard_msgsMsgRobotMode(reader);
        value.answer = readText(reader, 256);
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Ur_dashboard_msgsSrvGetRobotModel_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "ur_dashboard_msgs/srv/GetRobotModel_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_9db08f07993bd5786aea5b6bd567f9e9f49329883326ea16e6c49eef1586dc43";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public Ros2Ur_dashboard_msgsSrvGetRobotModel_Request()
        {
        }

        public static final Codec<Ros2Ur_dashboard_msgsSrvGetRobotModel_Request> CODEC = new Codec<Ros2Ur_dashboard_msgsSrvGetRobotModel_Request>() {
            public byte[] encode(Ros2Ur_dashboard_msgsSrvGetRobotModel_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Ur_dashboard_msgsSrvGetRobotModel_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Ur_dashboard_msgsSrvGetRobotModel_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Ur_dashboard_msgsSrvGetRobotModel_Request value = readRos2Ur_dashboard_msgsSrvGetRobotModel_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Ur_dashboard_msgsSrvGetRobotModel_Request(Codecs.Writer writer, Ros2Ur_dashboard_msgsSrvGetRobotModel_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
    }

    private static Ros2Ur_dashboard_msgsSrvGetRobotModel_Request readRos2Ur_dashboard_msgsSrvGetRobotModel_Request(Codecs.Reader reader)
    {
        Ros2Ur_dashboard_msgsSrvGetRobotModel_Request value = new Ros2Ur_dashboard_msgsSrvGetRobotModel_Request();
        return value;
    }

    public static final class Ros2Ur_dashboard_msgsSrvGetRobotModel_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "ur_dashboard_msgs/srv/GetRobotModel_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_faf0124c542ef7420915527c27e99a7d26c5d6274f55d869bc9416e6b7d9b3c9";
        public static final int MIN_WIRE_BYTES = 9, MAX_WIRE_BYTES = 521;
        public boolean success = false;
        public String answer = "";
        public String robot_model = "";

        public Ros2Ur_dashboard_msgsSrvGetRobotModel_Response()
        {
        }

        public static final Codec<Ros2Ur_dashboard_msgsSrvGetRobotModel_Response> CODEC = new Codec<Ros2Ur_dashboard_msgsSrvGetRobotModel_Response>() {
            public byte[] encode(Ros2Ur_dashboard_msgsSrvGetRobotModel_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Ur_dashboard_msgsSrvGetRobotModel_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Ur_dashboard_msgsSrvGetRobotModel_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Ur_dashboard_msgsSrvGetRobotModel_Response value = readRos2Ur_dashboard_msgsSrvGetRobotModel_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Ur_dashboard_msgsSrvGetRobotModel_Response(Codecs.Writer writer, Ros2Ur_dashboard_msgsSrvGetRobotModel_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
        String part1 = value.answer;
        writeText(writer, part1, 256);
        String part2 = value.robot_model;
        writeText(writer, part2, 256);
    }

    private static Ros2Ur_dashboard_msgsSrvGetRobotModel_Response readRos2Ur_dashboard_msgsSrvGetRobotModel_Response(Codecs.Reader reader)
    {
        Ros2Ur_dashboard_msgsSrvGetRobotModel_Response value = new Ros2Ur_dashboard_msgsSrvGetRobotModel_Response();
        value.success = readBool(reader);
        value.answer = readText(reader, 256);
        value.robot_model = readText(reader, 256);
        return value;
    }

    public static final class Ros2Ur_dashboard_msgsSrvGetSafetyMode_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "ur_dashboard_msgs/srv/GetSafetyMode_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_5866cc4b0e10508eeb45ceecf9f9b6036ba55d04c9613622e189ccde2781dcb0";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public Ros2Ur_dashboard_msgsSrvGetSafetyMode_Request()
        {
        }

        public static final Codec<Ros2Ur_dashboard_msgsSrvGetSafetyMode_Request> CODEC = new Codec<Ros2Ur_dashboard_msgsSrvGetSafetyMode_Request>() {
            public byte[] encode(Ros2Ur_dashboard_msgsSrvGetSafetyMode_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Ur_dashboard_msgsSrvGetSafetyMode_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Ur_dashboard_msgsSrvGetSafetyMode_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Ur_dashboard_msgsSrvGetSafetyMode_Request value = readRos2Ur_dashboard_msgsSrvGetSafetyMode_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Ur_dashboard_msgsSrvGetSafetyMode_Request(Codecs.Writer writer, Ros2Ur_dashboard_msgsSrvGetSafetyMode_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
    }

    private static Ros2Ur_dashboard_msgsSrvGetSafetyMode_Request readRos2Ur_dashboard_msgsSrvGetSafetyMode_Request(Codecs.Reader reader)
    {
        Ros2Ur_dashboard_msgsSrvGetSafetyMode_Request value = new Ros2Ur_dashboard_msgsSrvGetSafetyMode_Request();
        return value;
    }

    public static final class Ros2Ur_dashboard_msgsSrvGetSafetyMode_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "ur_dashboard_msgs/srv/GetSafetyMode_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_f65d7ff83dc97f891032d8ab16bf71a9c2326c6ae6a033fe1d6e06f011c5a40b";
        public static final int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 262;
        public Ros2Ur_dashboard_msgsMsgSafetyMode safety_mode = new Ros2Ur_dashboard_msgsMsgSafetyMode();
        public String answer = "";
        public boolean success = false;

        public Ros2Ur_dashboard_msgsSrvGetSafetyMode_Response()
        {
        }

        public static final Codec<Ros2Ur_dashboard_msgsSrvGetSafetyMode_Response> CODEC = new Codec<Ros2Ur_dashboard_msgsSrvGetSafetyMode_Response>() {
            public byte[] encode(Ros2Ur_dashboard_msgsSrvGetSafetyMode_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Ur_dashboard_msgsSrvGetSafetyMode_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Ur_dashboard_msgsSrvGetSafetyMode_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Ur_dashboard_msgsSrvGetSafetyMode_Response value = readRos2Ur_dashboard_msgsSrvGetSafetyMode_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Ur_dashboard_msgsSrvGetSafetyMode_Response(Codecs.Writer writer, Ros2Ur_dashboard_msgsSrvGetSafetyMode_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Ur_dashboard_msgsMsgSafetyMode part0 = value.safety_mode;
        writeRos2Ur_dashboard_msgsMsgSafetyMode(writer, part0);
        String part1 = value.answer;
        writeText(writer, part1, 256);
        boolean part2 = value.success;
        writer.integer(part2 ? 1 : 0, 1, false);
    }

    private static Ros2Ur_dashboard_msgsSrvGetSafetyMode_Response readRos2Ur_dashboard_msgsSrvGetSafetyMode_Response(Codecs.Reader reader)
    {
        Ros2Ur_dashboard_msgsSrvGetSafetyMode_Response value = new Ros2Ur_dashboard_msgsSrvGetSafetyMode_Response();
        value.safety_mode = readRos2Ur_dashboard_msgsMsgSafetyMode(reader);
        value.answer = readText(reader, 256);
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Ur_dashboard_msgsSrvGetSafetyStatus_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "ur_dashboard_msgs/srv/GetSafetyStatus_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_0e2958bcd7b121682361c94b2926bcc4552d7ef07dc2af4609d04b1bb7054602";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public Ros2Ur_dashboard_msgsSrvGetSafetyStatus_Request()
        {
        }

        public static final Codec<Ros2Ur_dashboard_msgsSrvGetSafetyStatus_Request> CODEC = new Codec<Ros2Ur_dashboard_msgsSrvGetSafetyStatus_Request>() {
            public byte[] encode(Ros2Ur_dashboard_msgsSrvGetSafetyStatus_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Ur_dashboard_msgsSrvGetSafetyStatus_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Ur_dashboard_msgsSrvGetSafetyStatus_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Ur_dashboard_msgsSrvGetSafetyStatus_Request value = readRos2Ur_dashboard_msgsSrvGetSafetyStatus_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Ur_dashboard_msgsSrvGetSafetyStatus_Request(Codecs.Writer writer, Ros2Ur_dashboard_msgsSrvGetSafetyStatus_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
    }

    private static Ros2Ur_dashboard_msgsSrvGetSafetyStatus_Request readRos2Ur_dashboard_msgsSrvGetSafetyStatus_Request(Codecs.Reader reader)
    {
        Ros2Ur_dashboard_msgsSrvGetSafetyStatus_Request value = new Ros2Ur_dashboard_msgsSrvGetSafetyStatus_Request();
        return value;
    }

    public static final class Ros2Ur_dashboard_msgsSrvGetSafetyStatus_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "ur_dashboard_msgs/srv/GetSafetyStatus_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_bb96aaa96f5c78b97ad80a14eb96865dc10b5a1d12524fcbcc75fc6d481c53e4";
        public static final int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 262;
        public String answer = "";
        public boolean success = false;
        public Ros2Ur_dashboard_msgsMsgSafetyStatus safety_status = new Ros2Ur_dashboard_msgsMsgSafetyStatus();

        public Ros2Ur_dashboard_msgsSrvGetSafetyStatus_Response()
        {
        }

        public static final Codec<Ros2Ur_dashboard_msgsSrvGetSafetyStatus_Response> CODEC = new Codec<Ros2Ur_dashboard_msgsSrvGetSafetyStatus_Response>() {
            public byte[] encode(Ros2Ur_dashboard_msgsSrvGetSafetyStatus_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Ur_dashboard_msgsSrvGetSafetyStatus_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Ur_dashboard_msgsSrvGetSafetyStatus_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Ur_dashboard_msgsSrvGetSafetyStatus_Response value = readRos2Ur_dashboard_msgsSrvGetSafetyStatus_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Ur_dashboard_msgsSrvGetSafetyStatus_Response(Codecs.Writer writer, Ros2Ur_dashboard_msgsSrvGetSafetyStatus_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String part0 = value.answer;
        writeText(writer, part0, 256);
        boolean part1 = value.success;
        writer.integer(part1 ? 1 : 0, 1, false);
        Ros2Ur_dashboard_msgsMsgSafetyStatus part2 = value.safety_status;
        writeRos2Ur_dashboard_msgsMsgSafetyStatus(writer, part2);
    }

    private static Ros2Ur_dashboard_msgsSrvGetSafetyStatus_Response readRos2Ur_dashboard_msgsSrvGetSafetyStatus_Response(Codecs.Reader reader)
    {
        Ros2Ur_dashboard_msgsSrvGetSafetyStatus_Response value = new Ros2Ur_dashboard_msgsSrvGetSafetyStatus_Response();
        value.answer = readText(reader, 256);
        value.success = readBool(reader);
        value.safety_status = readRos2Ur_dashboard_msgsMsgSafetyStatus(reader);
        return value;
    }

    public static final class Ros2Ur_dashboard_msgsSrvGetSerialNumber_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "ur_dashboard_msgs/srv/GetSerialNumber_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_bbb1ca066c77ed459352de69d566f3ea87b94fe593c31c911193416f92a73c9b";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public Ros2Ur_dashboard_msgsSrvGetSerialNumber_Request()
        {
        }

        public static final Codec<Ros2Ur_dashboard_msgsSrvGetSerialNumber_Request> CODEC = new Codec<Ros2Ur_dashboard_msgsSrvGetSerialNumber_Request>() {
            public byte[] encode(Ros2Ur_dashboard_msgsSrvGetSerialNumber_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Ur_dashboard_msgsSrvGetSerialNumber_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Ur_dashboard_msgsSrvGetSerialNumber_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Ur_dashboard_msgsSrvGetSerialNumber_Request value = readRos2Ur_dashboard_msgsSrvGetSerialNumber_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Ur_dashboard_msgsSrvGetSerialNumber_Request(Codecs.Writer writer, Ros2Ur_dashboard_msgsSrvGetSerialNumber_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
    }

    private static Ros2Ur_dashboard_msgsSrvGetSerialNumber_Request readRos2Ur_dashboard_msgsSrvGetSerialNumber_Request(Codecs.Reader reader)
    {
        Ros2Ur_dashboard_msgsSrvGetSerialNumber_Request value = new Ros2Ur_dashboard_msgsSrvGetSerialNumber_Request();
        return value;
    }

    public static final class Ros2Ur_dashboard_msgsSrvGetSerialNumber_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "ur_dashboard_msgs/srv/GetSerialNumber_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_f389641d089fa6fd421348f047732de2122cd714bdb2bd4d1e611592aca349e7";
        public static final int MIN_WIRE_BYTES = 13, MAX_WIRE_BYTES = 269;
        public long serial_number = 0;
        public String answer = "";
        public boolean success = false;

        public Ros2Ur_dashboard_msgsSrvGetSerialNumber_Response()
        {
        }

        public static final Codec<Ros2Ur_dashboard_msgsSrvGetSerialNumber_Response> CODEC = new Codec<Ros2Ur_dashboard_msgsSrvGetSerialNumber_Response>() {
            public byte[] encode(Ros2Ur_dashboard_msgsSrvGetSerialNumber_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Ur_dashboard_msgsSrvGetSerialNumber_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Ur_dashboard_msgsSrvGetSerialNumber_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Ur_dashboard_msgsSrvGetSerialNumber_Response value = readRos2Ur_dashboard_msgsSrvGetSerialNumber_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Ur_dashboard_msgsSrvGetSerialNumber_Response(Codecs.Writer writer, Ros2Ur_dashboard_msgsSrvGetSerialNumber_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        long part0 = value.serial_number;
        writer.integer(part0, 8, false);
        String part1 = value.answer;
        writeText(writer, part1, 256);
        boolean part2 = value.success;
        writer.integer(part2 ? 1 : 0, 1, false);
    }

    private static Ros2Ur_dashboard_msgsSrvGetSerialNumber_Response readRos2Ur_dashboard_msgsSrvGetSerialNumber_Response(Codecs.Reader reader)
    {
        Ros2Ur_dashboard_msgsSrvGetSerialNumber_Response value = new Ros2Ur_dashboard_msgsSrvGetSerialNumber_Response();
        value.serial_number = reader.integer(8, false);
        value.answer = readText(reader, 256);
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Ur_dashboard_msgsSrvGetUserRole_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "ur_dashboard_msgs/srv/GetUserRole_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_a331be09dd2093e4584e6dc80f83caaadd3a8e43cca6a1c8fcfa1e2ea632c9f0";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public Ros2Ur_dashboard_msgsSrvGetUserRole_Request()
        {
        }

        public static final Codec<Ros2Ur_dashboard_msgsSrvGetUserRole_Request> CODEC = new Codec<Ros2Ur_dashboard_msgsSrvGetUserRole_Request>() {
            public byte[] encode(Ros2Ur_dashboard_msgsSrvGetUserRole_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Ur_dashboard_msgsSrvGetUserRole_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Ur_dashboard_msgsSrvGetUserRole_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Ur_dashboard_msgsSrvGetUserRole_Request value = readRos2Ur_dashboard_msgsSrvGetUserRole_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Ur_dashboard_msgsSrvGetUserRole_Request(Codecs.Writer writer, Ros2Ur_dashboard_msgsSrvGetUserRole_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
    }

    private static Ros2Ur_dashboard_msgsSrvGetUserRole_Request readRos2Ur_dashboard_msgsSrvGetUserRole_Request(Codecs.Reader reader)
    {
        Ros2Ur_dashboard_msgsSrvGetUserRole_Request value = new Ros2Ur_dashboard_msgsSrvGetUserRole_Request();
        return value;
    }

    public static final class Ros2Ur_dashboard_msgsSrvGetUserRole_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "ur_dashboard_msgs/srv/GetUserRole_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_ed4f53e59fbe4cd33cfbf5d190b60fbe8371dda7da9d7af6e270a882eb142df8";
        public static final int MIN_WIRE_BYTES = 9, MAX_WIRE_BYTES = 521;
        public Ros2Ur_dashboard_msgsMsgUserRole user_role = new Ros2Ur_dashboard_msgsMsgUserRole();
        public String answer = "";
        public boolean success = false;

        public Ros2Ur_dashboard_msgsSrvGetUserRole_Response()
        {
        }

        public static final Codec<Ros2Ur_dashboard_msgsSrvGetUserRole_Response> CODEC = new Codec<Ros2Ur_dashboard_msgsSrvGetUserRole_Response>() {
            public byte[] encode(Ros2Ur_dashboard_msgsSrvGetUserRole_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Ur_dashboard_msgsSrvGetUserRole_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Ur_dashboard_msgsSrvGetUserRole_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Ur_dashboard_msgsSrvGetUserRole_Response value = readRos2Ur_dashboard_msgsSrvGetUserRole_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Ur_dashboard_msgsSrvGetUserRole_Response(Codecs.Writer writer, Ros2Ur_dashboard_msgsSrvGetUserRole_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Ur_dashboard_msgsMsgUserRole part0 = value.user_role;
        writeRos2Ur_dashboard_msgsMsgUserRole(writer, part0);
        String part1 = value.answer;
        writeText(writer, part1, 256);
        boolean part2 = value.success;
        writer.integer(part2 ? 1 : 0, 1, false);
    }

    private static Ros2Ur_dashboard_msgsSrvGetUserRole_Response readRos2Ur_dashboard_msgsSrvGetUserRole_Response(Codecs.Reader reader)
    {
        Ros2Ur_dashboard_msgsSrvGetUserRole_Response value = new Ros2Ur_dashboard_msgsSrvGetUserRole_Response();
        value.user_role = readRos2Ur_dashboard_msgsMsgUserRole(reader);
        value.answer = readText(reader, 256);
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Ur_dashboard_msgsSrvIsInRemoteControl_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "ur_dashboard_msgs/srv/IsInRemoteControl_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_4b6b86fc4337c36589e8781b46ddbe6992f750b565ff413ea0b069982d87a463";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public Ros2Ur_dashboard_msgsSrvIsInRemoteControl_Request()
        {
        }

        public static final Codec<Ros2Ur_dashboard_msgsSrvIsInRemoteControl_Request> CODEC = new Codec<Ros2Ur_dashboard_msgsSrvIsInRemoteControl_Request>() {
            public byte[] encode(Ros2Ur_dashboard_msgsSrvIsInRemoteControl_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Ur_dashboard_msgsSrvIsInRemoteControl_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Ur_dashboard_msgsSrvIsInRemoteControl_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Ur_dashboard_msgsSrvIsInRemoteControl_Request value = readRos2Ur_dashboard_msgsSrvIsInRemoteControl_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Ur_dashboard_msgsSrvIsInRemoteControl_Request(Codecs.Writer writer, Ros2Ur_dashboard_msgsSrvIsInRemoteControl_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
    }

    private static Ros2Ur_dashboard_msgsSrvIsInRemoteControl_Request readRos2Ur_dashboard_msgsSrvIsInRemoteControl_Request(Codecs.Reader reader)
    {
        Ros2Ur_dashboard_msgsSrvIsInRemoteControl_Request value = new Ros2Ur_dashboard_msgsSrvIsInRemoteControl_Request();
        return value;
    }

    public static final class Ros2Ur_dashboard_msgsSrvIsInRemoteControl_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "ur_dashboard_msgs/srv/IsInRemoteControl_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_f2705c1be319c7c667f4f2224851b06c24b15b4211c2828fab89f09455e4c816";
        public static final int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 262;
        public String answer = "";
        public boolean remote_control = false;
        public boolean success = false;

        public Ros2Ur_dashboard_msgsSrvIsInRemoteControl_Response()
        {
        }

        public static final Codec<Ros2Ur_dashboard_msgsSrvIsInRemoteControl_Response> CODEC = new Codec<Ros2Ur_dashboard_msgsSrvIsInRemoteControl_Response>() {
            public byte[] encode(Ros2Ur_dashboard_msgsSrvIsInRemoteControl_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Ur_dashboard_msgsSrvIsInRemoteControl_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Ur_dashboard_msgsSrvIsInRemoteControl_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Ur_dashboard_msgsSrvIsInRemoteControl_Response value = readRos2Ur_dashboard_msgsSrvIsInRemoteControl_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Ur_dashboard_msgsSrvIsInRemoteControl_Response(Codecs.Writer writer, Ros2Ur_dashboard_msgsSrvIsInRemoteControl_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String part0 = value.answer;
        writeText(writer, part0, 256);
        boolean part1 = value.remote_control;
        writer.integer(part1 ? 1 : 0, 1, false);
        boolean part2 = value.success;
        writer.integer(part2 ? 1 : 0, 1, false);
    }

    private static Ros2Ur_dashboard_msgsSrvIsInRemoteControl_Response readRos2Ur_dashboard_msgsSrvIsInRemoteControl_Response(Codecs.Reader reader)
    {
        Ros2Ur_dashboard_msgsSrvIsInRemoteControl_Response value = new Ros2Ur_dashboard_msgsSrvIsInRemoteControl_Response();
        value.answer = readText(reader, 256);
        value.remote_control = readBool(reader);
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Ur_dashboard_msgsSrvIsProgramRunning_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "ur_dashboard_msgs/srv/IsProgramRunning_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_f28274c0dc01d8aa2f981f969c05a614e6b3922601d578f99c6321a4b20fc80f";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public Ros2Ur_dashboard_msgsSrvIsProgramRunning_Request()
        {
        }

        public static final Codec<Ros2Ur_dashboard_msgsSrvIsProgramRunning_Request> CODEC = new Codec<Ros2Ur_dashboard_msgsSrvIsProgramRunning_Request>() {
            public byte[] encode(Ros2Ur_dashboard_msgsSrvIsProgramRunning_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Ur_dashboard_msgsSrvIsProgramRunning_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Ur_dashboard_msgsSrvIsProgramRunning_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Ur_dashboard_msgsSrvIsProgramRunning_Request value = readRos2Ur_dashboard_msgsSrvIsProgramRunning_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Ur_dashboard_msgsSrvIsProgramRunning_Request(Codecs.Writer writer, Ros2Ur_dashboard_msgsSrvIsProgramRunning_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
    }

    private static Ros2Ur_dashboard_msgsSrvIsProgramRunning_Request readRos2Ur_dashboard_msgsSrvIsProgramRunning_Request(Codecs.Reader reader)
    {
        Ros2Ur_dashboard_msgsSrvIsProgramRunning_Request value = new Ros2Ur_dashboard_msgsSrvIsProgramRunning_Request();
        return value;
    }

    public static final class Ros2Ur_dashboard_msgsSrvIsProgramRunning_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "ur_dashboard_msgs/srv/IsProgramRunning_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_c57cc7ecd7e81f7359824b43884a58f65748a4c77cacbcc45be17aa9147cf499";
        public static final int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 262;
        public String answer = "";
        public boolean program_running = false;
        public boolean success = false;

        public Ros2Ur_dashboard_msgsSrvIsProgramRunning_Response()
        {
        }

        public static final Codec<Ros2Ur_dashboard_msgsSrvIsProgramRunning_Response> CODEC = new Codec<Ros2Ur_dashboard_msgsSrvIsProgramRunning_Response>() {
            public byte[] encode(Ros2Ur_dashboard_msgsSrvIsProgramRunning_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Ur_dashboard_msgsSrvIsProgramRunning_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Ur_dashboard_msgsSrvIsProgramRunning_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Ur_dashboard_msgsSrvIsProgramRunning_Response value = readRos2Ur_dashboard_msgsSrvIsProgramRunning_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Ur_dashboard_msgsSrvIsProgramRunning_Response(Codecs.Writer writer, Ros2Ur_dashboard_msgsSrvIsProgramRunning_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String part0 = value.answer;
        writeText(writer, part0, 256);
        boolean part1 = value.program_running;
        writer.integer(part1 ? 1 : 0, 1, false);
        boolean part2 = value.success;
        writer.integer(part2 ? 1 : 0, 1, false);
    }

    private static Ros2Ur_dashboard_msgsSrvIsProgramRunning_Response readRos2Ur_dashboard_msgsSrvIsProgramRunning_Response(Codecs.Reader reader)
    {
        Ros2Ur_dashboard_msgsSrvIsProgramRunning_Response value = new Ros2Ur_dashboard_msgsSrvIsProgramRunning_Response();
        value.answer = readText(reader, 256);
        value.program_running = readBool(reader);
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Ur_dashboard_msgsSrvIsProgramSaved_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "ur_dashboard_msgs/srv/IsProgramSaved_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_c53d57cffc0480d66257150a8450ba90563fda5153742784831d38abcbc0b099";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public Ros2Ur_dashboard_msgsSrvIsProgramSaved_Request()
        {
        }

        public static final Codec<Ros2Ur_dashboard_msgsSrvIsProgramSaved_Request> CODEC = new Codec<Ros2Ur_dashboard_msgsSrvIsProgramSaved_Request>() {
            public byte[] encode(Ros2Ur_dashboard_msgsSrvIsProgramSaved_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Ur_dashboard_msgsSrvIsProgramSaved_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Ur_dashboard_msgsSrvIsProgramSaved_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Ur_dashboard_msgsSrvIsProgramSaved_Request value = readRos2Ur_dashboard_msgsSrvIsProgramSaved_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Ur_dashboard_msgsSrvIsProgramSaved_Request(Codecs.Writer writer, Ros2Ur_dashboard_msgsSrvIsProgramSaved_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
    }

    private static Ros2Ur_dashboard_msgsSrvIsProgramSaved_Request readRos2Ur_dashboard_msgsSrvIsProgramSaved_Request(Codecs.Reader reader)
    {
        Ros2Ur_dashboard_msgsSrvIsProgramSaved_Request value = new Ros2Ur_dashboard_msgsSrvIsProgramSaved_Request();
        return value;
    }

    public static final class Ros2Ur_dashboard_msgsSrvIsProgramSaved_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "ur_dashboard_msgs/srv/IsProgramSaved_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_aa171247f31fd00a1b8820ee21cf20d159bd10d0d2887dc96b3a4dd4d372d115";
        public static final int MIN_WIRE_BYTES = 10, MAX_WIRE_BYTES = 522;
        public String answer = "";
        public String program_name = "";
        public boolean program_saved = false;
        public boolean success = false;

        public Ros2Ur_dashboard_msgsSrvIsProgramSaved_Response()
        {
        }

        public static final Codec<Ros2Ur_dashboard_msgsSrvIsProgramSaved_Response> CODEC = new Codec<Ros2Ur_dashboard_msgsSrvIsProgramSaved_Response>() {
            public byte[] encode(Ros2Ur_dashboard_msgsSrvIsProgramSaved_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Ur_dashboard_msgsSrvIsProgramSaved_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Ur_dashboard_msgsSrvIsProgramSaved_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Ur_dashboard_msgsSrvIsProgramSaved_Response value = readRos2Ur_dashboard_msgsSrvIsProgramSaved_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Ur_dashboard_msgsSrvIsProgramSaved_Response(Codecs.Writer writer, Ros2Ur_dashboard_msgsSrvIsProgramSaved_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String part0 = value.answer;
        writeText(writer, part0, 256);
        String part1 = value.program_name;
        writeText(writer, part1, 256);
        boolean part2 = value.program_saved;
        writer.integer(part2 ? 1 : 0, 1, false);
        boolean part3 = value.success;
        writer.integer(part3 ? 1 : 0, 1, false);
    }

    private static Ros2Ur_dashboard_msgsSrvIsProgramSaved_Response readRos2Ur_dashboard_msgsSrvIsProgramSaved_Response(Codecs.Reader reader)
    {
        Ros2Ur_dashboard_msgsSrvIsProgramSaved_Response value = new Ros2Ur_dashboard_msgsSrvIsProgramSaved_Response();
        value.answer = readText(reader, 256);
        value.program_name = readText(reader, 256);
        value.program_saved = readBool(reader);
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Ur_dashboard_msgsSrvLoad_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "ur_dashboard_msgs/srv/Load_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_1d0cd6cdeaaafce999a7e9924721246b9f4954f22da40fd0a27fb7b657324876";
        public static final int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 260;
        public String filename = "";

        public Ros2Ur_dashboard_msgsSrvLoad_Request()
        {
        }

        public static final Codec<Ros2Ur_dashboard_msgsSrvLoad_Request> CODEC = new Codec<Ros2Ur_dashboard_msgsSrvLoad_Request>() {
            public byte[] encode(Ros2Ur_dashboard_msgsSrvLoad_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Ur_dashboard_msgsSrvLoad_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Ur_dashboard_msgsSrvLoad_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Ur_dashboard_msgsSrvLoad_Request value = readRos2Ur_dashboard_msgsSrvLoad_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Ur_dashboard_msgsSrvLoad_Request(Codecs.Writer writer, Ros2Ur_dashboard_msgsSrvLoad_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String part0 = value.filename;
        writeText(writer, part0, 256);
    }

    private static Ros2Ur_dashboard_msgsSrvLoad_Request readRos2Ur_dashboard_msgsSrvLoad_Request(Codecs.Reader reader)
    {
        Ros2Ur_dashboard_msgsSrvLoad_Request value = new Ros2Ur_dashboard_msgsSrvLoad_Request();
        value.filename = readText(reader, 256);
        return value;
    }

    public static final class Ros2Ur_dashboard_msgsSrvLoad_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "ur_dashboard_msgs/srv/Load_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_4e694de8079133a8e789add3640dfe19805cad92991a650167c2aae7067da415";
        public static final int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 261;
        public String answer = "";
        public boolean success = false;

        public Ros2Ur_dashboard_msgsSrvLoad_Response()
        {
        }

        public static final Codec<Ros2Ur_dashboard_msgsSrvLoad_Response> CODEC = new Codec<Ros2Ur_dashboard_msgsSrvLoad_Response>() {
            public byte[] encode(Ros2Ur_dashboard_msgsSrvLoad_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Ur_dashboard_msgsSrvLoad_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Ur_dashboard_msgsSrvLoad_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Ur_dashboard_msgsSrvLoad_Response value = readRos2Ur_dashboard_msgsSrvLoad_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Ur_dashboard_msgsSrvLoad_Response(Codecs.Writer writer, Ros2Ur_dashboard_msgsSrvLoad_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String part0 = value.answer;
        writeText(writer, part0, 256);
        boolean part1 = value.success;
        writer.integer(part1 ? 1 : 0, 1, false);
    }

    private static Ros2Ur_dashboard_msgsSrvLoad_Response readRos2Ur_dashboard_msgsSrvLoad_Response(Codecs.Reader reader)
    {
        Ros2Ur_dashboard_msgsSrvLoad_Response value = new Ros2Ur_dashboard_msgsSrvLoad_Response();
        value.answer = readText(reader, 256);
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Ur_dashboard_msgsSrvPopup_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "ur_dashboard_msgs/srv/Popup_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_369e6eab4f689a846c52fcc5cb539da63fab3939fab254dd1e04c7b274d5f770";
        public static final int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 520;
        public String message = "";
        public String title = "";

        public Ros2Ur_dashboard_msgsSrvPopup_Request()
        {
        }

        public static final Codec<Ros2Ur_dashboard_msgsSrvPopup_Request> CODEC = new Codec<Ros2Ur_dashboard_msgsSrvPopup_Request>() {
            public byte[] encode(Ros2Ur_dashboard_msgsSrvPopup_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Ur_dashboard_msgsSrvPopup_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Ur_dashboard_msgsSrvPopup_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Ur_dashboard_msgsSrvPopup_Request value = readRos2Ur_dashboard_msgsSrvPopup_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Ur_dashboard_msgsSrvPopup_Request(Codecs.Writer writer, Ros2Ur_dashboard_msgsSrvPopup_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String part0 = value.message;
        writeText(writer, part0, 256);
        String part1 = value.title;
        writeText(writer, part1, 256);
    }

    private static Ros2Ur_dashboard_msgsSrvPopup_Request readRos2Ur_dashboard_msgsSrvPopup_Request(Codecs.Reader reader)
    {
        Ros2Ur_dashboard_msgsSrvPopup_Request value = new Ros2Ur_dashboard_msgsSrvPopup_Request();
        value.message = readText(reader, 256);
        value.title = readText(reader, 256);
        return value;
    }

    public static final class Ros2Ur_dashboard_msgsSrvPopup_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "ur_dashboard_msgs/srv/Popup_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_0b54f7c477c1ddf8ccb18d12d50eaf308225d4927ee377377ed354426e58f984";
        public static final int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 261;
        public String answer = "";
        public boolean success = false;

        public Ros2Ur_dashboard_msgsSrvPopup_Response()
        {
        }

        public static final Codec<Ros2Ur_dashboard_msgsSrvPopup_Response> CODEC = new Codec<Ros2Ur_dashboard_msgsSrvPopup_Response>() {
            public byte[] encode(Ros2Ur_dashboard_msgsSrvPopup_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Ur_dashboard_msgsSrvPopup_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Ur_dashboard_msgsSrvPopup_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Ur_dashboard_msgsSrvPopup_Response value = readRos2Ur_dashboard_msgsSrvPopup_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Ur_dashboard_msgsSrvPopup_Response(Codecs.Writer writer, Ros2Ur_dashboard_msgsSrvPopup_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String part0 = value.answer;
        writeText(writer, part0, 256);
        boolean part1 = value.success;
        writer.integer(part1 ? 1 : 0, 1, false);
    }

    private static Ros2Ur_dashboard_msgsSrvPopup_Response readRos2Ur_dashboard_msgsSrvPopup_Response(Codecs.Reader reader)
    {
        Ros2Ur_dashboard_msgsSrvPopup_Response value = new Ros2Ur_dashboard_msgsSrvPopup_Response();
        value.answer = readText(reader, 256);
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Ur_dashboard_msgsSrvRawRequest_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "ur_dashboard_msgs/srv/RawRequest_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_2bf66d87b20ca2de9ed94c04c79042a50239728320b43b27c9942405795b4555";
        public static final int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 260;
        public String query = "";

        public Ros2Ur_dashboard_msgsSrvRawRequest_Request()
        {
        }

        public static final Codec<Ros2Ur_dashboard_msgsSrvRawRequest_Request> CODEC = new Codec<Ros2Ur_dashboard_msgsSrvRawRequest_Request>() {
            public byte[] encode(Ros2Ur_dashboard_msgsSrvRawRequest_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Ur_dashboard_msgsSrvRawRequest_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Ur_dashboard_msgsSrvRawRequest_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Ur_dashboard_msgsSrvRawRequest_Request value = readRos2Ur_dashboard_msgsSrvRawRequest_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Ur_dashboard_msgsSrvRawRequest_Request(Codecs.Writer writer, Ros2Ur_dashboard_msgsSrvRawRequest_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String part0 = value.query;
        writeText(writer, part0, 256);
    }

    private static Ros2Ur_dashboard_msgsSrvRawRequest_Request readRos2Ur_dashboard_msgsSrvRawRequest_Request(Codecs.Reader reader)
    {
        Ros2Ur_dashboard_msgsSrvRawRequest_Request value = new Ros2Ur_dashboard_msgsSrvRawRequest_Request();
        value.query = readText(reader, 256);
        return value;
    }

    public static final class Ros2Ur_dashboard_msgsSrvRawRequest_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "ur_dashboard_msgs/srv/RawRequest_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_7c37f54149bab54f6e7bbfed41992eb54416b31346bc889a9632d5497111267f";
        public static final int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 260;
        public String answer = "";

        public Ros2Ur_dashboard_msgsSrvRawRequest_Response()
        {
        }

        public static final Codec<Ros2Ur_dashboard_msgsSrvRawRequest_Response> CODEC = new Codec<Ros2Ur_dashboard_msgsSrvRawRequest_Response>() {
            public byte[] encode(Ros2Ur_dashboard_msgsSrvRawRequest_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Ur_dashboard_msgsSrvRawRequest_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Ur_dashboard_msgsSrvRawRequest_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Ur_dashboard_msgsSrvRawRequest_Response value = readRos2Ur_dashboard_msgsSrvRawRequest_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Ur_dashboard_msgsSrvRawRequest_Response(Codecs.Writer writer, Ros2Ur_dashboard_msgsSrvRawRequest_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String part0 = value.answer;
        writeText(writer, part0, 256);
    }

    private static Ros2Ur_dashboard_msgsSrvRawRequest_Response readRos2Ur_dashboard_msgsSrvRawRequest_Response(Codecs.Reader reader)
    {
        Ros2Ur_dashboard_msgsSrvRawRequest_Response value = new Ros2Ur_dashboard_msgsSrvRawRequest_Response();
        value.answer = readText(reader, 256);
        return value;
    }

    public static final class Ros2Ur_dashboard_msgsSrvSetOperationalMode_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "ur_dashboard_msgs/srv/SetOperationalMode_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_8cc61f7c64211c46e01e52eee2c05f6e709f4f0900cf24fdfd4079b0f7581a00";
        public static final int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 260;
        public Ros2Ur_dashboard_msgsMsgOperationalMode operational_mode = new Ros2Ur_dashboard_msgsMsgOperationalMode();

        public Ros2Ur_dashboard_msgsSrvSetOperationalMode_Request()
        {
        }

        public static final Codec<Ros2Ur_dashboard_msgsSrvSetOperationalMode_Request> CODEC = new Codec<Ros2Ur_dashboard_msgsSrvSetOperationalMode_Request>() {
            public byte[] encode(Ros2Ur_dashboard_msgsSrvSetOperationalMode_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Ur_dashboard_msgsSrvSetOperationalMode_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Ur_dashboard_msgsSrvSetOperationalMode_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Ur_dashboard_msgsSrvSetOperationalMode_Request value = readRos2Ur_dashboard_msgsSrvSetOperationalMode_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Ur_dashboard_msgsSrvSetOperationalMode_Request(Codecs.Writer writer, Ros2Ur_dashboard_msgsSrvSetOperationalMode_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Ur_dashboard_msgsMsgOperationalMode part0 = value.operational_mode;
        writeRos2Ur_dashboard_msgsMsgOperationalMode(writer, part0);
    }

    private static Ros2Ur_dashboard_msgsSrvSetOperationalMode_Request readRos2Ur_dashboard_msgsSrvSetOperationalMode_Request(Codecs.Reader reader)
    {
        Ros2Ur_dashboard_msgsSrvSetOperationalMode_Request value = new Ros2Ur_dashboard_msgsSrvSetOperationalMode_Request();
        value.operational_mode = readRos2Ur_dashboard_msgsMsgOperationalMode(reader);
        return value;
    }

    public static final class Ros2Ur_dashboard_msgsSrvSetOperationalMode_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "ur_dashboard_msgs/srv/SetOperationalMode_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_f5009de077224371e9d2f6c0aecbabd24c80148f2c7e1b1383a64f6f214b202a";
        public static final int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 261;
        public String answer = "";
        public boolean success = false;

        public Ros2Ur_dashboard_msgsSrvSetOperationalMode_Response()
        {
        }

        public static final Codec<Ros2Ur_dashboard_msgsSrvSetOperationalMode_Response> CODEC =
            new Codec<Ros2Ur_dashboard_msgsSrvSetOperationalMode_Response>() {
                public byte[] encode(Ros2Ur_dashboard_msgsSrvSetOperationalMode_Response value)
                {
                    Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                    writeRos2Ur_dashboard_msgsSrvSetOperationalMode_Response(writer, value);
                    byte[] wire = writer.finish();
                    if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                        throw new IllegalArgumentException("complete encoded extent");
                    return wire;
                }
                public Ros2Ur_dashboard_msgsSrvSetOperationalMode_Response decode(byte[] bytes)
                {
                    Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                    Ros2Ur_dashboard_msgsSrvSetOperationalMode_Response value = readRos2Ur_dashboard_msgsSrvSetOperationalMode_Response(reader);
                    reader.end();
                    return value;
                }
            };
    }

    private static void writeRos2Ur_dashboard_msgsSrvSetOperationalMode_Response(Codecs.Writer writer,
                                                                                 Ros2Ur_dashboard_msgsSrvSetOperationalMode_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String part0 = value.answer;
        writeText(writer, part0, 256);
        boolean part1 = value.success;
        writer.integer(part1 ? 1 : 0, 1, false);
    }

    private static Ros2Ur_dashboard_msgsSrvSetOperationalMode_Response readRos2Ur_dashboard_msgsSrvSetOperationalMode_Response(Codecs.Reader reader)
    {
        Ros2Ur_dashboard_msgsSrvSetOperationalMode_Response value = new Ros2Ur_dashboard_msgsSrvSetOperationalMode_Response();
        value.answer = readText(reader, 256);
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Ur_dashboard_msgsSrvSetUserRole_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "ur_dashboard_msgs/srv/SetUserRole_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_7bd499947803efca81401a2de496d24e7e54ba97f4f86ec2b3089146a0655f5e";
        public static final int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 260;
        public Ros2Ur_dashboard_msgsMsgUserRole user_role = new Ros2Ur_dashboard_msgsMsgUserRole();

        public Ros2Ur_dashboard_msgsSrvSetUserRole_Request()
        {
        }

        public static final Codec<Ros2Ur_dashboard_msgsSrvSetUserRole_Request> CODEC = new Codec<Ros2Ur_dashboard_msgsSrvSetUserRole_Request>() {
            public byte[] encode(Ros2Ur_dashboard_msgsSrvSetUserRole_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Ur_dashboard_msgsSrvSetUserRole_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Ur_dashboard_msgsSrvSetUserRole_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Ur_dashboard_msgsSrvSetUserRole_Request value = readRos2Ur_dashboard_msgsSrvSetUserRole_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Ur_dashboard_msgsSrvSetUserRole_Request(Codecs.Writer writer, Ros2Ur_dashboard_msgsSrvSetUserRole_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Ur_dashboard_msgsMsgUserRole part0 = value.user_role;
        writeRos2Ur_dashboard_msgsMsgUserRole(writer, part0);
    }

    private static Ros2Ur_dashboard_msgsSrvSetUserRole_Request readRos2Ur_dashboard_msgsSrvSetUserRole_Request(Codecs.Reader reader)
    {
        Ros2Ur_dashboard_msgsSrvSetUserRole_Request value = new Ros2Ur_dashboard_msgsSrvSetUserRole_Request();
        value.user_role = readRos2Ur_dashboard_msgsMsgUserRole(reader);
        return value;
    }

    public static final class Ros2Ur_dashboard_msgsSrvSetUserRole_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "ur_dashboard_msgs/srv/SetUserRole_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_4cab2bba5030f4e4b9e90252d64ec2e02d6eb87070b75cf43190fecd21da59fd";
        public static final int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 261;
        public boolean success = false;
        public String answer = "";

        public Ros2Ur_dashboard_msgsSrvSetUserRole_Response()
        {
        }

        public static final Codec<Ros2Ur_dashboard_msgsSrvSetUserRole_Response> CODEC = new Codec<Ros2Ur_dashboard_msgsSrvSetUserRole_Response>() {
            public byte[] encode(Ros2Ur_dashboard_msgsSrvSetUserRole_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Ur_dashboard_msgsSrvSetUserRole_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Ur_dashboard_msgsSrvSetUserRole_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Ur_dashboard_msgsSrvSetUserRole_Response value = readRos2Ur_dashboard_msgsSrvSetUserRole_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Ur_dashboard_msgsSrvSetUserRole_Response(Codecs.Writer writer, Ros2Ur_dashboard_msgsSrvSetUserRole_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
        String part1 = value.answer;
        writeText(writer, part1, 256);
    }

    private static Ros2Ur_dashboard_msgsSrvSetUserRole_Response readRos2Ur_dashboard_msgsSrvSetUserRole_Response(Codecs.Reader reader)
    {
        Ros2Ur_dashboard_msgsSrvSetUserRole_Response value = new Ros2Ur_dashboard_msgsSrvSetUserRole_Response();
        value.success = readBool(reader);
        value.answer = readText(reader, 256);
        return value;
    }

    public static final class Ros2Ur_dashboard_msgsSrvUploadProgram_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "ur_dashboard_msgs/srv/UploadProgram_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_f7501d0115f8d36b1942ce610b1bbc197d0276de508ac8175d539f40494f437b";
        public static final int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 260;
        public String file_path = "";

        public Ros2Ur_dashboard_msgsSrvUploadProgram_Request()
        {
        }

        public static final Codec<Ros2Ur_dashboard_msgsSrvUploadProgram_Request> CODEC = new Codec<Ros2Ur_dashboard_msgsSrvUploadProgram_Request>() {
            public byte[] encode(Ros2Ur_dashboard_msgsSrvUploadProgram_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Ur_dashboard_msgsSrvUploadProgram_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Ur_dashboard_msgsSrvUploadProgram_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Ur_dashboard_msgsSrvUploadProgram_Request value = readRos2Ur_dashboard_msgsSrvUploadProgram_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Ur_dashboard_msgsSrvUploadProgram_Request(Codecs.Writer writer, Ros2Ur_dashboard_msgsSrvUploadProgram_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String part0 = value.file_path;
        writeText(writer, part0, 256);
    }

    private static Ros2Ur_dashboard_msgsSrvUploadProgram_Request readRos2Ur_dashboard_msgsSrvUploadProgram_Request(Codecs.Reader reader)
    {
        Ros2Ur_dashboard_msgsSrvUploadProgram_Request value = new Ros2Ur_dashboard_msgsSrvUploadProgram_Request();
        value.file_path = readText(reader, 256);
        return value;
    }

    public static final class Ros2Ur_dashboard_msgsSrvUploadProgram_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "ur_dashboard_msgs/srv/UploadProgram_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_ae9a28c1cd4729f54968d18a16e2f8f417bdc5e9bc15809de7481f1f20e6b398";
        public static final int MIN_WIRE_BYTES = 9, MAX_WIRE_BYTES = 521;
        public String answer = "";
        public String program_name = "";
        public boolean success = false;

        public Ros2Ur_dashboard_msgsSrvUploadProgram_Response()
        {
        }

        public static final Codec<Ros2Ur_dashboard_msgsSrvUploadProgram_Response> CODEC = new Codec<Ros2Ur_dashboard_msgsSrvUploadProgram_Response>() {
            public byte[] encode(Ros2Ur_dashboard_msgsSrvUploadProgram_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Ur_dashboard_msgsSrvUploadProgram_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Ur_dashboard_msgsSrvUploadProgram_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Ur_dashboard_msgsSrvUploadProgram_Response value = readRos2Ur_dashboard_msgsSrvUploadProgram_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Ur_dashboard_msgsSrvUploadProgram_Response(Codecs.Writer writer, Ros2Ur_dashboard_msgsSrvUploadProgram_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String part0 = value.answer;
        writeText(writer, part0, 256);
        String part1 = value.program_name;
        writeText(writer, part1, 256);
        boolean part2 = value.success;
        writer.integer(part2 ? 1 : 0, 1, false);
    }

    private static Ros2Ur_dashboard_msgsSrvUploadProgram_Response readRos2Ur_dashboard_msgsSrvUploadProgram_Response(Codecs.Reader reader)
    {
        Ros2Ur_dashboard_msgsSrvUploadProgram_Response value = new Ros2Ur_dashboard_msgsSrvUploadProgram_Response();
        value.answer = readText(reader, 256);
        value.program_name = readText(reader, 256);
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Ur_msgsActionFollowJointTrajectoryUntil_Goal
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "ur_msgs/action/FollowJointTrajectoryUntil_Goal";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_78fda8f2d20c502e24b1ad4fe55f34bba41de20ff88e71b56d7a0631d7a3905a";
        public static final int MIN_WIRE_BYTES = 37, MAX_WIRE_BYTES = 7053;
        public Ros2Trajectory_msgsMsgJointTrajectory trajectory = new Ros2Trajectory_msgsMsgJointTrajectory();
        public Ros2Control_msgsMsgJointTolerance[] path_tolerance = new Ros2Control_msgsMsgJointTolerance[0];
        public Ros2Control_msgsMsgJointTolerance[] goal_tolerance = new Ros2Control_msgsMsgJointTolerance[0];
        public Ros2Builtin_interfacesMsgDuration goal_time_tolerance = new Ros2Builtin_interfacesMsgDuration();
        public int until_type = 0;

        public Ros2Ur_msgsActionFollowJointTrajectoryUntil_Goal()
        {
        }

        public static final Codec<Ros2Ur_msgsActionFollowJointTrajectoryUntil_Goal> CODEC = new Codec<Ros2Ur_msgsActionFollowJointTrajectoryUntil_Goal>() {
            public byte[] encode(Ros2Ur_msgsActionFollowJointTrajectoryUntil_Goal value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Ur_msgsActionFollowJointTrajectoryUntil_Goal(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Ur_msgsActionFollowJointTrajectoryUntil_Goal decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Ur_msgsActionFollowJointTrajectoryUntil_Goal value = readRos2Ur_msgsActionFollowJointTrajectoryUntil_Goal(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Ur_msgsActionFollowJointTrajectoryUntil_Goal(Codecs.Writer writer, Ros2Ur_msgsActionFollowJointTrajectoryUntil_Goal value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Trajectory_msgsMsgJointTrajectory part0 = value.trajectory;
        writeRos2Trajectory_msgsMsgJointTrajectory(writer, part0);
        Ros2Control_msgsMsgJointTolerance[] part1 = value.path_tolerance;
        if(part1 == null || part1.length > 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part1.length, 4, false);
        for(int i = 0; i < part1.length; ++i)
        {
            writeRos2Control_msgsMsgJointTolerance(writer, part1[i]);
        }
        Ros2Control_msgsMsgJointTolerance[] part2 = value.goal_tolerance;
        if(part2 == null || part2.length > 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part2.length, 4, false);
        for(int i = 0; i < part2.length; ++i)
        {
            writeRos2Control_msgsMsgJointTolerance(writer, part2[i]);
        }
        Ros2Builtin_interfacesMsgDuration part3 = value.goal_time_tolerance;
        writeRos2Builtin_interfacesMsgDuration(writer, part3);
        int part4 = value.until_type;
        writer.integer(part4, 1, false);
    }

    private static Ros2Ur_msgsActionFollowJointTrajectoryUntil_Goal readRos2Ur_msgsActionFollowJointTrajectoryUntil_Goal(Codecs.Reader reader)
    {
        Ros2Ur_msgsActionFollowJointTrajectoryUntil_Goal value = new Ros2Ur_msgsActionFollowJointTrajectoryUntil_Goal();
        value.trajectory = readRos2Trajectory_msgsMsgJointTrajectory(reader);
        value.path_tolerance = new Ros2Control_msgsMsgJointTolerance[readCount(reader, 6, 28)];
        for(int i = 0; i < value.path_tolerance.length; ++i)
            value.path_tolerance[i] = readRos2Control_msgsMsgJointTolerance(reader);
        value.goal_tolerance = new Ros2Control_msgsMsgJointTolerance[readCount(reader, 6, 28)];
        for(int i = 0; i < value.goal_tolerance.length; ++i)
            value.goal_tolerance[i] = readRos2Control_msgsMsgJointTolerance(reader);
        value.goal_time_tolerance = readRos2Builtin_interfacesMsgDuration(reader);
        value.until_type = (int)reader.integer(1, false);
        return value;
    }

    public static final class Ros2Ur_msgsActionFollowJointTrajectoryUntil_Result
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "ur_msgs/action/FollowJointTrajectoryUntil_Result";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_de92b9ccfb9c93f3afae9da5e8e31df9a6d6a606479fe27b9bcf14ff329bc869";
        public static final int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 268;
        public int error_code = 0;
        public int until_condition_result = 0;
        public String error_string = "";

        public Ros2Ur_msgsActionFollowJointTrajectoryUntil_Result()
        {
        }

        public static final Codec<Ros2Ur_msgsActionFollowJointTrajectoryUntil_Result> CODEC = new Codec<Ros2Ur_msgsActionFollowJointTrajectoryUntil_Result>() {
            public byte[] encode(Ros2Ur_msgsActionFollowJointTrajectoryUntil_Result value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Ur_msgsActionFollowJointTrajectoryUntil_Result(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Ur_msgsActionFollowJointTrajectoryUntil_Result decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Ur_msgsActionFollowJointTrajectoryUntil_Result value = readRos2Ur_msgsActionFollowJointTrajectoryUntil_Result(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Ur_msgsActionFollowJointTrajectoryUntil_Result(Codecs.Writer writer, Ros2Ur_msgsActionFollowJointTrajectoryUntil_Result value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int part0 = value.error_code;
        writer.integer(part0, 4, true);
        int part1 = value.until_condition_result;
        writer.integer(part1, 4, true);
        String part2 = value.error_string;
        writeText(writer, part2, 256);
    }

    private static Ros2Ur_msgsActionFollowJointTrajectoryUntil_Result readRos2Ur_msgsActionFollowJointTrajectoryUntil_Result(Codecs.Reader reader)
    {
        Ros2Ur_msgsActionFollowJointTrajectoryUntil_Result value = new Ros2Ur_msgsActionFollowJointTrajectoryUntil_Result();
        value.error_code = (int)reader.integer(4, true);
        value.until_condition_result = (int)reader.integer(4, true);
        value.error_string = readText(reader, 256);
        return value;
    }

    public static final class Ros2Ur_msgsActionFollowJointTrajectoryUntil_Feedback
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "ur_msgs/action/FollowJointTrajectoryUntil_Feedback";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_5a719f991f5c73784f9dc9e962ecfa0541e00daef7f747c312d4b633d63040ac";
        public static final int MIN_WIRE_BYTES = 88, MAX_WIRE_BYTES = 2352;
        public Ros2Std_msgsMsgHeader header = new Ros2Std_msgsMsgHeader();
        public String[] joint_names = new String[0];
        public Ros2Trajectory_msgsMsgJointTrajectoryPoint desired = new Ros2Trajectory_msgsMsgJointTrajectoryPoint();
        public Ros2Trajectory_msgsMsgJointTrajectoryPoint actual = new Ros2Trajectory_msgsMsgJointTrajectoryPoint();
        public Ros2Trajectory_msgsMsgJointTrajectoryPoint error = new Ros2Trajectory_msgsMsgJointTrajectoryPoint();

        public Ros2Ur_msgsActionFollowJointTrajectoryUntil_Feedback()
        {
        }

        public static final Codec<Ros2Ur_msgsActionFollowJointTrajectoryUntil_Feedback> CODEC =
            new Codec<Ros2Ur_msgsActionFollowJointTrajectoryUntil_Feedback>() {
                public byte[] encode(Ros2Ur_msgsActionFollowJointTrajectoryUntil_Feedback value)
                {
                    Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                    writeRos2Ur_msgsActionFollowJointTrajectoryUntil_Feedback(writer, value);
                    byte[] wire = writer.finish();
                    if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                        throw new IllegalArgumentException("complete encoded extent");
                    return wire;
                }
                public Ros2Ur_msgsActionFollowJointTrajectoryUntil_Feedback decode(byte[] bytes)
                {
                    Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                    Ros2Ur_msgsActionFollowJointTrajectoryUntil_Feedback value = readRos2Ur_msgsActionFollowJointTrajectoryUntil_Feedback(reader);
                    reader.end();
                    return value;
                }
            };
    }

    private static void writeRos2Ur_msgsActionFollowJointTrajectoryUntil_Feedback(Codecs.Writer writer,
                                                                                  Ros2Ur_msgsActionFollowJointTrajectoryUntil_Feedback value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Std_msgsMsgHeader part0 = value.header;
        writeRos2Std_msgsMsgHeader(writer, part0);
        String[] part1 = value.joint_names;
        if(part1 == null || part1.length > 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part1.length, 4, false);
        for(int i = 0; i < part1.length; ++i)
        {
            writeText(writer, part1[i], 256);
        }
        Ros2Trajectory_msgsMsgJointTrajectoryPoint part2 = value.desired;
        writeRos2Trajectory_msgsMsgJointTrajectoryPoint(writer, part2);
        Ros2Trajectory_msgsMsgJointTrajectoryPoint part3 = value.actual;
        writeRos2Trajectory_msgsMsgJointTrajectoryPoint(writer, part3);
        Ros2Trajectory_msgsMsgJointTrajectoryPoint part4 = value.error;
        writeRos2Trajectory_msgsMsgJointTrajectoryPoint(writer, part4);
    }

    private static Ros2Ur_msgsActionFollowJointTrajectoryUntil_Feedback readRos2Ur_msgsActionFollowJointTrajectoryUntil_Feedback(Codecs.Reader reader)
    {
        Ros2Ur_msgsActionFollowJointTrajectoryUntil_Feedback value = new Ros2Ur_msgsActionFollowJointTrajectoryUntil_Feedback();
        value.header = readRos2Std_msgsMsgHeader(reader);
        value.joint_names = new String[readCount(reader, 6, 4)];
        for(int i = 0; i < value.joint_names.length; ++i)
            value.joint_names[i] = readText(reader, 256);
        value.desired = readRos2Trajectory_msgsMsgJointTrajectoryPoint(reader);
        value.actual = readRos2Trajectory_msgsMsgJointTrajectoryPoint(reader);
        value.error = readRos2Trajectory_msgsMsgJointTrajectoryPoint(reader);
        return value;
    }

    public static final class Ros2Ur_msgsActionSendScript_Goal
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "ur_msgs/action/SendScript_Goal";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_c277cd00663786f95201e61baa658b92def3becc1f37e54aa6093bb11135819c";
        public static final int MIN_WIRE_BYTES = 17, MAX_WIRE_BYTES = 8465;
        public String program = "";
        public String script_name = "";
        public Ros2Builtin_interfacesMsgDuration start_timeout = new Ros2Builtin_interfacesMsgDuration();
        public boolean fail_on_warnings = true;

        public Ros2Ur_msgsActionSendScript_Goal()
        {
        }

        public static final Codec<Ros2Ur_msgsActionSendScript_Goal> CODEC = new Codec<Ros2Ur_msgsActionSendScript_Goal>() {
            public byte[] encode(Ros2Ur_msgsActionSendScript_Goal value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Ur_msgsActionSendScript_Goal(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Ur_msgsActionSendScript_Goal decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Ur_msgsActionSendScript_Goal value = readRos2Ur_msgsActionSendScript_Goal(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Ur_msgsActionSendScript_Goal(Codecs.Writer writer, Ros2Ur_msgsActionSendScript_Goal value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String part0 = value.program;
        writeText(writer, part0, 8192);
        String part1 = value.script_name;
        writeText(writer, part1, 256);
        Ros2Builtin_interfacesMsgDuration part2 = value.start_timeout;
        writeRos2Builtin_interfacesMsgDuration(writer, part2);
        boolean part3 = value.fail_on_warnings;
        writer.integer(part3 ? 1 : 0, 1, false);
    }

    private static Ros2Ur_msgsActionSendScript_Goal readRos2Ur_msgsActionSendScript_Goal(Codecs.Reader reader)
    {
        Ros2Ur_msgsActionSendScript_Goal value = new Ros2Ur_msgsActionSendScript_Goal();
        value.program = readText(reader, 8192);
        value.script_name = readText(reader, 256);
        value.start_timeout = readRos2Builtin_interfacesMsgDuration(reader);
        value.fail_on_warnings = readBool(reader);
        return value;
    }

    public static final class Ros2Ur_msgsActionSendScript_Result
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "ur_msgs/action/SendScript_Result";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_d4c4d9721c3a576f590ba4967b2444a82969d6ccba94ddbf8c4a974535ee17d2";
        public static final int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 261;
        public boolean success = false;
        public String message = "";

        public Ros2Ur_msgsActionSendScript_Result()
        {
        }

        public static final Codec<Ros2Ur_msgsActionSendScript_Result> CODEC = new Codec<Ros2Ur_msgsActionSendScript_Result>() {
            public byte[] encode(Ros2Ur_msgsActionSendScript_Result value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Ur_msgsActionSendScript_Result(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Ur_msgsActionSendScript_Result decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Ur_msgsActionSendScript_Result value = readRos2Ur_msgsActionSendScript_Result(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Ur_msgsActionSendScript_Result(Codecs.Writer writer, Ros2Ur_msgsActionSendScript_Result value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
        String part1 = value.message;
        writeText(writer, part1, 256);
    }

    private static Ros2Ur_msgsActionSendScript_Result readRos2Ur_msgsActionSendScript_Result(Codecs.Reader reader)
    {
        Ros2Ur_msgsActionSendScript_Result value = new Ros2Ur_msgsActionSendScript_Result();
        value.success = readBool(reader);
        value.message = readText(reader, 256);
        return value;
    }

    public static final class Ros2Ur_msgsActionSendScript_Feedback
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "ur_msgs/action/SendScript_Feedback";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_094876d6467bd2b34f74cc6b574393117753add5254285e4e95d85b07328ef2c";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public Ros2Ur_msgsActionSendScript_Feedback()
        {
        }

        public static final Codec<Ros2Ur_msgsActionSendScript_Feedback> CODEC = new Codec<Ros2Ur_msgsActionSendScript_Feedback>() {
            public byte[] encode(Ros2Ur_msgsActionSendScript_Feedback value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Ur_msgsActionSendScript_Feedback(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Ur_msgsActionSendScript_Feedback decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Ur_msgsActionSendScript_Feedback value = readRos2Ur_msgsActionSendScript_Feedback(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Ur_msgsActionSendScript_Feedback(Codecs.Writer writer, Ros2Ur_msgsActionSendScript_Feedback value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
    }

    private static Ros2Ur_msgsActionSendScript_Feedback readRos2Ur_msgsActionSendScript_Feedback(Codecs.Reader reader)
    {
        Ros2Ur_msgsActionSendScript_Feedback value = new Ros2Ur_msgsActionSendScript_Feedback();
        return value;
    }

    public static final class Ros2Ur_msgsActionToolContact_Goal
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "ur_msgs/action/ToolContact_Goal";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_150298ad16b1bc37d47bd3324cd4ec301ad8402c07779e8a435ce61daa7578dd";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public Ros2Ur_msgsActionToolContact_Goal()
        {
        }

        public static final Codec<Ros2Ur_msgsActionToolContact_Goal> CODEC = new Codec<Ros2Ur_msgsActionToolContact_Goal>() {
            public byte[] encode(Ros2Ur_msgsActionToolContact_Goal value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Ur_msgsActionToolContact_Goal(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Ur_msgsActionToolContact_Goal decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Ur_msgsActionToolContact_Goal value = readRos2Ur_msgsActionToolContact_Goal(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Ur_msgsActionToolContact_Goal(Codecs.Writer writer, Ros2Ur_msgsActionToolContact_Goal value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
    }

    private static Ros2Ur_msgsActionToolContact_Goal readRos2Ur_msgsActionToolContact_Goal(Codecs.Reader reader)
    {
        Ros2Ur_msgsActionToolContact_Goal value = new Ros2Ur_msgsActionToolContact_Goal();
        return value;
    }

    public static final class Ros2Ur_msgsActionToolContact_Result
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "ur_msgs/action/ToolContact_Result";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_b79f6080ac18b67c25131458a2af0a3c235d624c00fc5c13da534cc546c94578";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public Ros2Ur_msgsActionToolContact_Result()
        {
        }

        public static final Codec<Ros2Ur_msgsActionToolContact_Result> CODEC = new Codec<Ros2Ur_msgsActionToolContact_Result>() {
            public byte[] encode(Ros2Ur_msgsActionToolContact_Result value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Ur_msgsActionToolContact_Result(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Ur_msgsActionToolContact_Result decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Ur_msgsActionToolContact_Result value = readRos2Ur_msgsActionToolContact_Result(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Ur_msgsActionToolContact_Result(Codecs.Writer writer, Ros2Ur_msgsActionToolContact_Result value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
    }

    private static Ros2Ur_msgsActionToolContact_Result readRos2Ur_msgsActionToolContact_Result(Codecs.Reader reader)
    {
        Ros2Ur_msgsActionToolContact_Result value = new Ros2Ur_msgsActionToolContact_Result();
        return value;
    }

    public static final class Ros2Ur_msgsActionToolContact_Feedback
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "ur_msgs/action/ToolContact_Feedback";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_c6a11fd615f72a70a98514703de4c007a2bb161fbd8a953c5e8b899f471f4c5b";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public Ros2Ur_msgsActionToolContact_Feedback()
        {
        }

        public static final Codec<Ros2Ur_msgsActionToolContact_Feedback> CODEC = new Codec<Ros2Ur_msgsActionToolContact_Feedback>() {
            public byte[] encode(Ros2Ur_msgsActionToolContact_Feedback value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Ur_msgsActionToolContact_Feedback(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Ur_msgsActionToolContact_Feedback decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Ur_msgsActionToolContact_Feedback value = readRos2Ur_msgsActionToolContact_Feedback(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Ur_msgsActionToolContact_Feedback(Codecs.Writer writer, Ros2Ur_msgsActionToolContact_Feedback value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
    }

    private static Ros2Ur_msgsActionToolContact_Feedback readRos2Ur_msgsActionToolContact_Feedback(Codecs.Reader reader)
    {
        Ros2Ur_msgsActionToolContact_Feedback value = new Ros2Ur_msgsActionToolContact_Feedback();
        return value;
    }

    public static final class Ros2Ur_msgsMsgAnalog
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "ur_msgs/msg/Analog";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_68873e85836e1a65d7b67a52f5db8b3c3be082f889d2df4342386b282988f2a4";
        public static final int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 6;
        public int pin = 0;
        public int domain = 0;
        public float state = 0;

        public Ros2Ur_msgsMsgAnalog()
        {
        }

        public static final Codec<Ros2Ur_msgsMsgAnalog> CODEC = new Codec<Ros2Ur_msgsMsgAnalog>() {
            public byte[] encode(Ros2Ur_msgsMsgAnalog value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Ur_msgsMsgAnalog(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Ur_msgsMsgAnalog decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Ur_msgsMsgAnalog value = readRos2Ur_msgsMsgAnalog(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Ur_msgsMsgAnalog(Codecs.Writer writer, Ros2Ur_msgsMsgAnalog value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int part0 = value.pin;
        writer.integer(part0, 1, false);
        int part1 = value.domain;
        writer.integer(part1, 1, false);
        float part2 = value.state;
        writer.f32(part2);
    }

    private static Ros2Ur_msgsMsgAnalog readRos2Ur_msgsMsgAnalog(Codecs.Reader reader)
    {
        Ros2Ur_msgsMsgAnalog value = new Ros2Ur_msgsMsgAnalog();
        value.pin = (int)reader.integer(1, false);
        value.domain = (int)reader.integer(1, false);
        value.state = reader.f32();
        return value;
    }

    public static final class Ros2Ur_msgsMsgDigital
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "ur_msgs/msg/Digital";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_e5ebd0a17ee528cff1e0a636eb0be9c7e4128d3e77be722c5f1be73df4f4c11e";
        public static final int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;
        public int pin = 0;
        public boolean state = false;

        public Ros2Ur_msgsMsgDigital()
        {
        }

        public static final Codec<Ros2Ur_msgsMsgDigital> CODEC = new Codec<Ros2Ur_msgsMsgDigital>() {
            public byte[] encode(Ros2Ur_msgsMsgDigital value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Ur_msgsMsgDigital(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Ur_msgsMsgDigital decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Ur_msgsMsgDigital value = readRos2Ur_msgsMsgDigital(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Ur_msgsMsgDigital(Codecs.Writer writer, Ros2Ur_msgsMsgDigital value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int part0 = value.pin;
        writer.integer(part0, 1, false);
        boolean part1 = value.state;
        writer.integer(part1 ? 1 : 0, 1, false);
    }

    private static Ros2Ur_msgsMsgDigital readRos2Ur_msgsMsgDigital(Codecs.Reader reader)
    {
        Ros2Ur_msgsMsgDigital value = new Ros2Ur_msgsMsgDigital();
        value.pin = (int)reader.integer(1, false);
        value.state = readBool(reader);
        return value;
    }

    public static final class Ros2Ur_msgsMsgFrictionModelParameters
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "ur_msgs/msg/FrictionModelParameters";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_7cc9c7af77340f56b0559b4e2ad32972ff65f2a6cf89ebfbe2c48c645f8e9c89";
        public static final int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 104;
        public double[] viscous_scale = new double[0];
        public double[] coulomb_scale = new double[0];

        public Ros2Ur_msgsMsgFrictionModelParameters()
        {
        }

        public static final Codec<Ros2Ur_msgsMsgFrictionModelParameters> CODEC = new Codec<Ros2Ur_msgsMsgFrictionModelParameters>() {
            public byte[] encode(Ros2Ur_msgsMsgFrictionModelParameters value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Ur_msgsMsgFrictionModelParameters(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Ur_msgsMsgFrictionModelParameters decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Ur_msgsMsgFrictionModelParameters value = readRos2Ur_msgsMsgFrictionModelParameters(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Ur_msgsMsgFrictionModelParameters(Codecs.Writer writer, Ros2Ur_msgsMsgFrictionModelParameters value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        double[] part0 = value.viscous_scale;
        if(part0 == null || part0.length > 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part0.length, 4, false);
        for(int i = 0; i < part0.length; ++i)
        {
            writer.f64(part0[i]);
        }
        double[] part1 = value.coulomb_scale;
        if(part1 == null || part1.length > 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part1.length, 4, false);
        for(int i = 0; i < part1.length; ++i)
        {
            writer.f64(part1[i]);
        }
    }

    private static Ros2Ur_msgsMsgFrictionModelParameters readRos2Ur_msgsMsgFrictionModelParameters(Codecs.Reader reader)
    {
        Ros2Ur_msgsMsgFrictionModelParameters value = new Ros2Ur_msgsMsgFrictionModelParameters();
        value.viscous_scale = new double[readCount(reader, 6, 8)];
        for(int i = 0; i < value.viscous_scale.length; ++i)
            value.viscous_scale[i] = reader.f64();
        value.coulomb_scale = new double[readCount(reader, 6, 8)];
        for(int i = 0; i < value.coulomb_scale.length; ++i)
            value.coulomb_scale[i] = reader.f64();
        return value;
    }

    public static final class Ros2Ur_msgsMsgIOStates
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "ur_msgs/msg/IOStates";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_c22f9f784c89b6854fa84df416ed3704e3a312b15c8fc41162e7f5f53223fef5";
        public static final int MIN_WIRE_BYTES = 20, MAX_WIRE_BYTES = 404;
        public Ros2Ur_msgsMsgDigital[] digital_in_states = new Ros2Ur_msgsMsgDigital[0];
        public Ros2Ur_msgsMsgDigital[] digital_out_states = new Ros2Ur_msgsMsgDigital[0];
        public Ros2Ur_msgsMsgDigital[] flag_states = new Ros2Ur_msgsMsgDigital[0];
        public Ros2Ur_msgsMsgAnalog[] analog_in_states = new Ros2Ur_msgsMsgAnalog[0];
        public Ros2Ur_msgsMsgAnalog[] analog_out_states = new Ros2Ur_msgsMsgAnalog[0];

        public Ros2Ur_msgsMsgIOStates()
        {
        }

        public static final Codec<Ros2Ur_msgsMsgIOStates> CODEC = new Codec<Ros2Ur_msgsMsgIOStates>() {
            public byte[] encode(Ros2Ur_msgsMsgIOStates value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Ur_msgsMsgIOStates(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Ur_msgsMsgIOStates decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Ur_msgsMsgIOStates value = readRos2Ur_msgsMsgIOStates(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Ur_msgsMsgIOStates(Codecs.Writer writer, Ros2Ur_msgsMsgIOStates value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Ur_msgsMsgDigital[] part0 = value.digital_in_states;
        if(part0 == null || part0.length > 32)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part0.length, 4, false);
        for(int i = 0; i < part0.length; ++i)
        {
            writeRos2Ur_msgsMsgDigital(writer, part0[i]);
        }
        Ros2Ur_msgsMsgDigital[] part1 = value.digital_out_states;
        if(part1 == null || part1.length > 32)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part1.length, 4, false);
        for(int i = 0; i < part1.length; ++i)
        {
            writeRos2Ur_msgsMsgDigital(writer, part1[i]);
        }
        Ros2Ur_msgsMsgDigital[] part2 = value.flag_states;
        if(part2 == null || part2.length > 32)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part2.length, 4, false);
        for(int i = 0; i < part2.length; ++i)
        {
            writeRos2Ur_msgsMsgDigital(writer, part2[i]);
        }
        Ros2Ur_msgsMsgAnalog[] part3 = value.analog_in_states;
        if(part3 == null || part3.length > 16)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part3.length, 4, false);
        for(int i = 0; i < part3.length; ++i)
        {
            writeRos2Ur_msgsMsgAnalog(writer, part3[i]);
        }
        Ros2Ur_msgsMsgAnalog[] part4 = value.analog_out_states;
        if(part4 == null || part4.length > 16)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part4.length, 4, false);
        for(int i = 0; i < part4.length; ++i)
        {
            writeRos2Ur_msgsMsgAnalog(writer, part4[i]);
        }
    }

    private static Ros2Ur_msgsMsgIOStates readRos2Ur_msgsMsgIOStates(Codecs.Reader reader)
    {
        Ros2Ur_msgsMsgIOStates value = new Ros2Ur_msgsMsgIOStates();
        value.digital_in_states = new Ros2Ur_msgsMsgDigital[readCount(reader, 32, 2)];
        for(int i = 0; i < value.digital_in_states.length; ++i)
            value.digital_in_states[i] = readRos2Ur_msgsMsgDigital(reader);
        value.digital_out_states = new Ros2Ur_msgsMsgDigital[readCount(reader, 32, 2)];
        for(int i = 0; i < value.digital_out_states.length; ++i)
            value.digital_out_states[i] = readRos2Ur_msgsMsgDigital(reader);
        value.flag_states = new Ros2Ur_msgsMsgDigital[readCount(reader, 32, 2)];
        for(int i = 0; i < value.flag_states.length; ++i)
            value.flag_states[i] = readRos2Ur_msgsMsgDigital(reader);
        value.analog_in_states = new Ros2Ur_msgsMsgAnalog[readCount(reader, 16, 6)];
        for(int i = 0; i < value.analog_in_states.length; ++i)
            value.analog_in_states[i] = readRos2Ur_msgsMsgAnalog(reader);
        value.analog_out_states = new Ros2Ur_msgsMsgAnalog[readCount(reader, 16, 6)];
        for(int i = 0; i < value.analog_out_states.length; ++i)
            value.analog_out_states[i] = readRos2Ur_msgsMsgAnalog(reader);
        return value;
    }

    public static final class Ros2Ur_msgsMsgMasterboardDataMsg
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "ur_msgs/msg/MasterboardDataMsg";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_eb3b0aab27bb5683859356ca7cf9648e53d311c1fd32cac97f68ce1d4622a9e5";
        public static final int MIN_WIRE_BYTES = 62, MAX_WIRE_BYTES = 62;
        public long digital_input_bits = 0;
        public long digital_output_bits = 0;
        public byte analog_input_range0 = 0;
        public byte analog_input_range1 = 0;
        public double analog_input0 = 0;
        public double analog_input1 = 0;
        public byte analog_output_domain0 = 0;
        public byte analog_output_domain1 = 0;
        public double analog_output0 = 0;
        public double analog_output1 = 0;
        public float masterboard_temperature = 0;
        public float robot_voltage_48v = 0;
        public float robot_current = 0;
        public float master_io_current = 0;
        public int master_safety_state = 0;
        public int master_onoff_state = 0;

        public Ros2Ur_msgsMsgMasterboardDataMsg()
        {
        }

        public static final Codec<Ros2Ur_msgsMsgMasterboardDataMsg> CODEC = new Codec<Ros2Ur_msgsMsgMasterboardDataMsg>() {
            public byte[] encode(Ros2Ur_msgsMsgMasterboardDataMsg value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Ur_msgsMsgMasterboardDataMsg(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Ur_msgsMsgMasterboardDataMsg decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Ur_msgsMsgMasterboardDataMsg value = readRos2Ur_msgsMsgMasterboardDataMsg(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Ur_msgsMsgMasterboardDataMsg(Codecs.Writer writer, Ros2Ur_msgsMsgMasterboardDataMsg value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        long part0 = value.digital_input_bits;
        writer.integer(part0, 4, false);
        long part1 = value.digital_output_bits;
        writer.integer(part1, 4, false);
        byte part2 = value.analog_input_range0;
        writer.integer(part2, 1, true);
        byte part3 = value.analog_input_range1;
        writer.integer(part3, 1, true);
        double part4 = value.analog_input0;
        writer.f64(part4);
        double part5 = value.analog_input1;
        writer.f64(part5);
        byte part6 = value.analog_output_domain0;
        writer.integer(part6, 1, true);
        byte part7 = value.analog_output_domain1;
        writer.integer(part7, 1, true);
        double part8 = value.analog_output0;
        writer.f64(part8);
        double part9 = value.analog_output1;
        writer.f64(part9);
        float part10 = value.masterboard_temperature;
        writer.f32(part10);
        float part11 = value.robot_voltage_48v;
        writer.f32(part11);
        float part12 = value.robot_current;
        writer.f32(part12);
        float part13 = value.master_io_current;
        writer.f32(part13);
        int part14 = value.master_safety_state;
        writer.integer(part14, 1, false);
        int part15 = value.master_onoff_state;
        writer.integer(part15, 1, false);
    }

    private static Ros2Ur_msgsMsgMasterboardDataMsg readRos2Ur_msgsMsgMasterboardDataMsg(Codecs.Reader reader)
    {
        Ros2Ur_msgsMsgMasterboardDataMsg value = new Ros2Ur_msgsMsgMasterboardDataMsg();
        value.digital_input_bits = reader.integer(4, false);
        value.digital_output_bits = reader.integer(4, false);
        value.analog_input_range0 = (byte)reader.integer(1, true);
        value.analog_input_range1 = (byte)reader.integer(1, true);
        value.analog_input0 = reader.f64();
        value.analog_input1 = reader.f64();
        value.analog_output_domain0 = (byte)reader.integer(1, true);
        value.analog_output_domain1 = (byte)reader.integer(1, true);
        value.analog_output0 = reader.f64();
        value.analog_output1 = reader.f64();
        value.masterboard_temperature = reader.f32();
        value.robot_voltage_48v = reader.f32();
        value.robot_current = reader.f32();
        value.master_io_current = reader.f32();
        value.master_safety_state = (int)reader.integer(1, false);
        value.master_onoff_state = (int)reader.integer(1, false);
        return value;
    }

    public static final class Ros2Ur_msgsMsgRobotModeDataMsg
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "ur_msgs/msg/RobotModeDataMsg";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_0181d85868dc6251289c6f7bc723757fa573c1345b6502497e335655d328bb31";
        public static final int MIN_WIRE_BYTES = 15, MAX_WIRE_BYTES = 15;
        public long timestamp = 0;
        public boolean is_robot_connected = false;
        public boolean is_real_robot_enabled = false;
        public boolean is_power_on_robot = false;
        public boolean is_emergency_stopped = false;
        public boolean is_protective_stopped = false;
        public boolean is_program_running = false;
        public boolean is_program_paused = false;

        public Ros2Ur_msgsMsgRobotModeDataMsg()
        {
        }

        public static final Codec<Ros2Ur_msgsMsgRobotModeDataMsg> CODEC = new Codec<Ros2Ur_msgsMsgRobotModeDataMsg>() {
            public byte[] encode(Ros2Ur_msgsMsgRobotModeDataMsg value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Ur_msgsMsgRobotModeDataMsg(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Ur_msgsMsgRobotModeDataMsg decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Ur_msgsMsgRobotModeDataMsg value = readRos2Ur_msgsMsgRobotModeDataMsg(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Ur_msgsMsgRobotModeDataMsg(Codecs.Writer writer, Ros2Ur_msgsMsgRobotModeDataMsg value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        long part0 = value.timestamp;
        writer.integer(part0, 8, false);
        boolean part1 = value.is_robot_connected;
        writer.integer(part1 ? 1 : 0, 1, false);
        boolean part2 = value.is_real_robot_enabled;
        writer.integer(part2 ? 1 : 0, 1, false);
        boolean part3 = value.is_power_on_robot;
        writer.integer(part3 ? 1 : 0, 1, false);
        boolean part4 = value.is_emergency_stopped;
        writer.integer(part4 ? 1 : 0, 1, false);
        boolean part5 = value.is_protective_stopped;
        writer.integer(part5 ? 1 : 0, 1, false);
        boolean part6 = value.is_program_running;
        writer.integer(part6 ? 1 : 0, 1, false);
        boolean part7 = value.is_program_paused;
        writer.integer(part7 ? 1 : 0, 1, false);
    }

    private static Ros2Ur_msgsMsgRobotModeDataMsg readRos2Ur_msgsMsgRobotModeDataMsg(Codecs.Reader reader)
    {
        Ros2Ur_msgsMsgRobotModeDataMsg value = new Ros2Ur_msgsMsgRobotModeDataMsg();
        value.timestamp = reader.integer(8, false);
        value.is_robot_connected = readBool(reader);
        value.is_real_robot_enabled = readBool(reader);
        value.is_power_on_robot = readBool(reader);
        value.is_emergency_stopped = readBool(reader);
        value.is_protective_stopped = readBool(reader);
        value.is_program_running = readBool(reader);
        value.is_program_paused = readBool(reader);
        return value;
    }

    public static final class Ros2Ur_msgsMsgRobotStateRTMsg
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "ur_msgs/msg/RobotStateRTMsg";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_a30600c42e98b89da49d63073a5d30b0989aa0cb21f2bafec229dee10591d9cd";
        public static final int MIN_WIRE_BYTES = 96, MAX_WIRE_BYTES = 768;
        public double time = 0;
        public double[] q_target = new double[0];
        public double[] qd_target = new double[0];
        public double[] qdd_target = new double[0];
        public double[] i_target = new double[0];
        public double[] m_target = new double[0];
        public double[] q_actual = new double[0];
        public double[] qd_actual = new double[0];
        public double[] i_actual = new double[0];
        public double[] tool_acc_values = new double[0];
        public double[] tcp_force = new double[0];
        public double[] tool_vector = new double[0];
        public double[] tcp_speed = new double[0];
        public double digital_input_bits = 0;
        public double[] motor_temperatures = new double[0];
        public double controller_timer = 0;
        public double test_value = 0;
        public double robot_mode = 0;
        public double[] joint_modes = new double[0];

        public Ros2Ur_msgsMsgRobotStateRTMsg()
        {
        }

        public static final Codec<Ros2Ur_msgsMsgRobotStateRTMsg> CODEC = new Codec<Ros2Ur_msgsMsgRobotStateRTMsg>() {
            public byte[] encode(Ros2Ur_msgsMsgRobotStateRTMsg value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Ur_msgsMsgRobotStateRTMsg(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Ur_msgsMsgRobotStateRTMsg decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Ur_msgsMsgRobotStateRTMsg value = readRos2Ur_msgsMsgRobotStateRTMsg(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Ur_msgsMsgRobotStateRTMsg(Codecs.Writer writer, Ros2Ur_msgsMsgRobotStateRTMsg value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        double part0 = value.time;
        writer.f64(part0);
        double[] part1 = value.q_target;
        if(part1 == null || part1.length > 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part1.length, 4, false);
        for(int i = 0; i < part1.length; ++i)
        {
            writer.f64(part1[i]);
        }
        double[] part2 = value.qd_target;
        if(part2 == null || part2.length > 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part2.length, 4, false);
        for(int i = 0; i < part2.length; ++i)
        {
            writer.f64(part2[i]);
        }
        double[] part3 = value.qdd_target;
        if(part3 == null || part3.length > 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part3.length, 4, false);
        for(int i = 0; i < part3.length; ++i)
        {
            writer.f64(part3[i]);
        }
        double[] part4 = value.i_target;
        if(part4 == null || part4.length > 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part4.length, 4, false);
        for(int i = 0; i < part4.length; ++i)
        {
            writer.f64(part4[i]);
        }
        double[] part5 = value.m_target;
        if(part5 == null || part5.length > 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part5.length, 4, false);
        for(int i = 0; i < part5.length; ++i)
        {
            writer.f64(part5[i]);
        }
        double[] part6 = value.q_actual;
        if(part6 == null || part6.length > 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part6.length, 4, false);
        for(int i = 0; i < part6.length; ++i)
        {
            writer.f64(part6[i]);
        }
        double[] part7 = value.qd_actual;
        if(part7 == null || part7.length > 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part7.length, 4, false);
        for(int i = 0; i < part7.length; ++i)
        {
            writer.f64(part7[i]);
        }
        double[] part8 = value.i_actual;
        if(part8 == null || part8.length > 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part8.length, 4, false);
        for(int i = 0; i < part8.length; ++i)
        {
            writer.f64(part8[i]);
        }
        double[] part9 = value.tool_acc_values;
        if(part9 == null || part9.length > 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part9.length, 4, false);
        for(int i = 0; i < part9.length; ++i)
        {
            writer.f64(part9[i]);
        }
        double[] part10 = value.tcp_force;
        if(part10 == null || part10.length > 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part10.length, 4, false);
        for(int i = 0; i < part10.length; ++i)
        {
            writer.f64(part10[i]);
        }
        double[] part11 = value.tool_vector;
        if(part11 == null || part11.length > 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part11.length, 4, false);
        for(int i = 0; i < part11.length; ++i)
        {
            writer.f64(part11[i]);
        }
        double[] part12 = value.tcp_speed;
        if(part12 == null || part12.length > 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part12.length, 4, false);
        for(int i = 0; i < part12.length; ++i)
        {
            writer.f64(part12[i]);
        }
        double part13 = value.digital_input_bits;
        writer.f64(part13);
        double[] part14 = value.motor_temperatures;
        if(part14 == null || part14.length > 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part14.length, 4, false);
        for(int i = 0; i < part14.length; ++i)
        {
            writer.f64(part14[i]);
        }
        double part15 = value.controller_timer;
        writer.f64(part15);
        double part16 = value.test_value;
        writer.f64(part16);
        double part17 = value.robot_mode;
        writer.f64(part17);
        double[] part18 = value.joint_modes;
        if(part18 == null || part18.length > 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part18.length, 4, false);
        for(int i = 0; i < part18.length; ++i)
        {
            writer.f64(part18[i]);
        }
    }

    private static Ros2Ur_msgsMsgRobotStateRTMsg readRos2Ur_msgsMsgRobotStateRTMsg(Codecs.Reader reader)
    {
        Ros2Ur_msgsMsgRobotStateRTMsg value = new Ros2Ur_msgsMsgRobotStateRTMsg();
        value.time = reader.f64();
        value.q_target = new double[readCount(reader, 6, 8)];
        for(int i = 0; i < value.q_target.length; ++i)
            value.q_target[i] = reader.f64();
        value.qd_target = new double[readCount(reader, 6, 8)];
        for(int i = 0; i < value.qd_target.length; ++i)
            value.qd_target[i] = reader.f64();
        value.qdd_target = new double[readCount(reader, 6, 8)];
        for(int i = 0; i < value.qdd_target.length; ++i)
            value.qdd_target[i] = reader.f64();
        value.i_target = new double[readCount(reader, 6, 8)];
        for(int i = 0; i < value.i_target.length; ++i)
            value.i_target[i] = reader.f64();
        value.m_target = new double[readCount(reader, 6, 8)];
        for(int i = 0; i < value.m_target.length; ++i)
            value.m_target[i] = reader.f64();
        value.q_actual = new double[readCount(reader, 6, 8)];
        for(int i = 0; i < value.q_actual.length; ++i)
            value.q_actual[i] = reader.f64();
        value.qd_actual = new double[readCount(reader, 6, 8)];
        for(int i = 0; i < value.qd_actual.length; ++i)
            value.qd_actual[i] = reader.f64();
        value.i_actual = new double[readCount(reader, 6, 8)];
        for(int i = 0; i < value.i_actual.length; ++i)
            value.i_actual[i] = reader.f64();
        value.tool_acc_values = new double[readCount(reader, 6, 8)];
        for(int i = 0; i < value.tool_acc_values.length; ++i)
            value.tool_acc_values[i] = reader.f64();
        value.tcp_force = new double[readCount(reader, 6, 8)];
        for(int i = 0; i < value.tcp_force.length; ++i)
            value.tcp_force[i] = reader.f64();
        value.tool_vector = new double[readCount(reader, 6, 8)];
        for(int i = 0; i < value.tool_vector.length; ++i)
            value.tool_vector[i] = reader.f64();
        value.tcp_speed = new double[readCount(reader, 6, 8)];
        for(int i = 0; i < value.tcp_speed.length; ++i)
            value.tcp_speed[i] = reader.f64();
        value.digital_input_bits = reader.f64();
        value.motor_temperatures = new double[readCount(reader, 6, 8)];
        for(int i = 0; i < value.motor_temperatures.length; ++i)
            value.motor_temperatures[i] = reader.f64();
        value.controller_timer = reader.f64();
        value.test_value = reader.f64();
        value.robot_mode = reader.f64();
        value.joint_modes = new double[readCount(reader, 6, 8)];
        for(int i = 0; i < value.joint_modes.length; ++i)
            value.joint_modes[i] = reader.f64();
        return value;
    }

    public static final class Ros2Ur_msgsMsgToolDataMsg
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "ur_msgs/msg/ToolDataMsg";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_1eec69666515ffbdca162a10967fce03ee4c25f0c27d56c5a812b87c9a229aa0";
        public static final int MIN_WIRE_BYTES = 32, MAX_WIRE_BYTES = 32;
        public byte analog_input_range2 = 0;
        public byte analog_input_range3 = 0;
        public double analog_input2 = 0;
        public double analog_input3 = 0;
        public float tool_voltage_48v = 0;
        public int tool_output_voltage = 0;
        public float tool_current = 0;
        public float tool_temperature = 0;
        public int tool_mode = 0;

        public Ros2Ur_msgsMsgToolDataMsg()
        {
        }

        public static final Codec<Ros2Ur_msgsMsgToolDataMsg> CODEC = new Codec<Ros2Ur_msgsMsgToolDataMsg>() {
            public byte[] encode(Ros2Ur_msgsMsgToolDataMsg value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Ur_msgsMsgToolDataMsg(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Ur_msgsMsgToolDataMsg decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Ur_msgsMsgToolDataMsg value = readRos2Ur_msgsMsgToolDataMsg(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Ur_msgsMsgToolDataMsg(Codecs.Writer writer, Ros2Ur_msgsMsgToolDataMsg value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        byte part0 = value.analog_input_range2;
        writer.integer(part0, 1, true);
        byte part1 = value.analog_input_range3;
        writer.integer(part1, 1, true);
        double part2 = value.analog_input2;
        writer.f64(part2);
        double part3 = value.analog_input3;
        writer.f64(part3);
        float part4 = value.tool_voltage_48v;
        writer.f32(part4);
        int part5 = value.tool_output_voltage;
        writer.integer(part5, 1, false);
        float part6 = value.tool_current;
        writer.f32(part6);
        float part7 = value.tool_temperature;
        writer.f32(part7);
        int part8 = value.tool_mode;
        writer.integer(part8, 1, false);
    }

    private static Ros2Ur_msgsMsgToolDataMsg readRos2Ur_msgsMsgToolDataMsg(Codecs.Reader reader)
    {
        Ros2Ur_msgsMsgToolDataMsg value = new Ros2Ur_msgsMsgToolDataMsg();
        value.analog_input_range2 = (byte)reader.integer(1, true);
        value.analog_input_range3 = (byte)reader.integer(1, true);
        value.analog_input2 = reader.f64();
        value.analog_input3 = reader.f64();
        value.tool_voltage_48v = reader.f32();
        value.tool_output_voltage = (int)reader.integer(1, false);
        value.tool_current = reader.f32();
        value.tool_temperature = reader.f32();
        value.tool_mode = (int)reader.integer(1, false);
        return value;
    }

    public static final class Ros2Ur_msgsSrvGetRobotSoftwareVersion_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "ur_msgs/srv/GetRobotSoftwareVersion_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_c2d78972cb5b63138d1e780e8ff0c082dd77d5b76b09642d2c655e9f16780101";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public Ros2Ur_msgsSrvGetRobotSoftwareVersion_Request()
        {
        }

        public static final Codec<Ros2Ur_msgsSrvGetRobotSoftwareVersion_Request> CODEC = new Codec<Ros2Ur_msgsSrvGetRobotSoftwareVersion_Request>() {
            public byte[] encode(Ros2Ur_msgsSrvGetRobotSoftwareVersion_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Ur_msgsSrvGetRobotSoftwareVersion_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Ur_msgsSrvGetRobotSoftwareVersion_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Ur_msgsSrvGetRobotSoftwareVersion_Request value = readRos2Ur_msgsSrvGetRobotSoftwareVersion_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Ur_msgsSrvGetRobotSoftwareVersion_Request(Codecs.Writer writer, Ros2Ur_msgsSrvGetRobotSoftwareVersion_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
    }

    private static Ros2Ur_msgsSrvGetRobotSoftwareVersion_Request readRos2Ur_msgsSrvGetRobotSoftwareVersion_Request(Codecs.Reader reader)
    {
        Ros2Ur_msgsSrvGetRobotSoftwareVersion_Request value = new Ros2Ur_msgsSrvGetRobotSoftwareVersion_Request();
        return value;
    }

    public static final class Ros2Ur_msgsSrvGetRobotSoftwareVersion_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "ur_msgs/srv/GetRobotSoftwareVersion_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_bbe9984c34d69f93ad8dbfe6059c6a2e1bf43dbd27eabd97cf0a9507308d814a";
        public static final int MIN_WIRE_BYTES = 16, MAX_WIRE_BYTES = 16;
        public long major = 0;
        public long minor = 0;
        public long bugfix = 0;
        public long build = 0;

        public Ros2Ur_msgsSrvGetRobotSoftwareVersion_Response()
        {
        }

        public static final Codec<Ros2Ur_msgsSrvGetRobotSoftwareVersion_Response> CODEC = new Codec<Ros2Ur_msgsSrvGetRobotSoftwareVersion_Response>() {
            public byte[] encode(Ros2Ur_msgsSrvGetRobotSoftwareVersion_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Ur_msgsSrvGetRobotSoftwareVersion_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Ur_msgsSrvGetRobotSoftwareVersion_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Ur_msgsSrvGetRobotSoftwareVersion_Response value = readRos2Ur_msgsSrvGetRobotSoftwareVersion_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Ur_msgsSrvGetRobotSoftwareVersion_Response(Codecs.Writer writer, Ros2Ur_msgsSrvGetRobotSoftwareVersion_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        long part0 = value.major;
        writer.integer(part0, 4, false);
        long part1 = value.minor;
        writer.integer(part1, 4, false);
        long part2 = value.bugfix;
        writer.integer(part2, 4, false);
        long part3 = value.build;
        writer.integer(part3, 4, false);
    }

    private static Ros2Ur_msgsSrvGetRobotSoftwareVersion_Response readRos2Ur_msgsSrvGetRobotSoftwareVersion_Response(Codecs.Reader reader)
    {
        Ros2Ur_msgsSrvGetRobotSoftwareVersion_Response value = new Ros2Ur_msgsSrvGetRobotSoftwareVersion_Response();
        value.major = reader.integer(4, false);
        value.minor = reader.integer(4, false);
        value.bugfix = reader.integer(4, false);
        value.build = reader.integer(4, false);
        return value;
    }

    public static final class Ros2Ur_msgsSrvSetAnalogOutput_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "ur_msgs/srv/SetAnalogOutput_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_71c3eca5c6c90758f084e275fc495feb5d1c08a467c97d941fb5864c54309bea";
        public static final int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 6;
        public Ros2Ur_msgsMsgAnalog data = new Ros2Ur_msgsMsgAnalog();

        public Ros2Ur_msgsSrvSetAnalogOutput_Request()
        {
        }

        public static final Codec<Ros2Ur_msgsSrvSetAnalogOutput_Request> CODEC = new Codec<Ros2Ur_msgsSrvSetAnalogOutput_Request>() {
            public byte[] encode(Ros2Ur_msgsSrvSetAnalogOutput_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Ur_msgsSrvSetAnalogOutput_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Ur_msgsSrvSetAnalogOutput_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Ur_msgsSrvSetAnalogOutput_Request value = readRos2Ur_msgsSrvSetAnalogOutput_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Ur_msgsSrvSetAnalogOutput_Request(Codecs.Writer writer, Ros2Ur_msgsSrvSetAnalogOutput_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Ur_msgsMsgAnalog part0 = value.data;
        writeRos2Ur_msgsMsgAnalog(writer, part0);
    }

    private static Ros2Ur_msgsSrvSetAnalogOutput_Request readRos2Ur_msgsSrvSetAnalogOutput_Request(Codecs.Reader reader)
    {
        Ros2Ur_msgsSrvSetAnalogOutput_Request value = new Ros2Ur_msgsSrvSetAnalogOutput_Request();
        value.data = readRos2Ur_msgsMsgAnalog(reader);
        return value;
    }

    public static final class Ros2Ur_msgsSrvSetAnalogOutput_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "ur_msgs/srv/SetAnalogOutput_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_71a5f3580657cb3ca702dbb63b7af3330c922624c9e9774e47e6533e2fc0a05a";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros2Ur_msgsSrvSetAnalogOutput_Response()
        {
        }

        public static final Codec<Ros2Ur_msgsSrvSetAnalogOutput_Response> CODEC = new Codec<Ros2Ur_msgsSrvSetAnalogOutput_Response>() {
            public byte[] encode(Ros2Ur_msgsSrvSetAnalogOutput_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Ur_msgsSrvSetAnalogOutput_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Ur_msgsSrvSetAnalogOutput_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Ur_msgsSrvSetAnalogOutput_Response value = readRos2Ur_msgsSrvSetAnalogOutput_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Ur_msgsSrvSetAnalogOutput_Response(Codecs.Writer writer, Ros2Ur_msgsSrvSetAnalogOutput_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros2Ur_msgsSrvSetAnalogOutput_Response readRos2Ur_msgsSrvSetAnalogOutput_Response(Codecs.Reader reader)
    {
        Ros2Ur_msgsSrvSetAnalogOutput_Response value = new Ros2Ur_msgsSrvSetAnalogOutput_Response();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Ur_msgsSrvSetForceMode_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "ur_msgs/srv/SetForceMode_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_e43a6c22510a2078de3cb2dc17ba1b7184080a6aa29a1653b7986723c0cfef6e";
        public static final int MIN_WIRE_BYTES = 203, MAX_WIRE_BYTES = 331;
        public Ros2Geometry_msgsMsgPoseStamped task_frame = new Ros2Geometry_msgsMsgPoseStamped();
        public boolean selection_vector_x = false;
        public boolean selection_vector_y = false;
        public boolean selection_vector_z = false;
        public boolean selection_vector_rx = false;
        public boolean selection_vector_ry = false;
        public boolean selection_vector_rz = false;
        public Ros2Geometry_msgsMsgWrench wrench = new Ros2Geometry_msgsMsgWrench();
        public int type = 2;
        public Ros2Geometry_msgsMsgTwist speed_limits = new Ros2Geometry_msgsMsgTwist();
        public float[] deviation_limits = new float[] {Float.intBitsToFloat(0x3c23d70a),
                                                       Float.intBitsToFloat(0x3c23d70a),
                                                       Float.intBitsToFloat(0x3c23d70a),
                                                       Float.intBitsToFloat(0x3c23d70a),
                                                       Float.intBitsToFloat(0x3c23d70a),
                                                       Float.intBitsToFloat(0x3c23d70a)};
        public float damping_factor = Float.intBitsToFloat(0x3ccccccd);
        public float gain_scaling = Float.intBitsToFloat(0x3f000000);

        public Ros2Ur_msgsSrvSetForceMode_Request()
        {
        }

        public static final Codec<Ros2Ur_msgsSrvSetForceMode_Request> CODEC = new Codec<Ros2Ur_msgsSrvSetForceMode_Request>() {
            public byte[] encode(Ros2Ur_msgsSrvSetForceMode_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Ur_msgsSrvSetForceMode_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Ur_msgsSrvSetForceMode_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Ur_msgsSrvSetForceMode_Request value = readRos2Ur_msgsSrvSetForceMode_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Ur_msgsSrvSetForceMode_Request(Codecs.Writer writer, Ros2Ur_msgsSrvSetForceMode_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Geometry_msgsMsgPoseStamped part0 = value.task_frame;
        writeRos2Geometry_msgsMsgPoseStamped(writer, part0);
        boolean part1 = value.selection_vector_x;
        writer.integer(part1 ? 1 : 0, 1, false);
        boolean part2 = value.selection_vector_y;
        writer.integer(part2 ? 1 : 0, 1, false);
        boolean part3 = value.selection_vector_z;
        writer.integer(part3 ? 1 : 0, 1, false);
        boolean part4 = value.selection_vector_rx;
        writer.integer(part4 ? 1 : 0, 1, false);
        boolean part5 = value.selection_vector_ry;
        writer.integer(part5 ? 1 : 0, 1, false);
        boolean part6 = value.selection_vector_rz;
        writer.integer(part6 ? 1 : 0, 1, false);
        Ros2Geometry_msgsMsgWrench part7 = value.wrench;
        writeRos2Geometry_msgsMsgWrench(writer, part7);
        int part8 = value.type;
        writer.integer(part8, 1, false);
        Ros2Geometry_msgsMsgTwist part9 = value.speed_limits;
        writeRos2Geometry_msgsMsgTwist(writer, part9);
        float[] part10 = value.deviation_limits;
        if(part10 == null || part10.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part10.length; ++i)
        {
            writer.f32(part10[i]);
        }
        float part11 = value.damping_factor;
        writer.f32(part11);
        float part12 = value.gain_scaling;
        writer.f32(part12);
    }

    private static Ros2Ur_msgsSrvSetForceMode_Request readRos2Ur_msgsSrvSetForceMode_Request(Codecs.Reader reader)
    {
        Ros2Ur_msgsSrvSetForceMode_Request value = new Ros2Ur_msgsSrvSetForceMode_Request();
        value.task_frame = readRos2Geometry_msgsMsgPoseStamped(reader);
        value.selection_vector_x = readBool(reader);
        value.selection_vector_y = readBool(reader);
        value.selection_vector_z = readBool(reader);
        value.selection_vector_rx = readBool(reader);
        value.selection_vector_ry = readBool(reader);
        value.selection_vector_rz = readBool(reader);
        value.wrench = readRos2Geometry_msgsMsgWrench(reader);
        value.type = (int)reader.integer(1, false);
        value.speed_limits = readRos2Geometry_msgsMsgTwist(reader);
        value.deviation_limits = new float[6];
        for(int i = 0; i < value.deviation_limits.length; ++i)
            value.deviation_limits[i] = reader.f32();
        value.damping_factor = reader.f32();
        value.gain_scaling = reader.f32();
        return value;
    }

    public static final class Ros2Ur_msgsSrvSetForceMode_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "ur_msgs/srv/SetForceMode_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_3f5438d426b7b68557ac8f43dc8efc2e2106782ec0cd4fd0dee7cdd69ddc7de8";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros2Ur_msgsSrvSetForceMode_Response()
        {
        }

        public static final Codec<Ros2Ur_msgsSrvSetForceMode_Response> CODEC = new Codec<Ros2Ur_msgsSrvSetForceMode_Response>() {
            public byte[] encode(Ros2Ur_msgsSrvSetForceMode_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Ur_msgsSrvSetForceMode_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Ur_msgsSrvSetForceMode_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Ur_msgsSrvSetForceMode_Response value = readRos2Ur_msgsSrvSetForceMode_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Ur_msgsSrvSetForceMode_Response(Codecs.Writer writer, Ros2Ur_msgsSrvSetForceMode_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros2Ur_msgsSrvSetForceMode_Response readRos2Ur_msgsSrvSetForceMode_Response(Codecs.Reader reader)
    {
        Ros2Ur_msgsSrvSetForceMode_Response value = new Ros2Ur_msgsSrvSetForceMode_Response();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Ur_msgsSrvSetFrictionModelParameters_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "ur_msgs/srv/SetFrictionModelParameters_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_e44ad15f9c45d5a65eb13e6bc6e973bb20eebdafa04a5f2e8bcf4b0b54ce91c2";
        public static final int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 104;
        public Ros2Ur_msgsMsgFrictionModelParameters parameters = new Ros2Ur_msgsMsgFrictionModelParameters();

        public Ros2Ur_msgsSrvSetFrictionModelParameters_Request()
        {
        }

        public static final Codec<Ros2Ur_msgsSrvSetFrictionModelParameters_Request> CODEC = new Codec<Ros2Ur_msgsSrvSetFrictionModelParameters_Request>() {
            public byte[] encode(Ros2Ur_msgsSrvSetFrictionModelParameters_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Ur_msgsSrvSetFrictionModelParameters_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Ur_msgsSrvSetFrictionModelParameters_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Ur_msgsSrvSetFrictionModelParameters_Request value = readRos2Ur_msgsSrvSetFrictionModelParameters_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Ur_msgsSrvSetFrictionModelParameters_Request(Codecs.Writer writer, Ros2Ur_msgsSrvSetFrictionModelParameters_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Ur_msgsMsgFrictionModelParameters part0 = value.parameters;
        writeRos2Ur_msgsMsgFrictionModelParameters(writer, part0);
    }

    private static Ros2Ur_msgsSrvSetFrictionModelParameters_Request readRos2Ur_msgsSrvSetFrictionModelParameters_Request(Codecs.Reader reader)
    {
        Ros2Ur_msgsSrvSetFrictionModelParameters_Request value = new Ros2Ur_msgsSrvSetFrictionModelParameters_Request();
        value.parameters = readRos2Ur_msgsMsgFrictionModelParameters(reader);
        return value;
    }

    public static final class Ros2Ur_msgsSrvSetFrictionModelParameters_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "ur_msgs/srv/SetFrictionModelParameters_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_1caca29dda3dc32360fd010dfb352b6feb54bba66ee16edd2f4353e3382207b3";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros2Ur_msgsSrvSetFrictionModelParameters_Response()
        {
        }

        public static final Codec<Ros2Ur_msgsSrvSetFrictionModelParameters_Response> CODEC = new Codec<Ros2Ur_msgsSrvSetFrictionModelParameters_Response>() {
            public byte[] encode(Ros2Ur_msgsSrvSetFrictionModelParameters_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Ur_msgsSrvSetFrictionModelParameters_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Ur_msgsSrvSetFrictionModelParameters_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Ur_msgsSrvSetFrictionModelParameters_Response value = readRos2Ur_msgsSrvSetFrictionModelParameters_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Ur_msgsSrvSetFrictionModelParameters_Response(Codecs.Writer writer, Ros2Ur_msgsSrvSetFrictionModelParameters_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros2Ur_msgsSrvSetFrictionModelParameters_Response readRos2Ur_msgsSrvSetFrictionModelParameters_Response(Codecs.Reader reader)
    {
        Ros2Ur_msgsSrvSetFrictionModelParameters_Response value = new Ros2Ur_msgsSrvSetFrictionModelParameters_Response();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Ur_msgsSrvSetGravity_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "ur_msgs/srv/SetGravity_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_3d7fed6ae8accbddd5b09f93c3e49f2b9f99cae4cf80a951eb31ace30ec5a834";
        public static final int MIN_WIRE_BYTES = 36, MAX_WIRE_BYTES = 164;
        public Ros2Geometry_msgsMsgVector3Stamped gravity = new Ros2Geometry_msgsMsgVector3Stamped();

        public Ros2Ur_msgsSrvSetGravity_Request()
        {
        }

        public static final Codec<Ros2Ur_msgsSrvSetGravity_Request> CODEC = new Codec<Ros2Ur_msgsSrvSetGravity_Request>() {
            public byte[] encode(Ros2Ur_msgsSrvSetGravity_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Ur_msgsSrvSetGravity_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Ur_msgsSrvSetGravity_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Ur_msgsSrvSetGravity_Request value = readRos2Ur_msgsSrvSetGravity_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Ur_msgsSrvSetGravity_Request(Codecs.Writer writer, Ros2Ur_msgsSrvSetGravity_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Geometry_msgsMsgVector3Stamped part0 = value.gravity;
        writeRos2Geometry_msgsMsgVector3Stamped(writer, part0);
    }

    private static Ros2Ur_msgsSrvSetGravity_Request readRos2Ur_msgsSrvSetGravity_Request(Codecs.Reader reader)
    {
        Ros2Ur_msgsSrvSetGravity_Request value = new Ros2Ur_msgsSrvSetGravity_Request();
        value.gravity = readRos2Geometry_msgsMsgVector3Stamped(reader);
        return value;
    }

    public static final class Ros2Ur_msgsSrvSetGravity_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "ur_msgs/srv/SetGravity_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_84694df7fbb4fd15bfecaf1aae683ef1795b0c4941d1987d951467448da5f793";
        public static final int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 261;
        public boolean success = false;
        public String status = "";

        public Ros2Ur_msgsSrvSetGravity_Response()
        {
        }

        public static final Codec<Ros2Ur_msgsSrvSetGravity_Response> CODEC = new Codec<Ros2Ur_msgsSrvSetGravity_Response>() {
            public byte[] encode(Ros2Ur_msgsSrvSetGravity_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Ur_msgsSrvSetGravity_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Ur_msgsSrvSetGravity_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Ur_msgsSrvSetGravity_Response value = readRos2Ur_msgsSrvSetGravity_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Ur_msgsSrvSetGravity_Response(Codecs.Writer writer, Ros2Ur_msgsSrvSetGravity_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
        String part1 = value.status;
        writeText(writer, part1, 256);
    }

    private static Ros2Ur_msgsSrvSetGravity_Response readRos2Ur_msgsSrvSetGravity_Response(Codecs.Reader reader)
    {
        Ros2Ur_msgsSrvSetGravity_Response value = new Ros2Ur_msgsSrvSetGravity_Response();
        value.success = readBool(reader);
        value.status = readText(reader, 256);
        return value;
    }

    public static final class Ros2Ur_msgsSrvSetIO_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "ur_msgs/srv/SetIO_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_c8ac4dddeb474521b4c701a0229e99af954416b7b8d7f32d2a19629d38b378c7";
        public static final int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 6;
        public byte fun = 0;
        public byte pin = 0;
        public float state = 0;

        public Ros2Ur_msgsSrvSetIO_Request()
        {
        }

        public static final Codec<Ros2Ur_msgsSrvSetIO_Request> CODEC = new Codec<Ros2Ur_msgsSrvSetIO_Request>() {
            public byte[] encode(Ros2Ur_msgsSrvSetIO_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Ur_msgsSrvSetIO_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Ur_msgsSrvSetIO_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Ur_msgsSrvSetIO_Request value = readRos2Ur_msgsSrvSetIO_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Ur_msgsSrvSetIO_Request(Codecs.Writer writer, Ros2Ur_msgsSrvSetIO_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        byte part0 = value.fun;
        writer.integer(part0, 1, true);
        byte part1 = value.pin;
        writer.integer(part1, 1, true);
        float part2 = value.state;
        writer.f32(part2);
    }

    private static Ros2Ur_msgsSrvSetIO_Request readRos2Ur_msgsSrvSetIO_Request(Codecs.Reader reader)
    {
        Ros2Ur_msgsSrvSetIO_Request value = new Ros2Ur_msgsSrvSetIO_Request();
        value.fun = (byte)reader.integer(1, true);
        value.pin = (byte)reader.integer(1, true);
        value.state = reader.f32();
        return value;
    }

    public static final class Ros2Ur_msgsSrvSetIO_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "ur_msgs/srv/SetIO_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_bd32373034093ccdab140a5ba8ce8a420ef2ce441430e8306b2484f0ca535090";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros2Ur_msgsSrvSetIO_Response()
        {
        }

        public static final Codec<Ros2Ur_msgsSrvSetIO_Response> CODEC = new Codec<Ros2Ur_msgsSrvSetIO_Response>() {
            public byte[] encode(Ros2Ur_msgsSrvSetIO_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Ur_msgsSrvSetIO_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Ur_msgsSrvSetIO_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Ur_msgsSrvSetIO_Response value = readRos2Ur_msgsSrvSetIO_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Ur_msgsSrvSetIO_Response(Codecs.Writer writer, Ros2Ur_msgsSrvSetIO_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros2Ur_msgsSrvSetIO_Response readRos2Ur_msgsSrvSetIO_Response(Codecs.Reader reader)
    {
        Ros2Ur_msgsSrvSetIO_Response value = new Ros2Ur_msgsSrvSetIO_Response();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Ur_msgsSrvSetPayload_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "ur_msgs/srv/SetPayload_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_e76e256e1accf2d742c4cf529e5af1e830db75f3db703a1f368d28077a87e735";
        public static final int MIN_WIRE_BYTES = 84, MAX_WIRE_BYTES = 84;
        public float mass = 0;
        public Ros2Geometry_msgsMsgVector3 center_of_gravity = new Ros2Geometry_msgsMsgVector3();
        public double ixx = 0;
        public double iyy = 0;
        public double izz = 0;
        public double ixy = 0;
        public double ixz = 0;
        public double iyz = 0;
        public Ros2Builtin_interfacesMsgDuration transition_time = new Ros2Builtin_interfacesMsgDuration();

        public Ros2Ur_msgsSrvSetPayload_Request()
        {
        }

        public static final Codec<Ros2Ur_msgsSrvSetPayload_Request> CODEC = new Codec<Ros2Ur_msgsSrvSetPayload_Request>() {
            public byte[] encode(Ros2Ur_msgsSrvSetPayload_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Ur_msgsSrvSetPayload_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Ur_msgsSrvSetPayload_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Ur_msgsSrvSetPayload_Request value = readRos2Ur_msgsSrvSetPayload_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Ur_msgsSrvSetPayload_Request(Codecs.Writer writer, Ros2Ur_msgsSrvSetPayload_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        float part0 = value.mass;
        writer.f32(part0);
        Ros2Geometry_msgsMsgVector3 part1 = value.center_of_gravity;
        writeRos2Geometry_msgsMsgVector3(writer, part1);
        double part2 = value.ixx;
        writer.f64(part2);
        double part3 = value.iyy;
        writer.f64(part3);
        double part4 = value.izz;
        writer.f64(part4);
        double part5 = value.ixy;
        writer.f64(part5);
        double part6 = value.ixz;
        writer.f64(part6);
        double part7 = value.iyz;
        writer.f64(part7);
        Ros2Builtin_interfacesMsgDuration part8 = value.transition_time;
        writeRos2Builtin_interfacesMsgDuration(writer, part8);
    }

    private static Ros2Ur_msgsSrvSetPayload_Request readRos2Ur_msgsSrvSetPayload_Request(Codecs.Reader reader)
    {
        Ros2Ur_msgsSrvSetPayload_Request value = new Ros2Ur_msgsSrvSetPayload_Request();
        value.mass = reader.f32();
        value.center_of_gravity = readRos2Geometry_msgsMsgVector3(reader);
        value.ixx = reader.f64();
        value.iyy = reader.f64();
        value.izz = reader.f64();
        value.ixy = reader.f64();
        value.ixz = reader.f64();
        value.iyz = reader.f64();
        value.transition_time = readRos2Builtin_interfacesMsgDuration(reader);
        return value;
    }

    public static final class Ros2Ur_msgsSrvSetPayload_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "ur_msgs/srv/SetPayload_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_036dbaa7d42b6cba6ad29a082e078401d507292483d260ba532f7d6947c1624c";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros2Ur_msgsSrvSetPayload_Response()
        {
        }

        public static final Codec<Ros2Ur_msgsSrvSetPayload_Response> CODEC = new Codec<Ros2Ur_msgsSrvSetPayload_Response>() {
            public byte[] encode(Ros2Ur_msgsSrvSetPayload_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Ur_msgsSrvSetPayload_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Ur_msgsSrvSetPayload_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Ur_msgsSrvSetPayload_Response value = readRos2Ur_msgsSrvSetPayload_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Ur_msgsSrvSetPayload_Response(Codecs.Writer writer, Ros2Ur_msgsSrvSetPayload_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros2Ur_msgsSrvSetPayload_Response readRos2Ur_msgsSrvSetPayload_Response(Codecs.Reader reader)
    {
        Ros2Ur_msgsSrvSetPayload_Response value = new Ros2Ur_msgsSrvSetPayload_Response();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Ur_msgsSrvSetSpeedSliderFraction_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "ur_msgs/srv/SetSpeedSliderFraction_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_d8f19fb240e4b70cad74c5111cdaebad14b480f21da953c95d474064b091abd8";
        public static final int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 8;
        public double speed_slider_fraction = 0;

        public Ros2Ur_msgsSrvSetSpeedSliderFraction_Request()
        {
        }

        public static final Codec<Ros2Ur_msgsSrvSetSpeedSliderFraction_Request> CODEC = new Codec<Ros2Ur_msgsSrvSetSpeedSliderFraction_Request>() {
            public byte[] encode(Ros2Ur_msgsSrvSetSpeedSliderFraction_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Ur_msgsSrvSetSpeedSliderFraction_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Ur_msgsSrvSetSpeedSliderFraction_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Ur_msgsSrvSetSpeedSliderFraction_Request value = readRos2Ur_msgsSrvSetSpeedSliderFraction_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Ur_msgsSrvSetSpeedSliderFraction_Request(Codecs.Writer writer, Ros2Ur_msgsSrvSetSpeedSliderFraction_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        double part0 = value.speed_slider_fraction;
        writer.f64(part0);
    }

    private static Ros2Ur_msgsSrvSetSpeedSliderFraction_Request readRos2Ur_msgsSrvSetSpeedSliderFraction_Request(Codecs.Reader reader)
    {
        Ros2Ur_msgsSrvSetSpeedSliderFraction_Request value = new Ros2Ur_msgsSrvSetSpeedSliderFraction_Request();
        value.speed_slider_fraction = reader.f64();
        return value;
    }

    public static final class Ros2Ur_msgsSrvSetSpeedSliderFraction_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "ur_msgs/srv/SetSpeedSliderFraction_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_1ab1ad5ab4b1ed302710ec055dff7644cc6e966af919ff311eaea6cddcf7dbb9";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros2Ur_msgsSrvSetSpeedSliderFraction_Response()
        {
        }

        public static final Codec<Ros2Ur_msgsSrvSetSpeedSliderFraction_Response> CODEC = new Codec<Ros2Ur_msgsSrvSetSpeedSliderFraction_Response>() {
            public byte[] encode(Ros2Ur_msgsSrvSetSpeedSliderFraction_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Ur_msgsSrvSetSpeedSliderFraction_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Ur_msgsSrvSetSpeedSliderFraction_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Ur_msgsSrvSetSpeedSliderFraction_Response value = readRos2Ur_msgsSrvSetSpeedSliderFraction_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Ur_msgsSrvSetSpeedSliderFraction_Response(Codecs.Writer writer, Ros2Ur_msgsSrvSetSpeedSliderFraction_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros2Ur_msgsSrvSetSpeedSliderFraction_Response readRos2Ur_msgsSrvSetSpeedSliderFraction_Response(Codecs.Reader reader)
    {
        Ros2Ur_msgsSrvSetSpeedSliderFraction_Response value = new Ros2Ur_msgsSrvSetSpeedSliderFraction_Response();
        value.success = readBool(reader);
        return value;
    }
}
