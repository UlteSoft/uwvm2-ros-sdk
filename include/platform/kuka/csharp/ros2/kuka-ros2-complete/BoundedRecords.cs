/**
 * @file BoundedRecords.cs
 * @brief Complete kuka values and adapters for the selected original interface catalog.
 * @details Retain original field order, scalar widths, array capacities, string bounds, constants and declared
 * defaults. Pure value access and canonical codecs create no native ROS allocation or resource grant. Transport
 * roles require the separately admitted SDK owner.
 * @see share/platform/kuka/domains/kuka-ros2-complete.ir.json
 * @see document/platform/kuka/en_US/README.md
 */

// Generated complete canonical records; no native ABI, CDR or ROS grant.
#nullable enable
using System;
using _Codecs = global::Uwvm.RosWasm.Codecs;
namespace Uwvm.KukaKukaRos2Complete.Models;

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
        public const string CODEC_IDENTITY = "UWVMROS1_4d55f494f060a9a3ff23bedd54da49f9e70e6b77acbdf911878afbf672cbadc5";
        public const int MIN_WIRE_BYTES = 24, MAX_WIRE_BYTES = 408;

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
        if(part0 == null || part0.Length > 12)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part0.Length, 4);
        for(int index = 0; index < part0.Length; ++index)
        {
            double element = part0[index];
            writer.Float64(element);
        }
        double[] part1 = value.@velocities;
        if(part1 == null || part1.Length > 12)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part1.Length, 4);
        for(int index = 0; index < part1.Length; ++index)
        {
            double element = part1[index];
            writer.Float64(element);
        }
        double[] part2 = value.@accelerations;
        if(part2 == null || part2.Length > 12)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part2.Length, 4);
        for(int index = 0; index < part2.Length; ++index)
        {
            double element = part2[index];
            writer.Float64(element);
        }
        double[] part3 = value.@effort;
        if(part3 == null || part3.Length > 12)
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
        value.@positions = new double[ReadCount(reader, 12, 8)];
        for(int index = 0; index < value.@positions.Length; ++index)
            value.@positions[index] = reader.Float64();
        value.@velocities = new double[ReadCount(reader, 12, 8)];
        for(int index = 0; index < value.@velocities.Length; ++index)
            value.@velocities[index] = reader.Float64();
        value.@accelerations = new double[ReadCount(reader, 12, 8)];
        for(int index = 0; index < value.@accelerations.Length; ++index)
            value.@accelerations[index] = reader.Float64();
        value.@effort = new double[ReadCount(reader, 12, 8)];
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
        public const string CODEC_IDENTITY = "UWVMROS1_d74956440763bd09c76ec623efeb322aa89be8ef6410b9125d4e2cb1aeeb69c0";
        public const int MIN_WIRE_BYTES = 20, MAX_WIRE_BYTES = 4164;

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
        if(part1 == null || part1.Length > 12)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part1.Length, 4);
        for(int index = 0; index < part1.Length; ++index)
        {
            string element = part1[index];
            WriteText(writer, element, 64);
        }
        _Ros2Trajectory_msgsMsgJointTrajectoryPoint[] part2 = value.@points;
        if(part2 == null || part2.Length > 8)
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
        value.@joint_names = new string[ReadCount(reader, 12, 4)];
        for(int index = 0; index < value.@joint_names.Length; ++index)
            value.@joint_names[index] = ReadText(reader, 64);
        value.@points = new _Ros2Trajectory_msgsMsgJointTrajectoryPoint[ReadCount(reader, 8, 24)];
        for(int index = 0; index < value.@points.Length; ++index)
            value.@points[index] = ReadRos2Trajectory_msgsMsgJointTrajectoryPoint(reader);
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

    public sealed class _Ros2Geometry_msgsMsgTransform
    {
        public _Ros2Geometry_msgsMsgVector3 @translation = new _Ros2Geometry_msgsMsgVector3();
        public _Ros2Geometry_msgsMsgQuaternion @rotation = new _Ros2Geometry_msgsMsgQuaternion();

        public _Ros2Geometry_msgsMsgTransform()
        {
        }
    }

    public sealed class Ros2Geometry_msgsMsgTransformCodec : global::Uwvm.RosWasm.ICodec<_Ros2Geometry_msgsMsgTransform>
    {
        public static readonly Ros2Geometry_msgsMsgTransformCodec Instance = new Ros2Geometry_msgsMsgTransformCodec();

        private Ros2Geometry_msgsMsgTransformCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "geometry_msgs/msg/Transform";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_7ddcb1c3fca43f4a0299d43fb6fac1b77a8f26001af809dc13307f4f9c61d65b";
        public const int MIN_WIRE_BYTES = 56, MAX_WIRE_BYTES = 56;

        public byte[] Encode(_Ros2Geometry_msgsMsgTransform value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Geometry_msgsMsgTransform(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Geometry_msgsMsgTransform Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Geometry_msgsMsgTransform value = ReadRos2Geometry_msgsMsgTransform(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Geometry_msgsMsgTransform(_Codecs.Writer writer, _Ros2Geometry_msgsMsgTransform value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Geometry_msgsMsgVector3 part0 = value.@translation;
        WriteRos2Geometry_msgsMsgVector3(writer, part0);
        _Ros2Geometry_msgsMsgQuaternion part1 = value.@rotation;
        WriteRos2Geometry_msgsMsgQuaternion(writer, part1);
    }

    private static _Ros2Geometry_msgsMsgTransform ReadRos2Geometry_msgsMsgTransform(_Codecs.Reader reader)
    {
        var value = new _Ros2Geometry_msgsMsgTransform();
        value.@translation = ReadRos2Geometry_msgsMsgVector3(reader);
        value.@rotation = ReadRos2Geometry_msgsMsgQuaternion(reader);
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

    public sealed class _Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint
    {
        public _Ros2Geometry_msgsMsgTransform[] @transforms = new _Ros2Geometry_msgsMsgTransform[0];
        public _Ros2Geometry_msgsMsgTwist[] @velocities = new _Ros2Geometry_msgsMsgTwist[0];
        public _Ros2Geometry_msgsMsgTwist[] @accelerations = new _Ros2Geometry_msgsMsgTwist[0];
        public _Ros2Builtin_interfacesMsgDuration @time_from_start = new _Ros2Builtin_interfacesMsgDuration();

        public _Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint()
        {
        }
    }

    public sealed class Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPointCodec :
        global::Uwvm.RosWasm.ICodec<_Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint>
    {
        public static readonly Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPointCodec Instance = new Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPointCodec();

        private Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPointCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "trajectory_msgs/msg/MultiDOFJointTrajectoryPoint";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_6590b7ca1cdaa89da04b7a661266e2d4c6e3e2668dc90505a7c24d7be8a43242";
        public const int MIN_WIRE_BYTES = 20, MAX_WIRE_BYTES = 324;

        public byte[] Encode(_Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint value = ReadRos2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint(_Codecs.Writer writer,
                                                                                _Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Geometry_msgsMsgTransform[] part0 = value.@transforms;
        if(part0 == null || part0.Length > 2)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part0.Length, 4);
        for(int index = 0; index < part0.Length; ++index)
        {
            _Ros2Geometry_msgsMsgTransform element = part0[index];
            WriteRos2Geometry_msgsMsgTransform(writer, element);
        }
        _Ros2Geometry_msgsMsgTwist[] part1 = value.@velocities;
        if(part1 == null || part1.Length > 2)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part1.Length, 4);
        for(int index = 0; index < part1.Length; ++index)
        {
            _Ros2Geometry_msgsMsgTwist element = part1[index];
            WriteRos2Geometry_msgsMsgTwist(writer, element);
        }
        _Ros2Geometry_msgsMsgTwist[] part2 = value.@accelerations;
        if(part2 == null || part2.Length > 2)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part2.Length, 4);
        for(int index = 0; index < part2.Length; ++index)
        {
            _Ros2Geometry_msgsMsgTwist element = part2[index];
            WriteRos2Geometry_msgsMsgTwist(writer, element);
        }
        _Ros2Builtin_interfacesMsgDuration part3 = value.@time_from_start;
        WriteRos2Builtin_interfacesMsgDuration(writer, part3);
    }

    private static _Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint ReadRos2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint(_Codecs.Reader reader)
    {
        var value = new _Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint();
        value.@transforms = new _Ros2Geometry_msgsMsgTransform[ReadCount(reader, 2, 56)];
        for(int index = 0; index < value.@transforms.Length; ++index)
            value.@transforms[index] = ReadRos2Geometry_msgsMsgTransform(reader);
        value.@velocities = new _Ros2Geometry_msgsMsgTwist[ReadCount(reader, 2, 48)];
        for(int index = 0; index < value.@velocities.Length; ++index)
            value.@velocities[index] = ReadRos2Geometry_msgsMsgTwist(reader);
        value.@accelerations = new _Ros2Geometry_msgsMsgTwist[ReadCount(reader, 2, 48)];
        for(int index = 0; index < value.@accelerations.Length; ++index)
            value.@accelerations[index] = ReadRos2Geometry_msgsMsgTwist(reader);
        value.@time_from_start = ReadRos2Builtin_interfacesMsgDuration(reader);
        return value;
    }

    public sealed class _Ros2Trajectory_msgsMsgMultiDOFJointTrajectory
    {
        public _Ros2Std_msgsMsgHeader @header = new _Ros2Std_msgsMsgHeader();
        public string[] @joint_names = new string[0];
        public _Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint[] @points = new _Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint[0];

        public _Ros2Trajectory_msgsMsgMultiDOFJointTrajectory()
        {
        }
    }

    public sealed class Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryCodec : global::Uwvm.RosWasm.ICodec<_Ros2Trajectory_msgsMsgMultiDOFJointTrajectory>
    {
        public static readonly Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryCodec Instance = new Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryCodec();

        private Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "trajectory_msgs/msg/MultiDOFJointTrajectory";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_6ea66f146cdce31369361e521be484d2c39bca818cc4b2069e1209d250ec2401";
        public const int MIN_WIRE_BYTES = 20, MAX_WIRE_BYTES = 1516;

        public byte[] Encode(_Ros2Trajectory_msgsMsgMultiDOFJointTrajectory value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Trajectory_msgsMsgMultiDOFJointTrajectory(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Trajectory_msgsMsgMultiDOFJointTrajectory Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Trajectory_msgsMsgMultiDOFJointTrajectory value = ReadRos2Trajectory_msgsMsgMultiDOFJointTrajectory(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Trajectory_msgsMsgMultiDOFJointTrajectory(_Codecs.Writer writer, _Ros2Trajectory_msgsMsgMultiDOFJointTrajectory value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Std_msgsMsgHeader part0 = value.@header;
        WriteRos2Std_msgsMsgHeader(writer, part0);
        string[] part1 = value.@joint_names;
        if(part1 == null || part1.Length > 2)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part1.Length, 4);
        for(int index = 0; index < part1.Length; ++index)
        {
            string element = part1[index];
            WriteText(writer, element, 64);
        }
        _Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint[] part2 = value.@points;
        if(part2 == null || part2.Length > 4)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part2.Length, 4);
        for(int index = 0; index < part2.Length; ++index)
        {
            _Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint element = part2[index];
            WriteRos2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint(writer, element);
        }
    }

    private static _Ros2Trajectory_msgsMsgMultiDOFJointTrajectory ReadRos2Trajectory_msgsMsgMultiDOFJointTrajectory(_Codecs.Reader reader)
    {
        var value = new _Ros2Trajectory_msgsMsgMultiDOFJointTrajectory();
        value.@header = ReadRos2Std_msgsMsgHeader(reader);
        value.@joint_names = new string[ReadCount(reader, 2, 4)];
        for(int index = 0; index < value.@joint_names.Length; ++index)
            value.@joint_names[index] = ReadText(reader, 64);
        value.@points = new _Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint[ReadCount(reader, 4, 20)];
        for(int index = 0; index < value.@points.Length; ++index)
            value.@points[index] = ReadRos2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint(reader);
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
        public const string CODEC_IDENTITY = "UWVMROS1_ad7701ac1cb0dd68a947577272964b0d6051d1846019de97e9c9d0f7be7b2fa2";
        public const int MIN_WIRE_BYTES = 28, MAX_WIRE_BYTES = 92;

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
        WriteText(writer, part0, 64);
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
        value.@name = ReadText(reader, 64);
        value.@position = reader.Float64();
        value.@velocity = reader.Float64();
        value.@acceleration = reader.Float64();
        return value;
    }

    public sealed class _Ros2Control_msgsMsgJointComponentTolerance
    {
        public string @joint_name = "";
        public ushort @component = 0;
        public double @position = 0;
        public double @velocity = 0;
        public double @acceleration = 0;

        public _Ros2Control_msgsMsgJointComponentTolerance()
        {
        }
    }

    public sealed class Ros2Control_msgsMsgJointComponentToleranceCodec : global::Uwvm.RosWasm.ICodec<_Ros2Control_msgsMsgJointComponentTolerance>
    {
        public static readonly Ros2Control_msgsMsgJointComponentToleranceCodec Instance = new Ros2Control_msgsMsgJointComponentToleranceCodec();

        private Ros2Control_msgsMsgJointComponentToleranceCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "control_msgs/msg/JointComponentTolerance";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_658f3d3f180b301e5c612188390187ec4034064976f133018048bb1fdec55342";
        public const int MIN_WIRE_BYTES = 30, MAX_WIRE_BYTES = 542;

        public byte[] Encode(_Ros2Control_msgsMsgJointComponentTolerance value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Control_msgsMsgJointComponentTolerance(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Control_msgsMsgJointComponentTolerance Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Control_msgsMsgJointComponentTolerance value = ReadRos2Control_msgsMsgJointComponentTolerance(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Control_msgsMsgJointComponentTolerance(_Codecs.Writer writer, _Ros2Control_msgsMsgJointComponentTolerance value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        string part0 = value.@joint_name;
        WriteText(writer, part0, 512);
        ushort part1 = value.@component;
        writer.Unsigned(part1, 2);
        double part2 = value.@position;
        writer.Float64(part2);
        double part3 = value.@velocity;
        writer.Float64(part3);
        double part4 = value.@acceleration;
        writer.Float64(part4);
    }

    private static _Ros2Control_msgsMsgJointComponentTolerance ReadRos2Control_msgsMsgJointComponentTolerance(_Codecs.Reader reader)
    {
        var value = new _Ros2Control_msgsMsgJointComponentTolerance();
        value.@joint_name = ReadText(reader, 512);
        value.@component = unchecked((ushort)reader.Unsigned(2));
        value.@position = reader.Float64();
        value.@velocity = reader.Float64();
        value.@acceleration = reader.Float64();
        return value;
    }

    public sealed class _Ros2Control_msgsActionFollowJointTrajectory_Goal
    {
        public _Ros2Trajectory_msgsMsgJointTrajectory @trajectory = new _Ros2Trajectory_msgsMsgJointTrajectory();
        public _Ros2Trajectory_msgsMsgMultiDOFJointTrajectory @multi_dof_trajectory = new _Ros2Trajectory_msgsMsgMultiDOFJointTrajectory();
        public _Ros2Control_msgsMsgJointTolerance[] @path_tolerance = new _Ros2Control_msgsMsgJointTolerance[0];
        public _Ros2Control_msgsMsgJointComponentTolerance[] @component_path_tolerance = new _Ros2Control_msgsMsgJointComponentTolerance[0];
        public _Ros2Control_msgsMsgJointTolerance[] @goal_tolerance = new _Ros2Control_msgsMsgJointTolerance[0];
        public _Ros2Control_msgsMsgJointComponentTolerance[] @component_goal_tolerance = new _Ros2Control_msgsMsgJointComponentTolerance[0];
        public _Ros2Builtin_interfacesMsgDuration @goal_time_tolerance = new _Ros2Builtin_interfacesMsgDuration();

        public _Ros2Control_msgsActionFollowJointTrajectory_Goal()
        {
        }
    }

    public sealed class Ros2Control_msgsActionFollowJointTrajectory_GoalCodec : global::Uwvm.RosWasm.ICodec<_Ros2Control_msgsActionFollowJointTrajectory_Goal>
    {
        public static readonly Ros2Control_msgsActionFollowJointTrajectory_GoalCodec Instance = new Ros2Control_msgsActionFollowJointTrajectory_GoalCodec();

        private Ros2Control_msgsActionFollowJointTrajectory_GoalCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "control_msgs/action/FollowJointTrajectory_Goal";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_8945d5b29832f1190b0a4f8c4af4e82686c4b913413affe9c0945570b4fb1f16";
        public const int MIN_WIRE_BYTES = 64, MAX_WIRE_BYTES = 20920;

        public byte[] Encode(_Ros2Control_msgsActionFollowJointTrajectory_Goal value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Control_msgsActionFollowJointTrajectory_Goal(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Control_msgsActionFollowJointTrajectory_Goal Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Control_msgsActionFollowJointTrajectory_Goal value = ReadRos2Control_msgsActionFollowJointTrajectory_Goal(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Control_msgsActionFollowJointTrajectory_Goal(_Codecs.Writer writer, _Ros2Control_msgsActionFollowJointTrajectory_Goal value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Trajectory_msgsMsgJointTrajectory part0 = value.@trajectory;
        WriteRos2Trajectory_msgsMsgJointTrajectory(writer, part0);
        _Ros2Trajectory_msgsMsgMultiDOFJointTrajectory part1 = value.@multi_dof_trajectory;
        WriteRos2Trajectory_msgsMsgMultiDOFJointTrajectory(writer, part1);
        _Ros2Control_msgsMsgJointTolerance[] part2 = value.@path_tolerance;
        if(part2 == null || part2.Length > 12)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part2.Length, 4);
        for(int index = 0; index < part2.Length; ++index)
        {
            _Ros2Control_msgsMsgJointTolerance element = part2[index];
            WriteRos2Control_msgsMsgJointTolerance(writer, element);
        }
        _Ros2Control_msgsMsgJointComponentTolerance[] part3 = value.@component_path_tolerance;
        if(part3 == null || part3.Length > 12)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part3.Length, 4);
        for(int index = 0; index < part3.Length; ++index)
        {
            _Ros2Control_msgsMsgJointComponentTolerance element = part3[index];
            WriteRos2Control_msgsMsgJointComponentTolerance(writer, element);
        }
        _Ros2Control_msgsMsgJointTolerance[] part4 = value.@goal_tolerance;
        if(part4 == null || part4.Length > 12)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part4.Length, 4);
        for(int index = 0; index < part4.Length; ++index)
        {
            _Ros2Control_msgsMsgJointTolerance element = part4[index];
            WriteRos2Control_msgsMsgJointTolerance(writer, element);
        }
        _Ros2Control_msgsMsgJointComponentTolerance[] part5 = value.@component_goal_tolerance;
        if(part5 == null || part5.Length > 12)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part5.Length, 4);
        for(int index = 0; index < part5.Length; ++index)
        {
            _Ros2Control_msgsMsgJointComponentTolerance element = part5[index];
            WriteRos2Control_msgsMsgJointComponentTolerance(writer, element);
        }
        _Ros2Builtin_interfacesMsgDuration part6 = value.@goal_time_tolerance;
        WriteRos2Builtin_interfacesMsgDuration(writer, part6);
    }

    private static _Ros2Control_msgsActionFollowJointTrajectory_Goal ReadRos2Control_msgsActionFollowJointTrajectory_Goal(_Codecs.Reader reader)
    {
        var value = new _Ros2Control_msgsActionFollowJointTrajectory_Goal();
        value.@trajectory = ReadRos2Trajectory_msgsMsgJointTrajectory(reader);
        value.@multi_dof_trajectory = ReadRos2Trajectory_msgsMsgMultiDOFJointTrajectory(reader);
        value.@path_tolerance = new _Ros2Control_msgsMsgJointTolerance[ReadCount(reader, 12, 28)];
        for(int index = 0; index < value.@path_tolerance.Length; ++index)
            value.@path_tolerance[index] = ReadRos2Control_msgsMsgJointTolerance(reader);
        value.@component_path_tolerance = new _Ros2Control_msgsMsgJointComponentTolerance[ReadCount(reader, 12, 30)];
        for(int index = 0; index < value.@component_path_tolerance.Length; ++index)
            value.@component_path_tolerance[index] = ReadRos2Control_msgsMsgJointComponentTolerance(reader);
        value.@goal_tolerance = new _Ros2Control_msgsMsgJointTolerance[ReadCount(reader, 12, 28)];
        for(int index = 0; index < value.@goal_tolerance.Length; ++index)
            value.@goal_tolerance[index] = ReadRos2Control_msgsMsgJointTolerance(reader);
        value.@component_goal_tolerance = new _Ros2Control_msgsMsgJointComponentTolerance[ReadCount(reader, 12, 30)];
        for(int index = 0; index < value.@component_goal_tolerance.Length; ++index)
            value.@component_goal_tolerance[index] = ReadRos2Control_msgsMsgJointComponentTolerance(reader);
        value.@goal_time_tolerance = ReadRos2Builtin_interfacesMsgDuration(reader);
        return value;
    }

    public sealed class _Ros2Control_msgsActionFollowJointTrajectory_Result
    {
        public int @error_code = 0;
        public string @error_string = "";

        public _Ros2Control_msgsActionFollowJointTrajectory_Result()
        {
        }
    }

    public sealed class Ros2Control_msgsActionFollowJointTrajectory_ResultCodec :
        global::Uwvm.RosWasm.ICodec<_Ros2Control_msgsActionFollowJointTrajectory_Result>
    {
        public static readonly Ros2Control_msgsActionFollowJointTrajectory_ResultCodec Instance = new Ros2Control_msgsActionFollowJointTrajectory_ResultCodec();

        private Ros2Control_msgsActionFollowJointTrajectory_ResultCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "control_msgs/action/FollowJointTrajectory_Result";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_c698e3a3a772735ff6027b04af28e9bc88d6b7138863ce5737aa090f543dac70";
        public const int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 4104;

        public byte[] Encode(_Ros2Control_msgsActionFollowJointTrajectory_Result value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Control_msgsActionFollowJointTrajectory_Result(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Control_msgsActionFollowJointTrajectory_Result Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Control_msgsActionFollowJointTrajectory_Result value = ReadRos2Control_msgsActionFollowJointTrajectory_Result(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Control_msgsActionFollowJointTrajectory_Result(_Codecs.Writer writer,
                                                                                _Ros2Control_msgsActionFollowJointTrajectory_Result value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        int part0 = value.@error_code;
        writer.Unsigned(unchecked((uint)part0), 4);
        string part1 = value.@error_string;
        WriteText(writer, part1, 4096);
    }

    private static _Ros2Control_msgsActionFollowJointTrajectory_Result ReadRos2Control_msgsActionFollowJointTrajectory_Result(_Codecs.Reader reader)
    {
        var value = new _Ros2Control_msgsActionFollowJointTrajectory_Result();
        value.@error_code = unchecked((int)reader.Unsigned(4));
        value.@error_string = ReadText(reader, 4096);
        return value;
    }

    public sealed class _Ros2Control_msgsActionFollowJointTrajectory_Feedback
    {
        public _Ros2Std_msgsMsgHeader @header = new _Ros2Std_msgsMsgHeader();
        public string[] @joint_names = new string[0];
        public _Ros2Trajectory_msgsMsgJointTrajectoryPoint @desired = new _Ros2Trajectory_msgsMsgJointTrajectoryPoint();
        public _Ros2Trajectory_msgsMsgJointTrajectoryPoint @actual = new _Ros2Trajectory_msgsMsgJointTrajectoryPoint();
        public _Ros2Trajectory_msgsMsgJointTrajectoryPoint @error = new _Ros2Trajectory_msgsMsgJointTrajectoryPoint();
        public string[] @multi_dof_joint_names = new string[0];
        public _Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint @multi_dof_desired = new _Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint();
        public _Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint @multi_dof_actual = new _Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint();
        public _Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint @multi_dof_error = new _Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint();

        public _Ros2Control_msgsActionFollowJointTrajectory_Feedback()
        {
        }
    }

    public sealed class Ros2Control_msgsActionFollowJointTrajectory_FeedbackCodec :
        global::Uwvm.RosWasm.ICodec<_Ros2Control_msgsActionFollowJointTrajectory_Feedback>
    {
        public static readonly Ros2Control_msgsActionFollowJointTrajectory_FeedbackCodec Instance =
            new Ros2Control_msgsActionFollowJointTrajectory_FeedbackCodec();

        private Ros2Control_msgsActionFollowJointTrajectory_FeedbackCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "control_msgs/action/FollowJointTrajectory_Feedback";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_68f3809217bd914cd971e1365ca825111c1394b2587c6989736adcaa8a40a7cb";
        public const int MIN_WIRE_BYTES = 152, MAX_WIRE_BYTES = 4128;

        public byte[] Encode(_Ros2Control_msgsActionFollowJointTrajectory_Feedback value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Control_msgsActionFollowJointTrajectory_Feedback(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Control_msgsActionFollowJointTrajectory_Feedback Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Control_msgsActionFollowJointTrajectory_Feedback value = ReadRos2Control_msgsActionFollowJointTrajectory_Feedback(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Control_msgsActionFollowJointTrajectory_Feedback(_Codecs.Writer writer,
                                                                                  _Ros2Control_msgsActionFollowJointTrajectory_Feedback value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Std_msgsMsgHeader part0 = value.@header;
        WriteRos2Std_msgsMsgHeader(writer, part0);
        string[] part1 = value.@joint_names;
        if(part1 == null || part1.Length > 12)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part1.Length, 4);
        for(int index = 0; index < part1.Length; ++index)
        {
            string element = part1[index];
            WriteText(writer, element, 64);
        }
        _Ros2Trajectory_msgsMsgJointTrajectoryPoint part2 = value.@desired;
        WriteRos2Trajectory_msgsMsgJointTrajectoryPoint(writer, part2);
        _Ros2Trajectory_msgsMsgJointTrajectoryPoint part3 = value.@actual;
        WriteRos2Trajectory_msgsMsgJointTrajectoryPoint(writer, part3);
        _Ros2Trajectory_msgsMsgJointTrajectoryPoint part4 = value.@error;
        WriteRos2Trajectory_msgsMsgJointTrajectoryPoint(writer, part4);
        string[] part5 = value.@multi_dof_joint_names;
        if(part5 == null || part5.Length > 2)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part5.Length, 4);
        for(int index = 0; index < part5.Length; ++index)
        {
            string element = part5[index];
            WriteText(writer, element, 512);
        }
        _Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint part6 = value.@multi_dof_desired;
        WriteRos2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint(writer, part6);
        _Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint part7 = value.@multi_dof_actual;
        WriteRos2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint(writer, part7);
        _Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint part8 = value.@multi_dof_error;
        WriteRos2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint(writer, part8);
    }

    private static _Ros2Control_msgsActionFollowJointTrajectory_Feedback ReadRos2Control_msgsActionFollowJointTrajectory_Feedback(_Codecs.Reader reader)
    {
        var value = new _Ros2Control_msgsActionFollowJointTrajectory_Feedback();
        value.@header = ReadRos2Std_msgsMsgHeader(reader);
        value.@joint_names = new string[ReadCount(reader, 12, 4)];
        for(int index = 0; index < value.@joint_names.Length; ++index)
            value.@joint_names[index] = ReadText(reader, 64);
        value.@desired = ReadRos2Trajectory_msgsMsgJointTrajectoryPoint(reader);
        value.@actual = ReadRos2Trajectory_msgsMsgJointTrajectoryPoint(reader);
        value.@error = ReadRos2Trajectory_msgsMsgJointTrajectoryPoint(reader);
        value.@multi_dof_joint_names = new string[ReadCount(reader, 2, 4)];
        for(int index = 0; index < value.@multi_dof_joint_names.Length; ++index)
            value.@multi_dof_joint_names[index] = ReadText(reader, 512);
        value.@multi_dof_desired = ReadRos2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint(reader);
        value.@multi_dof_actual = ReadRos2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint(reader);
        value.@multi_dof_error = ReadRos2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint(reader);
        return value;
    }

    public sealed class _Ros2Kuka_driver_interfacesMsgFRIState
    {
        public int @session_state = 0;
        public int @connection_quality = 0;
        public int @safety_state = 0;
        public int @command_mode = 0;
        public int @control_mode = 0;
        public int @operation_mode = 0;
        public int @drive_state = 0;
        public int @overlay_type = 0;
        public double @tracking_performance = 0;

        public _Ros2Kuka_driver_interfacesMsgFRIState()
        {
        }
    }

    public sealed class Ros2Kuka_driver_interfacesMsgFRIStateCodec : global::Uwvm.RosWasm.ICodec<_Ros2Kuka_driver_interfacesMsgFRIState>
    {
        public static readonly Ros2Kuka_driver_interfacesMsgFRIStateCodec Instance = new Ros2Kuka_driver_interfacesMsgFRIStateCodec();

        private Ros2Kuka_driver_interfacesMsgFRIStateCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "kuka_driver_interfaces/msg/FRIState";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_27be8431e4a8cda3bb4d6d5a8a69fd86a0d07a1d920799c232d63a4941ee6716";
        public const int MIN_WIRE_BYTES = 40, MAX_WIRE_BYTES = 40;

        public byte[] Encode(_Ros2Kuka_driver_interfacesMsgFRIState value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Kuka_driver_interfacesMsgFRIState(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Kuka_driver_interfacesMsgFRIState Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Kuka_driver_interfacesMsgFRIState value = ReadRos2Kuka_driver_interfacesMsgFRIState(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Kuka_driver_interfacesMsgFRIState(_Codecs.Writer writer, _Ros2Kuka_driver_interfacesMsgFRIState value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        int part0 = value.@session_state;
        writer.Unsigned(unchecked((uint)part0), 4);
        int part1 = value.@connection_quality;
        writer.Unsigned(unchecked((uint)part1), 4);
        int part2 = value.@safety_state;
        writer.Unsigned(unchecked((uint)part2), 4);
        int part3 = value.@command_mode;
        writer.Unsigned(unchecked((uint)part3), 4);
        int part4 = value.@control_mode;
        writer.Unsigned(unchecked((uint)part4), 4);
        int part5 = value.@operation_mode;
        writer.Unsigned(unchecked((uint)part5), 4);
        int part6 = value.@drive_state;
        writer.Unsigned(unchecked((uint)part6), 4);
        int part7 = value.@overlay_type;
        writer.Unsigned(unchecked((uint)part7), 4);
        double part8 = value.@tracking_performance;
        writer.Float64(part8);
    }

    private static _Ros2Kuka_driver_interfacesMsgFRIState ReadRos2Kuka_driver_interfacesMsgFRIState(_Codecs.Reader reader)
    {
        var value = new _Ros2Kuka_driver_interfacesMsgFRIState();
        value.@session_state = unchecked((int)reader.Unsigned(4));
        value.@connection_quality = unchecked((int)reader.Unsigned(4));
        value.@safety_state = unchecked((int)reader.Unsigned(4));
        value.@command_mode = unchecked((int)reader.Unsigned(4));
        value.@control_mode = unchecked((int)reader.Unsigned(4));
        value.@operation_mode = unchecked((int)reader.Unsigned(4));
        value.@drive_state = unchecked((int)reader.Unsigned(4));
        value.@overlay_type = unchecked((int)reader.Unsigned(4));
        value.@tracking_performance = reader.Float64();
        return value;
    }

    public sealed class _Ros2Kuka_driver_interfacesMsgFRIStateArray
    {
        public string[] @robot_names = new string[0];
        public _Ros2Kuka_driver_interfacesMsgFRIState[] @states = new _Ros2Kuka_driver_interfacesMsgFRIState[0];

        public _Ros2Kuka_driver_interfacesMsgFRIStateArray()
        {
        }
    }

    public sealed class Ros2Kuka_driver_interfacesMsgFRIStateArrayCodec : global::Uwvm.RosWasm.ICodec<_Ros2Kuka_driver_interfacesMsgFRIStateArray>
    {
        public static readonly Ros2Kuka_driver_interfacesMsgFRIStateArrayCodec Instance = new Ros2Kuka_driver_interfacesMsgFRIStateArrayCodec();

        private Ros2Kuka_driver_interfacesMsgFRIStateArrayCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "kuka_driver_interfaces/msg/FRIStateArray";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_4312aa4103fd0c92fe7cd9d1201c40e327b05812cdc60130d11b8c2e0eb47449";
        public const int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 1736;

        public byte[] Encode(_Ros2Kuka_driver_interfacesMsgFRIStateArray value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Kuka_driver_interfacesMsgFRIStateArray(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Kuka_driver_interfacesMsgFRIStateArray Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Kuka_driver_interfacesMsgFRIStateArray value = ReadRos2Kuka_driver_interfacesMsgFRIStateArray(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Kuka_driver_interfacesMsgFRIStateArray(_Codecs.Writer writer, _Ros2Kuka_driver_interfacesMsgFRIStateArray value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        string[] part0 = value.@robot_names;
        if(part0 == null || part0.Length > 16)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part0.Length, 4);
        for(int index = 0; index < part0.Length; ++index)
        {
            string element = part0[index];
            WriteText(writer, element, 64);
        }
        _Ros2Kuka_driver_interfacesMsgFRIState[] part1 = value.@states;
        if(part1 == null || part1.Length > 16)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part1.Length, 4);
        for(int index = 0; index < part1.Length; ++index)
        {
            _Ros2Kuka_driver_interfacesMsgFRIState element = part1[index];
            WriteRos2Kuka_driver_interfacesMsgFRIState(writer, element);
        }
    }

    private static _Ros2Kuka_driver_interfacesMsgFRIStateArray ReadRos2Kuka_driver_interfacesMsgFRIStateArray(_Codecs.Reader reader)
    {
        var value = new _Ros2Kuka_driver_interfacesMsgFRIStateArray();
        value.@robot_names = new string[ReadCount(reader, 16, 4)];
        for(int index = 0; index < value.@robot_names.Length; ++index)
            value.@robot_names[index] = ReadText(reader, 64);
        value.@states = new _Ros2Kuka_driver_interfacesMsgFRIState[ReadCount(reader, 16, 40)];
        for(int index = 0; index < value.@states.Length; ++index)
            value.@states[index] = ReadRos2Kuka_driver_interfacesMsgFRIState(reader);
        return value;
    }

    public sealed class _Ros2Kuka_driver_interfacesMsgFriConfiguration
    {
        public int @receive_multiplier = 0;
        public int @send_period_ms = 0;

        public _Ros2Kuka_driver_interfacesMsgFriConfiguration()
        {
        }
    }

    public sealed class Ros2Kuka_driver_interfacesMsgFriConfigurationCodec : global::Uwvm.RosWasm.ICodec<_Ros2Kuka_driver_interfacesMsgFriConfiguration>
    {
        public static readonly Ros2Kuka_driver_interfacesMsgFriConfigurationCodec Instance = new Ros2Kuka_driver_interfacesMsgFriConfigurationCodec();

        private Ros2Kuka_driver_interfacesMsgFriConfigurationCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "kuka_driver_interfaces/msg/FriConfiguration";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_a60335766ad606adc5699c833cc6bc43adc3067691bcdbf587bbfb56e8a7127e";
        public const int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 8;

        public byte[] Encode(_Ros2Kuka_driver_interfacesMsgFriConfiguration value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Kuka_driver_interfacesMsgFriConfiguration(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Kuka_driver_interfacesMsgFriConfiguration Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Kuka_driver_interfacesMsgFriConfiguration value = ReadRos2Kuka_driver_interfacesMsgFriConfiguration(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Kuka_driver_interfacesMsgFriConfiguration(_Codecs.Writer writer, _Ros2Kuka_driver_interfacesMsgFriConfiguration value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        int part0 = value.@receive_multiplier;
        writer.Unsigned(unchecked((uint)part0), 4);
        int part1 = value.@send_period_ms;
        writer.Unsigned(unchecked((uint)part1), 4);
    }

    private static _Ros2Kuka_driver_interfacesMsgFriConfiguration ReadRos2Kuka_driver_interfacesMsgFriConfiguration(_Codecs.Reader reader)
    {
        var value = new _Ros2Kuka_driver_interfacesMsgFriConfiguration();
        value.@receive_multiplier = unchecked((int)reader.Unsigned(4));
        value.@send_period_ms = unchecked((int)reader.Unsigned(4));
        return value;
    }

    public sealed class _Ros2Kuka_driver_interfacesMsgHardwareEvent
    {
        public string @robot_name = "";
        public byte @event = 0;

        public _Ros2Kuka_driver_interfacesMsgHardwareEvent()
        {
        }
    }

    public sealed class Ros2Kuka_driver_interfacesMsgHardwareEventCodec : global::Uwvm.RosWasm.ICodec<_Ros2Kuka_driver_interfacesMsgHardwareEvent>
    {
        public static readonly Ros2Kuka_driver_interfacesMsgHardwareEventCodec Instance = new Ros2Kuka_driver_interfacesMsgHardwareEventCodec();

        private Ros2Kuka_driver_interfacesMsgHardwareEventCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "kuka_driver_interfaces/msg/HardwareEvent";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_cb542e9311957712257c6d8ae273b3d2d2339760978e11e3798982c84fbc5e68";
        public const int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 517;

        public byte[] Encode(_Ros2Kuka_driver_interfacesMsgHardwareEvent value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Kuka_driver_interfacesMsgHardwareEvent(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Kuka_driver_interfacesMsgHardwareEvent Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Kuka_driver_interfacesMsgHardwareEvent value = ReadRos2Kuka_driver_interfacesMsgHardwareEvent(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Kuka_driver_interfacesMsgHardwareEvent(_Codecs.Writer writer, _Ros2Kuka_driver_interfacesMsgHardwareEvent value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        string part0 = value.@robot_name;
        WriteText(writer, part0, 512);
        byte part1 = value.@event;
        writer.Unsigned(part1, 1);
    }

    private static _Ros2Kuka_driver_interfacesMsgHardwareEvent ReadRos2Kuka_driver_interfacesMsgHardwareEvent(_Codecs.Reader reader)
    {
        var value = new _Ros2Kuka_driver_interfacesMsgHardwareEvent();
        value.@robot_name = ReadText(reader, 512);
        value.@event = unchecked((byte)reader.Unsigned(1));
        return value;
    }

    public sealed class _Ros2Kuka_driver_interfacesMsgKssStatus
    {
        public byte @control_mode = 0;
        public byte @cycle_time = 0;
        public bool @drives_powered = false;
        public bool @emergency_stop = false;
        public bool @guard_stop = false;
        public bool @in_motion = false;
        public bool @motion_possible = false;
        public byte @operation_mode = 0;
        public bool @robot_stopped = false;

        public _Ros2Kuka_driver_interfacesMsgKssStatus()
        {
        }
    }

    public sealed class Ros2Kuka_driver_interfacesMsgKssStatusCodec : global::Uwvm.RosWasm.ICodec<_Ros2Kuka_driver_interfacesMsgKssStatus>
    {
        public static readonly Ros2Kuka_driver_interfacesMsgKssStatusCodec Instance = new Ros2Kuka_driver_interfacesMsgKssStatusCodec();

        private Ros2Kuka_driver_interfacesMsgKssStatusCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "kuka_driver_interfaces/msg/KssStatus";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_b28bc2f19a0f410f0cd1d5b1d59daf1d09acb3e8312b4267f622a4d119f16b82";
        public const int MIN_WIRE_BYTES = 9, MAX_WIRE_BYTES = 9;

        public byte[] Encode(_Ros2Kuka_driver_interfacesMsgKssStatus value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Kuka_driver_interfacesMsgKssStatus(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Kuka_driver_interfacesMsgKssStatus Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Kuka_driver_interfacesMsgKssStatus value = ReadRos2Kuka_driver_interfacesMsgKssStatus(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Kuka_driver_interfacesMsgKssStatus(_Codecs.Writer writer, _Ros2Kuka_driver_interfacesMsgKssStatus value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        byte part0 = value.@control_mode;
        writer.Unsigned(part0, 1);
        byte part1 = value.@cycle_time;
        writer.Unsigned(part1, 1);
        bool part2 = value.@drives_powered;
        writer.Unsigned(part2 ? 1UL : 0UL, 1);
        bool part3 = value.@emergency_stop;
        writer.Unsigned(part3 ? 1UL : 0UL, 1);
        bool part4 = value.@guard_stop;
        writer.Unsigned(part4 ? 1UL : 0UL, 1);
        bool part5 = value.@in_motion;
        writer.Unsigned(part5 ? 1UL : 0UL, 1);
        bool part6 = value.@motion_possible;
        writer.Unsigned(part6 ? 1UL : 0UL, 1);
        byte part7 = value.@operation_mode;
        writer.Unsigned(part7, 1);
        bool part8 = value.@robot_stopped;
        writer.Unsigned(part8 ? 1UL : 0UL, 1);
    }

    private static _Ros2Kuka_driver_interfacesMsgKssStatus ReadRos2Kuka_driver_interfacesMsgKssStatus(_Codecs.Reader reader)
    {
        var value = new _Ros2Kuka_driver_interfacesMsgKssStatus();
        value.@control_mode = unchecked((byte)reader.Unsigned(1));
        value.@cycle_time = unchecked((byte)reader.Unsigned(1));
        value.@drives_powered = ReadBool(reader);
        value.@emergency_stop = ReadBool(reader);
        value.@guard_stop = ReadBool(reader);
        value.@in_motion = ReadBool(reader);
        value.@motion_possible = ReadBool(reader);
        value.@operation_mode = unchecked((byte)reader.Unsigned(1));
        value.@robot_stopped = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Kuka_driver_interfacesMsgKssStatusArray
    {
        public string[] @robot_names = new string[0];
        public _Ros2Kuka_driver_interfacesMsgKssStatus[] @statuses = new _Ros2Kuka_driver_interfacesMsgKssStatus[0];

        public _Ros2Kuka_driver_interfacesMsgKssStatusArray()
        {
        }
    }

    public sealed class Ros2Kuka_driver_interfacesMsgKssStatusArrayCodec : global::Uwvm.RosWasm.ICodec<_Ros2Kuka_driver_interfacesMsgKssStatusArray>
    {
        public static readonly Ros2Kuka_driver_interfacesMsgKssStatusArrayCodec Instance = new Ros2Kuka_driver_interfacesMsgKssStatusArrayCodec();

        private Ros2Kuka_driver_interfacesMsgKssStatusArrayCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "kuka_driver_interfaces/msg/KssStatusArray";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_3c8e93b369eefea89c0aa56ab657721edd041ac66e18cfbf4fc4201df60dbebd";
        public const int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 1240;

        public byte[] Encode(_Ros2Kuka_driver_interfacesMsgKssStatusArray value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Kuka_driver_interfacesMsgKssStatusArray(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Kuka_driver_interfacesMsgKssStatusArray Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Kuka_driver_interfacesMsgKssStatusArray value = ReadRos2Kuka_driver_interfacesMsgKssStatusArray(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Kuka_driver_interfacesMsgKssStatusArray(_Codecs.Writer writer, _Ros2Kuka_driver_interfacesMsgKssStatusArray value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        string[] part0 = value.@robot_names;
        if(part0 == null || part0.Length > 16)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part0.Length, 4);
        for(int index = 0; index < part0.Length; ++index)
        {
            string element = part0[index];
            WriteText(writer, element, 64);
        }
        _Ros2Kuka_driver_interfacesMsgKssStatus[] part1 = value.@statuses;
        if(part1 == null || part1.Length > 16)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part1.Length, 4);
        for(int index = 0; index < part1.Length; ++index)
        {
            _Ros2Kuka_driver_interfacesMsgKssStatus element = part1[index];
            WriteRos2Kuka_driver_interfacesMsgKssStatus(writer, element);
        }
    }

    private static _Ros2Kuka_driver_interfacesMsgKssStatusArray ReadRos2Kuka_driver_interfacesMsgKssStatusArray(_Codecs.Reader reader)
    {
        var value = new _Ros2Kuka_driver_interfacesMsgKssStatusArray();
        value.@robot_names = new string[ReadCount(reader, 16, 4)];
        for(int index = 0; index < value.@robot_names.Length; ++index)
            value.@robot_names[index] = ReadText(reader, 64);
        value.@statuses = new _Ros2Kuka_driver_interfacesMsgKssStatus[ReadCount(reader, 16, 9)];
        for(int index = 0; index < value.@statuses.Length; ++index)
            value.@statuses[index] = ReadRos2Kuka_driver_interfacesMsgKssStatus(reader);
        return value;
    }

    public sealed class _Ros2Lifecycle_msgsMsgState
    {
        public byte @id = 0;
        public string @label = "";

        public _Ros2Lifecycle_msgsMsgState()
        {
        }
    }

    public sealed class Ros2Lifecycle_msgsMsgStateCodec : global::Uwvm.RosWasm.ICodec<_Ros2Lifecycle_msgsMsgState>
    {
        public static readonly Ros2Lifecycle_msgsMsgStateCodec Instance = new Ros2Lifecycle_msgsMsgStateCodec();

        private Ros2Lifecycle_msgsMsgStateCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "lifecycle_msgs/msg/State";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_ebd49e5f87ddaa204cc4072ceef9840676c6f65f67448a027e26570dae0ded94";
        public const int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 517;

        public byte[] Encode(_Ros2Lifecycle_msgsMsgState value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Lifecycle_msgsMsgState(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Lifecycle_msgsMsgState Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Lifecycle_msgsMsgState value = ReadRos2Lifecycle_msgsMsgState(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Lifecycle_msgsMsgState(_Codecs.Writer writer, _Ros2Lifecycle_msgsMsgState value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        byte part0 = value.@id;
        writer.Unsigned(part0, 1);
        string part1 = value.@label;
        WriteText(writer, part1, 512);
    }

    private static _Ros2Lifecycle_msgsMsgState ReadRos2Lifecycle_msgsMsgState(_Codecs.Reader reader)
    {
        var value = new _Ros2Lifecycle_msgsMsgState();
        value.@id = unchecked((byte)reader.Unsigned(1));
        value.@label = ReadText(reader, 512);
        return value;
    }

    public sealed class _Ros2Lifecycle_msgsMsgTransition
    {
        public byte @id = 0;
        public string @label = "";

        public _Ros2Lifecycle_msgsMsgTransition()
        {
        }
    }

    public sealed class Ros2Lifecycle_msgsMsgTransitionCodec : global::Uwvm.RosWasm.ICodec<_Ros2Lifecycle_msgsMsgTransition>
    {
        public static readonly Ros2Lifecycle_msgsMsgTransitionCodec Instance = new Ros2Lifecycle_msgsMsgTransitionCodec();

        private Ros2Lifecycle_msgsMsgTransitionCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "lifecycle_msgs/msg/Transition";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_1f9bb864622854b446a37cf3c6e29e9cf41f8efa37375c5a56205b4c02ed10cb";
        public const int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 517;

        public byte[] Encode(_Ros2Lifecycle_msgsMsgTransition value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Lifecycle_msgsMsgTransition(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Lifecycle_msgsMsgTransition Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Lifecycle_msgsMsgTransition value = ReadRos2Lifecycle_msgsMsgTransition(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Lifecycle_msgsMsgTransition(_Codecs.Writer writer, _Ros2Lifecycle_msgsMsgTransition value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        byte part0 = value.@id;
        writer.Unsigned(part0, 1);
        string part1 = value.@label;
        WriteText(writer, part1, 512);
    }

    private static _Ros2Lifecycle_msgsMsgTransition ReadRos2Lifecycle_msgsMsgTransition(_Codecs.Reader reader)
    {
        var value = new _Ros2Lifecycle_msgsMsgTransition();
        value.@id = unchecked((byte)reader.Unsigned(1));
        value.@label = ReadText(reader, 512);
        return value;
    }

    public sealed class _Ros2Lifecycle_msgsSrvChangeState_Request
    {
        public _Ros2Lifecycle_msgsMsgTransition @transition = new _Ros2Lifecycle_msgsMsgTransition();

        public _Ros2Lifecycle_msgsSrvChangeState_Request()
        {
        }
    }

    public sealed class Ros2Lifecycle_msgsSrvChangeState_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Lifecycle_msgsSrvChangeState_Request>
    {
        public static readonly Ros2Lifecycle_msgsSrvChangeState_RequestCodec Instance = new Ros2Lifecycle_msgsSrvChangeState_RequestCodec();

        private Ros2Lifecycle_msgsSrvChangeState_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "lifecycle_msgs/srv/ChangeState_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_b04270f03616b8e581036d327d18bde62d38627ae8acf88fb77d0ed7b3b3d3d1";
        public const int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 517;

        public byte[] Encode(_Ros2Lifecycle_msgsSrvChangeState_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Lifecycle_msgsSrvChangeState_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Lifecycle_msgsSrvChangeState_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Lifecycle_msgsSrvChangeState_Request value = ReadRos2Lifecycle_msgsSrvChangeState_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Lifecycle_msgsSrvChangeState_Request(_Codecs.Writer writer, _Ros2Lifecycle_msgsSrvChangeState_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Lifecycle_msgsMsgTransition part0 = value.@transition;
        WriteRos2Lifecycle_msgsMsgTransition(writer, part0);
    }

    private static _Ros2Lifecycle_msgsSrvChangeState_Request ReadRos2Lifecycle_msgsSrvChangeState_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Lifecycle_msgsSrvChangeState_Request();
        value.@transition = ReadRos2Lifecycle_msgsMsgTransition(reader);
        return value;
    }

    public sealed class _Ros2Lifecycle_msgsSrvChangeState_Response
    {
        public bool @success = false;

        public _Ros2Lifecycle_msgsSrvChangeState_Response()
        {
        }
    }

    public sealed class Ros2Lifecycle_msgsSrvChangeState_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Lifecycle_msgsSrvChangeState_Response>
    {
        public static readonly Ros2Lifecycle_msgsSrvChangeState_ResponseCodec Instance = new Ros2Lifecycle_msgsSrvChangeState_ResponseCodec();

        private Ros2Lifecycle_msgsSrvChangeState_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "lifecycle_msgs/srv/ChangeState_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_d2dc541d6995976a2a1a2c03d499aa9dccaf487736b11704d778c86fddaf5032";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros2Lifecycle_msgsSrvChangeState_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Lifecycle_msgsSrvChangeState_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Lifecycle_msgsSrvChangeState_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Lifecycle_msgsSrvChangeState_Response value = ReadRos2Lifecycle_msgsSrvChangeState_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Lifecycle_msgsSrvChangeState_Response(_Codecs.Writer writer, _Ros2Lifecycle_msgsSrvChangeState_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros2Lifecycle_msgsSrvChangeState_Response ReadRos2Lifecycle_msgsSrvChangeState_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Lifecycle_msgsSrvChangeState_Response();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Lifecycle_msgsSrvGetState_Request
    {
        public _Ros2Lifecycle_msgsSrvGetState_Request()
        {
        }
    }

    public sealed class Ros2Lifecycle_msgsSrvGetState_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Lifecycle_msgsSrvGetState_Request>
    {
        public static readonly Ros2Lifecycle_msgsSrvGetState_RequestCodec Instance = new Ros2Lifecycle_msgsSrvGetState_RequestCodec();

        private Ros2Lifecycle_msgsSrvGetState_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "lifecycle_msgs/srv/GetState_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_86a3d813de32971a271e062acfaf201eb718aff8d68a4e343d6fceaae2b5098d";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public byte[] Encode(_Ros2Lifecycle_msgsSrvGetState_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Lifecycle_msgsSrvGetState_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Lifecycle_msgsSrvGetState_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Lifecycle_msgsSrvGetState_Request value = ReadRos2Lifecycle_msgsSrvGetState_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Lifecycle_msgsSrvGetState_Request(_Codecs.Writer writer, _Ros2Lifecycle_msgsSrvGetState_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    private static _Ros2Lifecycle_msgsSrvGetState_Request ReadRos2Lifecycle_msgsSrvGetState_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Lifecycle_msgsSrvGetState_Request();
        return value;
    }

    public sealed class _Ros2Lifecycle_msgsSrvGetState_Response
    {
        public _Ros2Lifecycle_msgsMsgState @current_state = new _Ros2Lifecycle_msgsMsgState();

        public _Ros2Lifecycle_msgsSrvGetState_Response()
        {
        }
    }

    public sealed class Ros2Lifecycle_msgsSrvGetState_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Lifecycle_msgsSrvGetState_Response>
    {
        public static readonly Ros2Lifecycle_msgsSrvGetState_ResponseCodec Instance = new Ros2Lifecycle_msgsSrvGetState_ResponseCodec();

        private Ros2Lifecycle_msgsSrvGetState_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "lifecycle_msgs/srv/GetState_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_697418ec4095e98c855b1f9d238a3bd74a59ccbbc3eb31981c4df3c3b829ea39";
        public const int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 517;

        public byte[] Encode(_Ros2Lifecycle_msgsSrvGetState_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Lifecycle_msgsSrvGetState_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Lifecycle_msgsSrvGetState_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Lifecycle_msgsSrvGetState_Response value = ReadRos2Lifecycle_msgsSrvGetState_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Lifecycle_msgsSrvGetState_Response(_Codecs.Writer writer, _Ros2Lifecycle_msgsSrvGetState_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Lifecycle_msgsMsgState part0 = value.@current_state;
        WriteRos2Lifecycle_msgsMsgState(writer, part0);
    }

    private static _Ros2Lifecycle_msgsSrvGetState_Response ReadRos2Lifecycle_msgsSrvGetState_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Lifecycle_msgsSrvGetState_Response();
        value.@current_state = ReadRos2Lifecycle_msgsMsgState(reader);
        return value;
    }

    public sealed class _Ros2Sensor_msgsMsgJointState
    {
        public _Ros2Std_msgsMsgHeader @header = new _Ros2Std_msgsMsgHeader();
        public string[] @name = new string[0];
        public double[] @position = new double[0];
        public double[] @velocity = new double[0];
        public double[] @effort = new double[0];

        public _Ros2Sensor_msgsMsgJointState()
        {
        }
    }

    public sealed class Ros2Sensor_msgsMsgJointStateCodec : global::Uwvm.RosWasm.ICodec<_Ros2Sensor_msgsMsgJointState>
    {
        public static readonly Ros2Sensor_msgsMsgJointStateCodec Instance = new Ros2Sensor_msgsMsgJointStateCodec();

        private Ros2Sensor_msgsMsgJointStateCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "sensor_msgs/msg/JointState";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_88d44f7bdb40f8c45539a041a25903609561fa74db90b9972e1369ebbff6c884";
        public const int MIN_WIRE_BYTES = 28, MAX_WIRE_BYTES = 1196;

        public byte[] Encode(_Ros2Sensor_msgsMsgJointState value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Sensor_msgsMsgJointState(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Sensor_msgsMsgJointState Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Sensor_msgsMsgJointState value = ReadRos2Sensor_msgsMsgJointState(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Sensor_msgsMsgJointState(_Codecs.Writer writer, _Ros2Sensor_msgsMsgJointState value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Std_msgsMsgHeader part0 = value.@header;
        WriteRos2Std_msgsMsgHeader(writer, part0);
        string[] part1 = value.@name;
        if(part1 == null || part1.Length > 12)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part1.Length, 4);
        for(int index = 0; index < part1.Length; ++index)
        {
            string element = part1[index];
            WriteText(writer, element, 64);
        }
        double[] part2 = value.@position;
        if(part2 == null || part2.Length > 12)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part2.Length, 4);
        for(int index = 0; index < part2.Length; ++index)
        {
            double element = part2[index];
            writer.Float64(element);
        }
        double[] part3 = value.@velocity;
        if(part3 == null || part3.Length > 12)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part3.Length, 4);
        for(int index = 0; index < part3.Length; ++index)
        {
            double element = part3[index];
            writer.Float64(element);
        }
        double[] part4 = value.@effort;
        if(part4 == null || part4.Length > 12)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part4.Length, 4);
        for(int index = 0; index < part4.Length; ++index)
        {
            double element = part4[index];
            writer.Float64(element);
        }
        if((part1.Length != 0 && part2.Length != 0 && part1.Length != part2.Length) ||
           (part1.Length != 0 && part3.Length != 0 && part1.Length != part3.Length) ||
           (part1.Length != 0 && part4.Length != 0 && part1.Length != part4.Length) ||
           (part2.Length != 0 && part3.Length != 0 && part2.Length != part3.Length) ||
           (part2.Length != 0 && part4.Length != 0 && part2.Length != part4.Length) || (part3.Length != 0 && part4.Length != 0 && part3.Length != part4.Length))
            throw new ArgumentException("nonempty JointState arrays must have equal length");
    }

    private static _Ros2Sensor_msgsMsgJointState ReadRos2Sensor_msgsMsgJointState(_Codecs.Reader reader)
    {
        var value = new _Ros2Sensor_msgsMsgJointState();
        value.@header = ReadRos2Std_msgsMsgHeader(reader);
        value.@name = new string[ReadCount(reader, 12, 4)];
        for(int index = 0; index < value.@name.Length; ++index)
            value.@name[index] = ReadText(reader, 64);
        value.@position = new double[ReadCount(reader, 12, 8)];
        for(int index = 0; index < value.@position.Length; ++index)
            value.@position[index] = reader.Float64();
        value.@velocity = new double[ReadCount(reader, 12, 8)];
        for(int index = 0; index < value.@velocity.Length; ++index)
            value.@velocity[index] = reader.Float64();
        value.@effort = new double[ReadCount(reader, 12, 8)];
        for(int index = 0; index < value.@effort.Length; ++index)
            value.@effort[index] = reader.Float64();
        if((value.@name.Length != 0 && value.@position.Length != 0 && value.@name.Length != value.@position.Length) ||
           (value.@name.Length != 0 && value.@velocity.Length != 0 && value.@name.Length != value.@velocity.Length) ||
           (value.@name.Length != 0 && value.@effort.Length != 0 && value.@name.Length != value.@effort.Length) ||
           (value.@position.Length != 0 && value.@velocity.Length != 0 && value.@position.Length != value.@velocity.Length) ||
           (value.@position.Length != 0 && value.@effort.Length != 0 && value.@position.Length != value.@effort.Length) ||
           (value.@velocity.Length != 0 && value.@effort.Length != 0 && value.@velocity.Length != value.@effort.Length))
            throw new ArgumentException("nonempty JointState arrays must have equal length");
        return value;
    }

    public sealed class _Ros2Std_srvsSrvTrigger_Request
    {
        public _Ros2Std_srvsSrvTrigger_Request()
        {
        }
    }

    public sealed class Ros2Std_srvsSrvTrigger_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Std_srvsSrvTrigger_Request>
    {
        public static readonly Ros2Std_srvsSrvTrigger_RequestCodec Instance = new Ros2Std_srvsSrvTrigger_RequestCodec();

        private Ros2Std_srvsSrvTrigger_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "std_srvs/srv/Trigger_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_f1d8ad4ab7cf476cada6301f71ae24e046c244ba62bb6735183efe8e8c530a77";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public byte[] Encode(_Ros2Std_srvsSrvTrigger_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Std_srvsSrvTrigger_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Std_srvsSrvTrigger_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Std_srvsSrvTrigger_Request value = ReadRos2Std_srvsSrvTrigger_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Std_srvsSrvTrigger_Request(_Codecs.Writer writer, _Ros2Std_srvsSrvTrigger_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    private static _Ros2Std_srvsSrvTrigger_Request ReadRos2Std_srvsSrvTrigger_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Std_srvsSrvTrigger_Request();
        return value;
    }

    public sealed class _Ros2Std_srvsSrvTrigger_Response
    {
        public bool @success = false;
        public string @message = "";

        public _Ros2Std_srvsSrvTrigger_Response()
        {
        }
    }

    public sealed class Ros2Std_srvsSrvTrigger_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Std_srvsSrvTrigger_Response>
    {
        public static readonly Ros2Std_srvsSrvTrigger_ResponseCodec Instance = new Ros2Std_srvsSrvTrigger_ResponseCodec();

        private Ros2Std_srvsSrvTrigger_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "std_srvs/srv/Trigger_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_95fe65bd59112bb00093f66c6853844b01ccea8e6ded47e73038718aa886f39d";
        public const int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 517;

        public byte[] Encode(_Ros2Std_srvsSrvTrigger_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Std_srvsSrvTrigger_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Std_srvsSrvTrigger_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Std_srvsSrvTrigger_Response value = ReadRos2Std_srvsSrvTrigger_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Std_srvsSrvTrigger_Response(_Codecs.Writer writer, _Ros2Std_srvsSrvTrigger_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
        string part1 = value.@message;
        WriteText(writer, part1, 512);
    }

    private static _Ros2Std_srvsSrvTrigger_Response ReadRos2Std_srvsSrvTrigger_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Std_srvsSrvTrigger_Response();
        value.@success = ReadBool(reader);
        value.@message = ReadText(reader, 512);
        return value;
    }
}
