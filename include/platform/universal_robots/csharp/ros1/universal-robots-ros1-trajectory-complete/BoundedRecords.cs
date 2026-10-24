/**
 * @file BoundedRecords.cs
 * @brief Complete universal_robots values and adapters for the selected original interface catalog.
 * @details Retain original field order, scalar widths, array capacities, string bounds, constants and declared
 * defaults. Pure value access and canonical codecs create no native ROS allocation or resource grant. Transport
 * roles require the separately admitted SDK owner.
 * @see share/platform/universal_robots/domains/universal-robots-ros1-trajectory-complete.ir.json
 * @see document/platform/universal_robots/en_US/README.md
 */

// Generated complete canonical records; no native ABI, CDR or ROS grant.
#nullable enable
using System;
using _Codecs = global::Uwvm.RosWasm.Codecs;
namespace Uwvm.UniversalRobotsUniversalRobotsRos1TrajectoryComplete.Models;

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

    public sealed class _Ros1Time
    {
        public uint @sec = 0;
        public uint @nsec = 0;

        public _Ros1Time()
        {
        }
    }

    public sealed class Ros1TimeCodec : global::Uwvm.RosWasm.ICodec<_Ros1Time>
    {
        public static readonly Ros1TimeCodec Instance = new Ros1TimeCodec();

        private Ros1TimeCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "time";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_90b75571d2bcc21b824eb993b485a001bf97e281adda7907e1b2e3357e4804b0";
        public const int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 8;

        public byte[] Encode(_Ros1Time value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Time(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Time Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Time value = ReadRos1Time(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Time(_Codecs.Writer writer, _Ros1Time value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        uint part0 = value.@sec;
        writer.Unsigned(part0, 4);
        uint part1 = value.@nsec;
        writer.Unsigned(part1, 4);
        if((long)part1 < 0 || (long)part1 >= 1000000000L)
            throw new ArgumentException("normalized subsecond field required");
    }

    private static _Ros1Time ReadRos1Time(_Codecs.Reader reader)
    {
        var value = new _Ros1Time();
        value.@sec = unchecked((uint)reader.Unsigned(4));
        value.@nsec = unchecked((uint)reader.Unsigned(4));
        if((long)value.@nsec < 0 || (long)value.@nsec >= 1000000000L)
            throw new ArgumentException("normalized subsecond field required");
        return value;
    }

    public sealed class _Ros1Std_msgsHeader
    {
        public uint @seq = 0;
        public _Ros1Time @stamp = new _Ros1Time();
        public string @frame_id = "";

        public _Ros1Std_msgsHeader()
        {
        }
    }

    public sealed class Ros1Std_msgsHeaderCodec : global::Uwvm.RosWasm.ICodec<_Ros1Std_msgsHeader>
    {
        public static readonly Ros1Std_msgsHeaderCodec Instance = new Ros1Std_msgsHeaderCodec();

        private Ros1Std_msgsHeaderCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "std_msgs/Header";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_ee2b4e736d36ebcdb562d3ef7832777233d39d366837e9148a76aa2c36756435";
        public const int MIN_WIRE_BYTES = 16, MAX_WIRE_BYTES = 144;

        public byte[] Encode(_Ros1Std_msgsHeader value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Std_msgsHeader(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Std_msgsHeader Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Std_msgsHeader value = ReadRos1Std_msgsHeader(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Std_msgsHeader(_Codecs.Writer writer, _Ros1Std_msgsHeader value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        uint part0 = value.@seq;
        writer.Unsigned(part0, 4);
        _Ros1Time part1 = value.@stamp;
        WriteRos1Time(writer, part1);
        string part2 = value.@frame_id;
        WriteText(writer, part2, 128);
    }

    private static _Ros1Std_msgsHeader ReadRos1Std_msgsHeader(_Codecs.Reader reader)
    {
        var value = new _Ros1Std_msgsHeader();
        value.@seq = unchecked((uint)reader.Unsigned(4));
        value.@stamp = ReadRos1Time(reader);
        value.@frame_id = ReadText(reader, 128);
        return value;
    }

    public sealed class _Ros1Duration
    {
        public int @sec = 0;
        public int @nsec = 0;

        public _Ros1Duration()
        {
        }
    }

    public sealed class Ros1DurationCodec : global::Uwvm.RosWasm.ICodec<_Ros1Duration>
    {
        public static readonly Ros1DurationCodec Instance = new Ros1DurationCodec();

        private Ros1DurationCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "duration";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_8dbec6cdfef79495208abb358c5e8283ec8d9d471f984424afcda997d142cca8";
        public const int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 8;

        public byte[] Encode(_Ros1Duration value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Duration(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Duration Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Duration value = ReadRos1Duration(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Duration(_Codecs.Writer writer, _Ros1Duration value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        int part0 = value.@sec;
        writer.Unsigned(unchecked((uint)part0), 4);
        int part1 = value.@nsec;
        writer.Unsigned(unchecked((uint)part1), 4);
        if((long)part1 < 0 || (long)part1 >= 1000000000L)
            throw new ArgumentException("normalized subsecond field required");
    }

    private static _Ros1Duration ReadRos1Duration(_Codecs.Reader reader)
    {
        var value = new _Ros1Duration();
        value.@sec = unchecked((int)reader.Unsigned(4));
        value.@nsec = unchecked((int)reader.Unsigned(4));
        if((long)value.@nsec < 0 || (long)value.@nsec >= 1000000000L)
            throw new ArgumentException("normalized subsecond field required");
        return value;
    }

    public sealed class _Ros1Trajectory_msgsJointTrajectoryPoint
    {
        public double[] @positions = new double[0];
        public double[] @velocities = new double[0];
        public double[] @accelerations = new double[0];
        public double[] @effort = new double[0];
        public _Ros1Duration @time_from_start = new _Ros1Duration();

        public _Ros1Trajectory_msgsJointTrajectoryPoint()
        {
        }
    }

    public sealed class Ros1Trajectory_msgsJointTrajectoryPointCodec : global::Uwvm.RosWasm.ICodec<_Ros1Trajectory_msgsJointTrajectoryPoint>
    {
        public static readonly Ros1Trajectory_msgsJointTrajectoryPointCodec Instance = new Ros1Trajectory_msgsJointTrajectoryPointCodec();

        private Ros1Trajectory_msgsJointTrajectoryPointCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "trajectory_msgs/JointTrajectoryPoint";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_5fbdf1845c522d88461d06d5dfae1f35cef5d7f00a87e405c0d458c8e1a9e64d";
        public const int MIN_WIRE_BYTES = 24, MAX_WIRE_BYTES = 216;

        public byte[] Encode(_Ros1Trajectory_msgsJointTrajectoryPoint value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Trajectory_msgsJointTrajectoryPoint(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Trajectory_msgsJointTrajectoryPoint Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Trajectory_msgsJointTrajectoryPoint value = ReadRos1Trajectory_msgsJointTrajectoryPoint(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Trajectory_msgsJointTrajectoryPoint(_Codecs.Writer writer, _Ros1Trajectory_msgsJointTrajectoryPoint value)
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
        _Ros1Duration part4 = value.@time_from_start;
        WriteRos1Duration(writer, part4);
    }

    private static _Ros1Trajectory_msgsJointTrajectoryPoint ReadRos1Trajectory_msgsJointTrajectoryPoint(_Codecs.Reader reader)
    {
        var value = new _Ros1Trajectory_msgsJointTrajectoryPoint();
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
        value.@time_from_start = ReadRos1Duration(reader);
        return value;
    }

    public sealed class _Ros1Trajectory_msgsJointTrajectory
    {
        public _Ros1Std_msgsHeader @header = new _Ros1Std_msgsHeader();
        public string[] @joint_names = new string[0];
        public _Ros1Trajectory_msgsJointTrajectoryPoint[] @points = new _Ros1Trajectory_msgsJointTrajectoryPoint[0];

        public _Ros1Trajectory_msgsJointTrajectory()
        {
        }
    }

    public sealed class Ros1Trajectory_msgsJointTrajectoryCodec : global::Uwvm.RosWasm.ICodec<_Ros1Trajectory_msgsJointTrajectory>
    {
        public static readonly Ros1Trajectory_msgsJointTrajectoryCodec Instance = new Ros1Trajectory_msgsJointTrajectoryCodec();

        private Ros1Trajectory_msgsJointTrajectoryCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "trajectory_msgs/JointTrajectory";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_522dc1a8799adc4be16ce5a35a19a217de1095f018af0a7eb57eb6114c69adda";
        public const int MIN_WIRE_BYTES = 24, MAX_WIRE_BYTES = 5168;

        public byte[] Encode(_Ros1Trajectory_msgsJointTrajectory value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Trajectory_msgsJointTrajectory(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Trajectory_msgsJointTrajectory Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Trajectory_msgsJointTrajectory value = ReadRos1Trajectory_msgsJointTrajectory(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Trajectory_msgsJointTrajectory(_Codecs.Writer writer, _Ros1Trajectory_msgsJointTrajectory value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros1Std_msgsHeader part0 = value.@header;
        WriteRos1Std_msgsHeader(writer, part0);
        string[] part1 = value.@joint_names;
        if(part1 == null || part1.Length > 6)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part1.Length, 4);
        for(int index = 0; index < part1.Length; ++index)
        {
            string element = part1[index];
            WriteText(writer, element, 256);
        }
        _Ros1Trajectory_msgsJointTrajectoryPoint[] part2 = value.@points;
        if(part2 == null || part2.Length > 16)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part2.Length, 4);
        for(int index = 0; index < part2.Length; ++index)
        {
            _Ros1Trajectory_msgsJointTrajectoryPoint element = part2[index];
            WriteRos1Trajectory_msgsJointTrajectoryPoint(writer, element);
        }
    }

    private static _Ros1Trajectory_msgsJointTrajectory ReadRos1Trajectory_msgsJointTrajectory(_Codecs.Reader reader)
    {
        var value = new _Ros1Trajectory_msgsJointTrajectory();
        value.@header = ReadRos1Std_msgsHeader(reader);
        value.@joint_names = new string[ReadCount(reader, 6, 4)];
        for(int index = 0; index < value.@joint_names.Length; ++index)
            value.@joint_names[index] = ReadText(reader, 256);
        value.@points = new _Ros1Trajectory_msgsJointTrajectoryPoint[ReadCount(reader, 16, 24)];
        for(int index = 0; index < value.@points.Length; ++index)
            value.@points[index] = ReadRos1Trajectory_msgsJointTrajectoryPoint(reader);
        return value;
    }

    public sealed class _Ros1Control_msgsJointTolerance
    {
        public string @name = "";
        public double @position = 0;
        public double @velocity = 0;
        public double @acceleration = 0;

        public _Ros1Control_msgsJointTolerance()
        {
        }
    }

    public sealed class Ros1Control_msgsJointToleranceCodec : global::Uwvm.RosWasm.ICodec<_Ros1Control_msgsJointTolerance>
    {
        public static readonly Ros1Control_msgsJointToleranceCodec Instance = new Ros1Control_msgsJointToleranceCodec();

        private Ros1Control_msgsJointToleranceCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "control_msgs/JointTolerance";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_dfb80a25d10bc883359720da419af0baa78217e72619922a762a5a96a06d0738";
        public const int MIN_WIRE_BYTES = 28, MAX_WIRE_BYTES = 156;

        public byte[] Encode(_Ros1Control_msgsJointTolerance value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Control_msgsJointTolerance(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Control_msgsJointTolerance Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Control_msgsJointTolerance value = ReadRos1Control_msgsJointTolerance(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Control_msgsJointTolerance(_Codecs.Writer writer, _Ros1Control_msgsJointTolerance value)
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

    private static _Ros1Control_msgsJointTolerance ReadRos1Control_msgsJointTolerance(_Codecs.Reader reader)
    {
        var value = new _Ros1Control_msgsJointTolerance();
        value.@name = ReadText(reader, 128);
        value.@position = reader.Float64();
        value.@velocity = reader.Float64();
        value.@acceleration = reader.Float64();
        return value;
    }

    public sealed class _Ros1Control_msgsFollowJointTrajectoryGoal
    {
        public _Ros1Trajectory_msgsJointTrajectory @trajectory = new _Ros1Trajectory_msgsJointTrajectory();
        public _Ros1Control_msgsJointTolerance[] @path_tolerance = new _Ros1Control_msgsJointTolerance[0];
        public _Ros1Control_msgsJointTolerance[] @goal_tolerance = new _Ros1Control_msgsJointTolerance[0];
        public _Ros1Duration @goal_time_tolerance = new _Ros1Duration();

        public _Ros1Control_msgsFollowJointTrajectoryGoal()
        {
        }
    }

    public sealed class Ros1Control_msgsFollowJointTrajectoryGoalCodec : global::Uwvm.RosWasm.ICodec<_Ros1Control_msgsFollowJointTrajectoryGoal>
    {
        public static readonly Ros1Control_msgsFollowJointTrajectoryGoalCodec Instance = new Ros1Control_msgsFollowJointTrajectoryGoalCodec();

        private Ros1Control_msgsFollowJointTrajectoryGoalCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "control_msgs/FollowJointTrajectoryGoal";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_bcbae7a4976e04bd115e5916808d63bd18da9eade34d35aab26439c1971b6c78";
        public const int MIN_WIRE_BYTES = 40, MAX_WIRE_BYTES = 7056;

        public byte[] Encode(_Ros1Control_msgsFollowJointTrajectoryGoal value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Control_msgsFollowJointTrajectoryGoal(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Control_msgsFollowJointTrajectoryGoal Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Control_msgsFollowJointTrajectoryGoal value = ReadRos1Control_msgsFollowJointTrajectoryGoal(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Control_msgsFollowJointTrajectoryGoal(_Codecs.Writer writer, _Ros1Control_msgsFollowJointTrajectoryGoal value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros1Trajectory_msgsJointTrajectory part0 = value.@trajectory;
        WriteRos1Trajectory_msgsJointTrajectory(writer, part0);
        _Ros1Control_msgsJointTolerance[] part1 = value.@path_tolerance;
        if(part1 == null || part1.Length > 6)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part1.Length, 4);
        for(int index = 0; index < part1.Length; ++index)
        {
            _Ros1Control_msgsJointTolerance element = part1[index];
            WriteRos1Control_msgsJointTolerance(writer, element);
        }
        _Ros1Control_msgsJointTolerance[] part2 = value.@goal_tolerance;
        if(part2 == null || part2.Length > 6)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part2.Length, 4);
        for(int index = 0; index < part2.Length; ++index)
        {
            _Ros1Control_msgsJointTolerance element = part2[index];
            WriteRos1Control_msgsJointTolerance(writer, element);
        }
        _Ros1Duration part3 = value.@goal_time_tolerance;
        WriteRos1Duration(writer, part3);
    }

    private static _Ros1Control_msgsFollowJointTrajectoryGoal ReadRos1Control_msgsFollowJointTrajectoryGoal(_Codecs.Reader reader)
    {
        var value = new _Ros1Control_msgsFollowJointTrajectoryGoal();
        value.@trajectory = ReadRos1Trajectory_msgsJointTrajectory(reader);
        value.@path_tolerance = new _Ros1Control_msgsJointTolerance[ReadCount(reader, 6, 28)];
        for(int index = 0; index < value.@path_tolerance.Length; ++index)
            value.@path_tolerance[index] = ReadRos1Control_msgsJointTolerance(reader);
        value.@goal_tolerance = new _Ros1Control_msgsJointTolerance[ReadCount(reader, 6, 28)];
        for(int index = 0; index < value.@goal_tolerance.Length; ++index)
            value.@goal_tolerance[index] = ReadRos1Control_msgsJointTolerance(reader);
        value.@goal_time_tolerance = ReadRos1Duration(reader);
        return value;
    }

    public sealed class _Ros1Control_msgsFollowJointTrajectoryResult
    {
        public int @error_code = 0;
        public string @error_string = "";

        public _Ros1Control_msgsFollowJointTrajectoryResult()
        {
        }
    }

    public sealed class Ros1Control_msgsFollowJointTrajectoryResultCodec : global::Uwvm.RosWasm.ICodec<_Ros1Control_msgsFollowJointTrajectoryResult>
    {
        public static readonly Ros1Control_msgsFollowJointTrajectoryResultCodec Instance = new Ros1Control_msgsFollowJointTrajectoryResultCodec();

        private Ros1Control_msgsFollowJointTrajectoryResultCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "control_msgs/FollowJointTrajectoryResult";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_71da832be83c08804668aa63576768bbe831f21f5f270cdc8d851b30d2fc4281";
        public const int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 4104;

        public byte[] Encode(_Ros1Control_msgsFollowJointTrajectoryResult value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Control_msgsFollowJointTrajectoryResult(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Control_msgsFollowJointTrajectoryResult Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Control_msgsFollowJointTrajectoryResult value = ReadRos1Control_msgsFollowJointTrajectoryResult(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Control_msgsFollowJointTrajectoryResult(_Codecs.Writer writer, _Ros1Control_msgsFollowJointTrajectoryResult value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        int part0 = value.@error_code;
        writer.Unsigned(unchecked((uint)part0), 4);
        string part1 = value.@error_string;
        WriteText(writer, part1, 4096);
    }

    private static _Ros1Control_msgsFollowJointTrajectoryResult ReadRos1Control_msgsFollowJointTrajectoryResult(_Codecs.Reader reader)
    {
        var value = new _Ros1Control_msgsFollowJointTrajectoryResult();
        value.@error_code = unchecked((int)reader.Unsigned(4));
        value.@error_string = ReadText(reader, 4096);
        return value;
    }

    public sealed class _Ros1Control_msgsFollowJointTrajectoryFeedback
    {
        public _Ros1Std_msgsHeader @header = new _Ros1Std_msgsHeader();
        public string[] @joint_names = new string[0];
        public _Ros1Trajectory_msgsJointTrajectoryPoint @desired = new _Ros1Trajectory_msgsJointTrajectoryPoint();
        public _Ros1Trajectory_msgsJointTrajectoryPoint @actual = new _Ros1Trajectory_msgsJointTrajectoryPoint();
        public _Ros1Trajectory_msgsJointTrajectoryPoint @error = new _Ros1Trajectory_msgsJointTrajectoryPoint();

        public _Ros1Control_msgsFollowJointTrajectoryFeedback()
        {
        }
    }

    public sealed class Ros1Control_msgsFollowJointTrajectoryFeedbackCodec : global::Uwvm.RosWasm.ICodec<_Ros1Control_msgsFollowJointTrajectoryFeedback>
    {
        public static readonly Ros1Control_msgsFollowJointTrajectoryFeedbackCodec Instance = new Ros1Control_msgsFollowJointTrajectoryFeedbackCodec();

        private Ros1Control_msgsFollowJointTrajectoryFeedbackCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "control_msgs/FollowJointTrajectoryFeedback";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_fbb2813fa8fe3e2b4a0c7e968fb5ef037df0af707b9439e8615bc3d447db6913";
        public const int MIN_WIRE_BYTES = 92, MAX_WIRE_BYTES = 2356;

        public byte[] Encode(_Ros1Control_msgsFollowJointTrajectoryFeedback value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Control_msgsFollowJointTrajectoryFeedback(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Control_msgsFollowJointTrajectoryFeedback Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Control_msgsFollowJointTrajectoryFeedback value = ReadRos1Control_msgsFollowJointTrajectoryFeedback(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Control_msgsFollowJointTrajectoryFeedback(_Codecs.Writer writer, _Ros1Control_msgsFollowJointTrajectoryFeedback value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros1Std_msgsHeader part0 = value.@header;
        WriteRos1Std_msgsHeader(writer, part0);
        string[] part1 = value.@joint_names;
        if(part1 == null || part1.Length > 6)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part1.Length, 4);
        for(int index = 0; index < part1.Length; ++index)
        {
            string element = part1[index];
            WriteText(writer, element, 256);
        }
        _Ros1Trajectory_msgsJointTrajectoryPoint part2 = value.@desired;
        WriteRos1Trajectory_msgsJointTrajectoryPoint(writer, part2);
        _Ros1Trajectory_msgsJointTrajectoryPoint part3 = value.@actual;
        WriteRos1Trajectory_msgsJointTrajectoryPoint(writer, part3);
        _Ros1Trajectory_msgsJointTrajectoryPoint part4 = value.@error;
        WriteRos1Trajectory_msgsJointTrajectoryPoint(writer, part4);
    }

    private static _Ros1Control_msgsFollowJointTrajectoryFeedback ReadRos1Control_msgsFollowJointTrajectoryFeedback(_Codecs.Reader reader)
    {
        var value = new _Ros1Control_msgsFollowJointTrajectoryFeedback();
        value.@header = ReadRos1Std_msgsHeader(reader);
        value.@joint_names = new string[ReadCount(reader, 6, 4)];
        for(int index = 0; index < value.@joint_names.Length; ++index)
            value.@joint_names[index] = ReadText(reader, 256);
        value.@desired = ReadRos1Trajectory_msgsJointTrajectoryPoint(reader);
        value.@actual = ReadRos1Trajectory_msgsJointTrajectoryPoint(reader);
        value.@error = ReadRos1Trajectory_msgsJointTrajectoryPoint(reader);
        return value;
    }

    public sealed class _Ros1Geometry_msgsPoint
    {
        public double @x = 0;
        public double @y = 0;
        public double @z = 0;

        public _Ros1Geometry_msgsPoint()
        {
        }
    }

    public sealed class Ros1Geometry_msgsPointCodec : global::Uwvm.RosWasm.ICodec<_Ros1Geometry_msgsPoint>
    {
        public static readonly Ros1Geometry_msgsPointCodec Instance = new Ros1Geometry_msgsPointCodec();

        private Ros1Geometry_msgsPointCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "geometry_msgs/Point";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_b55e2bde60f6cedb426cada54bc7baefc536c7bc731bd49fb152d89a892de62b";
        public const int MIN_WIRE_BYTES = 24, MAX_WIRE_BYTES = 24;

        public byte[] Encode(_Ros1Geometry_msgsPoint value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Geometry_msgsPoint(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Geometry_msgsPoint Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Geometry_msgsPoint value = ReadRos1Geometry_msgsPoint(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Geometry_msgsPoint(_Codecs.Writer writer, _Ros1Geometry_msgsPoint value)
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

    private static _Ros1Geometry_msgsPoint ReadRos1Geometry_msgsPoint(_Codecs.Reader reader)
    {
        var value = new _Ros1Geometry_msgsPoint();
        value.@x = reader.Float64();
        value.@y = reader.Float64();
        value.@z = reader.Float64();
        return value;
    }

    public sealed class _Ros1Geometry_msgsQuaternion
    {
        public double @x = 0;
        public double @y = 0;
        public double @z = 0;
        public double @w = 0;

        public _Ros1Geometry_msgsQuaternion()
        {
        }
    }

    public sealed class Ros1Geometry_msgsQuaternionCodec : global::Uwvm.RosWasm.ICodec<_Ros1Geometry_msgsQuaternion>
    {
        public static readonly Ros1Geometry_msgsQuaternionCodec Instance = new Ros1Geometry_msgsQuaternionCodec();

        private Ros1Geometry_msgsQuaternionCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "geometry_msgs/Quaternion";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_48fe20d5d29a8ca1a630605a58f80baacc52d9a65b1ca87efd50ffdd52882934";
        public const int MIN_WIRE_BYTES = 32, MAX_WIRE_BYTES = 32;

        public byte[] Encode(_Ros1Geometry_msgsQuaternion value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Geometry_msgsQuaternion(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Geometry_msgsQuaternion Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Geometry_msgsQuaternion value = ReadRos1Geometry_msgsQuaternion(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Geometry_msgsQuaternion(_Codecs.Writer writer, _Ros1Geometry_msgsQuaternion value)
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

    private static _Ros1Geometry_msgsQuaternion ReadRos1Geometry_msgsQuaternion(_Codecs.Reader reader)
    {
        var value = new _Ros1Geometry_msgsQuaternion();
        value.@x = reader.Float64();
        value.@y = reader.Float64();
        value.@z = reader.Float64();
        value.@w = reader.Float64();
        return value;
    }

    public sealed class _Ros1Geometry_msgsPose
    {
        public _Ros1Geometry_msgsPoint @position = new _Ros1Geometry_msgsPoint();
        public _Ros1Geometry_msgsQuaternion @orientation = new _Ros1Geometry_msgsQuaternion();

        public _Ros1Geometry_msgsPose()
        {
        }
    }

    public sealed class Ros1Geometry_msgsPoseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Geometry_msgsPose>
    {
        public static readonly Ros1Geometry_msgsPoseCodec Instance = new Ros1Geometry_msgsPoseCodec();

        private Ros1Geometry_msgsPoseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "geometry_msgs/Pose";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_e49ed287cd0de31a16c8cd49ad8f41f81d44e23306b8dcb61da6e0e789595471";
        public const int MIN_WIRE_BYTES = 56, MAX_WIRE_BYTES = 56;

        public byte[] Encode(_Ros1Geometry_msgsPose value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Geometry_msgsPose(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Geometry_msgsPose Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Geometry_msgsPose value = ReadRos1Geometry_msgsPose(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Geometry_msgsPose(_Codecs.Writer writer, _Ros1Geometry_msgsPose value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros1Geometry_msgsPoint part0 = value.@position;
        WriteRos1Geometry_msgsPoint(writer, part0);
        _Ros1Geometry_msgsQuaternion part1 = value.@orientation;
        WriteRos1Geometry_msgsQuaternion(writer, part1);
    }

    private static _Ros1Geometry_msgsPose ReadRos1Geometry_msgsPose(_Codecs.Reader reader)
    {
        var value = new _Ros1Geometry_msgsPose();
        value.@position = ReadRos1Geometry_msgsPoint(reader);
        value.@orientation = ReadRos1Geometry_msgsQuaternion(reader);
        return value;
    }

    public sealed class _Ros1Geometry_msgsPoseStamped
    {
        public _Ros1Std_msgsHeader @header = new _Ros1Std_msgsHeader();
        public _Ros1Geometry_msgsPose @pose = new _Ros1Geometry_msgsPose();

        public _Ros1Geometry_msgsPoseStamped()
        {
        }
    }

    public sealed class Ros1Geometry_msgsPoseStampedCodec : global::Uwvm.RosWasm.ICodec<_Ros1Geometry_msgsPoseStamped>
    {
        public static readonly Ros1Geometry_msgsPoseStampedCodec Instance = new Ros1Geometry_msgsPoseStampedCodec();

        private Ros1Geometry_msgsPoseStampedCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "geometry_msgs/PoseStamped";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_bb59c4e82f561266c0f10500bfbbd1a809e9c1122ecbf559a812326af3eb2e95";
        public const int MIN_WIRE_BYTES = 72, MAX_WIRE_BYTES = 200;

        public byte[] Encode(_Ros1Geometry_msgsPoseStamped value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Geometry_msgsPoseStamped(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Geometry_msgsPoseStamped Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Geometry_msgsPoseStamped value = ReadRos1Geometry_msgsPoseStamped(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Geometry_msgsPoseStamped(_Codecs.Writer writer, _Ros1Geometry_msgsPoseStamped value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros1Std_msgsHeader part0 = value.@header;
        WriteRos1Std_msgsHeader(writer, part0);
        _Ros1Geometry_msgsPose part1 = value.@pose;
        WriteRos1Geometry_msgsPose(writer, part1);
    }

    private static _Ros1Geometry_msgsPoseStamped ReadRos1Geometry_msgsPoseStamped(_Codecs.Reader reader)
    {
        var value = new _Ros1Geometry_msgsPoseStamped();
        value.@header = ReadRos1Std_msgsHeader(reader);
        value.@pose = ReadRos1Geometry_msgsPose(reader);
        return value;
    }

    public sealed class _Ros1Geometry_msgsVector3
    {
        public double @x = 0;
        public double @y = 0;
        public double @z = 0;

        public _Ros1Geometry_msgsVector3()
        {
        }
    }

    public sealed class Ros1Geometry_msgsVector3Codec : global::Uwvm.RosWasm.ICodec<_Ros1Geometry_msgsVector3>
    {
        public static readonly Ros1Geometry_msgsVector3Codec Instance = new Ros1Geometry_msgsVector3Codec();

        private Ros1Geometry_msgsVector3Codec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "geometry_msgs/Vector3";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_e90efcf4803d82763e0b83f8ef5502b5d042158873fcc91be32543d25d7632bc";
        public const int MIN_WIRE_BYTES = 24, MAX_WIRE_BYTES = 24;

        public byte[] Encode(_Ros1Geometry_msgsVector3 value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Geometry_msgsVector3(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Geometry_msgsVector3 Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Geometry_msgsVector3 value = ReadRos1Geometry_msgsVector3(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Geometry_msgsVector3(_Codecs.Writer writer, _Ros1Geometry_msgsVector3 value)
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

    private static _Ros1Geometry_msgsVector3 ReadRos1Geometry_msgsVector3(_Codecs.Reader reader)
    {
        var value = new _Ros1Geometry_msgsVector3();
        value.@x = reader.Float64();
        value.@y = reader.Float64();
        value.@z = reader.Float64();
        return value;
    }

    public sealed class _Ros1Geometry_msgsTwist
    {
        public _Ros1Geometry_msgsVector3 @linear = new _Ros1Geometry_msgsVector3();
        public _Ros1Geometry_msgsVector3 @angular = new _Ros1Geometry_msgsVector3();

        public _Ros1Geometry_msgsTwist()
        {
        }
    }

    public sealed class Ros1Geometry_msgsTwistCodec : global::Uwvm.RosWasm.ICodec<_Ros1Geometry_msgsTwist>
    {
        public static readonly Ros1Geometry_msgsTwistCodec Instance = new Ros1Geometry_msgsTwistCodec();

        private Ros1Geometry_msgsTwistCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "geometry_msgs/Twist";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_d5a69cfff4380fcf3e9c131ddb3dfb6def041cd7308a7ebdbc150b6483dfd921";
        public const int MIN_WIRE_BYTES = 48, MAX_WIRE_BYTES = 48;

        public byte[] Encode(_Ros1Geometry_msgsTwist value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Geometry_msgsTwist(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Geometry_msgsTwist Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Geometry_msgsTwist value = ReadRos1Geometry_msgsTwist(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Geometry_msgsTwist(_Codecs.Writer writer, _Ros1Geometry_msgsTwist value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros1Geometry_msgsVector3 part0 = value.@linear;
        WriteRos1Geometry_msgsVector3(writer, part0);
        _Ros1Geometry_msgsVector3 part1 = value.@angular;
        WriteRos1Geometry_msgsVector3(writer, part1);
    }

    private static _Ros1Geometry_msgsTwist ReadRos1Geometry_msgsTwist(_Codecs.Reader reader)
    {
        var value = new _Ros1Geometry_msgsTwist();
        value.@linear = ReadRos1Geometry_msgsVector3(reader);
        value.@angular = ReadRos1Geometry_msgsVector3(reader);
        return value;
    }

    public sealed class _Ros1Geometry_msgsWrench
    {
        public _Ros1Geometry_msgsVector3 @force = new _Ros1Geometry_msgsVector3();
        public _Ros1Geometry_msgsVector3 @torque = new _Ros1Geometry_msgsVector3();

        public _Ros1Geometry_msgsWrench()
        {
        }
    }

    public sealed class Ros1Geometry_msgsWrenchCodec : global::Uwvm.RosWasm.ICodec<_Ros1Geometry_msgsWrench>
    {
        public static readonly Ros1Geometry_msgsWrenchCodec Instance = new Ros1Geometry_msgsWrenchCodec();

        private Ros1Geometry_msgsWrenchCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "geometry_msgs/Wrench";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_b0938c4e084df68cf7c46445070ac3e9305d06f678275845aec6055db77617c3";
        public const int MIN_WIRE_BYTES = 48, MAX_WIRE_BYTES = 48;

        public byte[] Encode(_Ros1Geometry_msgsWrench value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Geometry_msgsWrench(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Geometry_msgsWrench Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Geometry_msgsWrench value = ReadRos1Geometry_msgsWrench(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Geometry_msgsWrench(_Codecs.Writer writer, _Ros1Geometry_msgsWrench value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros1Geometry_msgsVector3 part0 = value.@force;
        WriteRos1Geometry_msgsVector3(writer, part0);
        _Ros1Geometry_msgsVector3 part1 = value.@torque;
        WriteRos1Geometry_msgsVector3(writer, part1);
    }

    private static _Ros1Geometry_msgsWrench ReadRos1Geometry_msgsWrench(_Codecs.Reader reader)
    {
        var value = new _Ros1Geometry_msgsWrench();
        value.@force = ReadRos1Geometry_msgsVector3(reader);
        value.@torque = ReadRos1Geometry_msgsVector3(reader);
        return value;
    }

    public sealed class _Ros1Sensor_msgsJointState
    {
        public _Ros1Std_msgsHeader @header = new _Ros1Std_msgsHeader();
        public string[] @name = new string[0];
        public double[] @position = new double[0];
        public double[] @velocity = new double[0];
        public double[] @effort = new double[0];

        public _Ros1Sensor_msgsJointState()
        {
        }
    }

    public sealed class Ros1Sensor_msgsJointStateCodec : global::Uwvm.RosWasm.ICodec<_Ros1Sensor_msgsJointState>
    {
        public static readonly Ros1Sensor_msgsJointStateCodec Instance = new Ros1Sensor_msgsJointStateCodec();

        private Ros1Sensor_msgsJointStateCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "sensor_msgs/JointState";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_ee28116009ad317c6a8db950f43d6a712b328b93740460dc70f97a632c3b5e0f";
        public const int MIN_WIRE_BYTES = 32, MAX_WIRE_BYTES = 1864;

        public byte[] Encode(_Ros1Sensor_msgsJointState value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Sensor_msgsJointState(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Sensor_msgsJointState Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Sensor_msgsJointState value = ReadRos1Sensor_msgsJointState(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Sensor_msgsJointState(_Codecs.Writer writer, _Ros1Sensor_msgsJointState value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros1Std_msgsHeader part0 = value.@header;
        WriteRos1Std_msgsHeader(writer, part0);
        string[] part1 = value.@name;
        if(part1 == null || part1.Length > 6)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part1.Length, 4);
        for(int index = 0; index < part1.Length; ++index)
        {
            string element = part1[index];
            WriteText(writer, element, 256);
        }
        double[] part2 = value.@position;
        if(part2 == null || part2.Length > 6)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part2.Length, 4);
        for(int index = 0; index < part2.Length; ++index)
        {
            double element = part2[index];
            writer.Float64(element);
        }
        double[] part3 = value.@velocity;
        if(part3 == null || part3.Length > 6)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part3.Length, 4);
        for(int index = 0; index < part3.Length; ++index)
        {
            double element = part3[index];
            writer.Float64(element);
        }
        double[] part4 = value.@effort;
        if(part4 == null || part4.Length > 6)
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

    private static _Ros1Sensor_msgsJointState ReadRos1Sensor_msgsJointState(_Codecs.Reader reader)
    {
        var value = new _Ros1Sensor_msgsJointState();
        value.@header = ReadRos1Std_msgsHeader(reader);
        value.@name = new string[ReadCount(reader, 6, 4)];
        for(int index = 0; index < value.@name.Length; ++index)
            value.@name[index] = ReadText(reader, 256);
        value.@position = new double[ReadCount(reader, 6, 8)];
        for(int index = 0; index < value.@position.Length; ++index)
            value.@position[index] = reader.Float64();
        value.@velocity = new double[ReadCount(reader, 6, 8)];
        for(int index = 0; index < value.@velocity.Length; ++index)
            value.@velocity[index] = reader.Float64();
        value.@effort = new double[ReadCount(reader, 6, 8)];
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

    public sealed class _Ros1Ur_dashboard_msgsAddToLogRequest
    {
        public string @message = "";

        public _Ros1Ur_dashboard_msgsAddToLogRequest()
        {
        }
    }

    public sealed class Ros1Ur_dashboard_msgsAddToLogRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Ur_dashboard_msgsAddToLogRequest>
    {
        public static readonly Ros1Ur_dashboard_msgsAddToLogRequestCodec Instance = new Ros1Ur_dashboard_msgsAddToLogRequestCodec();

        private Ros1Ur_dashboard_msgsAddToLogRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "ur_dashboard_msgs/AddToLogRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_faf6c1ab9c749a05ae3f4e6196cc1c3574560daae1463ebe8684bf13ea938ac4";
        public const int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 260;

        public byte[] Encode(_Ros1Ur_dashboard_msgsAddToLogRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Ur_dashboard_msgsAddToLogRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Ur_dashboard_msgsAddToLogRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Ur_dashboard_msgsAddToLogRequest value = ReadRos1Ur_dashboard_msgsAddToLogRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Ur_dashboard_msgsAddToLogRequest(_Codecs.Writer writer, _Ros1Ur_dashboard_msgsAddToLogRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        string part0 = value.@message;
        WriteText(writer, part0, 256);
    }

    private static _Ros1Ur_dashboard_msgsAddToLogRequest ReadRos1Ur_dashboard_msgsAddToLogRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Ur_dashboard_msgsAddToLogRequest();
        value.@message = ReadText(reader, 256);
        return value;
    }

    public sealed class _Ros1Ur_dashboard_msgsAddToLogResponse
    {
        public string @answer = "";
        public bool @success = false;

        public _Ros1Ur_dashboard_msgsAddToLogResponse()
        {
        }
    }

    public sealed class Ros1Ur_dashboard_msgsAddToLogResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Ur_dashboard_msgsAddToLogResponse>
    {
        public static readonly Ros1Ur_dashboard_msgsAddToLogResponseCodec Instance = new Ros1Ur_dashboard_msgsAddToLogResponseCodec();

        private Ros1Ur_dashboard_msgsAddToLogResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "ur_dashboard_msgs/AddToLogResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_d495f7609d04abde44cb35ec5114618a2875e0a30986d2f7cc62c8ce99354e7c";
        public const int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 261;

        public byte[] Encode(_Ros1Ur_dashboard_msgsAddToLogResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Ur_dashboard_msgsAddToLogResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Ur_dashboard_msgsAddToLogResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Ur_dashboard_msgsAddToLogResponse value = ReadRos1Ur_dashboard_msgsAddToLogResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Ur_dashboard_msgsAddToLogResponse(_Codecs.Writer writer, _Ros1Ur_dashboard_msgsAddToLogResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        string part0 = value.@answer;
        WriteText(writer, part0, 256);
        bool part1 = value.@success;
        writer.Unsigned(part1 ? 1UL : 0UL, 1);
    }

    private static _Ros1Ur_dashboard_msgsAddToLogResponse ReadRos1Ur_dashboard_msgsAddToLogResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Ur_dashboard_msgsAddToLogResponse();
        value.@answer = ReadText(reader, 256);
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros1Ur_dashboard_msgsGetLoadedProgramRequest
    {
        public _Ros1Ur_dashboard_msgsGetLoadedProgramRequest()
        {
        }
    }

    public sealed class Ros1Ur_dashboard_msgsGetLoadedProgramRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Ur_dashboard_msgsGetLoadedProgramRequest>
    {
        public static readonly Ros1Ur_dashboard_msgsGetLoadedProgramRequestCodec Instance = new Ros1Ur_dashboard_msgsGetLoadedProgramRequestCodec();

        private Ros1Ur_dashboard_msgsGetLoadedProgramRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "ur_dashboard_msgs/GetLoadedProgramRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_54eecd0b652707f9c16dcbacbef05902112db993500404e1adaf26618e1d3a1a";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public byte[] Encode(_Ros1Ur_dashboard_msgsGetLoadedProgramRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Ur_dashboard_msgsGetLoadedProgramRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Ur_dashboard_msgsGetLoadedProgramRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Ur_dashboard_msgsGetLoadedProgramRequest value = ReadRos1Ur_dashboard_msgsGetLoadedProgramRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Ur_dashboard_msgsGetLoadedProgramRequest(_Codecs.Writer writer, _Ros1Ur_dashboard_msgsGetLoadedProgramRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    private static _Ros1Ur_dashboard_msgsGetLoadedProgramRequest ReadRos1Ur_dashboard_msgsGetLoadedProgramRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Ur_dashboard_msgsGetLoadedProgramRequest();
        return value;
    }

    public sealed class _Ros1Ur_dashboard_msgsGetLoadedProgramResponse
    {
        public string @answer = "";
        public string @program_name = "";
        public bool @success = false;

        public _Ros1Ur_dashboard_msgsGetLoadedProgramResponse()
        {
        }
    }

    public sealed class Ros1Ur_dashboard_msgsGetLoadedProgramResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Ur_dashboard_msgsGetLoadedProgramResponse>
    {
        public static readonly Ros1Ur_dashboard_msgsGetLoadedProgramResponseCodec Instance = new Ros1Ur_dashboard_msgsGetLoadedProgramResponseCodec();

        private Ros1Ur_dashboard_msgsGetLoadedProgramResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "ur_dashboard_msgs/GetLoadedProgramResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_1680747345d40412a4731c48f08c402ac97fb12dd871fb320c2a9d002453f87a";
        public const int MIN_WIRE_BYTES = 9, MAX_WIRE_BYTES = 521;

        public byte[] Encode(_Ros1Ur_dashboard_msgsGetLoadedProgramResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Ur_dashboard_msgsGetLoadedProgramResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Ur_dashboard_msgsGetLoadedProgramResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Ur_dashboard_msgsGetLoadedProgramResponse value = ReadRos1Ur_dashboard_msgsGetLoadedProgramResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Ur_dashboard_msgsGetLoadedProgramResponse(_Codecs.Writer writer, _Ros1Ur_dashboard_msgsGetLoadedProgramResponse value)
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

    private static _Ros1Ur_dashboard_msgsGetLoadedProgramResponse ReadRos1Ur_dashboard_msgsGetLoadedProgramResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Ur_dashboard_msgsGetLoadedProgramResponse();
        value.@answer = ReadText(reader, 256);
        value.@program_name = ReadText(reader, 256);
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros1Ur_dashboard_msgsGetProgramStateRequest
    {
        public _Ros1Ur_dashboard_msgsGetProgramStateRequest()
        {
        }
    }

    public sealed class Ros1Ur_dashboard_msgsGetProgramStateRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Ur_dashboard_msgsGetProgramStateRequest>
    {
        public static readonly Ros1Ur_dashboard_msgsGetProgramStateRequestCodec Instance = new Ros1Ur_dashboard_msgsGetProgramStateRequestCodec();

        private Ros1Ur_dashboard_msgsGetProgramStateRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "ur_dashboard_msgs/GetProgramStateRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_cf14c6f86ef1904f80e88117dc2f2d29a003b52e21bc6569795771f04cf072a2";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public byte[] Encode(_Ros1Ur_dashboard_msgsGetProgramStateRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Ur_dashboard_msgsGetProgramStateRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Ur_dashboard_msgsGetProgramStateRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Ur_dashboard_msgsGetProgramStateRequest value = ReadRos1Ur_dashboard_msgsGetProgramStateRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Ur_dashboard_msgsGetProgramStateRequest(_Codecs.Writer writer, _Ros1Ur_dashboard_msgsGetProgramStateRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    private static _Ros1Ur_dashboard_msgsGetProgramStateRequest ReadRos1Ur_dashboard_msgsGetProgramStateRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Ur_dashboard_msgsGetProgramStateRequest();
        return value;
    }

    public sealed class _Ros1Ur_dashboard_msgsProgramState
    {
        public string @state = "";

        public _Ros1Ur_dashboard_msgsProgramState()
        {
        }
    }

    public sealed class Ros1Ur_dashboard_msgsProgramStateCodec : global::Uwvm.RosWasm.ICodec<_Ros1Ur_dashboard_msgsProgramState>
    {
        public static readonly Ros1Ur_dashboard_msgsProgramStateCodec Instance = new Ros1Ur_dashboard_msgsProgramStateCodec();

        private Ros1Ur_dashboard_msgsProgramStateCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "ur_dashboard_msgs/ProgramState";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_97a57db64f20abcb9929b5296c75d66d994f2e9e26449810197c657694d3850e";
        public const int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 260;

        public byte[] Encode(_Ros1Ur_dashboard_msgsProgramState value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Ur_dashboard_msgsProgramState(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Ur_dashboard_msgsProgramState Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Ur_dashboard_msgsProgramState value = ReadRos1Ur_dashboard_msgsProgramState(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Ur_dashboard_msgsProgramState(_Codecs.Writer writer, _Ros1Ur_dashboard_msgsProgramState value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        string part0 = value.@state;
        WriteText(writer, part0, 256);
    }

    private static _Ros1Ur_dashboard_msgsProgramState ReadRos1Ur_dashboard_msgsProgramState(_Codecs.Reader reader)
    {
        var value = new _Ros1Ur_dashboard_msgsProgramState();
        value.@state = ReadText(reader, 256);
        return value;
    }

    public sealed class _Ros1Ur_dashboard_msgsGetProgramStateResponse
    {
        public _Ros1Ur_dashboard_msgsProgramState @state = new _Ros1Ur_dashboard_msgsProgramState();
        public string @program_name = "";
        public string @answer = "";
        public bool @success = false;

        public _Ros1Ur_dashboard_msgsGetProgramStateResponse()
        {
        }
    }

    public sealed class Ros1Ur_dashboard_msgsGetProgramStateResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Ur_dashboard_msgsGetProgramStateResponse>
    {
        public static readonly Ros1Ur_dashboard_msgsGetProgramStateResponseCodec Instance = new Ros1Ur_dashboard_msgsGetProgramStateResponseCodec();

        private Ros1Ur_dashboard_msgsGetProgramStateResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "ur_dashboard_msgs/GetProgramStateResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_366caf89303bfff48d3c0f89aa2a640c3d29af5a0c19d76ceccf26d50c3ab2ed";
        public const int MIN_WIRE_BYTES = 13, MAX_WIRE_BYTES = 781;

        public byte[] Encode(_Ros1Ur_dashboard_msgsGetProgramStateResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Ur_dashboard_msgsGetProgramStateResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Ur_dashboard_msgsGetProgramStateResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Ur_dashboard_msgsGetProgramStateResponse value = ReadRos1Ur_dashboard_msgsGetProgramStateResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Ur_dashboard_msgsGetProgramStateResponse(_Codecs.Writer writer, _Ros1Ur_dashboard_msgsGetProgramStateResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros1Ur_dashboard_msgsProgramState part0 = value.@state;
        WriteRos1Ur_dashboard_msgsProgramState(writer, part0);
        string part1 = value.@program_name;
        WriteText(writer, part1, 256);
        string part2 = value.@answer;
        WriteText(writer, part2, 256);
        bool part3 = value.@success;
        writer.Unsigned(part3 ? 1UL : 0UL, 1);
    }

    private static _Ros1Ur_dashboard_msgsGetProgramStateResponse ReadRos1Ur_dashboard_msgsGetProgramStateResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Ur_dashboard_msgsGetProgramStateResponse();
        value.@state = ReadRos1Ur_dashboard_msgsProgramState(reader);
        value.@program_name = ReadText(reader, 256);
        value.@answer = ReadText(reader, 256);
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros1Ur_dashboard_msgsGetRobotModeRequest
    {
        public _Ros1Ur_dashboard_msgsGetRobotModeRequest()
        {
        }
    }

    public sealed class Ros1Ur_dashboard_msgsGetRobotModeRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Ur_dashboard_msgsGetRobotModeRequest>
    {
        public static readonly Ros1Ur_dashboard_msgsGetRobotModeRequestCodec Instance = new Ros1Ur_dashboard_msgsGetRobotModeRequestCodec();

        private Ros1Ur_dashboard_msgsGetRobotModeRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "ur_dashboard_msgs/GetRobotModeRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_b9ffe283d7dbcb85879dbf6964d393f5d44661227bb26e1acc34308edb288609";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public byte[] Encode(_Ros1Ur_dashboard_msgsGetRobotModeRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Ur_dashboard_msgsGetRobotModeRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Ur_dashboard_msgsGetRobotModeRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Ur_dashboard_msgsGetRobotModeRequest value = ReadRos1Ur_dashboard_msgsGetRobotModeRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Ur_dashboard_msgsGetRobotModeRequest(_Codecs.Writer writer, _Ros1Ur_dashboard_msgsGetRobotModeRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    private static _Ros1Ur_dashboard_msgsGetRobotModeRequest ReadRos1Ur_dashboard_msgsGetRobotModeRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Ur_dashboard_msgsGetRobotModeRequest();
        return value;
    }

    public sealed class _Ros1Ur_dashboard_msgsRobotMode
    {
        public sbyte @mode = 0;

        public _Ros1Ur_dashboard_msgsRobotMode()
        {
        }
    }

    public sealed class Ros1Ur_dashboard_msgsRobotModeCodec : global::Uwvm.RosWasm.ICodec<_Ros1Ur_dashboard_msgsRobotMode>
    {
        public static readonly Ros1Ur_dashboard_msgsRobotModeCodec Instance = new Ros1Ur_dashboard_msgsRobotModeCodec();

        private Ros1Ur_dashboard_msgsRobotModeCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "ur_dashboard_msgs/RobotMode";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_b2772853eff2ec9b849b6de4a90ce98487a8eff49d1371283dce503908702066";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros1Ur_dashboard_msgsRobotMode value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Ur_dashboard_msgsRobotMode(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Ur_dashboard_msgsRobotMode Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Ur_dashboard_msgsRobotMode value = ReadRos1Ur_dashboard_msgsRobotMode(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Ur_dashboard_msgsRobotMode(_Codecs.Writer writer, _Ros1Ur_dashboard_msgsRobotMode value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        sbyte part0 = value.@mode;
        writer.Unsigned(unchecked((byte)part0), 1);
    }

    private static _Ros1Ur_dashboard_msgsRobotMode ReadRos1Ur_dashboard_msgsRobotMode(_Codecs.Reader reader)
    {
        var value = new _Ros1Ur_dashboard_msgsRobotMode();
        value.@mode = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    public sealed class _Ros1Ur_dashboard_msgsGetRobotModeResponse
    {
        public _Ros1Ur_dashboard_msgsRobotMode @robot_mode = new _Ros1Ur_dashboard_msgsRobotMode();
        public string @answer = "";
        public bool @success = false;

        public _Ros1Ur_dashboard_msgsGetRobotModeResponse()
        {
        }
    }

    public sealed class Ros1Ur_dashboard_msgsGetRobotModeResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Ur_dashboard_msgsGetRobotModeResponse>
    {
        public static readonly Ros1Ur_dashboard_msgsGetRobotModeResponseCodec Instance = new Ros1Ur_dashboard_msgsGetRobotModeResponseCodec();

        private Ros1Ur_dashboard_msgsGetRobotModeResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "ur_dashboard_msgs/GetRobotModeResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_f6c0d0d03a956a34b00fd63540226b6abb8b106e2a35cb912b4886a5c4cecc3f";
        public const int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 262;

        public byte[] Encode(_Ros1Ur_dashboard_msgsGetRobotModeResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Ur_dashboard_msgsGetRobotModeResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Ur_dashboard_msgsGetRobotModeResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Ur_dashboard_msgsGetRobotModeResponse value = ReadRos1Ur_dashboard_msgsGetRobotModeResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Ur_dashboard_msgsGetRobotModeResponse(_Codecs.Writer writer, _Ros1Ur_dashboard_msgsGetRobotModeResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros1Ur_dashboard_msgsRobotMode part0 = value.@robot_mode;
        WriteRos1Ur_dashboard_msgsRobotMode(writer, part0);
        string part1 = value.@answer;
        WriteText(writer, part1, 256);
        bool part2 = value.@success;
        writer.Unsigned(part2 ? 1UL : 0UL, 1);
    }

    private static _Ros1Ur_dashboard_msgsGetRobotModeResponse ReadRos1Ur_dashboard_msgsGetRobotModeResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Ur_dashboard_msgsGetRobotModeResponse();
        value.@robot_mode = ReadRos1Ur_dashboard_msgsRobotMode(reader);
        value.@answer = ReadText(reader, 256);
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros1Ur_dashboard_msgsGetSafetyModeRequest
    {
        public _Ros1Ur_dashboard_msgsGetSafetyModeRequest()
        {
        }
    }

    public sealed class Ros1Ur_dashboard_msgsGetSafetyModeRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Ur_dashboard_msgsGetSafetyModeRequest>
    {
        public static readonly Ros1Ur_dashboard_msgsGetSafetyModeRequestCodec Instance = new Ros1Ur_dashboard_msgsGetSafetyModeRequestCodec();

        private Ros1Ur_dashboard_msgsGetSafetyModeRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "ur_dashboard_msgs/GetSafetyModeRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_f697e2ff2bcd56523563060a46bca2e1b7af487128f05562fcb18bfa73cbca8b";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public byte[] Encode(_Ros1Ur_dashboard_msgsGetSafetyModeRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Ur_dashboard_msgsGetSafetyModeRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Ur_dashboard_msgsGetSafetyModeRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Ur_dashboard_msgsGetSafetyModeRequest value = ReadRos1Ur_dashboard_msgsGetSafetyModeRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Ur_dashboard_msgsGetSafetyModeRequest(_Codecs.Writer writer, _Ros1Ur_dashboard_msgsGetSafetyModeRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    private static _Ros1Ur_dashboard_msgsGetSafetyModeRequest ReadRos1Ur_dashboard_msgsGetSafetyModeRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Ur_dashboard_msgsGetSafetyModeRequest();
        return value;
    }

    public sealed class _Ros1Ur_dashboard_msgsSafetyMode
    {
        public byte @mode = 0;

        public _Ros1Ur_dashboard_msgsSafetyMode()
        {
        }
    }

    public sealed class Ros1Ur_dashboard_msgsSafetyModeCodec : global::Uwvm.RosWasm.ICodec<_Ros1Ur_dashboard_msgsSafetyMode>
    {
        public static readonly Ros1Ur_dashboard_msgsSafetyModeCodec Instance = new Ros1Ur_dashboard_msgsSafetyModeCodec();

        private Ros1Ur_dashboard_msgsSafetyModeCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "ur_dashboard_msgs/SafetyMode";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_5a0c2737166cf2e2bd4c17b46c597f674b8d806b802d4e86ee0d76fc55f29cf7";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros1Ur_dashboard_msgsSafetyMode value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Ur_dashboard_msgsSafetyMode(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Ur_dashboard_msgsSafetyMode Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Ur_dashboard_msgsSafetyMode value = ReadRos1Ur_dashboard_msgsSafetyMode(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Ur_dashboard_msgsSafetyMode(_Codecs.Writer writer, _Ros1Ur_dashboard_msgsSafetyMode value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        byte part0 = value.@mode;
        writer.Unsigned(part0, 1);
    }

    private static _Ros1Ur_dashboard_msgsSafetyMode ReadRos1Ur_dashboard_msgsSafetyMode(_Codecs.Reader reader)
    {
        var value = new _Ros1Ur_dashboard_msgsSafetyMode();
        value.@mode = unchecked((byte)reader.Unsigned(1));
        return value;
    }

    public sealed class _Ros1Ur_dashboard_msgsGetSafetyModeResponse
    {
        public _Ros1Ur_dashboard_msgsSafetyMode @safety_mode = new _Ros1Ur_dashboard_msgsSafetyMode();
        public string @answer = "";
        public bool @success = false;

        public _Ros1Ur_dashboard_msgsGetSafetyModeResponse()
        {
        }
    }

    public sealed class Ros1Ur_dashboard_msgsGetSafetyModeResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Ur_dashboard_msgsGetSafetyModeResponse>
    {
        public static readonly Ros1Ur_dashboard_msgsGetSafetyModeResponseCodec Instance = new Ros1Ur_dashboard_msgsGetSafetyModeResponseCodec();

        private Ros1Ur_dashboard_msgsGetSafetyModeResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "ur_dashboard_msgs/GetSafetyModeResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_70121af922588eaab9a34855e3da0cde837b1449d2a2d6c28addc70916df1a15";
        public const int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 262;

        public byte[] Encode(_Ros1Ur_dashboard_msgsGetSafetyModeResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Ur_dashboard_msgsGetSafetyModeResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Ur_dashboard_msgsGetSafetyModeResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Ur_dashboard_msgsGetSafetyModeResponse value = ReadRos1Ur_dashboard_msgsGetSafetyModeResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Ur_dashboard_msgsGetSafetyModeResponse(_Codecs.Writer writer, _Ros1Ur_dashboard_msgsGetSafetyModeResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros1Ur_dashboard_msgsSafetyMode part0 = value.@safety_mode;
        WriteRos1Ur_dashboard_msgsSafetyMode(writer, part0);
        string part1 = value.@answer;
        WriteText(writer, part1, 256);
        bool part2 = value.@success;
        writer.Unsigned(part2 ? 1UL : 0UL, 1);
    }

    private static _Ros1Ur_dashboard_msgsGetSafetyModeResponse ReadRos1Ur_dashboard_msgsGetSafetyModeResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Ur_dashboard_msgsGetSafetyModeResponse();
        value.@safety_mode = ReadRos1Ur_dashboard_msgsSafetyMode(reader);
        value.@answer = ReadText(reader, 256);
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros1Ur_dashboard_msgsIsInRemoteControlRequest
    {
        public _Ros1Ur_dashboard_msgsIsInRemoteControlRequest()
        {
        }
    }

    public sealed class Ros1Ur_dashboard_msgsIsInRemoteControlRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Ur_dashboard_msgsIsInRemoteControlRequest>
    {
        public static readonly Ros1Ur_dashboard_msgsIsInRemoteControlRequestCodec Instance = new Ros1Ur_dashboard_msgsIsInRemoteControlRequestCodec();

        private Ros1Ur_dashboard_msgsIsInRemoteControlRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "ur_dashboard_msgs/IsInRemoteControlRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_4b3c39f36f953904eb582d8c5f91161f2864782d4a4ab209a7dab32a117175da";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public byte[] Encode(_Ros1Ur_dashboard_msgsIsInRemoteControlRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Ur_dashboard_msgsIsInRemoteControlRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Ur_dashboard_msgsIsInRemoteControlRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Ur_dashboard_msgsIsInRemoteControlRequest value = ReadRos1Ur_dashboard_msgsIsInRemoteControlRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Ur_dashboard_msgsIsInRemoteControlRequest(_Codecs.Writer writer, _Ros1Ur_dashboard_msgsIsInRemoteControlRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    private static _Ros1Ur_dashboard_msgsIsInRemoteControlRequest ReadRos1Ur_dashboard_msgsIsInRemoteControlRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Ur_dashboard_msgsIsInRemoteControlRequest();
        return value;
    }

    public sealed class _Ros1Ur_dashboard_msgsIsInRemoteControlResponse
    {
        public string @answer = "";
        public bool @in_remote_control = false;
        public bool @success = false;

        public _Ros1Ur_dashboard_msgsIsInRemoteControlResponse()
        {
        }
    }

    public sealed class Ros1Ur_dashboard_msgsIsInRemoteControlResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Ur_dashboard_msgsIsInRemoteControlResponse>
    {
        public static readonly Ros1Ur_dashboard_msgsIsInRemoteControlResponseCodec Instance = new Ros1Ur_dashboard_msgsIsInRemoteControlResponseCodec();

        private Ros1Ur_dashboard_msgsIsInRemoteControlResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "ur_dashboard_msgs/IsInRemoteControlResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_6c4af27571b48a5b8e8f1f857b2c02a333e7b4b360f8f3645a39630594c1663a";
        public const int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 262;

        public byte[] Encode(_Ros1Ur_dashboard_msgsIsInRemoteControlResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Ur_dashboard_msgsIsInRemoteControlResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Ur_dashboard_msgsIsInRemoteControlResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Ur_dashboard_msgsIsInRemoteControlResponse value = ReadRos1Ur_dashboard_msgsIsInRemoteControlResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Ur_dashboard_msgsIsInRemoteControlResponse(_Codecs.Writer writer, _Ros1Ur_dashboard_msgsIsInRemoteControlResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        string part0 = value.@answer;
        WriteText(writer, part0, 256);
        bool part1 = value.@in_remote_control;
        writer.Unsigned(part1 ? 1UL : 0UL, 1);
        bool part2 = value.@success;
        writer.Unsigned(part2 ? 1UL : 0UL, 1);
    }

    private static _Ros1Ur_dashboard_msgsIsInRemoteControlResponse ReadRos1Ur_dashboard_msgsIsInRemoteControlResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Ur_dashboard_msgsIsInRemoteControlResponse();
        value.@answer = ReadText(reader, 256);
        value.@in_remote_control = ReadBool(reader);
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros1Ur_dashboard_msgsIsProgramRunningRequest
    {
        public _Ros1Ur_dashboard_msgsIsProgramRunningRequest()
        {
        }
    }

    public sealed class Ros1Ur_dashboard_msgsIsProgramRunningRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Ur_dashboard_msgsIsProgramRunningRequest>
    {
        public static readonly Ros1Ur_dashboard_msgsIsProgramRunningRequestCodec Instance = new Ros1Ur_dashboard_msgsIsProgramRunningRequestCodec();

        private Ros1Ur_dashboard_msgsIsProgramRunningRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "ur_dashboard_msgs/IsProgramRunningRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_0be481297028886e15f07ace4178ca0aec595724cd83ab01d0155e7c6aa6666f";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public byte[] Encode(_Ros1Ur_dashboard_msgsIsProgramRunningRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Ur_dashboard_msgsIsProgramRunningRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Ur_dashboard_msgsIsProgramRunningRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Ur_dashboard_msgsIsProgramRunningRequest value = ReadRos1Ur_dashboard_msgsIsProgramRunningRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Ur_dashboard_msgsIsProgramRunningRequest(_Codecs.Writer writer, _Ros1Ur_dashboard_msgsIsProgramRunningRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    private static _Ros1Ur_dashboard_msgsIsProgramRunningRequest ReadRos1Ur_dashboard_msgsIsProgramRunningRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Ur_dashboard_msgsIsProgramRunningRequest();
        return value;
    }

    public sealed class _Ros1Ur_dashboard_msgsIsProgramRunningResponse
    {
        public string @answer = "";
        public bool @program_running = false;
        public bool @success = false;

        public _Ros1Ur_dashboard_msgsIsProgramRunningResponse()
        {
        }
    }

    public sealed class Ros1Ur_dashboard_msgsIsProgramRunningResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Ur_dashboard_msgsIsProgramRunningResponse>
    {
        public static readonly Ros1Ur_dashboard_msgsIsProgramRunningResponseCodec Instance = new Ros1Ur_dashboard_msgsIsProgramRunningResponseCodec();

        private Ros1Ur_dashboard_msgsIsProgramRunningResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "ur_dashboard_msgs/IsProgramRunningResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_4d9de4f7e7071d142c09e3184d4a6f29d4044d003ad11ba3b72e1129ecf144ac";
        public const int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 262;

        public byte[] Encode(_Ros1Ur_dashboard_msgsIsProgramRunningResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Ur_dashboard_msgsIsProgramRunningResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Ur_dashboard_msgsIsProgramRunningResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Ur_dashboard_msgsIsProgramRunningResponse value = ReadRos1Ur_dashboard_msgsIsProgramRunningResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Ur_dashboard_msgsIsProgramRunningResponse(_Codecs.Writer writer, _Ros1Ur_dashboard_msgsIsProgramRunningResponse value)
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

    private static _Ros1Ur_dashboard_msgsIsProgramRunningResponse ReadRos1Ur_dashboard_msgsIsProgramRunningResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Ur_dashboard_msgsIsProgramRunningResponse();
        value.@answer = ReadText(reader, 256);
        value.@program_running = ReadBool(reader);
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros1Ur_dashboard_msgsIsProgramSavedRequest
    {
        public _Ros1Ur_dashboard_msgsIsProgramSavedRequest()
        {
        }
    }

    public sealed class Ros1Ur_dashboard_msgsIsProgramSavedRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Ur_dashboard_msgsIsProgramSavedRequest>
    {
        public static readonly Ros1Ur_dashboard_msgsIsProgramSavedRequestCodec Instance = new Ros1Ur_dashboard_msgsIsProgramSavedRequestCodec();

        private Ros1Ur_dashboard_msgsIsProgramSavedRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "ur_dashboard_msgs/IsProgramSavedRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_45ce1466c35adc812096bfb8b2cd84dfa87940109831c9f797b5786afa14f5a8";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public byte[] Encode(_Ros1Ur_dashboard_msgsIsProgramSavedRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Ur_dashboard_msgsIsProgramSavedRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Ur_dashboard_msgsIsProgramSavedRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Ur_dashboard_msgsIsProgramSavedRequest value = ReadRos1Ur_dashboard_msgsIsProgramSavedRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Ur_dashboard_msgsIsProgramSavedRequest(_Codecs.Writer writer, _Ros1Ur_dashboard_msgsIsProgramSavedRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    private static _Ros1Ur_dashboard_msgsIsProgramSavedRequest ReadRos1Ur_dashboard_msgsIsProgramSavedRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Ur_dashboard_msgsIsProgramSavedRequest();
        return value;
    }

    public sealed class _Ros1Ur_dashboard_msgsIsProgramSavedResponse
    {
        public string @answer = "";
        public string @program_name = "";
        public bool @program_saved = false;
        public bool @success = false;

        public _Ros1Ur_dashboard_msgsIsProgramSavedResponse()
        {
        }
    }

    public sealed class Ros1Ur_dashboard_msgsIsProgramSavedResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Ur_dashboard_msgsIsProgramSavedResponse>
    {
        public static readonly Ros1Ur_dashboard_msgsIsProgramSavedResponseCodec Instance = new Ros1Ur_dashboard_msgsIsProgramSavedResponseCodec();

        private Ros1Ur_dashboard_msgsIsProgramSavedResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "ur_dashboard_msgs/IsProgramSavedResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_eb53e077fe7b216e27fc57f838666a54a84e479e02e508d41df5cff9f0637a52";
        public const int MIN_WIRE_BYTES = 10, MAX_WIRE_BYTES = 522;

        public byte[] Encode(_Ros1Ur_dashboard_msgsIsProgramSavedResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Ur_dashboard_msgsIsProgramSavedResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Ur_dashboard_msgsIsProgramSavedResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Ur_dashboard_msgsIsProgramSavedResponse value = ReadRos1Ur_dashboard_msgsIsProgramSavedResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Ur_dashboard_msgsIsProgramSavedResponse(_Codecs.Writer writer, _Ros1Ur_dashboard_msgsIsProgramSavedResponse value)
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

    private static _Ros1Ur_dashboard_msgsIsProgramSavedResponse ReadRos1Ur_dashboard_msgsIsProgramSavedResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Ur_dashboard_msgsIsProgramSavedResponse();
        value.@answer = ReadText(reader, 256);
        value.@program_name = ReadText(reader, 256);
        value.@program_saved = ReadBool(reader);
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros1Ur_dashboard_msgsLoadRequest
    {
        public string @filename = "";

        public _Ros1Ur_dashboard_msgsLoadRequest()
        {
        }
    }

    public sealed class Ros1Ur_dashboard_msgsLoadRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Ur_dashboard_msgsLoadRequest>
    {
        public static readonly Ros1Ur_dashboard_msgsLoadRequestCodec Instance = new Ros1Ur_dashboard_msgsLoadRequestCodec();

        private Ros1Ur_dashboard_msgsLoadRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "ur_dashboard_msgs/LoadRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_dfbde7b2376c7c9ba3926e4803f16b22f7ade3b2f768a25886a1490656edd2bd";
        public const int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 260;

        public byte[] Encode(_Ros1Ur_dashboard_msgsLoadRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Ur_dashboard_msgsLoadRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Ur_dashboard_msgsLoadRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Ur_dashboard_msgsLoadRequest value = ReadRos1Ur_dashboard_msgsLoadRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Ur_dashboard_msgsLoadRequest(_Codecs.Writer writer, _Ros1Ur_dashboard_msgsLoadRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        string part0 = value.@filename;
        WriteText(writer, part0, 256);
    }

    private static _Ros1Ur_dashboard_msgsLoadRequest ReadRos1Ur_dashboard_msgsLoadRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Ur_dashboard_msgsLoadRequest();
        value.@filename = ReadText(reader, 256);
        return value;
    }

    public sealed class _Ros1Ur_dashboard_msgsLoadResponse
    {
        public string @answer = "";
        public bool @success = false;

        public _Ros1Ur_dashboard_msgsLoadResponse()
        {
        }
    }

    public sealed class Ros1Ur_dashboard_msgsLoadResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Ur_dashboard_msgsLoadResponse>
    {
        public static readonly Ros1Ur_dashboard_msgsLoadResponseCodec Instance = new Ros1Ur_dashboard_msgsLoadResponseCodec();

        private Ros1Ur_dashboard_msgsLoadResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "ur_dashboard_msgs/LoadResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_0ed3b3f2a0066248734e64c0706e52ebf07113569a98baf249a99adfff59be02";
        public const int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 261;

        public byte[] Encode(_Ros1Ur_dashboard_msgsLoadResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Ur_dashboard_msgsLoadResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Ur_dashboard_msgsLoadResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Ur_dashboard_msgsLoadResponse value = ReadRos1Ur_dashboard_msgsLoadResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Ur_dashboard_msgsLoadResponse(_Codecs.Writer writer, _Ros1Ur_dashboard_msgsLoadResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        string part0 = value.@answer;
        WriteText(writer, part0, 256);
        bool part1 = value.@success;
        writer.Unsigned(part1 ? 1UL : 0UL, 1);
    }

    private static _Ros1Ur_dashboard_msgsLoadResponse ReadRos1Ur_dashboard_msgsLoadResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Ur_dashboard_msgsLoadResponse();
        value.@answer = ReadText(reader, 256);
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros1Ur_dashboard_msgsPopupRequest
    {
        public string @message = "";

        public _Ros1Ur_dashboard_msgsPopupRequest()
        {
        }
    }

    public sealed class Ros1Ur_dashboard_msgsPopupRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Ur_dashboard_msgsPopupRequest>
    {
        public static readonly Ros1Ur_dashboard_msgsPopupRequestCodec Instance = new Ros1Ur_dashboard_msgsPopupRequestCodec();

        private Ros1Ur_dashboard_msgsPopupRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "ur_dashboard_msgs/PopupRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_11556bfb811a28141b6c5e9c11720920a389d735b8c09ed1a8f47d05f293e90d";
        public const int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 260;

        public byte[] Encode(_Ros1Ur_dashboard_msgsPopupRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Ur_dashboard_msgsPopupRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Ur_dashboard_msgsPopupRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Ur_dashboard_msgsPopupRequest value = ReadRos1Ur_dashboard_msgsPopupRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Ur_dashboard_msgsPopupRequest(_Codecs.Writer writer, _Ros1Ur_dashboard_msgsPopupRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        string part0 = value.@message;
        WriteText(writer, part0, 256);
    }

    private static _Ros1Ur_dashboard_msgsPopupRequest ReadRos1Ur_dashboard_msgsPopupRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Ur_dashboard_msgsPopupRequest();
        value.@message = ReadText(reader, 256);
        return value;
    }

    public sealed class _Ros1Ur_dashboard_msgsPopupResponse
    {
        public string @answer = "";
        public bool @success = false;

        public _Ros1Ur_dashboard_msgsPopupResponse()
        {
        }
    }

    public sealed class Ros1Ur_dashboard_msgsPopupResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Ur_dashboard_msgsPopupResponse>
    {
        public static readonly Ros1Ur_dashboard_msgsPopupResponseCodec Instance = new Ros1Ur_dashboard_msgsPopupResponseCodec();

        private Ros1Ur_dashboard_msgsPopupResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "ur_dashboard_msgs/PopupResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_33ac5b2128d6e7c2e562af7e2b8a8e907c16c07034b377920cba4fbd04ca9e14";
        public const int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 261;

        public byte[] Encode(_Ros1Ur_dashboard_msgsPopupResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Ur_dashboard_msgsPopupResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Ur_dashboard_msgsPopupResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Ur_dashboard_msgsPopupResponse value = ReadRos1Ur_dashboard_msgsPopupResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Ur_dashboard_msgsPopupResponse(_Codecs.Writer writer, _Ros1Ur_dashboard_msgsPopupResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        string part0 = value.@answer;
        WriteText(writer, part0, 256);
        bool part1 = value.@success;
        writer.Unsigned(part1 ? 1UL : 0UL, 1);
    }

    private static _Ros1Ur_dashboard_msgsPopupResponse ReadRos1Ur_dashboard_msgsPopupResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Ur_dashboard_msgsPopupResponse();
        value.@answer = ReadText(reader, 256);
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros1Ur_dashboard_msgsRawRequestRequest
    {
        public string @query = "";

        public _Ros1Ur_dashboard_msgsRawRequestRequest()
        {
        }
    }

    public sealed class Ros1Ur_dashboard_msgsRawRequestRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Ur_dashboard_msgsRawRequestRequest>
    {
        public static readonly Ros1Ur_dashboard_msgsRawRequestRequestCodec Instance = new Ros1Ur_dashboard_msgsRawRequestRequestCodec();

        private Ros1Ur_dashboard_msgsRawRequestRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "ur_dashboard_msgs/RawRequestRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_ca8e3fdb45888bf4feb3c0f4ed05b7b9499a74493aaa0a8727f9f513922adfb4";
        public const int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 260;

        public byte[] Encode(_Ros1Ur_dashboard_msgsRawRequestRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Ur_dashboard_msgsRawRequestRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Ur_dashboard_msgsRawRequestRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Ur_dashboard_msgsRawRequestRequest value = ReadRos1Ur_dashboard_msgsRawRequestRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Ur_dashboard_msgsRawRequestRequest(_Codecs.Writer writer, _Ros1Ur_dashboard_msgsRawRequestRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        string part0 = value.@query;
        WriteText(writer, part0, 256);
    }

    private static _Ros1Ur_dashboard_msgsRawRequestRequest ReadRos1Ur_dashboard_msgsRawRequestRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Ur_dashboard_msgsRawRequestRequest();
        value.@query = ReadText(reader, 256);
        return value;
    }

    public sealed class _Ros1Ur_dashboard_msgsRawRequestResponse
    {
        public string @answer = "";

        public _Ros1Ur_dashboard_msgsRawRequestResponse()
        {
        }
    }

    public sealed class Ros1Ur_dashboard_msgsRawRequestResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Ur_dashboard_msgsRawRequestResponse>
    {
        public static readonly Ros1Ur_dashboard_msgsRawRequestResponseCodec Instance = new Ros1Ur_dashboard_msgsRawRequestResponseCodec();

        private Ros1Ur_dashboard_msgsRawRequestResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "ur_dashboard_msgs/RawRequestResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_76dbb0c8d0143bd4d39bbf66c6866b0771013fe67fbad76887c6490c91f39e80";
        public const int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 260;

        public byte[] Encode(_Ros1Ur_dashboard_msgsRawRequestResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Ur_dashboard_msgsRawRequestResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Ur_dashboard_msgsRawRequestResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Ur_dashboard_msgsRawRequestResponse value = ReadRos1Ur_dashboard_msgsRawRequestResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Ur_dashboard_msgsRawRequestResponse(_Codecs.Writer writer, _Ros1Ur_dashboard_msgsRawRequestResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        string part0 = value.@answer;
        WriteText(writer, part0, 256);
    }

    private static _Ros1Ur_dashboard_msgsRawRequestResponse ReadRos1Ur_dashboard_msgsRawRequestResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Ur_dashboard_msgsRawRequestResponse();
        value.@answer = ReadText(reader, 256);
        return value;
    }

    public sealed class _Ros1Ur_dashboard_msgsSetModeGoal
    {
        public _Ros1Ur_dashboard_msgsRobotMode @target_robot_mode = new _Ros1Ur_dashboard_msgsRobotMode();
        public bool @stop_program = false;
        public bool @play_program = false;

        public _Ros1Ur_dashboard_msgsSetModeGoal()
        {
        }
    }

    public sealed class Ros1Ur_dashboard_msgsSetModeGoalCodec : global::Uwvm.RosWasm.ICodec<_Ros1Ur_dashboard_msgsSetModeGoal>
    {
        public static readonly Ros1Ur_dashboard_msgsSetModeGoalCodec Instance = new Ros1Ur_dashboard_msgsSetModeGoalCodec();

        private Ros1Ur_dashboard_msgsSetModeGoalCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "ur_dashboard_msgs/SetModeGoal";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_27ba58b57af47e8efff15a70fb0562d5904d019c17e39a499bf003730434a528";
        public const int MIN_WIRE_BYTES = 3, MAX_WIRE_BYTES = 3;

        public byte[] Encode(_Ros1Ur_dashboard_msgsSetModeGoal value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Ur_dashboard_msgsSetModeGoal(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Ur_dashboard_msgsSetModeGoal Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Ur_dashboard_msgsSetModeGoal value = ReadRos1Ur_dashboard_msgsSetModeGoal(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Ur_dashboard_msgsSetModeGoal(_Codecs.Writer writer, _Ros1Ur_dashboard_msgsSetModeGoal value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros1Ur_dashboard_msgsRobotMode part0 = value.@target_robot_mode;
        WriteRos1Ur_dashboard_msgsRobotMode(writer, part0);
        bool part1 = value.@stop_program;
        writer.Unsigned(part1 ? 1UL : 0UL, 1);
        bool part2 = value.@play_program;
        writer.Unsigned(part2 ? 1UL : 0UL, 1);
    }

    private static _Ros1Ur_dashboard_msgsSetModeGoal ReadRos1Ur_dashboard_msgsSetModeGoal(_Codecs.Reader reader)
    {
        var value = new _Ros1Ur_dashboard_msgsSetModeGoal();
        value.@target_robot_mode = ReadRos1Ur_dashboard_msgsRobotMode(reader);
        value.@stop_program = ReadBool(reader);
        value.@play_program = ReadBool(reader);
        return value;
    }

    public sealed class _Ros1Ur_dashboard_msgsSetModeResult
    {
        public bool @success = false;
        public string @message = "";

        public _Ros1Ur_dashboard_msgsSetModeResult()
        {
        }
    }

    public sealed class Ros1Ur_dashboard_msgsSetModeResultCodec : global::Uwvm.RosWasm.ICodec<_Ros1Ur_dashboard_msgsSetModeResult>
    {
        public static readonly Ros1Ur_dashboard_msgsSetModeResultCodec Instance = new Ros1Ur_dashboard_msgsSetModeResultCodec();

        private Ros1Ur_dashboard_msgsSetModeResultCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "ur_dashboard_msgs/SetModeResult";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_e558d01061183cabca7022bd66aeb1958e14dfc62226a701c86020e73ffa1114";
        public const int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 261;

        public byte[] Encode(_Ros1Ur_dashboard_msgsSetModeResult value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Ur_dashboard_msgsSetModeResult(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Ur_dashboard_msgsSetModeResult Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Ur_dashboard_msgsSetModeResult value = ReadRos1Ur_dashboard_msgsSetModeResult(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Ur_dashboard_msgsSetModeResult(_Codecs.Writer writer, _Ros1Ur_dashboard_msgsSetModeResult value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
        string part1 = value.@message;
        WriteText(writer, part1, 256);
    }

    private static _Ros1Ur_dashboard_msgsSetModeResult ReadRos1Ur_dashboard_msgsSetModeResult(_Codecs.Reader reader)
    {
        var value = new _Ros1Ur_dashboard_msgsSetModeResult();
        value.@success = ReadBool(reader);
        value.@message = ReadText(reader, 256);
        return value;
    }

    public sealed class _Ros1Ur_dashboard_msgsSetModeFeedback
    {
        public sbyte @current_robot_mode = 0;
        public sbyte @current_safety_mode = 0;

        public _Ros1Ur_dashboard_msgsSetModeFeedback()
        {
        }
    }

    public sealed class Ros1Ur_dashboard_msgsSetModeFeedbackCodec : global::Uwvm.RosWasm.ICodec<_Ros1Ur_dashboard_msgsSetModeFeedback>
    {
        public static readonly Ros1Ur_dashboard_msgsSetModeFeedbackCodec Instance = new Ros1Ur_dashboard_msgsSetModeFeedbackCodec();

        private Ros1Ur_dashboard_msgsSetModeFeedbackCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "ur_dashboard_msgs/SetModeFeedback";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_d29b507dcc5d72ee086c8a5a9a7a762d677ed408ec02dbe661abc17e2de5c7e2";
        public const int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;

        public byte[] Encode(_Ros1Ur_dashboard_msgsSetModeFeedback value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Ur_dashboard_msgsSetModeFeedback(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Ur_dashboard_msgsSetModeFeedback Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Ur_dashboard_msgsSetModeFeedback value = ReadRos1Ur_dashboard_msgsSetModeFeedback(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Ur_dashboard_msgsSetModeFeedback(_Codecs.Writer writer, _Ros1Ur_dashboard_msgsSetModeFeedback value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        sbyte part0 = value.@current_robot_mode;
        writer.Unsigned(unchecked((byte)part0), 1);
        sbyte part1 = value.@current_safety_mode;
        writer.Unsigned(unchecked((byte)part1), 1);
    }

    private static _Ros1Ur_dashboard_msgsSetModeFeedback ReadRos1Ur_dashboard_msgsSetModeFeedback(_Codecs.Reader reader)
    {
        var value = new _Ros1Ur_dashboard_msgsSetModeFeedback();
        value.@current_robot_mode = unchecked((sbyte)reader.Unsigned(1));
        value.@current_safety_mode = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    public sealed class _Ros1Ur_msgsAnalog
    {
        public byte @pin = 0;
        public byte @domain = 0;
        public float @state = 0;

        public _Ros1Ur_msgsAnalog()
        {
        }
    }

    public sealed class Ros1Ur_msgsAnalogCodec : global::Uwvm.RosWasm.ICodec<_Ros1Ur_msgsAnalog>
    {
        public static readonly Ros1Ur_msgsAnalogCodec Instance = new Ros1Ur_msgsAnalogCodec();

        private Ros1Ur_msgsAnalogCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "ur_msgs/Analog";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_638dc3b30def8193a501b4c1c778792a60c8c683a96880e9fa6db6c01774f6a7";
        public const int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 6;

        public byte[] Encode(_Ros1Ur_msgsAnalog value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Ur_msgsAnalog(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Ur_msgsAnalog Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Ur_msgsAnalog value = ReadRos1Ur_msgsAnalog(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Ur_msgsAnalog(_Codecs.Writer writer, _Ros1Ur_msgsAnalog value)
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

    private static _Ros1Ur_msgsAnalog ReadRos1Ur_msgsAnalog(_Codecs.Reader reader)
    {
        var value = new _Ros1Ur_msgsAnalog();
        value.@pin = unchecked((byte)reader.Unsigned(1));
        value.@domain = unchecked((byte)reader.Unsigned(1));
        value.@state = ReadFloat32(reader);
        return value;
    }

    public sealed class _Ros1Ur_msgsDigital
    {
        public byte @pin = 0;
        public bool @state = false;

        public _Ros1Ur_msgsDigital()
        {
        }
    }

    public sealed class Ros1Ur_msgsDigitalCodec : global::Uwvm.RosWasm.ICodec<_Ros1Ur_msgsDigital>
    {
        public static readonly Ros1Ur_msgsDigitalCodec Instance = new Ros1Ur_msgsDigitalCodec();

        private Ros1Ur_msgsDigitalCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "ur_msgs/Digital";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_c5840cfc5e26fe2f18817e46a0322a92e02ca21983920c71ebeb585769f5622c";
        public const int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;

        public byte[] Encode(_Ros1Ur_msgsDigital value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Ur_msgsDigital(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Ur_msgsDigital Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Ur_msgsDigital value = ReadRos1Ur_msgsDigital(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Ur_msgsDigital(_Codecs.Writer writer, _Ros1Ur_msgsDigital value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        byte part0 = value.@pin;
        writer.Unsigned(part0, 1);
        bool part1 = value.@state;
        writer.Unsigned(part1 ? 1UL : 0UL, 1);
    }

    private static _Ros1Ur_msgsDigital ReadRos1Ur_msgsDigital(_Codecs.Reader reader)
    {
        var value = new _Ros1Ur_msgsDigital();
        value.@pin = unchecked((byte)reader.Unsigned(1));
        value.@state = ReadBool(reader);
        return value;
    }

    public sealed class _Ros1Ur_msgsGetRobotSoftwareVersionRequest
    {
        public _Ros1Ur_msgsGetRobotSoftwareVersionRequest()
        {
        }
    }

    public sealed class Ros1Ur_msgsGetRobotSoftwareVersionRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Ur_msgsGetRobotSoftwareVersionRequest>
    {
        public static readonly Ros1Ur_msgsGetRobotSoftwareVersionRequestCodec Instance = new Ros1Ur_msgsGetRobotSoftwareVersionRequestCodec();

        private Ros1Ur_msgsGetRobotSoftwareVersionRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "ur_msgs/GetRobotSoftwareVersionRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_bbcdd98ee8d951a8a4fa873ad1c755f16c5cce14ceb7a614343dd44ccf84b9c8";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public byte[] Encode(_Ros1Ur_msgsGetRobotSoftwareVersionRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Ur_msgsGetRobotSoftwareVersionRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Ur_msgsGetRobotSoftwareVersionRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Ur_msgsGetRobotSoftwareVersionRequest value = ReadRos1Ur_msgsGetRobotSoftwareVersionRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Ur_msgsGetRobotSoftwareVersionRequest(_Codecs.Writer writer, _Ros1Ur_msgsGetRobotSoftwareVersionRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    private static _Ros1Ur_msgsGetRobotSoftwareVersionRequest ReadRos1Ur_msgsGetRobotSoftwareVersionRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Ur_msgsGetRobotSoftwareVersionRequest();
        return value;
    }

    public sealed class _Ros1Ur_msgsGetRobotSoftwareVersionResponse
    {
        public uint @major = 0;
        public uint @minor = 0;
        public uint @bugfix = 0;
        public uint @build = 0;

        public _Ros1Ur_msgsGetRobotSoftwareVersionResponse()
        {
        }
    }

    public sealed class Ros1Ur_msgsGetRobotSoftwareVersionResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Ur_msgsGetRobotSoftwareVersionResponse>
    {
        public static readonly Ros1Ur_msgsGetRobotSoftwareVersionResponseCodec Instance = new Ros1Ur_msgsGetRobotSoftwareVersionResponseCodec();

        private Ros1Ur_msgsGetRobotSoftwareVersionResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "ur_msgs/GetRobotSoftwareVersionResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_36ab51ce55e3630f8ca71f364f4c5cc1f4b010f678777e4fd7b03dd480f92e64";
        public const int MIN_WIRE_BYTES = 16, MAX_WIRE_BYTES = 16;

        public byte[] Encode(_Ros1Ur_msgsGetRobotSoftwareVersionResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Ur_msgsGetRobotSoftwareVersionResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Ur_msgsGetRobotSoftwareVersionResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Ur_msgsGetRobotSoftwareVersionResponse value = ReadRos1Ur_msgsGetRobotSoftwareVersionResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Ur_msgsGetRobotSoftwareVersionResponse(_Codecs.Writer writer, _Ros1Ur_msgsGetRobotSoftwareVersionResponse value)
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

    private static _Ros1Ur_msgsGetRobotSoftwareVersionResponse ReadRos1Ur_msgsGetRobotSoftwareVersionResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Ur_msgsGetRobotSoftwareVersionResponse();
        value.@major = unchecked((uint)reader.Unsigned(4));
        value.@minor = unchecked((uint)reader.Unsigned(4));
        value.@bugfix = unchecked((uint)reader.Unsigned(4));
        value.@build = unchecked((uint)reader.Unsigned(4));
        return value;
    }

    public sealed class _Ros1Ur_msgsIOStates
    {
        public _Ros1Ur_msgsDigital[] @digital_in_states = new _Ros1Ur_msgsDigital[0];
        public _Ros1Ur_msgsDigital[] @digital_out_states = new _Ros1Ur_msgsDigital[0];
        public _Ros1Ur_msgsDigital[] @flag_states = new _Ros1Ur_msgsDigital[0];
        public _Ros1Ur_msgsAnalog[] @analog_in_states = new _Ros1Ur_msgsAnalog[0];
        public _Ros1Ur_msgsAnalog[] @analog_out_states = new _Ros1Ur_msgsAnalog[0];

        public _Ros1Ur_msgsIOStates()
        {
        }
    }

    public sealed class Ros1Ur_msgsIOStatesCodec : global::Uwvm.RosWasm.ICodec<_Ros1Ur_msgsIOStates>
    {
        public static readonly Ros1Ur_msgsIOStatesCodec Instance = new Ros1Ur_msgsIOStatesCodec();

        private Ros1Ur_msgsIOStatesCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "ur_msgs/IOStates";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_4b10f6efdd2f129267c407bc1f8caed03776fef6d49f0a1b9dfbf2451ad8f033";
        public const int MIN_WIRE_BYTES = 20, MAX_WIRE_BYTES = 404;

        public byte[] Encode(_Ros1Ur_msgsIOStates value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Ur_msgsIOStates(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Ur_msgsIOStates Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Ur_msgsIOStates value = ReadRos1Ur_msgsIOStates(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Ur_msgsIOStates(_Codecs.Writer writer, _Ros1Ur_msgsIOStates value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros1Ur_msgsDigital[] part0 = value.@digital_in_states;
        if(part0 == null || part0.Length > 32)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part0.Length, 4);
        for(int index = 0; index < part0.Length; ++index)
        {
            _Ros1Ur_msgsDigital element = part0[index];
            WriteRos1Ur_msgsDigital(writer, element);
        }
        _Ros1Ur_msgsDigital[] part1 = value.@digital_out_states;
        if(part1 == null || part1.Length > 32)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part1.Length, 4);
        for(int index = 0; index < part1.Length; ++index)
        {
            _Ros1Ur_msgsDigital element = part1[index];
            WriteRos1Ur_msgsDigital(writer, element);
        }
        _Ros1Ur_msgsDigital[] part2 = value.@flag_states;
        if(part2 == null || part2.Length > 32)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part2.Length, 4);
        for(int index = 0; index < part2.Length; ++index)
        {
            _Ros1Ur_msgsDigital element = part2[index];
            WriteRos1Ur_msgsDigital(writer, element);
        }
        _Ros1Ur_msgsAnalog[] part3 = value.@analog_in_states;
        if(part3 == null || part3.Length > 16)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part3.Length, 4);
        for(int index = 0; index < part3.Length; ++index)
        {
            _Ros1Ur_msgsAnalog element = part3[index];
            WriteRos1Ur_msgsAnalog(writer, element);
        }
        _Ros1Ur_msgsAnalog[] part4 = value.@analog_out_states;
        if(part4 == null || part4.Length > 16)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part4.Length, 4);
        for(int index = 0; index < part4.Length; ++index)
        {
            _Ros1Ur_msgsAnalog element = part4[index];
            WriteRos1Ur_msgsAnalog(writer, element);
        }
    }

    private static _Ros1Ur_msgsIOStates ReadRos1Ur_msgsIOStates(_Codecs.Reader reader)
    {
        var value = new _Ros1Ur_msgsIOStates();
        value.@digital_in_states = new _Ros1Ur_msgsDigital[ReadCount(reader, 32, 2)];
        for(int index = 0; index < value.@digital_in_states.Length; ++index)
            value.@digital_in_states[index] = ReadRos1Ur_msgsDigital(reader);
        value.@digital_out_states = new _Ros1Ur_msgsDigital[ReadCount(reader, 32, 2)];
        for(int index = 0; index < value.@digital_out_states.Length; ++index)
            value.@digital_out_states[index] = ReadRos1Ur_msgsDigital(reader);
        value.@flag_states = new _Ros1Ur_msgsDigital[ReadCount(reader, 32, 2)];
        for(int index = 0; index < value.@flag_states.Length; ++index)
            value.@flag_states[index] = ReadRos1Ur_msgsDigital(reader);
        value.@analog_in_states = new _Ros1Ur_msgsAnalog[ReadCount(reader, 16, 6)];
        for(int index = 0; index < value.@analog_in_states.Length; ++index)
            value.@analog_in_states[index] = ReadRos1Ur_msgsAnalog(reader);
        value.@analog_out_states = new _Ros1Ur_msgsAnalog[ReadCount(reader, 16, 6)];
        for(int index = 0; index < value.@analog_out_states.Length; ++index)
            value.@analog_out_states[index] = ReadRos1Ur_msgsAnalog(reader);
        return value;
    }

    public sealed class _Ros1Ur_msgsMasterboardDataMsg
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
        public float @robot_voltage_48V = 0;
        public float @robot_current = 0;
        public float @master_io_current = 0;
        public byte @master_safety_state = 0;
        public byte @master_onoff_state = 0;

        public _Ros1Ur_msgsMasterboardDataMsg()
        {
        }
    }

    public sealed class Ros1Ur_msgsMasterboardDataMsgCodec : global::Uwvm.RosWasm.ICodec<_Ros1Ur_msgsMasterboardDataMsg>
    {
        public static readonly Ros1Ur_msgsMasterboardDataMsgCodec Instance = new Ros1Ur_msgsMasterboardDataMsgCodec();

        private Ros1Ur_msgsMasterboardDataMsgCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "ur_msgs/MasterboardDataMsg";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_f80f92b90cb33dd5b118df81447dfcc33c1ab230a91bb915a1be684401da265f";
        public const int MIN_WIRE_BYTES = 62, MAX_WIRE_BYTES = 62;

        public byte[] Encode(_Ros1Ur_msgsMasterboardDataMsg value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Ur_msgsMasterboardDataMsg(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Ur_msgsMasterboardDataMsg Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Ur_msgsMasterboardDataMsg value = ReadRos1Ur_msgsMasterboardDataMsg(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Ur_msgsMasterboardDataMsg(_Codecs.Writer writer, _Ros1Ur_msgsMasterboardDataMsg value)
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
        float part11 = value.@robot_voltage_48V;
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

    private static _Ros1Ur_msgsMasterboardDataMsg ReadRos1Ur_msgsMasterboardDataMsg(_Codecs.Reader reader)
    {
        var value = new _Ros1Ur_msgsMasterboardDataMsg();
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
        value.@robot_voltage_48V = ReadFloat32(reader);
        value.@robot_current = ReadFloat32(reader);
        value.@master_io_current = ReadFloat32(reader);
        value.@master_safety_state = unchecked((byte)reader.Unsigned(1));
        value.@master_onoff_state = unchecked((byte)reader.Unsigned(1));
        return value;
    }

    public sealed class _Ros1Ur_msgsRobotModeDataMsg
    {
        public ulong @timestamp = 0;
        public bool @is_robot_connected = false;
        public bool @is_real_robot_enabled = false;
        public bool @is_power_on_robot = false;
        public bool @is_emergency_stopped = false;
        public bool @is_protective_stopped = false;
        public bool @is_program_running = false;
        public bool @is_program_paused = false;

        public _Ros1Ur_msgsRobotModeDataMsg()
        {
        }
    }

    public sealed class Ros1Ur_msgsRobotModeDataMsgCodec : global::Uwvm.RosWasm.ICodec<_Ros1Ur_msgsRobotModeDataMsg>
    {
        public static readonly Ros1Ur_msgsRobotModeDataMsgCodec Instance = new Ros1Ur_msgsRobotModeDataMsgCodec();

        private Ros1Ur_msgsRobotModeDataMsgCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "ur_msgs/RobotModeDataMsg";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_64c4247d865e0731b13ca13ce2e355df664cabf7f3d646051d9d3ef48b05a231";
        public const int MIN_WIRE_BYTES = 15, MAX_WIRE_BYTES = 15;

        public byte[] Encode(_Ros1Ur_msgsRobotModeDataMsg value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Ur_msgsRobotModeDataMsg(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Ur_msgsRobotModeDataMsg Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Ur_msgsRobotModeDataMsg value = ReadRos1Ur_msgsRobotModeDataMsg(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Ur_msgsRobotModeDataMsg(_Codecs.Writer writer, _Ros1Ur_msgsRobotModeDataMsg value)
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

    private static _Ros1Ur_msgsRobotModeDataMsg ReadRos1Ur_msgsRobotModeDataMsg(_Codecs.Reader reader)
    {
        var value = new _Ros1Ur_msgsRobotModeDataMsg();
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

    public sealed class _Ros1Ur_msgsRobotStateRTMsg
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

        public _Ros1Ur_msgsRobotStateRTMsg()
        {
        }
    }

    public sealed class Ros1Ur_msgsRobotStateRTMsgCodec : global::Uwvm.RosWasm.ICodec<_Ros1Ur_msgsRobotStateRTMsg>
    {
        public static readonly Ros1Ur_msgsRobotStateRTMsgCodec Instance = new Ros1Ur_msgsRobotStateRTMsgCodec();

        private Ros1Ur_msgsRobotStateRTMsgCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "ur_msgs/RobotStateRTMsg";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_e3d93b6141f749b93c229d8eabebbeb2782a16621fea4d7d39096794e7a67ce7";
        public const int MIN_WIRE_BYTES = 96, MAX_WIRE_BYTES = 768;

        public byte[] Encode(_Ros1Ur_msgsRobotStateRTMsg value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Ur_msgsRobotStateRTMsg(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Ur_msgsRobotStateRTMsg Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Ur_msgsRobotStateRTMsg value = ReadRos1Ur_msgsRobotStateRTMsg(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Ur_msgsRobotStateRTMsg(_Codecs.Writer writer, _Ros1Ur_msgsRobotStateRTMsg value)
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

    private static _Ros1Ur_msgsRobotStateRTMsg ReadRos1Ur_msgsRobotStateRTMsg(_Codecs.Reader reader)
    {
        var value = new _Ros1Ur_msgsRobotStateRTMsg();
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

    public sealed class _Ros1Ur_msgsSetAnalogOutputRequest
    {
        public _Ros1Ur_msgsAnalog @data = new _Ros1Ur_msgsAnalog();

        public _Ros1Ur_msgsSetAnalogOutputRequest()
        {
        }
    }

    public sealed class Ros1Ur_msgsSetAnalogOutputRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Ur_msgsSetAnalogOutputRequest>
    {
        public static readonly Ros1Ur_msgsSetAnalogOutputRequestCodec Instance = new Ros1Ur_msgsSetAnalogOutputRequestCodec();

        private Ros1Ur_msgsSetAnalogOutputRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "ur_msgs/SetAnalogOutputRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_1830a63c8853ebe8842f0e8e6870fbdee136dfe78726ba581fd1c54f910c4789";
        public const int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 6;

        public byte[] Encode(_Ros1Ur_msgsSetAnalogOutputRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Ur_msgsSetAnalogOutputRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Ur_msgsSetAnalogOutputRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Ur_msgsSetAnalogOutputRequest value = ReadRos1Ur_msgsSetAnalogOutputRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Ur_msgsSetAnalogOutputRequest(_Codecs.Writer writer, _Ros1Ur_msgsSetAnalogOutputRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros1Ur_msgsAnalog part0 = value.@data;
        WriteRos1Ur_msgsAnalog(writer, part0);
    }

    private static _Ros1Ur_msgsSetAnalogOutputRequest ReadRos1Ur_msgsSetAnalogOutputRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Ur_msgsSetAnalogOutputRequest();
        value.@data = ReadRos1Ur_msgsAnalog(reader);
        return value;
    }

    public sealed class _Ros1Ur_msgsSetAnalogOutputResponse
    {
        public bool @success = false;

        public _Ros1Ur_msgsSetAnalogOutputResponse()
        {
        }
    }

    public sealed class Ros1Ur_msgsSetAnalogOutputResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Ur_msgsSetAnalogOutputResponse>
    {
        public static readonly Ros1Ur_msgsSetAnalogOutputResponseCodec Instance = new Ros1Ur_msgsSetAnalogOutputResponseCodec();

        private Ros1Ur_msgsSetAnalogOutputResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "ur_msgs/SetAnalogOutputResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_bb84c969f904082699f67d385b093b0c6de97bfacc33eab86932f4564a823580";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros1Ur_msgsSetAnalogOutputResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Ur_msgsSetAnalogOutputResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Ur_msgsSetAnalogOutputResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Ur_msgsSetAnalogOutputResponse value = ReadRos1Ur_msgsSetAnalogOutputResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Ur_msgsSetAnalogOutputResponse(_Codecs.Writer writer, _Ros1Ur_msgsSetAnalogOutputResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros1Ur_msgsSetAnalogOutputResponse ReadRos1Ur_msgsSetAnalogOutputResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Ur_msgsSetAnalogOutputResponse();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros1Ur_msgsSetForceModeRequest
    {
        public _Ros1Geometry_msgsPoseStamped @task_frame = new _Ros1Geometry_msgsPoseStamped();
        public bool @selection_vector_x = false;
        public bool @selection_vector_y = false;
        public bool @selection_vector_z = false;
        public bool @selection_vector_rx = false;
        public bool @selection_vector_ry = false;
        public bool @selection_vector_rz = false;
        public _Ros1Geometry_msgsWrench @wrench = new _Ros1Geometry_msgsWrench();
        public byte @type = 0;
        public _Ros1Geometry_msgsTwist @speed_limits = new _Ros1Geometry_msgsTwist();
        public float[] @deviation_limits = new float[6];
        public float @damping_factor = 0;
        public float @gain_scaling = 0;

        public _Ros1Ur_msgsSetForceModeRequest()
        {
        }
    }

    public sealed class Ros1Ur_msgsSetForceModeRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Ur_msgsSetForceModeRequest>
    {
        public static readonly Ros1Ur_msgsSetForceModeRequestCodec Instance = new Ros1Ur_msgsSetForceModeRequestCodec();

        private Ros1Ur_msgsSetForceModeRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "ur_msgs/SetForceModeRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_c148d6eb37258e10f5d16e76e41c334fc57a3d751c0c35c47be4cabf4c015a6b";
        public const int MIN_WIRE_BYTES = 207, MAX_WIRE_BYTES = 335;

        public byte[] Encode(_Ros1Ur_msgsSetForceModeRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Ur_msgsSetForceModeRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Ur_msgsSetForceModeRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Ur_msgsSetForceModeRequest value = ReadRos1Ur_msgsSetForceModeRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Ur_msgsSetForceModeRequest(_Codecs.Writer writer, _Ros1Ur_msgsSetForceModeRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros1Geometry_msgsPoseStamped part0 = value.@task_frame;
        WriteRos1Geometry_msgsPoseStamped(writer, part0);
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
        _Ros1Geometry_msgsWrench part7 = value.@wrench;
        WriteRos1Geometry_msgsWrench(writer, part7);
        byte part8 = value.@type;
        writer.Unsigned(part8, 1);
        _Ros1Geometry_msgsTwist part9 = value.@speed_limits;
        WriteRos1Geometry_msgsTwist(writer, part9);
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

    private static _Ros1Ur_msgsSetForceModeRequest ReadRos1Ur_msgsSetForceModeRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Ur_msgsSetForceModeRequest();
        value.@task_frame = ReadRos1Geometry_msgsPoseStamped(reader);
        value.@selection_vector_x = ReadBool(reader);
        value.@selection_vector_y = ReadBool(reader);
        value.@selection_vector_z = ReadBool(reader);
        value.@selection_vector_rx = ReadBool(reader);
        value.@selection_vector_ry = ReadBool(reader);
        value.@selection_vector_rz = ReadBool(reader);
        value.@wrench = ReadRos1Geometry_msgsWrench(reader);
        value.@type = unchecked((byte)reader.Unsigned(1));
        value.@speed_limits = ReadRos1Geometry_msgsTwist(reader);
        value.@deviation_limits = new float[6];
        for(int index = 0; index < value.@deviation_limits.Length; ++index)
            value.@deviation_limits[index] = ReadFloat32(reader);
        value.@damping_factor = ReadFloat32(reader);
        value.@gain_scaling = ReadFloat32(reader);
        return value;
    }

    public sealed class _Ros1Ur_msgsSetForceModeResponse
    {
        public bool @success = false;

        public _Ros1Ur_msgsSetForceModeResponse()
        {
        }
    }

    public sealed class Ros1Ur_msgsSetForceModeResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Ur_msgsSetForceModeResponse>
    {
        public static readonly Ros1Ur_msgsSetForceModeResponseCodec Instance = new Ros1Ur_msgsSetForceModeResponseCodec();

        private Ros1Ur_msgsSetForceModeResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "ur_msgs/SetForceModeResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_bb1eeb0b38d81d642066bed1510245423f62d25983a2de89e985d1fd1932308c";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros1Ur_msgsSetForceModeResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Ur_msgsSetForceModeResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Ur_msgsSetForceModeResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Ur_msgsSetForceModeResponse value = ReadRos1Ur_msgsSetForceModeResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Ur_msgsSetForceModeResponse(_Codecs.Writer writer, _Ros1Ur_msgsSetForceModeResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros1Ur_msgsSetForceModeResponse ReadRos1Ur_msgsSetForceModeResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Ur_msgsSetForceModeResponse();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros1Ur_msgsSetIORequest
    {
        public sbyte @fun = 0;
        public sbyte @pin = 0;
        public float @state = 0;

        public _Ros1Ur_msgsSetIORequest()
        {
        }
    }

    public sealed class Ros1Ur_msgsSetIORequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Ur_msgsSetIORequest>
    {
        public static readonly Ros1Ur_msgsSetIORequestCodec Instance = new Ros1Ur_msgsSetIORequestCodec();

        private Ros1Ur_msgsSetIORequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "ur_msgs/SetIORequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_3dbd2f05686ddaac16b37dc8ec98303acb672d176be34fc906cf32f2d4cd1872";
        public const int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 6;

        public byte[] Encode(_Ros1Ur_msgsSetIORequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Ur_msgsSetIORequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Ur_msgsSetIORequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Ur_msgsSetIORequest value = ReadRos1Ur_msgsSetIORequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Ur_msgsSetIORequest(_Codecs.Writer writer, _Ros1Ur_msgsSetIORequest value)
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

    private static _Ros1Ur_msgsSetIORequest ReadRos1Ur_msgsSetIORequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Ur_msgsSetIORequest();
        value.@fun = unchecked((sbyte)reader.Unsigned(1));
        value.@pin = unchecked((sbyte)reader.Unsigned(1));
        value.@state = ReadFloat32(reader);
        return value;
    }

    public sealed class _Ros1Ur_msgsSetIOResponse
    {
        public bool @success = false;

        public _Ros1Ur_msgsSetIOResponse()
        {
        }
    }

    public sealed class Ros1Ur_msgsSetIOResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Ur_msgsSetIOResponse>
    {
        public static readonly Ros1Ur_msgsSetIOResponseCodec Instance = new Ros1Ur_msgsSetIOResponseCodec();

        private Ros1Ur_msgsSetIOResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "ur_msgs/SetIOResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_7fc137aa3db3178a450b8b2396b7821c911c79656e52bf48814745c261aecf61";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros1Ur_msgsSetIOResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Ur_msgsSetIOResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Ur_msgsSetIOResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Ur_msgsSetIOResponse value = ReadRos1Ur_msgsSetIOResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Ur_msgsSetIOResponse(_Codecs.Writer writer, _Ros1Ur_msgsSetIOResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros1Ur_msgsSetIOResponse ReadRos1Ur_msgsSetIOResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Ur_msgsSetIOResponse();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros1Ur_msgsSetPayloadRequest
    {
        public float @mass = 0;
        public _Ros1Geometry_msgsVector3 @center_of_gravity = new _Ros1Geometry_msgsVector3();

        public _Ros1Ur_msgsSetPayloadRequest()
        {
        }
    }

    public sealed class Ros1Ur_msgsSetPayloadRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Ur_msgsSetPayloadRequest>
    {
        public static readonly Ros1Ur_msgsSetPayloadRequestCodec Instance = new Ros1Ur_msgsSetPayloadRequestCodec();

        private Ros1Ur_msgsSetPayloadRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "ur_msgs/SetPayloadRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_63ae68b44ce6aaad37cbda779fb51dee78923df27c582b4aab4104b16a307ee3";
        public const int MIN_WIRE_BYTES = 28, MAX_WIRE_BYTES = 28;

        public byte[] Encode(_Ros1Ur_msgsSetPayloadRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Ur_msgsSetPayloadRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Ur_msgsSetPayloadRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Ur_msgsSetPayloadRequest value = ReadRos1Ur_msgsSetPayloadRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Ur_msgsSetPayloadRequest(_Codecs.Writer writer, _Ros1Ur_msgsSetPayloadRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        float part0 = value.@mass;
        WriteFloat32(writer, part0);
        _Ros1Geometry_msgsVector3 part1 = value.@center_of_gravity;
        WriteRos1Geometry_msgsVector3(writer, part1);
    }

    private static _Ros1Ur_msgsSetPayloadRequest ReadRos1Ur_msgsSetPayloadRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Ur_msgsSetPayloadRequest();
        value.@mass = ReadFloat32(reader);
        value.@center_of_gravity = ReadRos1Geometry_msgsVector3(reader);
        return value;
    }

    public sealed class _Ros1Ur_msgsSetPayloadResponse
    {
        public bool @success = false;

        public _Ros1Ur_msgsSetPayloadResponse()
        {
        }
    }

    public sealed class Ros1Ur_msgsSetPayloadResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Ur_msgsSetPayloadResponse>
    {
        public static readonly Ros1Ur_msgsSetPayloadResponseCodec Instance = new Ros1Ur_msgsSetPayloadResponseCodec();

        private Ros1Ur_msgsSetPayloadResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "ur_msgs/SetPayloadResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_a3e991f1357f2d3017ccbb7636a6248e8774434d723f5f6c77ff251dd61fce73";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros1Ur_msgsSetPayloadResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Ur_msgsSetPayloadResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Ur_msgsSetPayloadResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Ur_msgsSetPayloadResponse value = ReadRos1Ur_msgsSetPayloadResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Ur_msgsSetPayloadResponse(_Codecs.Writer writer, _Ros1Ur_msgsSetPayloadResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros1Ur_msgsSetPayloadResponse ReadRos1Ur_msgsSetPayloadResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Ur_msgsSetPayloadResponse();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros1Ur_msgsSetSpeedSliderFractionRequest
    {
        public double @speed_slider_fraction = 0;

        public _Ros1Ur_msgsSetSpeedSliderFractionRequest()
        {
        }
    }

    public sealed class Ros1Ur_msgsSetSpeedSliderFractionRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Ur_msgsSetSpeedSliderFractionRequest>
    {
        public static readonly Ros1Ur_msgsSetSpeedSliderFractionRequestCodec Instance = new Ros1Ur_msgsSetSpeedSliderFractionRequestCodec();

        private Ros1Ur_msgsSetSpeedSliderFractionRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "ur_msgs/SetSpeedSliderFractionRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_f192d6d655b2ed7725bf5afe6977a352870abfd4d07e0c3380a09d280a0a0a32";
        public const int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 8;

        public byte[] Encode(_Ros1Ur_msgsSetSpeedSliderFractionRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Ur_msgsSetSpeedSliderFractionRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Ur_msgsSetSpeedSliderFractionRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Ur_msgsSetSpeedSliderFractionRequest value = ReadRos1Ur_msgsSetSpeedSliderFractionRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Ur_msgsSetSpeedSliderFractionRequest(_Codecs.Writer writer, _Ros1Ur_msgsSetSpeedSliderFractionRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        double part0 = value.@speed_slider_fraction;
        writer.Float64(part0);
    }

    private static _Ros1Ur_msgsSetSpeedSliderFractionRequest ReadRos1Ur_msgsSetSpeedSliderFractionRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Ur_msgsSetSpeedSliderFractionRequest();
        value.@speed_slider_fraction = reader.Float64();
        return value;
    }

    public sealed class _Ros1Ur_msgsSetSpeedSliderFractionResponse
    {
        public bool @success = false;

        public _Ros1Ur_msgsSetSpeedSliderFractionResponse()
        {
        }
    }

    public sealed class Ros1Ur_msgsSetSpeedSliderFractionResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Ur_msgsSetSpeedSliderFractionResponse>
    {
        public static readonly Ros1Ur_msgsSetSpeedSliderFractionResponseCodec Instance = new Ros1Ur_msgsSetSpeedSliderFractionResponseCodec();

        private Ros1Ur_msgsSetSpeedSliderFractionResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "ur_msgs/SetSpeedSliderFractionResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_cb08c6758ce2eeeac93bc579d7895b19b84e74b7e2d19d87831023df579288b0";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros1Ur_msgsSetSpeedSliderFractionResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Ur_msgsSetSpeedSliderFractionResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Ur_msgsSetSpeedSliderFractionResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Ur_msgsSetSpeedSliderFractionResponse value = ReadRos1Ur_msgsSetSpeedSliderFractionResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Ur_msgsSetSpeedSliderFractionResponse(_Codecs.Writer writer, _Ros1Ur_msgsSetSpeedSliderFractionResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros1Ur_msgsSetSpeedSliderFractionResponse ReadRos1Ur_msgsSetSpeedSliderFractionResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Ur_msgsSetSpeedSliderFractionResponse();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros1Ur_msgsToolDataMsg
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

        public _Ros1Ur_msgsToolDataMsg()
        {
        }
    }

    public sealed class Ros1Ur_msgsToolDataMsgCodec : global::Uwvm.RosWasm.ICodec<_Ros1Ur_msgsToolDataMsg>
    {
        public static readonly Ros1Ur_msgsToolDataMsgCodec Instance = new Ros1Ur_msgsToolDataMsgCodec();

        private Ros1Ur_msgsToolDataMsgCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "ur_msgs/ToolDataMsg";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_1fad1aba069bc474306dc421a62950ffeb3a0837668f08a9adf41ac1bc2bb390";
        public const int MIN_WIRE_BYTES = 32, MAX_WIRE_BYTES = 32;

        public byte[] Encode(_Ros1Ur_msgsToolDataMsg value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Ur_msgsToolDataMsg(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Ur_msgsToolDataMsg Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Ur_msgsToolDataMsg value = ReadRos1Ur_msgsToolDataMsg(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Ur_msgsToolDataMsg(_Codecs.Writer writer, _Ros1Ur_msgsToolDataMsg value)
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

    private static _Ros1Ur_msgsToolDataMsg ReadRos1Ur_msgsToolDataMsg(_Codecs.Reader reader)
    {
        var value = new _Ros1Ur_msgsToolDataMsg();
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
}
