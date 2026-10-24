/**
 * @file BoundedRecords.java
 * @brief Complete universal_robots values and adapters for the selected original interface catalog.
 * @details Retain original field order, scalar widths, array capacities, string bounds, constants and declared
 * defaults. Pure value access and canonical codecs create no native ROS allocation or resource grant. Transport
 * roles require the separately admitted SDK owner.
 * @see share/platform/universal_robots/domains/universal-robots-polyscopex-complete.ir.json
 * @see document/platform/universal_robots/en_US/README.md
 */

package org.uwvm.universal_robots.universal_robots_polyscopex_complete;

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

    public static final class Ros2Std_msgsMsgString
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "std_msgs/msg/String";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_c48b5497cbf487f56eb073a982b93acd501c6bb72f0e9ef9dce2175ce7ac15c5";
        public static final int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 1028;
        public String data = "";

        public Ros2Std_msgsMsgString()
        {
        }

        public static final Codec<Ros2Std_msgsMsgString> CODEC = new Codec<Ros2Std_msgsMsgString>() {
            public byte[] encode(Ros2Std_msgsMsgString value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2Std_msgsMsgString(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2Std_msgsMsgString decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Std_msgsMsgString value = readRos2Std_msgsMsgString(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2Std_msgsMsgString(Codecs.Writer writer, Ros2Std_msgsMsgString value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String part0 = value.data;
        writeText(writer, part0, 1024);
    }

    private static Ros2Std_msgsMsgString readRos2Std_msgsMsgString(Codecs.Reader reader)
    {
        Ros2Std_msgsMsgString value = new Ros2Std_msgsMsgString();
        value.data = readText(reader, 1024);
        return value;
    }

    public static final class Ros2UrinterfacesMsgRobotMode
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "urinterfaces/msg/RobotMode";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_a16ec0ed8caa1a2b48cd4116d88877911921848469cd139f4783e4f2c549e7ea";
        public static final int MIN_WIRE_BYTES = 13, MAX_WIRE_BYTES = 141;
        public Ros2Std_msgsMsgHeader header = new Ros2Std_msgsMsgHeader();
        public byte data = 0;

        public Ros2UrinterfacesMsgRobotMode()
        {
        }

        public static final Codec<Ros2UrinterfacesMsgRobotMode> CODEC = new Codec<Ros2UrinterfacesMsgRobotMode>() {
            public byte[] encode(Ros2UrinterfacesMsgRobotMode value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2UrinterfacesMsgRobotMode(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2UrinterfacesMsgRobotMode decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2UrinterfacesMsgRobotMode value = readRos2UrinterfacesMsgRobotMode(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2UrinterfacesMsgRobotMode(Codecs.Writer writer, Ros2UrinterfacesMsgRobotMode value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Std_msgsMsgHeader part0 = value.header;
        writeRos2Std_msgsMsgHeader(writer, part0);
        byte part1 = value.data;
        writer.integer(part1, 1, true);
    }

    private static Ros2UrinterfacesMsgRobotMode readRos2UrinterfacesMsgRobotMode(Codecs.Reader reader)
    {
        Ros2UrinterfacesMsgRobotMode value = new Ros2UrinterfacesMsgRobotMode();
        value.header = readRos2Std_msgsMsgHeader(reader);
        value.data = (byte)reader.integer(1, true);
        return value;
    }

    public static final class Ros2UrinterfacesActionSetMode_Goal
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "urinterfaces/action/SetMode_Goal";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_d1d998e217d6f3d3eefd8ffccecff8463580346150a59a1c7a2dac8d609e0e09";
        public static final int MIN_WIRE_BYTES = 15, MAX_WIRE_BYTES = 143;
        public Ros2UrinterfacesMsgRobotMode target_robot_mode = new Ros2UrinterfacesMsgRobotMode();
        public boolean stop_program = false;
        public boolean play_program = false;

        public Ros2UrinterfacesActionSetMode_Goal()
        {
        }

        public static final Codec<Ros2UrinterfacesActionSetMode_Goal> CODEC = new Codec<Ros2UrinterfacesActionSetMode_Goal>() {
            public byte[] encode(Ros2UrinterfacesActionSetMode_Goal value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2UrinterfacesActionSetMode_Goal(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2UrinterfacesActionSetMode_Goal decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2UrinterfacesActionSetMode_Goal value = readRos2UrinterfacesActionSetMode_Goal(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2UrinterfacesActionSetMode_Goal(Codecs.Writer writer, Ros2UrinterfacesActionSetMode_Goal value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2UrinterfacesMsgRobotMode part0 = value.target_robot_mode;
        writeRos2UrinterfacesMsgRobotMode(writer, part0);
        boolean part1 = value.stop_program;
        writer.integer(part1 ? 1 : 0, 1, false);
        boolean part2 = value.play_program;
        writer.integer(part2 ? 1 : 0, 1, false);
    }

    private static Ros2UrinterfacesActionSetMode_Goal readRos2UrinterfacesActionSetMode_Goal(Codecs.Reader reader)
    {
        Ros2UrinterfacesActionSetMode_Goal value = new Ros2UrinterfacesActionSetMode_Goal();
        value.target_robot_mode = readRos2UrinterfacesMsgRobotMode(reader);
        value.stop_program = readBool(reader);
        value.play_program = readBool(reader);
        return value;
    }

    public static final class Ros2UrinterfacesActionSetMode_Result
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "urinterfaces/action/SetMode_Result";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_500243a508824c42fe2da424040aa60bf2426ac607f2f6016fab014f81518af7";
        public static final int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 261;
        public boolean success = false;
        public String message = "";

        public Ros2UrinterfacesActionSetMode_Result()
        {
        }

        public static final Codec<Ros2UrinterfacesActionSetMode_Result> CODEC = new Codec<Ros2UrinterfacesActionSetMode_Result>() {
            public byte[] encode(Ros2UrinterfacesActionSetMode_Result value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2UrinterfacesActionSetMode_Result(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2UrinterfacesActionSetMode_Result decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2UrinterfacesActionSetMode_Result value = readRos2UrinterfacesActionSetMode_Result(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2UrinterfacesActionSetMode_Result(Codecs.Writer writer, Ros2UrinterfacesActionSetMode_Result value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
        String part1 = value.message;
        writeText(writer, part1, 256);
    }

    private static Ros2UrinterfacesActionSetMode_Result readRos2UrinterfacesActionSetMode_Result(Codecs.Reader reader)
    {
        Ros2UrinterfacesActionSetMode_Result value = new Ros2UrinterfacesActionSetMode_Result();
        value.success = readBool(reader);
        value.message = readText(reader, 256);
        return value;
    }

    public static final class Ros2UrinterfacesActionSetMode_Feedback
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "urinterfaces/action/SetMode_Feedback";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_22fb71c17066829bd66c98bc631c82b2bfef3c501e08960a6bfad3d902f76537";
        public static final int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;
        public byte current_robot_mode = 0;
        public byte current_safety_mode = 0;

        public Ros2UrinterfacesActionSetMode_Feedback()
        {
        }

        public static final Codec<Ros2UrinterfacesActionSetMode_Feedback> CODEC = new Codec<Ros2UrinterfacesActionSetMode_Feedback>() {
            public byte[] encode(Ros2UrinterfacesActionSetMode_Feedback value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2UrinterfacesActionSetMode_Feedback(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2UrinterfacesActionSetMode_Feedback decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2UrinterfacesActionSetMode_Feedback value = readRos2UrinterfacesActionSetMode_Feedback(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2UrinterfacesActionSetMode_Feedback(Codecs.Writer writer, Ros2UrinterfacesActionSetMode_Feedback value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        byte part0 = value.current_robot_mode;
        writer.integer(part0, 1, true);
        byte part1 = value.current_safety_mode;
        writer.integer(part1, 1, true);
    }

    private static Ros2UrinterfacesActionSetMode_Feedback readRos2UrinterfacesActionSetMode_Feedback(Codecs.Reader reader)
    {
        Ros2UrinterfacesActionSetMode_Feedback value = new Ros2UrinterfacesActionSetMode_Feedback();
        value.current_robot_mode = (byte)reader.integer(1, true);
        value.current_safety_mode = (byte)reader.integer(1, true);
        return value;
    }

    public static final class Ros2UrinterfacesMsgActiveTCP
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "urinterfaces/msg/ActiveTCP";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_e62d31728eca201dee256d88d1d268bf2ecb9607ed5c48783432f966edf459ae";
        public static final int MIN_WIRE_BYTES = 16, MAX_WIRE_BYTES = 400;
        public Ros2Std_msgsMsgHeader header = new Ros2Std_msgsMsgHeader();
        public String data = "";

        public Ros2UrinterfacesMsgActiveTCP()
        {
        }

        public static final Codec<Ros2UrinterfacesMsgActiveTCP> CODEC = new Codec<Ros2UrinterfacesMsgActiveTCP>() {
            public byte[] encode(Ros2UrinterfacesMsgActiveTCP value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2UrinterfacesMsgActiveTCP(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2UrinterfacesMsgActiveTCP decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2UrinterfacesMsgActiveTCP value = readRos2UrinterfacesMsgActiveTCP(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2UrinterfacesMsgActiveTCP(Codecs.Writer writer, Ros2UrinterfacesMsgActiveTCP value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Std_msgsMsgHeader part0 = value.header;
        writeRos2Std_msgsMsgHeader(writer, part0);
        String part1 = value.data;
        writeText(writer, part1, 256);
    }

    private static Ros2UrinterfacesMsgActiveTCP readRos2UrinterfacesMsgActiveTCP(Codecs.Reader reader)
    {
        Ros2UrinterfacesMsgActiveTCP value = new Ros2UrinterfacesMsgActiveTCP();
        value.header = readRos2Std_msgsMsgHeader(reader);
        value.data = readText(reader, 256);
        return value;
    }

    public static final class Ros2UrinterfacesMsgAnalog
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "urinterfaces/msg/Analog";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_e81cffd909f3bc387ee00c37537434341ef93fd160e465be033aa9bc412b979b";
        public static final int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 6;
        public int pin = 0;
        public int domain = 0;
        public float value = 0;

        public Ros2UrinterfacesMsgAnalog()
        {
        }

        public static final Codec<Ros2UrinterfacesMsgAnalog> CODEC = new Codec<Ros2UrinterfacesMsgAnalog>() {
            public byte[] encode(Ros2UrinterfacesMsgAnalog value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2UrinterfacesMsgAnalog(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2UrinterfacesMsgAnalog decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2UrinterfacesMsgAnalog value = readRos2UrinterfacesMsgAnalog(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2UrinterfacesMsgAnalog(Codecs.Writer writer, Ros2UrinterfacesMsgAnalog value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int part0 = value.pin;
        writer.integer(part0, 1, false);
        int part1 = value.domain;
        writer.integer(part1, 1, false);
        float part2 = value.value;
        writer.f32(part2);
    }

    private static Ros2UrinterfacesMsgAnalog readRos2UrinterfacesMsgAnalog(Codecs.Reader reader)
    {
        Ros2UrinterfacesMsgAnalog value = new Ros2UrinterfacesMsgAnalog();
        value.pin = (int)reader.integer(1, false);
        value.domain = (int)reader.integer(1, false);
        value.value = reader.f32();
        return value;
    }

    public static final class Ros2UrinterfacesMsgAnalogIO
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "urinterfaces/msg/AnalogIO";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_3130f3e3857f21bab5092d9c6abea8c45965c07ebb9c1ab14b28fa51b7d71e0c";
        public static final int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 200;
        public Ros2UrinterfacesMsgAnalog[] analog_inputs = new Ros2UrinterfacesMsgAnalog[0];
        public Ros2UrinterfacesMsgAnalog[] analog_outputs = new Ros2UrinterfacesMsgAnalog[0];

        public Ros2UrinterfacesMsgAnalogIO()
        {
        }

        public static final Codec<Ros2UrinterfacesMsgAnalogIO> CODEC = new Codec<Ros2UrinterfacesMsgAnalogIO>() {
            public byte[] encode(Ros2UrinterfacesMsgAnalogIO value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2UrinterfacesMsgAnalogIO(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2UrinterfacesMsgAnalogIO decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2UrinterfacesMsgAnalogIO value = readRos2UrinterfacesMsgAnalogIO(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2UrinterfacesMsgAnalogIO(Codecs.Writer writer, Ros2UrinterfacesMsgAnalogIO value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2UrinterfacesMsgAnalog[] part0 = value.analog_inputs;
        if(part0 == null || part0.length > 16)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part0.length, 4, false);
        for(int i = 0; i < part0.length; ++i)
        {
            writeRos2UrinterfacesMsgAnalog(writer, part0[i]);
        }
        Ros2UrinterfacesMsgAnalog[] part1 = value.analog_outputs;
        if(part1 == null || part1.length > 16)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part1.length, 4, false);
        for(int i = 0; i < part1.length; ++i)
        {
            writeRos2UrinterfacesMsgAnalog(writer, part1[i]);
        }
    }

    private static Ros2UrinterfacesMsgAnalogIO readRos2UrinterfacesMsgAnalogIO(Codecs.Reader reader)
    {
        Ros2UrinterfacesMsgAnalogIO value = new Ros2UrinterfacesMsgAnalogIO();
        value.analog_inputs = new Ros2UrinterfacesMsgAnalog[readCount(reader, 16, 6)];
        for(int i = 0; i < value.analog_inputs.length; ++i)
            value.analog_inputs[i] = readRos2UrinterfacesMsgAnalog(reader);
        value.analog_outputs = new Ros2UrinterfacesMsgAnalog[readCount(reader, 16, 6)];
        for(int i = 0; i < value.analog_outputs.length; ++i)
            value.analog_outputs[i] = readRos2UrinterfacesMsgAnalog(reader);
        return value;
    }

    public static final class Ros2UrinterfacesMsgAnalogIOStateStamped
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "urinterfaces/msg/AnalogIOStateStamped";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_a40e839bb4acfcb26503c79f01216b7aea9ab8ff25c50dca42578b206ab40a89";
        public static final int MIN_WIRE_BYTES = 20, MAX_WIRE_BYTES = 340;
        public Ros2Std_msgsMsgHeader header = new Ros2Std_msgsMsgHeader();
        public Ros2UrinterfacesMsgAnalogIO io_state = new Ros2UrinterfacesMsgAnalogIO();

        public Ros2UrinterfacesMsgAnalogIOStateStamped()
        {
        }

        public static final Codec<Ros2UrinterfacesMsgAnalogIOStateStamped> CODEC = new Codec<Ros2UrinterfacesMsgAnalogIOStateStamped>() {
            public byte[] encode(Ros2UrinterfacesMsgAnalogIOStateStamped value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2UrinterfacesMsgAnalogIOStateStamped(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2UrinterfacesMsgAnalogIOStateStamped decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2UrinterfacesMsgAnalogIOStateStamped value = readRos2UrinterfacesMsgAnalogIOStateStamped(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2UrinterfacesMsgAnalogIOStateStamped(Codecs.Writer writer, Ros2UrinterfacesMsgAnalogIOStateStamped value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Std_msgsMsgHeader part0 = value.header;
        writeRos2Std_msgsMsgHeader(writer, part0);
        Ros2UrinterfacesMsgAnalogIO part1 = value.io_state;
        writeRos2UrinterfacesMsgAnalogIO(writer, part1);
    }

    private static Ros2UrinterfacesMsgAnalogIOStateStamped readRos2UrinterfacesMsgAnalogIOStateStamped(Codecs.Reader reader)
    {
        Ros2UrinterfacesMsgAnalogIOStateStamped value = new Ros2UrinterfacesMsgAnalogIOStateStamped();
        value.header = readRos2Std_msgsMsgHeader(reader);
        value.io_state = readRos2UrinterfacesMsgAnalogIO(reader);
        return value;
    }

    public static final class Ros2UrinterfacesMsgAnalogStamped
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "urinterfaces/msg/AnalogStamped";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_749557c6e79b882385927c62d3c45963797ce116d7be6235bd9f186a7b4da76c";
        public static final int MIN_WIRE_BYTES = 18, MAX_WIRE_BYTES = 146;
        public Ros2Std_msgsMsgHeader header = new Ros2Std_msgsMsgHeader();
        public Ros2UrinterfacesMsgAnalog data = new Ros2UrinterfacesMsgAnalog();

        public Ros2UrinterfacesMsgAnalogStamped()
        {
        }

        public static final Codec<Ros2UrinterfacesMsgAnalogStamped> CODEC = new Codec<Ros2UrinterfacesMsgAnalogStamped>() {
            public byte[] encode(Ros2UrinterfacesMsgAnalogStamped value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2UrinterfacesMsgAnalogStamped(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2UrinterfacesMsgAnalogStamped decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2UrinterfacesMsgAnalogStamped value = readRos2UrinterfacesMsgAnalogStamped(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2UrinterfacesMsgAnalogStamped(Codecs.Writer writer, Ros2UrinterfacesMsgAnalogStamped value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Std_msgsMsgHeader part0 = value.header;
        writeRos2Std_msgsMsgHeader(writer, part0);
        Ros2UrinterfacesMsgAnalog part1 = value.data;
        writeRos2UrinterfacesMsgAnalog(writer, part1);
    }

    private static Ros2UrinterfacesMsgAnalogStamped readRos2UrinterfacesMsgAnalogStamped(Codecs.Reader reader)
    {
        Ros2UrinterfacesMsgAnalogStamped value = new Ros2UrinterfacesMsgAnalogStamped();
        value.header = readRos2Std_msgsMsgHeader(reader);
        value.data = readRos2UrinterfacesMsgAnalog(reader);
        return value;
    }

    public static final class Ros2UrinterfacesMsgBoolStamped
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "urinterfaces/msg/BoolStamped";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_1a4128638df10bd9a8d33af0ed3c2ee9b4deb771d45dfe83f2a9a75c7f77de66";
        public static final int MIN_WIRE_BYTES = 13, MAX_WIRE_BYTES = 141;
        public Ros2Std_msgsMsgHeader header = new Ros2Std_msgsMsgHeader();
        public boolean data = false;

        public Ros2UrinterfacesMsgBoolStamped()
        {
        }

        public static final Codec<Ros2UrinterfacesMsgBoolStamped> CODEC = new Codec<Ros2UrinterfacesMsgBoolStamped>() {
            public byte[] encode(Ros2UrinterfacesMsgBoolStamped value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2UrinterfacesMsgBoolStamped(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2UrinterfacesMsgBoolStamped decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2UrinterfacesMsgBoolStamped value = readRos2UrinterfacesMsgBoolStamped(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2UrinterfacesMsgBoolStamped(Codecs.Writer writer, Ros2UrinterfacesMsgBoolStamped value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Std_msgsMsgHeader part0 = value.header;
        writeRos2Std_msgsMsgHeader(writer, part0);
        boolean part1 = value.data;
        writer.integer(part1 ? 1 : 0, 1, false);
    }

    private static Ros2UrinterfacesMsgBoolStamped readRos2UrinterfacesMsgBoolStamped(Codecs.Reader reader)
    {
        Ros2UrinterfacesMsgBoolStamped value = new Ros2UrinterfacesMsgBoolStamped();
        value.header = readRos2Std_msgsMsgHeader(reader);
        value.data = readBool(reader);
        return value;
    }

    public static final class Ros2UrinterfacesMsgControlCycle
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "urinterfaces/msg/ControlCycle";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_99a4d96e5673f5ac49eab13cd8b28af55ac83e1626c39ed20ff46655df4d6278";
        public static final int MIN_WIRE_BYTES = 20, MAX_WIRE_BYTES = 148;
        public Ros2Std_msgsMsgHeader header = new Ros2Std_msgsMsgHeader();
        public long data = 0;

        public Ros2UrinterfacesMsgControlCycle()
        {
        }

        public static final Codec<Ros2UrinterfacesMsgControlCycle> CODEC = new Codec<Ros2UrinterfacesMsgControlCycle>() {
            public byte[] encode(Ros2UrinterfacesMsgControlCycle value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2UrinterfacesMsgControlCycle(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2UrinterfacesMsgControlCycle decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2UrinterfacesMsgControlCycle value = readRos2UrinterfacesMsgControlCycle(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2UrinterfacesMsgControlCycle(Codecs.Writer writer, Ros2UrinterfacesMsgControlCycle value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Std_msgsMsgHeader part0 = value.header;
        writeRos2Std_msgsMsgHeader(writer, part0);
        long part1 = value.data;
        writer.integer(part1, 8, false);
    }

    private static Ros2UrinterfacesMsgControlCycle readRos2UrinterfacesMsgControlCycle(Codecs.Reader reader)
    {
        Ros2UrinterfacesMsgControlCycle value = new Ros2UrinterfacesMsgControlCycle();
        value.header = readRos2Std_msgsMsgHeader(reader);
        value.data = reader.integer(8, false);
        return value;
    }

    public static final class Ros2UrinterfacesMsgCurrent
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "urinterfaces/msg/Current";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_759f2139335bcb720f7f4a38cd8b1413f203f2dd2b72149fa0de0fb7a0a778df";
        public static final int MIN_WIRE_BYTES = 16, MAX_WIRE_BYTES = 144;
        public Ros2Std_msgsMsgHeader header = new Ros2Std_msgsMsgHeader();
        public float data = 0;

        public Ros2UrinterfacesMsgCurrent()
        {
        }

        public static final Codec<Ros2UrinterfacesMsgCurrent> CODEC = new Codec<Ros2UrinterfacesMsgCurrent>() {
            public byte[] encode(Ros2UrinterfacesMsgCurrent value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2UrinterfacesMsgCurrent(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2UrinterfacesMsgCurrent decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2UrinterfacesMsgCurrent value = readRos2UrinterfacesMsgCurrent(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2UrinterfacesMsgCurrent(Codecs.Writer writer, Ros2UrinterfacesMsgCurrent value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Std_msgsMsgHeader part0 = value.header;
        writeRos2Std_msgsMsgHeader(writer, part0);
        float part1 = value.data;
        writer.f32(part1);
    }

    private static Ros2UrinterfacesMsgCurrent readRos2UrinterfacesMsgCurrent(Codecs.Reader reader)
    {
        Ros2UrinterfacesMsgCurrent value = new Ros2UrinterfacesMsgCurrent();
        value.header = readRos2Std_msgsMsgHeader(reader);
        value.data = reader.f32();
        return value;
    }

    public static final class Ros2UrinterfacesMsgDigital
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "urinterfaces/msg/Digital";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_c60c73df0383bb9a3e23ae3148cff9d6eb49b88c2d10add0af6a86ec9af54512";
        public static final int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;
        public int pin = 0;
        public boolean state = false;

        public Ros2UrinterfacesMsgDigital()
        {
        }

        public static final Codec<Ros2UrinterfacesMsgDigital> CODEC = new Codec<Ros2UrinterfacesMsgDigital>() {
            public byte[] encode(Ros2UrinterfacesMsgDigital value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2UrinterfacesMsgDigital(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2UrinterfacesMsgDigital decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2UrinterfacesMsgDigital value = readRos2UrinterfacesMsgDigital(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2UrinterfacesMsgDigital(Codecs.Writer writer, Ros2UrinterfacesMsgDigital value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int part0 = value.pin;
        writer.integer(part0, 1, false);
        boolean part1 = value.state;
        writer.integer(part1 ? 1 : 0, 1, false);
    }

    private static Ros2UrinterfacesMsgDigital readRos2UrinterfacesMsgDigital(Codecs.Reader reader)
    {
        Ros2UrinterfacesMsgDigital value = new Ros2UrinterfacesMsgDigital();
        value.pin = (int)reader.integer(1, false);
        value.state = readBool(reader);
        return value;
    }

    public static final class Ros2UrinterfacesMsgDigitalIO
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "urinterfaces/msg/DigitalIO";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_11235b6010feb7e3e5e6c2be8acd3fbba1c25ecbf97ae5e0c899a0e3de3c4e4a";
        public static final int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 136;
        public Ros2UrinterfacesMsgDigital[] digital_inputs = new Ros2UrinterfacesMsgDigital[0];
        public Ros2UrinterfacesMsgDigital[] digital_outputs = new Ros2UrinterfacesMsgDigital[0];

        public Ros2UrinterfacesMsgDigitalIO()
        {
        }

        public static final Codec<Ros2UrinterfacesMsgDigitalIO> CODEC = new Codec<Ros2UrinterfacesMsgDigitalIO>() {
            public byte[] encode(Ros2UrinterfacesMsgDigitalIO value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2UrinterfacesMsgDigitalIO(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2UrinterfacesMsgDigitalIO decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2UrinterfacesMsgDigitalIO value = readRos2UrinterfacesMsgDigitalIO(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2UrinterfacesMsgDigitalIO(Codecs.Writer writer, Ros2UrinterfacesMsgDigitalIO value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2UrinterfacesMsgDigital[] part0 = value.digital_inputs;
        if(part0 == null || part0.length > 32)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part0.length, 4, false);
        for(int i = 0; i < part0.length; ++i)
        {
            writeRos2UrinterfacesMsgDigital(writer, part0[i]);
        }
        Ros2UrinterfacesMsgDigital[] part1 = value.digital_outputs;
        if(part1 == null || part1.length > 32)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part1.length, 4, false);
        for(int i = 0; i < part1.length; ++i)
        {
            writeRos2UrinterfacesMsgDigital(writer, part1[i]);
        }
    }

    private static Ros2UrinterfacesMsgDigitalIO readRos2UrinterfacesMsgDigitalIO(Codecs.Reader reader)
    {
        Ros2UrinterfacesMsgDigitalIO value = new Ros2UrinterfacesMsgDigitalIO();
        value.digital_inputs = new Ros2UrinterfacesMsgDigital[readCount(reader, 32, 2)];
        for(int i = 0; i < value.digital_inputs.length; ++i)
            value.digital_inputs[i] = readRos2UrinterfacesMsgDigital(reader);
        value.digital_outputs = new Ros2UrinterfacesMsgDigital[readCount(reader, 32, 2)];
        for(int i = 0; i < value.digital_outputs.length; ++i)
            value.digital_outputs[i] = readRos2UrinterfacesMsgDigital(reader);
        return value;
    }

    public static final class Ros2UrinterfacesMsgDigitalIOStateStamped
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "urinterfaces/msg/DigitalIOStateStamped";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_542db76916f234e79216804426dc4e8d386a0ef547907391c921f51ed45e64c9";
        public static final int MIN_WIRE_BYTES = 28, MAX_WIRE_BYTES = 412;
        public Ros2Std_msgsMsgHeader header = new Ros2Std_msgsMsgHeader();
        public Ros2UrinterfacesMsgDigitalIO configurable_io = new Ros2UrinterfacesMsgDigitalIO();
        public Ros2UrinterfacesMsgDigitalIO standard_io = new Ros2UrinterfacesMsgDigitalIO();

        public Ros2UrinterfacesMsgDigitalIOStateStamped()
        {
        }

        public static final Codec<Ros2UrinterfacesMsgDigitalIOStateStamped> CODEC = new Codec<Ros2UrinterfacesMsgDigitalIOStateStamped>() {
            public byte[] encode(Ros2UrinterfacesMsgDigitalIOStateStamped value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2UrinterfacesMsgDigitalIOStateStamped(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2UrinterfacesMsgDigitalIOStateStamped decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2UrinterfacesMsgDigitalIOStateStamped value = readRos2UrinterfacesMsgDigitalIOStateStamped(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2UrinterfacesMsgDigitalIOStateStamped(Codecs.Writer writer, Ros2UrinterfacesMsgDigitalIOStateStamped value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Std_msgsMsgHeader part0 = value.header;
        writeRos2Std_msgsMsgHeader(writer, part0);
        Ros2UrinterfacesMsgDigitalIO part1 = value.configurable_io;
        writeRos2UrinterfacesMsgDigitalIO(writer, part1);
        Ros2UrinterfacesMsgDigitalIO part2 = value.standard_io;
        writeRos2UrinterfacesMsgDigitalIO(writer, part2);
    }

    private static Ros2UrinterfacesMsgDigitalIOStateStamped readRos2UrinterfacesMsgDigitalIOStateStamped(Codecs.Reader reader)
    {
        Ros2UrinterfacesMsgDigitalIOStateStamped value = new Ros2UrinterfacesMsgDigitalIOStateStamped();
        value.header = readRos2Std_msgsMsgHeader(reader);
        value.configurable_io = readRos2UrinterfacesMsgDigitalIO(reader);
        value.standard_io = readRos2UrinterfacesMsgDigitalIO(reader);
        return value;
    }

    public static final class Ros2UrinterfacesMsgDigitalStamped
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "urinterfaces/msg/DigitalStamped";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_dc86d5a04c0801089ddf6b61b5fd33d63df8b5599550c6a0e84e19bbff375865";
        public static final int MIN_WIRE_BYTES = 14, MAX_WIRE_BYTES = 142;
        public Ros2Std_msgsMsgHeader header = new Ros2Std_msgsMsgHeader();
        public Ros2UrinterfacesMsgDigital data = new Ros2UrinterfacesMsgDigital();

        public Ros2UrinterfacesMsgDigitalStamped()
        {
        }

        public static final Codec<Ros2UrinterfacesMsgDigitalStamped> CODEC = new Codec<Ros2UrinterfacesMsgDigitalStamped>() {
            public byte[] encode(Ros2UrinterfacesMsgDigitalStamped value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2UrinterfacesMsgDigitalStamped(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2UrinterfacesMsgDigitalStamped decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2UrinterfacesMsgDigitalStamped value = readRos2UrinterfacesMsgDigitalStamped(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2UrinterfacesMsgDigitalStamped(Codecs.Writer writer, Ros2UrinterfacesMsgDigitalStamped value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Std_msgsMsgHeader part0 = value.header;
        writeRos2Std_msgsMsgHeader(writer, part0);
        Ros2UrinterfacesMsgDigital part1 = value.data;
        writeRos2UrinterfacesMsgDigital(writer, part1);
    }

    private static Ros2UrinterfacesMsgDigitalStamped readRos2UrinterfacesMsgDigitalStamped(Codecs.Reader reader)
    {
        Ros2UrinterfacesMsgDigitalStamped value = new Ros2UrinterfacesMsgDigitalStamped();
        value.header = readRos2Std_msgsMsgHeader(reader);
        value.data = readRos2UrinterfacesMsgDigital(reader);
        return value;
    }

    public static final class Ros2UrinterfacesMsgDoubleMultiArrayStamped
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "urinterfaces/msg/DoubleMultiArrayStamped";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_82b52f88248ea8d6cd7b809d1fd5aa55b4bbe1618044e739998a7ec74a23a8ae";
        public static final int MIN_WIRE_BYTES = 16, MAX_WIRE_BYTES = 272;
        public Ros2Std_msgsMsgHeader header = new Ros2Std_msgsMsgHeader();
        public double[] data = new double[0];

        public Ros2UrinterfacesMsgDoubleMultiArrayStamped()
        {
        }

        public static final Codec<Ros2UrinterfacesMsgDoubleMultiArrayStamped> CODEC = new Codec<Ros2UrinterfacesMsgDoubleMultiArrayStamped>() {
            public byte[] encode(Ros2UrinterfacesMsgDoubleMultiArrayStamped value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2UrinterfacesMsgDoubleMultiArrayStamped(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2UrinterfacesMsgDoubleMultiArrayStamped decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2UrinterfacesMsgDoubleMultiArrayStamped value = readRos2UrinterfacesMsgDoubleMultiArrayStamped(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2UrinterfacesMsgDoubleMultiArrayStamped(Codecs.Writer writer, Ros2UrinterfacesMsgDoubleMultiArrayStamped value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Std_msgsMsgHeader part0 = value.header;
        writeRos2Std_msgsMsgHeader(writer, part0);
        double[] part1 = value.data;
        if(part1 == null || part1.length > 16)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part1.length, 4, false);
        for(int i = 0; i < part1.length; ++i)
        {
            writer.f64(part1[i]);
        }
    }

    private static Ros2UrinterfacesMsgDoubleMultiArrayStamped readRos2UrinterfacesMsgDoubleMultiArrayStamped(Codecs.Reader reader)
    {
        Ros2UrinterfacesMsgDoubleMultiArrayStamped value = new Ros2UrinterfacesMsgDoubleMultiArrayStamped();
        value.header = readRos2Std_msgsMsgHeader(reader);
        value.data = new double[readCount(reader, 16, 8)];
        for(int i = 0; i < value.data.length; ++i)
            value.data[i] = reader.f64();
        return value;
    }

    public static final class Ros2UrinterfacesMsgFloat32Stamped
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "urinterfaces/msg/Float32Stamped";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_5989940d19890b6d3b78172e9920708745b78e35c1c4fb238412c37a813d30d3";
        public static final int MIN_WIRE_BYTES = 16, MAX_WIRE_BYTES = 144;
        public Ros2Std_msgsMsgHeader header = new Ros2Std_msgsMsgHeader();
        public float data = 0;

        public Ros2UrinterfacesMsgFloat32Stamped()
        {
        }

        public static final Codec<Ros2UrinterfacesMsgFloat32Stamped> CODEC = new Codec<Ros2UrinterfacesMsgFloat32Stamped>() {
            public byte[] encode(Ros2UrinterfacesMsgFloat32Stamped value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2UrinterfacesMsgFloat32Stamped(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2UrinterfacesMsgFloat32Stamped decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2UrinterfacesMsgFloat32Stamped value = readRos2UrinterfacesMsgFloat32Stamped(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2UrinterfacesMsgFloat32Stamped(Codecs.Writer writer, Ros2UrinterfacesMsgFloat32Stamped value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Std_msgsMsgHeader part0 = value.header;
        writeRos2Std_msgsMsgHeader(writer, part0);
        float part1 = value.data;
        writer.f32(part1);
    }

    private static Ros2UrinterfacesMsgFloat32Stamped readRos2UrinterfacesMsgFloat32Stamped(Codecs.Reader reader)
    {
        Ros2UrinterfacesMsgFloat32Stamped value = new Ros2UrinterfacesMsgFloat32Stamped();
        value.header = readRos2Std_msgsMsgHeader(reader);
        value.data = reader.f32();
        return value;
    }

    public static final class Ros2UrinterfacesMsgFloat64Stamped
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "urinterfaces/msg/Float64Stamped";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_4f8950feff6f20dbdbf9cac1f01168824be3698a4bd90355a470b580930edb21";
        public static final int MIN_WIRE_BYTES = 20, MAX_WIRE_BYTES = 148;
        public Ros2Std_msgsMsgHeader header = new Ros2Std_msgsMsgHeader();
        public double data = 0;

        public Ros2UrinterfacesMsgFloat64Stamped()
        {
        }

        public static final Codec<Ros2UrinterfacesMsgFloat64Stamped> CODEC = new Codec<Ros2UrinterfacesMsgFloat64Stamped>() {
            public byte[] encode(Ros2UrinterfacesMsgFloat64Stamped value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2UrinterfacesMsgFloat64Stamped(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2UrinterfacesMsgFloat64Stamped decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2UrinterfacesMsgFloat64Stamped value = readRos2UrinterfacesMsgFloat64Stamped(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2UrinterfacesMsgFloat64Stamped(Codecs.Writer writer, Ros2UrinterfacesMsgFloat64Stamped value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Std_msgsMsgHeader part0 = value.header;
        writeRos2Std_msgsMsgHeader(writer, part0);
        double part1 = value.data;
        writer.f64(part1);
    }

    private static Ros2UrinterfacesMsgFloat64Stamped readRos2UrinterfacesMsgFloat64Stamped(Codecs.Reader reader)
    {
        Ros2UrinterfacesMsgFloat64Stamped value = new Ros2UrinterfacesMsgFloat64Stamped();
        value.header = readRos2Std_msgsMsgHeader(reader);
        value.data = reader.f64();
        return value;
    }

    public static final class Ros2UrinterfacesMsgJointMode
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "urinterfaces/msg/JointMode";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_6d766192096ced3c8568a98fb286c309e00cfb97e34b2611fff70e5bb1eaa95c";
        public static final int MIN_WIRE_BYTES = 19, MAX_WIRE_BYTES = 147;
        public Ros2Std_msgsMsgHeader header = new Ros2Std_msgsMsgHeader();
        public int[] joint_modes = new int[6];
        public int tool_mode = 0;

        public Ros2UrinterfacesMsgJointMode()
        {
        }

        public static final Codec<Ros2UrinterfacesMsgJointMode> CODEC = new Codec<Ros2UrinterfacesMsgJointMode>() {
            public byte[] encode(Ros2UrinterfacesMsgJointMode value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2UrinterfacesMsgJointMode(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2UrinterfacesMsgJointMode decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2UrinterfacesMsgJointMode value = readRos2UrinterfacesMsgJointMode(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2UrinterfacesMsgJointMode(Codecs.Writer writer, Ros2UrinterfacesMsgJointMode value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Std_msgsMsgHeader part0 = value.header;
        writeRos2Std_msgsMsgHeader(writer, part0);
        int[] part1 = value.joint_modes;
        if(part1 == null || part1.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part1.length; ++i)
        {
            writer.integer(part1[i], 1, false);
        }
        int part2 = value.tool_mode;
        writer.integer(part2, 1, false);
    }

    private static Ros2UrinterfacesMsgJointMode readRos2UrinterfacesMsgJointMode(Codecs.Reader reader)
    {
        Ros2UrinterfacesMsgJointMode value = new Ros2UrinterfacesMsgJointMode();
        value.header = readRos2Std_msgsMsgHeader(reader);
        value.joint_modes = new int[6];
        for(int i = 0; i < value.joint_modes.length; ++i)
            value.joint_modes[i] = (int)reader.integer(1, false);
        value.tool_mode = (int)reader.integer(1, false);
        return value;
    }

    public static final class Ros2UrinterfacesMsgJointTemperature
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "urinterfaces/msg/JointTemperature";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_af77f1ec4c6b4d71e6387315d2388e7493c229dbf216848e61d5638cb308d017";
        public static final int MIN_WIRE_BYTES = 36, MAX_WIRE_BYTES = 164;
        public Ros2Std_msgsMsgHeader header = new Ros2Std_msgsMsgHeader();
        public float[] data = new float[6];

        public Ros2UrinterfacesMsgJointTemperature()
        {
        }

        public static final Codec<Ros2UrinterfacesMsgJointTemperature> CODEC = new Codec<Ros2UrinterfacesMsgJointTemperature>() {
            public byte[] encode(Ros2UrinterfacesMsgJointTemperature value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2UrinterfacesMsgJointTemperature(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2UrinterfacesMsgJointTemperature decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2UrinterfacesMsgJointTemperature value = readRos2UrinterfacesMsgJointTemperature(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2UrinterfacesMsgJointTemperature(Codecs.Writer writer, Ros2UrinterfacesMsgJointTemperature value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Std_msgsMsgHeader part0 = value.header;
        writeRos2Std_msgsMsgHeader(writer, part0);
        float[] part1 = value.data;
        if(part1 == null || part1.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part1.length; ++i)
        {
            writer.f32(part1[i]);
        }
    }

    private static Ros2UrinterfacesMsgJointTemperature readRos2UrinterfacesMsgJointTemperature(Codecs.Reader reader)
    {
        Ros2UrinterfacesMsgJointTemperature value = new Ros2UrinterfacesMsgJointTemperature();
        value.header = readRos2Std_msgsMsgHeader(reader);
        value.data = new float[6];
        for(int i = 0; i < value.data.length; ++i)
            value.data[i] = reader.f32();
        return value;
    }

    public static final class Ros2UrinterfacesMsgJointVoltage
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "urinterfaces/msg/JointVoltage";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_9fa2179402b5dc29b898ac1321c1f6f86676300939776a6e32de4529f3776b61";
        public static final int MIN_WIRE_BYTES = 60, MAX_WIRE_BYTES = 188;
        public Ros2Std_msgsMsgHeader header = new Ros2Std_msgsMsgHeader();
        public double[] data = new double[6];

        public Ros2UrinterfacesMsgJointVoltage()
        {
        }

        public static final Codec<Ros2UrinterfacesMsgJointVoltage> CODEC = new Codec<Ros2UrinterfacesMsgJointVoltage>() {
            public byte[] encode(Ros2UrinterfacesMsgJointVoltage value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2UrinterfacesMsgJointVoltage(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2UrinterfacesMsgJointVoltage decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2UrinterfacesMsgJointVoltage value = readRos2UrinterfacesMsgJointVoltage(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2UrinterfacesMsgJointVoltage(Codecs.Writer writer, Ros2UrinterfacesMsgJointVoltage value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Std_msgsMsgHeader part0 = value.header;
        writeRos2Std_msgsMsgHeader(writer, part0);
        double[] part1 = value.data;
        if(part1 == null || part1.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part1.length; ++i)
        {
            writer.f64(part1[i]);
        }
    }

    private static Ros2UrinterfacesMsgJointVoltage readRos2UrinterfacesMsgJointVoltage(Codecs.Reader reader)
    {
        Ros2UrinterfacesMsgJointVoltage value = new Ros2UrinterfacesMsgJointVoltage();
        value.header = readRos2Std_msgsMsgHeader(reader);
        value.data = new double[6];
        for(int i = 0; i < value.data.length; ++i)
            value.data[i] = reader.f64();
        return value;
    }

    public static final class Ros2UrinterfacesMsgJsonStringType
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "urinterfaces/msg/JsonStringType";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_05da0dcf2728cd73f875421c457804a146ceffe76e9d4619be71c2c92efdd728";
        public static final int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 1028;
        public Ros2Std_msgsMsgString json_string = new Ros2Std_msgsMsgString();

        public Ros2UrinterfacesMsgJsonStringType()
        {
        }

        public static final Codec<Ros2UrinterfacesMsgJsonStringType> CODEC = new Codec<Ros2UrinterfacesMsgJsonStringType>() {
            public byte[] encode(Ros2UrinterfacesMsgJsonStringType value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2UrinterfacesMsgJsonStringType(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2UrinterfacesMsgJsonStringType decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2UrinterfacesMsgJsonStringType value = readRos2UrinterfacesMsgJsonStringType(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2UrinterfacesMsgJsonStringType(Codecs.Writer writer, Ros2UrinterfacesMsgJsonStringType value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Std_msgsMsgString part0 = value.json_string;
        writeRos2Std_msgsMsgString(writer, part0);
    }

    private static Ros2UrinterfacesMsgJsonStringType readRos2UrinterfacesMsgJsonStringType(Codecs.Reader reader)
    {
        Ros2UrinterfacesMsgJsonStringType value = new Ros2UrinterfacesMsgJsonStringType();
        value.json_string = readRos2Std_msgsMsgString(reader);
        return value;
    }

    public static final class Ros2UrinterfacesMsgRuntimeState
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "urinterfaces/msg/RuntimeState";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_711ca0e324cbeb36fcedea4881b8658a4b453402c410c8d3efaa57205aaf74b6";
        public static final int MIN_WIRE_BYTES = 13, MAX_WIRE_BYTES = 141;
        public Ros2Std_msgsMsgHeader header = new Ros2Std_msgsMsgHeader();
        public byte data = 0;

        public Ros2UrinterfacesMsgRuntimeState()
        {
        }

        public static final Codec<Ros2UrinterfacesMsgRuntimeState> CODEC = new Codec<Ros2UrinterfacesMsgRuntimeState>() {
            public byte[] encode(Ros2UrinterfacesMsgRuntimeState value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2UrinterfacesMsgRuntimeState(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2UrinterfacesMsgRuntimeState decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2UrinterfacesMsgRuntimeState value = readRos2UrinterfacesMsgRuntimeState(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2UrinterfacesMsgRuntimeState(Codecs.Writer writer, Ros2UrinterfacesMsgRuntimeState value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Std_msgsMsgHeader part0 = value.header;
        writeRos2Std_msgsMsgHeader(writer, part0);
        byte part1 = value.data;
        writer.integer(part1, 1, true);
    }

    private static Ros2UrinterfacesMsgRuntimeState readRos2UrinterfacesMsgRuntimeState(Codecs.Reader reader)
    {
        Ros2UrinterfacesMsgRuntimeState value = new Ros2UrinterfacesMsgRuntimeState();
        value.header = readRos2Std_msgsMsgHeader(reader);
        value.data = (byte)reader.integer(1, true);
        return value;
    }

    public static final class Ros2UrinterfacesMsgSafetyStatus
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "urinterfaces/msg/SafetyStatus";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_8f266e1ee8ab2ee9791ff4b52f9dae8ef982844c8d24a0bdfb4bb93cc55b78d4";
        public static final int MIN_WIRE_BYTES = 13, MAX_WIRE_BYTES = 141;
        public Ros2Std_msgsMsgHeader header = new Ros2Std_msgsMsgHeader();
        public byte data = 0;

        public Ros2UrinterfacesMsgSafetyStatus()
        {
        }

        public static final Codec<Ros2UrinterfacesMsgSafetyStatus> CODEC = new Codec<Ros2UrinterfacesMsgSafetyStatus>() {
            public byte[] encode(Ros2UrinterfacesMsgSafetyStatus value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2UrinterfacesMsgSafetyStatus(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2UrinterfacesMsgSafetyStatus decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2UrinterfacesMsgSafetyStatus value = readRos2UrinterfacesMsgSafetyStatus(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2UrinterfacesMsgSafetyStatus(Codecs.Writer writer, Ros2UrinterfacesMsgSafetyStatus value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Std_msgsMsgHeader part0 = value.header;
        writeRos2Std_msgsMsgHeader(writer, part0);
        byte part1 = value.data;
        writer.integer(part1, 1, true);
    }

    private static Ros2UrinterfacesMsgSafetyStatus readRos2UrinterfacesMsgSafetyStatus(Codecs.Reader reader)
    {
        Ros2UrinterfacesMsgSafetyStatus value = new Ros2UrinterfacesMsgSafetyStatus();
        value.header = readRos2Std_msgsMsgHeader(reader);
        value.data = (byte)reader.integer(1, true);
        return value;
    }

    public static final class Ros2UrinterfacesMsgSharedVariablesEditResponse
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "urinterfaces/msg/SharedVariablesEditResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_870ce8f649642b6edcce8ba5c7cb27818ec138d7afb2cde926638d21ea748212";
        public static final int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 1029;
        public boolean success = false;
        public Ros2Std_msgsMsgString result_message = new Ros2Std_msgsMsgString();

        public Ros2UrinterfacesMsgSharedVariablesEditResponse()
        {
        }

        public static final Codec<Ros2UrinterfacesMsgSharedVariablesEditResponse> CODEC = new Codec<Ros2UrinterfacesMsgSharedVariablesEditResponse>() {
            public byte[] encode(Ros2UrinterfacesMsgSharedVariablesEditResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2UrinterfacesMsgSharedVariablesEditResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2UrinterfacesMsgSharedVariablesEditResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2UrinterfacesMsgSharedVariablesEditResponse value = readRos2UrinterfacesMsgSharedVariablesEditResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2UrinterfacesMsgSharedVariablesEditResponse(Codecs.Writer writer, Ros2UrinterfacesMsgSharedVariablesEditResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
        Ros2Std_msgsMsgString part1 = value.result_message;
        writeRos2Std_msgsMsgString(writer, part1);
    }

    private static Ros2UrinterfacesMsgSharedVariablesEditResponse readRos2UrinterfacesMsgSharedVariablesEditResponse(Codecs.Reader reader)
    {
        Ros2UrinterfacesMsgSharedVariablesEditResponse value = new Ros2UrinterfacesMsgSharedVariablesEditResponse();
        value.success = readBool(reader);
        value.result_message = readRos2Std_msgsMsgString(reader);
        return value;
    }

    public static final class Ros2UrinterfacesMsgSpeedSliderFraction
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "urinterfaces/msg/SpeedSliderFraction";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_55158782c2bc4d4741e8f2850efddf09d27666f9c3aeeded762d8d8e4198fccd";
        public static final int MIN_WIRE_BYTES = 20, MAX_WIRE_BYTES = 148;
        public Ros2Std_msgsMsgHeader header = new Ros2Std_msgsMsgHeader();
        public double data = 0;

        public Ros2UrinterfacesMsgSpeedSliderFraction()
        {
        }

        public static final Codec<Ros2UrinterfacesMsgSpeedSliderFraction> CODEC = new Codec<Ros2UrinterfacesMsgSpeedSliderFraction>() {
            public byte[] encode(Ros2UrinterfacesMsgSpeedSliderFraction value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2UrinterfacesMsgSpeedSliderFraction(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2UrinterfacesMsgSpeedSliderFraction decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2UrinterfacesMsgSpeedSliderFraction value = readRos2UrinterfacesMsgSpeedSliderFraction(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2UrinterfacesMsgSpeedSliderFraction(Codecs.Writer writer, Ros2UrinterfacesMsgSpeedSliderFraction value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Std_msgsMsgHeader part0 = value.header;
        writeRos2Std_msgsMsgHeader(writer, part0);
        double part1 = value.data;
        writer.f64(part1);
    }

    private static Ros2UrinterfacesMsgSpeedSliderFraction readRos2UrinterfacesMsgSpeedSliderFraction(Codecs.Reader reader)
    {
        Ros2UrinterfacesMsgSpeedSliderFraction value = new Ros2UrinterfacesMsgSpeedSliderFraction();
        value.header = readRos2Std_msgsMsgHeader(reader);
        value.data = reader.f64();
        return value;
    }

    public static final class Ros2UrinterfacesMsgTCPState
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "urinterfaces/msg/TCPState";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_49d8f678cc32669dd81528bb4c5d97f28019745159ef5e7267c8a076cd315b92";
        public static final int MIN_WIRE_BYTES = 116, MAX_WIRE_BYTES = 244;
        public Ros2Std_msgsMsgHeader header = new Ros2Std_msgsMsgHeader();
        public Ros2Geometry_msgsMsgPose pose = new Ros2Geometry_msgsMsgPose();
        public Ros2Geometry_msgsMsgTwist speed = new Ros2Geometry_msgsMsgTwist();

        public Ros2UrinterfacesMsgTCPState()
        {
        }

        public static final Codec<Ros2UrinterfacesMsgTCPState> CODEC = new Codec<Ros2UrinterfacesMsgTCPState>() {
            public byte[] encode(Ros2UrinterfacesMsgTCPState value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2UrinterfacesMsgTCPState(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2UrinterfacesMsgTCPState decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2UrinterfacesMsgTCPState value = readRos2UrinterfacesMsgTCPState(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2UrinterfacesMsgTCPState(Codecs.Writer writer, Ros2UrinterfacesMsgTCPState value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Std_msgsMsgHeader part0 = value.header;
        writeRos2Std_msgsMsgHeader(writer, part0);
        Ros2Geometry_msgsMsgPose part1 = value.pose;
        writeRos2Geometry_msgsMsgPose(writer, part1);
        Ros2Geometry_msgsMsgTwist part2 = value.speed;
        writeRos2Geometry_msgsMsgTwist(writer, part2);
    }

    private static Ros2UrinterfacesMsgTCPState readRos2UrinterfacesMsgTCPState(Codecs.Reader reader)
    {
        Ros2UrinterfacesMsgTCPState value = new Ros2UrinterfacesMsgTCPState();
        value.header = readRos2Std_msgsMsgHeader(reader);
        value.pose = readRos2Geometry_msgsMsgPose(reader);
        value.speed = readRos2Geometry_msgsMsgTwist(reader);
        return value;
    }

    public static final class Ros2UrinterfacesMsgToolOutputMode
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "urinterfaces/msg/ToolOutputMode";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_21df545459050dc86de1fb111c9a4b2c8bb50c3729137b8d5c5134dd33b84660";
        public static final int MIN_WIRE_BYTES = 15, MAX_WIRE_BYTES = 143;
        public Ros2Std_msgsMsgHeader header = new Ros2Std_msgsMsgHeader();
        public int output_mode = 0;
        public int[] output_pin_mode = new int[2];

        public Ros2UrinterfacesMsgToolOutputMode()
        {
        }

        public static final Codec<Ros2UrinterfacesMsgToolOutputMode> CODEC = new Codec<Ros2UrinterfacesMsgToolOutputMode>() {
            public byte[] encode(Ros2UrinterfacesMsgToolOutputMode value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2UrinterfacesMsgToolOutputMode(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2UrinterfacesMsgToolOutputMode decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2UrinterfacesMsgToolOutputMode value = readRos2UrinterfacesMsgToolOutputMode(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2UrinterfacesMsgToolOutputMode(Codecs.Writer writer, Ros2UrinterfacesMsgToolOutputMode value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Std_msgsMsgHeader part0 = value.header;
        writeRos2Std_msgsMsgHeader(writer, part0);
        int part1 = value.output_mode;
        writer.integer(part1, 1, false);
        int[] part2 = value.output_pin_mode;
        if(part2 == null || part2.length != 2)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part2.length; ++i)
        {
            writer.integer(part2[i], 1, false);
        }
    }

    private static Ros2UrinterfacesMsgToolOutputMode readRos2UrinterfacesMsgToolOutputMode(Codecs.Reader reader)
    {
        Ros2UrinterfacesMsgToolOutputMode value = new Ros2UrinterfacesMsgToolOutputMode();
        value.header = readRos2Std_msgsMsgHeader(reader);
        value.output_mode = (int)reader.integer(1, false);
        value.output_pin_mode = new int[2];
        for(int i = 0; i < value.output_pin_mode.length; ++i)
            value.output_pin_mode[i] = (int)reader.integer(1, false);
        return value;
    }

    public static final class Ros2UrinterfacesMsgVariableUpdate
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "urinterfaces/msg/VariableUpdate";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_7028ea5c674be886f4fac1d2ac0452167489f2c23d7ea759cdbec90feccbdb20";
        public static final int MIN_WIRE_BYTES = 16, MAX_WIRE_BYTES = 1168;
        public Ros2Std_msgsMsgHeader header = new Ros2Std_msgsMsgHeader();
        public Ros2UrinterfacesMsgJsonStringType data = new Ros2UrinterfacesMsgJsonStringType();

        public Ros2UrinterfacesMsgVariableUpdate()
        {
        }

        public static final Codec<Ros2UrinterfacesMsgVariableUpdate> CODEC = new Codec<Ros2UrinterfacesMsgVariableUpdate>() {
            public byte[] encode(Ros2UrinterfacesMsgVariableUpdate value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2UrinterfacesMsgVariableUpdate(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2UrinterfacesMsgVariableUpdate decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2UrinterfacesMsgVariableUpdate value = readRos2UrinterfacesMsgVariableUpdate(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2UrinterfacesMsgVariableUpdate(Codecs.Writer writer, Ros2UrinterfacesMsgVariableUpdate value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Std_msgsMsgHeader part0 = value.header;
        writeRos2Std_msgsMsgHeader(writer, part0);
        Ros2UrinterfacesMsgJsonStringType part1 = value.data;
        writeRos2UrinterfacesMsgJsonStringType(writer, part1);
    }

    private static Ros2UrinterfacesMsgVariableUpdate readRos2UrinterfacesMsgVariableUpdate(Codecs.Reader reader)
    {
        Ros2UrinterfacesMsgVariableUpdate value = new Ros2UrinterfacesMsgVariableUpdate();
        value.header = readRos2Std_msgsMsgHeader(reader);
        value.data = readRos2UrinterfacesMsgJsonStringType(reader);
        return value;
    }

    public static final class Ros2UrinterfacesMsgVoltageCurrentStamped
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "urinterfaces/msg/VoltageCurrentStamped";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_bcc3f6871a7bf0ff691d0c9c1b6596a633597de795b486c2b82ac922ede76805";
        public static final int MIN_WIRE_BYTES = 28, MAX_WIRE_BYTES = 156;
        public Ros2Std_msgsMsgHeader header = new Ros2Std_msgsMsgHeader();
        public double voltage = 0;
        public double current = 0;

        public Ros2UrinterfacesMsgVoltageCurrentStamped()
        {
        }

        public static final Codec<Ros2UrinterfacesMsgVoltageCurrentStamped> CODEC = new Codec<Ros2UrinterfacesMsgVoltageCurrentStamped>() {
            public byte[] encode(Ros2UrinterfacesMsgVoltageCurrentStamped value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2UrinterfacesMsgVoltageCurrentStamped(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2UrinterfacesMsgVoltageCurrentStamped decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2UrinterfacesMsgVoltageCurrentStamped value = readRos2UrinterfacesMsgVoltageCurrentStamped(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2UrinterfacesMsgVoltageCurrentStamped(Codecs.Writer writer, Ros2UrinterfacesMsgVoltageCurrentStamped value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Std_msgsMsgHeader part0 = value.header;
        writeRos2Std_msgsMsgHeader(writer, part0);
        double part1 = value.voltage;
        writer.f64(part1);
        double part2 = value.current;
        writer.f64(part2);
    }

    private static Ros2UrinterfacesMsgVoltageCurrentStamped readRos2UrinterfacesMsgVoltageCurrentStamped(Codecs.Reader reader)
    {
        Ros2UrinterfacesMsgVoltageCurrentStamped value = new Ros2UrinterfacesMsgVoltageCurrentStamped();
        value.header = readRos2Std_msgsMsgHeader(reader);
        value.voltage = reader.f64();
        value.current = reader.f64();
        return value;
    }

    public static final class Ros2UrinterfacesMsgWorldModelNames
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "urinterfaces/msg/WorldModelNames";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_499f722fc97565bd0124888d7c20f4e9f8947893c49b1608dcf201fe3538d7a9";
        public static final int MIN_WIRE_BYTES = 16, MAX_WIRE_BYTES = 16592;
        public Ros2Std_msgsMsgHeader header = new Ros2Std_msgsMsgHeader();
        public Ros2Std_msgsMsgString[] data = new Ros2Std_msgsMsgString[0];

        public Ros2UrinterfacesMsgWorldModelNames()
        {
        }

        public static final Codec<Ros2UrinterfacesMsgWorldModelNames> CODEC = new Codec<Ros2UrinterfacesMsgWorldModelNames>() {
            public byte[] encode(Ros2UrinterfacesMsgWorldModelNames value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2UrinterfacesMsgWorldModelNames(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2UrinterfacesMsgWorldModelNames decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2UrinterfacesMsgWorldModelNames value = readRos2UrinterfacesMsgWorldModelNames(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2UrinterfacesMsgWorldModelNames(Codecs.Writer writer, Ros2UrinterfacesMsgWorldModelNames value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Std_msgsMsgHeader part0 = value.header;
        writeRos2Std_msgsMsgHeader(writer, part0);
        Ros2Std_msgsMsgString[] part1 = value.data;
        if(part1 == null || part1.length > 16)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part1.length, 4, false);
        for(int i = 0; i < part1.length; ++i)
        {
            writeRos2Std_msgsMsgString(writer, part1[i]);
        }
    }

    private static Ros2UrinterfacesMsgWorldModelNames readRos2UrinterfacesMsgWorldModelNames(Codecs.Reader reader)
    {
        Ros2UrinterfacesMsgWorldModelNames value = new Ros2UrinterfacesMsgWorldModelNames();
        value.header = readRos2Std_msgsMsgHeader(reader);
        value.data = new Ros2Std_msgsMsgString[readCount(reader, 16, 4)];
        for(int i = 0; i < value.data.length; ++i)
            value.data[i] = readRos2Std_msgsMsgString(reader);
        return value;
    }

    public static final class Ros2UrinterfacesSrvSetAnalogOutput_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "urinterfaces/srv/SetAnalogOutput_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_8be07a94dd334a03871180a9c73bab11377664e60500ac68d312398d51acd32d";
        public static final int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 100;
        public Ros2UrinterfacesMsgAnalog[] data = new Ros2UrinterfacesMsgAnalog[0];

        public Ros2UrinterfacesSrvSetAnalogOutput_Request()
        {
        }

        public static final Codec<Ros2UrinterfacesSrvSetAnalogOutput_Request> CODEC = new Codec<Ros2UrinterfacesSrvSetAnalogOutput_Request>() {
            public byte[] encode(Ros2UrinterfacesSrvSetAnalogOutput_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2UrinterfacesSrvSetAnalogOutput_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2UrinterfacesSrvSetAnalogOutput_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2UrinterfacesSrvSetAnalogOutput_Request value = readRos2UrinterfacesSrvSetAnalogOutput_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2UrinterfacesSrvSetAnalogOutput_Request(Codecs.Writer writer, Ros2UrinterfacesSrvSetAnalogOutput_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2UrinterfacesMsgAnalog[] part0 = value.data;
        if(part0 == null || part0.length > 16)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part0.length, 4, false);
        for(int i = 0; i < part0.length; ++i)
        {
            writeRos2UrinterfacesMsgAnalog(writer, part0[i]);
        }
    }

    private static Ros2UrinterfacesSrvSetAnalogOutput_Request readRos2UrinterfacesSrvSetAnalogOutput_Request(Codecs.Reader reader)
    {
        Ros2UrinterfacesSrvSetAnalogOutput_Request value = new Ros2UrinterfacesSrvSetAnalogOutput_Request();
        value.data = new Ros2UrinterfacesMsgAnalog[readCount(reader, 16, 6)];
        for(int i = 0; i < value.data.length; ++i)
            value.data[i] = readRos2UrinterfacesMsgAnalog(reader);
        return value;
    }

    public static final class Ros2UrinterfacesSrvSetAnalogOutput_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "urinterfaces/srv/SetAnalogOutput_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_14016138286129e4f155ac2f82f5573e8a4af7d7c5ede55ce57f3ad76cb82e4e";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros2UrinterfacesSrvSetAnalogOutput_Response()
        {
        }

        public static final Codec<Ros2UrinterfacesSrvSetAnalogOutput_Response> CODEC = new Codec<Ros2UrinterfacesSrvSetAnalogOutput_Response>() {
            public byte[] encode(Ros2UrinterfacesSrvSetAnalogOutput_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2UrinterfacesSrvSetAnalogOutput_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2UrinterfacesSrvSetAnalogOutput_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2UrinterfacesSrvSetAnalogOutput_Response value = readRos2UrinterfacesSrvSetAnalogOutput_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2UrinterfacesSrvSetAnalogOutput_Response(Codecs.Writer writer, Ros2UrinterfacesSrvSetAnalogOutput_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros2UrinterfacesSrvSetAnalogOutput_Response readRos2UrinterfacesSrvSetAnalogOutput_Response(Codecs.Reader reader)
    {
        Ros2UrinterfacesSrvSetAnalogOutput_Response value = new Ros2UrinterfacesSrvSetAnalogOutput_Response();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2UrinterfacesSrvSetDigitalOutput_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "urinterfaces/srv/SetDigitalOutput_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_ec6c587810af7f3d04b10058e69c8095775e8b6feede5fc0f60ca1dfda0b5e47";
        public static final int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 36;
        public Ros2UrinterfacesMsgDigital[] data = new Ros2UrinterfacesMsgDigital[0];

        public Ros2UrinterfacesSrvSetDigitalOutput_Request()
        {
        }

        public static final Codec<Ros2UrinterfacesSrvSetDigitalOutput_Request> CODEC = new Codec<Ros2UrinterfacesSrvSetDigitalOutput_Request>() {
            public byte[] encode(Ros2UrinterfacesSrvSetDigitalOutput_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2UrinterfacesSrvSetDigitalOutput_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2UrinterfacesSrvSetDigitalOutput_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2UrinterfacesSrvSetDigitalOutput_Request value = readRos2UrinterfacesSrvSetDigitalOutput_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2UrinterfacesSrvSetDigitalOutput_Request(Codecs.Writer writer, Ros2UrinterfacesSrvSetDigitalOutput_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2UrinterfacesMsgDigital[] part0 = value.data;
        if(part0 == null || part0.length > 16)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part0.length, 4, false);
        for(int i = 0; i < part0.length; ++i)
        {
            writeRos2UrinterfacesMsgDigital(writer, part0[i]);
        }
    }

    private static Ros2UrinterfacesSrvSetDigitalOutput_Request readRos2UrinterfacesSrvSetDigitalOutput_Request(Codecs.Reader reader)
    {
        Ros2UrinterfacesSrvSetDigitalOutput_Request value = new Ros2UrinterfacesSrvSetDigitalOutput_Request();
        value.data = new Ros2UrinterfacesMsgDigital[readCount(reader, 16, 2)];
        for(int i = 0; i < value.data.length; ++i)
            value.data[i] = readRos2UrinterfacesMsgDigital(reader);
        return value;
    }

    public static final class Ros2UrinterfacesSrvSetDigitalOutput_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "urinterfaces/srv/SetDigitalOutput_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_0c5f0b8a7f1d14c6223838c3a28cb2236848b81ecfda29d2b704557579e9162d";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros2UrinterfacesSrvSetDigitalOutput_Response()
        {
        }

        public static final Codec<Ros2UrinterfacesSrvSetDigitalOutput_Response> CODEC = new Codec<Ros2UrinterfacesSrvSetDigitalOutput_Response>() {
            public byte[] encode(Ros2UrinterfacesSrvSetDigitalOutput_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2UrinterfacesSrvSetDigitalOutput_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2UrinterfacesSrvSetDigitalOutput_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2UrinterfacesSrvSetDigitalOutput_Response value = readRos2UrinterfacesSrvSetDigitalOutput_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2UrinterfacesSrvSetDigitalOutput_Response(Codecs.Writer writer, Ros2UrinterfacesSrvSetDigitalOutput_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros2UrinterfacesSrvSetDigitalOutput_Response readRos2UrinterfacesSrvSetDigitalOutput_Response(Codecs.Reader reader)
    {
        Ros2UrinterfacesSrvSetDigitalOutput_Response value = new Ros2UrinterfacesSrvSetDigitalOutput_Response();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2UrinterfacesSrvSetSpeedFraction_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "urinterfaces/srv/SetSpeedFraction_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_21fca7e952e32f24c905094c09776968c8cd80b7712a03de7c2a693ea79a7d63";
        public static final int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 4;
        public float value = 0;

        public Ros2UrinterfacesSrvSetSpeedFraction_Request()
        {
        }

        public static final Codec<Ros2UrinterfacesSrvSetSpeedFraction_Request> CODEC = new Codec<Ros2UrinterfacesSrvSetSpeedFraction_Request>() {
            public byte[] encode(Ros2UrinterfacesSrvSetSpeedFraction_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2UrinterfacesSrvSetSpeedFraction_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2UrinterfacesSrvSetSpeedFraction_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2UrinterfacesSrvSetSpeedFraction_Request value = readRos2UrinterfacesSrvSetSpeedFraction_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2UrinterfacesSrvSetSpeedFraction_Request(Codecs.Writer writer, Ros2UrinterfacesSrvSetSpeedFraction_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        float part0 = value.value;
        writer.f32(part0);
    }

    private static Ros2UrinterfacesSrvSetSpeedFraction_Request readRos2UrinterfacesSrvSetSpeedFraction_Request(Codecs.Reader reader)
    {
        Ros2UrinterfacesSrvSetSpeedFraction_Request value = new Ros2UrinterfacesSrvSetSpeedFraction_Request();
        value.value = reader.f32();
        return value;
    }

    public static final class Ros2UrinterfacesSrvSetSpeedFraction_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "urinterfaces/srv/SetSpeedFraction_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_386b067db70c17a88297d005650f6a05c0fb72eb5ee142a25c3e51c70b80c6e6";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean success = false;

        public Ros2UrinterfacesSrvSetSpeedFraction_Response()
        {
        }

        public static final Codec<Ros2UrinterfacesSrvSetSpeedFraction_Response> CODEC = new Codec<Ros2UrinterfacesSrvSetSpeedFraction_Response>() {
            public byte[] encode(Ros2UrinterfacesSrvSetSpeedFraction_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2UrinterfacesSrvSetSpeedFraction_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2UrinterfacesSrvSetSpeedFraction_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2UrinterfacesSrvSetSpeedFraction_Response value = readRos2UrinterfacesSrvSetSpeedFraction_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2UrinterfacesSrvSetSpeedFraction_Response(Codecs.Writer writer, Ros2UrinterfacesSrvSetSpeedFraction_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros2UrinterfacesSrvSetSpeedFraction_Response readRos2UrinterfacesSrvSetSpeedFraction_Response(Codecs.Reader reader)
    {
        Ros2UrinterfacesSrvSetSpeedFraction_Response value = new Ros2UrinterfacesSrvSetSpeedFraction_Response();
        value.success = readBool(reader);
        return value;
    }

    public static final class Ros2UrinterfacesSrvSharedVariablesEditor_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "urinterfaces/srv/SharedVariablesEditor_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_c32d00237370b2eeb596c76bd9cda1ccfcab7618c71dec77d273f712462f5fa3";
        public static final int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 1028;
        public Ros2UrinterfacesMsgJsonStringType request = new Ros2UrinterfacesMsgJsonStringType();

        public Ros2UrinterfacesSrvSharedVariablesEditor_Request()
        {
        }

        public static final Codec<Ros2UrinterfacesSrvSharedVariablesEditor_Request> CODEC = new Codec<Ros2UrinterfacesSrvSharedVariablesEditor_Request>() {
            public byte[] encode(Ros2UrinterfacesSrvSharedVariablesEditor_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2UrinterfacesSrvSharedVariablesEditor_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2UrinterfacesSrvSharedVariablesEditor_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2UrinterfacesSrvSharedVariablesEditor_Request value = readRos2UrinterfacesSrvSharedVariablesEditor_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2UrinterfacesSrvSharedVariablesEditor_Request(Codecs.Writer writer, Ros2UrinterfacesSrvSharedVariablesEditor_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2UrinterfacesMsgJsonStringType part0 = value.request;
        writeRos2UrinterfacesMsgJsonStringType(writer, part0);
    }

    private static Ros2UrinterfacesSrvSharedVariablesEditor_Request readRos2UrinterfacesSrvSharedVariablesEditor_Request(Codecs.Reader reader)
    {
        Ros2UrinterfacesSrvSharedVariablesEditor_Request value = new Ros2UrinterfacesSrvSharedVariablesEditor_Request();
        value.request = readRos2UrinterfacesMsgJsonStringType(reader);
        return value;
    }

    public static final class Ros2UrinterfacesSrvSharedVariablesEditor_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "urinterfaces/srv/SharedVariablesEditor_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_4134f7ed9715b3f6e3fd7ecca44fcae67cdd5dc2fa432b07ab75485901d1d5ea";
        public static final int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 1029;
        public Ros2UrinterfacesMsgSharedVariablesEditResponse response = new Ros2UrinterfacesMsgSharedVariablesEditResponse();

        public Ros2UrinterfacesSrvSharedVariablesEditor_Response()
        {
        }

        public static final Codec<Ros2UrinterfacesSrvSharedVariablesEditor_Response> CODEC = new Codec<Ros2UrinterfacesSrvSharedVariablesEditor_Response>() {
            public byte[] encode(Ros2UrinterfacesSrvSharedVariablesEditor_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2UrinterfacesSrvSharedVariablesEditor_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2UrinterfacesSrvSharedVariablesEditor_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2UrinterfacesSrvSharedVariablesEditor_Response value = readRos2UrinterfacesSrvSharedVariablesEditor_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2UrinterfacesSrvSharedVariablesEditor_Response(Codecs.Writer writer, Ros2UrinterfacesSrvSharedVariablesEditor_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2UrinterfacesMsgSharedVariablesEditResponse part0 = value.response;
        writeRos2UrinterfacesMsgSharedVariablesEditResponse(writer, part0);
    }

    private static Ros2UrinterfacesSrvSharedVariablesEditor_Response readRos2UrinterfacesSrvSharedVariablesEditor_Response(Codecs.Reader reader)
    {
        Ros2UrinterfacesSrvSharedVariablesEditor_Response value = new Ros2UrinterfacesSrvSharedVariablesEditor_Response();
        value.response = readRos2UrinterfacesMsgSharedVariablesEditResponse(reader);
        return value;
    }

    public static final class Ros2UrinterfacesSrvVariablesViewer_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "urinterfaces/srv/VariablesViewer_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_6ecb0db6328d813bfb987ae987d3b7f2c6913dba2cf2a62f644a8eb2f760152a";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public Ros2UrinterfacesSrvVariablesViewer_Request()
        {
        }

        public static final Codec<Ros2UrinterfacesSrvVariablesViewer_Request> CODEC = new Codec<Ros2UrinterfacesSrvVariablesViewer_Request>() {
            public byte[] encode(Ros2UrinterfacesSrvVariablesViewer_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2UrinterfacesSrvVariablesViewer_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2UrinterfacesSrvVariablesViewer_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2UrinterfacesSrvVariablesViewer_Request value = readRos2UrinterfacesSrvVariablesViewer_Request(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2UrinterfacesSrvVariablesViewer_Request(Codecs.Writer writer, Ros2UrinterfacesSrvVariablesViewer_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
    }

    private static Ros2UrinterfacesSrvVariablesViewer_Request readRos2UrinterfacesSrvVariablesViewer_Request(Codecs.Reader reader)
    {
        Ros2UrinterfacesSrvVariablesViewer_Request value = new Ros2UrinterfacesSrvVariablesViewer_Request();
        return value;
    }

    public static final class Ros2UrinterfacesSrvVariablesViewer_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "urinterfaces/srv/VariablesViewer_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_e8cb16ca847189ac38c0d972afbdd2208d8641c29a0ee0cce8284e9e0dd249a2";
        public static final int MIN_WIRE_BYTES = 16, MAX_WIRE_BYTES = 1168;
        public Ros2UrinterfacesMsgVariableUpdate response = new Ros2UrinterfacesMsgVariableUpdate();

        public Ros2UrinterfacesSrvVariablesViewer_Response()
        {
        }

        public static final Codec<Ros2UrinterfacesSrvVariablesViewer_Response> CODEC = new Codec<Ros2UrinterfacesSrvVariablesViewer_Response>() {
            public byte[] encode(Ros2UrinterfacesSrvVariablesViewer_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos2UrinterfacesSrvVariablesViewer_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros2UrinterfacesSrvVariablesViewer_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2UrinterfacesSrvVariablesViewer_Response value = readRos2UrinterfacesSrvVariablesViewer_Response(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos2UrinterfacesSrvVariablesViewer_Response(Codecs.Writer writer, Ros2UrinterfacesSrvVariablesViewer_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2UrinterfacesMsgVariableUpdate part0 = value.response;
        writeRos2UrinterfacesMsgVariableUpdate(writer, part0);
    }

    private static Ros2UrinterfacesSrvVariablesViewer_Response readRos2UrinterfacesSrvVariablesViewer_Response(Codecs.Reader reader)
    {
        Ros2UrinterfacesSrvVariablesViewer_Response value = new Ros2UrinterfacesSrvVariablesViewer_Response();
        value.response = readRos2UrinterfacesMsgVariableUpdate(reader);
        return value;
    }
}
