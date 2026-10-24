// @file BoundedRecords.cs
// @brief Represent complete typed values and their bounded wire layout for nvidia-isaac-sim.
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
        public const string CODEC_IDENTITY = "UWVMROS1_2fe8e1de38676a3880ca61266fb575e3625198e66a1da1708cf8c103cb829cac";
        public const int MIN_WIRE_BYTES = 28, MAX_WIRE_BYTES = 5980;

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
        if(part1 == null || part1.Length > 64)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part1.Length, 4);
        for(int index = 0; index < part1.Length; ++index)
        {
            string element = part1[index];
            WriteText(writer, element, 64);
        }
        double[] part2 = value.@position;
        if(part2 == null || part2.Length > 64)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part2.Length, 4);
        for(int index = 0; index < part2.Length; ++index)
        {
            double element = part2[index];
            writer.Float64(element);
        }
        double[] part3 = value.@velocity;
        if(part3 == null || part3.Length > 64)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part3.Length, 4);
        for(int index = 0; index < part3.Length; ++index)
        {
            double element = part3[index];
            writer.Float64(element);
        }
        double[] part4 = value.@effort;
        if(part4 == null || part4.Length > 64)
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
        value.@name = new string[ReadCount(reader, 64, 4)];
        for(int index = 0; index < value.@name.Length; ++index)
            value.@name[index] = ReadText(reader, 64);
        value.@position = new double[ReadCount(reader, 64, 8)];
        for(int index = 0; index < value.@position.Length; ++index)
            value.@position[index] = reader.Float64();
        value.@velocity = new double[ReadCount(reader, 64, 8)];
        for(int index = 0; index < value.@velocity.Length; ++index)
            value.@velocity[index] = reader.Float64();
        value.@effort = new double[ReadCount(reader, 64, 8)];
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

    public sealed class _Ros2Uwvm_isaac_sim_bridgeMsgClockEvent
    {
        public byte @kind = 0;
        public byte @phase = 0;
        public uint @frame = 0;
        public int @sec = 0;
        public uint @nanosec = 0;

        public _Ros2Uwvm_isaac_sim_bridgeMsgClockEvent()
        {
        }
    }

    public sealed class Ros2Uwvm_isaac_sim_bridgeMsgClockEventCodec : global::Uwvm.RosWasm.ICodec<_Ros2Uwvm_isaac_sim_bridgeMsgClockEvent>
    {
        public static readonly Ros2Uwvm_isaac_sim_bridgeMsgClockEventCodec Instance = new Ros2Uwvm_isaac_sim_bridgeMsgClockEventCodec();

        private Ros2Uwvm_isaac_sim_bridgeMsgClockEventCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "uwvm_isaac_sim_bridge/msg/ClockEvent";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_78b31f4b219f55bd576134f1b561194cb09c8ec0ac8dedafddd9b03ba6a198d6";
        public const int MIN_WIRE_BYTES = 14, MAX_WIRE_BYTES = 14;

        public byte[] Encode(_Ros2Uwvm_isaac_sim_bridgeMsgClockEvent value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Uwvm_isaac_sim_bridgeMsgClockEvent(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Uwvm_isaac_sim_bridgeMsgClockEvent Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Uwvm_isaac_sim_bridgeMsgClockEvent value = ReadRos2Uwvm_isaac_sim_bridgeMsgClockEvent(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Uwvm_isaac_sim_bridgeMsgClockEvent(_Codecs.Writer writer, _Ros2Uwvm_isaac_sim_bridgeMsgClockEvent value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        byte part0 = value.@kind;
        writer.Unsigned(part0, 1);
        byte part1 = value.@phase;
        writer.Unsigned(part1, 1);
        uint part2 = value.@frame;
        writer.Unsigned(part2, 4);
        int part3 = value.@sec;
        writer.Unsigned(unchecked((uint)part3), 4);
        uint part4 = value.@nanosec;
        writer.Unsigned(part4, 4);
    }

    private static _Ros2Uwvm_isaac_sim_bridgeMsgClockEvent ReadRos2Uwvm_isaac_sim_bridgeMsgClockEvent(_Codecs.Reader reader)
    {
        var value = new _Ros2Uwvm_isaac_sim_bridgeMsgClockEvent();
        value.@kind = unchecked((byte)reader.Unsigned(1));
        value.@phase = unchecked((byte)reader.Unsigned(1));
        value.@frame = unchecked((uint)reader.Unsigned(4));
        value.@sec = unchecked((int)reader.Unsigned(4));
        value.@nanosec = unchecked((uint)reader.Unsigned(4));
        return value;
    }

    public sealed class _Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request
    {
        public byte @operation = 0;
        public ulong @session_nonce = 0;
        public uint @request_sequence = 0;
        public byte @phase = 0;
        public uint @frame = 0;
        public bool @impulse = false;
        public bool @extra_update = false;
        public ushort @pacing_milliseconds = 0;

        public _Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request()
        {
        }
    }

    public sealed class Ros2Uwvm_isaac_sim_bridgeSrvClockControl_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request>
    {
        public static readonly Ros2Uwvm_isaac_sim_bridgeSrvClockControl_RequestCodec Instance = new Ros2Uwvm_isaac_sim_bridgeSrvClockControl_RequestCodec();

        private Ros2Uwvm_isaac_sim_bridgeSrvClockControl_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "uwvm_isaac_sim_bridge/srv/ClockControl_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_8957fd758c2793d355e7356df436ea644a5d5da7ad7e2d179ed4d09936351b19";
        public const int MIN_WIRE_BYTES = 22, MAX_WIRE_BYTES = 22;

        public byte[] Encode(_Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Uwvm_isaac_sim_bridgeSrvClockControl_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request value = ReadRos2Uwvm_isaac_sim_bridgeSrvClockControl_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Uwvm_isaac_sim_bridgeSrvClockControl_Request(_Codecs.Writer writer, _Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        byte part0 = value.@operation;
        writer.Unsigned(part0, 1);
        ulong part1 = value.@session_nonce;
        writer.Unsigned(part1, 8);
        uint part2 = value.@request_sequence;
        writer.Unsigned(part2, 4);
        byte part3 = value.@phase;
        writer.Unsigned(part3, 1);
        uint part4 = value.@frame;
        writer.Unsigned(part4, 4);
        bool part5 = value.@impulse;
        writer.Unsigned(part5 ? 1UL : 0UL, 1);
        bool part6 = value.@extra_update;
        writer.Unsigned(part6 ? 1UL : 0UL, 1);
        ushort part7 = value.@pacing_milliseconds;
        writer.Unsigned(part7, 2);
    }

    private static _Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request ReadRos2Uwvm_isaac_sim_bridgeSrvClockControl_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request();
        value.@operation = unchecked((byte)reader.Unsigned(1));
        value.@session_nonce = unchecked((ulong)reader.Unsigned(8));
        value.@request_sequence = unchecked((uint)reader.Unsigned(4));
        value.@phase = unchecked((byte)reader.Unsigned(1));
        value.@frame = unchecked((uint)reader.Unsigned(4));
        value.@impulse = ReadBool(reader);
        value.@extra_update = ReadBool(reader);
        value.@pacing_milliseconds = unchecked((ushort)reader.Unsigned(2));
        return value;
    }

    public sealed class _Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response
    {
        public uint @status = 0;
        public ulong @session_nonce = 0;
        public uint @request_sequence = 0;
        public byte @state = 0;
        public ulong @actual_app_updates = 0;
        public uint @completed_steps = 0;
        public bool @has_event = false;
        public _Ros2Uwvm_isaac_sim_bridgeMsgClockEvent @event = new _Ros2Uwvm_isaac_sim_bridgeMsgClockEvent();
        public uint @cleanup_status = 0;

        public _Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response()
        {
        }
    }

    public sealed class Ros2Uwvm_isaac_sim_bridgeSrvClockControl_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response>
    {
        public static readonly Ros2Uwvm_isaac_sim_bridgeSrvClockControl_ResponseCodec Instance = new Ros2Uwvm_isaac_sim_bridgeSrvClockControl_ResponseCodec();

        private Ros2Uwvm_isaac_sim_bridgeSrvClockControl_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "uwvm_isaac_sim_bridge/srv/ClockControl_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_3b7763445df65d2a26fb54bfe6d41984008b33253cd7a614f5f057832d909502";
        public const int MIN_WIRE_BYTES = 48, MAX_WIRE_BYTES = 48;

        public byte[] Encode(_Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Uwvm_isaac_sim_bridgeSrvClockControl_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response value = ReadRos2Uwvm_isaac_sim_bridgeSrvClockControl_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Uwvm_isaac_sim_bridgeSrvClockControl_Response(_Codecs.Writer writer, _Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        uint part0 = value.@status;
        writer.Unsigned(part0, 4);
        ulong part1 = value.@session_nonce;
        writer.Unsigned(part1, 8);
        uint part2 = value.@request_sequence;
        writer.Unsigned(part2, 4);
        byte part3 = value.@state;
        writer.Unsigned(part3, 1);
        ulong part4 = value.@actual_app_updates;
        writer.Unsigned(part4, 8);
        uint part5 = value.@completed_steps;
        writer.Unsigned(part5, 4);
        bool part6 = value.@has_event;
        writer.Unsigned(part6 ? 1UL : 0UL, 1);
        _Ros2Uwvm_isaac_sim_bridgeMsgClockEvent part7 = value.@event;
        WriteRos2Uwvm_isaac_sim_bridgeMsgClockEvent(writer, part7);
        uint part8 = value.@cleanup_status;
        writer.Unsigned(part8, 4);
    }

    private static _Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response ReadRos2Uwvm_isaac_sim_bridgeSrvClockControl_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response();
        value.@status = unchecked((uint)reader.Unsigned(4));
        value.@session_nonce = unchecked((ulong)reader.Unsigned(8));
        value.@request_sequence = unchecked((uint)reader.Unsigned(4));
        value.@state = unchecked((byte)reader.Unsigned(1));
        value.@actual_app_updates = unchecked((ulong)reader.Unsigned(8));
        value.@completed_steps = unchecked((uint)reader.Unsigned(4));
        value.@has_event = ReadBool(reader);
        value.@event = ReadRos2Uwvm_isaac_sim_bridgeMsgClockEvent(reader);
        value.@cleanup_status = unchecked((uint)reader.Unsigned(4));
        return value;
    }
}
