/**
 * @file BoundedRecords.cs
 * @brief Full agibot csharp codecs and original record metadata.
 * @details Complete agibot ros2_sdk_v1_0_0_rl values in csharp. 19 original records retain 71 fields and 19
 * interface descriptions. Scalar widths, bounds, units, defaults and identities follow the pinned native
 * definitions. Encoding is local; compiler, guest and native ROS acceptance require separate receipts. See the
 * profile API manual under document/platform/agibot/en_US/catalog/.
 */
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

    public sealed class _Ros2Aimdk_msgsMsgRequestHeader
    {
        public _Ros2Builtin_interfacesMsgTime @stamp = new _Ros2Builtin_interfacesMsgTime();

        public _Ros2Aimdk_msgsMsgRequestHeader()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsMsgRequestHeaderCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsMsgRequestHeader>
    {
        public static readonly Ros2Aimdk_msgsMsgRequestHeaderCodec Instance = new Ros2Aimdk_msgsMsgRequestHeaderCodec();

        private Ros2Aimdk_msgsMsgRequestHeaderCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/msg/RequestHeader";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_743efde912144cd1db5072b5a1d26b943c3fb882612b07c1883400784947b000";
        public const int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 8;

        public byte[] Encode(_Ros2Aimdk_msgsMsgRequestHeader value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsMsgRequestHeader(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsMsgRequestHeader Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsMsgRequestHeader value = ReadRos2Aimdk_msgsMsgRequestHeader(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsMsgRequestHeader(_Codecs.Writer writer, _Ros2Aimdk_msgsMsgRequestHeader value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Builtin_interfacesMsgTime part0 = value.@stamp;
        WriteRos2Builtin_interfacesMsgTime(writer, part0);
    }

    private static _Ros2Aimdk_msgsMsgRequestHeader ReadRos2Aimdk_msgsMsgRequestHeader(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsMsgRequestHeader();
        value.@stamp = ReadRos2Builtin_interfacesMsgTime(reader);
        return value;
    }

    public sealed class _Ros2Aimdk_msgsMsgCommonRequest
    {
        public _Ros2Aimdk_msgsMsgRequestHeader @header = new _Ros2Aimdk_msgsMsgRequestHeader();

        public _Ros2Aimdk_msgsMsgCommonRequest()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsMsgCommonRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsMsgCommonRequest>
    {
        public static readonly Ros2Aimdk_msgsMsgCommonRequestCodec Instance = new Ros2Aimdk_msgsMsgCommonRequestCodec();

        private Ros2Aimdk_msgsMsgCommonRequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/msg/CommonRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_d4dd21dc3b43faa42396e4c4aa0f1ad35a507b6bd313f5d197268e79d67dd9d7";
        public const int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 8;

        public byte[] Encode(_Ros2Aimdk_msgsMsgCommonRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsMsgCommonRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsMsgCommonRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsMsgCommonRequest value = ReadRos2Aimdk_msgsMsgCommonRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsMsgCommonRequest(_Codecs.Writer writer, _Ros2Aimdk_msgsMsgCommonRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Aimdk_msgsMsgRequestHeader part0 = value.@header;
        WriteRos2Aimdk_msgsMsgRequestHeader(writer, part0);
    }

    private static _Ros2Aimdk_msgsMsgCommonRequest ReadRos2Aimdk_msgsMsgCommonRequest(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsMsgCommonRequest();
        value.@header = ReadRos2Aimdk_msgsMsgRequestHeader(reader);
        return value;
    }

    public sealed class _Ros2Aimdk_msgsMsgResponseHeader
    {
        public _Ros2Builtin_interfacesMsgTime @stamp = new _Ros2Builtin_interfacesMsgTime();
        public long @code = 0;

        public _Ros2Aimdk_msgsMsgResponseHeader()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsMsgResponseHeaderCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsMsgResponseHeader>
    {
        public static readonly Ros2Aimdk_msgsMsgResponseHeaderCodec Instance = new Ros2Aimdk_msgsMsgResponseHeaderCodec();

        private Ros2Aimdk_msgsMsgResponseHeaderCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/msg/ResponseHeader";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_1aff5b9cfbca54f9091a6295e28034b45d22481e0dbd8a75b1759cda18b57b90";
        public const int MIN_WIRE_BYTES = 16, MAX_WIRE_BYTES = 16;

        public byte[] Encode(_Ros2Aimdk_msgsMsgResponseHeader value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsMsgResponseHeader(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsMsgResponseHeader Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsMsgResponseHeader value = ReadRos2Aimdk_msgsMsgResponseHeader(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsMsgResponseHeader(_Codecs.Writer writer, _Ros2Aimdk_msgsMsgResponseHeader value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Builtin_interfacesMsgTime part0 = value.@stamp;
        WriteRos2Builtin_interfacesMsgTime(writer, part0);
        long part1 = value.@code;
        writer.Unsigned(unchecked((ulong)part1), 8);
    }

    private static _Ros2Aimdk_msgsMsgResponseHeader ReadRos2Aimdk_msgsMsgResponseHeader(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsMsgResponseHeader();
        value.@stamp = ReadRos2Builtin_interfacesMsgTime(reader);
        value.@code = unchecked((long)reader.Unsigned(8));
        return value;
    }

    public sealed class _Ros2Aimdk_msgsMsgCommonState
    {
        public int @value = 0;

        public _Ros2Aimdk_msgsMsgCommonState()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsMsgCommonStateCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsMsgCommonState>
    {
        public static readonly Ros2Aimdk_msgsMsgCommonStateCodec Instance = new Ros2Aimdk_msgsMsgCommonStateCodec();

        private Ros2Aimdk_msgsMsgCommonStateCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/msg/CommonState";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_263f2829cf13b7b12ceda8109834fa333d2da5828cd7a302a1818c044be4699e";
        public const int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 4;

        public byte[] Encode(_Ros2Aimdk_msgsMsgCommonState value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsMsgCommonState(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsMsgCommonState Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsMsgCommonState value = ReadRos2Aimdk_msgsMsgCommonState(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsMsgCommonState(_Codecs.Writer writer, _Ros2Aimdk_msgsMsgCommonState value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        int part0 = value.@value;
        writer.Unsigned(unchecked((uint)part0), 4);
    }

    private static _Ros2Aimdk_msgsMsgCommonState ReadRos2Aimdk_msgsMsgCommonState(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsMsgCommonState();
        value.@value = unchecked((int)reader.Unsigned(4));
        return value;
    }

    public sealed class _Ros2Aimdk_msgsMsgCommonResponse
    {
        public _Ros2Aimdk_msgsMsgResponseHeader @header = new _Ros2Aimdk_msgsMsgResponseHeader();
        public _Ros2Aimdk_msgsMsgCommonState @status = new _Ros2Aimdk_msgsMsgCommonState();
        public string @message = "";

        public _Ros2Aimdk_msgsMsgCommonResponse()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsMsgCommonResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsMsgCommonResponse>
    {
        public static readonly Ros2Aimdk_msgsMsgCommonResponseCodec Instance = new Ros2Aimdk_msgsMsgCommonResponseCodec();

        private Ros2Aimdk_msgsMsgCommonResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/msg/CommonResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_03f4cf42f82eef5064c9b0563dcfe07bb9e918e8a8d81e71c4d89490bf66afb6";
        public const int MIN_WIRE_BYTES = 24, MAX_WIRE_BYTES = 152;

        public byte[] Encode(_Ros2Aimdk_msgsMsgCommonResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsMsgCommonResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsMsgCommonResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsMsgCommonResponse value = ReadRos2Aimdk_msgsMsgCommonResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsMsgCommonResponse(_Codecs.Writer writer, _Ros2Aimdk_msgsMsgCommonResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Aimdk_msgsMsgResponseHeader part0 = value.@header;
        WriteRos2Aimdk_msgsMsgResponseHeader(writer, part0);
        _Ros2Aimdk_msgsMsgCommonState part1 = value.@status;
        WriteRos2Aimdk_msgsMsgCommonState(writer, part1);
        string part2 = value.@message;
        WriteText(writer, part2, 128);
    }

    private static _Ros2Aimdk_msgsMsgCommonResponse ReadRos2Aimdk_msgsMsgCommonResponse(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsMsgCommonResponse();
        value.@header = ReadRos2Aimdk_msgsMsgResponseHeader(reader);
        value.@status = ReadRos2Aimdk_msgsMsgCommonState(reader);
        value.@message = ReadText(reader, 128);
        return value;
    }

    public sealed class _Ros2Aimdk_msgsMsgCommonTaskResponse
    {
        public _Ros2Aimdk_msgsMsgResponseHeader @header = new _Ros2Aimdk_msgsMsgResponseHeader();
        public ulong @task_id = 0;
        public _Ros2Aimdk_msgsMsgCommonState @state = new _Ros2Aimdk_msgsMsgCommonState();

        public _Ros2Aimdk_msgsMsgCommonTaskResponse()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsMsgCommonTaskResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsMsgCommonTaskResponse>
    {
        public static readonly Ros2Aimdk_msgsMsgCommonTaskResponseCodec Instance = new Ros2Aimdk_msgsMsgCommonTaskResponseCodec();

        private Ros2Aimdk_msgsMsgCommonTaskResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/msg/CommonTaskResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_6e0f13b88f5320fecc86125c92ef073379d31a439c1b8de3a87466c98f1b9ae2";
        public const int MIN_WIRE_BYTES = 28, MAX_WIRE_BYTES = 28;

        public byte[] Encode(_Ros2Aimdk_msgsMsgCommonTaskResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsMsgCommonTaskResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsMsgCommonTaskResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsMsgCommonTaskResponse value = ReadRos2Aimdk_msgsMsgCommonTaskResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsMsgCommonTaskResponse(_Codecs.Writer writer, _Ros2Aimdk_msgsMsgCommonTaskResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Aimdk_msgsMsgResponseHeader part0 = value.@header;
        WriteRos2Aimdk_msgsMsgResponseHeader(writer, part0);
        ulong part1 = value.@task_id;
        writer.Unsigned(part1, 8);
        _Ros2Aimdk_msgsMsgCommonState part2 = value.@state;
        WriteRos2Aimdk_msgsMsgCommonState(writer, part2);
    }

    private static _Ros2Aimdk_msgsMsgCommonTaskResponse ReadRos2Aimdk_msgsMsgCommonTaskResponse(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsMsgCommonTaskResponse();
        value.@header = ReadRos2Aimdk_msgsMsgResponseHeader(reader);
        value.@task_id = unchecked((ulong)reader.Unsigned(8));
        value.@state = ReadRos2Aimdk_msgsMsgCommonState(reader);
        return value;
    }

    public sealed class _Ros2Aimdk_msgsMsgDomainErrorState
    {
        public byte @value = 0;

        public _Ros2Aimdk_msgsMsgDomainErrorState()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsMsgDomainErrorStateCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsMsgDomainErrorState>
    {
        public static readonly Ros2Aimdk_msgsMsgDomainErrorStateCodec Instance = new Ros2Aimdk_msgsMsgDomainErrorStateCodec();

        private Ros2Aimdk_msgsMsgDomainErrorStateCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/msg/DomainErrorState";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_b8ba44e26d3df3c4c71f1ca9d4e91e967c8d8e1d95042ac7433a9a3294e9e231";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros2Aimdk_msgsMsgDomainErrorState value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsMsgDomainErrorState(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsMsgDomainErrorState Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsMsgDomainErrorState value = ReadRos2Aimdk_msgsMsgDomainErrorState(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsMsgDomainErrorState(_Codecs.Writer writer, _Ros2Aimdk_msgsMsgDomainErrorState value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        byte part0 = value.@value;
        writer.Unsigned(part0, 1);
    }

    private static _Ros2Aimdk_msgsMsgDomainErrorState ReadRos2Aimdk_msgsMsgDomainErrorState(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsMsgDomainErrorState();
        value.@value = unchecked((byte)reader.Unsigned(1));
        return value;
    }

    public sealed class _Ros2Aimdk_msgsMsgJointCommand
    {
        public string @name = "";
        public double @position = 0;
        public double @velocity = 0;
        public double @effort = 0;
        public double @stiffness = 0;
        public double @damping = 0;

        public _Ros2Aimdk_msgsMsgJointCommand()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsMsgJointCommandCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsMsgJointCommand>
    {
        public static readonly Ros2Aimdk_msgsMsgJointCommandCodec Instance = new Ros2Aimdk_msgsMsgJointCommandCodec();

        private Ros2Aimdk_msgsMsgJointCommandCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/msg/JointCommand";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_32c4e24dc7ea567136fc811efc68eea5b8d1072a5ed58e1c4b67b4d705a9fc3f";
        public const int MIN_WIRE_BYTES = 44, MAX_WIRE_BYTES = 172;

        public byte[] Encode(_Ros2Aimdk_msgsMsgJointCommand value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsMsgJointCommand(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsMsgJointCommand Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsMsgJointCommand value = ReadRos2Aimdk_msgsMsgJointCommand(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsMsgJointCommand(_Codecs.Writer writer, _Ros2Aimdk_msgsMsgJointCommand value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        string part0 = value.@name;
        WriteText(writer, part0, 128);
        double part1 = value.@position;
        writer.Float64(part1);
        double part2 = value.@velocity;
        writer.Float64(part2);
        double part3 = value.@effort;
        writer.Float64(part3);
        double part4 = value.@stiffness;
        writer.Float64(part4);
        double part5 = value.@damping;
        writer.Float64(part5);
    }

    private static _Ros2Aimdk_msgsMsgJointCommand ReadRos2Aimdk_msgsMsgJointCommand(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsMsgJointCommand();
        value.@name = ReadText(reader, 128);
        value.@position = reader.Float64();
        value.@velocity = reader.Float64();
        value.@effort = reader.Float64();
        value.@stiffness = reader.Float64();
        value.@damping = reader.Float64();
        return value;
    }

    public sealed class _Ros2Aimdk_msgsMsgMessageHeader
    {
        public _Ros2Builtin_interfacesMsgTime @stamp = new _Ros2Builtin_interfacesMsgTime();
        public string @frame_id = "";
        public uint @sequence = 0;
        public _Ros2Builtin_interfacesMsgTime @meas_stamp = new _Ros2Builtin_interfacesMsgTime();

        public _Ros2Aimdk_msgsMsgMessageHeader()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsMsgMessageHeaderCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsMsgMessageHeader>
    {
        public static readonly Ros2Aimdk_msgsMsgMessageHeaderCodec Instance = new Ros2Aimdk_msgsMsgMessageHeaderCodec();

        private Ros2Aimdk_msgsMsgMessageHeaderCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/msg/MessageHeader";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_6d8d9a27611d419d618f848c44ebe2c30d5393995d1f4fa7ecd70c34ded52496";
        public const int MIN_WIRE_BYTES = 24, MAX_WIRE_BYTES = 152;

        public byte[] Encode(_Ros2Aimdk_msgsMsgMessageHeader value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsMsgMessageHeader(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsMsgMessageHeader Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsMsgMessageHeader value = ReadRos2Aimdk_msgsMsgMessageHeader(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsMsgMessageHeader(_Codecs.Writer writer, _Ros2Aimdk_msgsMsgMessageHeader value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Builtin_interfacesMsgTime part0 = value.@stamp;
        WriteRos2Builtin_interfacesMsgTime(writer, part0);
        string part1 = value.@frame_id;
        WriteText(writer, part1, 128);
        uint part2 = value.@sequence;
        writer.Unsigned(part2, 4);
        _Ros2Builtin_interfacesMsgTime part3 = value.@meas_stamp;
        WriteRos2Builtin_interfacesMsgTime(writer, part3);
    }

    private static _Ros2Aimdk_msgsMsgMessageHeader ReadRos2Aimdk_msgsMsgMessageHeader(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsMsgMessageHeader();
        value.@stamp = ReadRos2Builtin_interfacesMsgTime(reader);
        value.@frame_id = ReadText(reader, 128);
        value.@sequence = unchecked((uint)reader.Unsigned(4));
        value.@meas_stamp = ReadRos2Builtin_interfacesMsgTime(reader);
        return value;
    }

    public sealed class _Ros2Aimdk_msgsMsgJointCommandArray
    {
        public _Ros2Aimdk_msgsMsgMessageHeader @header = new _Ros2Aimdk_msgsMsgMessageHeader();
        public _Ros2Aimdk_msgsMsgJointCommand[] @joints = new _Ros2Aimdk_msgsMsgJointCommand[0];

        public _Ros2Aimdk_msgsMsgJointCommandArray()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsMsgJointCommandArrayCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsMsgJointCommandArray>
    {
        public static readonly Ros2Aimdk_msgsMsgJointCommandArrayCodec Instance = new Ros2Aimdk_msgsMsgJointCommandArrayCodec();

        private Ros2Aimdk_msgsMsgJointCommandArrayCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/msg/JointCommandArray";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_b8f8d9b00f02524cfdd21f81d7e683290e92ba0b00d086d4506fd3600123d9d6";
        public const int MIN_WIRE_BYTES = 28, MAX_WIRE_BYTES = 11164;

        public byte[] Encode(_Ros2Aimdk_msgsMsgJointCommandArray value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsMsgJointCommandArray(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsMsgJointCommandArray Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsMsgJointCommandArray value = ReadRos2Aimdk_msgsMsgJointCommandArray(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsMsgJointCommandArray(_Codecs.Writer writer, _Ros2Aimdk_msgsMsgJointCommandArray value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Aimdk_msgsMsgMessageHeader part0 = value.@header;
        WriteRos2Aimdk_msgsMsgMessageHeader(writer, part0);
        _Ros2Aimdk_msgsMsgJointCommand[] part1 = value.@joints;
        if(part1 == null || part1.Length > 64)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part1.Length, 4);
        for(int index = 0; index < part1.Length; ++index)
        {
            _Ros2Aimdk_msgsMsgJointCommand element = part1[index];
            WriteRos2Aimdk_msgsMsgJointCommand(writer, element);
        }
    }

    private static _Ros2Aimdk_msgsMsgJointCommandArray ReadRos2Aimdk_msgsMsgJointCommandArray(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsMsgJointCommandArray();
        value.@header = ReadRos2Aimdk_msgsMsgMessageHeader(reader);
        value.@joints = new _Ros2Aimdk_msgsMsgJointCommand[ReadCount(reader, 64, 44)];
        for(int index = 0; index < value.@joints.Length; ++index)
            value.@joints[index] = ReadRos2Aimdk_msgsMsgJointCommand(reader);
        return value;
    }

    public sealed class _Ros2Aimdk_msgsMsgJointState
    {
        public string @name = "";
        public double @position = 0;
        public double @velocity = 0;
        public double @effort = 0;
        public ushort @error_code = 0;

        public _Ros2Aimdk_msgsMsgJointState()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsMsgJointStateCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsMsgJointState>
    {
        public static readonly Ros2Aimdk_msgsMsgJointStateCodec Instance = new Ros2Aimdk_msgsMsgJointStateCodec();

        private Ros2Aimdk_msgsMsgJointStateCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/msg/JointState";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_00a7d9637f691d224a78c967343dd16161b29e12ca6f9fafadc0af5d7e405a53";
        public const int MIN_WIRE_BYTES = 30, MAX_WIRE_BYTES = 158;

        public byte[] Encode(_Ros2Aimdk_msgsMsgJointState value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsMsgJointState(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsMsgJointState Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsMsgJointState value = ReadRos2Aimdk_msgsMsgJointState(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsMsgJointState(_Codecs.Writer writer, _Ros2Aimdk_msgsMsgJointState value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        string part0 = value.@name;
        WriteText(writer, part0, 128);
        double part1 = value.@position;
        writer.Float64(part1);
        double part2 = value.@velocity;
        writer.Float64(part2);
        double part3 = value.@effort;
        writer.Float64(part3);
        ushort part4 = value.@error_code;
        writer.Unsigned(part4, 2);
    }

    private static _Ros2Aimdk_msgsMsgJointState ReadRos2Aimdk_msgsMsgJointState(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsMsgJointState();
        value.@name = ReadText(reader, 128);
        value.@position = reader.Float64();
        value.@velocity = reader.Float64();
        value.@effort = reader.Float64();
        value.@error_code = unchecked((ushort)reader.Unsigned(2));
        return value;
    }

    public sealed class _Ros2Aimdk_msgsMsgJointStateArray
    {
        public _Ros2Aimdk_msgsMsgMessageHeader @header = new _Ros2Aimdk_msgsMsgMessageHeader();
        public _Ros2Aimdk_msgsMsgDomainErrorState @state = new _Ros2Aimdk_msgsMsgDomainErrorState();
        public _Ros2Aimdk_msgsMsgJointState[] @joints = new _Ros2Aimdk_msgsMsgJointState[0];

        public _Ros2Aimdk_msgsMsgJointStateArray()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsMsgJointStateArrayCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsMsgJointStateArray>
    {
        public static readonly Ros2Aimdk_msgsMsgJointStateArrayCodec Instance = new Ros2Aimdk_msgsMsgJointStateArrayCodec();

        private Ros2Aimdk_msgsMsgJointStateArrayCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/msg/JointStateArray";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_4768076ae2f8c344f4030e7ca926d311e7706042187a2f9864a8a63f289f297e";
        public const int MIN_WIRE_BYTES = 29, MAX_WIRE_BYTES = 10269;

        public byte[] Encode(_Ros2Aimdk_msgsMsgJointStateArray value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsMsgJointStateArray(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsMsgJointStateArray Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsMsgJointStateArray value = ReadRos2Aimdk_msgsMsgJointStateArray(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsMsgJointStateArray(_Codecs.Writer writer, _Ros2Aimdk_msgsMsgJointStateArray value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Aimdk_msgsMsgMessageHeader part0 = value.@header;
        WriteRos2Aimdk_msgsMsgMessageHeader(writer, part0);
        _Ros2Aimdk_msgsMsgDomainErrorState part1 = value.@state;
        WriteRos2Aimdk_msgsMsgDomainErrorState(writer, part1);
        _Ros2Aimdk_msgsMsgJointState[] part2 = value.@joints;
        if(part2 == null || part2.Length > 64)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part2.Length, 4);
        for(int index = 0; index < part2.Length; ++index)
        {
            _Ros2Aimdk_msgsMsgJointState element = part2[index];
            WriteRos2Aimdk_msgsMsgJointState(writer, element);
        }
    }

    private static _Ros2Aimdk_msgsMsgJointStateArray ReadRos2Aimdk_msgsMsgJointStateArray(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsMsgJointStateArray();
        value.@header = ReadRos2Aimdk_msgsMsgMessageHeader(reader);
        value.@state = ReadRos2Aimdk_msgsMsgDomainErrorState(reader);
        value.@joints = new _Ros2Aimdk_msgsMsgJointState[ReadCount(reader, 64, 30)];
        for(int index = 0; index < value.@joints.Length; ++index)
            value.@joints[index] = ReadRos2Aimdk_msgsMsgJointState(reader);
        return value;
    }

    public sealed class _Ros2Aimdk_msgsMsgModuleChannelInfo
    {
        public string @name = "";
        public string @type = "";
        public double @frequency = 0;
        public double @min_time_diff = 0;
        public double @max_time_diff = 0;
        public double @std_dev = 0;
        public int @window_size = 0;
        public double @timeout_threshold = 0;
        public bool @is_active = false;
        public bool @is_timeout = false;
        public string[] @backends = new string[0];

        public _Ros2Aimdk_msgsMsgModuleChannelInfo()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsMsgModuleChannelInfoCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsMsgModuleChannelInfo>
    {
        public static readonly Ros2Aimdk_msgsMsgModuleChannelInfoCodec Instance = new Ros2Aimdk_msgsMsgModuleChannelInfoCodec();

        private Ros2Aimdk_msgsMsgModuleChannelInfoCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/msg/ModuleChannelInfo";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_d6cfacaf7cd28f18d14ef270b868b354e896f937181c8d29279e1eac21990696";
        public const int MIN_WIRE_BYTES = 58, MAX_WIRE_BYTES = 586;

        public byte[] Encode(_Ros2Aimdk_msgsMsgModuleChannelInfo value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsMsgModuleChannelInfo(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsMsgModuleChannelInfo Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsMsgModuleChannelInfo value = ReadRos2Aimdk_msgsMsgModuleChannelInfo(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsMsgModuleChannelInfo(_Codecs.Writer writer, _Ros2Aimdk_msgsMsgModuleChannelInfo value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        string part0 = value.@name;
        WriteText(writer, part0, 128);
        string part1 = value.@type;
        WriteText(writer, part1, 128);
        double part2 = value.@frequency;
        writer.Float64(part2);
        double part3 = value.@min_time_diff;
        writer.Float64(part3);
        double part4 = value.@max_time_diff;
        writer.Float64(part4);
        double part5 = value.@std_dev;
        writer.Float64(part5);
        int part6 = value.@window_size;
        writer.Unsigned(unchecked((uint)part6), 4);
        double part7 = value.@timeout_threshold;
        writer.Float64(part7);
        bool part8 = value.@is_active;
        writer.Unsigned(part8 ? 1UL : 0UL, 1);
        bool part9 = value.@is_timeout;
        writer.Unsigned(part9 ? 1UL : 0UL, 1);
        string[] part10 = value.@backends;
        if(part10 == null || part10.Length > 4)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part10.Length, 4);
        for(int index = 0; index < part10.Length; ++index)
        {
            string element = part10[index];
            WriteText(writer, element, 64);
        }
    }

    private static _Ros2Aimdk_msgsMsgModuleChannelInfo ReadRos2Aimdk_msgsMsgModuleChannelInfo(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsMsgModuleChannelInfo();
        value.@name = ReadText(reader, 128);
        value.@type = ReadText(reader, 128);
        value.@frequency = reader.Float64();
        value.@min_time_diff = reader.Float64();
        value.@max_time_diff = reader.Float64();
        value.@std_dev = reader.Float64();
        value.@window_size = unchecked((int)reader.Unsigned(4));
        value.@timeout_threshold = reader.Float64();
        value.@is_active = ReadBool(reader);
        value.@is_timeout = ReadBool(reader);
        value.@backends = new string[ReadCount(reader, 4, 4)];
        for(int index = 0; index < value.@backends.Length; ++index)
            value.@backends[index] = ReadText(reader, 64);
        return value;
    }

    public sealed class _Ros2Aimdk_msgsMsgModuleRpcInfo
    {
        public string @name = "";
        public string @req_type = "";
        public string @res_type = "";
        public string[] @backends = new string[0];

        public _Ros2Aimdk_msgsMsgModuleRpcInfo()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsMsgModuleRpcInfoCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsMsgModuleRpcInfo>
    {
        public static readonly Ros2Aimdk_msgsMsgModuleRpcInfoCodec Instance = new Ros2Aimdk_msgsMsgModuleRpcInfoCodec();

        private Ros2Aimdk_msgsMsgModuleRpcInfoCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/msg/ModuleRpcInfo";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_e06e5cd98eaa4f17cebd95db53f6aa175cdc3682f3912f365947f8f8950d02d8";
        public const int MIN_WIRE_BYTES = 16, MAX_WIRE_BYTES = 672;

        public byte[] Encode(_Ros2Aimdk_msgsMsgModuleRpcInfo value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsMsgModuleRpcInfo(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsMsgModuleRpcInfo Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsMsgModuleRpcInfo value = ReadRos2Aimdk_msgsMsgModuleRpcInfo(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsMsgModuleRpcInfo(_Codecs.Writer writer, _Ros2Aimdk_msgsMsgModuleRpcInfo value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        string part0 = value.@name;
        WriteText(writer, part0, 128);
        string part1 = value.@req_type;
        WriteText(writer, part1, 128);
        string part2 = value.@res_type;
        WriteText(writer, part2, 128);
        string[] part3 = value.@backends;
        if(part3 == null || part3.Length > 4)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part3.Length, 4);
        for(int index = 0; index < part3.Length; ++index)
        {
            string element = part3[index];
            WriteText(writer, element, 64);
        }
    }

    private static _Ros2Aimdk_msgsMsgModuleRpcInfo ReadRos2Aimdk_msgsMsgModuleRpcInfo(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsMsgModuleRpcInfo();
        value.@name = ReadText(reader, 128);
        value.@req_type = ReadText(reader, 128);
        value.@res_type = ReadText(reader, 128);
        value.@backends = new string[ReadCount(reader, 4, 4)];
        for(int index = 0; index < value.@backends.Length; ++index)
            value.@backends[index] = ReadText(reader, 64);
        return value;
    }

    public sealed class _Ros2Aimdk_msgsMsgModuleResourceInfo
    {
        public string @module_name = "";
        public _Ros2Aimdk_msgsMsgModuleRpcInfo[] @rpc_clients = new _Ros2Aimdk_msgsMsgModuleRpcInfo[0];
        public _Ros2Aimdk_msgsMsgModuleRpcInfo[] @rpc_services = new _Ros2Aimdk_msgsMsgModuleRpcInfo[0];
        public _Ros2Aimdk_msgsMsgModuleChannelInfo[] @pub_channels = new _Ros2Aimdk_msgsMsgModuleChannelInfo[0];
        public _Ros2Aimdk_msgsMsgModuleChannelInfo[] @sub_channels = new _Ros2Aimdk_msgsMsgModuleChannelInfo[0];

        public _Ros2Aimdk_msgsMsgModuleResourceInfo()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsMsgModuleResourceInfoCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsMsgModuleResourceInfo>
    {
        public static readonly Ros2Aimdk_msgsMsgModuleResourceInfoCodec Instance = new Ros2Aimdk_msgsMsgModuleResourceInfoCodec();

        private Ros2Aimdk_msgsMsgModuleResourceInfoCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/msg/ModuleResourceInfo";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_de2a3067e5bff40e7bd9949ce9923b6be34c8f822f74a036402a9253717aaa8f";
        public const int MIN_WIRE_BYTES = 20, MAX_WIRE_BYTES = 5180;

        public byte[] Encode(_Ros2Aimdk_msgsMsgModuleResourceInfo value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsMsgModuleResourceInfo(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsMsgModuleResourceInfo Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsMsgModuleResourceInfo value = ReadRos2Aimdk_msgsMsgModuleResourceInfo(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsMsgModuleResourceInfo(_Codecs.Writer writer, _Ros2Aimdk_msgsMsgModuleResourceInfo value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        string part0 = value.@module_name;
        WriteText(writer, part0, 128);
        _Ros2Aimdk_msgsMsgModuleRpcInfo[] part1 = value.@rpc_clients;
        if(part1 == null || part1.Length > 2)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part1.Length, 4);
        for(int index = 0; index < part1.Length; ++index)
        {
            _Ros2Aimdk_msgsMsgModuleRpcInfo element = part1[index];
            WriteRos2Aimdk_msgsMsgModuleRpcInfo(writer, element);
        }
        _Ros2Aimdk_msgsMsgModuleRpcInfo[] part2 = value.@rpc_services;
        if(part2 == null || part2.Length > 2)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part2.Length, 4);
        for(int index = 0; index < part2.Length; ++index)
        {
            _Ros2Aimdk_msgsMsgModuleRpcInfo element = part2[index];
            WriteRos2Aimdk_msgsMsgModuleRpcInfo(writer, element);
        }
        _Ros2Aimdk_msgsMsgModuleChannelInfo[] part3 = value.@pub_channels;
        if(part3 == null || part3.Length > 2)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part3.Length, 4);
        for(int index = 0; index < part3.Length; ++index)
        {
            _Ros2Aimdk_msgsMsgModuleChannelInfo element = part3[index];
            WriteRos2Aimdk_msgsMsgModuleChannelInfo(writer, element);
        }
        _Ros2Aimdk_msgsMsgModuleChannelInfo[] part4 = value.@sub_channels;
        if(part4 == null || part4.Length > 2)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part4.Length, 4);
        for(int index = 0; index < part4.Length; ++index)
        {
            _Ros2Aimdk_msgsMsgModuleChannelInfo element = part4[index];
            WriteRos2Aimdk_msgsMsgModuleChannelInfo(writer, element);
        }
    }

    private static _Ros2Aimdk_msgsMsgModuleResourceInfo ReadRos2Aimdk_msgsMsgModuleResourceInfo(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsMsgModuleResourceInfo();
        value.@module_name = ReadText(reader, 128);
        value.@rpc_clients = new _Ros2Aimdk_msgsMsgModuleRpcInfo[ReadCount(reader, 2, 16)];
        for(int index = 0; index < value.@rpc_clients.Length; ++index)
            value.@rpc_clients[index] = ReadRos2Aimdk_msgsMsgModuleRpcInfo(reader);
        value.@rpc_services = new _Ros2Aimdk_msgsMsgModuleRpcInfo[ReadCount(reader, 2, 16)];
        for(int index = 0; index < value.@rpc_services.Length; ++index)
            value.@rpc_services[index] = ReadRos2Aimdk_msgsMsgModuleRpcInfo(reader);
        value.@pub_channels = new _Ros2Aimdk_msgsMsgModuleChannelInfo[ReadCount(reader, 2, 58)];
        for(int index = 0; index < value.@pub_channels.Length; ++index)
            value.@pub_channels[index] = ReadRos2Aimdk_msgsMsgModuleChannelInfo(reader);
        value.@sub_channels = new _Ros2Aimdk_msgsMsgModuleChannelInfo[ReadCount(reader, 2, 58)];
        for(int index = 0; index < value.@sub_channels.Length; ++index)
            value.@sub_channels[index] = ReadRos2Aimdk_msgsMsgModuleChannelInfo(reader);
        return value;
    }

    public sealed class _Ros2Aimdk_msgsMsgThreadResourceInfo
    {
        public ulong @thread_id = 0;
        public string @thread_name = "";
        public double @cpu_usage_ratio = 0;
        public string @cpu_sched_policy = "";
        public int @cpu_sched_priority = 0;
        public int[] @bounding_cpus = new int[0];

        public _Ros2Aimdk_msgsMsgThreadResourceInfo()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsMsgThreadResourceInfoCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsMsgThreadResourceInfo>
    {
        public static readonly Ros2Aimdk_msgsMsgThreadResourceInfoCodec Instance = new Ros2Aimdk_msgsMsgThreadResourceInfoCodec();

        private Ros2Aimdk_msgsMsgThreadResourceInfoCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/msg/ThreadResourceInfo";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_7232a79e41b62d823fd87d761df60759839543aedbe5fa338fb46816687a0a15";
        public const int MIN_WIRE_BYTES = 32, MAX_WIRE_BYTES = 352;

        public byte[] Encode(_Ros2Aimdk_msgsMsgThreadResourceInfo value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsMsgThreadResourceInfo(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsMsgThreadResourceInfo Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsMsgThreadResourceInfo value = ReadRos2Aimdk_msgsMsgThreadResourceInfo(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsMsgThreadResourceInfo(_Codecs.Writer writer, _Ros2Aimdk_msgsMsgThreadResourceInfo value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        ulong part0 = value.@thread_id;
        writer.Unsigned(part0, 8);
        string part1 = value.@thread_name;
        WriteText(writer, part1, 128);
        double part2 = value.@cpu_usage_ratio;
        writer.Float64(part2);
        string part3 = value.@cpu_sched_policy;
        WriteText(writer, part3, 128);
        int part4 = value.@cpu_sched_priority;
        writer.Unsigned(unchecked((uint)part4), 4);
        int[] part5 = value.@bounding_cpus;
        if(part5 == null || part5.Length > 16)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part5.Length, 4);
        for(int index = 0; index < part5.Length; ++index)
        {
            int element = part5[index];
            writer.Unsigned(unchecked((uint)element), 4);
        }
    }

    private static _Ros2Aimdk_msgsMsgThreadResourceInfo ReadRos2Aimdk_msgsMsgThreadResourceInfo(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsMsgThreadResourceInfo();
        value.@thread_id = unchecked((ulong)reader.Unsigned(8));
        value.@thread_name = ReadText(reader, 128);
        value.@cpu_usage_ratio = reader.Float64();
        value.@cpu_sched_policy = ReadText(reader, 128);
        value.@cpu_sched_priority = unchecked((int)reader.Unsigned(4));
        value.@bounding_cpus = new int[ReadCount(reader, 16, 4)];
        for(int index = 0; index < value.@bounding_cpus.Length; ++index)
            value.@bounding_cpus[index] = unchecked((int)reader.Unsigned(4));
        return value;
    }

    public sealed class _Ros2Aimdk_msgsMsgProcessResourceInfo
    {
        public ulong @process_id = 0;
        public string @process_name = "";
        public ulong @process_mem_usage = 0;
        public double @process_mem_usage_ratio = 0;
        public double @process_cpu_usage_ratio = 0;
        public ulong @thread_count = 0;
        public _Ros2Aimdk_msgsMsgThreadResourceInfo[] @threads = new _Ros2Aimdk_msgsMsgThreadResourceInfo[0];

        public _Ros2Aimdk_msgsMsgProcessResourceInfo()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsMsgProcessResourceInfoCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsMsgProcessResourceInfo>
    {
        public static readonly Ros2Aimdk_msgsMsgProcessResourceInfoCodec Instance = new Ros2Aimdk_msgsMsgProcessResourceInfoCodec();

        private Ros2Aimdk_msgsMsgProcessResourceInfoCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/msg/ProcessResourceInfo";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_90b5f60525abc33814dfc7e3f7e6af23c7f43a232d74a904bd06f20d27ef9550";
        public const int MIN_WIRE_BYTES = 48, MAX_WIRE_BYTES = 1584;

        public byte[] Encode(_Ros2Aimdk_msgsMsgProcessResourceInfo value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsMsgProcessResourceInfo(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsMsgProcessResourceInfo Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsMsgProcessResourceInfo value = ReadRos2Aimdk_msgsMsgProcessResourceInfo(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsMsgProcessResourceInfo(_Codecs.Writer writer, _Ros2Aimdk_msgsMsgProcessResourceInfo value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        ulong part0 = value.@process_id;
        writer.Unsigned(part0, 8);
        string part1 = value.@process_name;
        WriteText(writer, part1, 128);
        ulong part2 = value.@process_mem_usage;
        writer.Unsigned(part2, 8);
        double part3 = value.@process_mem_usage_ratio;
        writer.Float64(part3);
        double part4 = value.@process_cpu_usage_ratio;
        writer.Float64(part4);
        ulong part5 = value.@thread_count;
        writer.Unsigned(part5, 8);
        _Ros2Aimdk_msgsMsgThreadResourceInfo[] part6 = value.@threads;
        if(part6 == null || part6.Length > 4)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part6.Length, 4);
        for(int index = 0; index < part6.Length; ++index)
        {
            _Ros2Aimdk_msgsMsgThreadResourceInfo element = part6[index];
            WriteRos2Aimdk_msgsMsgThreadResourceInfo(writer, element);
        }
    }

    private static _Ros2Aimdk_msgsMsgProcessResourceInfo ReadRos2Aimdk_msgsMsgProcessResourceInfo(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsMsgProcessResourceInfo();
        value.@process_id = unchecked((ulong)reader.Unsigned(8));
        value.@process_name = ReadText(reader, 128);
        value.@process_mem_usage = unchecked((ulong)reader.Unsigned(8));
        value.@process_mem_usage_ratio = reader.Float64();
        value.@process_cpu_usage_ratio = reader.Float64();
        value.@thread_count = unchecked((ulong)reader.Unsigned(8));
        value.@threads = new _Ros2Aimdk_msgsMsgThreadResourceInfo[ReadCount(reader, 4, 32)];
        for(int index = 0; index < value.@threads.Length; ++index)
            value.@threads[index] = ReadRos2Aimdk_msgsMsgThreadResourceInfo(reader);
        return value;
    }

    public sealed class _Ros2Aimdk_msgsMsgProcessInfo
    {
        public _Ros2Aimdk_msgsMsgMessageHeader @header = new _Ros2Aimdk_msgsMsgMessageHeader();
        public string @app_name = "";
        public _Ros2Aimdk_msgsMsgProcessResourceInfo @resource = new _Ros2Aimdk_msgsMsgProcessResourceInfo();
        public _Ros2Aimdk_msgsMsgModuleResourceInfo[] @modules = new _Ros2Aimdk_msgsMsgModuleResourceInfo[0];

        public _Ros2Aimdk_msgsMsgProcessInfo()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsMsgProcessInfoCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsMsgProcessInfo>
    {
        public static readonly Ros2Aimdk_msgsMsgProcessInfoCodec Instance = new Ros2Aimdk_msgsMsgProcessInfoCodec();

        private Ros2Aimdk_msgsMsgProcessInfoCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/msg/ProcessInfo";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_190d10dc74d66eecf65495e2795525b4f6016bb3efde2f16310e54287e703996";
        public const int MIN_WIRE_BYTES = 80, MAX_WIRE_BYTES = 12232;

        public byte[] Encode(_Ros2Aimdk_msgsMsgProcessInfo value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsMsgProcessInfo(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsMsgProcessInfo Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsMsgProcessInfo value = ReadRos2Aimdk_msgsMsgProcessInfo(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsMsgProcessInfo(_Codecs.Writer writer, _Ros2Aimdk_msgsMsgProcessInfo value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Aimdk_msgsMsgMessageHeader part0 = value.@header;
        WriteRos2Aimdk_msgsMsgMessageHeader(writer, part0);
        string part1 = value.@app_name;
        WriteText(writer, part1, 128);
        _Ros2Aimdk_msgsMsgProcessResourceInfo part2 = value.@resource;
        WriteRos2Aimdk_msgsMsgProcessResourceInfo(writer, part2);
        _Ros2Aimdk_msgsMsgModuleResourceInfo[] part3 = value.@modules;
        if(part3 == null || part3.Length > 2)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part3.Length, 4);
        for(int index = 0; index < part3.Length; ++index)
        {
            _Ros2Aimdk_msgsMsgModuleResourceInfo element = part3[index];
            WriteRos2Aimdk_msgsMsgModuleResourceInfo(writer, element);
        }
    }

    private static _Ros2Aimdk_msgsMsgProcessInfo ReadRos2Aimdk_msgsMsgProcessInfo(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsMsgProcessInfo();
        value.@header = ReadRos2Aimdk_msgsMsgMessageHeader(reader);
        value.@app_name = ReadText(reader, 128);
        value.@resource = ReadRos2Aimdk_msgsMsgProcessResourceInfo(reader);
        value.@modules = new _Ros2Aimdk_msgsMsgModuleResourceInfo[ReadCount(reader, 2, 20)];
        for(int index = 0; index < value.@modules.Length; ++index)
            value.@modules[index] = ReadRos2Aimdk_msgsMsgModuleResourceInfo(reader);
        return value;
    }
}
