/**
 * @file BoundedRecords.cs
 * @brief Complete universal_robots values and adapters for the selected original interface catalog.
 * @details Retain original field order, scalar widths, array capacities, string bounds, constants and declared
 * defaults. Pure value access and canonical codecs create no native ROS allocation or resource grant. Transport
 * roles require the separately admitted SDK owner.
 * @see share/platform/universal_robots/domains/universal-robots-polyscopex-complete.ir.json
 * @see document/platform/universal_robots/en_US/README.md
 */

// Generated complete canonical records; no native ABI, CDR or ROS grant.
#nullable enable
using System;
using _Codecs = global::Uwvm.RosWasm.Codecs;
namespace Uwvm.UniversalRobotsUniversalRobotsPolyscopexComplete.Models;

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

    public sealed class _Ros2Geometry_msgsMsgVector3
    {
        public double @x = 0;
        public double @y = 0;
        public double @z = 0;

        public _Ros2Geometry_msgsMsgVector3()
        {
        }
    }

    public sealed class Ros2Geometry_msgsMsgVector3Codec : global::Uwvm.RosWasm.ICodec<_Ros2Geometry_msgsMsgVector3>
    {
        public static readonly Ros2Geometry_msgsMsgVector3Codec Instance = new Ros2Geometry_msgsMsgVector3Codec();

        private Ros2Geometry_msgsMsgVector3Codec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "geometry_msgs/msg/Vector3";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_5adebf211fe375fba92c0628f9b8ebf05bff9ab22ddc4bbf00629167af295d5e";
        public const int MIN_WIRE_BYTES = 24, MAX_WIRE_BYTES = 24;

        public byte[] Encode(_Ros2Geometry_msgsMsgVector3 value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Geometry_msgsMsgVector3(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Geometry_msgsMsgVector3 Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Geometry_msgsMsgVector3 value = ReadRos2Geometry_msgsMsgVector3(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Geometry_msgsMsgVector3(_Codecs.Writer writer, _Ros2Geometry_msgsMsgVector3 value)
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

    private static _Ros2Geometry_msgsMsgVector3 ReadRos2Geometry_msgsMsgVector3(_Codecs.Reader reader)
    {
        var value = new _Ros2Geometry_msgsMsgVector3();
        value.@x = reader.Float64();
        value.@y = reader.Float64();
        value.@z = reader.Float64();
        return value;
    }

    public sealed class _Ros2Geometry_msgsMsgTwist
    {
        public _Ros2Geometry_msgsMsgVector3 @linear = new _Ros2Geometry_msgsMsgVector3();
        public _Ros2Geometry_msgsMsgVector3 @angular = new _Ros2Geometry_msgsMsgVector3();

        public _Ros2Geometry_msgsMsgTwist()
        {
        }
    }

    public sealed class Ros2Geometry_msgsMsgTwistCodec : global::Uwvm.RosWasm.ICodec<_Ros2Geometry_msgsMsgTwist>
    {
        public static readonly Ros2Geometry_msgsMsgTwistCodec Instance = new Ros2Geometry_msgsMsgTwistCodec();

        private Ros2Geometry_msgsMsgTwistCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "geometry_msgs/msg/Twist";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_1a6c18d19bb6853a2cff3b775974ba31f8e3674c1bbe566444ccabf0ef9d117e";
        public const int MIN_WIRE_BYTES = 48, MAX_WIRE_BYTES = 48;

        public byte[] Encode(_Ros2Geometry_msgsMsgTwist value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Geometry_msgsMsgTwist(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Geometry_msgsMsgTwist Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Geometry_msgsMsgTwist value = ReadRos2Geometry_msgsMsgTwist(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Geometry_msgsMsgTwist(_Codecs.Writer writer, _Ros2Geometry_msgsMsgTwist value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Geometry_msgsMsgVector3 part0 = value.@linear;
        WriteRos2Geometry_msgsMsgVector3(writer, part0);
        _Ros2Geometry_msgsMsgVector3 part1 = value.@angular;
        WriteRos2Geometry_msgsMsgVector3(writer, part1);
    }

    private static _Ros2Geometry_msgsMsgTwist ReadRos2Geometry_msgsMsgTwist(_Codecs.Reader reader)
    {
        var value = new _Ros2Geometry_msgsMsgTwist();
        value.@linear = ReadRos2Geometry_msgsMsgVector3(reader);
        value.@angular = ReadRos2Geometry_msgsMsgVector3(reader);
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
        public const string CODEC_IDENTITY = "UWVMROS1_ce081e9caac05e464c4cff0da5e94cad44014652c0ddf244ee6c35ac3b0d1e96";
        public const int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 140;

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
        WriteText(writer, part1, 128);
    }

    private static _Ros2Std_msgsMsgHeader ReadRos2Std_msgsMsgHeader(_Codecs.Reader reader)
    {
        var value = new _Ros2Std_msgsMsgHeader();
        value.@stamp = ReadRos2Builtin_interfacesMsgTime(reader);
        value.@frame_id = ReadText(reader, 128);
        return value;
    }

    public sealed class _Ros2Std_msgsMsgString
    {
        public string @data = "";

        public _Ros2Std_msgsMsgString()
        {
        }
    }

    public sealed class Ros2Std_msgsMsgStringCodec : global::Uwvm.RosWasm.ICodec<_Ros2Std_msgsMsgString>
    {
        public static readonly Ros2Std_msgsMsgStringCodec Instance = new Ros2Std_msgsMsgStringCodec();

        private Ros2Std_msgsMsgStringCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "std_msgs/msg/String";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_c48b5497cbf487f56eb073a982b93acd501c6bb72f0e9ef9dce2175ce7ac15c5";
        public const int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 1028;

        public byte[] Encode(_Ros2Std_msgsMsgString value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Std_msgsMsgString(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Std_msgsMsgString Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Std_msgsMsgString value = ReadRos2Std_msgsMsgString(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Std_msgsMsgString(_Codecs.Writer writer, _Ros2Std_msgsMsgString value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        string part0 = value.@data;
        WriteText(writer, part0, 1024);
    }

    private static _Ros2Std_msgsMsgString ReadRos2Std_msgsMsgString(_Codecs.Reader reader)
    {
        var value = new _Ros2Std_msgsMsgString();
        value.@data = ReadText(reader, 1024);
        return value;
    }

    public sealed class _Ros2UrinterfacesMsgRobotMode
    {
        public _Ros2Std_msgsMsgHeader @header = new _Ros2Std_msgsMsgHeader();
        public sbyte @data = 0;

        public _Ros2UrinterfacesMsgRobotMode()
        {
        }
    }

    public sealed class Ros2UrinterfacesMsgRobotModeCodec : global::Uwvm.RosWasm.ICodec<_Ros2UrinterfacesMsgRobotMode>
    {
        public static readonly Ros2UrinterfacesMsgRobotModeCodec Instance = new Ros2UrinterfacesMsgRobotModeCodec();

        private Ros2UrinterfacesMsgRobotModeCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "urinterfaces/msg/RobotMode";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_a16ec0ed8caa1a2b48cd4116d88877911921848469cd139f4783e4f2c549e7ea";
        public const int MIN_WIRE_BYTES = 13, MAX_WIRE_BYTES = 141;

        public byte[] Encode(_Ros2UrinterfacesMsgRobotMode value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2UrinterfacesMsgRobotMode(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2UrinterfacesMsgRobotMode Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2UrinterfacesMsgRobotMode value = ReadRos2UrinterfacesMsgRobotMode(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2UrinterfacesMsgRobotMode(_Codecs.Writer writer, _Ros2UrinterfacesMsgRobotMode value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Std_msgsMsgHeader part0 = value.@header;
        WriteRos2Std_msgsMsgHeader(writer, part0);
        sbyte part1 = value.@data;
        writer.Unsigned(unchecked((byte)part1), 1);
    }

    private static _Ros2UrinterfacesMsgRobotMode ReadRos2UrinterfacesMsgRobotMode(_Codecs.Reader reader)
    {
        var value = new _Ros2UrinterfacesMsgRobotMode();
        value.@header = ReadRos2Std_msgsMsgHeader(reader);
        value.@data = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    public sealed class _Ros2UrinterfacesActionSetMode_Goal
    {
        public _Ros2UrinterfacesMsgRobotMode @target_robot_mode = new _Ros2UrinterfacesMsgRobotMode();
        public bool @stop_program = false;
        public bool @play_program = false;

        public _Ros2UrinterfacesActionSetMode_Goal()
        {
        }
    }

    public sealed class Ros2UrinterfacesActionSetMode_GoalCodec : global::Uwvm.RosWasm.ICodec<_Ros2UrinterfacesActionSetMode_Goal>
    {
        public static readonly Ros2UrinterfacesActionSetMode_GoalCodec Instance = new Ros2UrinterfacesActionSetMode_GoalCodec();

        private Ros2UrinterfacesActionSetMode_GoalCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "urinterfaces/action/SetMode_Goal";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_d1d998e217d6f3d3eefd8ffccecff8463580346150a59a1c7a2dac8d609e0e09";
        public const int MIN_WIRE_BYTES = 15, MAX_WIRE_BYTES = 143;

        public byte[] Encode(_Ros2UrinterfacesActionSetMode_Goal value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2UrinterfacesActionSetMode_Goal(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2UrinterfacesActionSetMode_Goal Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2UrinterfacesActionSetMode_Goal value = ReadRos2UrinterfacesActionSetMode_Goal(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2UrinterfacesActionSetMode_Goal(_Codecs.Writer writer, _Ros2UrinterfacesActionSetMode_Goal value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2UrinterfacesMsgRobotMode part0 = value.@target_robot_mode;
        WriteRos2UrinterfacesMsgRobotMode(writer, part0);
        bool part1 = value.@stop_program;
        writer.Unsigned(part1 ? 1UL : 0UL, 1);
        bool part2 = value.@play_program;
        writer.Unsigned(part2 ? 1UL : 0UL, 1);
    }

    private static _Ros2UrinterfacesActionSetMode_Goal ReadRos2UrinterfacesActionSetMode_Goal(_Codecs.Reader reader)
    {
        var value = new _Ros2UrinterfacesActionSetMode_Goal();
        value.@target_robot_mode = ReadRos2UrinterfacesMsgRobotMode(reader);
        value.@stop_program = ReadBool(reader);
        value.@play_program = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2UrinterfacesActionSetMode_Result
    {
        public bool @success = false;
        public string @message = "";

        public _Ros2UrinterfacesActionSetMode_Result()
        {
        }
    }

    public sealed class Ros2UrinterfacesActionSetMode_ResultCodec : global::Uwvm.RosWasm.ICodec<_Ros2UrinterfacesActionSetMode_Result>
    {
        public static readonly Ros2UrinterfacesActionSetMode_ResultCodec Instance = new Ros2UrinterfacesActionSetMode_ResultCodec();

        private Ros2UrinterfacesActionSetMode_ResultCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "urinterfaces/action/SetMode_Result";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_500243a508824c42fe2da424040aa60bf2426ac607f2f6016fab014f81518af7";
        public const int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 261;

        public byte[] Encode(_Ros2UrinterfacesActionSetMode_Result value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2UrinterfacesActionSetMode_Result(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2UrinterfacesActionSetMode_Result Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2UrinterfacesActionSetMode_Result value = ReadRos2UrinterfacesActionSetMode_Result(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2UrinterfacesActionSetMode_Result(_Codecs.Writer writer, _Ros2UrinterfacesActionSetMode_Result value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
        string part1 = value.@message;
        WriteText(writer, part1, 256);
    }

    private static _Ros2UrinterfacesActionSetMode_Result ReadRos2UrinterfacesActionSetMode_Result(_Codecs.Reader reader)
    {
        var value = new _Ros2UrinterfacesActionSetMode_Result();
        value.@success = ReadBool(reader);
        value.@message = ReadText(reader, 256);
        return value;
    }

    public sealed class _Ros2UrinterfacesActionSetMode_Feedback
    {
        public sbyte @current_robot_mode = 0;
        public sbyte @current_safety_mode = 0;

        public _Ros2UrinterfacesActionSetMode_Feedback()
        {
        }
    }

    public sealed class Ros2UrinterfacesActionSetMode_FeedbackCodec : global::Uwvm.RosWasm.ICodec<_Ros2UrinterfacesActionSetMode_Feedback>
    {
        public static readonly Ros2UrinterfacesActionSetMode_FeedbackCodec Instance = new Ros2UrinterfacesActionSetMode_FeedbackCodec();

        private Ros2UrinterfacesActionSetMode_FeedbackCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "urinterfaces/action/SetMode_Feedback";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_22fb71c17066829bd66c98bc631c82b2bfef3c501e08960a6bfad3d902f76537";
        public const int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;

        public byte[] Encode(_Ros2UrinterfacesActionSetMode_Feedback value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2UrinterfacesActionSetMode_Feedback(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2UrinterfacesActionSetMode_Feedback Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2UrinterfacesActionSetMode_Feedback value = ReadRos2UrinterfacesActionSetMode_Feedback(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2UrinterfacesActionSetMode_Feedback(_Codecs.Writer writer, _Ros2UrinterfacesActionSetMode_Feedback value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        sbyte part0 = value.@current_robot_mode;
        writer.Unsigned(unchecked((byte)part0), 1);
        sbyte part1 = value.@current_safety_mode;
        writer.Unsigned(unchecked((byte)part1), 1);
    }

    private static _Ros2UrinterfacesActionSetMode_Feedback ReadRos2UrinterfacesActionSetMode_Feedback(_Codecs.Reader reader)
    {
        var value = new _Ros2UrinterfacesActionSetMode_Feedback();
        value.@current_robot_mode = unchecked((sbyte)reader.Unsigned(1));
        value.@current_safety_mode = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    public sealed class _Ros2UrinterfacesMsgActiveTCP
    {
        public _Ros2Std_msgsMsgHeader @header = new _Ros2Std_msgsMsgHeader();
        public string @data = "";

        public _Ros2UrinterfacesMsgActiveTCP()
        {
        }
    }

    public sealed class Ros2UrinterfacesMsgActiveTCPCodec : global::Uwvm.RosWasm.ICodec<_Ros2UrinterfacesMsgActiveTCP>
    {
        public static readonly Ros2UrinterfacesMsgActiveTCPCodec Instance = new Ros2UrinterfacesMsgActiveTCPCodec();

        private Ros2UrinterfacesMsgActiveTCPCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "urinterfaces/msg/ActiveTCP";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_e62d31728eca201dee256d88d1d268bf2ecb9607ed5c48783432f966edf459ae";
        public const int MIN_WIRE_BYTES = 16, MAX_WIRE_BYTES = 400;

        public byte[] Encode(_Ros2UrinterfacesMsgActiveTCP value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2UrinterfacesMsgActiveTCP(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2UrinterfacesMsgActiveTCP Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2UrinterfacesMsgActiveTCP value = ReadRos2UrinterfacesMsgActiveTCP(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2UrinterfacesMsgActiveTCP(_Codecs.Writer writer, _Ros2UrinterfacesMsgActiveTCP value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Std_msgsMsgHeader part0 = value.@header;
        WriteRos2Std_msgsMsgHeader(writer, part0);
        string part1 = value.@data;
        WriteText(writer, part1, 256);
    }

    private static _Ros2UrinterfacesMsgActiveTCP ReadRos2UrinterfacesMsgActiveTCP(_Codecs.Reader reader)
    {
        var value = new _Ros2UrinterfacesMsgActiveTCP();
        value.@header = ReadRos2Std_msgsMsgHeader(reader);
        value.@data = ReadText(reader, 256);
        return value;
    }

    public sealed class _Ros2UrinterfacesMsgAnalog
    {
        public byte @pin = 0;
        public byte @domain = 0;
        public float @value = 0;

        public _Ros2UrinterfacesMsgAnalog()
        {
        }
    }

    public sealed class Ros2UrinterfacesMsgAnalogCodec : global::Uwvm.RosWasm.ICodec<_Ros2UrinterfacesMsgAnalog>
    {
        public static readonly Ros2UrinterfacesMsgAnalogCodec Instance = new Ros2UrinterfacesMsgAnalogCodec();

        private Ros2UrinterfacesMsgAnalogCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "urinterfaces/msg/Analog";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_e81cffd909f3bc387ee00c37537434341ef93fd160e465be033aa9bc412b979b";
        public const int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 6;

        public byte[] Encode(_Ros2UrinterfacesMsgAnalog value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2UrinterfacesMsgAnalog(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2UrinterfacesMsgAnalog Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2UrinterfacesMsgAnalog value = ReadRos2UrinterfacesMsgAnalog(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2UrinterfacesMsgAnalog(_Codecs.Writer writer, _Ros2UrinterfacesMsgAnalog value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        byte part0 = value.@pin;
        writer.Unsigned(part0, 1);
        byte part1 = value.@domain;
        writer.Unsigned(part1, 1);
        float part2 = value.@value;
        WriteFloat32(writer, part2);
    }

    private static _Ros2UrinterfacesMsgAnalog ReadRos2UrinterfacesMsgAnalog(_Codecs.Reader reader)
    {
        var value = new _Ros2UrinterfacesMsgAnalog();
        value.@pin = unchecked((byte)reader.Unsigned(1));
        value.@domain = unchecked((byte)reader.Unsigned(1));
        value.@value = ReadFloat32(reader);
        return value;
    }

    public sealed class _Ros2UrinterfacesMsgAnalogIO
    {
        public _Ros2UrinterfacesMsgAnalog[] @analog_inputs = new _Ros2UrinterfacesMsgAnalog[0];
        public _Ros2UrinterfacesMsgAnalog[] @analog_outputs = new _Ros2UrinterfacesMsgAnalog[0];

        public _Ros2UrinterfacesMsgAnalogIO()
        {
        }
    }

    public sealed class Ros2UrinterfacesMsgAnalogIOCodec : global::Uwvm.RosWasm.ICodec<_Ros2UrinterfacesMsgAnalogIO>
    {
        public static readonly Ros2UrinterfacesMsgAnalogIOCodec Instance = new Ros2UrinterfacesMsgAnalogIOCodec();

        private Ros2UrinterfacesMsgAnalogIOCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "urinterfaces/msg/AnalogIO";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_3130f3e3857f21bab5092d9c6abea8c45965c07ebb9c1ab14b28fa51b7d71e0c";
        public const int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 200;

        public byte[] Encode(_Ros2UrinterfacesMsgAnalogIO value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2UrinterfacesMsgAnalogIO(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2UrinterfacesMsgAnalogIO Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2UrinterfacesMsgAnalogIO value = ReadRos2UrinterfacesMsgAnalogIO(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2UrinterfacesMsgAnalogIO(_Codecs.Writer writer, _Ros2UrinterfacesMsgAnalogIO value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2UrinterfacesMsgAnalog[] part0 = value.@analog_inputs;
        if(part0 == null || part0.Length > 16)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part0.Length, 4);
        for(int index = 0; index < part0.Length; ++index)
        {
            _Ros2UrinterfacesMsgAnalog element = part0[index];
            WriteRos2UrinterfacesMsgAnalog(writer, element);
        }
        _Ros2UrinterfacesMsgAnalog[] part1 = value.@analog_outputs;
        if(part1 == null || part1.Length > 16)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part1.Length, 4);
        for(int index = 0; index < part1.Length; ++index)
        {
            _Ros2UrinterfacesMsgAnalog element = part1[index];
            WriteRos2UrinterfacesMsgAnalog(writer, element);
        }
    }

    private static _Ros2UrinterfacesMsgAnalogIO ReadRos2UrinterfacesMsgAnalogIO(_Codecs.Reader reader)
    {
        var value = new _Ros2UrinterfacesMsgAnalogIO();
        value.@analog_inputs = new _Ros2UrinterfacesMsgAnalog[ReadCount(reader, 16, 6)];
        for(int index = 0; index < value.@analog_inputs.Length; ++index)
            value.@analog_inputs[index] = ReadRos2UrinterfacesMsgAnalog(reader);
        value.@analog_outputs = new _Ros2UrinterfacesMsgAnalog[ReadCount(reader, 16, 6)];
        for(int index = 0; index < value.@analog_outputs.Length; ++index)
            value.@analog_outputs[index] = ReadRos2UrinterfacesMsgAnalog(reader);
        return value;
    }

    public sealed class _Ros2UrinterfacesMsgAnalogIOStateStamped
    {
        public _Ros2Std_msgsMsgHeader @header = new _Ros2Std_msgsMsgHeader();
        public _Ros2UrinterfacesMsgAnalogIO @io_state = new _Ros2UrinterfacesMsgAnalogIO();

        public _Ros2UrinterfacesMsgAnalogIOStateStamped()
        {
        }
    }

    public sealed class Ros2UrinterfacesMsgAnalogIOStateStampedCodec : global::Uwvm.RosWasm.ICodec<_Ros2UrinterfacesMsgAnalogIOStateStamped>
    {
        public static readonly Ros2UrinterfacesMsgAnalogIOStateStampedCodec Instance = new Ros2UrinterfacesMsgAnalogIOStateStampedCodec();

        private Ros2UrinterfacesMsgAnalogIOStateStampedCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "urinterfaces/msg/AnalogIOStateStamped";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_a40e839bb4acfcb26503c79f01216b7aea9ab8ff25c50dca42578b206ab40a89";
        public const int MIN_WIRE_BYTES = 20, MAX_WIRE_BYTES = 340;

        public byte[] Encode(_Ros2UrinterfacesMsgAnalogIOStateStamped value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2UrinterfacesMsgAnalogIOStateStamped(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2UrinterfacesMsgAnalogIOStateStamped Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2UrinterfacesMsgAnalogIOStateStamped value = ReadRos2UrinterfacesMsgAnalogIOStateStamped(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2UrinterfacesMsgAnalogIOStateStamped(_Codecs.Writer writer, _Ros2UrinterfacesMsgAnalogIOStateStamped value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Std_msgsMsgHeader part0 = value.@header;
        WriteRos2Std_msgsMsgHeader(writer, part0);
        _Ros2UrinterfacesMsgAnalogIO part1 = value.@io_state;
        WriteRos2UrinterfacesMsgAnalogIO(writer, part1);
    }

    private static _Ros2UrinterfacesMsgAnalogIOStateStamped ReadRos2UrinterfacesMsgAnalogIOStateStamped(_Codecs.Reader reader)
    {
        var value = new _Ros2UrinterfacesMsgAnalogIOStateStamped();
        value.@header = ReadRos2Std_msgsMsgHeader(reader);
        value.@io_state = ReadRos2UrinterfacesMsgAnalogIO(reader);
        return value;
    }

    public sealed class _Ros2UrinterfacesMsgAnalogStamped
    {
        public _Ros2Std_msgsMsgHeader @header = new _Ros2Std_msgsMsgHeader();
        public _Ros2UrinterfacesMsgAnalog @data = new _Ros2UrinterfacesMsgAnalog();

        public _Ros2UrinterfacesMsgAnalogStamped()
        {
        }
    }

    public sealed class Ros2UrinterfacesMsgAnalogStampedCodec : global::Uwvm.RosWasm.ICodec<_Ros2UrinterfacesMsgAnalogStamped>
    {
        public static readonly Ros2UrinterfacesMsgAnalogStampedCodec Instance = new Ros2UrinterfacesMsgAnalogStampedCodec();

        private Ros2UrinterfacesMsgAnalogStampedCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "urinterfaces/msg/AnalogStamped";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_749557c6e79b882385927c62d3c45963797ce116d7be6235bd9f186a7b4da76c";
        public const int MIN_WIRE_BYTES = 18, MAX_WIRE_BYTES = 146;

        public byte[] Encode(_Ros2UrinterfacesMsgAnalogStamped value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2UrinterfacesMsgAnalogStamped(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2UrinterfacesMsgAnalogStamped Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2UrinterfacesMsgAnalogStamped value = ReadRos2UrinterfacesMsgAnalogStamped(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2UrinterfacesMsgAnalogStamped(_Codecs.Writer writer, _Ros2UrinterfacesMsgAnalogStamped value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Std_msgsMsgHeader part0 = value.@header;
        WriteRos2Std_msgsMsgHeader(writer, part0);
        _Ros2UrinterfacesMsgAnalog part1 = value.@data;
        WriteRos2UrinterfacesMsgAnalog(writer, part1);
    }

    private static _Ros2UrinterfacesMsgAnalogStamped ReadRos2UrinterfacesMsgAnalogStamped(_Codecs.Reader reader)
    {
        var value = new _Ros2UrinterfacesMsgAnalogStamped();
        value.@header = ReadRos2Std_msgsMsgHeader(reader);
        value.@data = ReadRos2UrinterfacesMsgAnalog(reader);
        return value;
    }

    public sealed class _Ros2UrinterfacesMsgBoolStamped
    {
        public _Ros2Std_msgsMsgHeader @header = new _Ros2Std_msgsMsgHeader();
        public bool @data = false;

        public _Ros2UrinterfacesMsgBoolStamped()
        {
        }
    }

    public sealed class Ros2UrinterfacesMsgBoolStampedCodec : global::Uwvm.RosWasm.ICodec<_Ros2UrinterfacesMsgBoolStamped>
    {
        public static readonly Ros2UrinterfacesMsgBoolStampedCodec Instance = new Ros2UrinterfacesMsgBoolStampedCodec();

        private Ros2UrinterfacesMsgBoolStampedCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "urinterfaces/msg/BoolStamped";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_1a4128638df10bd9a8d33af0ed3c2ee9b4deb771d45dfe83f2a9a75c7f77de66";
        public const int MIN_WIRE_BYTES = 13, MAX_WIRE_BYTES = 141;

        public byte[] Encode(_Ros2UrinterfacesMsgBoolStamped value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2UrinterfacesMsgBoolStamped(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2UrinterfacesMsgBoolStamped Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2UrinterfacesMsgBoolStamped value = ReadRos2UrinterfacesMsgBoolStamped(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2UrinterfacesMsgBoolStamped(_Codecs.Writer writer, _Ros2UrinterfacesMsgBoolStamped value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Std_msgsMsgHeader part0 = value.@header;
        WriteRos2Std_msgsMsgHeader(writer, part0);
        bool part1 = value.@data;
        writer.Unsigned(part1 ? 1UL : 0UL, 1);
    }

    private static _Ros2UrinterfacesMsgBoolStamped ReadRos2UrinterfacesMsgBoolStamped(_Codecs.Reader reader)
    {
        var value = new _Ros2UrinterfacesMsgBoolStamped();
        value.@header = ReadRos2Std_msgsMsgHeader(reader);
        value.@data = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2UrinterfacesMsgControlCycle
    {
        public _Ros2Std_msgsMsgHeader @header = new _Ros2Std_msgsMsgHeader();
        public ulong @data = 0;

        public _Ros2UrinterfacesMsgControlCycle()
        {
        }
    }

    public sealed class Ros2UrinterfacesMsgControlCycleCodec : global::Uwvm.RosWasm.ICodec<_Ros2UrinterfacesMsgControlCycle>
    {
        public static readonly Ros2UrinterfacesMsgControlCycleCodec Instance = new Ros2UrinterfacesMsgControlCycleCodec();

        private Ros2UrinterfacesMsgControlCycleCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "urinterfaces/msg/ControlCycle";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_99a4d96e5673f5ac49eab13cd8b28af55ac83e1626c39ed20ff46655df4d6278";
        public const int MIN_WIRE_BYTES = 20, MAX_WIRE_BYTES = 148;

        public byte[] Encode(_Ros2UrinterfacesMsgControlCycle value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2UrinterfacesMsgControlCycle(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2UrinterfacesMsgControlCycle Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2UrinterfacesMsgControlCycle value = ReadRos2UrinterfacesMsgControlCycle(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2UrinterfacesMsgControlCycle(_Codecs.Writer writer, _Ros2UrinterfacesMsgControlCycle value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Std_msgsMsgHeader part0 = value.@header;
        WriteRos2Std_msgsMsgHeader(writer, part0);
        ulong part1 = value.@data;
        writer.Unsigned(part1, 8);
    }

    private static _Ros2UrinterfacesMsgControlCycle ReadRos2UrinterfacesMsgControlCycle(_Codecs.Reader reader)
    {
        var value = new _Ros2UrinterfacesMsgControlCycle();
        value.@header = ReadRos2Std_msgsMsgHeader(reader);
        value.@data = unchecked((ulong)reader.Unsigned(8));
        return value;
    }

    public sealed class _Ros2UrinterfacesMsgCurrent
    {
        public _Ros2Std_msgsMsgHeader @header = new _Ros2Std_msgsMsgHeader();
        public float @data = 0;

        public _Ros2UrinterfacesMsgCurrent()
        {
        }
    }

    public sealed class Ros2UrinterfacesMsgCurrentCodec : global::Uwvm.RosWasm.ICodec<_Ros2UrinterfacesMsgCurrent>
    {
        public static readonly Ros2UrinterfacesMsgCurrentCodec Instance = new Ros2UrinterfacesMsgCurrentCodec();

        private Ros2UrinterfacesMsgCurrentCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "urinterfaces/msg/Current";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_759f2139335bcb720f7f4a38cd8b1413f203f2dd2b72149fa0de0fb7a0a778df";
        public const int MIN_WIRE_BYTES = 16, MAX_WIRE_BYTES = 144;

        public byte[] Encode(_Ros2UrinterfacesMsgCurrent value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2UrinterfacesMsgCurrent(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2UrinterfacesMsgCurrent Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2UrinterfacesMsgCurrent value = ReadRos2UrinterfacesMsgCurrent(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2UrinterfacesMsgCurrent(_Codecs.Writer writer, _Ros2UrinterfacesMsgCurrent value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Std_msgsMsgHeader part0 = value.@header;
        WriteRos2Std_msgsMsgHeader(writer, part0);
        float part1 = value.@data;
        WriteFloat32(writer, part1);
    }

    private static _Ros2UrinterfacesMsgCurrent ReadRos2UrinterfacesMsgCurrent(_Codecs.Reader reader)
    {
        var value = new _Ros2UrinterfacesMsgCurrent();
        value.@header = ReadRos2Std_msgsMsgHeader(reader);
        value.@data = ReadFloat32(reader);
        return value;
    }

    public sealed class _Ros2UrinterfacesMsgDigital
    {
        public byte @pin = 0;
        public bool @state = false;

        public _Ros2UrinterfacesMsgDigital()
        {
        }
    }

    public sealed class Ros2UrinterfacesMsgDigitalCodec : global::Uwvm.RosWasm.ICodec<_Ros2UrinterfacesMsgDigital>
    {
        public static readonly Ros2UrinterfacesMsgDigitalCodec Instance = new Ros2UrinterfacesMsgDigitalCodec();

        private Ros2UrinterfacesMsgDigitalCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "urinterfaces/msg/Digital";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_c60c73df0383bb9a3e23ae3148cff9d6eb49b88c2d10add0af6a86ec9af54512";
        public const int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;

        public byte[] Encode(_Ros2UrinterfacesMsgDigital value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2UrinterfacesMsgDigital(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2UrinterfacesMsgDigital Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2UrinterfacesMsgDigital value = ReadRos2UrinterfacesMsgDigital(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2UrinterfacesMsgDigital(_Codecs.Writer writer, _Ros2UrinterfacesMsgDigital value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        byte part0 = value.@pin;
        writer.Unsigned(part0, 1);
        bool part1 = value.@state;
        writer.Unsigned(part1 ? 1UL : 0UL, 1);
    }

    private static _Ros2UrinterfacesMsgDigital ReadRos2UrinterfacesMsgDigital(_Codecs.Reader reader)
    {
        var value = new _Ros2UrinterfacesMsgDigital();
        value.@pin = unchecked((byte)reader.Unsigned(1));
        value.@state = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2UrinterfacesMsgDigitalIO
    {
        public _Ros2UrinterfacesMsgDigital[] @digital_inputs = new _Ros2UrinterfacesMsgDigital[0];
        public _Ros2UrinterfacesMsgDigital[] @digital_outputs = new _Ros2UrinterfacesMsgDigital[0];

        public _Ros2UrinterfacesMsgDigitalIO()
        {
        }
    }

    public sealed class Ros2UrinterfacesMsgDigitalIOCodec : global::Uwvm.RosWasm.ICodec<_Ros2UrinterfacesMsgDigitalIO>
    {
        public static readonly Ros2UrinterfacesMsgDigitalIOCodec Instance = new Ros2UrinterfacesMsgDigitalIOCodec();

        private Ros2UrinterfacesMsgDigitalIOCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "urinterfaces/msg/DigitalIO";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_11235b6010feb7e3e5e6c2be8acd3fbba1c25ecbf97ae5e0c899a0e3de3c4e4a";
        public const int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 136;

        public byte[] Encode(_Ros2UrinterfacesMsgDigitalIO value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2UrinterfacesMsgDigitalIO(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2UrinterfacesMsgDigitalIO Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2UrinterfacesMsgDigitalIO value = ReadRos2UrinterfacesMsgDigitalIO(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2UrinterfacesMsgDigitalIO(_Codecs.Writer writer, _Ros2UrinterfacesMsgDigitalIO value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2UrinterfacesMsgDigital[] part0 = value.@digital_inputs;
        if(part0 == null || part0.Length > 32)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part0.Length, 4);
        for(int index = 0; index < part0.Length; ++index)
        {
            _Ros2UrinterfacesMsgDigital element = part0[index];
            WriteRos2UrinterfacesMsgDigital(writer, element);
        }
        _Ros2UrinterfacesMsgDigital[] part1 = value.@digital_outputs;
        if(part1 == null || part1.Length > 32)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part1.Length, 4);
        for(int index = 0; index < part1.Length; ++index)
        {
            _Ros2UrinterfacesMsgDigital element = part1[index];
            WriteRos2UrinterfacesMsgDigital(writer, element);
        }
    }

    private static _Ros2UrinterfacesMsgDigitalIO ReadRos2UrinterfacesMsgDigitalIO(_Codecs.Reader reader)
    {
        var value = new _Ros2UrinterfacesMsgDigitalIO();
        value.@digital_inputs = new _Ros2UrinterfacesMsgDigital[ReadCount(reader, 32, 2)];
        for(int index = 0; index < value.@digital_inputs.Length; ++index)
            value.@digital_inputs[index] = ReadRos2UrinterfacesMsgDigital(reader);
        value.@digital_outputs = new _Ros2UrinterfacesMsgDigital[ReadCount(reader, 32, 2)];
        for(int index = 0; index < value.@digital_outputs.Length; ++index)
            value.@digital_outputs[index] = ReadRos2UrinterfacesMsgDigital(reader);
        return value;
    }

    public sealed class _Ros2UrinterfacesMsgDigitalIOStateStamped
    {
        public _Ros2Std_msgsMsgHeader @header = new _Ros2Std_msgsMsgHeader();
        public _Ros2UrinterfacesMsgDigitalIO @configurable_io = new _Ros2UrinterfacesMsgDigitalIO();
        public _Ros2UrinterfacesMsgDigitalIO @standard_io = new _Ros2UrinterfacesMsgDigitalIO();

        public _Ros2UrinterfacesMsgDigitalIOStateStamped()
        {
        }
    }

    public sealed class Ros2UrinterfacesMsgDigitalIOStateStampedCodec : global::Uwvm.RosWasm.ICodec<_Ros2UrinterfacesMsgDigitalIOStateStamped>
    {
        public static readonly Ros2UrinterfacesMsgDigitalIOStateStampedCodec Instance = new Ros2UrinterfacesMsgDigitalIOStateStampedCodec();

        private Ros2UrinterfacesMsgDigitalIOStateStampedCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "urinterfaces/msg/DigitalIOStateStamped";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_542db76916f234e79216804426dc4e8d386a0ef547907391c921f51ed45e64c9";
        public const int MIN_WIRE_BYTES = 28, MAX_WIRE_BYTES = 412;

        public byte[] Encode(_Ros2UrinterfacesMsgDigitalIOStateStamped value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2UrinterfacesMsgDigitalIOStateStamped(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2UrinterfacesMsgDigitalIOStateStamped Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2UrinterfacesMsgDigitalIOStateStamped value = ReadRos2UrinterfacesMsgDigitalIOStateStamped(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2UrinterfacesMsgDigitalIOStateStamped(_Codecs.Writer writer, _Ros2UrinterfacesMsgDigitalIOStateStamped value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Std_msgsMsgHeader part0 = value.@header;
        WriteRos2Std_msgsMsgHeader(writer, part0);
        _Ros2UrinterfacesMsgDigitalIO part1 = value.@configurable_io;
        WriteRos2UrinterfacesMsgDigitalIO(writer, part1);
        _Ros2UrinterfacesMsgDigitalIO part2 = value.@standard_io;
        WriteRos2UrinterfacesMsgDigitalIO(writer, part2);
    }

    private static _Ros2UrinterfacesMsgDigitalIOStateStamped ReadRos2UrinterfacesMsgDigitalIOStateStamped(_Codecs.Reader reader)
    {
        var value = new _Ros2UrinterfacesMsgDigitalIOStateStamped();
        value.@header = ReadRos2Std_msgsMsgHeader(reader);
        value.@configurable_io = ReadRos2UrinterfacesMsgDigitalIO(reader);
        value.@standard_io = ReadRos2UrinterfacesMsgDigitalIO(reader);
        return value;
    }

    public sealed class _Ros2UrinterfacesMsgDigitalStamped
    {
        public _Ros2Std_msgsMsgHeader @header = new _Ros2Std_msgsMsgHeader();
        public _Ros2UrinterfacesMsgDigital @data = new _Ros2UrinterfacesMsgDigital();

        public _Ros2UrinterfacesMsgDigitalStamped()
        {
        }
    }

    public sealed class Ros2UrinterfacesMsgDigitalStampedCodec : global::Uwvm.RosWasm.ICodec<_Ros2UrinterfacesMsgDigitalStamped>
    {
        public static readonly Ros2UrinterfacesMsgDigitalStampedCodec Instance = new Ros2UrinterfacesMsgDigitalStampedCodec();

        private Ros2UrinterfacesMsgDigitalStampedCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "urinterfaces/msg/DigitalStamped";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_dc86d5a04c0801089ddf6b61b5fd33d63df8b5599550c6a0e84e19bbff375865";
        public const int MIN_WIRE_BYTES = 14, MAX_WIRE_BYTES = 142;

        public byte[] Encode(_Ros2UrinterfacesMsgDigitalStamped value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2UrinterfacesMsgDigitalStamped(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2UrinterfacesMsgDigitalStamped Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2UrinterfacesMsgDigitalStamped value = ReadRos2UrinterfacesMsgDigitalStamped(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2UrinterfacesMsgDigitalStamped(_Codecs.Writer writer, _Ros2UrinterfacesMsgDigitalStamped value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Std_msgsMsgHeader part0 = value.@header;
        WriteRos2Std_msgsMsgHeader(writer, part0);
        _Ros2UrinterfacesMsgDigital part1 = value.@data;
        WriteRos2UrinterfacesMsgDigital(writer, part1);
    }

    private static _Ros2UrinterfacesMsgDigitalStamped ReadRos2UrinterfacesMsgDigitalStamped(_Codecs.Reader reader)
    {
        var value = new _Ros2UrinterfacesMsgDigitalStamped();
        value.@header = ReadRos2Std_msgsMsgHeader(reader);
        value.@data = ReadRos2UrinterfacesMsgDigital(reader);
        return value;
    }

    public sealed class _Ros2UrinterfacesMsgDoubleMultiArrayStamped
    {
        public _Ros2Std_msgsMsgHeader @header = new _Ros2Std_msgsMsgHeader();
        public double[] @data = new double[0];

        public _Ros2UrinterfacesMsgDoubleMultiArrayStamped()
        {
        }
    }

    public sealed class Ros2UrinterfacesMsgDoubleMultiArrayStampedCodec : global::Uwvm.RosWasm.ICodec<_Ros2UrinterfacesMsgDoubleMultiArrayStamped>
    {
        public static readonly Ros2UrinterfacesMsgDoubleMultiArrayStampedCodec Instance = new Ros2UrinterfacesMsgDoubleMultiArrayStampedCodec();

        private Ros2UrinterfacesMsgDoubleMultiArrayStampedCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "urinterfaces/msg/DoubleMultiArrayStamped";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_82b52f88248ea8d6cd7b809d1fd5aa55b4bbe1618044e739998a7ec74a23a8ae";
        public const int MIN_WIRE_BYTES = 16, MAX_WIRE_BYTES = 272;

        public byte[] Encode(_Ros2UrinterfacesMsgDoubleMultiArrayStamped value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2UrinterfacesMsgDoubleMultiArrayStamped(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2UrinterfacesMsgDoubleMultiArrayStamped Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2UrinterfacesMsgDoubleMultiArrayStamped value = ReadRos2UrinterfacesMsgDoubleMultiArrayStamped(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2UrinterfacesMsgDoubleMultiArrayStamped(_Codecs.Writer writer, _Ros2UrinterfacesMsgDoubleMultiArrayStamped value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Std_msgsMsgHeader part0 = value.@header;
        WriteRos2Std_msgsMsgHeader(writer, part0);
        double[] part1 = value.@data;
        if(part1 == null || part1.Length > 16)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part1.Length, 4);
        for(int index = 0; index < part1.Length; ++index)
        {
            double element = part1[index];
            writer.Float64(element);
        }
    }

    private static _Ros2UrinterfacesMsgDoubleMultiArrayStamped ReadRos2UrinterfacesMsgDoubleMultiArrayStamped(_Codecs.Reader reader)
    {
        var value = new _Ros2UrinterfacesMsgDoubleMultiArrayStamped();
        value.@header = ReadRos2Std_msgsMsgHeader(reader);
        value.@data = new double[ReadCount(reader, 16, 8)];
        for(int index = 0; index < value.@data.Length; ++index)
            value.@data[index] = reader.Float64();
        return value;
    }

    public sealed class _Ros2UrinterfacesMsgFloat32Stamped
    {
        public _Ros2Std_msgsMsgHeader @header = new _Ros2Std_msgsMsgHeader();
        public float @data = 0;

        public _Ros2UrinterfacesMsgFloat32Stamped()
        {
        }
    }

    public sealed class Ros2UrinterfacesMsgFloat32StampedCodec : global::Uwvm.RosWasm.ICodec<_Ros2UrinterfacesMsgFloat32Stamped>
    {
        public static readonly Ros2UrinterfacesMsgFloat32StampedCodec Instance = new Ros2UrinterfacesMsgFloat32StampedCodec();

        private Ros2UrinterfacesMsgFloat32StampedCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "urinterfaces/msg/Float32Stamped";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_5989940d19890b6d3b78172e9920708745b78e35c1c4fb238412c37a813d30d3";
        public const int MIN_WIRE_BYTES = 16, MAX_WIRE_BYTES = 144;

        public byte[] Encode(_Ros2UrinterfacesMsgFloat32Stamped value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2UrinterfacesMsgFloat32Stamped(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2UrinterfacesMsgFloat32Stamped Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2UrinterfacesMsgFloat32Stamped value = ReadRos2UrinterfacesMsgFloat32Stamped(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2UrinterfacesMsgFloat32Stamped(_Codecs.Writer writer, _Ros2UrinterfacesMsgFloat32Stamped value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Std_msgsMsgHeader part0 = value.@header;
        WriteRos2Std_msgsMsgHeader(writer, part0);
        float part1 = value.@data;
        WriteFloat32(writer, part1);
    }

    private static _Ros2UrinterfacesMsgFloat32Stamped ReadRos2UrinterfacesMsgFloat32Stamped(_Codecs.Reader reader)
    {
        var value = new _Ros2UrinterfacesMsgFloat32Stamped();
        value.@header = ReadRos2Std_msgsMsgHeader(reader);
        value.@data = ReadFloat32(reader);
        return value;
    }

    public sealed class _Ros2UrinterfacesMsgFloat64Stamped
    {
        public _Ros2Std_msgsMsgHeader @header = new _Ros2Std_msgsMsgHeader();
        public double @data = 0;

        public _Ros2UrinterfacesMsgFloat64Stamped()
        {
        }
    }

    public sealed class Ros2UrinterfacesMsgFloat64StampedCodec : global::Uwvm.RosWasm.ICodec<_Ros2UrinterfacesMsgFloat64Stamped>
    {
        public static readonly Ros2UrinterfacesMsgFloat64StampedCodec Instance = new Ros2UrinterfacesMsgFloat64StampedCodec();

        private Ros2UrinterfacesMsgFloat64StampedCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "urinterfaces/msg/Float64Stamped";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_4f8950feff6f20dbdbf9cac1f01168824be3698a4bd90355a470b580930edb21";
        public const int MIN_WIRE_BYTES = 20, MAX_WIRE_BYTES = 148;

        public byte[] Encode(_Ros2UrinterfacesMsgFloat64Stamped value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2UrinterfacesMsgFloat64Stamped(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2UrinterfacesMsgFloat64Stamped Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2UrinterfacesMsgFloat64Stamped value = ReadRos2UrinterfacesMsgFloat64Stamped(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2UrinterfacesMsgFloat64Stamped(_Codecs.Writer writer, _Ros2UrinterfacesMsgFloat64Stamped value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Std_msgsMsgHeader part0 = value.@header;
        WriteRos2Std_msgsMsgHeader(writer, part0);
        double part1 = value.@data;
        writer.Float64(part1);
    }

    private static _Ros2UrinterfacesMsgFloat64Stamped ReadRos2UrinterfacesMsgFloat64Stamped(_Codecs.Reader reader)
    {
        var value = new _Ros2UrinterfacesMsgFloat64Stamped();
        value.@header = ReadRos2Std_msgsMsgHeader(reader);
        value.@data = reader.Float64();
        return value;
    }

    public sealed class _Ros2UrinterfacesMsgJointMode
    {
        public _Ros2Std_msgsMsgHeader @header = new _Ros2Std_msgsMsgHeader();
        public byte[] @joint_modes = new byte[6];
        public byte @tool_mode = 0;

        public _Ros2UrinterfacesMsgJointMode()
        {
        }
    }

    public sealed class Ros2UrinterfacesMsgJointModeCodec : global::Uwvm.RosWasm.ICodec<_Ros2UrinterfacesMsgJointMode>
    {
        public static readonly Ros2UrinterfacesMsgJointModeCodec Instance = new Ros2UrinterfacesMsgJointModeCodec();

        private Ros2UrinterfacesMsgJointModeCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "urinterfaces/msg/JointMode";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_6d766192096ced3c8568a98fb286c309e00cfb97e34b2611fff70e5bb1eaa95c";
        public const int MIN_WIRE_BYTES = 19, MAX_WIRE_BYTES = 147;

        public byte[] Encode(_Ros2UrinterfacesMsgJointMode value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2UrinterfacesMsgJointMode(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2UrinterfacesMsgJointMode Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2UrinterfacesMsgJointMode value = ReadRos2UrinterfacesMsgJointMode(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2UrinterfacesMsgJointMode(_Codecs.Writer writer, _Ros2UrinterfacesMsgJointMode value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Std_msgsMsgHeader part0 = value.@header;
        WriteRos2Std_msgsMsgHeader(writer, part0);
        byte[] part1 = value.@joint_modes;
        if(part1 == null || part1.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part1.Length; ++index)
        {
            byte element = part1[index];
            writer.Unsigned(element, 1);
        }
        byte part2 = value.@tool_mode;
        writer.Unsigned(part2, 1);
    }

    private static _Ros2UrinterfacesMsgJointMode ReadRos2UrinterfacesMsgJointMode(_Codecs.Reader reader)
    {
        var value = new _Ros2UrinterfacesMsgJointMode();
        value.@header = ReadRos2Std_msgsMsgHeader(reader);
        value.@joint_modes = new byte[6];
        for(int index = 0; index < value.@joint_modes.Length; ++index)
            value.@joint_modes[index] = unchecked((byte)reader.Unsigned(1));
        value.@tool_mode = unchecked((byte)reader.Unsigned(1));
        return value;
    }

    public sealed class _Ros2UrinterfacesMsgJointTemperature
    {
        public _Ros2Std_msgsMsgHeader @header = new _Ros2Std_msgsMsgHeader();
        public float[] @data = new float[6];

        public _Ros2UrinterfacesMsgJointTemperature()
        {
        }
    }

    public sealed class Ros2UrinterfacesMsgJointTemperatureCodec : global::Uwvm.RosWasm.ICodec<_Ros2UrinterfacesMsgJointTemperature>
    {
        public static readonly Ros2UrinterfacesMsgJointTemperatureCodec Instance = new Ros2UrinterfacesMsgJointTemperatureCodec();

        private Ros2UrinterfacesMsgJointTemperatureCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "urinterfaces/msg/JointTemperature";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_af77f1ec4c6b4d71e6387315d2388e7493c229dbf216848e61d5638cb308d017";
        public const int MIN_WIRE_BYTES = 36, MAX_WIRE_BYTES = 164;

        public byte[] Encode(_Ros2UrinterfacesMsgJointTemperature value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2UrinterfacesMsgJointTemperature(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2UrinterfacesMsgJointTemperature Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2UrinterfacesMsgJointTemperature value = ReadRos2UrinterfacesMsgJointTemperature(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2UrinterfacesMsgJointTemperature(_Codecs.Writer writer, _Ros2UrinterfacesMsgJointTemperature value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Std_msgsMsgHeader part0 = value.@header;
        WriteRos2Std_msgsMsgHeader(writer, part0);
        float[] part1 = value.@data;
        if(part1 == null || part1.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part1.Length; ++index)
        {
            float element = part1[index];
            WriteFloat32(writer, element);
        }
    }

    private static _Ros2UrinterfacesMsgJointTemperature ReadRos2UrinterfacesMsgJointTemperature(_Codecs.Reader reader)
    {
        var value = new _Ros2UrinterfacesMsgJointTemperature();
        value.@header = ReadRos2Std_msgsMsgHeader(reader);
        value.@data = new float[6];
        for(int index = 0; index < value.@data.Length; ++index)
            value.@data[index] = ReadFloat32(reader);
        return value;
    }

    public sealed class _Ros2UrinterfacesMsgJointVoltage
    {
        public _Ros2Std_msgsMsgHeader @header = new _Ros2Std_msgsMsgHeader();
        public double[] @data = new double[6];

        public _Ros2UrinterfacesMsgJointVoltage()
        {
        }
    }

    public sealed class Ros2UrinterfacesMsgJointVoltageCodec : global::Uwvm.RosWasm.ICodec<_Ros2UrinterfacesMsgJointVoltage>
    {
        public static readonly Ros2UrinterfacesMsgJointVoltageCodec Instance = new Ros2UrinterfacesMsgJointVoltageCodec();

        private Ros2UrinterfacesMsgJointVoltageCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "urinterfaces/msg/JointVoltage";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_9fa2179402b5dc29b898ac1321c1f6f86676300939776a6e32de4529f3776b61";
        public const int MIN_WIRE_BYTES = 60, MAX_WIRE_BYTES = 188;

        public byte[] Encode(_Ros2UrinterfacesMsgJointVoltage value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2UrinterfacesMsgJointVoltage(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2UrinterfacesMsgJointVoltage Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2UrinterfacesMsgJointVoltage value = ReadRos2UrinterfacesMsgJointVoltage(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2UrinterfacesMsgJointVoltage(_Codecs.Writer writer, _Ros2UrinterfacesMsgJointVoltage value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Std_msgsMsgHeader part0 = value.@header;
        WriteRos2Std_msgsMsgHeader(writer, part0);
        double[] part1 = value.@data;
        if(part1 == null || part1.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part1.Length; ++index)
        {
            double element = part1[index];
            writer.Float64(element);
        }
    }

    private static _Ros2UrinterfacesMsgJointVoltage ReadRos2UrinterfacesMsgJointVoltage(_Codecs.Reader reader)
    {
        var value = new _Ros2UrinterfacesMsgJointVoltage();
        value.@header = ReadRos2Std_msgsMsgHeader(reader);
        value.@data = new double[6];
        for(int index = 0; index < value.@data.Length; ++index)
            value.@data[index] = reader.Float64();
        return value;
    }

    public sealed class _Ros2UrinterfacesMsgJsonStringType
    {
        public _Ros2Std_msgsMsgString @json_string = new _Ros2Std_msgsMsgString();

        public _Ros2UrinterfacesMsgJsonStringType()
        {
        }
    }

    public sealed class Ros2UrinterfacesMsgJsonStringTypeCodec : global::Uwvm.RosWasm.ICodec<_Ros2UrinterfacesMsgJsonStringType>
    {
        public static readonly Ros2UrinterfacesMsgJsonStringTypeCodec Instance = new Ros2UrinterfacesMsgJsonStringTypeCodec();

        private Ros2UrinterfacesMsgJsonStringTypeCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "urinterfaces/msg/JsonStringType";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_05da0dcf2728cd73f875421c457804a146ceffe76e9d4619be71c2c92efdd728";
        public const int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 1028;

        public byte[] Encode(_Ros2UrinterfacesMsgJsonStringType value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2UrinterfacesMsgJsonStringType(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2UrinterfacesMsgJsonStringType Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2UrinterfacesMsgJsonStringType value = ReadRos2UrinterfacesMsgJsonStringType(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2UrinterfacesMsgJsonStringType(_Codecs.Writer writer, _Ros2UrinterfacesMsgJsonStringType value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Std_msgsMsgString part0 = value.@json_string;
        WriteRos2Std_msgsMsgString(writer, part0);
    }

    private static _Ros2UrinterfacesMsgJsonStringType ReadRos2UrinterfacesMsgJsonStringType(_Codecs.Reader reader)
    {
        var value = new _Ros2UrinterfacesMsgJsonStringType();
        value.@json_string = ReadRos2Std_msgsMsgString(reader);
        return value;
    }

    public sealed class _Ros2UrinterfacesMsgRuntimeState
    {
        public _Ros2Std_msgsMsgHeader @header = new _Ros2Std_msgsMsgHeader();
        public sbyte @data = 0;

        public _Ros2UrinterfacesMsgRuntimeState()
        {
        }
    }

    public sealed class Ros2UrinterfacesMsgRuntimeStateCodec : global::Uwvm.RosWasm.ICodec<_Ros2UrinterfacesMsgRuntimeState>
    {
        public static readonly Ros2UrinterfacesMsgRuntimeStateCodec Instance = new Ros2UrinterfacesMsgRuntimeStateCodec();

        private Ros2UrinterfacesMsgRuntimeStateCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "urinterfaces/msg/RuntimeState";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_711ca0e324cbeb36fcedea4881b8658a4b453402c410c8d3efaa57205aaf74b6";
        public const int MIN_WIRE_BYTES = 13, MAX_WIRE_BYTES = 141;

        public byte[] Encode(_Ros2UrinterfacesMsgRuntimeState value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2UrinterfacesMsgRuntimeState(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2UrinterfacesMsgRuntimeState Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2UrinterfacesMsgRuntimeState value = ReadRos2UrinterfacesMsgRuntimeState(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2UrinterfacesMsgRuntimeState(_Codecs.Writer writer, _Ros2UrinterfacesMsgRuntimeState value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Std_msgsMsgHeader part0 = value.@header;
        WriteRos2Std_msgsMsgHeader(writer, part0);
        sbyte part1 = value.@data;
        writer.Unsigned(unchecked((byte)part1), 1);
    }

    private static _Ros2UrinterfacesMsgRuntimeState ReadRos2UrinterfacesMsgRuntimeState(_Codecs.Reader reader)
    {
        var value = new _Ros2UrinterfacesMsgRuntimeState();
        value.@header = ReadRos2Std_msgsMsgHeader(reader);
        value.@data = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    public sealed class _Ros2UrinterfacesMsgSafetyStatus
    {
        public _Ros2Std_msgsMsgHeader @header = new _Ros2Std_msgsMsgHeader();
        public sbyte @data = 0;

        public _Ros2UrinterfacesMsgSafetyStatus()
        {
        }
    }

    public sealed class Ros2UrinterfacesMsgSafetyStatusCodec : global::Uwvm.RosWasm.ICodec<_Ros2UrinterfacesMsgSafetyStatus>
    {
        public static readonly Ros2UrinterfacesMsgSafetyStatusCodec Instance = new Ros2UrinterfacesMsgSafetyStatusCodec();

        private Ros2UrinterfacesMsgSafetyStatusCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "urinterfaces/msg/SafetyStatus";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_8f266e1ee8ab2ee9791ff4b52f9dae8ef982844c8d24a0bdfb4bb93cc55b78d4";
        public const int MIN_WIRE_BYTES = 13, MAX_WIRE_BYTES = 141;

        public byte[] Encode(_Ros2UrinterfacesMsgSafetyStatus value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2UrinterfacesMsgSafetyStatus(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2UrinterfacesMsgSafetyStatus Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2UrinterfacesMsgSafetyStatus value = ReadRos2UrinterfacesMsgSafetyStatus(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2UrinterfacesMsgSafetyStatus(_Codecs.Writer writer, _Ros2UrinterfacesMsgSafetyStatus value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Std_msgsMsgHeader part0 = value.@header;
        WriteRos2Std_msgsMsgHeader(writer, part0);
        sbyte part1 = value.@data;
        writer.Unsigned(unchecked((byte)part1), 1);
    }

    private static _Ros2UrinterfacesMsgSafetyStatus ReadRos2UrinterfacesMsgSafetyStatus(_Codecs.Reader reader)
    {
        var value = new _Ros2UrinterfacesMsgSafetyStatus();
        value.@header = ReadRos2Std_msgsMsgHeader(reader);
        value.@data = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    public sealed class _Ros2UrinterfacesMsgSharedVariablesEditResponse
    {
        public bool @success = false;
        public _Ros2Std_msgsMsgString @result_message = new _Ros2Std_msgsMsgString();

        public _Ros2UrinterfacesMsgSharedVariablesEditResponse()
        {
        }
    }

    public sealed class Ros2UrinterfacesMsgSharedVariablesEditResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2UrinterfacesMsgSharedVariablesEditResponse>
    {
        public static readonly Ros2UrinterfacesMsgSharedVariablesEditResponseCodec Instance = new Ros2UrinterfacesMsgSharedVariablesEditResponseCodec();

        private Ros2UrinterfacesMsgSharedVariablesEditResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "urinterfaces/msg/SharedVariablesEditResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_870ce8f649642b6edcce8ba5c7cb27818ec138d7afb2cde926638d21ea748212";
        public const int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 1029;

        public byte[] Encode(_Ros2UrinterfacesMsgSharedVariablesEditResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2UrinterfacesMsgSharedVariablesEditResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2UrinterfacesMsgSharedVariablesEditResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2UrinterfacesMsgSharedVariablesEditResponse value = ReadRos2UrinterfacesMsgSharedVariablesEditResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2UrinterfacesMsgSharedVariablesEditResponse(_Codecs.Writer writer, _Ros2UrinterfacesMsgSharedVariablesEditResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
        _Ros2Std_msgsMsgString part1 = value.@result_message;
        WriteRos2Std_msgsMsgString(writer, part1);
    }

    private static _Ros2UrinterfacesMsgSharedVariablesEditResponse ReadRos2UrinterfacesMsgSharedVariablesEditResponse(_Codecs.Reader reader)
    {
        var value = new _Ros2UrinterfacesMsgSharedVariablesEditResponse();
        value.@success = ReadBool(reader);
        value.@result_message = ReadRos2Std_msgsMsgString(reader);
        return value;
    }

    public sealed class _Ros2UrinterfacesMsgSpeedSliderFraction
    {
        public _Ros2Std_msgsMsgHeader @header = new _Ros2Std_msgsMsgHeader();
        public double @data = 0;

        public _Ros2UrinterfacesMsgSpeedSliderFraction()
        {
        }
    }

    public sealed class Ros2UrinterfacesMsgSpeedSliderFractionCodec : global::Uwvm.RosWasm.ICodec<_Ros2UrinterfacesMsgSpeedSliderFraction>
    {
        public static readonly Ros2UrinterfacesMsgSpeedSliderFractionCodec Instance = new Ros2UrinterfacesMsgSpeedSliderFractionCodec();

        private Ros2UrinterfacesMsgSpeedSliderFractionCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "urinterfaces/msg/SpeedSliderFraction";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_55158782c2bc4d4741e8f2850efddf09d27666f9c3aeeded762d8d8e4198fccd";
        public const int MIN_WIRE_BYTES = 20, MAX_WIRE_BYTES = 148;

        public byte[] Encode(_Ros2UrinterfacesMsgSpeedSliderFraction value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2UrinterfacesMsgSpeedSliderFraction(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2UrinterfacesMsgSpeedSliderFraction Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2UrinterfacesMsgSpeedSliderFraction value = ReadRos2UrinterfacesMsgSpeedSliderFraction(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2UrinterfacesMsgSpeedSliderFraction(_Codecs.Writer writer, _Ros2UrinterfacesMsgSpeedSliderFraction value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Std_msgsMsgHeader part0 = value.@header;
        WriteRos2Std_msgsMsgHeader(writer, part0);
        double part1 = value.@data;
        writer.Float64(part1);
    }

    private static _Ros2UrinterfacesMsgSpeedSliderFraction ReadRos2UrinterfacesMsgSpeedSliderFraction(_Codecs.Reader reader)
    {
        var value = new _Ros2UrinterfacesMsgSpeedSliderFraction();
        value.@header = ReadRos2Std_msgsMsgHeader(reader);
        value.@data = reader.Float64();
        return value;
    }

    public sealed class _Ros2UrinterfacesMsgTCPState
    {
        public _Ros2Std_msgsMsgHeader @header = new _Ros2Std_msgsMsgHeader();
        public _Ros2Geometry_msgsMsgPose @pose = new _Ros2Geometry_msgsMsgPose();
        public _Ros2Geometry_msgsMsgTwist @speed = new _Ros2Geometry_msgsMsgTwist();

        public _Ros2UrinterfacesMsgTCPState()
        {
        }
    }

    public sealed class Ros2UrinterfacesMsgTCPStateCodec : global::Uwvm.RosWasm.ICodec<_Ros2UrinterfacesMsgTCPState>
    {
        public static readonly Ros2UrinterfacesMsgTCPStateCodec Instance = new Ros2UrinterfacesMsgTCPStateCodec();

        private Ros2UrinterfacesMsgTCPStateCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "urinterfaces/msg/TCPState";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_49d8f678cc32669dd81528bb4c5d97f28019745159ef5e7267c8a076cd315b92";
        public const int MIN_WIRE_BYTES = 116, MAX_WIRE_BYTES = 244;

        public byte[] Encode(_Ros2UrinterfacesMsgTCPState value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2UrinterfacesMsgTCPState(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2UrinterfacesMsgTCPState Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2UrinterfacesMsgTCPState value = ReadRos2UrinterfacesMsgTCPState(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2UrinterfacesMsgTCPState(_Codecs.Writer writer, _Ros2UrinterfacesMsgTCPState value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Std_msgsMsgHeader part0 = value.@header;
        WriteRos2Std_msgsMsgHeader(writer, part0);
        _Ros2Geometry_msgsMsgPose part1 = value.@pose;
        WriteRos2Geometry_msgsMsgPose(writer, part1);
        _Ros2Geometry_msgsMsgTwist part2 = value.@speed;
        WriteRos2Geometry_msgsMsgTwist(writer, part2);
    }

    private static _Ros2UrinterfacesMsgTCPState ReadRos2UrinterfacesMsgTCPState(_Codecs.Reader reader)
    {
        var value = new _Ros2UrinterfacesMsgTCPState();
        value.@header = ReadRos2Std_msgsMsgHeader(reader);
        value.@pose = ReadRos2Geometry_msgsMsgPose(reader);
        value.@speed = ReadRos2Geometry_msgsMsgTwist(reader);
        return value;
    }

    public sealed class _Ros2UrinterfacesMsgToolOutputMode
    {
        public _Ros2Std_msgsMsgHeader @header = new _Ros2Std_msgsMsgHeader();
        public byte @output_mode = 0;
        public byte[] @output_pin_mode = new byte[2];

        public _Ros2UrinterfacesMsgToolOutputMode()
        {
        }
    }

    public sealed class Ros2UrinterfacesMsgToolOutputModeCodec : global::Uwvm.RosWasm.ICodec<_Ros2UrinterfacesMsgToolOutputMode>
    {
        public static readonly Ros2UrinterfacesMsgToolOutputModeCodec Instance = new Ros2UrinterfacesMsgToolOutputModeCodec();

        private Ros2UrinterfacesMsgToolOutputModeCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "urinterfaces/msg/ToolOutputMode";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_21df545459050dc86de1fb111c9a4b2c8bb50c3729137b8d5c5134dd33b84660";
        public const int MIN_WIRE_BYTES = 15, MAX_WIRE_BYTES = 143;

        public byte[] Encode(_Ros2UrinterfacesMsgToolOutputMode value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2UrinterfacesMsgToolOutputMode(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2UrinterfacesMsgToolOutputMode Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2UrinterfacesMsgToolOutputMode value = ReadRos2UrinterfacesMsgToolOutputMode(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2UrinterfacesMsgToolOutputMode(_Codecs.Writer writer, _Ros2UrinterfacesMsgToolOutputMode value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Std_msgsMsgHeader part0 = value.@header;
        WriteRos2Std_msgsMsgHeader(writer, part0);
        byte part1 = value.@output_mode;
        writer.Unsigned(part1, 1);
        byte[] part2 = value.@output_pin_mode;
        if(part2 == null || part2.Length != 2)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part2.Length; ++index)
        {
            byte element = part2[index];
            writer.Unsigned(element, 1);
        }
    }

    private static _Ros2UrinterfacesMsgToolOutputMode ReadRos2UrinterfacesMsgToolOutputMode(_Codecs.Reader reader)
    {
        var value = new _Ros2UrinterfacesMsgToolOutputMode();
        value.@header = ReadRos2Std_msgsMsgHeader(reader);
        value.@output_mode = unchecked((byte)reader.Unsigned(1));
        value.@output_pin_mode = new byte[2];
        for(int index = 0; index < value.@output_pin_mode.Length; ++index)
            value.@output_pin_mode[index] = unchecked((byte)reader.Unsigned(1));
        return value;
    }

    public sealed class _Ros2UrinterfacesMsgVariableUpdate
    {
        public _Ros2Std_msgsMsgHeader @header = new _Ros2Std_msgsMsgHeader();
        public _Ros2UrinterfacesMsgJsonStringType @data = new _Ros2UrinterfacesMsgJsonStringType();

        public _Ros2UrinterfacesMsgVariableUpdate()
        {
        }
    }

    public sealed class Ros2UrinterfacesMsgVariableUpdateCodec : global::Uwvm.RosWasm.ICodec<_Ros2UrinterfacesMsgVariableUpdate>
    {
        public static readonly Ros2UrinterfacesMsgVariableUpdateCodec Instance = new Ros2UrinterfacesMsgVariableUpdateCodec();

        private Ros2UrinterfacesMsgVariableUpdateCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "urinterfaces/msg/VariableUpdate";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_7028ea5c674be886f4fac1d2ac0452167489f2c23d7ea759cdbec90feccbdb20";
        public const int MIN_WIRE_BYTES = 16, MAX_WIRE_BYTES = 1168;

        public byte[] Encode(_Ros2UrinterfacesMsgVariableUpdate value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2UrinterfacesMsgVariableUpdate(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2UrinterfacesMsgVariableUpdate Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2UrinterfacesMsgVariableUpdate value = ReadRos2UrinterfacesMsgVariableUpdate(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2UrinterfacesMsgVariableUpdate(_Codecs.Writer writer, _Ros2UrinterfacesMsgVariableUpdate value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Std_msgsMsgHeader part0 = value.@header;
        WriteRos2Std_msgsMsgHeader(writer, part0);
        _Ros2UrinterfacesMsgJsonStringType part1 = value.@data;
        WriteRos2UrinterfacesMsgJsonStringType(writer, part1);
    }

    private static _Ros2UrinterfacesMsgVariableUpdate ReadRos2UrinterfacesMsgVariableUpdate(_Codecs.Reader reader)
    {
        var value = new _Ros2UrinterfacesMsgVariableUpdate();
        value.@header = ReadRos2Std_msgsMsgHeader(reader);
        value.@data = ReadRos2UrinterfacesMsgJsonStringType(reader);
        return value;
    }

    public sealed class _Ros2UrinterfacesMsgVoltageCurrentStamped
    {
        public _Ros2Std_msgsMsgHeader @header = new _Ros2Std_msgsMsgHeader();
        public double @voltage = 0;
        public double @current = 0;

        public _Ros2UrinterfacesMsgVoltageCurrentStamped()
        {
        }
    }

    public sealed class Ros2UrinterfacesMsgVoltageCurrentStampedCodec : global::Uwvm.RosWasm.ICodec<_Ros2UrinterfacesMsgVoltageCurrentStamped>
    {
        public static readonly Ros2UrinterfacesMsgVoltageCurrentStampedCodec Instance = new Ros2UrinterfacesMsgVoltageCurrentStampedCodec();

        private Ros2UrinterfacesMsgVoltageCurrentStampedCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "urinterfaces/msg/VoltageCurrentStamped";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_bcc3f6871a7bf0ff691d0c9c1b6596a633597de795b486c2b82ac922ede76805";
        public const int MIN_WIRE_BYTES = 28, MAX_WIRE_BYTES = 156;

        public byte[] Encode(_Ros2UrinterfacesMsgVoltageCurrentStamped value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2UrinterfacesMsgVoltageCurrentStamped(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2UrinterfacesMsgVoltageCurrentStamped Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2UrinterfacesMsgVoltageCurrentStamped value = ReadRos2UrinterfacesMsgVoltageCurrentStamped(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2UrinterfacesMsgVoltageCurrentStamped(_Codecs.Writer writer, _Ros2UrinterfacesMsgVoltageCurrentStamped value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Std_msgsMsgHeader part0 = value.@header;
        WriteRos2Std_msgsMsgHeader(writer, part0);
        double part1 = value.@voltage;
        writer.Float64(part1);
        double part2 = value.@current;
        writer.Float64(part2);
    }

    private static _Ros2UrinterfacesMsgVoltageCurrentStamped ReadRos2UrinterfacesMsgVoltageCurrentStamped(_Codecs.Reader reader)
    {
        var value = new _Ros2UrinterfacesMsgVoltageCurrentStamped();
        value.@header = ReadRos2Std_msgsMsgHeader(reader);
        value.@voltage = reader.Float64();
        value.@current = reader.Float64();
        return value;
    }

    public sealed class _Ros2UrinterfacesMsgWorldModelNames
    {
        public _Ros2Std_msgsMsgHeader @header = new _Ros2Std_msgsMsgHeader();
        public _Ros2Std_msgsMsgString[] @data = new _Ros2Std_msgsMsgString[0];

        public _Ros2UrinterfacesMsgWorldModelNames()
        {
        }
    }

    public sealed class Ros2UrinterfacesMsgWorldModelNamesCodec : global::Uwvm.RosWasm.ICodec<_Ros2UrinterfacesMsgWorldModelNames>
    {
        public static readonly Ros2UrinterfacesMsgWorldModelNamesCodec Instance = new Ros2UrinterfacesMsgWorldModelNamesCodec();

        private Ros2UrinterfacesMsgWorldModelNamesCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "urinterfaces/msg/WorldModelNames";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_499f722fc97565bd0124888d7c20f4e9f8947893c49b1608dcf201fe3538d7a9";
        public const int MIN_WIRE_BYTES = 16, MAX_WIRE_BYTES = 16592;

        public byte[] Encode(_Ros2UrinterfacesMsgWorldModelNames value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2UrinterfacesMsgWorldModelNames(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2UrinterfacesMsgWorldModelNames Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2UrinterfacesMsgWorldModelNames value = ReadRos2UrinterfacesMsgWorldModelNames(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2UrinterfacesMsgWorldModelNames(_Codecs.Writer writer, _Ros2UrinterfacesMsgWorldModelNames value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Std_msgsMsgHeader part0 = value.@header;
        WriteRos2Std_msgsMsgHeader(writer, part0);
        _Ros2Std_msgsMsgString[] part1 = value.@data;
        if(part1 == null || part1.Length > 16)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part1.Length, 4);
        for(int index = 0; index < part1.Length; ++index)
        {
            _Ros2Std_msgsMsgString element = part1[index];
            WriteRos2Std_msgsMsgString(writer, element);
        }
    }

    private static _Ros2UrinterfacesMsgWorldModelNames ReadRos2UrinterfacesMsgWorldModelNames(_Codecs.Reader reader)
    {
        var value = new _Ros2UrinterfacesMsgWorldModelNames();
        value.@header = ReadRos2Std_msgsMsgHeader(reader);
        value.@data = new _Ros2Std_msgsMsgString[ReadCount(reader, 16, 4)];
        for(int index = 0; index < value.@data.Length; ++index)
            value.@data[index] = ReadRos2Std_msgsMsgString(reader);
        return value;
    }

    public sealed class _Ros2UrinterfacesSrvSetAnalogOutput_Request
    {
        public _Ros2UrinterfacesMsgAnalog[] @data = new _Ros2UrinterfacesMsgAnalog[0];

        public _Ros2UrinterfacesSrvSetAnalogOutput_Request()
        {
        }
    }

    public sealed class Ros2UrinterfacesSrvSetAnalogOutput_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2UrinterfacesSrvSetAnalogOutput_Request>
    {
        public static readonly Ros2UrinterfacesSrvSetAnalogOutput_RequestCodec Instance = new Ros2UrinterfacesSrvSetAnalogOutput_RequestCodec();

        private Ros2UrinterfacesSrvSetAnalogOutput_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "urinterfaces/srv/SetAnalogOutput_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_8be07a94dd334a03871180a9c73bab11377664e60500ac68d312398d51acd32d";
        public const int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 100;

        public byte[] Encode(_Ros2UrinterfacesSrvSetAnalogOutput_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2UrinterfacesSrvSetAnalogOutput_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2UrinterfacesSrvSetAnalogOutput_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2UrinterfacesSrvSetAnalogOutput_Request value = ReadRos2UrinterfacesSrvSetAnalogOutput_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2UrinterfacesSrvSetAnalogOutput_Request(_Codecs.Writer writer, _Ros2UrinterfacesSrvSetAnalogOutput_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2UrinterfacesMsgAnalog[] part0 = value.@data;
        if(part0 == null || part0.Length > 16)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part0.Length, 4);
        for(int index = 0; index < part0.Length; ++index)
        {
            _Ros2UrinterfacesMsgAnalog element = part0[index];
            WriteRos2UrinterfacesMsgAnalog(writer, element);
        }
    }

    private static _Ros2UrinterfacesSrvSetAnalogOutput_Request ReadRos2UrinterfacesSrvSetAnalogOutput_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2UrinterfacesSrvSetAnalogOutput_Request();
        value.@data = new _Ros2UrinterfacesMsgAnalog[ReadCount(reader, 16, 6)];
        for(int index = 0; index < value.@data.Length; ++index)
            value.@data[index] = ReadRos2UrinterfacesMsgAnalog(reader);
        return value;
    }

    public sealed class _Ros2UrinterfacesSrvSetAnalogOutput_Response
    {
        public bool @success = false;

        public _Ros2UrinterfacesSrvSetAnalogOutput_Response()
        {
        }
    }

    public sealed class Ros2UrinterfacesSrvSetAnalogOutput_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2UrinterfacesSrvSetAnalogOutput_Response>
    {
        public static readonly Ros2UrinterfacesSrvSetAnalogOutput_ResponseCodec Instance = new Ros2UrinterfacesSrvSetAnalogOutput_ResponseCodec();

        private Ros2UrinterfacesSrvSetAnalogOutput_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "urinterfaces/srv/SetAnalogOutput_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_14016138286129e4f155ac2f82f5573e8a4af7d7c5ede55ce57f3ad76cb82e4e";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros2UrinterfacesSrvSetAnalogOutput_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2UrinterfacesSrvSetAnalogOutput_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2UrinterfacesSrvSetAnalogOutput_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2UrinterfacesSrvSetAnalogOutput_Response value = ReadRos2UrinterfacesSrvSetAnalogOutput_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2UrinterfacesSrvSetAnalogOutput_Response(_Codecs.Writer writer, _Ros2UrinterfacesSrvSetAnalogOutput_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros2UrinterfacesSrvSetAnalogOutput_Response ReadRos2UrinterfacesSrvSetAnalogOutput_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2UrinterfacesSrvSetAnalogOutput_Response();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2UrinterfacesSrvSetDigitalOutput_Request
    {
        public _Ros2UrinterfacesMsgDigital[] @data = new _Ros2UrinterfacesMsgDigital[0];

        public _Ros2UrinterfacesSrvSetDigitalOutput_Request()
        {
        }
    }

    public sealed class Ros2UrinterfacesSrvSetDigitalOutput_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2UrinterfacesSrvSetDigitalOutput_Request>
    {
        public static readonly Ros2UrinterfacesSrvSetDigitalOutput_RequestCodec Instance = new Ros2UrinterfacesSrvSetDigitalOutput_RequestCodec();

        private Ros2UrinterfacesSrvSetDigitalOutput_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "urinterfaces/srv/SetDigitalOutput_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_ec6c587810af7f3d04b10058e69c8095775e8b6feede5fc0f60ca1dfda0b5e47";
        public const int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 36;

        public byte[] Encode(_Ros2UrinterfacesSrvSetDigitalOutput_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2UrinterfacesSrvSetDigitalOutput_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2UrinterfacesSrvSetDigitalOutput_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2UrinterfacesSrvSetDigitalOutput_Request value = ReadRos2UrinterfacesSrvSetDigitalOutput_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2UrinterfacesSrvSetDigitalOutput_Request(_Codecs.Writer writer, _Ros2UrinterfacesSrvSetDigitalOutput_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2UrinterfacesMsgDigital[] part0 = value.@data;
        if(part0 == null || part0.Length > 16)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part0.Length, 4);
        for(int index = 0; index < part0.Length; ++index)
        {
            _Ros2UrinterfacesMsgDigital element = part0[index];
            WriteRos2UrinterfacesMsgDigital(writer, element);
        }
    }

    private static _Ros2UrinterfacesSrvSetDigitalOutput_Request ReadRos2UrinterfacesSrvSetDigitalOutput_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2UrinterfacesSrvSetDigitalOutput_Request();
        value.@data = new _Ros2UrinterfacesMsgDigital[ReadCount(reader, 16, 2)];
        for(int index = 0; index < value.@data.Length; ++index)
            value.@data[index] = ReadRos2UrinterfacesMsgDigital(reader);
        return value;
    }

    public sealed class _Ros2UrinterfacesSrvSetDigitalOutput_Response
    {
        public bool @success = false;

        public _Ros2UrinterfacesSrvSetDigitalOutput_Response()
        {
        }
    }

    public sealed class Ros2UrinterfacesSrvSetDigitalOutput_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2UrinterfacesSrvSetDigitalOutput_Response>
    {
        public static readonly Ros2UrinterfacesSrvSetDigitalOutput_ResponseCodec Instance = new Ros2UrinterfacesSrvSetDigitalOutput_ResponseCodec();

        private Ros2UrinterfacesSrvSetDigitalOutput_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "urinterfaces/srv/SetDigitalOutput_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_0c5f0b8a7f1d14c6223838c3a28cb2236848b81ecfda29d2b704557579e9162d";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros2UrinterfacesSrvSetDigitalOutput_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2UrinterfacesSrvSetDigitalOutput_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2UrinterfacesSrvSetDigitalOutput_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2UrinterfacesSrvSetDigitalOutput_Response value = ReadRos2UrinterfacesSrvSetDigitalOutput_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2UrinterfacesSrvSetDigitalOutput_Response(_Codecs.Writer writer, _Ros2UrinterfacesSrvSetDigitalOutput_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros2UrinterfacesSrvSetDigitalOutput_Response ReadRos2UrinterfacesSrvSetDigitalOutput_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2UrinterfacesSrvSetDigitalOutput_Response();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2UrinterfacesSrvSetSpeedFraction_Request
    {
        public float @value = 0;

        public _Ros2UrinterfacesSrvSetSpeedFraction_Request()
        {
        }
    }

    public sealed class Ros2UrinterfacesSrvSetSpeedFraction_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2UrinterfacesSrvSetSpeedFraction_Request>
    {
        public static readonly Ros2UrinterfacesSrvSetSpeedFraction_RequestCodec Instance = new Ros2UrinterfacesSrvSetSpeedFraction_RequestCodec();

        private Ros2UrinterfacesSrvSetSpeedFraction_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "urinterfaces/srv/SetSpeedFraction_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_21fca7e952e32f24c905094c09776968c8cd80b7712a03de7c2a693ea79a7d63";
        public const int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 4;

        public byte[] Encode(_Ros2UrinterfacesSrvSetSpeedFraction_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2UrinterfacesSrvSetSpeedFraction_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2UrinterfacesSrvSetSpeedFraction_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2UrinterfacesSrvSetSpeedFraction_Request value = ReadRos2UrinterfacesSrvSetSpeedFraction_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2UrinterfacesSrvSetSpeedFraction_Request(_Codecs.Writer writer, _Ros2UrinterfacesSrvSetSpeedFraction_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        float part0 = value.@value;
        WriteFloat32(writer, part0);
    }

    private static _Ros2UrinterfacesSrvSetSpeedFraction_Request ReadRos2UrinterfacesSrvSetSpeedFraction_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2UrinterfacesSrvSetSpeedFraction_Request();
        value.@value = ReadFloat32(reader);
        return value;
    }

    public sealed class _Ros2UrinterfacesSrvSetSpeedFraction_Response
    {
        public bool @success = false;

        public _Ros2UrinterfacesSrvSetSpeedFraction_Response()
        {
        }
    }

    public sealed class Ros2UrinterfacesSrvSetSpeedFraction_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2UrinterfacesSrvSetSpeedFraction_Response>
    {
        public static readonly Ros2UrinterfacesSrvSetSpeedFraction_ResponseCodec Instance = new Ros2UrinterfacesSrvSetSpeedFraction_ResponseCodec();

        private Ros2UrinterfacesSrvSetSpeedFraction_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "urinterfaces/srv/SetSpeedFraction_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_386b067db70c17a88297d005650f6a05c0fb72eb5ee142a25c3e51c70b80c6e6";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros2UrinterfacesSrvSetSpeedFraction_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2UrinterfacesSrvSetSpeedFraction_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2UrinterfacesSrvSetSpeedFraction_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2UrinterfacesSrvSetSpeedFraction_Response value = ReadRos2UrinterfacesSrvSetSpeedFraction_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2UrinterfacesSrvSetSpeedFraction_Response(_Codecs.Writer writer, _Ros2UrinterfacesSrvSetSpeedFraction_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros2UrinterfacesSrvSetSpeedFraction_Response ReadRos2UrinterfacesSrvSetSpeedFraction_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2UrinterfacesSrvSetSpeedFraction_Response();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2UrinterfacesSrvSharedVariablesEditor_Request
    {
        public _Ros2UrinterfacesMsgJsonStringType @request = new _Ros2UrinterfacesMsgJsonStringType();

        public _Ros2UrinterfacesSrvSharedVariablesEditor_Request()
        {
        }
    }

    public sealed class Ros2UrinterfacesSrvSharedVariablesEditor_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2UrinterfacesSrvSharedVariablesEditor_Request>
    {
        public static readonly Ros2UrinterfacesSrvSharedVariablesEditor_RequestCodec Instance = new Ros2UrinterfacesSrvSharedVariablesEditor_RequestCodec();

        private Ros2UrinterfacesSrvSharedVariablesEditor_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "urinterfaces/srv/SharedVariablesEditor_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_c32d00237370b2eeb596c76bd9cda1ccfcab7618c71dec77d273f712462f5fa3";
        public const int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 1028;

        public byte[] Encode(_Ros2UrinterfacesSrvSharedVariablesEditor_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2UrinterfacesSrvSharedVariablesEditor_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2UrinterfacesSrvSharedVariablesEditor_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2UrinterfacesSrvSharedVariablesEditor_Request value = ReadRos2UrinterfacesSrvSharedVariablesEditor_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2UrinterfacesSrvSharedVariablesEditor_Request(_Codecs.Writer writer, _Ros2UrinterfacesSrvSharedVariablesEditor_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2UrinterfacesMsgJsonStringType part0 = value.@request;
        WriteRos2UrinterfacesMsgJsonStringType(writer, part0);
    }

    private static _Ros2UrinterfacesSrvSharedVariablesEditor_Request ReadRos2UrinterfacesSrvSharedVariablesEditor_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2UrinterfacesSrvSharedVariablesEditor_Request();
        value.@request = ReadRos2UrinterfacesMsgJsonStringType(reader);
        return value;
    }

    public sealed class _Ros2UrinterfacesSrvSharedVariablesEditor_Response
    {
        public _Ros2UrinterfacesMsgSharedVariablesEditResponse @response = new _Ros2UrinterfacesMsgSharedVariablesEditResponse();

        public _Ros2UrinterfacesSrvSharedVariablesEditor_Response()
        {
        }
    }

    public sealed class Ros2UrinterfacesSrvSharedVariablesEditor_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2UrinterfacesSrvSharedVariablesEditor_Response>
    {
        public static readonly Ros2UrinterfacesSrvSharedVariablesEditor_ResponseCodec Instance = new Ros2UrinterfacesSrvSharedVariablesEditor_ResponseCodec();

        private Ros2UrinterfacesSrvSharedVariablesEditor_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "urinterfaces/srv/SharedVariablesEditor_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_4134f7ed9715b3f6e3fd7ecca44fcae67cdd5dc2fa432b07ab75485901d1d5ea";
        public const int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 1029;

        public byte[] Encode(_Ros2UrinterfacesSrvSharedVariablesEditor_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2UrinterfacesSrvSharedVariablesEditor_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2UrinterfacesSrvSharedVariablesEditor_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2UrinterfacesSrvSharedVariablesEditor_Response value = ReadRos2UrinterfacesSrvSharedVariablesEditor_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2UrinterfacesSrvSharedVariablesEditor_Response(_Codecs.Writer writer, _Ros2UrinterfacesSrvSharedVariablesEditor_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2UrinterfacesMsgSharedVariablesEditResponse part0 = value.@response;
        WriteRos2UrinterfacesMsgSharedVariablesEditResponse(writer, part0);
    }

    private static _Ros2UrinterfacesSrvSharedVariablesEditor_Response ReadRos2UrinterfacesSrvSharedVariablesEditor_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2UrinterfacesSrvSharedVariablesEditor_Response();
        value.@response = ReadRos2UrinterfacesMsgSharedVariablesEditResponse(reader);
        return value;
    }

    public sealed class _Ros2UrinterfacesSrvVariablesViewer_Request
    {
        public _Ros2UrinterfacesSrvVariablesViewer_Request()
        {
        }
    }

    public sealed class Ros2UrinterfacesSrvVariablesViewer_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2UrinterfacesSrvVariablesViewer_Request>
    {
        public static readonly Ros2UrinterfacesSrvVariablesViewer_RequestCodec Instance = new Ros2UrinterfacesSrvVariablesViewer_RequestCodec();

        private Ros2UrinterfacesSrvVariablesViewer_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "urinterfaces/srv/VariablesViewer_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_6ecb0db6328d813bfb987ae987d3b7f2c6913dba2cf2a62f644a8eb2f760152a";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public byte[] Encode(_Ros2UrinterfacesSrvVariablesViewer_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2UrinterfacesSrvVariablesViewer_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2UrinterfacesSrvVariablesViewer_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2UrinterfacesSrvVariablesViewer_Request value = ReadRos2UrinterfacesSrvVariablesViewer_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2UrinterfacesSrvVariablesViewer_Request(_Codecs.Writer writer, _Ros2UrinterfacesSrvVariablesViewer_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    private static _Ros2UrinterfacesSrvVariablesViewer_Request ReadRos2UrinterfacesSrvVariablesViewer_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2UrinterfacesSrvVariablesViewer_Request();
        return value;
    }

    public sealed class _Ros2UrinterfacesSrvVariablesViewer_Response
    {
        public _Ros2UrinterfacesMsgVariableUpdate @response = new _Ros2UrinterfacesMsgVariableUpdate();

        public _Ros2UrinterfacesSrvVariablesViewer_Response()
        {
        }
    }

    public sealed class Ros2UrinterfacesSrvVariablesViewer_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2UrinterfacesSrvVariablesViewer_Response>
    {
        public static readonly Ros2UrinterfacesSrvVariablesViewer_ResponseCodec Instance = new Ros2UrinterfacesSrvVariablesViewer_ResponseCodec();

        private Ros2UrinterfacesSrvVariablesViewer_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "urinterfaces/srv/VariablesViewer_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_e8cb16ca847189ac38c0d972afbdd2208d8641c29a0ee0cce8284e9e0dd249a2";
        public const int MIN_WIRE_BYTES = 16, MAX_WIRE_BYTES = 1168;

        public byte[] Encode(_Ros2UrinterfacesSrvVariablesViewer_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2UrinterfacesSrvVariablesViewer_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2UrinterfacesSrvVariablesViewer_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2UrinterfacesSrvVariablesViewer_Response value = ReadRos2UrinterfacesSrvVariablesViewer_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2UrinterfacesSrvVariablesViewer_Response(_Codecs.Writer writer, _Ros2UrinterfacesSrvVariablesViewer_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2UrinterfacesMsgVariableUpdate part0 = value.@response;
        WriteRos2UrinterfacesMsgVariableUpdate(writer, part0);
    }

    private static _Ros2UrinterfacesSrvVariablesViewer_Response ReadRos2UrinterfacesSrvVariablesViewer_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2UrinterfacesSrvVariablesViewer_Response();
        value.@response = ReadRos2UrinterfacesMsgVariableUpdate(reader);
        return value;
    }
}
