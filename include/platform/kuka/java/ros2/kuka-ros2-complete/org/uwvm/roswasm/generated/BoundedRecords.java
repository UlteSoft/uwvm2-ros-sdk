/**
 * @file BoundedRecords.java
 * @brief Complete kuka values and adapters for the selected original interface catalog.
 * @details Retain original field order, scalar widths, array capacities, string bounds, constants and declared
 * defaults. Pure value access and canonical codecs create no native ROS allocation or resource grant. Transport
 * roles require the separately admitted SDK owner.
 * @see share/platform/kuka/domains/kuka-ros2-complete.ir.json
 * @see document/platform/kuka/en_US/README.md
 */

package org.uwvm.kuka.kuka_ros2_complete;

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
        public static final String CODEC_IDENTITY = "UWVMROS1_afba9e74be3c5e3321750c1c4c30ba2925269f75b9da43a6d5c1e93d293d7396";
        public static final int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 76;
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
        writeText(writer, part1, 64);
    }

    private static Ros2Std_msgsMsgHeader readRos2Std_msgsMsgHeader(Codecs.Reader reader)
    {
        Ros2Std_msgsMsgHeader value = new Ros2Std_msgsMsgHeader();
        value.stamp = readRos2Builtin_interfacesMsgTime(reader);
        value.frame_id = readText(reader, 64);
        return value;
    }

    public static final class Ros2Trajectory_msgsMsgJointTrajectoryPoint
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "trajectory_msgs/msg/JointTrajectoryPoint";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_4d55f494f060a9a3ff23bedd54da49f9e70e6b77acbdf911878afbf672cbadc5";
        public static final int MIN_WIRE_BYTES = 24, MAX_WIRE_BYTES = 408;
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
        if(part0 == null || part0.length > 12)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part0.length, 4, false);
        for(int i = 0; i < part0.length; ++i)
        {
            writer.f64(part0[i]);
        }
        double[] part1 = value.velocities;
        if(part1 == null || part1.length > 12)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part1.length, 4, false);
        for(int i = 0; i < part1.length; ++i)
        {
            writer.f64(part1[i]);
        }
        double[] part2 = value.accelerations;
        if(part2 == null || part2.length > 12)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part2.length, 4, false);
        for(int i = 0; i < part2.length; ++i)
        {
            writer.f64(part2[i]);
        }
        double[] part3 = value.effort;
        if(part3 == null || part3.length > 12)
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
        value.positions = new double[readCount(reader, 12, 8)];
        for(int i = 0; i < value.positions.length; ++i)
            value.positions[i] = reader.f64();
        value.velocities = new double[readCount(reader, 12, 8)];
        for(int i = 0; i < value.velocities.length; ++i)
            value.velocities[i] = reader.f64();
        value.accelerations = new double[readCount(reader, 12, 8)];
        for(int i = 0; i < value.accelerations.length; ++i)
            value.accelerations[i] = reader.f64();
        value.effort = new double[readCount(reader, 12, 8)];
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
        public static final String CODEC_IDENTITY = "UWVMROS1_d74956440763bd09c76ec623efeb322aa89be8ef6410b9125d4e2cb1aeeb69c0";
        public static final int MIN_WIRE_BYTES = 20, MAX_WIRE_BYTES = 4164;
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
        if(part1 == null || part1.length > 12)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part1.length, 4, false);
        for(int i = 0; i < part1.length; ++i)
        {
            writeText(writer, part1[i], 64);
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
        value.joint_names = new String[readCount(reader, 12, 4)];
        for(int i = 0; i < value.joint_names.length; ++i)
            value.joint_names[i] = readText(reader, 64);
        value.points = new Ros2Trajectory_msgsMsgJointTrajectoryPoint[readCount(reader, 8, 24)];
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
        public static final String CODEC_IDENTITY = "UWVMROS1_6ea66f146cdce31369361e521be484d2c39bca818cc4b2069e1209d250ec2401";
        public static final int MIN_WIRE_BYTES = 20, MAX_WIRE_BYTES = 1516;
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
            writeText(writer, part1[i], 64);
        }
        Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint[] part2 = value.points;
        if(part2 == null || part2.length > 4)
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
            value.joint_names[i] = readText(reader, 64);
        value.points = new Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint[readCount(reader, 4, 20)];
        for(int i = 0; i < value.points.length; ++i)
            value.points[i] = readRos2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint(reader);
        return value;
    }

    public static final class Ros2Control_msgsMsgJointTolerance
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "control_msgs/msg/JointTolerance";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_ad7701ac1cb0dd68a947577272964b0d6051d1846019de97e9c9d0f7be7b2fa2";
        public static final int MIN_WIRE_BYTES = 28, MAX_WIRE_BYTES = 92;
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
        writeText(writer, part0, 64);
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
        value.name = readText(reader, 64);
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
        public static final String CODEC_IDENTITY = "UWVMROS1_658f3d3f180b301e5c612188390187ec4034064976f133018048bb1fdec55342";
        public static final int MIN_WIRE_BYTES = 30, MAX_WIRE_BYTES = 542;
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
        writeText(writer, part0, 512);
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
        value.joint_name = readText(reader, 512);
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
        public static final String CODEC_IDENTITY = "UWVMROS1_8945d5b29832f1190b0a4f8c4af4e82686c4b913413affe9c0945570b4fb1f16";
        public static final int MIN_WIRE_BYTES = 64, MAX_WIRE_BYTES = 20920;
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
        if(part2 == null || part2.length > 12)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part2.length, 4, false);
        for(int i = 0; i < part2.length; ++i)
        {
            writeRos2Control_msgsMsgJointTolerance(writer, part2[i]);
        }
        Ros2Control_msgsMsgJointComponentTolerance[] part3 = value.component_path_tolerance;
        if(part3 == null || part3.length > 12)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part3.length, 4, false);
        for(int i = 0; i < part3.length; ++i)
        {
            writeRos2Control_msgsMsgJointComponentTolerance(writer, part3[i]);
        }
        Ros2Control_msgsMsgJointTolerance[] part4 = value.goal_tolerance;
        if(part4 == null || part4.length > 12)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part4.length, 4, false);
        for(int i = 0; i < part4.length; ++i)
        {
            writeRos2Control_msgsMsgJointTolerance(writer, part4[i]);
        }
        Ros2Control_msgsMsgJointComponentTolerance[] part5 = value.component_goal_tolerance;
        if(part5 == null || part5.length > 12)
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
        value.path_tolerance = new Ros2Control_msgsMsgJointTolerance[readCount(reader, 12, 28)];
        for(int i = 0; i < value.path_tolerance.length; ++i)
            value.path_tolerance[i] = readRos2Control_msgsMsgJointTolerance(reader);
        value.component_path_tolerance = new Ros2Control_msgsMsgJointComponentTolerance[readCount(reader, 12, 30)];
        for(int i = 0; i < value.component_path_tolerance.length; ++i)
            value.component_path_tolerance[i] = readRos2Control_msgsMsgJointComponentTolerance(reader);
        value.goal_tolerance = new Ros2Control_msgsMsgJointTolerance[readCount(reader, 12, 28)];
        for(int i = 0; i < value.goal_tolerance.length; ++i)
            value.goal_tolerance[i] = readRos2Control_msgsMsgJointTolerance(reader);
        value.component_goal_tolerance = new Ros2Control_msgsMsgJointComponentTolerance[readCount(reader, 12, 30)];
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
        public static final String CODEC_IDENTITY = "UWVMROS1_68f3809217bd914cd971e1365ca825111c1394b2587c6989736adcaa8a40a7cb";
        public static final int MIN_WIRE_BYTES = 152, MAX_WIRE_BYTES = 4128;
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
        if(part1 == null || part1.length > 12)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part1.length, 4, false);
        for(int i = 0; i < part1.length; ++i)
        {
            writeText(writer, part1[i], 64);
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
            writeText(writer, part5[i], 512);
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
        value.joint_names = new String[readCount(reader, 12, 4)];
        for(int i = 0; i < value.joint_names.length; ++i)
            value.joint_names[i] = readText(reader, 64);
        value.desired = readRos2Trajectory_msgsMsgJointTrajectoryPoint(reader);
        value.actual = readRos2Trajectory_msgsMsgJointTrajectoryPoint(reader);
        value.error = readRos2Trajectory_msgsMsgJointTrajectoryPoint(reader);
        value.multi_dof_joint_names = new String[readCount(reader, 2, 4)];
        for(int i = 0; i < value.multi_dof_joint_names.length; ++i)
            value.multi_dof_joint_names[i] = readText(reader, 512);
        value.multi_dof_desired = readRos2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint(reader);
        value.multi_dof_actual = readRos2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint(reader);
        value.multi_dof_error = readRos2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint(reader);
        return value;
    }

    public static final class Ros2Kuka_driver_interfacesMsgFRIState
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "kuka_driver_interfaces/msg/FRIState";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_27be8431e4a8cda3bb4d6d5a8a69fd86a0d07a1d920799c232d63a4941ee6716";
        public static final int MIN_WIRE_BYTES = 40, MAX_WIRE_BYTES = 40;
        public int session_state = 0;
        public int connection_quality = 0;
        public int safety_state = 0;
        public int command_mode = 0;
        public int control_mode = 0;
        public int operation_mode = 0;
        public int drive_state = 0;
        public int overlay_type = 0;
        public double tracking_performance = 0;

        public Ros2Kuka_driver_interfacesMsgFRIState()
        {
        }

        public static final Codec<Ros2Kuka_driver_interfacesMsgFRIState> CODEC = new Codec<Ros2Kuka_driver_interfacesMsgFRIState>() {
            public byte[] encode(Ros2Kuka_driver_interfacesMsgFRIState value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Kuka_driver_interfacesMsgFRIState(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Kuka_driver_interfacesMsgFRIState decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Kuka_driver_interfacesMsgFRIState value = readRos2Kuka_driver_interfacesMsgFRIState(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Kuka_driver_interfacesMsgFRIState(Codecs.Writer writer, Ros2Kuka_driver_interfacesMsgFRIState value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int part0 = value.session_state;
        writer.integer(part0, 4, true);
        int part1 = value.connection_quality;
        writer.integer(part1, 4, true);
        int part2 = value.safety_state;
        writer.integer(part2, 4, true);
        int part3 = value.command_mode;
        writer.integer(part3, 4, true);
        int part4 = value.control_mode;
        writer.integer(part4, 4, true);
        int part5 = value.operation_mode;
        writer.integer(part5, 4, true);
        int part6 = value.drive_state;
        writer.integer(part6, 4, true);
        int part7 = value.overlay_type;
        writer.integer(part7, 4, true);
        double part8 = value.tracking_performance;
        writer.f64(part8);
    }

    private static Ros2Kuka_driver_interfacesMsgFRIState readRos2Kuka_driver_interfacesMsgFRIState(Codecs.Reader reader)
    {
        Ros2Kuka_driver_interfacesMsgFRIState value = new Ros2Kuka_driver_interfacesMsgFRIState();
        value.session_state = (int)reader.integer(4, true);
        value.connection_quality = (int)reader.integer(4, true);
        value.safety_state = (int)reader.integer(4, true);
        value.command_mode = (int)reader.integer(4, true);
        value.control_mode = (int)reader.integer(4, true);
        value.operation_mode = (int)reader.integer(4, true);
        value.drive_state = (int)reader.integer(4, true);
        value.overlay_type = (int)reader.integer(4, true);
        value.tracking_performance = reader.f64();
        return value;
    }

    public static final class Ros2Kuka_driver_interfacesMsgFRIStateArray
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "kuka_driver_interfaces/msg/FRIStateArray";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_4312aa4103fd0c92fe7cd9d1201c40e327b05812cdc60130d11b8c2e0eb47449";
        public static final int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 1736;
        public String[] robot_names = new String[0];
        public Ros2Kuka_driver_interfacesMsgFRIState[] states = new Ros2Kuka_driver_interfacesMsgFRIState[0];

        public Ros2Kuka_driver_interfacesMsgFRIStateArray()
        {
        }

        public static final Codec<Ros2Kuka_driver_interfacesMsgFRIStateArray> CODEC = new Codec<Ros2Kuka_driver_interfacesMsgFRIStateArray>() {
            public byte[] encode(Ros2Kuka_driver_interfacesMsgFRIStateArray value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Kuka_driver_interfacesMsgFRIStateArray(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Kuka_driver_interfacesMsgFRIStateArray decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Kuka_driver_interfacesMsgFRIStateArray value = readRos2Kuka_driver_interfacesMsgFRIStateArray(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Kuka_driver_interfacesMsgFRIStateArray(Codecs.Writer writer, Ros2Kuka_driver_interfacesMsgFRIStateArray value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String[] part0 = value.robot_names;
        if(part0 == null || part0.length > 16)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part0.length, 4, false);
        for(int i = 0; i < part0.length; ++i)
        {
            writeText(writer, part0[i], 64);
        }
        Ros2Kuka_driver_interfacesMsgFRIState[] part1 = value.states;
        if(part1 == null || part1.length > 16)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part1.length, 4, false);
        for(int i = 0; i < part1.length; ++i)
        {
            writeRos2Kuka_driver_interfacesMsgFRIState(writer, part1[i]);
        }
    }

    private static Ros2Kuka_driver_interfacesMsgFRIStateArray readRos2Kuka_driver_interfacesMsgFRIStateArray(Codecs.Reader reader)
    {
        Ros2Kuka_driver_interfacesMsgFRIStateArray value = new Ros2Kuka_driver_interfacesMsgFRIStateArray();
        value.robot_names = new String[readCount(reader, 16, 4)];
        for(int i = 0; i < value.robot_names.length; ++i)
            value.robot_names[i] = readText(reader, 64);
        value.states = new Ros2Kuka_driver_interfacesMsgFRIState[readCount(reader, 16, 40)];
        for(int i = 0; i < value.states.length; ++i)
            value.states[i] = readRos2Kuka_driver_interfacesMsgFRIState(reader);
        return value;
    }

    public static final class Ros2Kuka_driver_interfacesMsgFriConfiguration
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "kuka_driver_interfaces/msg/FriConfiguration";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_a60335766ad606adc5699c833cc6bc43adc3067691bcdbf587bbfb56e8a7127e";
        public static final int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 8;
        public int receive_multiplier = 0;
        public int send_period_ms = 0;

        public Ros2Kuka_driver_interfacesMsgFriConfiguration()
        {
        }

        public static final Codec<Ros2Kuka_driver_interfacesMsgFriConfiguration> CODEC = new Codec<Ros2Kuka_driver_interfacesMsgFriConfiguration>() {
            public byte[] encode(Ros2Kuka_driver_interfacesMsgFriConfiguration value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Kuka_driver_interfacesMsgFriConfiguration(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Kuka_driver_interfacesMsgFriConfiguration decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Kuka_driver_interfacesMsgFriConfiguration value = readRos2Kuka_driver_interfacesMsgFriConfiguration(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Kuka_driver_interfacesMsgFriConfiguration(Codecs.Writer writer, Ros2Kuka_driver_interfacesMsgFriConfiguration value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int part0 = value.receive_multiplier;
        writer.integer(part0, 4, true);
        int part1 = value.send_period_ms;
        writer.integer(part1, 4, true);
    }

    private static Ros2Kuka_driver_interfacesMsgFriConfiguration readRos2Kuka_driver_interfacesMsgFriConfiguration(Codecs.Reader reader)
    {
        Ros2Kuka_driver_interfacesMsgFriConfiguration value = new Ros2Kuka_driver_interfacesMsgFriConfiguration();
        value.receive_multiplier = (int)reader.integer(4, true);
        value.send_period_ms = (int)reader.integer(4, true);
        return value;
    }

    public static final class Ros2Kuka_driver_interfacesMsgHardwareEvent
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "kuka_driver_interfaces/msg/HardwareEvent";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_cb542e9311957712257c6d8ae273b3d2d2339760978e11e3798982c84fbc5e68";
        public static final int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 517;
        public String robot_name = "";
        public int event = 0;

        public Ros2Kuka_driver_interfacesMsgHardwareEvent()
        {
        }

        public static final Codec<Ros2Kuka_driver_interfacesMsgHardwareEvent> CODEC = new Codec<Ros2Kuka_driver_interfacesMsgHardwareEvent>() {
            public byte[] encode(Ros2Kuka_driver_interfacesMsgHardwareEvent value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Kuka_driver_interfacesMsgHardwareEvent(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Kuka_driver_interfacesMsgHardwareEvent decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Kuka_driver_interfacesMsgHardwareEvent value = readRos2Kuka_driver_interfacesMsgHardwareEvent(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Kuka_driver_interfacesMsgHardwareEvent(Codecs.Writer writer, Ros2Kuka_driver_interfacesMsgHardwareEvent value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String part0 = value.robot_name;
        writeText(writer, part0, 512);
        int part1 = value.event;
        writer.integer(part1, 1, false);
    }

    private static Ros2Kuka_driver_interfacesMsgHardwareEvent readRos2Kuka_driver_interfacesMsgHardwareEvent(Codecs.Reader reader)
    {
        Ros2Kuka_driver_interfacesMsgHardwareEvent value = new Ros2Kuka_driver_interfacesMsgHardwareEvent();
        value.robot_name = readText(reader, 512);
        value.event = (int)reader.integer(1, false);
        return value;
    }

    public static final class Ros2Kuka_driver_interfacesMsgKssStatus
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "kuka_driver_interfaces/msg/KssStatus";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_b28bc2f19a0f410f0cd1d5b1d59daf1d09acb3e8312b4267f622a4d119f16b82";
        public static final int MIN_WIRE_BYTES = 9, MAX_WIRE_BYTES = 9;
        public int control_mode = 0;
        public int cycle_time = 0;
        public boolean drives_powered = false;
        public boolean emergency_stop = false;
        public boolean guard_stop = false;
        public boolean in_motion = false;
        public boolean motion_possible = false;
        public int operation_mode = 0;
        public boolean robot_stopped = false;

        public Ros2Kuka_driver_interfacesMsgKssStatus()
        {
        }

        public static final Codec<Ros2Kuka_driver_interfacesMsgKssStatus> CODEC = new Codec<Ros2Kuka_driver_interfacesMsgKssStatus>() {
            public byte[] encode(Ros2Kuka_driver_interfacesMsgKssStatus value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Kuka_driver_interfacesMsgKssStatus(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Kuka_driver_interfacesMsgKssStatus decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Kuka_driver_interfacesMsgKssStatus value = readRos2Kuka_driver_interfacesMsgKssStatus(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Kuka_driver_interfacesMsgKssStatus(Codecs.Writer writer, Ros2Kuka_driver_interfacesMsgKssStatus value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int part0 = value.control_mode;
        writer.integer(part0, 1, false);
        int part1 = value.cycle_time;
        writer.integer(part1, 1, false);
        boolean part2 = value.drives_powered;
        writer.integer(part2 ? 1 : 0, 1, false);
        boolean part3 = value.emergency_stop;
        writer.integer(part3 ? 1 : 0, 1, false);
        boolean part4 = value.guard_stop;
        writer.integer(part4 ? 1 : 0, 1, false);
        boolean part5 = value.in_motion;
        writer.integer(part5 ? 1 : 0, 1, false);
        boolean part6 = value.motion_possible;
        writer.integer(part6 ? 1 : 0, 1, false);
        int part7 = value.operation_mode;
        writer.integer(part7, 1, false);
        boolean part8 = value.robot_stopped;
        writer.integer(part8 ? 1 : 0, 1, false);
    }

    private static Ros2Kuka_driver_interfacesMsgKssStatus readRos2Kuka_driver_interfacesMsgKssStatus(Codecs.Reader reader)
    {
        Ros2Kuka_driver_interfacesMsgKssStatus value = new Ros2Kuka_driver_interfacesMsgKssStatus();
        value.control_mode = (int)reader.integer(1, false);
        value.cycle_time = (int)reader.integer(1, false);
        value.drives_powered = readBool(reader);
        value.emergency_stop = readBool(reader);
        value.guard_stop = readBool(reader);
        value.in_motion = readBool(reader);
        value.motion_possible = readBool(reader);
        value.operation_mode = (int)reader.integer(1, false);
        value.robot_stopped = readBool(reader);
        return value;
    }

    public static final class Ros2Kuka_driver_interfacesMsgKssStatusArray
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "kuka_driver_interfaces/msg/KssStatusArray";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_3c8e93b369eefea89c0aa56ab657721edd041ac66e18cfbf4fc4201df60dbebd";
        public static final int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 1240;
        public String[] robot_names = new String[0];
        public Ros2Kuka_driver_interfacesMsgKssStatus[] statuses = new Ros2Kuka_driver_interfacesMsgKssStatus[0];

        public Ros2Kuka_driver_interfacesMsgKssStatusArray()
        {
        }

        public static final Codec<Ros2Kuka_driver_interfacesMsgKssStatusArray> CODEC = new Codec<Ros2Kuka_driver_interfacesMsgKssStatusArray>() {
            public byte[] encode(Ros2Kuka_driver_interfacesMsgKssStatusArray value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Kuka_driver_interfacesMsgKssStatusArray(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Kuka_driver_interfacesMsgKssStatusArray decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Kuka_driver_interfacesMsgKssStatusArray value = readRos2Kuka_driver_interfacesMsgKssStatusArray(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Kuka_driver_interfacesMsgKssStatusArray(Codecs.Writer writer, Ros2Kuka_driver_interfacesMsgKssStatusArray value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String[] part0 = value.robot_names;
        if(part0 == null || part0.length > 16)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part0.length, 4, false);
        for(int i = 0; i < part0.length; ++i)
        {
            writeText(writer, part0[i], 64);
        }
        Ros2Kuka_driver_interfacesMsgKssStatus[] part1 = value.statuses;
        if(part1 == null || part1.length > 16)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part1.length, 4, false);
        for(int i = 0; i < part1.length; ++i)
        {
            writeRos2Kuka_driver_interfacesMsgKssStatus(writer, part1[i]);
        }
    }

    private static Ros2Kuka_driver_interfacesMsgKssStatusArray readRos2Kuka_driver_interfacesMsgKssStatusArray(Codecs.Reader reader)
    {
        Ros2Kuka_driver_interfacesMsgKssStatusArray value = new Ros2Kuka_driver_interfacesMsgKssStatusArray();
        value.robot_names = new String[readCount(reader, 16, 4)];
        for(int i = 0; i < value.robot_names.length; ++i)
            value.robot_names[i] = readText(reader, 64);
        value.statuses = new Ros2Kuka_driver_interfacesMsgKssStatus[readCount(reader, 16, 9)];
        for(int i = 0; i < value.statuses.length; ++i)
            value.statuses[i] = readRos2Kuka_driver_interfacesMsgKssStatus(reader);
        return value;
    }

    public static final class Ros2Lifecycle_msgsMsgState
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "lifecycle_msgs/msg/State";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_ebd49e5f87ddaa204cc4072ceef9840676c6f65f67448a027e26570dae0ded94";
        public static final int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 517;
        public int id = 0;
        public String label = "";

        public Ros2Lifecycle_msgsMsgState()
        {
        }

        public static final Codec<Ros2Lifecycle_msgsMsgState> CODEC = new Codec<Ros2Lifecycle_msgsMsgState>() {
            public byte[] encode(Ros2Lifecycle_msgsMsgState value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Lifecycle_msgsMsgState(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Lifecycle_msgsMsgState decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Lifecycle_msgsMsgState value = readRos2Lifecycle_msgsMsgState(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Lifecycle_msgsMsgState(Codecs.Writer writer, Ros2Lifecycle_msgsMsgState value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int part0 = value.id;
        writer.integer(part0, 1, false);
        String part1 = value.label;
        writeText(writer, part1, 512);
    }

    private static Ros2Lifecycle_msgsMsgState readRos2Lifecycle_msgsMsgState(Codecs.Reader reader)
    {
        Ros2Lifecycle_msgsMsgState value = new Ros2Lifecycle_msgsMsgState();
        value.id = (int)reader.integer(1, false);
        value.label = readText(reader, 512);
        return value;
    }

    public static final class Ros2Lifecycle_msgsMsgTransition
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "lifecycle_msgs/msg/Transition";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_1f9bb864622854b446a37cf3c6e29e9cf41f8efa37375c5a56205b4c02ed10cb";
        public static final int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 517;
        public int id = 0;
        public String label = "";

        public Ros2Lifecycle_msgsMsgTransition()
        {
        }

        public static final Codec<Ros2Lifecycle_msgsMsgTransition> CODEC = new Codec<Ros2Lifecycle_msgsMsgTransition>() {
            public byte[] encode(Ros2Lifecycle_msgsMsgTransition value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Lifecycle_msgsMsgTransition(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Lifecycle_msgsMsgTransition decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Lifecycle_msgsMsgTransition value = readRos2Lifecycle_msgsMsgTransition(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Lifecycle_msgsMsgTransition(Codecs.Writer writer, Ros2Lifecycle_msgsMsgTransition value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int part0 = value.id;
        writer.integer(part0, 1, false);
        String part1 = value.label;
        writeText(writer, part1, 512);
    }

    private static Ros2Lifecycle_msgsMsgTransition readRos2Lifecycle_msgsMsgTransition(Codecs.Reader reader)
    {
        Ros2Lifecycle_msgsMsgTransition value = new Ros2Lifecycle_msgsMsgTransition();
        value.id = (int)reader.integer(1, false);
        value.label = readText(reader, 512);
        return value;
    }

    public static final class Ros2Lifecycle_msgsSrvChangeState_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "lifecycle_msgs/srv/ChangeState_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_b04270f03616b8e581036d327d18bde62d38627ae8acf88fb77d0ed7b3b3d3d1";
        public static final int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 517;
        public Ros2Lifecycle_msgsMsgTransition transition = new Ros2Lifecycle_msgsMsgTransition();

        public Ros2Lifecycle_msgsSrvChangeState_Request()
        {
        }

        public static final Codec<Ros2Lifecycle_msgsSrvChangeState_Request> CODEC = new Codec<Ros2Lifecycle_msgsSrvChangeState_Request>() {
            public byte[] encode(Ros2Lifecycle_msgsSrvChangeState_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Lifecycle_msgsSrvChangeState_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Lifecycle_msgsSrvChangeState_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Lifecycle_msgsSrvChangeState_Request value = readRos2Lifecycle_msgsSrvChangeState_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Lifecycle_msgsSrvChangeState_Request(Codecs.Writer writer, Ros2Lifecycle_msgsSrvChangeState_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Lifecycle_msgsMsgTransition part0 = value.transition;
        writeRos2Lifecycle_msgsMsgTransition(writer, part0);
    }

    private static Ros2Lifecycle_msgsSrvChangeState_Request readRos2Lifecycle_msgsSrvChangeState_Request(Codecs.Reader reader)
    {
        Ros2Lifecycle_msgsSrvChangeState_Request value = new Ros2Lifecycle_msgsSrvChangeState_Request();
        value.transition = readRos2Lifecycle_msgsMsgTransition(reader);
        return value;
    }

    public static final class Ros2Lifecycle_msgsSrvChangeState_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "lifecycle_msgs/srv/ChangeState_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_d2dc541d6995976a2a1a2c03d499aa9dccaf487736b11704d778c86fddaf5032";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros2Lifecycle_msgsSrvChangeState_Response()
        {
        }

        public static final Codec<Ros2Lifecycle_msgsSrvChangeState_Response> CODEC = new Codec<Ros2Lifecycle_msgsSrvChangeState_Response>() {
            public byte[] encode(Ros2Lifecycle_msgsSrvChangeState_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Lifecycle_msgsSrvChangeState_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Lifecycle_msgsSrvChangeState_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Lifecycle_msgsSrvChangeState_Response value = readRos2Lifecycle_msgsSrvChangeState_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Lifecycle_msgsSrvChangeState_Response(Codecs.Writer writer, Ros2Lifecycle_msgsSrvChangeState_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros2Lifecycle_msgsSrvChangeState_Response readRos2Lifecycle_msgsSrvChangeState_Response(Codecs.Reader reader)
    {
        Ros2Lifecycle_msgsSrvChangeState_Response value = new Ros2Lifecycle_msgsSrvChangeState_Response();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2Lifecycle_msgsSrvGetState_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "lifecycle_msgs/srv/GetState_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_86a3d813de32971a271e062acfaf201eb718aff8d68a4e343d6fceaae2b5098d";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public Ros2Lifecycle_msgsSrvGetState_Request()
        {
        }

        public static final Codec<Ros2Lifecycle_msgsSrvGetState_Request> CODEC = new Codec<Ros2Lifecycle_msgsSrvGetState_Request>() {
            public byte[] encode(Ros2Lifecycle_msgsSrvGetState_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Lifecycle_msgsSrvGetState_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Lifecycle_msgsSrvGetState_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Lifecycle_msgsSrvGetState_Request value = readRos2Lifecycle_msgsSrvGetState_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Lifecycle_msgsSrvGetState_Request(Codecs.Writer writer, Ros2Lifecycle_msgsSrvGetState_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
    }

    private static Ros2Lifecycle_msgsSrvGetState_Request readRos2Lifecycle_msgsSrvGetState_Request(Codecs.Reader reader)
    {
        Ros2Lifecycle_msgsSrvGetState_Request value = new Ros2Lifecycle_msgsSrvGetState_Request();
        return value;
    }

    public static final class Ros2Lifecycle_msgsSrvGetState_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "lifecycle_msgs/srv/GetState_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_697418ec4095e98c855b1f9d238a3bd74a59ccbbc3eb31981c4df3c3b829ea39";
        public static final int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 517;
        public Ros2Lifecycle_msgsMsgState current_state = new Ros2Lifecycle_msgsMsgState();

        public Ros2Lifecycle_msgsSrvGetState_Response()
        {
        }

        public static final Codec<Ros2Lifecycle_msgsSrvGetState_Response> CODEC = new Codec<Ros2Lifecycle_msgsSrvGetState_Response>() {
            public byte[] encode(Ros2Lifecycle_msgsSrvGetState_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Lifecycle_msgsSrvGetState_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Lifecycle_msgsSrvGetState_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Lifecycle_msgsSrvGetState_Response value = readRos2Lifecycle_msgsSrvGetState_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Lifecycle_msgsSrvGetState_Response(Codecs.Writer writer, Ros2Lifecycle_msgsSrvGetState_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Lifecycle_msgsMsgState part0 = value.current_state;
        writeRos2Lifecycle_msgsMsgState(writer, part0);
    }

    private static Ros2Lifecycle_msgsSrvGetState_Response readRos2Lifecycle_msgsSrvGetState_Response(Codecs.Reader reader)
    {
        Ros2Lifecycle_msgsSrvGetState_Response value = new Ros2Lifecycle_msgsSrvGetState_Response();
        value.current_state = readRos2Lifecycle_msgsMsgState(reader);
        return value;
    }

    public static final class Ros2Sensor_msgsMsgJointState
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "sensor_msgs/msg/JointState";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_88d44f7bdb40f8c45539a041a25903609561fa74db90b9972e1369ebbff6c884";
        public static final int MIN_WIRE_BYTES = 28, MAX_WIRE_BYTES = 1196;
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
        if(part1 == null || part1.length > 12)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part1.length, 4, false);
        for(int i = 0; i < part1.length; ++i)
        {
            writeText(writer, part1[i], 64);
        }
        double[] part2 = value.position;
        if(part2 == null || part2.length > 12)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part2.length, 4, false);
        for(int i = 0; i < part2.length; ++i)
        {
            writer.f64(part2[i]);
        }
        double[] part3 = value.velocity;
        if(part3 == null || part3.length > 12)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part3.length, 4, false);
        for(int i = 0; i < part3.length; ++i)
        {
            writer.f64(part3[i]);
        }
        double[] part4 = value.effort;
        if(part4 == null || part4.length > 12)
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
        value.name = new String[readCount(reader, 12, 4)];
        for(int i = 0; i < value.name.length; ++i)
            value.name[i] = readText(reader, 64);
        value.position = new double[readCount(reader, 12, 8)];
        for(int i = 0; i < value.position.length; ++i)
            value.position[i] = reader.f64();
        value.velocity = new double[readCount(reader, 12, 8)];
        for(int i = 0; i < value.velocity.length; ++i)
            value.velocity[i] = reader.f64();
        value.effort = new double[readCount(reader, 12, 8)];
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

    public static final class Ros2Std_srvsSrvTrigger_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "std_srvs/srv/Trigger_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_f1d8ad4ab7cf476cada6301f71ae24e046c244ba62bb6735183efe8e8c530a77";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public Ros2Std_srvsSrvTrigger_Request()
        {
        }

        public static final Codec<Ros2Std_srvsSrvTrigger_Request> CODEC = new Codec<Ros2Std_srvsSrvTrigger_Request>() {
            public byte[] encode(Ros2Std_srvsSrvTrigger_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Std_srvsSrvTrigger_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Std_srvsSrvTrigger_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Std_srvsSrvTrigger_Request value = readRos2Std_srvsSrvTrigger_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Std_srvsSrvTrigger_Request(Codecs.Writer writer, Ros2Std_srvsSrvTrigger_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
    }

    private static Ros2Std_srvsSrvTrigger_Request readRos2Std_srvsSrvTrigger_Request(Codecs.Reader reader)
    {
        Ros2Std_srvsSrvTrigger_Request value = new Ros2Std_srvsSrvTrigger_Request();
        return value;
    }

    public static final class Ros2Std_srvsSrvTrigger_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "std_srvs/srv/Trigger_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_95fe65bd59112bb00093f66c6853844b01ccea8e6ded47e73038718aa886f39d";
        public static final int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 517;
        public boolean success = false;
        public String message = "";

        public Ros2Std_srvsSrvTrigger_Response()
        {
        }

        public static final Codec<Ros2Std_srvsSrvTrigger_Response> CODEC = new Codec<Ros2Std_srvsSrvTrigger_Response>() {
            public byte[] encode(Ros2Std_srvsSrvTrigger_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Std_srvsSrvTrigger_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Std_srvsSrvTrigger_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Std_srvsSrvTrigger_Response value = readRos2Std_srvsSrvTrigger_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Std_srvsSrvTrigger_Response(Codecs.Writer writer, Ros2Std_srvsSrvTrigger_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
        String part1 = value.message;
        writeText(writer, part1, 512);
    }

    private static Ros2Std_srvsSrvTrigger_Response readRos2Std_srvsSrvTrigger_Response(Codecs.Reader reader)
    {
        Ros2Std_srvsSrvTrigger_Response value = new Ros2Std_srvsSrvTrigger_Response();
        value.success = readBool(reader);
        value.message = readText(reader, 512);
        return value;
    }
}
