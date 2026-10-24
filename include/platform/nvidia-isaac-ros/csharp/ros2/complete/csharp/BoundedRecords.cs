// @file BoundedRecords.cs
// @brief Represent complete typed values and their bounded wire layout for nvidia-isaac-ros.
// @details Field widths, defaults and sequence limits follow the selected catalog. Keep backing storage alive
// while borrowed values are in use; preserve all decode failures before invoking a ROS operation.

// Generated complete canonical records; no native ABI, CDR or ROS grant.
#nullable enable
using System;
using _Codecs = global::Uwvm.RosWasm.Codecs;
namespace Uwvm.RosWasm.Generated;

public static class BoundedRecords
{
    private static byte[] OwnedWire(byte[] value, int minimum, int maximum)
    {
        if(value == null || value.Length < minimum || value.Length > maximum)
            throw new ArgumentException("complete bounded wire required");
        return (byte[])value.Clone();
    }

    private static void WriteText(_Codecs.Writer writer, string value, int maximum)
    {
        if(value == null || value.Length > maximum || value.IndexOf('\0') >= 0)
            throw new ArgumentException("bounded custom string without NUL required");
        byte[] bytes = _Codecs.Utf8(value);
        if(bytes.Length > maximum)
            throw new ArgumentException("custom UTF8 byte bound");
        writer.Unsigned((ulong)bytes.Length, 4).Raw(bytes);
    }

    private static string ReadText(_Codecs.Reader reader, int maximum)
    {
        ulong count = reader.Unsigned(4);
        if(count > (ulong)maximum || count > (ulong)reader.Remaining)
            throw new FormatException("custom UTF8 extent");
        string value = _Codecs.Text(reader.Take((int)count));
        if(value.IndexOf('\0') >= 0)
            throw new FormatException("NUL in custom string");
        return value;
    }

    private static int ReadCount(_Codecs.Reader reader, int maximum, int elementMinimum)
    {
        ulong count = reader.Unsigned(4);
        if(count > (ulong)maximum || (elementMinimum != 0 && count > (ulong)reader.Remaining / (ulong)elementMinimum))
            throw new FormatException("sequence count/remaining extent");
        return (int)count;
    }

    private static bool ReadBool(_Codecs.Reader reader)
    {
        ulong value = reader.Unsigned(1);
        if(value > 1)
            throw new FormatException("canonical bool must be0/1");
        return value == 1;
    }

    private static void WriteFloat32(_Codecs.Writer writer, float value)
    {
        if(!float.IsFinite(value))
            throw new ArgumentException("finite float32 required");
        // uint preserves exactly the actual32 bits before widening to ulong.
        writer.Unsigned(unchecked((uint)BitConverter.SingleToInt32Bits(value)), 4);
    }

    private static float ReadFloat32(_Codecs.Reader reader)
    {
        float value = BitConverter.Int32BitsToSingle(unchecked((int)reader.Unsigned(4)));
        if(!float.IsFinite(value))
            throw new FormatException("nonfinite canonical float32");
        return value;
    }

    public sealed class _Ros2Builtin_interfacesMsgTime
    {
        public int @sec = 0;
        public uint @nanosec = 0;

        public _Ros2Builtin_interfacesMsgTime()
        {
        }
    }

    public sealed class Ros2Builtin_interfacesMsgTimeCodec : global::Uwvm.RosWasm.ICodec<_Ros2Builtin_interfacesMsgTime>
    {
        public static readonly Ros2Builtin_interfacesMsgTimeCodec Instance = new Ros2Builtin_interfacesMsgTimeCodec();

        private Ros2Builtin_interfacesMsgTimeCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "builtin_interfaces/msg/Time";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7";
        public const int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 8;

        public byte[] Encode(_Ros2Builtin_interfacesMsgTime value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Builtin_interfacesMsgTime(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Builtin_interfacesMsgTime Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Builtin_interfacesMsgTime value = ReadRos2Builtin_interfacesMsgTime(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Builtin_interfacesMsgTime(_Codecs.Writer writer, _Ros2Builtin_interfacesMsgTime value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        int part0 = value.@sec;
        writer.Unsigned(unchecked((uint)part0), 4);
        uint part1 = value.@nanosec;
        writer.Unsigned(part1, 4);
        if((long)part1 < 0 || (long)part1 >= 1000000000L)
            throw new ArgumentException("normalized subsecond field required");
    }

    private static _Ros2Builtin_interfacesMsgTime ReadRos2Builtin_interfacesMsgTime(_Codecs.Reader reader)
    {
        var value = new _Ros2Builtin_interfacesMsgTime();
        value.@sec = unchecked((int)reader.Unsigned(4));
        value.@nanosec = unchecked((uint)reader.Unsigned(4));
        if((long)value.@nanosec < 0 || (long)value.@nanosec >= 1000000000L)
            throw new ArgumentException("normalized subsecond field required");
        return value;
    }

    public sealed class _Ros2Std_msgsMsgHeader
    {
        public _Ros2Builtin_interfacesMsgTime @stamp = new _Ros2Builtin_interfacesMsgTime();
        public string @frame_id = "";

        public _Ros2Std_msgsMsgHeader()
        {
        }
    }

    public sealed class Ros2Std_msgsMsgHeaderCodec : global::Uwvm.RosWasm.ICodec<_Ros2Std_msgsMsgHeader>
    {
        public static readonly Ros2Std_msgsMsgHeaderCodec Instance = new Ros2Std_msgsMsgHeaderCodec();

        private Ros2Std_msgsMsgHeaderCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "std_msgs/msg/Header";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_afba9e74be3c5e3321750c1c4c30ba2925269f75b9da43a6d5c1e93d293d7396";
        public const int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 76;

        public byte[] Encode(_Ros2Std_msgsMsgHeader value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Std_msgsMsgHeader(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Std_msgsMsgHeader Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Std_msgsMsgHeader value = ReadRos2Std_msgsMsgHeader(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Std_msgsMsgHeader(_Codecs.Writer writer, _Ros2Std_msgsMsgHeader value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Builtin_interfacesMsgTime part0 = value.@stamp;
        WriteRos2Builtin_interfacesMsgTime(writer, part0);
        string part1 = value.@frame_id;
        WriteText(writer, part1, 64);
    }

    private static _Ros2Std_msgsMsgHeader ReadRos2Std_msgsMsgHeader(_Codecs.Reader reader)
    {
        var value = new _Ros2Std_msgsMsgHeader();
        value.@stamp = ReadRos2Builtin_interfacesMsgTime(reader);
        value.@frame_id = ReadText(reader, 64);
        return value;
    }

    public sealed class _Ros2Geometry_msgsMsgPoint
    {
        public double @x = 0;
        public double @y = 0;
        public double @z = 0;

        public _Ros2Geometry_msgsMsgPoint()
        {
        }
    }

    public sealed class Ros2Geometry_msgsMsgPointCodec : global::Uwvm.RosWasm.ICodec<_Ros2Geometry_msgsMsgPoint>
    {
        public static readonly Ros2Geometry_msgsMsgPointCodec Instance = new Ros2Geometry_msgsMsgPointCodec();

        private Ros2Geometry_msgsMsgPointCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "geometry_msgs/msg/Point";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_80f43d054abe333673c940c6d0fd88e8e26cea4a1cff53ff789cccaa38240616";
        public const int MIN_WIRE_BYTES = 24, MAX_WIRE_BYTES = 24;

        public byte[] Encode(_Ros2Geometry_msgsMsgPoint value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Geometry_msgsMsgPoint(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Geometry_msgsMsgPoint Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Geometry_msgsMsgPoint value = ReadRos2Geometry_msgsMsgPoint(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Geometry_msgsMsgPoint(_Codecs.Writer writer, _Ros2Geometry_msgsMsgPoint value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        double part0 = value.@x;
        writer.Float64(part0);
        double part1 = value.@y;
        writer.Float64(part1);
        double part2 = value.@z;
        writer.Float64(part2);
    }

    private static _Ros2Geometry_msgsMsgPoint ReadRos2Geometry_msgsMsgPoint(_Codecs.Reader reader)
    {
        var value = new _Ros2Geometry_msgsMsgPoint();
        value.@x = reader.Float64();
        value.@y = reader.Float64();
        value.@z = reader.Float64();
        return value;
    }

    public sealed class _Ros2Geometry_msgsMsgQuaternion
    {
        public double @x = BitConverter.Int64BitsToDouble(unchecked((long)0x0000000000000000UL));
        public double @y = BitConverter.Int64BitsToDouble(unchecked((long)0x0000000000000000UL));
        public double @z = BitConverter.Int64BitsToDouble(unchecked((long)0x0000000000000000UL));
        public double @w = BitConverter.Int64BitsToDouble(unchecked((long)0x3ff0000000000000UL));

        public _Ros2Geometry_msgsMsgQuaternion()
        {
        }
    }

    public sealed class Ros2Geometry_msgsMsgQuaternionCodec : global::Uwvm.RosWasm.ICodec<_Ros2Geometry_msgsMsgQuaternion>
    {
        public static readonly Ros2Geometry_msgsMsgQuaternionCodec Instance = new Ros2Geometry_msgsMsgQuaternionCodec();

        private Ros2Geometry_msgsMsgQuaternionCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "geometry_msgs/msg/Quaternion";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_34a32c3470cbfe2ff12340781a5bf22f6c370a8f5c06669f25a34321ade81672";
        public const int MIN_WIRE_BYTES = 32, MAX_WIRE_BYTES = 32;

        public byte[] Encode(_Ros2Geometry_msgsMsgQuaternion value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Geometry_msgsMsgQuaternion(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Geometry_msgsMsgQuaternion Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Geometry_msgsMsgQuaternion value = ReadRos2Geometry_msgsMsgQuaternion(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Geometry_msgsMsgQuaternion(_Codecs.Writer writer, _Ros2Geometry_msgsMsgQuaternion value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        double part0 = value.@x;
        writer.Float64(part0);
        double part1 = value.@y;
        writer.Float64(part1);
        double part2 = value.@z;
        writer.Float64(part2);
        double part3 = value.@w;
        writer.Float64(part3);
    }

    private static _Ros2Geometry_msgsMsgQuaternion ReadRos2Geometry_msgsMsgQuaternion(_Codecs.Reader reader)
    {
        var value = new _Ros2Geometry_msgsMsgQuaternion();
        value.@x = reader.Float64();
        value.@y = reader.Float64();
        value.@z = reader.Float64();
        value.@w = reader.Float64();
        return value;
    }

    public sealed class _Ros2Geometry_msgsMsgPose
    {
        public _Ros2Geometry_msgsMsgPoint @position = new _Ros2Geometry_msgsMsgPoint();
        public _Ros2Geometry_msgsMsgQuaternion @orientation = new _Ros2Geometry_msgsMsgQuaternion();

        public _Ros2Geometry_msgsMsgPose()
        {
        }
    }

    public sealed class Ros2Geometry_msgsMsgPoseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Geometry_msgsMsgPose>
    {
        public static readonly Ros2Geometry_msgsMsgPoseCodec Instance = new Ros2Geometry_msgsMsgPoseCodec();

        private Ros2Geometry_msgsMsgPoseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "geometry_msgs/msg/Pose";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_9468a10b8b2728fe71a370b4348ffe5e81b884ff957533f8700aa16e70b12777";
        public const int MIN_WIRE_BYTES = 56, MAX_WIRE_BYTES = 56;

        public byte[] Encode(_Ros2Geometry_msgsMsgPose value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Geometry_msgsMsgPose(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Geometry_msgsMsgPose Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Geometry_msgsMsgPose value = ReadRos2Geometry_msgsMsgPose(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Geometry_msgsMsgPose(_Codecs.Writer writer, _Ros2Geometry_msgsMsgPose value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Geometry_msgsMsgPoint part0 = value.@position;
        WriteRos2Geometry_msgsMsgPoint(writer, part0);
        _Ros2Geometry_msgsMsgQuaternion part1 = value.@orientation;
        WriteRos2Geometry_msgsMsgQuaternion(writer, part1);
    }

    private static _Ros2Geometry_msgsMsgPose ReadRos2Geometry_msgsMsgPose(_Codecs.Reader reader)
    {
        var value = new _Ros2Geometry_msgsMsgPose();
        value.@position = ReadRos2Geometry_msgsMsgPoint(reader);
        value.@orientation = ReadRos2Geometry_msgsMsgQuaternion(reader);
        return value;
    }

    public sealed class _Ros2Geometry_msgsMsgPoseWithCovariance
    {
        public _Ros2Geometry_msgsMsgPose @pose = new _Ros2Geometry_msgsMsgPose();
        public double[] @covariance = new double[36];

        public _Ros2Geometry_msgsMsgPoseWithCovariance()
        {
        }
    }

    public sealed class Ros2Geometry_msgsMsgPoseWithCovarianceCodec : global::Uwvm.RosWasm.ICodec<_Ros2Geometry_msgsMsgPoseWithCovariance>
    {
        public static readonly Ros2Geometry_msgsMsgPoseWithCovarianceCodec Instance = new Ros2Geometry_msgsMsgPoseWithCovarianceCodec();

        private Ros2Geometry_msgsMsgPoseWithCovarianceCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "geometry_msgs/msg/PoseWithCovariance";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_8eb3e25c45769eb29691011c05315ed50f2b97eff488f9e8ee2dc70bddab4dc2";
        public const int MIN_WIRE_BYTES = 344, MAX_WIRE_BYTES = 344;

        public byte[] Encode(_Ros2Geometry_msgsMsgPoseWithCovariance value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Geometry_msgsMsgPoseWithCovariance(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Geometry_msgsMsgPoseWithCovariance Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Geometry_msgsMsgPoseWithCovariance value = ReadRos2Geometry_msgsMsgPoseWithCovariance(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Geometry_msgsMsgPoseWithCovariance(_Codecs.Writer writer, _Ros2Geometry_msgsMsgPoseWithCovariance value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Geometry_msgsMsgPose part0 = value.@pose;
        WriteRos2Geometry_msgsMsgPose(writer, part0);
        double[] part1 = value.@covariance;
        if(part1 == null || part1.Length != 36)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part1.Length; ++index)
        {
            double element = part1[index];
            writer.Float64(element);
        }
    }

    private static _Ros2Geometry_msgsMsgPoseWithCovariance ReadRos2Geometry_msgsMsgPoseWithCovariance(_Codecs.Reader reader)
    {
        var value = new _Ros2Geometry_msgsMsgPoseWithCovariance();
        value.@pose = ReadRos2Geometry_msgsMsgPose(reader);
        value.@covariance = new double[36];
        for(int index = 0; index < value.@covariance.Length; ++index)
            value.@covariance[index] = reader.Float64();
        return value;
    }

    public sealed class _Ros2Geometry_msgsMsgPoseWithCovarianceStamped
    {
        public _Ros2Std_msgsMsgHeader @header = new _Ros2Std_msgsMsgHeader();
        public _Ros2Geometry_msgsMsgPoseWithCovariance @pose = new _Ros2Geometry_msgsMsgPoseWithCovariance();

        public _Ros2Geometry_msgsMsgPoseWithCovarianceStamped()
        {
        }
    }

    public sealed class Ros2Geometry_msgsMsgPoseWithCovarianceStampedCodec : global::Uwvm.RosWasm.ICodec<_Ros2Geometry_msgsMsgPoseWithCovarianceStamped>
    {
        public static readonly Ros2Geometry_msgsMsgPoseWithCovarianceStampedCodec Instance = new Ros2Geometry_msgsMsgPoseWithCovarianceStampedCodec();

        private Ros2Geometry_msgsMsgPoseWithCovarianceStampedCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "geometry_msgs/msg/PoseWithCovarianceStamped";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_ea380172cde0ee5fef319aff50d92a80c314510e3d12efec45e9ae1f74974af3";
        public const int MIN_WIRE_BYTES = 356, MAX_WIRE_BYTES = 420;

        public byte[] Encode(_Ros2Geometry_msgsMsgPoseWithCovarianceStamped value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Geometry_msgsMsgPoseWithCovarianceStamped(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Geometry_msgsMsgPoseWithCovarianceStamped Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Geometry_msgsMsgPoseWithCovarianceStamped value = ReadRos2Geometry_msgsMsgPoseWithCovarianceStamped(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Geometry_msgsMsgPoseWithCovarianceStamped(_Codecs.Writer writer, _Ros2Geometry_msgsMsgPoseWithCovarianceStamped value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Std_msgsMsgHeader part0 = value.@header;
        WriteRos2Std_msgsMsgHeader(writer, part0);
        _Ros2Geometry_msgsMsgPoseWithCovariance part1 = value.@pose;
        WriteRos2Geometry_msgsMsgPoseWithCovariance(writer, part1);
    }

    private static _Ros2Geometry_msgsMsgPoseWithCovarianceStamped ReadRos2Geometry_msgsMsgPoseWithCovarianceStamped(_Codecs.Reader reader)
    {
        var value = new _Ros2Geometry_msgsMsgPoseWithCovarianceStamped();
        value.@header = ReadRos2Std_msgsMsgHeader(reader);
        value.@pose = ReadRos2Geometry_msgsMsgPoseWithCovariance(reader);
        return value;
    }

    public sealed class _Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetection
    {
        public string @family = "";
        public int @id = 0;
        public _Ros2Geometry_msgsMsgPoint @center = new _Ros2Geometry_msgsMsgPoint();
        public _Ros2Geometry_msgsMsgPoint[] @corners = new _Ros2Geometry_msgsMsgPoint[4];
        public _Ros2Geometry_msgsMsgPoseWithCovarianceStamped @pose = new _Ros2Geometry_msgsMsgPoseWithCovarianceStamped();

        public _Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetection()
        {
            for(int index = 0; index < 4; ++index)
                this.@corners[index] = new _Ros2Geometry_msgsMsgPoint();
        }
    }

    public sealed class Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionCodec :
        global::Uwvm.RosWasm.ICodec<_Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetection>
    {
        public static readonly Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionCodec Instance =
            new Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionCodec();

        private Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "isaac_ros_apriltag_interfaces/msg/AprilTagDetection";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_5d840f0d9239a948ce5d17bbee6e248db8151ff31070667e506e9c1647ac6fe7";
        public const int MIN_WIRE_BYTES = 484, MAX_WIRE_BYTES = 612;

        public byte[] Encode(_Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetection value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Isaac_ros_apriltag_interfacesMsgAprilTagDetection(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetection Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetection value = ReadRos2Isaac_ros_apriltag_interfacesMsgAprilTagDetection(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Isaac_ros_apriltag_interfacesMsgAprilTagDetection(_Codecs.Writer writer,
                                                                                   _Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetection value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        string part0 = value.@family;
        WriteText(writer, part0, 64);
        int part1 = value.@id;
        writer.Unsigned(unchecked((uint)part1), 4);
        _Ros2Geometry_msgsMsgPoint part2 = value.@center;
        WriteRos2Geometry_msgsMsgPoint(writer, part2);
        _Ros2Geometry_msgsMsgPoint[] part3 = value.@corners;
        if(part3 == null || part3.Length != 4)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part3.Length; ++index)
        {
            _Ros2Geometry_msgsMsgPoint element = part3[index];
            WriteRos2Geometry_msgsMsgPoint(writer, element);
        }
        _Ros2Geometry_msgsMsgPoseWithCovarianceStamped part4 = value.@pose;
        WriteRos2Geometry_msgsMsgPoseWithCovarianceStamped(writer, part4);
    }

    private static _Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetection ReadRos2Isaac_ros_apriltag_interfacesMsgAprilTagDetection(_Codecs.Reader reader)
    {
        var value = new _Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetection();
        value.@family = ReadText(reader, 64);
        value.@id = unchecked((int)reader.Unsigned(4));
        value.@center = ReadRos2Geometry_msgsMsgPoint(reader);
        value.@corners = new _Ros2Geometry_msgsMsgPoint[4];
        for(int index = 0; index < value.@corners.Length; ++index)
            value.@corners[index] = ReadRos2Geometry_msgsMsgPoint(reader);
        value.@pose = ReadRos2Geometry_msgsMsgPoseWithCovarianceStamped(reader);
        return value;
    }

    public sealed class _Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray
    {
        public _Ros2Std_msgsMsgHeader @header = new _Ros2Std_msgsMsgHeader();
        public _Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetection[] @detections = new _Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetection[0];

        public _Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray()
        {
        }
    }

    public sealed class Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArrayCodec :
        global::Uwvm.RosWasm.ICodec<_Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray>
    {
        public static readonly Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArrayCodec Instance =
            new Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArrayCodec();

        private Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArrayCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "isaac_ros_apriltag_interfaces/msg/AprilTagDetectionArray";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_60359e405aedd2a627e60bc35e849989fe5ed1d426afb2a884036aef93bfe0a5";
        public const int MIN_WIRE_BYTES = 16, MAX_WIRE_BYTES = 9872;

        public byte[] Encode(_Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray value = ReadRos2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray(_Codecs.Writer writer,
                                                                                        _Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Std_msgsMsgHeader part0 = value.@header;
        WriteRos2Std_msgsMsgHeader(writer, part0);
        _Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetection[] part1 = value.@detections;
        if(part1 == null || part1.Length > 16)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part1.Length, 4);
        for(int index = 0; index < part1.Length; ++index)
        {
            _Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetection element = part1[index];
            WriteRos2Isaac_ros_apriltag_interfacesMsgAprilTagDetection(writer, element);
        }
    }

    private static _Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray
        ReadRos2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray(_Codecs.Reader reader)
    {
        var value = new _Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray();
        value.@header = ReadRos2Std_msgsMsgHeader(reader);
        value.@detections = new _Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetection[ReadCount(reader, 16, 484)];
        for(int index = 0; index < value.@detections.Length; ++index)
            value.@detections[index] = ReadRos2Isaac_ros_apriltag_interfacesMsgAprilTagDetection(reader);
        return value;
    }
}
