package org.uwvm.roswasm.generated;

import org.uwvm.roswasm.Codec;
import org.uwvm.roswasm.Codecs;

/** @brief Generated complete canonical records; no CDR/native registration or ROS authority. */
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

    public static final class Ros2Geometry_msgsMsgPoseWithCovariance
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "geometry_msgs/msg/PoseWithCovariance";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_8eb3e25c45769eb29691011c05315ed50f2b97eff488f9e8ee2dc70bddab4dc2";
        public static final int MIN_WIRE_BYTES = 344, MAX_WIRE_BYTES = 344;
        public Ros2Geometry_msgsMsgPose pose = new Ros2Geometry_msgsMsgPose();
        public double[] covariance = new double[36];

        public Ros2Geometry_msgsMsgPoseWithCovariance()
        {
        }

        public static final Codec<Ros2Geometry_msgsMsgPoseWithCovariance> CODEC = new Codec<Ros2Geometry_msgsMsgPoseWithCovariance>() {
            public byte[] encode(Ros2Geometry_msgsMsgPoseWithCovariance value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Geometry_msgsMsgPoseWithCovariance(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Geometry_msgsMsgPoseWithCovariance decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Geometry_msgsMsgPoseWithCovariance value = readRos2Geometry_msgsMsgPoseWithCovariance(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Geometry_msgsMsgPoseWithCovariance(Codecs.Writer writer, Ros2Geometry_msgsMsgPoseWithCovariance value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Geometry_msgsMsgPose part0 = value.pose;
        writeRos2Geometry_msgsMsgPose(writer, part0);
        double[] part1 = value.covariance;
        if(part1 == null || part1.length != 36)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part1.length; ++i)
        {
            writer.f64(part1[i]);
        }
    }

    private static Ros2Geometry_msgsMsgPoseWithCovariance readRos2Geometry_msgsMsgPoseWithCovariance(Codecs.Reader reader)
    {
        Ros2Geometry_msgsMsgPoseWithCovariance value = new Ros2Geometry_msgsMsgPoseWithCovariance();
        value.pose = readRos2Geometry_msgsMsgPose(reader);
        value.covariance = new double[36];
        for(int i = 0; i < value.covariance.length; ++i)
            value.covariance[i] = reader.f64();
        return value;
    }

    public static final class Ros2Geometry_msgsMsgPoseWithCovarianceStamped
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "geometry_msgs/msg/PoseWithCovarianceStamped";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_ea380172cde0ee5fef319aff50d92a80c314510e3d12efec45e9ae1f74974af3";
        public static final int MIN_WIRE_BYTES = 356, MAX_WIRE_BYTES = 420;
        public Ros2Std_msgsMsgHeader header = new Ros2Std_msgsMsgHeader();
        public Ros2Geometry_msgsMsgPoseWithCovariance pose = new Ros2Geometry_msgsMsgPoseWithCovariance();

        public Ros2Geometry_msgsMsgPoseWithCovarianceStamped()
        {
        }

        public static final Codec<Ros2Geometry_msgsMsgPoseWithCovarianceStamped> CODEC = new Codec<Ros2Geometry_msgsMsgPoseWithCovarianceStamped>() {
            public byte[] encode(Ros2Geometry_msgsMsgPoseWithCovarianceStamped value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Geometry_msgsMsgPoseWithCovarianceStamped(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Geometry_msgsMsgPoseWithCovarianceStamped decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Geometry_msgsMsgPoseWithCovarianceStamped value = readRos2Geometry_msgsMsgPoseWithCovarianceStamped(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Geometry_msgsMsgPoseWithCovarianceStamped(Codecs.Writer writer, Ros2Geometry_msgsMsgPoseWithCovarianceStamped value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Std_msgsMsgHeader part0 = value.header;
        writeRos2Std_msgsMsgHeader(writer, part0);
        Ros2Geometry_msgsMsgPoseWithCovariance part1 = value.pose;
        writeRos2Geometry_msgsMsgPoseWithCovariance(writer, part1);
    }

    private static Ros2Geometry_msgsMsgPoseWithCovarianceStamped readRos2Geometry_msgsMsgPoseWithCovarianceStamped(Codecs.Reader reader)
    {
        Ros2Geometry_msgsMsgPoseWithCovarianceStamped value = new Ros2Geometry_msgsMsgPoseWithCovarianceStamped();
        value.header = readRos2Std_msgsMsgHeader(reader);
        value.pose = readRos2Geometry_msgsMsgPoseWithCovariance(reader);
        return value;
    }

    public static final class Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetection
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "isaac_ros_apriltag_interfaces/msg/AprilTagDetection";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_5d840f0d9239a948ce5d17bbee6e248db8151ff31070667e506e9c1647ac6fe7";
        public static final int MIN_WIRE_BYTES = 484, MAX_WIRE_BYTES = 612;
        public String family = "";
        public int id = 0;
        public Ros2Geometry_msgsMsgPoint center = new Ros2Geometry_msgsMsgPoint();
        public Ros2Geometry_msgsMsgPoint[] corners = new Ros2Geometry_msgsMsgPoint[4];
        public Ros2Geometry_msgsMsgPoseWithCovarianceStamped pose = new Ros2Geometry_msgsMsgPoseWithCovarianceStamped();

        public Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetection()
        {
            for(int i = 0; i < 4; ++i)
                this.corners[i] = new Ros2Geometry_msgsMsgPoint();
        }

        public static final Codec<Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetection> CODEC =
            new Codec<Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetection>() {
                public byte[] encode(Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetection value)
                {
                    Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                    writeRos2Isaac_ros_apriltag_interfacesMsgAprilTagDetection(writer, value);
                    byte[] wire = writer.finish();
                    if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                        throw new IllegalArgumentException("complete encoded extent");
                    return wire;
                }
                public Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetection decode(byte[] bytes)
                {
                    Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                    Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetection value = readRos2Isaac_ros_apriltag_interfacesMsgAprilTagDetection(reader);
                    reader.end();
                    return value;
                }
            };
    }

    private static void writeRos2Isaac_ros_apriltag_interfacesMsgAprilTagDetection(Codecs.Writer writer,
                                                                                   Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetection value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String part0 = value.family;
        writeText(writer, part0, 64);
        int part1 = value.id;
        writer.integer(part1, 4, true);
        Ros2Geometry_msgsMsgPoint part2 = value.center;
        writeRos2Geometry_msgsMsgPoint(writer, part2);
        Ros2Geometry_msgsMsgPoint[] part3 = value.corners;
        if(part3 == null || part3.length != 4)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part3.length; ++i)
        {
            writeRos2Geometry_msgsMsgPoint(writer, part3[i]);
        }
        Ros2Geometry_msgsMsgPoseWithCovarianceStamped part4 = value.pose;
        writeRos2Geometry_msgsMsgPoseWithCovarianceStamped(writer, part4);
    }

    private static Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetection readRos2Isaac_ros_apriltag_interfacesMsgAprilTagDetection(Codecs.Reader reader)
    {
        Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetection value = new Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetection();
        value.family = readText(reader, 64);
        value.id = (int)reader.integer(4, true);
        value.center = readRos2Geometry_msgsMsgPoint(reader);
        value.corners = new Ros2Geometry_msgsMsgPoint[4];
        for(int i = 0; i < value.corners.length; ++i)
            value.corners[i] = readRos2Geometry_msgsMsgPoint(reader);
        value.pose = readRos2Geometry_msgsMsgPoseWithCovarianceStamped(reader);
        return value;
    }

    public static final class Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "isaac_ros_apriltag_interfaces/msg/AprilTagDetectionArray";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_60359e405aedd2a627e60bc35e849989fe5ed1d426afb2a884036aef93bfe0a5";
        public static final int MIN_WIRE_BYTES = 16, MAX_WIRE_BYTES = 9872;
        public Ros2Std_msgsMsgHeader header = new Ros2Std_msgsMsgHeader();
        public Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetection[] detections = new Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetection[0];

        public Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray()
        {
        }

        public static final Codec<Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray> CODEC =
            new Codec<Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray>() {
                public byte[] encode(Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray value)
                {
                    Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                    writeRos2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray(writer, value);
                    byte[] wire = writer.finish();
                    if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                        throw new IllegalArgumentException("complete encoded extent");
                    return wire;
                }
                public Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray decode(byte[] bytes)
                {
                    Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                    Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray value = readRos2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray(reader);
                    reader.end();
                    return value;
                }
            };
    }

    private static void writeRos2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray(Codecs.Writer writer,
                                                                                        Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Std_msgsMsgHeader part0 = value.header;
        writeRos2Std_msgsMsgHeader(writer, part0);
        Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetection[] part1 = value.detections;
        if(part1 == null || part1.length > 16)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part1.length, 4, false);
        for(int i = 0; i < part1.length; ++i)
        {
            writeRos2Isaac_ros_apriltag_interfacesMsgAprilTagDetection(writer, part1[i]);
        }
    }

    private static Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray
        readRos2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray(Codecs.Reader reader)
    {
        Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray value = new Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray();
        value.header = readRos2Std_msgsMsgHeader(reader);
        value.detections = new Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetection[readCount(reader, 16, 484)];
        for(int i = 0; i < value.detections.length; ++i)
            value.detections[i] = readRos2Isaac_ros_apriltag_interfacesMsgAprilTagDetection(reader);
        return value;
    }
}
