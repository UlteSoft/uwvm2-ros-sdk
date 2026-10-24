/**
 * @file BoundedRecords.cs
 * @brief Complete universal_robots values and adapters for the selected original interface catalog.
 * @details Retain original field order, scalar widths, array capacities, string bounds, constants and declared
 * defaults. Pure value access and canonical codecs create no native ROS allocation or resource grant. Transport
 * roles require the separately admitted SDK owner.
 * @see share/platform/universal_robots/domains/universal-robots-ros2-complete.ir.json
 * @see document/platform/universal_robots/en_US/README.md
 */

// Generated complete canonical records; no native ABI, CDR or ROS grant.
#nullable enable
using System;
using _Codecs = global::Uwvm.RosWasm.Codecs;
namespace Uwvm.UniversalRobotsUniversalRobotsRos2Complete.Models;

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

    public sealed class _Ros2Builtin_interfacesMsgDuration
    {
        public int @sec = 0;
        public uint @nanosec = 0;

        public _Ros2Builtin_interfacesMsgDuration()
        {
        }
    }

    public sealed class Ros2Builtin_interfacesMsgDurationCodec : global::Uwvm.RosWasm.ICodec<_Ros2Builtin_interfacesMsgDuration>
    {
        public static readonly Ros2Builtin_interfacesMsgDurationCodec Instance = new Ros2Builtin_interfacesMsgDurationCodec();

        private Ros2Builtin_interfacesMsgDurationCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "builtin_interfaces/msg/Duration";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_3804444fae7a82a57907d25c2c3dc54d9a42dcd305f41ca073b1221dca7d36e4";
        public const int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 8;

        public byte[] Encode(_Ros2Builtin_interfacesMsgDuration value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Builtin_interfacesMsgDuration(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Builtin_interfacesMsgDuration Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Builtin_interfacesMsgDuration value = ReadRos2Builtin_interfacesMsgDuration(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Builtin_interfacesMsgDuration(_Codecs.Writer writer, _Ros2Builtin_interfacesMsgDuration value)
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

    private static _Ros2Builtin_interfacesMsgDuration ReadRos2Builtin_interfacesMsgDuration(_Codecs.Reader reader)
    {
        var value = new _Ros2Builtin_interfacesMsgDuration();
        value.@sec = unchecked((int)reader.Unsigned(4));
        value.@nanosec = unchecked((uint)reader.Unsigned(4));
        if((long)value.@nanosec < 0 || (long)value.@nanosec >= 1000000000L)
            throw new ArgumentException("normalized subsecond field required");
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

    public sealed class _Ros2Control_msgsMsgJointTolerance
    {
        public string @name = "";
        public double @position = 0;
        public double @velocity = 0;
        public double @acceleration = 0;

        public _Ros2Control_msgsMsgJointTolerance()
        {
        }
    }

    public sealed class Ros2Control_msgsMsgJointToleranceCodec : global::Uwvm.RosWasm.ICodec<_Ros2Control_msgsMsgJointTolerance>
    {
        public static readonly Ros2Control_msgsMsgJointToleranceCodec Instance = new Ros2Control_msgsMsgJointToleranceCodec();

        private Ros2Control_msgsMsgJointToleranceCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "control_msgs/msg/JointTolerance";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_3864af88029b3b1f51907b3da63d2d821104c29b9469a146a5a34f73f3598b8a";
        public const int MIN_WIRE_BYTES = 28, MAX_WIRE_BYTES = 156;

        public byte[] Encode(_Ros2Control_msgsMsgJointTolerance value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Control_msgsMsgJointTolerance(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Control_msgsMsgJointTolerance Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Control_msgsMsgJointTolerance value = ReadRos2Control_msgsMsgJointTolerance(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Control_msgsMsgJointTolerance(_Codecs.Writer writer, _Ros2Control_msgsMsgJointTolerance value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        string part0 = value.@name;
        WriteText(writer, part0, 128);
        double part1 = value.@position;
        writer.Float64(part1);
        double part2 = value.@velocity;
        writer.Float64(part2);
        double part3 = value.@acceleration;
        writer.Float64(part3);
    }

    private static _Ros2Control_msgsMsgJointTolerance ReadRos2Control_msgsMsgJointTolerance(_Codecs.Reader reader)
    {
        var value = new _Ros2Control_msgsMsgJointTolerance();
        value.@name = ReadText(reader, 128);
        value.@position = reader.Float64();
        value.@velocity = reader.Float64();
        value.@acceleration = reader.Float64();
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

    public sealed class _Ros2Geometry_msgsMsgPoseStamped
    {
        public _Ros2Std_msgsMsgHeader @header = new _Ros2Std_msgsMsgHeader();
        public _Ros2Geometry_msgsMsgPose @pose = new _Ros2Geometry_msgsMsgPose();

        public _Ros2Geometry_msgsMsgPoseStamped()
        {
        }
    }

    public sealed class Ros2Geometry_msgsMsgPoseStampedCodec : global::Uwvm.RosWasm.ICodec<_Ros2Geometry_msgsMsgPoseStamped>
    {
        public static readonly Ros2Geometry_msgsMsgPoseStampedCodec Instance = new Ros2Geometry_msgsMsgPoseStampedCodec();

        private Ros2Geometry_msgsMsgPoseStampedCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "geometry_msgs/msg/PoseStamped";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_71abdc844f18f02f45a354967a5f1c644fb20dc14cbc61c64aa41b927e0712a2";
        public const int MIN_WIRE_BYTES = 68, MAX_WIRE_BYTES = 196;

        public byte[] Encode(_Ros2Geometry_msgsMsgPoseStamped value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Geometry_msgsMsgPoseStamped(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Geometry_msgsMsgPoseStamped Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Geometry_msgsMsgPoseStamped value = ReadRos2Geometry_msgsMsgPoseStamped(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Geometry_msgsMsgPoseStamped(_Codecs.Writer writer, _Ros2Geometry_msgsMsgPoseStamped value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Std_msgsMsgHeader part0 = value.@header;
        WriteRos2Std_msgsMsgHeader(writer, part0);
        _Ros2Geometry_msgsMsgPose part1 = value.@pose;
        WriteRos2Geometry_msgsMsgPose(writer, part1);
    }

    private static _Ros2Geometry_msgsMsgPoseStamped ReadRos2Geometry_msgsMsgPoseStamped(_Codecs.Reader reader)
    {
        var value = new _Ros2Geometry_msgsMsgPoseStamped();
        value.@header = ReadRos2Std_msgsMsgHeader(reader);
        value.@pose = ReadRos2Geometry_msgsMsgPose(reader);
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

    public sealed class _Ros2Geometry_msgsMsgVector3Stamped
    {
        public _Ros2Std_msgsMsgHeader @header = new _Ros2Std_msgsMsgHeader();
        public _Ros2Geometry_msgsMsgVector3 @vector = new _Ros2Geometry_msgsMsgVector3();

        public _Ros2Geometry_msgsMsgVector3Stamped()
        {
        }
    }

    public sealed class Ros2Geometry_msgsMsgVector3StampedCodec : global::Uwvm.RosWasm.ICodec<_Ros2Geometry_msgsMsgVector3Stamped>
    {
        public static readonly Ros2Geometry_msgsMsgVector3StampedCodec Instance = new Ros2Geometry_msgsMsgVector3StampedCodec();

        private Ros2Geometry_msgsMsgVector3StampedCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "geometry_msgs/msg/Vector3Stamped";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_c6b67646d3fc6d29c195637ea353dafa7085b2bdb55a15a8b65009200b5ed31b";
        public const int MIN_WIRE_BYTES = 36, MAX_WIRE_BYTES = 164;

        public byte[] Encode(_Ros2Geometry_msgsMsgVector3Stamped value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Geometry_msgsMsgVector3Stamped(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Geometry_msgsMsgVector3Stamped Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Geometry_msgsMsgVector3Stamped value = ReadRos2Geometry_msgsMsgVector3Stamped(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Geometry_msgsMsgVector3Stamped(_Codecs.Writer writer, _Ros2Geometry_msgsMsgVector3Stamped value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Std_msgsMsgHeader part0 = value.@header;
        WriteRos2Std_msgsMsgHeader(writer, part0);
        _Ros2Geometry_msgsMsgVector3 part1 = value.@vector;
        WriteRos2Geometry_msgsMsgVector3(writer, part1);
    }

    private static _Ros2Geometry_msgsMsgVector3Stamped ReadRos2Geometry_msgsMsgVector3Stamped(_Codecs.Reader reader)
    {
        var value = new _Ros2Geometry_msgsMsgVector3Stamped();
        value.@header = ReadRos2Std_msgsMsgHeader(reader);
        value.@vector = ReadRos2Geometry_msgsMsgVector3(reader);
        return value;
    }

    public sealed class _Ros2Geometry_msgsMsgWrench
    {
        public _Ros2Geometry_msgsMsgVector3 @force = new _Ros2Geometry_msgsMsgVector3();
        public _Ros2Geometry_msgsMsgVector3 @torque = new _Ros2Geometry_msgsMsgVector3();

        public _Ros2Geometry_msgsMsgWrench()
        {
        }
    }

    public sealed class Ros2Geometry_msgsMsgWrenchCodec : global::Uwvm.RosWasm.ICodec<_Ros2Geometry_msgsMsgWrench>
    {
        public static readonly Ros2Geometry_msgsMsgWrenchCodec Instance = new Ros2Geometry_msgsMsgWrenchCodec();

        private Ros2Geometry_msgsMsgWrenchCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "geometry_msgs/msg/Wrench";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_fdfdf2474c0129b0ce1f85972cc87fd80478ac7d2429d9de1ec58951a82a11b6";
        public const int MIN_WIRE_BYTES = 48, MAX_WIRE_BYTES = 48;

        public byte[] Encode(_Ros2Geometry_msgsMsgWrench value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Geometry_msgsMsgWrench(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Geometry_msgsMsgWrench Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Geometry_msgsMsgWrench value = ReadRos2Geometry_msgsMsgWrench(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Geometry_msgsMsgWrench(_Codecs.Writer writer, _Ros2Geometry_msgsMsgWrench value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Geometry_msgsMsgVector3 part0 = value.@force;
        WriteRos2Geometry_msgsMsgVector3(writer, part0);
        _Ros2Geometry_msgsMsgVector3 part1 = value.@torque;
        WriteRos2Geometry_msgsMsgVector3(writer, part1);
    }

    private static _Ros2Geometry_msgsMsgWrench ReadRos2Geometry_msgsMsgWrench(_Codecs.Reader reader)
    {
        var value = new _Ros2Geometry_msgsMsgWrench();
        value.@force = ReadRos2Geometry_msgsMsgVector3(reader);
        value.@torque = ReadRos2Geometry_msgsMsgVector3(reader);
        return value;
    }

    public sealed class _Ros2Trajectory_msgsMsgJointTrajectoryPoint
    {
        public double[] @positions = new double[0];
        public double[] @velocities = new double[0];
        public double[] @accelerations = new double[0];
        public double[] @effort = new double[0];
        public _Ros2Builtin_interfacesMsgDuration @time_from_start = new _Ros2Builtin_interfacesMsgDuration();

        public _Ros2Trajectory_msgsMsgJointTrajectoryPoint()
        {
        }
    }

    public sealed class Ros2Trajectory_msgsMsgJointTrajectoryPointCodec : global::Uwvm.RosWasm.ICodec<_Ros2Trajectory_msgsMsgJointTrajectoryPoint>
    {
        public static readonly Ros2Trajectory_msgsMsgJointTrajectoryPointCodec Instance = new Ros2Trajectory_msgsMsgJointTrajectoryPointCodec();

        private Ros2Trajectory_msgsMsgJointTrajectoryPointCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "trajectory_msgs/msg/JointTrajectoryPoint";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_c4eafb6efd22d299b5c6fc21844d8bf69789cf27ee5414a1d7d2371f0b1acbbf";
        public const int MIN_WIRE_BYTES = 24, MAX_WIRE_BYTES = 216;

        public byte[] Encode(_Ros2Trajectory_msgsMsgJointTrajectoryPoint value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Trajectory_msgsMsgJointTrajectoryPoint(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Trajectory_msgsMsgJointTrajectoryPoint Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Trajectory_msgsMsgJointTrajectoryPoint value = ReadRos2Trajectory_msgsMsgJointTrajectoryPoint(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Trajectory_msgsMsgJointTrajectoryPoint(_Codecs.Writer writer, _Ros2Trajectory_msgsMsgJointTrajectoryPoint value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        double[] part0 = value.@positions;
        if(part0 == null || part0.Length > 6)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part0.Length, 4);
        for(int index = 0; index < part0.Length; ++index)
        {
            double element = part0[index];
            writer.Float64(element);
        }
        double[] part1 = value.@velocities;
        if(part1 == null || part1.Length > 6)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part1.Length, 4);
        for(int index = 0; index < part1.Length; ++index)
        {
            double element = part1[index];
            writer.Float64(element);
        }
        double[] part2 = value.@accelerations;
        if(part2 == null || part2.Length > 6)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part2.Length, 4);
        for(int index = 0; index < part2.Length; ++index)
        {
            double element = part2[index];
            writer.Float64(element);
        }
        double[] part3 = value.@effort;
        if(part3 == null || part3.Length > 6)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part3.Length, 4);
        for(int index = 0; index < part3.Length; ++index)
        {
            double element = part3[index];
            writer.Float64(element);
        }
        _Ros2Builtin_interfacesMsgDuration part4 = value.@time_from_start;
        WriteRos2Builtin_interfacesMsgDuration(writer, part4);
    }

    private static _Ros2Trajectory_msgsMsgJointTrajectoryPoint ReadRos2Trajectory_msgsMsgJointTrajectoryPoint(_Codecs.Reader reader)
    {
        var value = new _Ros2Trajectory_msgsMsgJointTrajectoryPoint();
        value.@positions = new double[ReadCount(reader, 6, 8)];
        for(int index = 0; index < value.@positions.Length; ++index)
            value.@positions[index] = reader.Float64();
        value.@velocities = new double[ReadCount(reader, 6, 8)];
        for(int index = 0; index < value.@velocities.Length; ++index)
            value.@velocities[index] = reader.Float64();
        value.@accelerations = new double[ReadCount(reader, 6, 8)];
        for(int index = 0; index < value.@accelerations.Length; ++index)
            value.@accelerations[index] = reader.Float64();
        value.@effort = new double[ReadCount(reader, 6, 8)];
        for(int index = 0; index < value.@effort.Length; ++index)
            value.@effort[index] = reader.Float64();
        value.@time_from_start = ReadRos2Builtin_interfacesMsgDuration(reader);
        return value;
    }

    public sealed class _Ros2Trajectory_msgsMsgJointTrajectory
    {
        public _Ros2Std_msgsMsgHeader @header = new _Ros2Std_msgsMsgHeader();
        public string[] @joint_names = new string[0];
        public _Ros2Trajectory_msgsMsgJointTrajectoryPoint[] @points = new _Ros2Trajectory_msgsMsgJointTrajectoryPoint[0];

        public _Ros2Trajectory_msgsMsgJointTrajectory()
        {
        }
    }

    public sealed class Ros2Trajectory_msgsMsgJointTrajectoryCodec : global::Uwvm.RosWasm.ICodec<_Ros2Trajectory_msgsMsgJointTrajectory>
    {
        public static readonly Ros2Trajectory_msgsMsgJointTrajectoryCodec Instance = new Ros2Trajectory_msgsMsgJointTrajectoryCodec();

        private Ros2Trajectory_msgsMsgJointTrajectoryCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "trajectory_msgs/msg/JointTrajectory";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_e77c37c75123e442edb6a7f6f2a21dcbe33d8bb8fd2577f9906653a6ad5f8225";
        public const int MIN_WIRE_BYTES = 20, MAX_WIRE_BYTES = 5164;

        public byte[] Encode(_Ros2Trajectory_msgsMsgJointTrajectory value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Trajectory_msgsMsgJointTrajectory(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Trajectory_msgsMsgJointTrajectory Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Trajectory_msgsMsgJointTrajectory value = ReadRos2Trajectory_msgsMsgJointTrajectory(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Trajectory_msgsMsgJointTrajectory(_Codecs.Writer writer, _Ros2Trajectory_msgsMsgJointTrajectory value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Std_msgsMsgHeader part0 = value.@header;
        WriteRos2Std_msgsMsgHeader(writer, part0);
        string[] part1 = value.@joint_names;
        if(part1 == null || part1.Length > 6)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part1.Length, 4);
        for(int index = 0; index < part1.Length; ++index)
        {
            string element = part1[index];
            WriteText(writer, element, 256);
        }
        _Ros2Trajectory_msgsMsgJointTrajectoryPoint[] part2 = value.@points;
        if(part2 == null || part2.Length > 16)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part2.Length, 4);
        for(int index = 0; index < part2.Length; ++index)
        {
            _Ros2Trajectory_msgsMsgJointTrajectoryPoint element = part2[index];
            WriteRos2Trajectory_msgsMsgJointTrajectoryPoint(writer, element);
        }
    }

    private static _Ros2Trajectory_msgsMsgJointTrajectory ReadRos2Trajectory_msgsMsgJointTrajectory(_Codecs.Reader reader)
    {
        var value = new _Ros2Trajectory_msgsMsgJointTrajectory();
        value.@header = ReadRos2Std_msgsMsgHeader(reader);
        value.@joint_names = new string[ReadCount(reader, 6, 4)];
        for(int index = 0; index < value.@joint_names.Length; ++index)
            value.@joint_names[index] = ReadText(reader, 256);
        value.@points = new _Ros2Trajectory_msgsMsgJointTrajectoryPoint[ReadCount(reader, 16, 24)];
        for(int index = 0; index < value.@points.Length; ++index)
            value.@points[index] = ReadRos2Trajectory_msgsMsgJointTrajectoryPoint(reader);
        return value;
    }

    public sealed class _Ros2Ur_dashboard_msgsActionSetMode_Goal
    {
        public sbyte @target_robot_mode = 0;
        public bool @stop_program = false;
        public bool @play_program = false;

        public _Ros2Ur_dashboard_msgsActionSetMode_Goal()
        {
        }
    }

    public sealed class Ros2Ur_dashboard_msgsActionSetMode_GoalCodec : global::Uwvm.RosWasm.ICodec<_Ros2Ur_dashboard_msgsActionSetMode_Goal>
    {
        public static readonly Ros2Ur_dashboard_msgsActionSetMode_GoalCodec Instance = new Ros2Ur_dashboard_msgsActionSetMode_GoalCodec();

        private Ros2Ur_dashboard_msgsActionSetMode_GoalCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "ur_dashboard_msgs/action/SetMode_Goal";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_8a7484a60bad21933df3f847d3fd554e41098ed596dee270335ce9f092dc313d";
        public const int MIN_WIRE_BYTES = 3, MAX_WIRE_BYTES = 3;

        public byte[] Encode(_Ros2Ur_dashboard_msgsActionSetMode_Goal value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Ur_dashboard_msgsActionSetMode_Goal(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Ur_dashboard_msgsActionSetMode_Goal Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Ur_dashboard_msgsActionSetMode_Goal value = ReadRos2Ur_dashboard_msgsActionSetMode_Goal(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Ur_dashboard_msgsActionSetMode_Goal(_Codecs.Writer writer, _Ros2Ur_dashboard_msgsActionSetMode_Goal value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        sbyte part0 = value.@target_robot_mode;
        writer.Unsigned(unchecked((byte)part0), 1);
        bool part1 = value.@stop_program;
        writer.Unsigned(part1 ? 1UL : 0UL, 1);
        bool part2 = value.@play_program;
        writer.Unsigned(part2 ? 1UL : 0UL, 1);
    }

    private static _Ros2Ur_dashboard_msgsActionSetMode_Goal ReadRos2Ur_dashboard_msgsActionSetMode_Goal(_Codecs.Reader reader)
    {
        var value = new _Ros2Ur_dashboard_msgsActionSetMode_Goal();
        value.@target_robot_mode = unchecked((sbyte)reader.Unsigned(1));
        value.@stop_program = ReadBool(reader);
        value.@play_program = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Ur_dashboard_msgsActionSetMode_Result
    {
        public bool @success = false;
        public string @message = "";

        public _Ros2Ur_dashboard_msgsActionSetMode_Result()
        {
        }
    }

    public sealed class Ros2Ur_dashboard_msgsActionSetMode_ResultCodec : global::Uwvm.RosWasm.ICodec<_Ros2Ur_dashboard_msgsActionSetMode_Result>
    {
        public static readonly Ros2Ur_dashboard_msgsActionSetMode_ResultCodec Instance = new Ros2Ur_dashboard_msgsActionSetMode_ResultCodec();

        private Ros2Ur_dashboard_msgsActionSetMode_ResultCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "ur_dashboard_msgs/action/SetMode_Result";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_ef2a557ff27171319d46170ab16a80f5cba5fbd59e44c21cc1b704d01764b913";
        public const int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 261;

        public byte[] Encode(_Ros2Ur_dashboard_msgsActionSetMode_Result value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Ur_dashboard_msgsActionSetMode_Result(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Ur_dashboard_msgsActionSetMode_Result Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Ur_dashboard_msgsActionSetMode_Result value = ReadRos2Ur_dashboard_msgsActionSetMode_Result(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Ur_dashboard_msgsActionSetMode_Result(_Codecs.Writer writer, _Ros2Ur_dashboard_msgsActionSetMode_Result value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
        string part1 = value.@message;
        WriteText(writer, part1, 256);
    }

    private static _Ros2Ur_dashboard_msgsActionSetMode_Result ReadRos2Ur_dashboard_msgsActionSetMode_Result(_Codecs.Reader reader)
    {
        var value = new _Ros2Ur_dashboard_msgsActionSetMode_Result();
        value.@success = ReadBool(reader);
        value.@message = ReadText(reader, 256);
        return value;
    }

    public sealed class _Ros2Ur_dashboard_msgsActionSetMode_Feedback
    {
        public sbyte @current_robot_mode = 0;
        public sbyte @current_safety_mode = 0;

        public _Ros2Ur_dashboard_msgsActionSetMode_Feedback()
        {
        }
    }

    public sealed class Ros2Ur_dashboard_msgsActionSetMode_FeedbackCodec : global::Uwvm.RosWasm.ICodec<_Ros2Ur_dashboard_msgsActionSetMode_Feedback>
    {
        public static readonly Ros2Ur_dashboard_msgsActionSetMode_FeedbackCodec Instance = new Ros2Ur_dashboard_msgsActionSetMode_FeedbackCodec();

        private Ros2Ur_dashboard_msgsActionSetMode_FeedbackCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "ur_dashboard_msgs/action/SetMode_Feedback";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_afd74cd0a79174b53499a40b23b040ba96ec3d3e332129999525dcf6ca287ac6";
        public const int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;

        public byte[] Encode(_Ros2Ur_dashboard_msgsActionSetMode_Feedback value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Ur_dashboard_msgsActionSetMode_Feedback(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Ur_dashboard_msgsActionSetMode_Feedback Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Ur_dashboard_msgsActionSetMode_Feedback value = ReadRos2Ur_dashboard_msgsActionSetMode_Feedback(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Ur_dashboard_msgsActionSetMode_Feedback(_Codecs.Writer writer, _Ros2Ur_dashboard_msgsActionSetMode_Feedback value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        sbyte part0 = value.@current_robot_mode;
        writer.Unsigned(unchecked((byte)part0), 1);
        sbyte part1 = value.@current_safety_mode;
        writer.Unsigned(unchecked((byte)part1), 1);
    }

    private static _Ros2Ur_dashboard_msgsActionSetMode_Feedback ReadRos2Ur_dashboard_msgsActionSetMode_Feedback(_Codecs.Reader reader)
    {
        var value = new _Ros2Ur_dashboard_msgsActionSetMode_Feedback();
        value.@current_robot_mode = unchecked((sbyte)reader.Unsigned(1));
        value.@current_safety_mode = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    public sealed class _Ros2Ur_dashboard_msgsMsgOperationalMode
    {
        public string @mode = "";

        public _Ros2Ur_dashboard_msgsMsgOperationalMode()
        {
        }
    }

    public sealed class Ros2Ur_dashboard_msgsMsgOperationalModeCodec : global::Uwvm.RosWasm.ICodec<_Ros2Ur_dashboard_msgsMsgOperationalMode>
    {
        public static readonly Ros2Ur_dashboard_msgsMsgOperationalModeCodec Instance = new Ros2Ur_dashboard_msgsMsgOperationalModeCodec();

        private Ros2Ur_dashboard_msgsMsgOperationalModeCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "ur_dashboard_msgs/msg/OperationalMode";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_7a0be8522cdc20e01d382218499030176a0f6565376fadc5bbdd871a01b9316e";
        public const int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 260;

        public byte[] Encode(_Ros2Ur_dashboard_msgsMsgOperationalMode value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Ur_dashboard_msgsMsgOperationalMode(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Ur_dashboard_msgsMsgOperationalMode Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Ur_dashboard_msgsMsgOperationalMode value = ReadRos2Ur_dashboard_msgsMsgOperationalMode(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Ur_dashboard_msgsMsgOperationalMode(_Codecs.Writer writer, _Ros2Ur_dashboard_msgsMsgOperationalMode value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        string part0 = value.@mode;
        WriteText(writer, part0, 256);
    }

    private static _Ros2Ur_dashboard_msgsMsgOperationalMode ReadRos2Ur_dashboard_msgsMsgOperationalMode(_Codecs.Reader reader)
    {
        var value = new _Ros2Ur_dashboard_msgsMsgOperationalMode();
        value.@mode = ReadText(reader, 256);
        return value;
    }

    public sealed class _Ros2Ur_dashboard_msgsMsgProgramInformation
    {
        public string @name = "";
        public string @description = "";
        public ulong @created_date = 0;
        public ulong @last_saved_date = 0;
        public ulong @last_modified_date = 0;
        public string @program_state = "";

        public _Ros2Ur_dashboard_msgsMsgProgramInformation()
        {
        }
    }

    public sealed class Ros2Ur_dashboard_msgsMsgProgramInformationCodec : global::Uwvm.RosWasm.ICodec<_Ros2Ur_dashboard_msgsMsgProgramInformation>
    {
        public static readonly Ros2Ur_dashboard_msgsMsgProgramInformationCodec Instance = new Ros2Ur_dashboard_msgsMsgProgramInformationCodec();

        private Ros2Ur_dashboard_msgsMsgProgramInformationCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "ur_dashboard_msgs/msg/ProgramInformation";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_9299ce545acd0b6ff064998334820fbe503b71dc47a475ef93545d2cdb41f965";
        public const int MIN_WIRE_BYTES = 36, MAX_WIRE_BYTES = 676;

        public byte[] Encode(_Ros2Ur_dashboard_msgsMsgProgramInformation value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Ur_dashboard_msgsMsgProgramInformation(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Ur_dashboard_msgsMsgProgramInformation Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Ur_dashboard_msgsMsgProgramInformation value = ReadRos2Ur_dashboard_msgsMsgProgramInformation(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Ur_dashboard_msgsMsgProgramInformation(_Codecs.Writer writer, _Ros2Ur_dashboard_msgsMsgProgramInformation value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        string part0 = value.@name;
        WriteText(writer, part0, 128);
        string part1 = value.@description;
        WriteText(writer, part1, 256);
        ulong part2 = value.@created_date;
        writer.Unsigned(part2, 8);
        ulong part3 = value.@last_saved_date;
        writer.Unsigned(part3, 8);
        ulong part4 = value.@last_modified_date;
        writer.Unsigned(part4, 8);
        string part5 = value.@program_state;
        WriteText(writer, part5, 256);
    }

    private static _Ros2Ur_dashboard_msgsMsgProgramInformation ReadRos2Ur_dashboard_msgsMsgProgramInformation(_Codecs.Reader reader)
    {
        var value = new _Ros2Ur_dashboard_msgsMsgProgramInformation();
        value.@name = ReadText(reader, 128);
        value.@description = ReadText(reader, 256);
        value.@created_date = unchecked((ulong)reader.Unsigned(8));
        value.@last_saved_date = unchecked((ulong)reader.Unsigned(8));
        value.@last_modified_date = unchecked((ulong)reader.Unsigned(8));
        value.@program_state = ReadText(reader, 256);
        return value;
    }

    public sealed class _Ros2Ur_dashboard_msgsMsgProgramState
    {
        public string @state = "";

        public _Ros2Ur_dashboard_msgsMsgProgramState()
        {
        }
    }

    public sealed class Ros2Ur_dashboard_msgsMsgProgramStateCodec : global::Uwvm.RosWasm.ICodec<_Ros2Ur_dashboard_msgsMsgProgramState>
    {
        public static readonly Ros2Ur_dashboard_msgsMsgProgramStateCodec Instance = new Ros2Ur_dashboard_msgsMsgProgramStateCodec();

        private Ros2Ur_dashboard_msgsMsgProgramStateCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "ur_dashboard_msgs/msg/ProgramState";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_1462a3c2323792afbbfc6d48a600a6ab66a50a6f6f583e57a62da2458ea81f26";
        public const int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 260;

        public byte[] Encode(_Ros2Ur_dashboard_msgsMsgProgramState value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Ur_dashboard_msgsMsgProgramState(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Ur_dashboard_msgsMsgProgramState Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Ur_dashboard_msgsMsgProgramState value = ReadRos2Ur_dashboard_msgsMsgProgramState(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Ur_dashboard_msgsMsgProgramState(_Codecs.Writer writer, _Ros2Ur_dashboard_msgsMsgProgramState value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        string part0 = value.@state;
        WriteText(writer, part0, 256);
    }

    private static _Ros2Ur_dashboard_msgsMsgProgramState ReadRos2Ur_dashboard_msgsMsgProgramState(_Codecs.Reader reader)
    {
        var value = new _Ros2Ur_dashboard_msgsMsgProgramState();
        value.@state = ReadText(reader, 256);
        return value;
    }

    public sealed class _Ros2Ur_dashboard_msgsMsgRobotMode
    {
        public sbyte @mode = 0;

        public _Ros2Ur_dashboard_msgsMsgRobotMode()
        {
        }
    }

    public sealed class Ros2Ur_dashboard_msgsMsgRobotModeCodec : global::Uwvm.RosWasm.ICodec<_Ros2Ur_dashboard_msgsMsgRobotMode>
    {
        public static readonly Ros2Ur_dashboard_msgsMsgRobotModeCodec Instance = new Ros2Ur_dashboard_msgsMsgRobotModeCodec();

        private Ros2Ur_dashboard_msgsMsgRobotModeCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "ur_dashboard_msgs/msg/RobotMode";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_81a79c84083520d911de108a728ad1877de78a57ec9e27b5cc432590be4616bb";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros2Ur_dashboard_msgsMsgRobotMode value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Ur_dashboard_msgsMsgRobotMode(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Ur_dashboard_msgsMsgRobotMode Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Ur_dashboard_msgsMsgRobotMode value = ReadRos2Ur_dashboard_msgsMsgRobotMode(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Ur_dashboard_msgsMsgRobotMode(_Codecs.Writer writer, _Ros2Ur_dashboard_msgsMsgRobotMode value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        sbyte part0 = value.@mode;
        writer.Unsigned(unchecked((byte)part0), 1);
    }

    private static _Ros2Ur_dashboard_msgsMsgRobotMode ReadRos2Ur_dashboard_msgsMsgRobotMode(_Codecs.Reader reader)
    {
        var value = new _Ros2Ur_dashboard_msgsMsgRobotMode();
        value.@mode = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    public sealed class _Ros2Ur_dashboard_msgsMsgSafetyMode
    {
        public byte @mode = 0;

        public _Ros2Ur_dashboard_msgsMsgSafetyMode()
        {
        }
    }

    public sealed class Ros2Ur_dashboard_msgsMsgSafetyModeCodec : global::Uwvm.RosWasm.ICodec<_Ros2Ur_dashboard_msgsMsgSafetyMode>
    {
        public static readonly Ros2Ur_dashboard_msgsMsgSafetyModeCodec Instance = new Ros2Ur_dashboard_msgsMsgSafetyModeCodec();

        private Ros2Ur_dashboard_msgsMsgSafetyModeCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "ur_dashboard_msgs/msg/SafetyMode";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_2eb3d5075a2d7d1765a604c1d1d198379010867d83a98d0327488ca51f5e1aac";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros2Ur_dashboard_msgsMsgSafetyMode value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Ur_dashboard_msgsMsgSafetyMode(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Ur_dashboard_msgsMsgSafetyMode Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Ur_dashboard_msgsMsgSafetyMode value = ReadRos2Ur_dashboard_msgsMsgSafetyMode(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Ur_dashboard_msgsMsgSafetyMode(_Codecs.Writer writer, _Ros2Ur_dashboard_msgsMsgSafetyMode value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        byte part0 = value.@mode;
        writer.Unsigned(part0, 1);
    }

    private static _Ros2Ur_dashboard_msgsMsgSafetyMode ReadRos2Ur_dashboard_msgsMsgSafetyMode(_Codecs.Reader reader)
    {
        var value = new _Ros2Ur_dashboard_msgsMsgSafetyMode();
        value.@mode = unchecked((byte)reader.Unsigned(1));
        return value;
    }

    public sealed class _Ros2Ur_dashboard_msgsMsgSafetyStatus
    {
        public sbyte @status = 0;

        public _Ros2Ur_dashboard_msgsMsgSafetyStatus()
        {
        }
    }

    public sealed class Ros2Ur_dashboard_msgsMsgSafetyStatusCodec : global::Uwvm.RosWasm.ICodec<_Ros2Ur_dashboard_msgsMsgSafetyStatus>
    {
        public static readonly Ros2Ur_dashboard_msgsMsgSafetyStatusCodec Instance = new Ros2Ur_dashboard_msgsMsgSafetyStatusCodec();

        private Ros2Ur_dashboard_msgsMsgSafetyStatusCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "ur_dashboard_msgs/msg/SafetyStatus";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_1b1a7257c40d9c62e0b6291f241825d029fe38f3f3695265a182a270899a79e9";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros2Ur_dashboard_msgsMsgSafetyStatus value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Ur_dashboard_msgsMsgSafetyStatus(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Ur_dashboard_msgsMsgSafetyStatus Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Ur_dashboard_msgsMsgSafetyStatus value = ReadRos2Ur_dashboard_msgsMsgSafetyStatus(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Ur_dashboard_msgsMsgSafetyStatus(_Codecs.Writer writer, _Ros2Ur_dashboard_msgsMsgSafetyStatus value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        sbyte part0 = value.@status;
        writer.Unsigned(unchecked((byte)part0), 1);
    }

    private static _Ros2Ur_dashboard_msgsMsgSafetyStatus ReadRos2Ur_dashboard_msgsMsgSafetyStatus(_Codecs.Reader reader)
    {
        var value = new _Ros2Ur_dashboard_msgsMsgSafetyStatus();
        value.@status = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    public sealed class _Ros2Ur_dashboard_msgsMsgUserRole
    {
        public string @role = "";

        public _Ros2Ur_dashboard_msgsMsgUserRole()
        {
        }
    }

    public sealed class Ros2Ur_dashboard_msgsMsgUserRoleCodec : global::Uwvm.RosWasm.ICodec<_Ros2Ur_dashboard_msgsMsgUserRole>
    {
        public static readonly Ros2Ur_dashboard_msgsMsgUserRoleCodec Instance = new Ros2Ur_dashboard_msgsMsgUserRoleCodec();

        private Ros2Ur_dashboard_msgsMsgUserRoleCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "ur_dashboard_msgs/msg/UserRole";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_7568bc9417685a9bc56cfdd2b41ff81ab99bd8e20fbe5f9e537b5b5d0689440a";
        public const int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 260;

        public byte[] Encode(_Ros2Ur_dashboard_msgsMsgUserRole value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Ur_dashboard_msgsMsgUserRole(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Ur_dashboard_msgsMsgUserRole Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Ur_dashboard_msgsMsgUserRole value = ReadRos2Ur_dashboard_msgsMsgUserRole(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Ur_dashboard_msgsMsgUserRole(_Codecs.Writer writer, _Ros2Ur_dashboard_msgsMsgUserRole value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        string part0 = value.@role;
        WriteText(writer, part0, 256);
    }

    private static _Ros2Ur_dashboard_msgsMsgUserRole ReadRos2Ur_dashboard_msgsMsgUserRole(_Codecs.Reader reader)
    {
        var value = new _Ros2Ur_dashboard_msgsMsgUserRole();
        value.@role = ReadText(reader, 256);
        return value;
    }

    public sealed class _Ros2Ur_dashboard_msgsMsgVersionInformation
    {
        public uint @major = 0;
        public uint @minor = 0;
        public uint @bugfix = 0;
        public uint @build = 0;

        public _Ros2Ur_dashboard_msgsMsgVersionInformation()
        {
        }
    }

    public sealed class Ros2Ur_dashboard_msgsMsgVersionInformationCodec : global::Uwvm.RosWasm.ICodec<_Ros2Ur_dashboard_msgsMsgVersionInformation>
    {
        public static readonly Ros2Ur_dashboard_msgsMsgVersionInformationCodec Instance = new Ros2Ur_dashboard_msgsMsgVersionInformationCodec();

        private Ros2Ur_dashboard_msgsMsgVersionInformationCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "ur_dashboard_msgs/msg/VersionInformation";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_450c41c4361f1bca51f864dd9ef596851b17ebc79d4f784e7abb8b721752443d";
        public const int MIN_WIRE_BYTES = 16, MAX_WIRE_BYTES = 16;

        public byte[] Encode(_Ros2Ur_dashboard_msgsMsgVersionInformation value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Ur_dashboard_msgsMsgVersionInformation(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Ur_dashboard_msgsMsgVersionInformation Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Ur_dashboard_msgsMsgVersionInformation value = ReadRos2Ur_dashboard_msgsMsgVersionInformation(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Ur_dashboard_msgsMsgVersionInformation(_Codecs.Writer writer, _Ros2Ur_dashboard_msgsMsgVersionInformation value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        uint part0 = value.@major;
        writer.Unsigned(part0, 4);
        uint part1 = value.@minor;
        writer.Unsigned(part1, 4);
        uint part2 = value.@bugfix;
        writer.Unsigned(part2, 4);
        uint part3 = value.@build;
        writer.Unsigned(part3, 4);
    }

    private static _Ros2Ur_dashboard_msgsMsgVersionInformation ReadRos2Ur_dashboard_msgsMsgVersionInformation(_Codecs.Reader reader)
    {
        var value = new _Ros2Ur_dashboard_msgsMsgVersionInformation();
        value.@major = unchecked((uint)reader.Unsigned(4));
        value.@minor = unchecked((uint)reader.Unsigned(4));
        value.@bugfix = unchecked((uint)reader.Unsigned(4));
        value.@build = unchecked((uint)reader.Unsigned(4));
        return value;
    }

    public sealed class _Ros2Ur_dashboard_msgsSrvAddToLog_Request
    {
        public string @message = "";

        public _Ros2Ur_dashboard_msgsSrvAddToLog_Request()
        {
        }
    }

    public sealed class Ros2Ur_dashboard_msgsSrvAddToLog_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Ur_dashboard_msgsSrvAddToLog_Request>
    {
        public static readonly Ros2Ur_dashboard_msgsSrvAddToLog_RequestCodec Instance = new Ros2Ur_dashboard_msgsSrvAddToLog_RequestCodec();

        private Ros2Ur_dashboard_msgsSrvAddToLog_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "ur_dashboard_msgs/srv/AddToLog_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_ecfe5bb0d0db92bc5dfdec9bf82fbe730e3b3b4d65680812d0540b9055590142";
        public const int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 260;

        public byte[] Encode(_Ros2Ur_dashboard_msgsSrvAddToLog_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Ur_dashboard_msgsSrvAddToLog_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Ur_dashboard_msgsSrvAddToLog_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Ur_dashboard_msgsSrvAddToLog_Request value = ReadRos2Ur_dashboard_msgsSrvAddToLog_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Ur_dashboard_msgsSrvAddToLog_Request(_Codecs.Writer writer, _Ros2Ur_dashboard_msgsSrvAddToLog_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        string part0 = value.@message;
        WriteText(writer, part0, 256);
    }

    private static _Ros2Ur_dashboard_msgsSrvAddToLog_Request ReadRos2Ur_dashboard_msgsSrvAddToLog_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Ur_dashboard_msgsSrvAddToLog_Request();
        value.@message = ReadText(reader, 256);
        return value;
    }

    public sealed class _Ros2Ur_dashboard_msgsSrvAddToLog_Response
    {
        public string @answer = "";
        public bool @success = false;

        public _Ros2Ur_dashboard_msgsSrvAddToLog_Response()
        {
        }
    }

    public sealed class Ros2Ur_dashboard_msgsSrvAddToLog_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Ur_dashboard_msgsSrvAddToLog_Response>
    {
        public static readonly Ros2Ur_dashboard_msgsSrvAddToLog_ResponseCodec Instance = new Ros2Ur_dashboard_msgsSrvAddToLog_ResponseCodec();

        private Ros2Ur_dashboard_msgsSrvAddToLog_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "ur_dashboard_msgs/srv/AddToLog_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_57b0c150a353d3fca6e96c4dc86e72f71b452663ede1eeb69e51069992d07e4c";
        public const int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 261;

        public byte[] Encode(_Ros2Ur_dashboard_msgsSrvAddToLog_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Ur_dashboard_msgsSrvAddToLog_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Ur_dashboard_msgsSrvAddToLog_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Ur_dashboard_msgsSrvAddToLog_Response value = ReadRos2Ur_dashboard_msgsSrvAddToLog_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Ur_dashboard_msgsSrvAddToLog_Response(_Codecs.Writer writer, _Ros2Ur_dashboard_msgsSrvAddToLog_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        string part0 = value.@answer;
        WriteText(writer, part0, 256);
        bool part1 = value.@success;
        writer.Unsigned(part1 ? 1UL : 0UL, 1);
    }

    private static _Ros2Ur_dashboard_msgsSrvAddToLog_Response ReadRos2Ur_dashboard_msgsSrvAddToLog_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Ur_dashboard_msgsSrvAddToLog_Response();
        value.@answer = ReadText(reader, 256);
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Ur_dashboard_msgsSrvDownloadProgram_Request
    {
        public string @program_name = "";
        public string @target_path = "";

        public _Ros2Ur_dashboard_msgsSrvDownloadProgram_Request()
        {
        }
    }

    public sealed class Ros2Ur_dashboard_msgsSrvDownloadProgram_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Ur_dashboard_msgsSrvDownloadProgram_Request>
    {
        public static readonly Ros2Ur_dashboard_msgsSrvDownloadProgram_RequestCodec Instance = new Ros2Ur_dashboard_msgsSrvDownloadProgram_RequestCodec();

        private Ros2Ur_dashboard_msgsSrvDownloadProgram_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "ur_dashboard_msgs/srv/DownloadProgram_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_5c84420393aae13ea448d171a7b2956a55a39f3321f504b9f3bd5b4a38960c2f";
        public const int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 520;

        public byte[] Encode(_Ros2Ur_dashboard_msgsSrvDownloadProgram_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Ur_dashboard_msgsSrvDownloadProgram_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Ur_dashboard_msgsSrvDownloadProgram_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Ur_dashboard_msgsSrvDownloadProgram_Request value = ReadRos2Ur_dashboard_msgsSrvDownloadProgram_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Ur_dashboard_msgsSrvDownloadProgram_Request(_Codecs.Writer writer, _Ros2Ur_dashboard_msgsSrvDownloadProgram_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        string part0 = value.@program_name;
        WriteText(writer, part0, 256);
        string part1 = value.@target_path;
        WriteText(writer, part1, 256);
    }

    private static _Ros2Ur_dashboard_msgsSrvDownloadProgram_Request ReadRos2Ur_dashboard_msgsSrvDownloadProgram_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Ur_dashboard_msgsSrvDownloadProgram_Request();
        value.@program_name = ReadText(reader, 256);
        value.@target_path = ReadText(reader, 256);
        return value;
    }

    public sealed class _Ros2Ur_dashboard_msgsSrvDownloadProgram_Response
    {
        public string @answer = "";
        public bool @success = false;

        public _Ros2Ur_dashboard_msgsSrvDownloadProgram_Response()
        {
        }
    }

    public sealed class Ros2Ur_dashboard_msgsSrvDownloadProgram_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Ur_dashboard_msgsSrvDownloadProgram_Response>
    {
        public static readonly Ros2Ur_dashboard_msgsSrvDownloadProgram_ResponseCodec Instance = new Ros2Ur_dashboard_msgsSrvDownloadProgram_ResponseCodec();

        private Ros2Ur_dashboard_msgsSrvDownloadProgram_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "ur_dashboard_msgs/srv/DownloadProgram_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_46b0a73805282bad5f819f712275b7dd2ca4a6bb8c73c445ea8ae0a3d0f9e8e0";
        public const int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 261;

        public byte[] Encode(_Ros2Ur_dashboard_msgsSrvDownloadProgram_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Ur_dashboard_msgsSrvDownloadProgram_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Ur_dashboard_msgsSrvDownloadProgram_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Ur_dashboard_msgsSrvDownloadProgram_Response value = ReadRos2Ur_dashboard_msgsSrvDownloadProgram_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Ur_dashboard_msgsSrvDownloadProgram_Response(_Codecs.Writer writer, _Ros2Ur_dashboard_msgsSrvDownloadProgram_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        string part0 = value.@answer;
        WriteText(writer, part0, 256);
        bool part1 = value.@success;
        writer.Unsigned(part1 ? 1UL : 0UL, 1);
    }

    private static _Ros2Ur_dashboard_msgsSrvDownloadProgram_Response ReadRos2Ur_dashboard_msgsSrvDownloadProgram_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Ur_dashboard_msgsSrvDownloadProgram_Response();
        value.@answer = ReadText(reader, 256);
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Ur_dashboard_msgsSrvDownloadSupportFile_Request
    {
        public string @target_path = "";

        public _Ros2Ur_dashboard_msgsSrvDownloadSupportFile_Request()
        {
        }
    }

    public sealed class Ros2Ur_dashboard_msgsSrvDownloadSupportFile_RequestCodec :
        global::Uwvm.RosWasm.ICodec<_Ros2Ur_dashboard_msgsSrvDownloadSupportFile_Request>
    {
        public static readonly Ros2Ur_dashboard_msgsSrvDownloadSupportFile_RequestCodec Instance =
            new Ros2Ur_dashboard_msgsSrvDownloadSupportFile_RequestCodec();

        private Ros2Ur_dashboard_msgsSrvDownloadSupportFile_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "ur_dashboard_msgs/srv/DownloadSupportFile_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_d919563629f81d5a8c10f1d2921ea16f3c912a49b8d3bcf65d17b8daa0a38140";
        public const int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 260;

        public byte[] Encode(_Ros2Ur_dashboard_msgsSrvDownloadSupportFile_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Ur_dashboard_msgsSrvDownloadSupportFile_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Ur_dashboard_msgsSrvDownloadSupportFile_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Ur_dashboard_msgsSrvDownloadSupportFile_Request value = ReadRos2Ur_dashboard_msgsSrvDownloadSupportFile_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Ur_dashboard_msgsSrvDownloadSupportFile_Request(_Codecs.Writer writer,
                                                                                 _Ros2Ur_dashboard_msgsSrvDownloadSupportFile_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        string part0 = value.@target_path;
        WriteText(writer, part0, 256);
    }

    private static _Ros2Ur_dashboard_msgsSrvDownloadSupportFile_Request ReadRos2Ur_dashboard_msgsSrvDownloadSupportFile_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Ur_dashboard_msgsSrvDownloadSupportFile_Request();
        value.@target_path = ReadText(reader, 256);
        return value;
    }

    public sealed class _Ros2Ur_dashboard_msgsSrvDownloadSupportFile_Response
    {
        public string @answer = "";
        public bool @success = false;
        public bool @support_files_present = false;

        public _Ros2Ur_dashboard_msgsSrvDownloadSupportFile_Response()
        {
        }
    }

    public sealed class Ros2Ur_dashboard_msgsSrvDownloadSupportFile_ResponseCodec :
        global::Uwvm.RosWasm.ICodec<_Ros2Ur_dashboard_msgsSrvDownloadSupportFile_Response>
    {
        public static readonly Ros2Ur_dashboard_msgsSrvDownloadSupportFile_ResponseCodec Instance =
            new Ros2Ur_dashboard_msgsSrvDownloadSupportFile_ResponseCodec();

        private Ros2Ur_dashboard_msgsSrvDownloadSupportFile_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "ur_dashboard_msgs/srv/DownloadSupportFile_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_76e190e6e9f1ddfff3082ea2adb0463d21ba9fb6795153fe6bbacee8a3334667";
        public const int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 262;

        public byte[] Encode(_Ros2Ur_dashboard_msgsSrvDownloadSupportFile_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Ur_dashboard_msgsSrvDownloadSupportFile_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Ur_dashboard_msgsSrvDownloadSupportFile_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Ur_dashboard_msgsSrvDownloadSupportFile_Response value = ReadRos2Ur_dashboard_msgsSrvDownloadSupportFile_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Ur_dashboard_msgsSrvDownloadSupportFile_Response(_Codecs.Writer writer,
                                                                                  _Ros2Ur_dashboard_msgsSrvDownloadSupportFile_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        string part0 = value.@answer;
        WriteText(writer, part0, 256);
        bool part1 = value.@success;
        writer.Unsigned(part1 ? 1UL : 0UL, 1);
        bool part2 = value.@support_files_present;
        writer.Unsigned(part2 ? 1UL : 0UL, 1);
    }

    private static _Ros2Ur_dashboard_msgsSrvDownloadSupportFile_Response ReadRos2Ur_dashboard_msgsSrvDownloadSupportFile_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Ur_dashboard_msgsSrvDownloadSupportFile_Response();
        value.@answer = ReadText(reader, 256);
        value.@success = ReadBool(reader);
        value.@support_files_present = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Ur_dashboard_msgsSrvGenerateFlightReport_Request
    {
        public string @report_type = "SYSTEM";

        public _Ros2Ur_dashboard_msgsSrvGenerateFlightReport_Request()
        {
        }
    }

    public sealed class Ros2Ur_dashboard_msgsSrvGenerateFlightReport_RequestCodec :
        global::Uwvm.RosWasm.ICodec<_Ros2Ur_dashboard_msgsSrvGenerateFlightReport_Request>
    {
        public static readonly Ros2Ur_dashboard_msgsSrvGenerateFlightReport_RequestCodec Instance =
            new Ros2Ur_dashboard_msgsSrvGenerateFlightReport_RequestCodec();

        private Ros2Ur_dashboard_msgsSrvGenerateFlightReport_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "ur_dashboard_msgs/srv/GenerateFlightReport_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_7246d97690c0c827e9cfab2f8297cf27a10e60e41ebb3ba345f361a109057099";
        public const int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 260;

        public byte[] Encode(_Ros2Ur_dashboard_msgsSrvGenerateFlightReport_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Ur_dashboard_msgsSrvGenerateFlightReport_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Ur_dashboard_msgsSrvGenerateFlightReport_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Ur_dashboard_msgsSrvGenerateFlightReport_Request value = ReadRos2Ur_dashboard_msgsSrvGenerateFlightReport_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Ur_dashboard_msgsSrvGenerateFlightReport_Request(_Codecs.Writer writer,
                                                                                  _Ros2Ur_dashboard_msgsSrvGenerateFlightReport_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        string part0 = value.@report_type;
        WriteText(writer, part0, 256);
    }

    private static _Ros2Ur_dashboard_msgsSrvGenerateFlightReport_Request ReadRos2Ur_dashboard_msgsSrvGenerateFlightReport_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Ur_dashboard_msgsSrvGenerateFlightReport_Request();
        value.@report_type = ReadText(reader, 256);
        return value;
    }

    public sealed class _Ros2Ur_dashboard_msgsSrvGenerateFlightReport_Response
    {
        public bool @success = false;
        public string @answer = "";
        public string @report_id = "";

        public _Ros2Ur_dashboard_msgsSrvGenerateFlightReport_Response()
        {
        }
    }

    public sealed class Ros2Ur_dashboard_msgsSrvGenerateFlightReport_ResponseCodec :
        global::Uwvm.RosWasm.ICodec<_Ros2Ur_dashboard_msgsSrvGenerateFlightReport_Response>
    {
        public static readonly Ros2Ur_dashboard_msgsSrvGenerateFlightReport_ResponseCodec Instance =
            new Ros2Ur_dashboard_msgsSrvGenerateFlightReport_ResponseCodec();

        private Ros2Ur_dashboard_msgsSrvGenerateFlightReport_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "ur_dashboard_msgs/srv/GenerateFlightReport_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_adebf67876b5ae3377cec0aa04138c2ab73ef7c0d7942c77c6c06b248a836445";
        public const int MIN_WIRE_BYTES = 9, MAX_WIRE_BYTES = 521;

        public byte[] Encode(_Ros2Ur_dashboard_msgsSrvGenerateFlightReport_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Ur_dashboard_msgsSrvGenerateFlightReport_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Ur_dashboard_msgsSrvGenerateFlightReport_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Ur_dashboard_msgsSrvGenerateFlightReport_Response value = ReadRos2Ur_dashboard_msgsSrvGenerateFlightReport_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Ur_dashboard_msgsSrvGenerateFlightReport_Response(_Codecs.Writer writer,
                                                                                   _Ros2Ur_dashboard_msgsSrvGenerateFlightReport_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
        string part1 = value.@answer;
        WriteText(writer, part1, 256);
        string part2 = value.@report_id;
        WriteText(writer, part2, 256);
    }

    private static _Ros2Ur_dashboard_msgsSrvGenerateFlightReport_Response ReadRos2Ur_dashboard_msgsSrvGenerateFlightReport_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Ur_dashboard_msgsSrvGenerateFlightReport_Response();
        value.@success = ReadBool(reader);
        value.@answer = ReadText(reader, 256);
        value.@report_id = ReadText(reader, 256);
        return value;
    }

    public sealed class _Ros2Ur_dashboard_msgsSrvGenerateSupportFile_Request
    {
        public string @dir_path = ".";

        public _Ros2Ur_dashboard_msgsSrvGenerateSupportFile_Request()
        {
        }
    }

    public sealed class Ros2Ur_dashboard_msgsSrvGenerateSupportFile_RequestCodec :
        global::Uwvm.RosWasm.ICodec<_Ros2Ur_dashboard_msgsSrvGenerateSupportFile_Request>
    {
        public static readonly Ros2Ur_dashboard_msgsSrvGenerateSupportFile_RequestCodec Instance =
            new Ros2Ur_dashboard_msgsSrvGenerateSupportFile_RequestCodec();

        private Ros2Ur_dashboard_msgsSrvGenerateSupportFile_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "ur_dashboard_msgs/srv/GenerateSupportFile_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_10b0371b77db32d75a77dcb0605b325caa1915ccfb7d0917896fd75234e6ada7";
        public const int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 260;

        public byte[] Encode(_Ros2Ur_dashboard_msgsSrvGenerateSupportFile_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Ur_dashboard_msgsSrvGenerateSupportFile_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Ur_dashboard_msgsSrvGenerateSupportFile_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Ur_dashboard_msgsSrvGenerateSupportFile_Request value = ReadRos2Ur_dashboard_msgsSrvGenerateSupportFile_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Ur_dashboard_msgsSrvGenerateSupportFile_Request(_Codecs.Writer writer,
                                                                                 _Ros2Ur_dashboard_msgsSrvGenerateSupportFile_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        string part0 = value.@dir_path;
        WriteText(writer, part0, 256);
    }

    private static _Ros2Ur_dashboard_msgsSrvGenerateSupportFile_Request ReadRos2Ur_dashboard_msgsSrvGenerateSupportFile_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Ur_dashboard_msgsSrvGenerateSupportFile_Request();
        value.@dir_path = ReadText(reader, 256);
        return value;
    }

    public sealed class _Ros2Ur_dashboard_msgsSrvGenerateSupportFile_Response
    {
        public bool @success = false;
        public string @answer = "";
        public string @generated_file_name = "";

        public _Ros2Ur_dashboard_msgsSrvGenerateSupportFile_Response()
        {
        }
    }

    public sealed class Ros2Ur_dashboard_msgsSrvGenerateSupportFile_ResponseCodec :
        global::Uwvm.RosWasm.ICodec<_Ros2Ur_dashboard_msgsSrvGenerateSupportFile_Response>
    {
        public static readonly Ros2Ur_dashboard_msgsSrvGenerateSupportFile_ResponseCodec Instance =
            new Ros2Ur_dashboard_msgsSrvGenerateSupportFile_ResponseCodec();

        private Ros2Ur_dashboard_msgsSrvGenerateSupportFile_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "ur_dashboard_msgs/srv/GenerateSupportFile_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_f370623fe690f218073f8538aa9fcf41c94d4abd3e0507e09607ef11e10edf38";
        public const int MIN_WIRE_BYTES = 9, MAX_WIRE_BYTES = 521;

        public byte[] Encode(_Ros2Ur_dashboard_msgsSrvGenerateSupportFile_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Ur_dashboard_msgsSrvGenerateSupportFile_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Ur_dashboard_msgsSrvGenerateSupportFile_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Ur_dashboard_msgsSrvGenerateSupportFile_Response value = ReadRos2Ur_dashboard_msgsSrvGenerateSupportFile_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Ur_dashboard_msgsSrvGenerateSupportFile_Response(_Codecs.Writer writer,
                                                                                  _Ros2Ur_dashboard_msgsSrvGenerateSupportFile_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
        string part1 = value.@answer;
        WriteText(writer, part1, 256);
        string part2 = value.@generated_file_name;
        WriteText(writer, part2, 256);
    }

    private static _Ros2Ur_dashboard_msgsSrvGenerateSupportFile_Response ReadRos2Ur_dashboard_msgsSrvGenerateSupportFile_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Ur_dashboard_msgsSrvGenerateSupportFile_Response();
        value.@success = ReadBool(reader);
        value.@answer = ReadText(reader, 256);
        value.@generated_file_name = ReadText(reader, 256);
        return value;
    }

    public sealed class _Ros2Ur_dashboard_msgsSrvGetLoadedProgram_Request
    {
        public _Ros2Ur_dashboard_msgsSrvGetLoadedProgram_Request()
        {
        }
    }

    public sealed class Ros2Ur_dashboard_msgsSrvGetLoadedProgram_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Ur_dashboard_msgsSrvGetLoadedProgram_Request>
    {
        public static readonly Ros2Ur_dashboard_msgsSrvGetLoadedProgram_RequestCodec Instance = new Ros2Ur_dashboard_msgsSrvGetLoadedProgram_RequestCodec();

        private Ros2Ur_dashboard_msgsSrvGetLoadedProgram_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "ur_dashboard_msgs/srv/GetLoadedProgram_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_030e5746e6a4da8f266e37d11cc3826715099ff1aa1c845a97042aec987707e3";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public byte[] Encode(_Ros2Ur_dashboard_msgsSrvGetLoadedProgram_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Ur_dashboard_msgsSrvGetLoadedProgram_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Ur_dashboard_msgsSrvGetLoadedProgram_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Ur_dashboard_msgsSrvGetLoadedProgram_Request value = ReadRos2Ur_dashboard_msgsSrvGetLoadedProgram_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Ur_dashboard_msgsSrvGetLoadedProgram_Request(_Codecs.Writer writer, _Ros2Ur_dashboard_msgsSrvGetLoadedProgram_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    private static _Ros2Ur_dashboard_msgsSrvGetLoadedProgram_Request ReadRos2Ur_dashboard_msgsSrvGetLoadedProgram_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Ur_dashboard_msgsSrvGetLoadedProgram_Request();
        return value;
    }

    public sealed class _Ros2Ur_dashboard_msgsSrvGetLoadedProgram_Response
    {
        public string @answer = "";
        public string @program_name = "";
        public bool @success = false;

        public _Ros2Ur_dashboard_msgsSrvGetLoadedProgram_Response()
        {
        }
    }

    public sealed class Ros2Ur_dashboard_msgsSrvGetLoadedProgram_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Ur_dashboard_msgsSrvGetLoadedProgram_Response>
    {
        public static readonly Ros2Ur_dashboard_msgsSrvGetLoadedProgram_ResponseCodec Instance = new Ros2Ur_dashboard_msgsSrvGetLoadedProgram_ResponseCodec();

        private Ros2Ur_dashboard_msgsSrvGetLoadedProgram_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "ur_dashboard_msgs/srv/GetLoadedProgram_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_3e8c7f3c8711faea01de37b9a011f34a9c6dd660cc222e46177b2c1898ec2f7e";
        public const int MIN_WIRE_BYTES = 9, MAX_WIRE_BYTES = 521;

        public byte[] Encode(_Ros2Ur_dashboard_msgsSrvGetLoadedProgram_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Ur_dashboard_msgsSrvGetLoadedProgram_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Ur_dashboard_msgsSrvGetLoadedProgram_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Ur_dashboard_msgsSrvGetLoadedProgram_Response value = ReadRos2Ur_dashboard_msgsSrvGetLoadedProgram_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Ur_dashboard_msgsSrvGetLoadedProgram_Response(_Codecs.Writer writer, _Ros2Ur_dashboard_msgsSrvGetLoadedProgram_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        string part0 = value.@answer;
        WriteText(writer, part0, 256);
        string part1 = value.@program_name;
        WriteText(writer, part1, 256);
        bool part2 = value.@success;
        writer.Unsigned(part2 ? 1UL : 0UL, 1);
    }

    private static _Ros2Ur_dashboard_msgsSrvGetLoadedProgram_Response ReadRos2Ur_dashboard_msgsSrvGetLoadedProgram_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Ur_dashboard_msgsSrvGetLoadedProgram_Response();
        value.@answer = ReadText(reader, 256);
        value.@program_name = ReadText(reader, 256);
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Ur_dashboard_msgsSrvGetOperationalMode_Request
    {
        public _Ros2Ur_dashboard_msgsSrvGetOperationalMode_Request()
        {
        }
    }

    public sealed class Ros2Ur_dashboard_msgsSrvGetOperationalMode_RequestCodec :
        global::Uwvm.RosWasm.ICodec<_Ros2Ur_dashboard_msgsSrvGetOperationalMode_Request>
    {
        public static readonly Ros2Ur_dashboard_msgsSrvGetOperationalMode_RequestCodec Instance = new Ros2Ur_dashboard_msgsSrvGetOperationalMode_RequestCodec();

        private Ros2Ur_dashboard_msgsSrvGetOperationalMode_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "ur_dashboard_msgs/srv/GetOperationalMode_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_3f348b5d9e04a8ba01f5277ad259c34a6816ae0693f47c49e348a5497a90a325";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public byte[] Encode(_Ros2Ur_dashboard_msgsSrvGetOperationalMode_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Ur_dashboard_msgsSrvGetOperationalMode_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Ur_dashboard_msgsSrvGetOperationalMode_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Ur_dashboard_msgsSrvGetOperationalMode_Request value = ReadRos2Ur_dashboard_msgsSrvGetOperationalMode_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Ur_dashboard_msgsSrvGetOperationalMode_Request(_Codecs.Writer writer,
                                                                                _Ros2Ur_dashboard_msgsSrvGetOperationalMode_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    private static _Ros2Ur_dashboard_msgsSrvGetOperationalMode_Request ReadRos2Ur_dashboard_msgsSrvGetOperationalMode_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Ur_dashboard_msgsSrvGetOperationalMode_Request();
        return value;
    }

    public sealed class _Ros2Ur_dashboard_msgsSrvGetOperationalMode_Response
    {
        public bool @success = false;
        public string @answer = "";
        public _Ros2Ur_dashboard_msgsMsgOperationalMode @operational_mode = new _Ros2Ur_dashboard_msgsMsgOperationalMode();

        public _Ros2Ur_dashboard_msgsSrvGetOperationalMode_Response()
        {
        }
    }

    public sealed class Ros2Ur_dashboard_msgsSrvGetOperationalMode_ResponseCodec :
        global::Uwvm.RosWasm.ICodec<_Ros2Ur_dashboard_msgsSrvGetOperationalMode_Response>
    {
        public static readonly Ros2Ur_dashboard_msgsSrvGetOperationalMode_ResponseCodec Instance =
            new Ros2Ur_dashboard_msgsSrvGetOperationalMode_ResponseCodec();

        private Ros2Ur_dashboard_msgsSrvGetOperationalMode_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "ur_dashboard_msgs/srv/GetOperationalMode_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_6c2da335fd551162020eb394b91e99aaeca17e34e7c2e98de935c81912efb5f6";
        public const int MIN_WIRE_BYTES = 9, MAX_WIRE_BYTES = 521;

        public byte[] Encode(_Ros2Ur_dashboard_msgsSrvGetOperationalMode_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Ur_dashboard_msgsSrvGetOperationalMode_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Ur_dashboard_msgsSrvGetOperationalMode_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Ur_dashboard_msgsSrvGetOperationalMode_Response value = ReadRos2Ur_dashboard_msgsSrvGetOperationalMode_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Ur_dashboard_msgsSrvGetOperationalMode_Response(_Codecs.Writer writer,
                                                                                 _Ros2Ur_dashboard_msgsSrvGetOperationalMode_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
        string part1 = value.@answer;
        WriteText(writer, part1, 256);
        _Ros2Ur_dashboard_msgsMsgOperationalMode part2 = value.@operational_mode;
        WriteRos2Ur_dashboard_msgsMsgOperationalMode(writer, part2);
    }

    private static _Ros2Ur_dashboard_msgsSrvGetOperationalMode_Response ReadRos2Ur_dashboard_msgsSrvGetOperationalMode_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Ur_dashboard_msgsSrvGetOperationalMode_Response();
        value.@success = ReadBool(reader);
        value.@answer = ReadText(reader, 256);
        value.@operational_mode = ReadRos2Ur_dashboard_msgsMsgOperationalMode(reader);
        return value;
    }

    public sealed class _Ros2Ur_dashboard_msgsSrvGetPolyScopeVersion_Request
    {
        public _Ros2Ur_dashboard_msgsSrvGetPolyScopeVersion_Request()
        {
        }
    }

    public sealed class Ros2Ur_dashboard_msgsSrvGetPolyScopeVersion_RequestCodec :
        global::Uwvm.RosWasm.ICodec<_Ros2Ur_dashboard_msgsSrvGetPolyScopeVersion_Request>
    {
        public static readonly Ros2Ur_dashboard_msgsSrvGetPolyScopeVersion_RequestCodec Instance =
            new Ros2Ur_dashboard_msgsSrvGetPolyScopeVersion_RequestCodec();

        private Ros2Ur_dashboard_msgsSrvGetPolyScopeVersion_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "ur_dashboard_msgs/srv/GetPolyScopeVersion_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_88193ae202f0cb02746bc5556e8e8ee277fb4fae72ee4b96a6539c980dc86f13";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public byte[] Encode(_Ros2Ur_dashboard_msgsSrvGetPolyScopeVersion_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Ur_dashboard_msgsSrvGetPolyScopeVersion_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Ur_dashboard_msgsSrvGetPolyScopeVersion_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Ur_dashboard_msgsSrvGetPolyScopeVersion_Request value = ReadRos2Ur_dashboard_msgsSrvGetPolyScopeVersion_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Ur_dashboard_msgsSrvGetPolyScopeVersion_Request(_Codecs.Writer writer,
                                                                                 _Ros2Ur_dashboard_msgsSrvGetPolyScopeVersion_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    private static _Ros2Ur_dashboard_msgsSrvGetPolyScopeVersion_Request ReadRos2Ur_dashboard_msgsSrvGetPolyScopeVersion_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Ur_dashboard_msgsSrvGetPolyScopeVersion_Request();
        return value;
    }

    public sealed class _Ros2Ur_dashboard_msgsSrvGetPolyScopeVersion_Response
    {
        public string @answer = "";
        public bool @success = false;
        public _Ros2Ur_dashboard_msgsMsgVersionInformation @version = new _Ros2Ur_dashboard_msgsMsgVersionInformation();

        public _Ros2Ur_dashboard_msgsSrvGetPolyScopeVersion_Response()
        {
        }
    }

    public sealed class Ros2Ur_dashboard_msgsSrvGetPolyScopeVersion_ResponseCodec :
        global::Uwvm.RosWasm.ICodec<_Ros2Ur_dashboard_msgsSrvGetPolyScopeVersion_Response>
    {
        public static readonly Ros2Ur_dashboard_msgsSrvGetPolyScopeVersion_ResponseCodec Instance =
            new Ros2Ur_dashboard_msgsSrvGetPolyScopeVersion_ResponseCodec();

        private Ros2Ur_dashboard_msgsSrvGetPolyScopeVersion_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "ur_dashboard_msgs/srv/GetPolyScopeVersion_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_c8d53d0a920806e86ceb6d2ac5a692a92e62b057432554bed9dcf57bed0ff9bd";
        public const int MIN_WIRE_BYTES = 21, MAX_WIRE_BYTES = 277;

        public byte[] Encode(_Ros2Ur_dashboard_msgsSrvGetPolyScopeVersion_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Ur_dashboard_msgsSrvGetPolyScopeVersion_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Ur_dashboard_msgsSrvGetPolyScopeVersion_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Ur_dashboard_msgsSrvGetPolyScopeVersion_Response value = ReadRos2Ur_dashboard_msgsSrvGetPolyScopeVersion_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Ur_dashboard_msgsSrvGetPolyScopeVersion_Response(_Codecs.Writer writer,
                                                                                  _Ros2Ur_dashboard_msgsSrvGetPolyScopeVersion_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        string part0 = value.@answer;
        WriteText(writer, part0, 256);
        bool part1 = value.@success;
        writer.Unsigned(part1 ? 1UL : 0UL, 1);
        _Ros2Ur_dashboard_msgsMsgVersionInformation part2 = value.@version;
        WriteRos2Ur_dashboard_msgsMsgVersionInformation(writer, part2);
    }

    private static _Ros2Ur_dashboard_msgsSrvGetPolyScopeVersion_Response ReadRos2Ur_dashboard_msgsSrvGetPolyScopeVersion_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Ur_dashboard_msgsSrvGetPolyScopeVersion_Response();
        value.@answer = ReadText(reader, 256);
        value.@success = ReadBool(reader);
        value.@version = ReadRos2Ur_dashboard_msgsMsgVersionInformation(reader);
        return value;
    }

    public sealed class _Ros2Ur_dashboard_msgsSrvGetProgramState_Request
    {
        public _Ros2Ur_dashboard_msgsSrvGetProgramState_Request()
        {
        }
    }

    public sealed class Ros2Ur_dashboard_msgsSrvGetProgramState_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Ur_dashboard_msgsSrvGetProgramState_Request>
    {
        public static readonly Ros2Ur_dashboard_msgsSrvGetProgramState_RequestCodec Instance = new Ros2Ur_dashboard_msgsSrvGetProgramState_RequestCodec();

        private Ros2Ur_dashboard_msgsSrvGetProgramState_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "ur_dashboard_msgs/srv/GetProgramState_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_fe42d1d1aa3d7bdbaa410bce045120d6dd841213ef10c5dd158c2b76fa157f65";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public byte[] Encode(_Ros2Ur_dashboard_msgsSrvGetProgramState_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Ur_dashboard_msgsSrvGetProgramState_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Ur_dashboard_msgsSrvGetProgramState_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Ur_dashboard_msgsSrvGetProgramState_Request value = ReadRos2Ur_dashboard_msgsSrvGetProgramState_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Ur_dashboard_msgsSrvGetProgramState_Request(_Codecs.Writer writer, _Ros2Ur_dashboard_msgsSrvGetProgramState_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    private static _Ros2Ur_dashboard_msgsSrvGetProgramState_Request ReadRos2Ur_dashboard_msgsSrvGetProgramState_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Ur_dashboard_msgsSrvGetProgramState_Request();
        return value;
    }

    public sealed class _Ros2Ur_dashboard_msgsSrvGetProgramState_Response
    {
        public _Ros2Ur_dashboard_msgsMsgProgramState @state = new _Ros2Ur_dashboard_msgsMsgProgramState();
        public string @program_name = "";
        public string @answer = "";
        public bool @success = false;

        public _Ros2Ur_dashboard_msgsSrvGetProgramState_Response()
        {
        }
    }

    public sealed class Ros2Ur_dashboard_msgsSrvGetProgramState_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Ur_dashboard_msgsSrvGetProgramState_Response>
    {
        public static readonly Ros2Ur_dashboard_msgsSrvGetProgramState_ResponseCodec Instance = new Ros2Ur_dashboard_msgsSrvGetProgramState_ResponseCodec();

        private Ros2Ur_dashboard_msgsSrvGetProgramState_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "ur_dashboard_msgs/srv/GetProgramState_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_b20731b8552f323837c5939f390060a6c7c92e9447df5e620891708cfce51ff4";
        public const int MIN_WIRE_BYTES = 13, MAX_WIRE_BYTES = 781;

        public byte[] Encode(_Ros2Ur_dashboard_msgsSrvGetProgramState_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Ur_dashboard_msgsSrvGetProgramState_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Ur_dashboard_msgsSrvGetProgramState_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Ur_dashboard_msgsSrvGetProgramState_Response value = ReadRos2Ur_dashboard_msgsSrvGetProgramState_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Ur_dashboard_msgsSrvGetProgramState_Response(_Codecs.Writer writer, _Ros2Ur_dashboard_msgsSrvGetProgramState_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Ur_dashboard_msgsMsgProgramState part0 = value.@state;
        WriteRos2Ur_dashboard_msgsMsgProgramState(writer, part0);
        string part1 = value.@program_name;
        WriteText(writer, part1, 256);
        string part2 = value.@answer;
        WriteText(writer, part2, 256);
        bool part3 = value.@success;
        writer.Unsigned(part3 ? 1UL : 0UL, 1);
    }

    private static _Ros2Ur_dashboard_msgsSrvGetProgramState_Response ReadRos2Ur_dashboard_msgsSrvGetProgramState_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Ur_dashboard_msgsSrvGetProgramState_Response();
        value.@state = ReadRos2Ur_dashboard_msgsMsgProgramState(reader);
        value.@program_name = ReadText(reader, 256);
        value.@answer = ReadText(reader, 256);
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Ur_dashboard_msgsSrvGetPrograms_Request
    {
        public _Ros2Ur_dashboard_msgsSrvGetPrograms_Request()
        {
        }
    }

    public sealed class Ros2Ur_dashboard_msgsSrvGetPrograms_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Ur_dashboard_msgsSrvGetPrograms_Request>
    {
        public static readonly Ros2Ur_dashboard_msgsSrvGetPrograms_RequestCodec Instance = new Ros2Ur_dashboard_msgsSrvGetPrograms_RequestCodec();

        private Ros2Ur_dashboard_msgsSrvGetPrograms_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "ur_dashboard_msgs/srv/GetPrograms_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_8d7b4f3fb9a15854b59c85c5205bf20d3e0f6a1a972ccbdf77ee8377c9e40d6d";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public byte[] Encode(_Ros2Ur_dashboard_msgsSrvGetPrograms_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Ur_dashboard_msgsSrvGetPrograms_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Ur_dashboard_msgsSrvGetPrograms_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Ur_dashboard_msgsSrvGetPrograms_Request value = ReadRos2Ur_dashboard_msgsSrvGetPrograms_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Ur_dashboard_msgsSrvGetPrograms_Request(_Codecs.Writer writer, _Ros2Ur_dashboard_msgsSrvGetPrograms_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    private static _Ros2Ur_dashboard_msgsSrvGetPrograms_Request ReadRos2Ur_dashboard_msgsSrvGetPrograms_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Ur_dashboard_msgsSrvGetPrograms_Request();
        return value;
    }

    public sealed class _Ros2Ur_dashboard_msgsSrvGetPrograms_Response
    {
        public _Ros2Ur_dashboard_msgsMsgProgramInformation[] @programs = new _Ros2Ur_dashboard_msgsMsgProgramInformation[0];
        public string @answer = "";
        public bool @success = false;

        public _Ros2Ur_dashboard_msgsSrvGetPrograms_Response()
        {
        }
    }

    public sealed class Ros2Ur_dashboard_msgsSrvGetPrograms_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Ur_dashboard_msgsSrvGetPrograms_Response>
    {
        public static readonly Ros2Ur_dashboard_msgsSrvGetPrograms_ResponseCodec Instance = new Ros2Ur_dashboard_msgsSrvGetPrograms_ResponseCodec();

        private Ros2Ur_dashboard_msgsSrvGetPrograms_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "ur_dashboard_msgs/srv/GetPrograms_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_111b67c562ba0c77c2924b97058e4126055ad6deb7f99049b8caf8990b3f979c";
        public const int MIN_WIRE_BYTES = 9, MAX_WIRE_BYTES = 11081;

        public byte[] Encode(_Ros2Ur_dashboard_msgsSrvGetPrograms_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Ur_dashboard_msgsSrvGetPrograms_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Ur_dashboard_msgsSrvGetPrograms_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Ur_dashboard_msgsSrvGetPrograms_Response value = ReadRos2Ur_dashboard_msgsSrvGetPrograms_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Ur_dashboard_msgsSrvGetPrograms_Response(_Codecs.Writer writer, _Ros2Ur_dashboard_msgsSrvGetPrograms_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Ur_dashboard_msgsMsgProgramInformation[] part0 = value.@programs;
        if(part0 == null || part0.Length > 16)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part0.Length, 4);
        for(int index = 0; index < part0.Length; ++index)
        {
            _Ros2Ur_dashboard_msgsMsgProgramInformation element = part0[index];
            WriteRos2Ur_dashboard_msgsMsgProgramInformation(writer, element);
        }
        string part1 = value.@answer;
        WriteText(writer, part1, 256);
        bool part2 = value.@success;
        writer.Unsigned(part2 ? 1UL : 0UL, 1);
    }

    private static _Ros2Ur_dashboard_msgsSrvGetPrograms_Response ReadRos2Ur_dashboard_msgsSrvGetPrograms_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Ur_dashboard_msgsSrvGetPrograms_Response();
        value.@programs = new _Ros2Ur_dashboard_msgsMsgProgramInformation[ReadCount(reader, 16, 36)];
        for(int index = 0; index < value.@programs.Length; ++index)
            value.@programs[index] = ReadRos2Ur_dashboard_msgsMsgProgramInformation(reader);
        value.@answer = ReadText(reader, 256);
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Ur_dashboard_msgsSrvGetRobotMode_Request
    {
        public _Ros2Ur_dashboard_msgsSrvGetRobotMode_Request()
        {
        }
    }

    public sealed class Ros2Ur_dashboard_msgsSrvGetRobotMode_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Ur_dashboard_msgsSrvGetRobotMode_Request>
    {
        public static readonly Ros2Ur_dashboard_msgsSrvGetRobotMode_RequestCodec Instance = new Ros2Ur_dashboard_msgsSrvGetRobotMode_RequestCodec();

        private Ros2Ur_dashboard_msgsSrvGetRobotMode_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "ur_dashboard_msgs/srv/GetRobotMode_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_d1d9cd94a443b20ec0d41a8db1a6d87291657597abc014e7da0f46a58c6c5614";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public byte[] Encode(_Ros2Ur_dashboard_msgsSrvGetRobotMode_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Ur_dashboard_msgsSrvGetRobotMode_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Ur_dashboard_msgsSrvGetRobotMode_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Ur_dashboard_msgsSrvGetRobotMode_Request value = ReadRos2Ur_dashboard_msgsSrvGetRobotMode_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Ur_dashboard_msgsSrvGetRobotMode_Request(_Codecs.Writer writer, _Ros2Ur_dashboard_msgsSrvGetRobotMode_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    private static _Ros2Ur_dashboard_msgsSrvGetRobotMode_Request ReadRos2Ur_dashboard_msgsSrvGetRobotMode_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Ur_dashboard_msgsSrvGetRobotMode_Request();
        return value;
    }

    public sealed class _Ros2Ur_dashboard_msgsSrvGetRobotMode_Response
    {
        public _Ros2Ur_dashboard_msgsMsgRobotMode @robot_mode = new _Ros2Ur_dashboard_msgsMsgRobotMode();
        public string @answer = "";
        public bool @success = false;

        public _Ros2Ur_dashboard_msgsSrvGetRobotMode_Response()
        {
        }
    }

    public sealed class Ros2Ur_dashboard_msgsSrvGetRobotMode_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Ur_dashboard_msgsSrvGetRobotMode_Response>
    {
        public static readonly Ros2Ur_dashboard_msgsSrvGetRobotMode_ResponseCodec Instance = new Ros2Ur_dashboard_msgsSrvGetRobotMode_ResponseCodec();

        private Ros2Ur_dashboard_msgsSrvGetRobotMode_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "ur_dashboard_msgs/srv/GetRobotMode_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_67db750ad95b3b207d61b18513a117c868040c22c93638f07fa74645d87bcfba";
        public const int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 262;

        public byte[] Encode(_Ros2Ur_dashboard_msgsSrvGetRobotMode_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Ur_dashboard_msgsSrvGetRobotMode_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Ur_dashboard_msgsSrvGetRobotMode_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Ur_dashboard_msgsSrvGetRobotMode_Response value = ReadRos2Ur_dashboard_msgsSrvGetRobotMode_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Ur_dashboard_msgsSrvGetRobotMode_Response(_Codecs.Writer writer, _Ros2Ur_dashboard_msgsSrvGetRobotMode_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Ur_dashboard_msgsMsgRobotMode part0 = value.@robot_mode;
        WriteRos2Ur_dashboard_msgsMsgRobotMode(writer, part0);
        string part1 = value.@answer;
        WriteText(writer, part1, 256);
        bool part2 = value.@success;
        writer.Unsigned(part2 ? 1UL : 0UL, 1);
    }

    private static _Ros2Ur_dashboard_msgsSrvGetRobotMode_Response ReadRos2Ur_dashboard_msgsSrvGetRobotMode_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Ur_dashboard_msgsSrvGetRobotMode_Response();
        value.@robot_mode = ReadRos2Ur_dashboard_msgsMsgRobotMode(reader);
        value.@answer = ReadText(reader, 256);
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Ur_dashboard_msgsSrvGetRobotModel_Request
    {
        public _Ros2Ur_dashboard_msgsSrvGetRobotModel_Request()
        {
        }
    }

    public sealed class Ros2Ur_dashboard_msgsSrvGetRobotModel_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Ur_dashboard_msgsSrvGetRobotModel_Request>
    {
        public static readonly Ros2Ur_dashboard_msgsSrvGetRobotModel_RequestCodec Instance = new Ros2Ur_dashboard_msgsSrvGetRobotModel_RequestCodec();

        private Ros2Ur_dashboard_msgsSrvGetRobotModel_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "ur_dashboard_msgs/srv/GetRobotModel_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_9db08f07993bd5786aea5b6bd567f9e9f49329883326ea16e6c49eef1586dc43";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public byte[] Encode(_Ros2Ur_dashboard_msgsSrvGetRobotModel_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Ur_dashboard_msgsSrvGetRobotModel_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Ur_dashboard_msgsSrvGetRobotModel_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Ur_dashboard_msgsSrvGetRobotModel_Request value = ReadRos2Ur_dashboard_msgsSrvGetRobotModel_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Ur_dashboard_msgsSrvGetRobotModel_Request(_Codecs.Writer writer, _Ros2Ur_dashboard_msgsSrvGetRobotModel_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    private static _Ros2Ur_dashboard_msgsSrvGetRobotModel_Request ReadRos2Ur_dashboard_msgsSrvGetRobotModel_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Ur_dashboard_msgsSrvGetRobotModel_Request();
        return value;
    }

    public sealed class _Ros2Ur_dashboard_msgsSrvGetRobotModel_Response
    {
        public bool @success = false;
        public string @answer = "";
        public string @robot_model = "";

        public _Ros2Ur_dashboard_msgsSrvGetRobotModel_Response()
        {
        }
    }

    public sealed class Ros2Ur_dashboard_msgsSrvGetRobotModel_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Ur_dashboard_msgsSrvGetRobotModel_Response>
    {
        public static readonly Ros2Ur_dashboard_msgsSrvGetRobotModel_ResponseCodec Instance = new Ros2Ur_dashboard_msgsSrvGetRobotModel_ResponseCodec();

        private Ros2Ur_dashboard_msgsSrvGetRobotModel_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "ur_dashboard_msgs/srv/GetRobotModel_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_faf0124c542ef7420915527c27e99a7d26c5d6274f55d869bc9416e6b7d9b3c9";
        public const int MIN_WIRE_BYTES = 9, MAX_WIRE_BYTES = 521;

        public byte[] Encode(_Ros2Ur_dashboard_msgsSrvGetRobotModel_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Ur_dashboard_msgsSrvGetRobotModel_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Ur_dashboard_msgsSrvGetRobotModel_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Ur_dashboard_msgsSrvGetRobotModel_Response value = ReadRos2Ur_dashboard_msgsSrvGetRobotModel_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Ur_dashboard_msgsSrvGetRobotModel_Response(_Codecs.Writer writer, _Ros2Ur_dashboard_msgsSrvGetRobotModel_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
        string part1 = value.@answer;
        WriteText(writer, part1, 256);
        string part2 = value.@robot_model;
        WriteText(writer, part2, 256);
    }

    private static _Ros2Ur_dashboard_msgsSrvGetRobotModel_Response ReadRos2Ur_dashboard_msgsSrvGetRobotModel_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Ur_dashboard_msgsSrvGetRobotModel_Response();
        value.@success = ReadBool(reader);
        value.@answer = ReadText(reader, 256);
        value.@robot_model = ReadText(reader, 256);
        return value;
    }

    public sealed class _Ros2Ur_dashboard_msgsSrvGetSafetyMode_Request
    {
        public _Ros2Ur_dashboard_msgsSrvGetSafetyMode_Request()
        {
        }
    }

    public sealed class Ros2Ur_dashboard_msgsSrvGetSafetyMode_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Ur_dashboard_msgsSrvGetSafetyMode_Request>
    {
        public static readonly Ros2Ur_dashboard_msgsSrvGetSafetyMode_RequestCodec Instance = new Ros2Ur_dashboard_msgsSrvGetSafetyMode_RequestCodec();

        private Ros2Ur_dashboard_msgsSrvGetSafetyMode_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "ur_dashboard_msgs/srv/GetSafetyMode_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_5866cc4b0e10508eeb45ceecf9f9b6036ba55d04c9613622e189ccde2781dcb0";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public byte[] Encode(_Ros2Ur_dashboard_msgsSrvGetSafetyMode_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Ur_dashboard_msgsSrvGetSafetyMode_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Ur_dashboard_msgsSrvGetSafetyMode_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Ur_dashboard_msgsSrvGetSafetyMode_Request value = ReadRos2Ur_dashboard_msgsSrvGetSafetyMode_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Ur_dashboard_msgsSrvGetSafetyMode_Request(_Codecs.Writer writer, _Ros2Ur_dashboard_msgsSrvGetSafetyMode_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    private static _Ros2Ur_dashboard_msgsSrvGetSafetyMode_Request ReadRos2Ur_dashboard_msgsSrvGetSafetyMode_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Ur_dashboard_msgsSrvGetSafetyMode_Request();
        return value;
    }

    public sealed class _Ros2Ur_dashboard_msgsSrvGetSafetyMode_Response
    {
        public _Ros2Ur_dashboard_msgsMsgSafetyMode @safety_mode = new _Ros2Ur_dashboard_msgsMsgSafetyMode();
        public string @answer = "";
        public bool @success = false;

        public _Ros2Ur_dashboard_msgsSrvGetSafetyMode_Response()
        {
        }
    }

    public sealed class Ros2Ur_dashboard_msgsSrvGetSafetyMode_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Ur_dashboard_msgsSrvGetSafetyMode_Response>
    {
        public static readonly Ros2Ur_dashboard_msgsSrvGetSafetyMode_ResponseCodec Instance = new Ros2Ur_dashboard_msgsSrvGetSafetyMode_ResponseCodec();

        private Ros2Ur_dashboard_msgsSrvGetSafetyMode_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "ur_dashboard_msgs/srv/GetSafetyMode_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_f65d7ff83dc97f891032d8ab16bf71a9c2326c6ae6a033fe1d6e06f011c5a40b";
        public const int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 262;

        public byte[] Encode(_Ros2Ur_dashboard_msgsSrvGetSafetyMode_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Ur_dashboard_msgsSrvGetSafetyMode_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Ur_dashboard_msgsSrvGetSafetyMode_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Ur_dashboard_msgsSrvGetSafetyMode_Response value = ReadRos2Ur_dashboard_msgsSrvGetSafetyMode_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Ur_dashboard_msgsSrvGetSafetyMode_Response(_Codecs.Writer writer, _Ros2Ur_dashboard_msgsSrvGetSafetyMode_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Ur_dashboard_msgsMsgSafetyMode part0 = value.@safety_mode;
        WriteRos2Ur_dashboard_msgsMsgSafetyMode(writer, part0);
        string part1 = value.@answer;
        WriteText(writer, part1, 256);
        bool part2 = value.@success;
        writer.Unsigned(part2 ? 1UL : 0UL, 1);
    }

    private static _Ros2Ur_dashboard_msgsSrvGetSafetyMode_Response ReadRos2Ur_dashboard_msgsSrvGetSafetyMode_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Ur_dashboard_msgsSrvGetSafetyMode_Response();
        value.@safety_mode = ReadRos2Ur_dashboard_msgsMsgSafetyMode(reader);
        value.@answer = ReadText(reader, 256);
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Ur_dashboard_msgsSrvGetSafetyStatus_Request
    {
        public _Ros2Ur_dashboard_msgsSrvGetSafetyStatus_Request()
        {
        }
    }

    public sealed class Ros2Ur_dashboard_msgsSrvGetSafetyStatus_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Ur_dashboard_msgsSrvGetSafetyStatus_Request>
    {
        public static readonly Ros2Ur_dashboard_msgsSrvGetSafetyStatus_RequestCodec Instance = new Ros2Ur_dashboard_msgsSrvGetSafetyStatus_RequestCodec();

        private Ros2Ur_dashboard_msgsSrvGetSafetyStatus_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "ur_dashboard_msgs/srv/GetSafetyStatus_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_0e2958bcd7b121682361c94b2926bcc4552d7ef07dc2af4609d04b1bb7054602";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public byte[] Encode(_Ros2Ur_dashboard_msgsSrvGetSafetyStatus_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Ur_dashboard_msgsSrvGetSafetyStatus_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Ur_dashboard_msgsSrvGetSafetyStatus_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Ur_dashboard_msgsSrvGetSafetyStatus_Request value = ReadRos2Ur_dashboard_msgsSrvGetSafetyStatus_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Ur_dashboard_msgsSrvGetSafetyStatus_Request(_Codecs.Writer writer, _Ros2Ur_dashboard_msgsSrvGetSafetyStatus_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    private static _Ros2Ur_dashboard_msgsSrvGetSafetyStatus_Request ReadRos2Ur_dashboard_msgsSrvGetSafetyStatus_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Ur_dashboard_msgsSrvGetSafetyStatus_Request();
        return value;
    }

    public sealed class _Ros2Ur_dashboard_msgsSrvGetSafetyStatus_Response
    {
        public string @answer = "";
        public bool @success = false;
        public _Ros2Ur_dashboard_msgsMsgSafetyStatus @safety_status = new _Ros2Ur_dashboard_msgsMsgSafetyStatus();

        public _Ros2Ur_dashboard_msgsSrvGetSafetyStatus_Response()
        {
        }
    }

    public sealed class Ros2Ur_dashboard_msgsSrvGetSafetyStatus_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Ur_dashboard_msgsSrvGetSafetyStatus_Response>
    {
        public static readonly Ros2Ur_dashboard_msgsSrvGetSafetyStatus_ResponseCodec Instance = new Ros2Ur_dashboard_msgsSrvGetSafetyStatus_ResponseCodec();

        private Ros2Ur_dashboard_msgsSrvGetSafetyStatus_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "ur_dashboard_msgs/srv/GetSafetyStatus_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_bb96aaa96f5c78b97ad80a14eb96865dc10b5a1d12524fcbcc75fc6d481c53e4";
        public const int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 262;

        public byte[] Encode(_Ros2Ur_dashboard_msgsSrvGetSafetyStatus_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Ur_dashboard_msgsSrvGetSafetyStatus_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Ur_dashboard_msgsSrvGetSafetyStatus_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Ur_dashboard_msgsSrvGetSafetyStatus_Response value = ReadRos2Ur_dashboard_msgsSrvGetSafetyStatus_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Ur_dashboard_msgsSrvGetSafetyStatus_Response(_Codecs.Writer writer, _Ros2Ur_dashboard_msgsSrvGetSafetyStatus_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        string part0 = value.@answer;
        WriteText(writer, part0, 256);
        bool part1 = value.@success;
        writer.Unsigned(part1 ? 1UL : 0UL, 1);
        _Ros2Ur_dashboard_msgsMsgSafetyStatus part2 = value.@safety_status;
        WriteRos2Ur_dashboard_msgsMsgSafetyStatus(writer, part2);
    }

    private static _Ros2Ur_dashboard_msgsSrvGetSafetyStatus_Response ReadRos2Ur_dashboard_msgsSrvGetSafetyStatus_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Ur_dashboard_msgsSrvGetSafetyStatus_Response();
        value.@answer = ReadText(reader, 256);
        value.@success = ReadBool(reader);
        value.@safety_status = ReadRos2Ur_dashboard_msgsMsgSafetyStatus(reader);
        return value;
    }

    public sealed class _Ros2Ur_dashboard_msgsSrvGetSerialNumber_Request
    {
        public _Ros2Ur_dashboard_msgsSrvGetSerialNumber_Request()
        {
        }
    }

    public sealed class Ros2Ur_dashboard_msgsSrvGetSerialNumber_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Ur_dashboard_msgsSrvGetSerialNumber_Request>
    {
        public static readonly Ros2Ur_dashboard_msgsSrvGetSerialNumber_RequestCodec Instance = new Ros2Ur_dashboard_msgsSrvGetSerialNumber_RequestCodec();

        private Ros2Ur_dashboard_msgsSrvGetSerialNumber_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "ur_dashboard_msgs/srv/GetSerialNumber_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_bbb1ca066c77ed459352de69d566f3ea87b94fe593c31c911193416f92a73c9b";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public byte[] Encode(_Ros2Ur_dashboard_msgsSrvGetSerialNumber_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Ur_dashboard_msgsSrvGetSerialNumber_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Ur_dashboard_msgsSrvGetSerialNumber_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Ur_dashboard_msgsSrvGetSerialNumber_Request value = ReadRos2Ur_dashboard_msgsSrvGetSerialNumber_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Ur_dashboard_msgsSrvGetSerialNumber_Request(_Codecs.Writer writer, _Ros2Ur_dashboard_msgsSrvGetSerialNumber_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    private static _Ros2Ur_dashboard_msgsSrvGetSerialNumber_Request ReadRos2Ur_dashboard_msgsSrvGetSerialNumber_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Ur_dashboard_msgsSrvGetSerialNumber_Request();
        return value;
    }

    public sealed class _Ros2Ur_dashboard_msgsSrvGetSerialNumber_Response
    {
        public ulong @serial_number = 0;
        public string @answer = "";
        public bool @success = false;

        public _Ros2Ur_dashboard_msgsSrvGetSerialNumber_Response()
        {
        }
    }

    public sealed class Ros2Ur_dashboard_msgsSrvGetSerialNumber_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Ur_dashboard_msgsSrvGetSerialNumber_Response>
    {
        public static readonly Ros2Ur_dashboard_msgsSrvGetSerialNumber_ResponseCodec Instance = new Ros2Ur_dashboard_msgsSrvGetSerialNumber_ResponseCodec();

        private Ros2Ur_dashboard_msgsSrvGetSerialNumber_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "ur_dashboard_msgs/srv/GetSerialNumber_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_f389641d089fa6fd421348f047732de2122cd714bdb2bd4d1e611592aca349e7";
        public const int MIN_WIRE_BYTES = 13, MAX_WIRE_BYTES = 269;

        public byte[] Encode(_Ros2Ur_dashboard_msgsSrvGetSerialNumber_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Ur_dashboard_msgsSrvGetSerialNumber_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Ur_dashboard_msgsSrvGetSerialNumber_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Ur_dashboard_msgsSrvGetSerialNumber_Response value = ReadRos2Ur_dashboard_msgsSrvGetSerialNumber_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Ur_dashboard_msgsSrvGetSerialNumber_Response(_Codecs.Writer writer, _Ros2Ur_dashboard_msgsSrvGetSerialNumber_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        ulong part0 = value.@serial_number;
        writer.Unsigned(part0, 8);
        string part1 = value.@answer;
        WriteText(writer, part1, 256);
        bool part2 = value.@success;
        writer.Unsigned(part2 ? 1UL : 0UL, 1);
    }

    private static _Ros2Ur_dashboard_msgsSrvGetSerialNumber_Response ReadRos2Ur_dashboard_msgsSrvGetSerialNumber_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Ur_dashboard_msgsSrvGetSerialNumber_Response();
        value.@serial_number = unchecked((ulong)reader.Unsigned(8));
        value.@answer = ReadText(reader, 256);
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Ur_dashboard_msgsSrvGetUserRole_Request
    {
        public _Ros2Ur_dashboard_msgsSrvGetUserRole_Request()
        {
        }
    }

    public sealed class Ros2Ur_dashboard_msgsSrvGetUserRole_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Ur_dashboard_msgsSrvGetUserRole_Request>
    {
        public static readonly Ros2Ur_dashboard_msgsSrvGetUserRole_RequestCodec Instance = new Ros2Ur_dashboard_msgsSrvGetUserRole_RequestCodec();

        private Ros2Ur_dashboard_msgsSrvGetUserRole_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "ur_dashboard_msgs/srv/GetUserRole_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_a331be09dd2093e4584e6dc80f83caaadd3a8e43cca6a1c8fcfa1e2ea632c9f0";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public byte[] Encode(_Ros2Ur_dashboard_msgsSrvGetUserRole_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Ur_dashboard_msgsSrvGetUserRole_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Ur_dashboard_msgsSrvGetUserRole_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Ur_dashboard_msgsSrvGetUserRole_Request value = ReadRos2Ur_dashboard_msgsSrvGetUserRole_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Ur_dashboard_msgsSrvGetUserRole_Request(_Codecs.Writer writer, _Ros2Ur_dashboard_msgsSrvGetUserRole_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    private static _Ros2Ur_dashboard_msgsSrvGetUserRole_Request ReadRos2Ur_dashboard_msgsSrvGetUserRole_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Ur_dashboard_msgsSrvGetUserRole_Request();
        return value;
    }

    public sealed class _Ros2Ur_dashboard_msgsSrvGetUserRole_Response
    {
        public _Ros2Ur_dashboard_msgsMsgUserRole @user_role = new _Ros2Ur_dashboard_msgsMsgUserRole();
        public string @answer = "";
        public bool @success = false;

        public _Ros2Ur_dashboard_msgsSrvGetUserRole_Response()
        {
        }
    }

    public sealed class Ros2Ur_dashboard_msgsSrvGetUserRole_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Ur_dashboard_msgsSrvGetUserRole_Response>
    {
        public static readonly Ros2Ur_dashboard_msgsSrvGetUserRole_ResponseCodec Instance = new Ros2Ur_dashboard_msgsSrvGetUserRole_ResponseCodec();

        private Ros2Ur_dashboard_msgsSrvGetUserRole_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "ur_dashboard_msgs/srv/GetUserRole_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_ed4f53e59fbe4cd33cfbf5d190b60fbe8371dda7da9d7af6e270a882eb142df8";
        public const int MIN_WIRE_BYTES = 9, MAX_WIRE_BYTES = 521;

        public byte[] Encode(_Ros2Ur_dashboard_msgsSrvGetUserRole_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Ur_dashboard_msgsSrvGetUserRole_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Ur_dashboard_msgsSrvGetUserRole_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Ur_dashboard_msgsSrvGetUserRole_Response value = ReadRos2Ur_dashboard_msgsSrvGetUserRole_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Ur_dashboard_msgsSrvGetUserRole_Response(_Codecs.Writer writer, _Ros2Ur_dashboard_msgsSrvGetUserRole_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Ur_dashboard_msgsMsgUserRole part0 = value.@user_role;
        WriteRos2Ur_dashboard_msgsMsgUserRole(writer, part0);
        string part1 = value.@answer;
        WriteText(writer, part1, 256);
        bool part2 = value.@success;
        writer.Unsigned(part2 ? 1UL : 0UL, 1);
    }

    private static _Ros2Ur_dashboard_msgsSrvGetUserRole_Response ReadRos2Ur_dashboard_msgsSrvGetUserRole_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Ur_dashboard_msgsSrvGetUserRole_Response();
        value.@user_role = ReadRos2Ur_dashboard_msgsMsgUserRole(reader);
        value.@answer = ReadText(reader, 256);
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Ur_dashboard_msgsSrvIsInRemoteControl_Request
    {
        public _Ros2Ur_dashboard_msgsSrvIsInRemoteControl_Request()
        {
        }
    }

    public sealed class Ros2Ur_dashboard_msgsSrvIsInRemoteControl_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Ur_dashboard_msgsSrvIsInRemoteControl_Request>
    {
        public static readonly Ros2Ur_dashboard_msgsSrvIsInRemoteControl_RequestCodec Instance = new Ros2Ur_dashboard_msgsSrvIsInRemoteControl_RequestCodec();

        private Ros2Ur_dashboard_msgsSrvIsInRemoteControl_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "ur_dashboard_msgs/srv/IsInRemoteControl_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_4b6b86fc4337c36589e8781b46ddbe6992f750b565ff413ea0b069982d87a463";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public byte[] Encode(_Ros2Ur_dashboard_msgsSrvIsInRemoteControl_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Ur_dashboard_msgsSrvIsInRemoteControl_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Ur_dashboard_msgsSrvIsInRemoteControl_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Ur_dashboard_msgsSrvIsInRemoteControl_Request value = ReadRos2Ur_dashboard_msgsSrvIsInRemoteControl_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Ur_dashboard_msgsSrvIsInRemoteControl_Request(_Codecs.Writer writer, _Ros2Ur_dashboard_msgsSrvIsInRemoteControl_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    private static _Ros2Ur_dashboard_msgsSrvIsInRemoteControl_Request ReadRos2Ur_dashboard_msgsSrvIsInRemoteControl_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Ur_dashboard_msgsSrvIsInRemoteControl_Request();
        return value;
    }

    public sealed class _Ros2Ur_dashboard_msgsSrvIsInRemoteControl_Response
    {
        public string @answer = "";
        public bool @remote_control = false;
        public bool @success = false;

        public _Ros2Ur_dashboard_msgsSrvIsInRemoteControl_Response()
        {
        }
    }

    public sealed class Ros2Ur_dashboard_msgsSrvIsInRemoteControl_ResponseCodec :
        global::Uwvm.RosWasm.ICodec<_Ros2Ur_dashboard_msgsSrvIsInRemoteControl_Response>
    {
        public static readonly Ros2Ur_dashboard_msgsSrvIsInRemoteControl_ResponseCodec Instance = new Ros2Ur_dashboard_msgsSrvIsInRemoteControl_ResponseCodec();

        private Ros2Ur_dashboard_msgsSrvIsInRemoteControl_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "ur_dashboard_msgs/srv/IsInRemoteControl_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_f2705c1be319c7c667f4f2224851b06c24b15b4211c2828fab89f09455e4c816";
        public const int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 262;

        public byte[] Encode(_Ros2Ur_dashboard_msgsSrvIsInRemoteControl_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Ur_dashboard_msgsSrvIsInRemoteControl_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Ur_dashboard_msgsSrvIsInRemoteControl_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Ur_dashboard_msgsSrvIsInRemoteControl_Response value = ReadRos2Ur_dashboard_msgsSrvIsInRemoteControl_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Ur_dashboard_msgsSrvIsInRemoteControl_Response(_Codecs.Writer writer,
                                                                                _Ros2Ur_dashboard_msgsSrvIsInRemoteControl_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        string part0 = value.@answer;
        WriteText(writer, part0, 256);
        bool part1 = value.@remote_control;
        writer.Unsigned(part1 ? 1UL : 0UL, 1);
        bool part2 = value.@success;
        writer.Unsigned(part2 ? 1UL : 0UL, 1);
    }

    private static _Ros2Ur_dashboard_msgsSrvIsInRemoteControl_Response ReadRos2Ur_dashboard_msgsSrvIsInRemoteControl_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Ur_dashboard_msgsSrvIsInRemoteControl_Response();
        value.@answer = ReadText(reader, 256);
        value.@remote_control = ReadBool(reader);
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Ur_dashboard_msgsSrvIsProgramRunning_Request
    {
        public _Ros2Ur_dashboard_msgsSrvIsProgramRunning_Request()
        {
        }
    }

    public sealed class Ros2Ur_dashboard_msgsSrvIsProgramRunning_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Ur_dashboard_msgsSrvIsProgramRunning_Request>
    {
        public static readonly Ros2Ur_dashboard_msgsSrvIsProgramRunning_RequestCodec Instance = new Ros2Ur_dashboard_msgsSrvIsProgramRunning_RequestCodec();

        private Ros2Ur_dashboard_msgsSrvIsProgramRunning_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "ur_dashboard_msgs/srv/IsProgramRunning_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_f28274c0dc01d8aa2f981f969c05a614e6b3922601d578f99c6321a4b20fc80f";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public byte[] Encode(_Ros2Ur_dashboard_msgsSrvIsProgramRunning_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Ur_dashboard_msgsSrvIsProgramRunning_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Ur_dashboard_msgsSrvIsProgramRunning_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Ur_dashboard_msgsSrvIsProgramRunning_Request value = ReadRos2Ur_dashboard_msgsSrvIsProgramRunning_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Ur_dashboard_msgsSrvIsProgramRunning_Request(_Codecs.Writer writer, _Ros2Ur_dashboard_msgsSrvIsProgramRunning_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    private static _Ros2Ur_dashboard_msgsSrvIsProgramRunning_Request ReadRos2Ur_dashboard_msgsSrvIsProgramRunning_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Ur_dashboard_msgsSrvIsProgramRunning_Request();
        return value;
    }

    public sealed class _Ros2Ur_dashboard_msgsSrvIsProgramRunning_Response
    {
        public string @answer = "";
        public bool @program_running = false;
        public bool @success = false;

        public _Ros2Ur_dashboard_msgsSrvIsProgramRunning_Response()
        {
        }
    }

    public sealed class Ros2Ur_dashboard_msgsSrvIsProgramRunning_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Ur_dashboard_msgsSrvIsProgramRunning_Response>
    {
        public static readonly Ros2Ur_dashboard_msgsSrvIsProgramRunning_ResponseCodec Instance = new Ros2Ur_dashboard_msgsSrvIsProgramRunning_ResponseCodec();

        private Ros2Ur_dashboard_msgsSrvIsProgramRunning_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "ur_dashboard_msgs/srv/IsProgramRunning_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_c57cc7ecd7e81f7359824b43884a58f65748a4c77cacbcc45be17aa9147cf499";
        public const int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 262;

        public byte[] Encode(_Ros2Ur_dashboard_msgsSrvIsProgramRunning_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Ur_dashboard_msgsSrvIsProgramRunning_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Ur_dashboard_msgsSrvIsProgramRunning_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Ur_dashboard_msgsSrvIsProgramRunning_Response value = ReadRos2Ur_dashboard_msgsSrvIsProgramRunning_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Ur_dashboard_msgsSrvIsProgramRunning_Response(_Codecs.Writer writer, _Ros2Ur_dashboard_msgsSrvIsProgramRunning_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        string part0 = value.@answer;
        WriteText(writer, part0, 256);
        bool part1 = value.@program_running;
        writer.Unsigned(part1 ? 1UL : 0UL, 1);
        bool part2 = value.@success;
        writer.Unsigned(part2 ? 1UL : 0UL, 1);
    }

    private static _Ros2Ur_dashboard_msgsSrvIsProgramRunning_Response ReadRos2Ur_dashboard_msgsSrvIsProgramRunning_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Ur_dashboard_msgsSrvIsProgramRunning_Response();
        value.@answer = ReadText(reader, 256);
        value.@program_running = ReadBool(reader);
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Ur_dashboard_msgsSrvIsProgramSaved_Request
    {
        public _Ros2Ur_dashboard_msgsSrvIsProgramSaved_Request()
        {
        }
    }

    public sealed class Ros2Ur_dashboard_msgsSrvIsProgramSaved_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Ur_dashboard_msgsSrvIsProgramSaved_Request>
    {
        public static readonly Ros2Ur_dashboard_msgsSrvIsProgramSaved_RequestCodec Instance = new Ros2Ur_dashboard_msgsSrvIsProgramSaved_RequestCodec();

        private Ros2Ur_dashboard_msgsSrvIsProgramSaved_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "ur_dashboard_msgs/srv/IsProgramSaved_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_c53d57cffc0480d66257150a8450ba90563fda5153742784831d38abcbc0b099";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public byte[] Encode(_Ros2Ur_dashboard_msgsSrvIsProgramSaved_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Ur_dashboard_msgsSrvIsProgramSaved_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Ur_dashboard_msgsSrvIsProgramSaved_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Ur_dashboard_msgsSrvIsProgramSaved_Request value = ReadRos2Ur_dashboard_msgsSrvIsProgramSaved_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Ur_dashboard_msgsSrvIsProgramSaved_Request(_Codecs.Writer writer, _Ros2Ur_dashboard_msgsSrvIsProgramSaved_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    private static _Ros2Ur_dashboard_msgsSrvIsProgramSaved_Request ReadRos2Ur_dashboard_msgsSrvIsProgramSaved_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Ur_dashboard_msgsSrvIsProgramSaved_Request();
        return value;
    }

    public sealed class _Ros2Ur_dashboard_msgsSrvIsProgramSaved_Response
    {
        public string @answer = "";
        public string @program_name = "";
        public bool @program_saved = false;
        public bool @success = false;

        public _Ros2Ur_dashboard_msgsSrvIsProgramSaved_Response()
        {
        }
    }

    public sealed class Ros2Ur_dashboard_msgsSrvIsProgramSaved_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Ur_dashboard_msgsSrvIsProgramSaved_Response>
    {
        public static readonly Ros2Ur_dashboard_msgsSrvIsProgramSaved_ResponseCodec Instance = new Ros2Ur_dashboard_msgsSrvIsProgramSaved_ResponseCodec();

        private Ros2Ur_dashboard_msgsSrvIsProgramSaved_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "ur_dashboard_msgs/srv/IsProgramSaved_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_aa171247f31fd00a1b8820ee21cf20d159bd10d0d2887dc96b3a4dd4d372d115";
        public const int MIN_WIRE_BYTES = 10, MAX_WIRE_BYTES = 522;

        public byte[] Encode(_Ros2Ur_dashboard_msgsSrvIsProgramSaved_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Ur_dashboard_msgsSrvIsProgramSaved_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Ur_dashboard_msgsSrvIsProgramSaved_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Ur_dashboard_msgsSrvIsProgramSaved_Response value = ReadRos2Ur_dashboard_msgsSrvIsProgramSaved_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Ur_dashboard_msgsSrvIsProgramSaved_Response(_Codecs.Writer writer, _Ros2Ur_dashboard_msgsSrvIsProgramSaved_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        string part0 = value.@answer;
        WriteText(writer, part0, 256);
        string part1 = value.@program_name;
        WriteText(writer, part1, 256);
        bool part2 = value.@program_saved;
        writer.Unsigned(part2 ? 1UL : 0UL, 1);
        bool part3 = value.@success;
        writer.Unsigned(part3 ? 1UL : 0UL, 1);
    }

    private static _Ros2Ur_dashboard_msgsSrvIsProgramSaved_Response ReadRos2Ur_dashboard_msgsSrvIsProgramSaved_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Ur_dashboard_msgsSrvIsProgramSaved_Response();
        value.@answer = ReadText(reader, 256);
        value.@program_name = ReadText(reader, 256);
        value.@program_saved = ReadBool(reader);
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Ur_dashboard_msgsSrvLoad_Request
    {
        public string @filename = "";

        public _Ros2Ur_dashboard_msgsSrvLoad_Request()
        {
        }
    }

    public sealed class Ros2Ur_dashboard_msgsSrvLoad_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Ur_dashboard_msgsSrvLoad_Request>
    {
        public static readonly Ros2Ur_dashboard_msgsSrvLoad_RequestCodec Instance = new Ros2Ur_dashboard_msgsSrvLoad_RequestCodec();

        private Ros2Ur_dashboard_msgsSrvLoad_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "ur_dashboard_msgs/srv/Load_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_1d0cd6cdeaaafce999a7e9924721246b9f4954f22da40fd0a27fb7b657324876";
        public const int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 260;

        public byte[] Encode(_Ros2Ur_dashboard_msgsSrvLoad_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Ur_dashboard_msgsSrvLoad_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Ur_dashboard_msgsSrvLoad_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Ur_dashboard_msgsSrvLoad_Request value = ReadRos2Ur_dashboard_msgsSrvLoad_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Ur_dashboard_msgsSrvLoad_Request(_Codecs.Writer writer, _Ros2Ur_dashboard_msgsSrvLoad_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        string part0 = value.@filename;
        WriteText(writer, part0, 256);
    }

    private static _Ros2Ur_dashboard_msgsSrvLoad_Request ReadRos2Ur_dashboard_msgsSrvLoad_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Ur_dashboard_msgsSrvLoad_Request();
        value.@filename = ReadText(reader, 256);
        return value;
    }

    public sealed class _Ros2Ur_dashboard_msgsSrvLoad_Response
    {
        public string @answer = "";
        public bool @success = false;

        public _Ros2Ur_dashboard_msgsSrvLoad_Response()
        {
        }
    }

    public sealed class Ros2Ur_dashboard_msgsSrvLoad_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Ur_dashboard_msgsSrvLoad_Response>
    {
        public static readonly Ros2Ur_dashboard_msgsSrvLoad_ResponseCodec Instance = new Ros2Ur_dashboard_msgsSrvLoad_ResponseCodec();

        private Ros2Ur_dashboard_msgsSrvLoad_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "ur_dashboard_msgs/srv/Load_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_4e694de8079133a8e789add3640dfe19805cad92991a650167c2aae7067da415";
        public const int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 261;

        public byte[] Encode(_Ros2Ur_dashboard_msgsSrvLoad_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Ur_dashboard_msgsSrvLoad_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Ur_dashboard_msgsSrvLoad_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Ur_dashboard_msgsSrvLoad_Response value = ReadRos2Ur_dashboard_msgsSrvLoad_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Ur_dashboard_msgsSrvLoad_Response(_Codecs.Writer writer, _Ros2Ur_dashboard_msgsSrvLoad_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        string part0 = value.@answer;
        WriteText(writer, part0, 256);
        bool part1 = value.@success;
        writer.Unsigned(part1 ? 1UL : 0UL, 1);
    }

    private static _Ros2Ur_dashboard_msgsSrvLoad_Response ReadRos2Ur_dashboard_msgsSrvLoad_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Ur_dashboard_msgsSrvLoad_Response();
        value.@answer = ReadText(reader, 256);
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Ur_dashboard_msgsSrvPopup_Request
    {
        public string @message = "";
        public string @title = "";

        public _Ros2Ur_dashboard_msgsSrvPopup_Request()
        {
        }
    }

    public sealed class Ros2Ur_dashboard_msgsSrvPopup_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Ur_dashboard_msgsSrvPopup_Request>
    {
        public static readonly Ros2Ur_dashboard_msgsSrvPopup_RequestCodec Instance = new Ros2Ur_dashboard_msgsSrvPopup_RequestCodec();

        private Ros2Ur_dashboard_msgsSrvPopup_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "ur_dashboard_msgs/srv/Popup_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_369e6eab4f689a846c52fcc5cb539da63fab3939fab254dd1e04c7b274d5f770";
        public const int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 520;

        public byte[] Encode(_Ros2Ur_dashboard_msgsSrvPopup_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Ur_dashboard_msgsSrvPopup_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Ur_dashboard_msgsSrvPopup_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Ur_dashboard_msgsSrvPopup_Request value = ReadRos2Ur_dashboard_msgsSrvPopup_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Ur_dashboard_msgsSrvPopup_Request(_Codecs.Writer writer, _Ros2Ur_dashboard_msgsSrvPopup_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        string part0 = value.@message;
        WriteText(writer, part0, 256);
        string part1 = value.@title;
        WriteText(writer, part1, 256);
    }

    private static _Ros2Ur_dashboard_msgsSrvPopup_Request ReadRos2Ur_dashboard_msgsSrvPopup_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Ur_dashboard_msgsSrvPopup_Request();
        value.@message = ReadText(reader, 256);
        value.@title = ReadText(reader, 256);
        return value;
    }

    public sealed class _Ros2Ur_dashboard_msgsSrvPopup_Response
    {
        public string @answer = "";
        public bool @success = false;

        public _Ros2Ur_dashboard_msgsSrvPopup_Response()
        {
        }
    }

    public sealed class Ros2Ur_dashboard_msgsSrvPopup_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Ur_dashboard_msgsSrvPopup_Response>
    {
        public static readonly Ros2Ur_dashboard_msgsSrvPopup_ResponseCodec Instance = new Ros2Ur_dashboard_msgsSrvPopup_ResponseCodec();

        private Ros2Ur_dashboard_msgsSrvPopup_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "ur_dashboard_msgs/srv/Popup_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_0b54f7c477c1ddf8ccb18d12d50eaf308225d4927ee377377ed354426e58f984";
        public const int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 261;

        public byte[] Encode(_Ros2Ur_dashboard_msgsSrvPopup_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Ur_dashboard_msgsSrvPopup_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Ur_dashboard_msgsSrvPopup_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Ur_dashboard_msgsSrvPopup_Response value = ReadRos2Ur_dashboard_msgsSrvPopup_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Ur_dashboard_msgsSrvPopup_Response(_Codecs.Writer writer, _Ros2Ur_dashboard_msgsSrvPopup_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        string part0 = value.@answer;
        WriteText(writer, part0, 256);
        bool part1 = value.@success;
        writer.Unsigned(part1 ? 1UL : 0UL, 1);
    }

    private static _Ros2Ur_dashboard_msgsSrvPopup_Response ReadRos2Ur_dashboard_msgsSrvPopup_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Ur_dashboard_msgsSrvPopup_Response();
        value.@answer = ReadText(reader, 256);
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Ur_dashboard_msgsSrvRawRequest_Request
    {
        public string @query = "";

        public _Ros2Ur_dashboard_msgsSrvRawRequest_Request()
        {
        }
    }

    public sealed class Ros2Ur_dashboard_msgsSrvRawRequest_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Ur_dashboard_msgsSrvRawRequest_Request>
    {
        public static readonly Ros2Ur_dashboard_msgsSrvRawRequest_RequestCodec Instance = new Ros2Ur_dashboard_msgsSrvRawRequest_RequestCodec();

        private Ros2Ur_dashboard_msgsSrvRawRequest_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "ur_dashboard_msgs/srv/RawRequest_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_2bf66d87b20ca2de9ed94c04c79042a50239728320b43b27c9942405795b4555";
        public const int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 260;

        public byte[] Encode(_Ros2Ur_dashboard_msgsSrvRawRequest_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Ur_dashboard_msgsSrvRawRequest_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Ur_dashboard_msgsSrvRawRequest_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Ur_dashboard_msgsSrvRawRequest_Request value = ReadRos2Ur_dashboard_msgsSrvRawRequest_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Ur_dashboard_msgsSrvRawRequest_Request(_Codecs.Writer writer, _Ros2Ur_dashboard_msgsSrvRawRequest_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        string part0 = value.@query;
        WriteText(writer, part0, 256);
    }

    private static _Ros2Ur_dashboard_msgsSrvRawRequest_Request ReadRos2Ur_dashboard_msgsSrvRawRequest_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Ur_dashboard_msgsSrvRawRequest_Request();
        value.@query = ReadText(reader, 256);
        return value;
    }

    public sealed class _Ros2Ur_dashboard_msgsSrvRawRequest_Response
    {
        public string @answer = "";

        public _Ros2Ur_dashboard_msgsSrvRawRequest_Response()
        {
        }
    }

    public sealed class Ros2Ur_dashboard_msgsSrvRawRequest_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Ur_dashboard_msgsSrvRawRequest_Response>
    {
        public static readonly Ros2Ur_dashboard_msgsSrvRawRequest_ResponseCodec Instance = new Ros2Ur_dashboard_msgsSrvRawRequest_ResponseCodec();

        private Ros2Ur_dashboard_msgsSrvRawRequest_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "ur_dashboard_msgs/srv/RawRequest_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_7c37f54149bab54f6e7bbfed41992eb54416b31346bc889a9632d5497111267f";
        public const int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 260;

        public byte[] Encode(_Ros2Ur_dashboard_msgsSrvRawRequest_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Ur_dashboard_msgsSrvRawRequest_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Ur_dashboard_msgsSrvRawRequest_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Ur_dashboard_msgsSrvRawRequest_Response value = ReadRos2Ur_dashboard_msgsSrvRawRequest_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Ur_dashboard_msgsSrvRawRequest_Response(_Codecs.Writer writer, _Ros2Ur_dashboard_msgsSrvRawRequest_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        string part0 = value.@answer;
        WriteText(writer, part0, 256);
    }

    private static _Ros2Ur_dashboard_msgsSrvRawRequest_Response ReadRos2Ur_dashboard_msgsSrvRawRequest_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Ur_dashboard_msgsSrvRawRequest_Response();
        value.@answer = ReadText(reader, 256);
        return value;
    }

    public sealed class _Ros2Ur_dashboard_msgsSrvSetOperationalMode_Request
    {
        public _Ros2Ur_dashboard_msgsMsgOperationalMode @operational_mode = new _Ros2Ur_dashboard_msgsMsgOperationalMode();

        public _Ros2Ur_dashboard_msgsSrvSetOperationalMode_Request()
        {
        }
    }

    public sealed class Ros2Ur_dashboard_msgsSrvSetOperationalMode_RequestCodec :
        global::Uwvm.RosWasm.ICodec<_Ros2Ur_dashboard_msgsSrvSetOperationalMode_Request>
    {
        public static readonly Ros2Ur_dashboard_msgsSrvSetOperationalMode_RequestCodec Instance = new Ros2Ur_dashboard_msgsSrvSetOperationalMode_RequestCodec();

        private Ros2Ur_dashboard_msgsSrvSetOperationalMode_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "ur_dashboard_msgs/srv/SetOperationalMode_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_8cc61f7c64211c46e01e52eee2c05f6e709f4f0900cf24fdfd4079b0f7581a00";
        public const int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 260;

        public byte[] Encode(_Ros2Ur_dashboard_msgsSrvSetOperationalMode_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Ur_dashboard_msgsSrvSetOperationalMode_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Ur_dashboard_msgsSrvSetOperationalMode_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Ur_dashboard_msgsSrvSetOperationalMode_Request value = ReadRos2Ur_dashboard_msgsSrvSetOperationalMode_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Ur_dashboard_msgsSrvSetOperationalMode_Request(_Codecs.Writer writer,
                                                                                _Ros2Ur_dashboard_msgsSrvSetOperationalMode_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Ur_dashboard_msgsMsgOperationalMode part0 = value.@operational_mode;
        WriteRos2Ur_dashboard_msgsMsgOperationalMode(writer, part0);
    }

    private static _Ros2Ur_dashboard_msgsSrvSetOperationalMode_Request ReadRos2Ur_dashboard_msgsSrvSetOperationalMode_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Ur_dashboard_msgsSrvSetOperationalMode_Request();
        value.@operational_mode = ReadRos2Ur_dashboard_msgsMsgOperationalMode(reader);
        return value;
    }

    public sealed class _Ros2Ur_dashboard_msgsSrvSetOperationalMode_Response
    {
        public string @answer = "";
        public bool @success = false;

        public _Ros2Ur_dashboard_msgsSrvSetOperationalMode_Response()
        {
        }
    }

    public sealed class Ros2Ur_dashboard_msgsSrvSetOperationalMode_ResponseCodec :
        global::Uwvm.RosWasm.ICodec<_Ros2Ur_dashboard_msgsSrvSetOperationalMode_Response>
    {
        public static readonly Ros2Ur_dashboard_msgsSrvSetOperationalMode_ResponseCodec Instance =
            new Ros2Ur_dashboard_msgsSrvSetOperationalMode_ResponseCodec();

        private Ros2Ur_dashboard_msgsSrvSetOperationalMode_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "ur_dashboard_msgs/srv/SetOperationalMode_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_f5009de077224371e9d2f6c0aecbabd24c80148f2c7e1b1383a64f6f214b202a";
        public const int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 261;

        public byte[] Encode(_Ros2Ur_dashboard_msgsSrvSetOperationalMode_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Ur_dashboard_msgsSrvSetOperationalMode_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Ur_dashboard_msgsSrvSetOperationalMode_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Ur_dashboard_msgsSrvSetOperationalMode_Response value = ReadRos2Ur_dashboard_msgsSrvSetOperationalMode_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Ur_dashboard_msgsSrvSetOperationalMode_Response(_Codecs.Writer writer,
                                                                                 _Ros2Ur_dashboard_msgsSrvSetOperationalMode_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        string part0 = value.@answer;
        WriteText(writer, part0, 256);
        bool part1 = value.@success;
        writer.Unsigned(part1 ? 1UL : 0UL, 1);
    }

    private static _Ros2Ur_dashboard_msgsSrvSetOperationalMode_Response ReadRos2Ur_dashboard_msgsSrvSetOperationalMode_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Ur_dashboard_msgsSrvSetOperationalMode_Response();
        value.@answer = ReadText(reader, 256);
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Ur_dashboard_msgsSrvSetUserRole_Request
    {
        public _Ros2Ur_dashboard_msgsMsgUserRole @user_role = new _Ros2Ur_dashboard_msgsMsgUserRole();

        public _Ros2Ur_dashboard_msgsSrvSetUserRole_Request()
        {
        }
    }

    public sealed class Ros2Ur_dashboard_msgsSrvSetUserRole_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Ur_dashboard_msgsSrvSetUserRole_Request>
    {
        public static readonly Ros2Ur_dashboard_msgsSrvSetUserRole_RequestCodec Instance = new Ros2Ur_dashboard_msgsSrvSetUserRole_RequestCodec();

        private Ros2Ur_dashboard_msgsSrvSetUserRole_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "ur_dashboard_msgs/srv/SetUserRole_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_7bd499947803efca81401a2de496d24e7e54ba97f4f86ec2b3089146a0655f5e";
        public const int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 260;

        public byte[] Encode(_Ros2Ur_dashboard_msgsSrvSetUserRole_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Ur_dashboard_msgsSrvSetUserRole_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Ur_dashboard_msgsSrvSetUserRole_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Ur_dashboard_msgsSrvSetUserRole_Request value = ReadRos2Ur_dashboard_msgsSrvSetUserRole_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Ur_dashboard_msgsSrvSetUserRole_Request(_Codecs.Writer writer, _Ros2Ur_dashboard_msgsSrvSetUserRole_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Ur_dashboard_msgsMsgUserRole part0 = value.@user_role;
        WriteRos2Ur_dashboard_msgsMsgUserRole(writer, part0);
    }

    private static _Ros2Ur_dashboard_msgsSrvSetUserRole_Request ReadRos2Ur_dashboard_msgsSrvSetUserRole_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Ur_dashboard_msgsSrvSetUserRole_Request();
        value.@user_role = ReadRos2Ur_dashboard_msgsMsgUserRole(reader);
        return value;
    }

    public sealed class _Ros2Ur_dashboard_msgsSrvSetUserRole_Response
    {
        public bool @success = false;
        public string @answer = "";

        public _Ros2Ur_dashboard_msgsSrvSetUserRole_Response()
        {
        }
    }

    public sealed class Ros2Ur_dashboard_msgsSrvSetUserRole_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Ur_dashboard_msgsSrvSetUserRole_Response>
    {
        public static readonly Ros2Ur_dashboard_msgsSrvSetUserRole_ResponseCodec Instance = new Ros2Ur_dashboard_msgsSrvSetUserRole_ResponseCodec();

        private Ros2Ur_dashboard_msgsSrvSetUserRole_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "ur_dashboard_msgs/srv/SetUserRole_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_4cab2bba5030f4e4b9e90252d64ec2e02d6eb87070b75cf43190fecd21da59fd";
        public const int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 261;

        public byte[] Encode(_Ros2Ur_dashboard_msgsSrvSetUserRole_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Ur_dashboard_msgsSrvSetUserRole_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Ur_dashboard_msgsSrvSetUserRole_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Ur_dashboard_msgsSrvSetUserRole_Response value = ReadRos2Ur_dashboard_msgsSrvSetUserRole_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Ur_dashboard_msgsSrvSetUserRole_Response(_Codecs.Writer writer, _Ros2Ur_dashboard_msgsSrvSetUserRole_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
        string part1 = value.@answer;
        WriteText(writer, part1, 256);
    }

    private static _Ros2Ur_dashboard_msgsSrvSetUserRole_Response ReadRos2Ur_dashboard_msgsSrvSetUserRole_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Ur_dashboard_msgsSrvSetUserRole_Response();
        value.@success = ReadBool(reader);
        value.@answer = ReadText(reader, 256);
        return value;
    }

    public sealed class _Ros2Ur_dashboard_msgsSrvUploadProgram_Request
    {
        public string @file_path = "";

        public _Ros2Ur_dashboard_msgsSrvUploadProgram_Request()
        {
        }
    }

    public sealed class Ros2Ur_dashboard_msgsSrvUploadProgram_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Ur_dashboard_msgsSrvUploadProgram_Request>
    {
        public static readonly Ros2Ur_dashboard_msgsSrvUploadProgram_RequestCodec Instance = new Ros2Ur_dashboard_msgsSrvUploadProgram_RequestCodec();

        private Ros2Ur_dashboard_msgsSrvUploadProgram_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "ur_dashboard_msgs/srv/UploadProgram_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_f7501d0115f8d36b1942ce610b1bbc197d0276de508ac8175d539f40494f437b";
        public const int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 260;

        public byte[] Encode(_Ros2Ur_dashboard_msgsSrvUploadProgram_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Ur_dashboard_msgsSrvUploadProgram_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Ur_dashboard_msgsSrvUploadProgram_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Ur_dashboard_msgsSrvUploadProgram_Request value = ReadRos2Ur_dashboard_msgsSrvUploadProgram_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Ur_dashboard_msgsSrvUploadProgram_Request(_Codecs.Writer writer, _Ros2Ur_dashboard_msgsSrvUploadProgram_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        string part0 = value.@file_path;
        WriteText(writer, part0, 256);
    }

    private static _Ros2Ur_dashboard_msgsSrvUploadProgram_Request ReadRos2Ur_dashboard_msgsSrvUploadProgram_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Ur_dashboard_msgsSrvUploadProgram_Request();
        value.@file_path = ReadText(reader, 256);
        return value;
    }

    public sealed class _Ros2Ur_dashboard_msgsSrvUploadProgram_Response
    {
        public string @answer = "";
        public string @program_name = "";
        public bool @success = false;

        public _Ros2Ur_dashboard_msgsSrvUploadProgram_Response()
        {
        }
    }

    public sealed class Ros2Ur_dashboard_msgsSrvUploadProgram_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Ur_dashboard_msgsSrvUploadProgram_Response>
    {
        public static readonly Ros2Ur_dashboard_msgsSrvUploadProgram_ResponseCodec Instance = new Ros2Ur_dashboard_msgsSrvUploadProgram_ResponseCodec();

        private Ros2Ur_dashboard_msgsSrvUploadProgram_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "ur_dashboard_msgs/srv/UploadProgram_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_ae9a28c1cd4729f54968d18a16e2f8f417bdc5e9bc15809de7481f1f20e6b398";
        public const int MIN_WIRE_BYTES = 9, MAX_WIRE_BYTES = 521;

        public byte[] Encode(_Ros2Ur_dashboard_msgsSrvUploadProgram_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Ur_dashboard_msgsSrvUploadProgram_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Ur_dashboard_msgsSrvUploadProgram_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Ur_dashboard_msgsSrvUploadProgram_Response value = ReadRos2Ur_dashboard_msgsSrvUploadProgram_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Ur_dashboard_msgsSrvUploadProgram_Response(_Codecs.Writer writer, _Ros2Ur_dashboard_msgsSrvUploadProgram_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        string part0 = value.@answer;
        WriteText(writer, part0, 256);
        string part1 = value.@program_name;
        WriteText(writer, part1, 256);
        bool part2 = value.@success;
        writer.Unsigned(part2 ? 1UL : 0UL, 1);
    }

    private static _Ros2Ur_dashboard_msgsSrvUploadProgram_Response ReadRos2Ur_dashboard_msgsSrvUploadProgram_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Ur_dashboard_msgsSrvUploadProgram_Response();
        value.@answer = ReadText(reader, 256);
        value.@program_name = ReadText(reader, 256);
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Ur_msgsActionFollowJointTrajectoryUntil_Goal
    {
        public _Ros2Trajectory_msgsMsgJointTrajectory @trajectory = new _Ros2Trajectory_msgsMsgJointTrajectory();
        public _Ros2Control_msgsMsgJointTolerance[] @path_tolerance = new _Ros2Control_msgsMsgJointTolerance[0];
        public _Ros2Control_msgsMsgJointTolerance[] @goal_tolerance = new _Ros2Control_msgsMsgJointTolerance[0];
        public _Ros2Builtin_interfacesMsgDuration @goal_time_tolerance = new _Ros2Builtin_interfacesMsgDuration();
        public byte @until_type = 0;

        public _Ros2Ur_msgsActionFollowJointTrajectoryUntil_Goal()
        {
        }
    }

    public sealed class Ros2Ur_msgsActionFollowJointTrajectoryUntil_GoalCodec : global::Uwvm.RosWasm.ICodec<_Ros2Ur_msgsActionFollowJointTrajectoryUntil_Goal>
    {
        public static readonly Ros2Ur_msgsActionFollowJointTrajectoryUntil_GoalCodec Instance = new Ros2Ur_msgsActionFollowJointTrajectoryUntil_GoalCodec();

        private Ros2Ur_msgsActionFollowJointTrajectoryUntil_GoalCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "ur_msgs/action/FollowJointTrajectoryUntil_Goal";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_78fda8f2d20c502e24b1ad4fe55f34bba41de20ff88e71b56d7a0631d7a3905a";
        public const int MIN_WIRE_BYTES = 37, MAX_WIRE_BYTES = 7053;

        public byte[] Encode(_Ros2Ur_msgsActionFollowJointTrajectoryUntil_Goal value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Ur_msgsActionFollowJointTrajectoryUntil_Goal(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Ur_msgsActionFollowJointTrajectoryUntil_Goal Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Ur_msgsActionFollowJointTrajectoryUntil_Goal value = ReadRos2Ur_msgsActionFollowJointTrajectoryUntil_Goal(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Ur_msgsActionFollowJointTrajectoryUntil_Goal(_Codecs.Writer writer, _Ros2Ur_msgsActionFollowJointTrajectoryUntil_Goal value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Trajectory_msgsMsgJointTrajectory part0 = value.@trajectory;
        WriteRos2Trajectory_msgsMsgJointTrajectory(writer, part0);
        _Ros2Control_msgsMsgJointTolerance[] part1 = value.@path_tolerance;
        if(part1 == null || part1.Length > 6)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part1.Length, 4);
        for(int index = 0; index < part1.Length; ++index)
        {
            _Ros2Control_msgsMsgJointTolerance element = part1[index];
            WriteRos2Control_msgsMsgJointTolerance(writer, element);
        }
        _Ros2Control_msgsMsgJointTolerance[] part2 = value.@goal_tolerance;
        if(part2 == null || part2.Length > 6)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part2.Length, 4);
        for(int index = 0; index < part2.Length; ++index)
        {
            _Ros2Control_msgsMsgJointTolerance element = part2[index];
            WriteRos2Control_msgsMsgJointTolerance(writer, element);
        }
        _Ros2Builtin_interfacesMsgDuration part3 = value.@goal_time_tolerance;
        WriteRos2Builtin_interfacesMsgDuration(writer, part3);
        byte part4 = value.@until_type;
        writer.Unsigned(part4, 1);
    }

    private static _Ros2Ur_msgsActionFollowJointTrajectoryUntil_Goal ReadRos2Ur_msgsActionFollowJointTrajectoryUntil_Goal(_Codecs.Reader reader)
    {
        var value = new _Ros2Ur_msgsActionFollowJointTrajectoryUntil_Goal();
        value.@trajectory = ReadRos2Trajectory_msgsMsgJointTrajectory(reader);
        value.@path_tolerance = new _Ros2Control_msgsMsgJointTolerance[ReadCount(reader, 6, 28)];
        for(int index = 0; index < value.@path_tolerance.Length; ++index)
            value.@path_tolerance[index] = ReadRos2Control_msgsMsgJointTolerance(reader);
        value.@goal_tolerance = new _Ros2Control_msgsMsgJointTolerance[ReadCount(reader, 6, 28)];
        for(int index = 0; index < value.@goal_tolerance.Length; ++index)
            value.@goal_tolerance[index] = ReadRos2Control_msgsMsgJointTolerance(reader);
        value.@goal_time_tolerance = ReadRos2Builtin_interfacesMsgDuration(reader);
        value.@until_type = unchecked((byte)reader.Unsigned(1));
        return value;
    }

    public sealed class _Ros2Ur_msgsActionFollowJointTrajectoryUntil_Result
    {
        public int @error_code = 0;
        public int @until_condition_result = 0;
        public string @error_string = "";

        public _Ros2Ur_msgsActionFollowJointTrajectoryUntil_Result()
        {
        }
    }

    public sealed class Ros2Ur_msgsActionFollowJointTrajectoryUntil_ResultCodec :
        global::Uwvm.RosWasm.ICodec<_Ros2Ur_msgsActionFollowJointTrajectoryUntil_Result>
    {
        public static readonly Ros2Ur_msgsActionFollowJointTrajectoryUntil_ResultCodec Instance = new Ros2Ur_msgsActionFollowJointTrajectoryUntil_ResultCodec();

        private Ros2Ur_msgsActionFollowJointTrajectoryUntil_ResultCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "ur_msgs/action/FollowJointTrajectoryUntil_Result";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_de92b9ccfb9c93f3afae9da5e8e31df9a6d6a606479fe27b9bcf14ff329bc869";
        public const int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 268;

        public byte[] Encode(_Ros2Ur_msgsActionFollowJointTrajectoryUntil_Result value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Ur_msgsActionFollowJointTrajectoryUntil_Result(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Ur_msgsActionFollowJointTrajectoryUntil_Result Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Ur_msgsActionFollowJointTrajectoryUntil_Result value = ReadRos2Ur_msgsActionFollowJointTrajectoryUntil_Result(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Ur_msgsActionFollowJointTrajectoryUntil_Result(_Codecs.Writer writer,
                                                                                _Ros2Ur_msgsActionFollowJointTrajectoryUntil_Result value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        int part0 = value.@error_code;
        writer.Unsigned(unchecked((uint)part0), 4);
        int part1 = value.@until_condition_result;
        writer.Unsigned(unchecked((uint)part1), 4);
        string part2 = value.@error_string;
        WriteText(writer, part2, 256);
    }

    private static _Ros2Ur_msgsActionFollowJointTrajectoryUntil_Result ReadRos2Ur_msgsActionFollowJointTrajectoryUntil_Result(_Codecs.Reader reader)
    {
        var value = new _Ros2Ur_msgsActionFollowJointTrajectoryUntil_Result();
        value.@error_code = unchecked((int)reader.Unsigned(4));
        value.@until_condition_result = unchecked((int)reader.Unsigned(4));
        value.@error_string = ReadText(reader, 256);
        return value;
    }

    public sealed class _Ros2Ur_msgsActionFollowJointTrajectoryUntil_Feedback
    {
        public _Ros2Std_msgsMsgHeader @header = new _Ros2Std_msgsMsgHeader();
        public string[] @joint_names = new string[0];
        public _Ros2Trajectory_msgsMsgJointTrajectoryPoint @desired = new _Ros2Trajectory_msgsMsgJointTrajectoryPoint();
        public _Ros2Trajectory_msgsMsgJointTrajectoryPoint @actual = new _Ros2Trajectory_msgsMsgJointTrajectoryPoint();
        public _Ros2Trajectory_msgsMsgJointTrajectoryPoint @error = new _Ros2Trajectory_msgsMsgJointTrajectoryPoint();

        public _Ros2Ur_msgsActionFollowJointTrajectoryUntil_Feedback()
        {
        }
    }

    public sealed class Ros2Ur_msgsActionFollowJointTrajectoryUntil_FeedbackCodec :
        global::Uwvm.RosWasm.ICodec<_Ros2Ur_msgsActionFollowJointTrajectoryUntil_Feedback>
    {
        public static readonly Ros2Ur_msgsActionFollowJointTrajectoryUntil_FeedbackCodec Instance =
            new Ros2Ur_msgsActionFollowJointTrajectoryUntil_FeedbackCodec();

        private Ros2Ur_msgsActionFollowJointTrajectoryUntil_FeedbackCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "ur_msgs/action/FollowJointTrajectoryUntil_Feedback";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_5a719f991f5c73784f9dc9e962ecfa0541e00daef7f747c312d4b633d63040ac";
        public const int MIN_WIRE_BYTES = 88, MAX_WIRE_BYTES = 2352;

        public byte[] Encode(_Ros2Ur_msgsActionFollowJointTrajectoryUntil_Feedback value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Ur_msgsActionFollowJointTrajectoryUntil_Feedback(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Ur_msgsActionFollowJointTrajectoryUntil_Feedback Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Ur_msgsActionFollowJointTrajectoryUntil_Feedback value = ReadRos2Ur_msgsActionFollowJointTrajectoryUntil_Feedback(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Ur_msgsActionFollowJointTrajectoryUntil_Feedback(_Codecs.Writer writer,
                                                                                  _Ros2Ur_msgsActionFollowJointTrajectoryUntil_Feedback value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Std_msgsMsgHeader part0 = value.@header;
        WriteRos2Std_msgsMsgHeader(writer, part0);
        string[] part1 = value.@joint_names;
        if(part1 == null || part1.Length > 6)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part1.Length, 4);
        for(int index = 0; index < part1.Length; ++index)
        {
            string element = part1[index];
            WriteText(writer, element, 256);
        }
        _Ros2Trajectory_msgsMsgJointTrajectoryPoint part2 = value.@desired;
        WriteRos2Trajectory_msgsMsgJointTrajectoryPoint(writer, part2);
        _Ros2Trajectory_msgsMsgJointTrajectoryPoint part3 = value.@actual;
        WriteRos2Trajectory_msgsMsgJointTrajectoryPoint(writer, part3);
        _Ros2Trajectory_msgsMsgJointTrajectoryPoint part4 = value.@error;
        WriteRos2Trajectory_msgsMsgJointTrajectoryPoint(writer, part4);
    }

    private static _Ros2Ur_msgsActionFollowJointTrajectoryUntil_Feedback ReadRos2Ur_msgsActionFollowJointTrajectoryUntil_Feedback(_Codecs.Reader reader)
    {
        var value = new _Ros2Ur_msgsActionFollowJointTrajectoryUntil_Feedback();
        value.@header = ReadRos2Std_msgsMsgHeader(reader);
        value.@joint_names = new string[ReadCount(reader, 6, 4)];
        for(int index = 0; index < value.@joint_names.Length; ++index)
            value.@joint_names[index] = ReadText(reader, 256);
        value.@desired = ReadRos2Trajectory_msgsMsgJointTrajectoryPoint(reader);
        value.@actual = ReadRos2Trajectory_msgsMsgJointTrajectoryPoint(reader);
        value.@error = ReadRos2Trajectory_msgsMsgJointTrajectoryPoint(reader);
        return value;
    }

    public sealed class _Ros2Ur_msgsActionSendScript_Goal
    {
        public string @program = "";
        public string @script_name = "";
        public _Ros2Builtin_interfacesMsgDuration @start_timeout = new _Ros2Builtin_interfacesMsgDuration();
        public bool @fail_on_warnings = true;

        public _Ros2Ur_msgsActionSendScript_Goal()
        {
        }
    }

    public sealed class Ros2Ur_msgsActionSendScript_GoalCodec : global::Uwvm.RosWasm.ICodec<_Ros2Ur_msgsActionSendScript_Goal>
    {
        public static readonly Ros2Ur_msgsActionSendScript_GoalCodec Instance = new Ros2Ur_msgsActionSendScript_GoalCodec();

        private Ros2Ur_msgsActionSendScript_GoalCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "ur_msgs/action/SendScript_Goal";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_c277cd00663786f95201e61baa658b92def3becc1f37e54aa6093bb11135819c";
        public const int MIN_WIRE_BYTES = 17, MAX_WIRE_BYTES = 8465;

        public byte[] Encode(_Ros2Ur_msgsActionSendScript_Goal value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Ur_msgsActionSendScript_Goal(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Ur_msgsActionSendScript_Goal Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Ur_msgsActionSendScript_Goal value = ReadRos2Ur_msgsActionSendScript_Goal(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Ur_msgsActionSendScript_Goal(_Codecs.Writer writer, _Ros2Ur_msgsActionSendScript_Goal value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        string part0 = value.@program;
        WriteText(writer, part0, 8192);
        string part1 = value.@script_name;
        WriteText(writer, part1, 256);
        _Ros2Builtin_interfacesMsgDuration part2 = value.@start_timeout;
        WriteRos2Builtin_interfacesMsgDuration(writer, part2);
        bool part3 = value.@fail_on_warnings;
        writer.Unsigned(part3 ? 1UL : 0UL, 1);
    }

    private static _Ros2Ur_msgsActionSendScript_Goal ReadRos2Ur_msgsActionSendScript_Goal(_Codecs.Reader reader)
    {
        var value = new _Ros2Ur_msgsActionSendScript_Goal();
        value.@program = ReadText(reader, 8192);
        value.@script_name = ReadText(reader, 256);
        value.@start_timeout = ReadRos2Builtin_interfacesMsgDuration(reader);
        value.@fail_on_warnings = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Ur_msgsActionSendScript_Result
    {
        public bool @success = false;
        public string @message = "";

        public _Ros2Ur_msgsActionSendScript_Result()
        {
        }
    }

    public sealed class Ros2Ur_msgsActionSendScript_ResultCodec : global::Uwvm.RosWasm.ICodec<_Ros2Ur_msgsActionSendScript_Result>
    {
        public static readonly Ros2Ur_msgsActionSendScript_ResultCodec Instance = new Ros2Ur_msgsActionSendScript_ResultCodec();

        private Ros2Ur_msgsActionSendScript_ResultCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "ur_msgs/action/SendScript_Result";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_d4c4d9721c3a576f590ba4967b2444a82969d6ccba94ddbf8c4a974535ee17d2";
        public const int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 261;

        public byte[] Encode(_Ros2Ur_msgsActionSendScript_Result value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Ur_msgsActionSendScript_Result(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Ur_msgsActionSendScript_Result Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Ur_msgsActionSendScript_Result value = ReadRos2Ur_msgsActionSendScript_Result(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Ur_msgsActionSendScript_Result(_Codecs.Writer writer, _Ros2Ur_msgsActionSendScript_Result value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
        string part1 = value.@message;
        WriteText(writer, part1, 256);
    }

    private static _Ros2Ur_msgsActionSendScript_Result ReadRos2Ur_msgsActionSendScript_Result(_Codecs.Reader reader)
    {
        var value = new _Ros2Ur_msgsActionSendScript_Result();
        value.@success = ReadBool(reader);
        value.@message = ReadText(reader, 256);
        return value;
    }

    public sealed class _Ros2Ur_msgsActionSendScript_Feedback
    {
        public _Ros2Ur_msgsActionSendScript_Feedback()
        {
        }
    }

    public sealed class Ros2Ur_msgsActionSendScript_FeedbackCodec : global::Uwvm.RosWasm.ICodec<_Ros2Ur_msgsActionSendScript_Feedback>
    {
        public static readonly Ros2Ur_msgsActionSendScript_FeedbackCodec Instance = new Ros2Ur_msgsActionSendScript_FeedbackCodec();

        private Ros2Ur_msgsActionSendScript_FeedbackCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "ur_msgs/action/SendScript_Feedback";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_094876d6467bd2b34f74cc6b574393117753add5254285e4e95d85b07328ef2c";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public byte[] Encode(_Ros2Ur_msgsActionSendScript_Feedback value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Ur_msgsActionSendScript_Feedback(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Ur_msgsActionSendScript_Feedback Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Ur_msgsActionSendScript_Feedback value = ReadRos2Ur_msgsActionSendScript_Feedback(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Ur_msgsActionSendScript_Feedback(_Codecs.Writer writer, _Ros2Ur_msgsActionSendScript_Feedback value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    private static _Ros2Ur_msgsActionSendScript_Feedback ReadRos2Ur_msgsActionSendScript_Feedback(_Codecs.Reader reader)
    {
        var value = new _Ros2Ur_msgsActionSendScript_Feedback();
        return value;
    }

    public sealed class _Ros2Ur_msgsActionToolContact_Goal
    {
        public _Ros2Ur_msgsActionToolContact_Goal()
        {
        }
    }

    public sealed class Ros2Ur_msgsActionToolContact_GoalCodec : global::Uwvm.RosWasm.ICodec<_Ros2Ur_msgsActionToolContact_Goal>
    {
        public static readonly Ros2Ur_msgsActionToolContact_GoalCodec Instance = new Ros2Ur_msgsActionToolContact_GoalCodec();

        private Ros2Ur_msgsActionToolContact_GoalCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "ur_msgs/action/ToolContact_Goal";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_150298ad16b1bc37d47bd3324cd4ec301ad8402c07779e8a435ce61daa7578dd";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public byte[] Encode(_Ros2Ur_msgsActionToolContact_Goal value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Ur_msgsActionToolContact_Goal(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Ur_msgsActionToolContact_Goal Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Ur_msgsActionToolContact_Goal value = ReadRos2Ur_msgsActionToolContact_Goal(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Ur_msgsActionToolContact_Goal(_Codecs.Writer writer, _Ros2Ur_msgsActionToolContact_Goal value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    private static _Ros2Ur_msgsActionToolContact_Goal ReadRos2Ur_msgsActionToolContact_Goal(_Codecs.Reader reader)
    {
        var value = new _Ros2Ur_msgsActionToolContact_Goal();
        return value;
    }

    public sealed class _Ros2Ur_msgsActionToolContact_Result
    {
        public _Ros2Ur_msgsActionToolContact_Result()
        {
        }
    }

    public sealed class Ros2Ur_msgsActionToolContact_ResultCodec : global::Uwvm.RosWasm.ICodec<_Ros2Ur_msgsActionToolContact_Result>
    {
        public static readonly Ros2Ur_msgsActionToolContact_ResultCodec Instance = new Ros2Ur_msgsActionToolContact_ResultCodec();

        private Ros2Ur_msgsActionToolContact_ResultCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "ur_msgs/action/ToolContact_Result";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_b79f6080ac18b67c25131458a2af0a3c235d624c00fc5c13da534cc546c94578";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public byte[] Encode(_Ros2Ur_msgsActionToolContact_Result value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Ur_msgsActionToolContact_Result(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Ur_msgsActionToolContact_Result Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Ur_msgsActionToolContact_Result value = ReadRos2Ur_msgsActionToolContact_Result(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Ur_msgsActionToolContact_Result(_Codecs.Writer writer, _Ros2Ur_msgsActionToolContact_Result value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    private static _Ros2Ur_msgsActionToolContact_Result ReadRos2Ur_msgsActionToolContact_Result(_Codecs.Reader reader)
    {
        var value = new _Ros2Ur_msgsActionToolContact_Result();
        return value;
    }

    public sealed class _Ros2Ur_msgsActionToolContact_Feedback
    {
        public _Ros2Ur_msgsActionToolContact_Feedback()
        {
        }
    }

    public sealed class Ros2Ur_msgsActionToolContact_FeedbackCodec : global::Uwvm.RosWasm.ICodec<_Ros2Ur_msgsActionToolContact_Feedback>
    {
        public static readonly Ros2Ur_msgsActionToolContact_FeedbackCodec Instance = new Ros2Ur_msgsActionToolContact_FeedbackCodec();

        private Ros2Ur_msgsActionToolContact_FeedbackCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "ur_msgs/action/ToolContact_Feedback";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_c6a11fd615f72a70a98514703de4c007a2bb161fbd8a953c5e8b899f471f4c5b";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public byte[] Encode(_Ros2Ur_msgsActionToolContact_Feedback value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Ur_msgsActionToolContact_Feedback(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Ur_msgsActionToolContact_Feedback Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Ur_msgsActionToolContact_Feedback value = ReadRos2Ur_msgsActionToolContact_Feedback(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Ur_msgsActionToolContact_Feedback(_Codecs.Writer writer, _Ros2Ur_msgsActionToolContact_Feedback value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    private static _Ros2Ur_msgsActionToolContact_Feedback ReadRos2Ur_msgsActionToolContact_Feedback(_Codecs.Reader reader)
    {
        var value = new _Ros2Ur_msgsActionToolContact_Feedback();
        return value;
    }

    public sealed class _Ros2Ur_msgsMsgAnalog
    {
        public byte @pin = 0;
        public byte @domain = 0;
        public float @state = 0;

        public _Ros2Ur_msgsMsgAnalog()
        {
        }
    }

    public sealed class Ros2Ur_msgsMsgAnalogCodec : global::Uwvm.RosWasm.ICodec<_Ros2Ur_msgsMsgAnalog>
    {
        public static readonly Ros2Ur_msgsMsgAnalogCodec Instance = new Ros2Ur_msgsMsgAnalogCodec();

        private Ros2Ur_msgsMsgAnalogCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "ur_msgs/msg/Analog";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_68873e85836e1a65d7b67a52f5db8b3c3be082f889d2df4342386b282988f2a4";
        public const int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 6;

        public byte[] Encode(_Ros2Ur_msgsMsgAnalog value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Ur_msgsMsgAnalog(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Ur_msgsMsgAnalog Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Ur_msgsMsgAnalog value = ReadRos2Ur_msgsMsgAnalog(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Ur_msgsMsgAnalog(_Codecs.Writer writer, _Ros2Ur_msgsMsgAnalog value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        byte part0 = value.@pin;
        writer.Unsigned(part0, 1);
        byte part1 = value.@domain;
        writer.Unsigned(part1, 1);
        float part2 = value.@state;
        WriteFloat32(writer, part2);
    }

    private static _Ros2Ur_msgsMsgAnalog ReadRos2Ur_msgsMsgAnalog(_Codecs.Reader reader)
    {
        var value = new _Ros2Ur_msgsMsgAnalog();
        value.@pin = unchecked((byte)reader.Unsigned(1));
        value.@domain = unchecked((byte)reader.Unsigned(1));
        value.@state = ReadFloat32(reader);
        return value;
    }

    public sealed class _Ros2Ur_msgsMsgDigital
    {
        public byte @pin = 0;
        public bool @state = false;

        public _Ros2Ur_msgsMsgDigital()
        {
        }
    }

    public sealed class Ros2Ur_msgsMsgDigitalCodec : global::Uwvm.RosWasm.ICodec<_Ros2Ur_msgsMsgDigital>
    {
        public static readonly Ros2Ur_msgsMsgDigitalCodec Instance = new Ros2Ur_msgsMsgDigitalCodec();

        private Ros2Ur_msgsMsgDigitalCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "ur_msgs/msg/Digital";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_e5ebd0a17ee528cff1e0a636eb0be9c7e4128d3e77be722c5f1be73df4f4c11e";
        public const int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;

        public byte[] Encode(_Ros2Ur_msgsMsgDigital value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Ur_msgsMsgDigital(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Ur_msgsMsgDigital Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Ur_msgsMsgDigital value = ReadRos2Ur_msgsMsgDigital(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Ur_msgsMsgDigital(_Codecs.Writer writer, _Ros2Ur_msgsMsgDigital value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        byte part0 = value.@pin;
        writer.Unsigned(part0, 1);
        bool part1 = value.@state;
        writer.Unsigned(part1 ? 1UL : 0UL, 1);
    }

    private static _Ros2Ur_msgsMsgDigital ReadRos2Ur_msgsMsgDigital(_Codecs.Reader reader)
    {
        var value = new _Ros2Ur_msgsMsgDigital();
        value.@pin = unchecked((byte)reader.Unsigned(1));
        value.@state = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Ur_msgsMsgFrictionModelParameters
    {
        public double[] @viscous_scale = new double[0];
        public double[] @coulomb_scale = new double[0];

        public _Ros2Ur_msgsMsgFrictionModelParameters()
        {
        }
    }

    public sealed class Ros2Ur_msgsMsgFrictionModelParametersCodec : global::Uwvm.RosWasm.ICodec<_Ros2Ur_msgsMsgFrictionModelParameters>
    {
        public static readonly Ros2Ur_msgsMsgFrictionModelParametersCodec Instance = new Ros2Ur_msgsMsgFrictionModelParametersCodec();

        private Ros2Ur_msgsMsgFrictionModelParametersCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "ur_msgs/msg/FrictionModelParameters";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_7cc9c7af77340f56b0559b4e2ad32972ff65f2a6cf89ebfbe2c48c645f8e9c89";
        public const int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 104;

        public byte[] Encode(_Ros2Ur_msgsMsgFrictionModelParameters value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Ur_msgsMsgFrictionModelParameters(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Ur_msgsMsgFrictionModelParameters Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Ur_msgsMsgFrictionModelParameters value = ReadRos2Ur_msgsMsgFrictionModelParameters(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Ur_msgsMsgFrictionModelParameters(_Codecs.Writer writer, _Ros2Ur_msgsMsgFrictionModelParameters value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        double[] part0 = value.@viscous_scale;
        if(part0 == null || part0.Length > 6)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part0.Length, 4);
        for(int index = 0; index < part0.Length; ++index)
        {
            double element = part0[index];
            writer.Float64(element);
        }
        double[] part1 = value.@coulomb_scale;
        if(part1 == null || part1.Length > 6)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part1.Length, 4);
        for(int index = 0; index < part1.Length; ++index)
        {
            double element = part1[index];
            writer.Float64(element);
        }
    }

    private static _Ros2Ur_msgsMsgFrictionModelParameters ReadRos2Ur_msgsMsgFrictionModelParameters(_Codecs.Reader reader)
    {
        var value = new _Ros2Ur_msgsMsgFrictionModelParameters();
        value.@viscous_scale = new double[ReadCount(reader, 6, 8)];
        for(int index = 0; index < value.@viscous_scale.Length; ++index)
            value.@viscous_scale[index] = reader.Float64();
        value.@coulomb_scale = new double[ReadCount(reader, 6, 8)];
        for(int index = 0; index < value.@coulomb_scale.Length; ++index)
            value.@coulomb_scale[index] = reader.Float64();
        return value;
    }

    public sealed class _Ros2Ur_msgsMsgIOStates
    {
        public _Ros2Ur_msgsMsgDigital[] @digital_in_states = new _Ros2Ur_msgsMsgDigital[0];
        public _Ros2Ur_msgsMsgDigital[] @digital_out_states = new _Ros2Ur_msgsMsgDigital[0];
        public _Ros2Ur_msgsMsgDigital[] @flag_states = new _Ros2Ur_msgsMsgDigital[0];
        public _Ros2Ur_msgsMsgAnalog[] @analog_in_states = new _Ros2Ur_msgsMsgAnalog[0];
        public _Ros2Ur_msgsMsgAnalog[] @analog_out_states = new _Ros2Ur_msgsMsgAnalog[0];

        public _Ros2Ur_msgsMsgIOStates()
        {
        }
    }

    public sealed class Ros2Ur_msgsMsgIOStatesCodec : global::Uwvm.RosWasm.ICodec<_Ros2Ur_msgsMsgIOStates>
    {
        public static readonly Ros2Ur_msgsMsgIOStatesCodec Instance = new Ros2Ur_msgsMsgIOStatesCodec();

        private Ros2Ur_msgsMsgIOStatesCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "ur_msgs/msg/IOStates";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_c22f9f784c89b6854fa84df416ed3704e3a312b15c8fc41162e7f5f53223fef5";
        public const int MIN_WIRE_BYTES = 20, MAX_WIRE_BYTES = 404;

        public byte[] Encode(_Ros2Ur_msgsMsgIOStates value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Ur_msgsMsgIOStates(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Ur_msgsMsgIOStates Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Ur_msgsMsgIOStates value = ReadRos2Ur_msgsMsgIOStates(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Ur_msgsMsgIOStates(_Codecs.Writer writer, _Ros2Ur_msgsMsgIOStates value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Ur_msgsMsgDigital[] part0 = value.@digital_in_states;
        if(part0 == null || part0.Length > 32)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part0.Length, 4);
        for(int index = 0; index < part0.Length; ++index)
        {
            _Ros2Ur_msgsMsgDigital element = part0[index];
            WriteRos2Ur_msgsMsgDigital(writer, element);
        }
        _Ros2Ur_msgsMsgDigital[] part1 = value.@digital_out_states;
        if(part1 == null || part1.Length > 32)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part1.Length, 4);
        for(int index = 0; index < part1.Length; ++index)
        {
            _Ros2Ur_msgsMsgDigital element = part1[index];
            WriteRos2Ur_msgsMsgDigital(writer, element);
        }
        _Ros2Ur_msgsMsgDigital[] part2 = value.@flag_states;
        if(part2 == null || part2.Length > 32)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part2.Length, 4);
        for(int index = 0; index < part2.Length; ++index)
        {
            _Ros2Ur_msgsMsgDigital element = part2[index];
            WriteRos2Ur_msgsMsgDigital(writer, element);
        }
        _Ros2Ur_msgsMsgAnalog[] part3 = value.@analog_in_states;
        if(part3 == null || part3.Length > 16)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part3.Length, 4);
        for(int index = 0; index < part3.Length; ++index)
        {
            _Ros2Ur_msgsMsgAnalog element = part3[index];
            WriteRos2Ur_msgsMsgAnalog(writer, element);
        }
        _Ros2Ur_msgsMsgAnalog[] part4 = value.@analog_out_states;
        if(part4 == null || part4.Length > 16)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part4.Length, 4);
        for(int index = 0; index < part4.Length; ++index)
        {
            _Ros2Ur_msgsMsgAnalog element = part4[index];
            WriteRos2Ur_msgsMsgAnalog(writer, element);
        }
    }

    private static _Ros2Ur_msgsMsgIOStates ReadRos2Ur_msgsMsgIOStates(_Codecs.Reader reader)
    {
        var value = new _Ros2Ur_msgsMsgIOStates();
        value.@digital_in_states = new _Ros2Ur_msgsMsgDigital[ReadCount(reader, 32, 2)];
        for(int index = 0; index < value.@digital_in_states.Length; ++index)
            value.@digital_in_states[index] = ReadRos2Ur_msgsMsgDigital(reader);
        value.@digital_out_states = new _Ros2Ur_msgsMsgDigital[ReadCount(reader, 32, 2)];
        for(int index = 0; index < value.@digital_out_states.Length; ++index)
            value.@digital_out_states[index] = ReadRos2Ur_msgsMsgDigital(reader);
        value.@flag_states = new _Ros2Ur_msgsMsgDigital[ReadCount(reader, 32, 2)];
        for(int index = 0; index < value.@flag_states.Length; ++index)
            value.@flag_states[index] = ReadRos2Ur_msgsMsgDigital(reader);
        value.@analog_in_states = new _Ros2Ur_msgsMsgAnalog[ReadCount(reader, 16, 6)];
        for(int index = 0; index < value.@analog_in_states.Length; ++index)
            value.@analog_in_states[index] = ReadRos2Ur_msgsMsgAnalog(reader);
        value.@analog_out_states = new _Ros2Ur_msgsMsgAnalog[ReadCount(reader, 16, 6)];
        for(int index = 0; index < value.@analog_out_states.Length; ++index)
            value.@analog_out_states[index] = ReadRos2Ur_msgsMsgAnalog(reader);
        return value;
    }

    public sealed class _Ros2Ur_msgsMsgMasterboardDataMsg
    {
        public uint @digital_input_bits = 0;
        public uint @digital_output_bits = 0;
        public sbyte @analog_input_range0 = 0;
        public sbyte @analog_input_range1 = 0;
        public double @analog_input0 = 0;
        public double @analog_input1 = 0;
        public sbyte @analog_output_domain0 = 0;
        public sbyte @analog_output_domain1 = 0;
        public double @analog_output0 = 0;
        public double @analog_output1 = 0;
        public float @masterboard_temperature = 0;
        public float @robot_voltage_48v = 0;
        public float @robot_current = 0;
        public float @master_io_current = 0;
        public byte @master_safety_state = 0;
        public byte @master_onoff_state = 0;

        public _Ros2Ur_msgsMsgMasterboardDataMsg()
        {
        }
    }

    public sealed class Ros2Ur_msgsMsgMasterboardDataMsgCodec : global::Uwvm.RosWasm.ICodec<_Ros2Ur_msgsMsgMasterboardDataMsg>
    {
        public static readonly Ros2Ur_msgsMsgMasterboardDataMsgCodec Instance = new Ros2Ur_msgsMsgMasterboardDataMsgCodec();

        private Ros2Ur_msgsMsgMasterboardDataMsgCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "ur_msgs/msg/MasterboardDataMsg";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_eb3b0aab27bb5683859356ca7cf9648e53d311c1fd32cac97f68ce1d4622a9e5";
        public const int MIN_WIRE_BYTES = 62, MAX_WIRE_BYTES = 62;

        public byte[] Encode(_Ros2Ur_msgsMsgMasterboardDataMsg value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Ur_msgsMsgMasterboardDataMsg(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Ur_msgsMsgMasterboardDataMsg Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Ur_msgsMsgMasterboardDataMsg value = ReadRos2Ur_msgsMsgMasterboardDataMsg(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Ur_msgsMsgMasterboardDataMsg(_Codecs.Writer writer, _Ros2Ur_msgsMsgMasterboardDataMsg value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        uint part0 = value.@digital_input_bits;
        writer.Unsigned(part0, 4);
        uint part1 = value.@digital_output_bits;
        writer.Unsigned(part1, 4);
        sbyte part2 = value.@analog_input_range0;
        writer.Unsigned(unchecked((byte)part2), 1);
        sbyte part3 = value.@analog_input_range1;
        writer.Unsigned(unchecked((byte)part3), 1);
        double part4 = value.@analog_input0;
        writer.Float64(part4);
        double part5 = value.@analog_input1;
        writer.Float64(part5);
        sbyte part6 = value.@analog_output_domain0;
        writer.Unsigned(unchecked((byte)part6), 1);
        sbyte part7 = value.@analog_output_domain1;
        writer.Unsigned(unchecked((byte)part7), 1);
        double part8 = value.@analog_output0;
        writer.Float64(part8);
        double part9 = value.@analog_output1;
        writer.Float64(part9);
        float part10 = value.@masterboard_temperature;
        WriteFloat32(writer, part10);
        float part11 = value.@robot_voltage_48v;
        WriteFloat32(writer, part11);
        float part12 = value.@robot_current;
        WriteFloat32(writer, part12);
        float part13 = value.@master_io_current;
        WriteFloat32(writer, part13);
        byte part14 = value.@master_safety_state;
        writer.Unsigned(part14, 1);
        byte part15 = value.@master_onoff_state;
        writer.Unsigned(part15, 1);
    }

    private static _Ros2Ur_msgsMsgMasterboardDataMsg ReadRos2Ur_msgsMsgMasterboardDataMsg(_Codecs.Reader reader)
    {
        var value = new _Ros2Ur_msgsMsgMasterboardDataMsg();
        value.@digital_input_bits = unchecked((uint)reader.Unsigned(4));
        value.@digital_output_bits = unchecked((uint)reader.Unsigned(4));
        value.@analog_input_range0 = unchecked((sbyte)reader.Unsigned(1));
        value.@analog_input_range1 = unchecked((sbyte)reader.Unsigned(1));
        value.@analog_input0 = reader.Float64();
        value.@analog_input1 = reader.Float64();
        value.@analog_output_domain0 = unchecked((sbyte)reader.Unsigned(1));
        value.@analog_output_domain1 = unchecked((sbyte)reader.Unsigned(1));
        value.@analog_output0 = reader.Float64();
        value.@analog_output1 = reader.Float64();
        value.@masterboard_temperature = ReadFloat32(reader);
        value.@robot_voltage_48v = ReadFloat32(reader);
        value.@robot_current = ReadFloat32(reader);
        value.@master_io_current = ReadFloat32(reader);
        value.@master_safety_state = unchecked((byte)reader.Unsigned(1));
        value.@master_onoff_state = unchecked((byte)reader.Unsigned(1));
        return value;
    }

    public sealed class _Ros2Ur_msgsMsgRobotModeDataMsg
    {
        public ulong @timestamp = 0;
        public bool @is_robot_connected = false;
        public bool @is_real_robot_enabled = false;
        public bool @is_power_on_robot = false;
        public bool @is_emergency_stopped = false;
        public bool @is_protective_stopped = false;
        public bool @is_program_running = false;
        public bool @is_program_paused = false;

        public _Ros2Ur_msgsMsgRobotModeDataMsg()
        {
        }
    }

    public sealed class Ros2Ur_msgsMsgRobotModeDataMsgCodec : global::Uwvm.RosWasm.ICodec<_Ros2Ur_msgsMsgRobotModeDataMsg>
    {
        public static readonly Ros2Ur_msgsMsgRobotModeDataMsgCodec Instance = new Ros2Ur_msgsMsgRobotModeDataMsgCodec();

        private Ros2Ur_msgsMsgRobotModeDataMsgCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "ur_msgs/msg/RobotModeDataMsg";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_0181d85868dc6251289c6f7bc723757fa573c1345b6502497e335655d328bb31";
        public const int MIN_WIRE_BYTES = 15, MAX_WIRE_BYTES = 15;

        public byte[] Encode(_Ros2Ur_msgsMsgRobotModeDataMsg value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Ur_msgsMsgRobotModeDataMsg(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Ur_msgsMsgRobotModeDataMsg Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Ur_msgsMsgRobotModeDataMsg value = ReadRos2Ur_msgsMsgRobotModeDataMsg(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Ur_msgsMsgRobotModeDataMsg(_Codecs.Writer writer, _Ros2Ur_msgsMsgRobotModeDataMsg value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        ulong part0 = value.@timestamp;
        writer.Unsigned(part0, 8);
        bool part1 = value.@is_robot_connected;
        writer.Unsigned(part1 ? 1UL : 0UL, 1);
        bool part2 = value.@is_real_robot_enabled;
        writer.Unsigned(part2 ? 1UL : 0UL, 1);
        bool part3 = value.@is_power_on_robot;
        writer.Unsigned(part3 ? 1UL : 0UL, 1);
        bool part4 = value.@is_emergency_stopped;
        writer.Unsigned(part4 ? 1UL : 0UL, 1);
        bool part5 = value.@is_protective_stopped;
        writer.Unsigned(part5 ? 1UL : 0UL, 1);
        bool part6 = value.@is_program_running;
        writer.Unsigned(part6 ? 1UL : 0UL, 1);
        bool part7 = value.@is_program_paused;
        writer.Unsigned(part7 ? 1UL : 0UL, 1);
    }

    private static _Ros2Ur_msgsMsgRobotModeDataMsg ReadRos2Ur_msgsMsgRobotModeDataMsg(_Codecs.Reader reader)
    {
        var value = new _Ros2Ur_msgsMsgRobotModeDataMsg();
        value.@timestamp = unchecked((ulong)reader.Unsigned(8));
        value.@is_robot_connected = ReadBool(reader);
        value.@is_real_robot_enabled = ReadBool(reader);
        value.@is_power_on_robot = ReadBool(reader);
        value.@is_emergency_stopped = ReadBool(reader);
        value.@is_protective_stopped = ReadBool(reader);
        value.@is_program_running = ReadBool(reader);
        value.@is_program_paused = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Ur_msgsMsgRobotStateRTMsg
    {
        public double @time = 0;
        public double[] @q_target = new double[0];
        public double[] @qd_target = new double[0];
        public double[] @qdd_target = new double[0];
        public double[] @i_target = new double[0];
        public double[] @m_target = new double[0];
        public double[] @q_actual = new double[0];
        public double[] @qd_actual = new double[0];
        public double[] @i_actual = new double[0];
        public double[] @tool_acc_values = new double[0];
        public double[] @tcp_force = new double[0];
        public double[] @tool_vector = new double[0];
        public double[] @tcp_speed = new double[0];
        public double @digital_input_bits = 0;
        public double[] @motor_temperatures = new double[0];
        public double @controller_timer = 0;
        public double @test_value = 0;
        public double @robot_mode = 0;
        public double[] @joint_modes = new double[0];

        public _Ros2Ur_msgsMsgRobotStateRTMsg()
        {
        }
    }

    public sealed class Ros2Ur_msgsMsgRobotStateRTMsgCodec : global::Uwvm.RosWasm.ICodec<_Ros2Ur_msgsMsgRobotStateRTMsg>
    {
        public static readonly Ros2Ur_msgsMsgRobotStateRTMsgCodec Instance = new Ros2Ur_msgsMsgRobotStateRTMsgCodec();

        private Ros2Ur_msgsMsgRobotStateRTMsgCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "ur_msgs/msg/RobotStateRTMsg";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_a30600c42e98b89da49d63073a5d30b0989aa0cb21f2bafec229dee10591d9cd";
        public const int MIN_WIRE_BYTES = 96, MAX_WIRE_BYTES = 768;

        public byte[] Encode(_Ros2Ur_msgsMsgRobotStateRTMsg value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Ur_msgsMsgRobotStateRTMsg(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Ur_msgsMsgRobotStateRTMsg Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Ur_msgsMsgRobotStateRTMsg value = ReadRos2Ur_msgsMsgRobotStateRTMsg(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Ur_msgsMsgRobotStateRTMsg(_Codecs.Writer writer, _Ros2Ur_msgsMsgRobotStateRTMsg value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        double part0 = value.@time;
        writer.Float64(part0);
        double[] part1 = value.@q_target;
        if(part1 == null || part1.Length > 6)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part1.Length, 4);
        for(int index = 0; index < part1.Length; ++index)
        {
            double element = part1[index];
            writer.Float64(element);
        }
        double[] part2 = value.@qd_target;
        if(part2 == null || part2.Length > 6)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part2.Length, 4);
        for(int index = 0; index < part2.Length; ++index)
        {
            double element = part2[index];
            writer.Float64(element);
        }
        double[] part3 = value.@qdd_target;
        if(part3 == null || part3.Length > 6)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part3.Length, 4);
        for(int index = 0; index < part3.Length; ++index)
        {
            double element = part3[index];
            writer.Float64(element);
        }
        double[] part4 = value.@i_target;
        if(part4 == null || part4.Length > 6)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part4.Length, 4);
        for(int index = 0; index < part4.Length; ++index)
        {
            double element = part4[index];
            writer.Float64(element);
        }
        double[] part5 = value.@m_target;
        if(part5 == null || part5.Length > 6)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part5.Length, 4);
        for(int index = 0; index < part5.Length; ++index)
        {
            double element = part5[index];
            writer.Float64(element);
        }
        double[] part6 = value.@q_actual;
        if(part6 == null || part6.Length > 6)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part6.Length, 4);
        for(int index = 0; index < part6.Length; ++index)
        {
            double element = part6[index];
            writer.Float64(element);
        }
        double[] part7 = value.@qd_actual;
        if(part7 == null || part7.Length > 6)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part7.Length, 4);
        for(int index = 0; index < part7.Length; ++index)
        {
            double element = part7[index];
            writer.Float64(element);
        }
        double[] part8 = value.@i_actual;
        if(part8 == null || part8.Length > 6)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part8.Length, 4);
        for(int index = 0; index < part8.Length; ++index)
        {
            double element = part8[index];
            writer.Float64(element);
        }
        double[] part9 = value.@tool_acc_values;
        if(part9 == null || part9.Length > 6)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part9.Length, 4);
        for(int index = 0; index < part9.Length; ++index)
        {
            double element = part9[index];
            writer.Float64(element);
        }
        double[] part10 = value.@tcp_force;
        if(part10 == null || part10.Length > 6)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part10.Length, 4);
        for(int index = 0; index < part10.Length; ++index)
        {
            double element = part10[index];
            writer.Float64(element);
        }
        double[] part11 = value.@tool_vector;
        if(part11 == null || part11.Length > 6)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part11.Length, 4);
        for(int index = 0; index < part11.Length; ++index)
        {
            double element = part11[index];
            writer.Float64(element);
        }
        double[] part12 = value.@tcp_speed;
        if(part12 == null || part12.Length > 6)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part12.Length, 4);
        for(int index = 0; index < part12.Length; ++index)
        {
            double element = part12[index];
            writer.Float64(element);
        }
        double part13 = value.@digital_input_bits;
        writer.Float64(part13);
        double[] part14 = value.@motor_temperatures;
        if(part14 == null || part14.Length > 6)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part14.Length, 4);
        for(int index = 0; index < part14.Length; ++index)
        {
            double element = part14[index];
            writer.Float64(element);
        }
        double part15 = value.@controller_timer;
        writer.Float64(part15);
        double part16 = value.@test_value;
        writer.Float64(part16);
        double part17 = value.@robot_mode;
        writer.Float64(part17);
        double[] part18 = value.@joint_modes;
        if(part18 == null || part18.Length > 6)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part18.Length, 4);
        for(int index = 0; index < part18.Length; ++index)
        {
            double element = part18[index];
            writer.Float64(element);
        }
    }

    private static _Ros2Ur_msgsMsgRobotStateRTMsg ReadRos2Ur_msgsMsgRobotStateRTMsg(_Codecs.Reader reader)
    {
        var value = new _Ros2Ur_msgsMsgRobotStateRTMsg();
        value.@time = reader.Float64();
        value.@q_target = new double[ReadCount(reader, 6, 8)];
        for(int index = 0; index < value.@q_target.Length; ++index)
            value.@q_target[index] = reader.Float64();
        value.@qd_target = new double[ReadCount(reader, 6, 8)];
        for(int index = 0; index < value.@qd_target.Length; ++index)
            value.@qd_target[index] = reader.Float64();
        value.@qdd_target = new double[ReadCount(reader, 6, 8)];
        for(int index = 0; index < value.@qdd_target.Length; ++index)
            value.@qdd_target[index] = reader.Float64();
        value.@i_target = new double[ReadCount(reader, 6, 8)];
        for(int index = 0; index < value.@i_target.Length; ++index)
            value.@i_target[index] = reader.Float64();
        value.@m_target = new double[ReadCount(reader, 6, 8)];
        for(int index = 0; index < value.@m_target.Length; ++index)
            value.@m_target[index] = reader.Float64();
        value.@q_actual = new double[ReadCount(reader, 6, 8)];
        for(int index = 0; index < value.@q_actual.Length; ++index)
            value.@q_actual[index] = reader.Float64();
        value.@qd_actual = new double[ReadCount(reader, 6, 8)];
        for(int index = 0; index < value.@qd_actual.Length; ++index)
            value.@qd_actual[index] = reader.Float64();
        value.@i_actual = new double[ReadCount(reader, 6, 8)];
        for(int index = 0; index < value.@i_actual.Length; ++index)
            value.@i_actual[index] = reader.Float64();
        value.@tool_acc_values = new double[ReadCount(reader, 6, 8)];
        for(int index = 0; index < value.@tool_acc_values.Length; ++index)
            value.@tool_acc_values[index] = reader.Float64();
        value.@tcp_force = new double[ReadCount(reader, 6, 8)];
        for(int index = 0; index < value.@tcp_force.Length; ++index)
            value.@tcp_force[index] = reader.Float64();
        value.@tool_vector = new double[ReadCount(reader, 6, 8)];
        for(int index = 0; index < value.@tool_vector.Length; ++index)
            value.@tool_vector[index] = reader.Float64();
        value.@tcp_speed = new double[ReadCount(reader, 6, 8)];
        for(int index = 0; index < value.@tcp_speed.Length; ++index)
            value.@tcp_speed[index] = reader.Float64();
        value.@digital_input_bits = reader.Float64();
        value.@motor_temperatures = new double[ReadCount(reader, 6, 8)];
        for(int index = 0; index < value.@motor_temperatures.Length; ++index)
            value.@motor_temperatures[index] = reader.Float64();
        value.@controller_timer = reader.Float64();
        value.@test_value = reader.Float64();
        value.@robot_mode = reader.Float64();
        value.@joint_modes = new double[ReadCount(reader, 6, 8)];
        for(int index = 0; index < value.@joint_modes.Length; ++index)
            value.@joint_modes[index] = reader.Float64();
        return value;
    }

    public sealed class _Ros2Ur_msgsMsgToolDataMsg
    {
        public sbyte @analog_input_range2 = 0;
        public sbyte @analog_input_range3 = 0;
        public double @analog_input2 = 0;
        public double @analog_input3 = 0;
        public float @tool_voltage_48v = 0;
        public byte @tool_output_voltage = 0;
        public float @tool_current = 0;
        public float @tool_temperature = 0;
        public byte @tool_mode = 0;

        public _Ros2Ur_msgsMsgToolDataMsg()
        {
        }
    }

    public sealed class Ros2Ur_msgsMsgToolDataMsgCodec : global::Uwvm.RosWasm.ICodec<_Ros2Ur_msgsMsgToolDataMsg>
    {
        public static readonly Ros2Ur_msgsMsgToolDataMsgCodec Instance = new Ros2Ur_msgsMsgToolDataMsgCodec();

        private Ros2Ur_msgsMsgToolDataMsgCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "ur_msgs/msg/ToolDataMsg";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_1eec69666515ffbdca162a10967fce03ee4c25f0c27d56c5a812b87c9a229aa0";
        public const int MIN_WIRE_BYTES = 32, MAX_WIRE_BYTES = 32;

        public byte[] Encode(_Ros2Ur_msgsMsgToolDataMsg value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Ur_msgsMsgToolDataMsg(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Ur_msgsMsgToolDataMsg Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Ur_msgsMsgToolDataMsg value = ReadRos2Ur_msgsMsgToolDataMsg(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Ur_msgsMsgToolDataMsg(_Codecs.Writer writer, _Ros2Ur_msgsMsgToolDataMsg value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        sbyte part0 = value.@analog_input_range2;
        writer.Unsigned(unchecked((byte)part0), 1);
        sbyte part1 = value.@analog_input_range3;
        writer.Unsigned(unchecked((byte)part1), 1);
        double part2 = value.@analog_input2;
        writer.Float64(part2);
        double part3 = value.@analog_input3;
        writer.Float64(part3);
        float part4 = value.@tool_voltage_48v;
        WriteFloat32(writer, part4);
        byte part5 = value.@tool_output_voltage;
        writer.Unsigned(part5, 1);
        float part6 = value.@tool_current;
        WriteFloat32(writer, part6);
        float part7 = value.@tool_temperature;
        WriteFloat32(writer, part7);
        byte part8 = value.@tool_mode;
        writer.Unsigned(part8, 1);
    }

    private static _Ros2Ur_msgsMsgToolDataMsg ReadRos2Ur_msgsMsgToolDataMsg(_Codecs.Reader reader)
    {
        var value = new _Ros2Ur_msgsMsgToolDataMsg();
        value.@analog_input_range2 = unchecked((sbyte)reader.Unsigned(1));
        value.@analog_input_range3 = unchecked((sbyte)reader.Unsigned(1));
        value.@analog_input2 = reader.Float64();
        value.@analog_input3 = reader.Float64();
        value.@tool_voltage_48v = ReadFloat32(reader);
        value.@tool_output_voltage = unchecked((byte)reader.Unsigned(1));
        value.@tool_current = ReadFloat32(reader);
        value.@tool_temperature = ReadFloat32(reader);
        value.@tool_mode = unchecked((byte)reader.Unsigned(1));
        return value;
    }

    public sealed class _Ros2Ur_msgsSrvGetRobotSoftwareVersion_Request
    {
        public _Ros2Ur_msgsSrvGetRobotSoftwareVersion_Request()
        {
        }
    }

    public sealed class Ros2Ur_msgsSrvGetRobotSoftwareVersion_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Ur_msgsSrvGetRobotSoftwareVersion_Request>
    {
        public static readonly Ros2Ur_msgsSrvGetRobotSoftwareVersion_RequestCodec Instance = new Ros2Ur_msgsSrvGetRobotSoftwareVersion_RequestCodec();

        private Ros2Ur_msgsSrvGetRobotSoftwareVersion_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "ur_msgs/srv/GetRobotSoftwareVersion_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_c2d78972cb5b63138d1e780e8ff0c082dd77d5b76b09642d2c655e9f16780101";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public byte[] Encode(_Ros2Ur_msgsSrvGetRobotSoftwareVersion_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Ur_msgsSrvGetRobotSoftwareVersion_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Ur_msgsSrvGetRobotSoftwareVersion_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Ur_msgsSrvGetRobotSoftwareVersion_Request value = ReadRos2Ur_msgsSrvGetRobotSoftwareVersion_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Ur_msgsSrvGetRobotSoftwareVersion_Request(_Codecs.Writer writer, _Ros2Ur_msgsSrvGetRobotSoftwareVersion_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    private static _Ros2Ur_msgsSrvGetRobotSoftwareVersion_Request ReadRos2Ur_msgsSrvGetRobotSoftwareVersion_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Ur_msgsSrvGetRobotSoftwareVersion_Request();
        return value;
    }

    public sealed class _Ros2Ur_msgsSrvGetRobotSoftwareVersion_Response
    {
        public uint @major = 0;
        public uint @minor = 0;
        public uint @bugfix = 0;
        public uint @build = 0;

        public _Ros2Ur_msgsSrvGetRobotSoftwareVersion_Response()
        {
        }
    }

    public sealed class Ros2Ur_msgsSrvGetRobotSoftwareVersion_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Ur_msgsSrvGetRobotSoftwareVersion_Response>
    {
        public static readonly Ros2Ur_msgsSrvGetRobotSoftwareVersion_ResponseCodec Instance = new Ros2Ur_msgsSrvGetRobotSoftwareVersion_ResponseCodec();

        private Ros2Ur_msgsSrvGetRobotSoftwareVersion_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "ur_msgs/srv/GetRobotSoftwareVersion_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_bbe9984c34d69f93ad8dbfe6059c6a2e1bf43dbd27eabd97cf0a9507308d814a";
        public const int MIN_WIRE_BYTES = 16, MAX_WIRE_BYTES = 16;

        public byte[] Encode(_Ros2Ur_msgsSrvGetRobotSoftwareVersion_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Ur_msgsSrvGetRobotSoftwareVersion_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Ur_msgsSrvGetRobotSoftwareVersion_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Ur_msgsSrvGetRobotSoftwareVersion_Response value = ReadRos2Ur_msgsSrvGetRobotSoftwareVersion_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Ur_msgsSrvGetRobotSoftwareVersion_Response(_Codecs.Writer writer, _Ros2Ur_msgsSrvGetRobotSoftwareVersion_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        uint part0 = value.@major;
        writer.Unsigned(part0, 4);
        uint part1 = value.@minor;
        writer.Unsigned(part1, 4);
        uint part2 = value.@bugfix;
        writer.Unsigned(part2, 4);
        uint part3 = value.@build;
        writer.Unsigned(part3, 4);
    }

    private static _Ros2Ur_msgsSrvGetRobotSoftwareVersion_Response ReadRos2Ur_msgsSrvGetRobotSoftwareVersion_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Ur_msgsSrvGetRobotSoftwareVersion_Response();
        value.@major = unchecked((uint)reader.Unsigned(4));
        value.@minor = unchecked((uint)reader.Unsigned(4));
        value.@bugfix = unchecked((uint)reader.Unsigned(4));
        value.@build = unchecked((uint)reader.Unsigned(4));
        return value;
    }

    public sealed class _Ros2Ur_msgsSrvSetAnalogOutput_Request
    {
        public _Ros2Ur_msgsMsgAnalog @data = new _Ros2Ur_msgsMsgAnalog();

        public _Ros2Ur_msgsSrvSetAnalogOutput_Request()
        {
        }
    }

    public sealed class Ros2Ur_msgsSrvSetAnalogOutput_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Ur_msgsSrvSetAnalogOutput_Request>
    {
        public static readonly Ros2Ur_msgsSrvSetAnalogOutput_RequestCodec Instance = new Ros2Ur_msgsSrvSetAnalogOutput_RequestCodec();

        private Ros2Ur_msgsSrvSetAnalogOutput_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "ur_msgs/srv/SetAnalogOutput_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_71c3eca5c6c90758f084e275fc495feb5d1c08a467c97d941fb5864c54309bea";
        public const int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 6;

        public byte[] Encode(_Ros2Ur_msgsSrvSetAnalogOutput_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Ur_msgsSrvSetAnalogOutput_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Ur_msgsSrvSetAnalogOutput_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Ur_msgsSrvSetAnalogOutput_Request value = ReadRos2Ur_msgsSrvSetAnalogOutput_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Ur_msgsSrvSetAnalogOutput_Request(_Codecs.Writer writer, _Ros2Ur_msgsSrvSetAnalogOutput_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Ur_msgsMsgAnalog part0 = value.@data;
        WriteRos2Ur_msgsMsgAnalog(writer, part0);
    }

    private static _Ros2Ur_msgsSrvSetAnalogOutput_Request ReadRos2Ur_msgsSrvSetAnalogOutput_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Ur_msgsSrvSetAnalogOutput_Request();
        value.@data = ReadRos2Ur_msgsMsgAnalog(reader);
        return value;
    }

    public sealed class _Ros2Ur_msgsSrvSetAnalogOutput_Response
    {
        public bool @success = false;

        public _Ros2Ur_msgsSrvSetAnalogOutput_Response()
        {
        }
    }

    public sealed class Ros2Ur_msgsSrvSetAnalogOutput_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Ur_msgsSrvSetAnalogOutput_Response>
    {
        public static readonly Ros2Ur_msgsSrvSetAnalogOutput_ResponseCodec Instance = new Ros2Ur_msgsSrvSetAnalogOutput_ResponseCodec();

        private Ros2Ur_msgsSrvSetAnalogOutput_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "ur_msgs/srv/SetAnalogOutput_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_71a5f3580657cb3ca702dbb63b7af3330c922624c9e9774e47e6533e2fc0a05a";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros2Ur_msgsSrvSetAnalogOutput_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Ur_msgsSrvSetAnalogOutput_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Ur_msgsSrvSetAnalogOutput_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Ur_msgsSrvSetAnalogOutput_Response value = ReadRos2Ur_msgsSrvSetAnalogOutput_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Ur_msgsSrvSetAnalogOutput_Response(_Codecs.Writer writer, _Ros2Ur_msgsSrvSetAnalogOutput_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros2Ur_msgsSrvSetAnalogOutput_Response ReadRos2Ur_msgsSrvSetAnalogOutput_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Ur_msgsSrvSetAnalogOutput_Response();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Ur_msgsSrvSetForceMode_Request
    {
        public _Ros2Geometry_msgsMsgPoseStamped @task_frame = new _Ros2Geometry_msgsMsgPoseStamped();
        public bool @selection_vector_x = false;
        public bool @selection_vector_y = false;
        public bool @selection_vector_z = false;
        public bool @selection_vector_rx = false;
        public bool @selection_vector_ry = false;
        public bool @selection_vector_rz = false;
        public _Ros2Geometry_msgsMsgWrench @wrench = new _Ros2Geometry_msgsMsgWrench();
        public byte @type = 2;
        public _Ros2Geometry_msgsMsgTwist @speed_limits = new _Ros2Geometry_msgsMsgTwist();
        public float[] @deviation_limits = new float[] { BitConverter.Int32BitsToSingle(unchecked((int)0x3c23d70aU)),
                                                         BitConverter.Int32BitsToSingle(unchecked((int)0x3c23d70aU)),
                                                         BitConverter.Int32BitsToSingle(unchecked((int)0x3c23d70aU)),
                                                         BitConverter.Int32BitsToSingle(unchecked((int)0x3c23d70aU)),
                                                         BitConverter.Int32BitsToSingle(unchecked((int)0x3c23d70aU)),
                                                         BitConverter.Int32BitsToSingle(unchecked((int)0x3c23d70aU)) };
        public float @damping_factor = BitConverter.Int32BitsToSingle(unchecked((int)0x3ccccccdU));
        public float @gain_scaling = BitConverter.Int32BitsToSingle(unchecked((int)0x3f000000U));

        public _Ros2Ur_msgsSrvSetForceMode_Request()
        {
        }
    }

    public sealed class Ros2Ur_msgsSrvSetForceMode_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Ur_msgsSrvSetForceMode_Request>
    {
        public static readonly Ros2Ur_msgsSrvSetForceMode_RequestCodec Instance = new Ros2Ur_msgsSrvSetForceMode_RequestCodec();

        private Ros2Ur_msgsSrvSetForceMode_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "ur_msgs/srv/SetForceMode_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_e43a6c22510a2078de3cb2dc17ba1b7184080a6aa29a1653b7986723c0cfef6e";
        public const int MIN_WIRE_BYTES = 203, MAX_WIRE_BYTES = 331;

        public byte[] Encode(_Ros2Ur_msgsSrvSetForceMode_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Ur_msgsSrvSetForceMode_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Ur_msgsSrvSetForceMode_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Ur_msgsSrvSetForceMode_Request value = ReadRos2Ur_msgsSrvSetForceMode_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Ur_msgsSrvSetForceMode_Request(_Codecs.Writer writer, _Ros2Ur_msgsSrvSetForceMode_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Geometry_msgsMsgPoseStamped part0 = value.@task_frame;
        WriteRos2Geometry_msgsMsgPoseStamped(writer, part0);
        bool part1 = value.@selection_vector_x;
        writer.Unsigned(part1 ? 1UL : 0UL, 1);
        bool part2 = value.@selection_vector_y;
        writer.Unsigned(part2 ? 1UL : 0UL, 1);
        bool part3 = value.@selection_vector_z;
        writer.Unsigned(part3 ? 1UL : 0UL, 1);
        bool part4 = value.@selection_vector_rx;
        writer.Unsigned(part4 ? 1UL : 0UL, 1);
        bool part5 = value.@selection_vector_ry;
        writer.Unsigned(part5 ? 1UL : 0UL, 1);
        bool part6 = value.@selection_vector_rz;
        writer.Unsigned(part6 ? 1UL : 0UL, 1);
        _Ros2Geometry_msgsMsgWrench part7 = value.@wrench;
        WriteRos2Geometry_msgsMsgWrench(writer, part7);
        byte part8 = value.@type;
        writer.Unsigned(part8, 1);
        _Ros2Geometry_msgsMsgTwist part9 = value.@speed_limits;
        WriteRos2Geometry_msgsMsgTwist(writer, part9);
        float[] part10 = value.@deviation_limits;
        if(part10 == null || part10.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part10.Length; ++index)
        {
            float element = part10[index];
            WriteFloat32(writer, element);
        }
        float part11 = value.@damping_factor;
        WriteFloat32(writer, part11);
        float part12 = value.@gain_scaling;
        WriteFloat32(writer, part12);
    }

    private static _Ros2Ur_msgsSrvSetForceMode_Request ReadRos2Ur_msgsSrvSetForceMode_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Ur_msgsSrvSetForceMode_Request();
        value.@task_frame = ReadRos2Geometry_msgsMsgPoseStamped(reader);
        value.@selection_vector_x = ReadBool(reader);
        value.@selection_vector_y = ReadBool(reader);
        value.@selection_vector_z = ReadBool(reader);
        value.@selection_vector_rx = ReadBool(reader);
        value.@selection_vector_ry = ReadBool(reader);
        value.@selection_vector_rz = ReadBool(reader);
        value.@wrench = ReadRos2Geometry_msgsMsgWrench(reader);
        value.@type = unchecked((byte)reader.Unsigned(1));
        value.@speed_limits = ReadRos2Geometry_msgsMsgTwist(reader);
        value.@deviation_limits = new float[6];
        for(int index = 0; index < value.@deviation_limits.Length; ++index)
            value.@deviation_limits[index] = ReadFloat32(reader);
        value.@damping_factor = ReadFloat32(reader);
        value.@gain_scaling = ReadFloat32(reader);
        return value;
    }

    public sealed class _Ros2Ur_msgsSrvSetForceMode_Response
    {
        public bool @success = false;

        public _Ros2Ur_msgsSrvSetForceMode_Response()
        {
        }
    }

    public sealed class Ros2Ur_msgsSrvSetForceMode_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Ur_msgsSrvSetForceMode_Response>
    {
        public static readonly Ros2Ur_msgsSrvSetForceMode_ResponseCodec Instance = new Ros2Ur_msgsSrvSetForceMode_ResponseCodec();

        private Ros2Ur_msgsSrvSetForceMode_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "ur_msgs/srv/SetForceMode_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_3f5438d426b7b68557ac8f43dc8efc2e2106782ec0cd4fd0dee7cdd69ddc7de8";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros2Ur_msgsSrvSetForceMode_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Ur_msgsSrvSetForceMode_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Ur_msgsSrvSetForceMode_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Ur_msgsSrvSetForceMode_Response value = ReadRos2Ur_msgsSrvSetForceMode_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Ur_msgsSrvSetForceMode_Response(_Codecs.Writer writer, _Ros2Ur_msgsSrvSetForceMode_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros2Ur_msgsSrvSetForceMode_Response ReadRos2Ur_msgsSrvSetForceMode_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Ur_msgsSrvSetForceMode_Response();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Ur_msgsSrvSetFrictionModelParameters_Request
    {
        public _Ros2Ur_msgsMsgFrictionModelParameters @parameters = new _Ros2Ur_msgsMsgFrictionModelParameters();

        public _Ros2Ur_msgsSrvSetFrictionModelParameters_Request()
        {
        }
    }

    public sealed class Ros2Ur_msgsSrvSetFrictionModelParameters_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Ur_msgsSrvSetFrictionModelParameters_Request>
    {
        public static readonly Ros2Ur_msgsSrvSetFrictionModelParameters_RequestCodec Instance = new Ros2Ur_msgsSrvSetFrictionModelParameters_RequestCodec();

        private Ros2Ur_msgsSrvSetFrictionModelParameters_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "ur_msgs/srv/SetFrictionModelParameters_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_e44ad15f9c45d5a65eb13e6bc6e973bb20eebdafa04a5f2e8bcf4b0b54ce91c2";
        public const int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 104;

        public byte[] Encode(_Ros2Ur_msgsSrvSetFrictionModelParameters_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Ur_msgsSrvSetFrictionModelParameters_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Ur_msgsSrvSetFrictionModelParameters_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Ur_msgsSrvSetFrictionModelParameters_Request value = ReadRos2Ur_msgsSrvSetFrictionModelParameters_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Ur_msgsSrvSetFrictionModelParameters_Request(_Codecs.Writer writer, _Ros2Ur_msgsSrvSetFrictionModelParameters_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Ur_msgsMsgFrictionModelParameters part0 = value.@parameters;
        WriteRos2Ur_msgsMsgFrictionModelParameters(writer, part0);
    }

    private static _Ros2Ur_msgsSrvSetFrictionModelParameters_Request ReadRos2Ur_msgsSrvSetFrictionModelParameters_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Ur_msgsSrvSetFrictionModelParameters_Request();
        value.@parameters = ReadRos2Ur_msgsMsgFrictionModelParameters(reader);
        return value;
    }

    public sealed class _Ros2Ur_msgsSrvSetFrictionModelParameters_Response
    {
        public bool @success = false;

        public _Ros2Ur_msgsSrvSetFrictionModelParameters_Response()
        {
        }
    }

    public sealed class Ros2Ur_msgsSrvSetFrictionModelParameters_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Ur_msgsSrvSetFrictionModelParameters_Response>
    {
        public static readonly Ros2Ur_msgsSrvSetFrictionModelParameters_ResponseCodec Instance = new Ros2Ur_msgsSrvSetFrictionModelParameters_ResponseCodec();

        private Ros2Ur_msgsSrvSetFrictionModelParameters_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "ur_msgs/srv/SetFrictionModelParameters_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_1caca29dda3dc32360fd010dfb352b6feb54bba66ee16edd2f4353e3382207b3";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros2Ur_msgsSrvSetFrictionModelParameters_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Ur_msgsSrvSetFrictionModelParameters_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Ur_msgsSrvSetFrictionModelParameters_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Ur_msgsSrvSetFrictionModelParameters_Response value = ReadRos2Ur_msgsSrvSetFrictionModelParameters_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Ur_msgsSrvSetFrictionModelParameters_Response(_Codecs.Writer writer, _Ros2Ur_msgsSrvSetFrictionModelParameters_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros2Ur_msgsSrvSetFrictionModelParameters_Response ReadRos2Ur_msgsSrvSetFrictionModelParameters_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Ur_msgsSrvSetFrictionModelParameters_Response();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Ur_msgsSrvSetGravity_Request
    {
        public _Ros2Geometry_msgsMsgVector3Stamped @gravity = new _Ros2Geometry_msgsMsgVector3Stamped();

        public _Ros2Ur_msgsSrvSetGravity_Request()
        {
        }
    }

    public sealed class Ros2Ur_msgsSrvSetGravity_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Ur_msgsSrvSetGravity_Request>
    {
        public static readonly Ros2Ur_msgsSrvSetGravity_RequestCodec Instance = new Ros2Ur_msgsSrvSetGravity_RequestCodec();

        private Ros2Ur_msgsSrvSetGravity_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "ur_msgs/srv/SetGravity_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_3d7fed6ae8accbddd5b09f93c3e49f2b9f99cae4cf80a951eb31ace30ec5a834";
        public const int MIN_WIRE_BYTES = 36, MAX_WIRE_BYTES = 164;

        public byte[] Encode(_Ros2Ur_msgsSrvSetGravity_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Ur_msgsSrvSetGravity_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Ur_msgsSrvSetGravity_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Ur_msgsSrvSetGravity_Request value = ReadRos2Ur_msgsSrvSetGravity_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Ur_msgsSrvSetGravity_Request(_Codecs.Writer writer, _Ros2Ur_msgsSrvSetGravity_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Geometry_msgsMsgVector3Stamped part0 = value.@gravity;
        WriteRos2Geometry_msgsMsgVector3Stamped(writer, part0);
    }

    private static _Ros2Ur_msgsSrvSetGravity_Request ReadRos2Ur_msgsSrvSetGravity_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Ur_msgsSrvSetGravity_Request();
        value.@gravity = ReadRos2Geometry_msgsMsgVector3Stamped(reader);
        return value;
    }

    public sealed class _Ros2Ur_msgsSrvSetGravity_Response
    {
        public bool @success = false;
        public string @status = "";

        public _Ros2Ur_msgsSrvSetGravity_Response()
        {
        }
    }

    public sealed class Ros2Ur_msgsSrvSetGravity_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Ur_msgsSrvSetGravity_Response>
    {
        public static readonly Ros2Ur_msgsSrvSetGravity_ResponseCodec Instance = new Ros2Ur_msgsSrvSetGravity_ResponseCodec();

        private Ros2Ur_msgsSrvSetGravity_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "ur_msgs/srv/SetGravity_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_84694df7fbb4fd15bfecaf1aae683ef1795b0c4941d1987d951467448da5f793";
        public const int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 261;

        public byte[] Encode(_Ros2Ur_msgsSrvSetGravity_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Ur_msgsSrvSetGravity_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Ur_msgsSrvSetGravity_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Ur_msgsSrvSetGravity_Response value = ReadRos2Ur_msgsSrvSetGravity_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Ur_msgsSrvSetGravity_Response(_Codecs.Writer writer, _Ros2Ur_msgsSrvSetGravity_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
        string part1 = value.@status;
        WriteText(writer, part1, 256);
    }

    private static _Ros2Ur_msgsSrvSetGravity_Response ReadRos2Ur_msgsSrvSetGravity_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Ur_msgsSrvSetGravity_Response();
        value.@success = ReadBool(reader);
        value.@status = ReadText(reader, 256);
        return value;
    }

    public sealed class _Ros2Ur_msgsSrvSetIO_Request
    {
        public sbyte @fun = 0;
        public sbyte @pin = 0;
        public float @state = 0;

        public _Ros2Ur_msgsSrvSetIO_Request()
        {
        }
    }

    public sealed class Ros2Ur_msgsSrvSetIO_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Ur_msgsSrvSetIO_Request>
    {
        public static readonly Ros2Ur_msgsSrvSetIO_RequestCodec Instance = new Ros2Ur_msgsSrvSetIO_RequestCodec();

        private Ros2Ur_msgsSrvSetIO_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "ur_msgs/srv/SetIO_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_c8ac4dddeb474521b4c701a0229e99af954416b7b8d7f32d2a19629d38b378c7";
        public const int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 6;

        public byte[] Encode(_Ros2Ur_msgsSrvSetIO_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Ur_msgsSrvSetIO_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Ur_msgsSrvSetIO_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Ur_msgsSrvSetIO_Request value = ReadRos2Ur_msgsSrvSetIO_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Ur_msgsSrvSetIO_Request(_Codecs.Writer writer, _Ros2Ur_msgsSrvSetIO_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        sbyte part0 = value.@fun;
        writer.Unsigned(unchecked((byte)part0), 1);
        sbyte part1 = value.@pin;
        writer.Unsigned(unchecked((byte)part1), 1);
        float part2 = value.@state;
        WriteFloat32(writer, part2);
    }

    private static _Ros2Ur_msgsSrvSetIO_Request ReadRos2Ur_msgsSrvSetIO_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Ur_msgsSrvSetIO_Request();
        value.@fun = unchecked((sbyte)reader.Unsigned(1));
        value.@pin = unchecked((sbyte)reader.Unsigned(1));
        value.@state = ReadFloat32(reader);
        return value;
    }

    public sealed class _Ros2Ur_msgsSrvSetIO_Response
    {
        public bool @success = false;

        public _Ros2Ur_msgsSrvSetIO_Response()
        {
        }
    }

    public sealed class Ros2Ur_msgsSrvSetIO_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Ur_msgsSrvSetIO_Response>
    {
        public static readonly Ros2Ur_msgsSrvSetIO_ResponseCodec Instance = new Ros2Ur_msgsSrvSetIO_ResponseCodec();

        private Ros2Ur_msgsSrvSetIO_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "ur_msgs/srv/SetIO_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_bd32373034093ccdab140a5ba8ce8a420ef2ce441430e8306b2484f0ca535090";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros2Ur_msgsSrvSetIO_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Ur_msgsSrvSetIO_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Ur_msgsSrvSetIO_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Ur_msgsSrvSetIO_Response value = ReadRos2Ur_msgsSrvSetIO_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Ur_msgsSrvSetIO_Response(_Codecs.Writer writer, _Ros2Ur_msgsSrvSetIO_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros2Ur_msgsSrvSetIO_Response ReadRos2Ur_msgsSrvSetIO_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Ur_msgsSrvSetIO_Response();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Ur_msgsSrvSetPayload_Request
    {
        public float @mass = 0;
        public _Ros2Geometry_msgsMsgVector3 @center_of_gravity = new _Ros2Geometry_msgsMsgVector3();
        public double @ixx = 0;
        public double @iyy = 0;
        public double @izz = 0;
        public double @ixy = 0;
        public double @ixz = 0;
        public double @iyz = 0;
        public _Ros2Builtin_interfacesMsgDuration @transition_time = new _Ros2Builtin_interfacesMsgDuration();

        public _Ros2Ur_msgsSrvSetPayload_Request()
        {
        }
    }

    public sealed class Ros2Ur_msgsSrvSetPayload_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Ur_msgsSrvSetPayload_Request>
    {
        public static readonly Ros2Ur_msgsSrvSetPayload_RequestCodec Instance = new Ros2Ur_msgsSrvSetPayload_RequestCodec();

        private Ros2Ur_msgsSrvSetPayload_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "ur_msgs/srv/SetPayload_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_e76e256e1accf2d742c4cf529e5af1e830db75f3db703a1f368d28077a87e735";
        public const int MIN_WIRE_BYTES = 84, MAX_WIRE_BYTES = 84;

        public byte[] Encode(_Ros2Ur_msgsSrvSetPayload_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Ur_msgsSrvSetPayload_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Ur_msgsSrvSetPayload_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Ur_msgsSrvSetPayload_Request value = ReadRos2Ur_msgsSrvSetPayload_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Ur_msgsSrvSetPayload_Request(_Codecs.Writer writer, _Ros2Ur_msgsSrvSetPayload_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        float part0 = value.@mass;
        WriteFloat32(writer, part0);
        _Ros2Geometry_msgsMsgVector3 part1 = value.@center_of_gravity;
        WriteRos2Geometry_msgsMsgVector3(writer, part1);
        double part2 = value.@ixx;
        writer.Float64(part2);
        double part3 = value.@iyy;
        writer.Float64(part3);
        double part4 = value.@izz;
        writer.Float64(part4);
        double part5 = value.@ixy;
        writer.Float64(part5);
        double part6 = value.@ixz;
        writer.Float64(part6);
        double part7 = value.@iyz;
        writer.Float64(part7);
        _Ros2Builtin_interfacesMsgDuration part8 = value.@transition_time;
        WriteRos2Builtin_interfacesMsgDuration(writer, part8);
    }

    private static _Ros2Ur_msgsSrvSetPayload_Request ReadRos2Ur_msgsSrvSetPayload_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Ur_msgsSrvSetPayload_Request();
        value.@mass = ReadFloat32(reader);
        value.@center_of_gravity = ReadRos2Geometry_msgsMsgVector3(reader);
        value.@ixx = reader.Float64();
        value.@iyy = reader.Float64();
        value.@izz = reader.Float64();
        value.@ixy = reader.Float64();
        value.@ixz = reader.Float64();
        value.@iyz = reader.Float64();
        value.@transition_time = ReadRos2Builtin_interfacesMsgDuration(reader);
        return value;
    }

    public sealed class _Ros2Ur_msgsSrvSetPayload_Response
    {
        public bool @success = false;

        public _Ros2Ur_msgsSrvSetPayload_Response()
        {
        }
    }

    public sealed class Ros2Ur_msgsSrvSetPayload_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Ur_msgsSrvSetPayload_Response>
    {
        public static readonly Ros2Ur_msgsSrvSetPayload_ResponseCodec Instance = new Ros2Ur_msgsSrvSetPayload_ResponseCodec();

        private Ros2Ur_msgsSrvSetPayload_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "ur_msgs/srv/SetPayload_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_036dbaa7d42b6cba6ad29a082e078401d507292483d260ba532f7d6947c1624c";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros2Ur_msgsSrvSetPayload_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Ur_msgsSrvSetPayload_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Ur_msgsSrvSetPayload_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Ur_msgsSrvSetPayload_Response value = ReadRos2Ur_msgsSrvSetPayload_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Ur_msgsSrvSetPayload_Response(_Codecs.Writer writer, _Ros2Ur_msgsSrvSetPayload_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros2Ur_msgsSrvSetPayload_Response ReadRos2Ur_msgsSrvSetPayload_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Ur_msgsSrvSetPayload_Response();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Ur_msgsSrvSetSpeedSliderFraction_Request
    {
        public double @speed_slider_fraction = 0;

        public _Ros2Ur_msgsSrvSetSpeedSliderFraction_Request()
        {
        }
    }

    public sealed class Ros2Ur_msgsSrvSetSpeedSliderFraction_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Ur_msgsSrvSetSpeedSliderFraction_Request>
    {
        public static readonly Ros2Ur_msgsSrvSetSpeedSliderFraction_RequestCodec Instance = new Ros2Ur_msgsSrvSetSpeedSliderFraction_RequestCodec();

        private Ros2Ur_msgsSrvSetSpeedSliderFraction_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "ur_msgs/srv/SetSpeedSliderFraction_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_d8f19fb240e4b70cad74c5111cdaebad14b480f21da953c95d474064b091abd8";
        public const int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 8;

        public byte[] Encode(_Ros2Ur_msgsSrvSetSpeedSliderFraction_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Ur_msgsSrvSetSpeedSliderFraction_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Ur_msgsSrvSetSpeedSliderFraction_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Ur_msgsSrvSetSpeedSliderFraction_Request value = ReadRos2Ur_msgsSrvSetSpeedSliderFraction_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Ur_msgsSrvSetSpeedSliderFraction_Request(_Codecs.Writer writer, _Ros2Ur_msgsSrvSetSpeedSliderFraction_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        double part0 = value.@speed_slider_fraction;
        writer.Float64(part0);
    }

    private static _Ros2Ur_msgsSrvSetSpeedSliderFraction_Request ReadRos2Ur_msgsSrvSetSpeedSliderFraction_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Ur_msgsSrvSetSpeedSliderFraction_Request();
        value.@speed_slider_fraction = reader.Float64();
        return value;
    }

    public sealed class _Ros2Ur_msgsSrvSetSpeedSliderFraction_Response
    {
        public bool @success = false;

        public _Ros2Ur_msgsSrvSetSpeedSliderFraction_Response()
        {
        }
    }

    public sealed class Ros2Ur_msgsSrvSetSpeedSliderFraction_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Ur_msgsSrvSetSpeedSliderFraction_Response>
    {
        public static readonly Ros2Ur_msgsSrvSetSpeedSliderFraction_ResponseCodec Instance = new Ros2Ur_msgsSrvSetSpeedSliderFraction_ResponseCodec();

        private Ros2Ur_msgsSrvSetSpeedSliderFraction_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "ur_msgs/srv/SetSpeedSliderFraction_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_1ab1ad5ab4b1ed302710ec055dff7644cc6e966af919ff311eaea6cddcf7dbb9";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros2Ur_msgsSrvSetSpeedSliderFraction_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Ur_msgsSrvSetSpeedSliderFraction_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Ur_msgsSrvSetSpeedSliderFraction_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Ur_msgsSrvSetSpeedSliderFraction_Response value = ReadRos2Ur_msgsSrvSetSpeedSliderFraction_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Ur_msgsSrvSetSpeedSliderFraction_Response(_Codecs.Writer writer, _Ros2Ur_msgsSrvSetSpeedSliderFraction_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros2Ur_msgsSrvSetSpeedSliderFraction_Response ReadRos2Ur_msgsSrvSetSpeedSliderFraction_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Ur_msgsSrvSetSpeedSliderFraction_Response();
        value.@success = ReadBool(reader);
        return value;
    }
}
