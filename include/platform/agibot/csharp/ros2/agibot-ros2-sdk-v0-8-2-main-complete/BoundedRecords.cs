/**
 * @file BoundedRecords.cs
 * @brief Full agibot csharp codecs and original record metadata.
 * @details Complete agibot ros2_sdk_v0_8_2_main values in csharp. 72 original records retain 227 fields and 55
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

    public sealed class _Ros2Aimdk_msgsMsgAgentPropertyIdType
    {
        public byte @value = 0;

        public _Ros2Aimdk_msgsMsgAgentPropertyIdType()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsMsgAgentPropertyIdTypeCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsMsgAgentPropertyIdType>
    {
        public static readonly Ros2Aimdk_msgsMsgAgentPropertyIdTypeCodec Instance = new Ros2Aimdk_msgsMsgAgentPropertyIdTypeCodec();

        private Ros2Aimdk_msgsMsgAgentPropertyIdTypeCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/msg/AgentPropertyIdType";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_96958ff52528b07c7f9bc239e80676edc77b27faa077a3bed7222cf32d1ebf0b";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros2Aimdk_msgsMsgAgentPropertyIdType value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsMsgAgentPropertyIdType(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsMsgAgentPropertyIdType Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsMsgAgentPropertyIdType value = ReadRos2Aimdk_msgsMsgAgentPropertyIdType(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsMsgAgentPropertyIdType(_Codecs.Writer writer, _Ros2Aimdk_msgsMsgAgentPropertyIdType value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        byte part0 = value.@value;
        writer.Unsigned(part0, 1);
    }

    private static _Ros2Aimdk_msgsMsgAgentPropertyIdType ReadRos2Aimdk_msgsMsgAgentPropertyIdType(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsMsgAgentPropertyIdType();
        value.@value = unchecked((byte)reader.Unsigned(1));
        return value;
    }

    public sealed class _Ros2Aimdk_msgsMsgAgentPropertiesValue
    {
        public _Ros2Aimdk_msgsMsgAgentPropertyIdType @key = new _Ros2Aimdk_msgsMsgAgentPropertyIdType();
        public string @value = "";

        public _Ros2Aimdk_msgsMsgAgentPropertiesValue()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsMsgAgentPropertiesValueCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsMsgAgentPropertiesValue>
    {
        public static readonly Ros2Aimdk_msgsMsgAgentPropertiesValueCodec Instance = new Ros2Aimdk_msgsMsgAgentPropertiesValueCodec();

        private Ros2Aimdk_msgsMsgAgentPropertiesValueCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/msg/AgentPropertiesValue";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_c7ec8887e5fb223291cb324c1ae21f20490955108ee137db384c6775fb332c6a";
        public const int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 133;

        public byte[] Encode(_Ros2Aimdk_msgsMsgAgentPropertiesValue value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsMsgAgentPropertiesValue(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsMsgAgentPropertiesValue Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsMsgAgentPropertiesValue value = ReadRos2Aimdk_msgsMsgAgentPropertiesValue(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsMsgAgentPropertiesValue(_Codecs.Writer writer, _Ros2Aimdk_msgsMsgAgentPropertiesValue value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Aimdk_msgsMsgAgentPropertyIdType part0 = value.@key;
        WriteRos2Aimdk_msgsMsgAgentPropertyIdType(writer, part0);
        string part1 = value.@value;
        WriteText(writer, part1, 128);
    }

    private static _Ros2Aimdk_msgsMsgAgentPropertiesValue ReadRos2Aimdk_msgsMsgAgentPropertiesValue(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsMsgAgentPropertiesValue();
        value.@key = ReadRos2Aimdk_msgsMsgAgentPropertyIdType(reader);
        value.@value = ReadText(reader, 128);
        return value;
    }

    public sealed class _Ros2Aimdk_msgsMsgAgentProperties
    {
        public _Ros2Aimdk_msgsMsgAgentPropertiesValue[] @properties = new _Ros2Aimdk_msgsMsgAgentPropertiesValue[0];

        public _Ros2Aimdk_msgsMsgAgentProperties()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsMsgAgentPropertiesCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsMsgAgentProperties>
    {
        public static readonly Ros2Aimdk_msgsMsgAgentPropertiesCodec Instance = new Ros2Aimdk_msgsMsgAgentPropertiesCodec();

        private Ros2Aimdk_msgsMsgAgentPropertiesCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/msg/AgentProperties";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_e729493bf2dfbd5ed1f726a95ac39d42f33a28f476edd13f66e75f9cb591694f";
        public const int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 536;

        public byte[] Encode(_Ros2Aimdk_msgsMsgAgentProperties value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsMsgAgentProperties(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsMsgAgentProperties Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsMsgAgentProperties value = ReadRos2Aimdk_msgsMsgAgentProperties(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsMsgAgentProperties(_Codecs.Writer writer, _Ros2Aimdk_msgsMsgAgentProperties value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Aimdk_msgsMsgAgentPropertiesValue[] part0 = value.@properties;
        if(part0 == null || part0.Length > 4)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part0.Length, 4);
        for(int index = 0; index < part0.Length; ++index)
        {
            _Ros2Aimdk_msgsMsgAgentPropertiesValue element = part0[index];
            WriteRos2Aimdk_msgsMsgAgentPropertiesValue(writer, element);
        }
    }

    private static _Ros2Aimdk_msgsMsgAgentProperties ReadRos2Aimdk_msgsMsgAgentProperties(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsMsgAgentProperties();
        value.@properties = new _Ros2Aimdk_msgsMsgAgentPropertiesValue[ReadCount(reader, 4, 5)];
        for(int index = 0; index < value.@properties.Length; ++index)
            value.@properties[index] = ReadRos2Aimdk_msgsMsgAgentPropertiesValue(reader);
        return value;
    }

    public sealed class _Ros2Aimdk_msgsMsgAudioVadStateType
    {
        public byte @value = 0;

        public _Ros2Aimdk_msgsMsgAudioVadStateType()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsMsgAudioVadStateTypeCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsMsgAudioVadStateType>
    {
        public static readonly Ros2Aimdk_msgsMsgAudioVadStateTypeCodec Instance = new Ros2Aimdk_msgsMsgAudioVadStateTypeCodec();

        private Ros2Aimdk_msgsMsgAudioVadStateTypeCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/msg/AudioVadStateType";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_edd7a6f6ad81c2c6479d3331d9e87a2fc66eedfb73f789caf0b888eeb9480526";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros2Aimdk_msgsMsgAudioVadStateType value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsMsgAudioVadStateType(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsMsgAudioVadStateType Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsMsgAudioVadStateType value = ReadRos2Aimdk_msgsMsgAudioVadStateType(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsMsgAudioVadStateType(_Codecs.Writer writer, _Ros2Aimdk_msgsMsgAudioVadStateType value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        byte part0 = value.@value;
        writer.Unsigned(part0, 1);
    }

    private static _Ros2Aimdk_msgsMsgAudioVadStateType ReadRos2Aimdk_msgsMsgAudioVadStateType(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsMsgAudioVadStateType();
        value.@value = unchecked((byte)reader.Unsigned(1));
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

    public sealed class _Ros2Aimdk_msgsMsgFaceEmojiStatus
    {
        public _Ros2Aimdk_msgsMsgMessageHeader @header = new _Ros2Aimdk_msgsMsgMessageHeader();
        public string @e_path = "";
        public string[] @e_path_list = new string[0];
        public byte @e_id = 0;
        public byte @mode = 0;
        public int @priority = 0;
        public byte @status = 0;
        public double @time_to_end_ms = 0;

        public _Ros2Aimdk_msgsMsgFaceEmojiStatus()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsMsgFaceEmojiStatusCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsMsgFaceEmojiStatus>
    {
        public static readonly Ros2Aimdk_msgsMsgFaceEmojiStatusCodec Instance = new Ros2Aimdk_msgsMsgFaceEmojiStatusCodec();

        private Ros2Aimdk_msgsMsgFaceEmojiStatusCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/msg/FaceEmojiStatus";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_3200d2686ea5f26668f00d0249e774572668b4a36b3f8067dae4f93182af89f7";
        public const int MIN_WIRE_BYTES = 47, MAX_WIRE_BYTES = 2415;

        public byte[] Encode(_Ros2Aimdk_msgsMsgFaceEmojiStatus value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsMsgFaceEmojiStatus(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsMsgFaceEmojiStatus Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsMsgFaceEmojiStatus value = ReadRos2Aimdk_msgsMsgFaceEmojiStatus(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsMsgFaceEmojiStatus(_Codecs.Writer writer, _Ros2Aimdk_msgsMsgFaceEmojiStatus value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Aimdk_msgsMsgMessageHeader part0 = value.@header;
        WriteRos2Aimdk_msgsMsgMessageHeader(writer, part0);
        string part1 = value.@e_path;
        WriteText(writer, part1, 128);
        string[] part2 = value.@e_path_list;
        if(part2 == null || part2.Length > 16)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part2.Length, 4);
        for(int index = 0; index < part2.Length; ++index)
        {
            string element = part2[index];
            WriteText(writer, element, 128);
        }
        byte part3 = value.@e_id;
        writer.Unsigned(part3, 1);
        byte part4 = value.@mode;
        writer.Unsigned(part4, 1);
        int part5 = value.@priority;
        writer.Unsigned(unchecked((uint)part5), 4);
        byte part6 = value.@status;
        writer.Unsigned(part6, 1);
        double part7 = value.@time_to_end_ms;
        writer.Float64(part7);
    }

    private static _Ros2Aimdk_msgsMsgFaceEmojiStatus ReadRos2Aimdk_msgsMsgFaceEmojiStatus(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsMsgFaceEmojiStatus();
        value.@header = ReadRos2Aimdk_msgsMsgMessageHeader(reader);
        value.@e_path = ReadText(reader, 128);
        value.@e_path_list = new string[ReadCount(reader, 16, 4)];
        for(int index = 0; index < value.@e_path_list.Length; ++index)
            value.@e_path_list[index] = ReadText(reader, 128);
        value.@e_id = unchecked((byte)reader.Unsigned(1));
        value.@mode = unchecked((byte)reader.Unsigned(1));
        value.@priority = unchecked((int)reader.Unsigned(4));
        value.@status = unchecked((byte)reader.Unsigned(1));
        value.@time_to_end_ms = reader.Float64();
        return value;
    }

    public sealed class _Ros2Aimdk_msgsMsgHandCommand
    {
        public string @name = "";
        public double @position = 0;
        public double @velocity = 0;
        public double @acceleration = 0;
        public double @deceleration = 0;
        public double @effort = 0;

        public _Ros2Aimdk_msgsMsgHandCommand()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsMsgHandCommandCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsMsgHandCommand>
    {
        public static readonly Ros2Aimdk_msgsMsgHandCommandCodec Instance = new Ros2Aimdk_msgsMsgHandCommandCodec();

        private Ros2Aimdk_msgsMsgHandCommandCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/msg/HandCommand";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_910f3d9c0907c60b2613097cc4c1426727987e2ab83f8bcc41787feb472dc4e8";
        public const int MIN_WIRE_BYTES = 44, MAX_WIRE_BYTES = 172;

        public byte[] Encode(_Ros2Aimdk_msgsMsgHandCommand value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsMsgHandCommand(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsMsgHandCommand Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsMsgHandCommand value = ReadRos2Aimdk_msgsMsgHandCommand(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsMsgHandCommand(_Codecs.Writer writer, _Ros2Aimdk_msgsMsgHandCommand value)
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
        double part4 = value.@deceleration;
        writer.Float64(part4);
        double part5 = value.@effort;
        writer.Float64(part5);
    }

    private static _Ros2Aimdk_msgsMsgHandCommand ReadRos2Aimdk_msgsMsgHandCommand(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsMsgHandCommand();
        value.@name = ReadText(reader, 128);
        value.@position = reader.Float64();
        value.@velocity = reader.Float64();
        value.@acceleration = reader.Float64();
        value.@deceleration = reader.Float64();
        value.@effort = reader.Float64();
        return value;
    }

    public sealed class _Ros2Aimdk_msgsMsgHandType
    {
        public byte @value = 0;

        public _Ros2Aimdk_msgsMsgHandType()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsMsgHandTypeCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsMsgHandType>
    {
        public static readonly Ros2Aimdk_msgsMsgHandTypeCodec Instance = new Ros2Aimdk_msgsMsgHandTypeCodec();

        private Ros2Aimdk_msgsMsgHandTypeCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/msg/HandType";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_e90b6ef9fea68be96eef98d3c6ce0120846da0638145a662f35a96edb690a6e6";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros2Aimdk_msgsMsgHandType value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsMsgHandType(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsMsgHandType Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsMsgHandType value = ReadRos2Aimdk_msgsMsgHandType(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsMsgHandType(_Codecs.Writer writer, _Ros2Aimdk_msgsMsgHandType value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        byte part0 = value.@value;
        writer.Unsigned(part0, 1);
    }

    private static _Ros2Aimdk_msgsMsgHandType ReadRos2Aimdk_msgsMsgHandType(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsMsgHandType();
        value.@value = unchecked((byte)reader.Unsigned(1));
        return value;
    }

    public sealed class _Ros2Aimdk_msgsMsgHandCommandArray
    {
        public _Ros2Aimdk_msgsMsgMessageHeader @header = new _Ros2Aimdk_msgsMsgMessageHeader();
        public _Ros2Aimdk_msgsMsgHandType @left_hand_type = new _Ros2Aimdk_msgsMsgHandType();
        public _Ros2Aimdk_msgsMsgHandCommand[] @left_hands = new _Ros2Aimdk_msgsMsgHandCommand[0];
        public _Ros2Aimdk_msgsMsgHandType @right_hand_type = new _Ros2Aimdk_msgsMsgHandType();
        public _Ros2Aimdk_msgsMsgHandCommand[] @right_hands = new _Ros2Aimdk_msgsMsgHandCommand[0];

        public _Ros2Aimdk_msgsMsgHandCommandArray()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsMsgHandCommandArrayCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsMsgHandCommandArray>
    {
        public static readonly Ros2Aimdk_msgsMsgHandCommandArrayCodec Instance = new Ros2Aimdk_msgsMsgHandCommandArrayCodec();

        private Ros2Aimdk_msgsMsgHandCommandArrayCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/msg/HandCommandArray";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_6786b9d07c3f807c1b4b98a5f22481a2628c1bd530c04e75ad40a36058f5558e";
        public const int MIN_WIRE_BYTES = 34, MAX_WIRE_BYTES = 1538;

        public byte[] Encode(_Ros2Aimdk_msgsMsgHandCommandArray value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsMsgHandCommandArray(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsMsgHandCommandArray Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsMsgHandCommandArray value = ReadRos2Aimdk_msgsMsgHandCommandArray(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsMsgHandCommandArray(_Codecs.Writer writer, _Ros2Aimdk_msgsMsgHandCommandArray value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Aimdk_msgsMsgMessageHeader part0 = value.@header;
        WriteRos2Aimdk_msgsMsgMessageHeader(writer, part0);
        _Ros2Aimdk_msgsMsgHandType part1 = value.@left_hand_type;
        WriteRos2Aimdk_msgsMsgHandType(writer, part1);
        _Ros2Aimdk_msgsMsgHandCommand[] part2 = value.@left_hands;
        if(part2 == null || part2.Length > 4)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part2.Length, 4);
        for(int index = 0; index < part2.Length; ++index)
        {
            _Ros2Aimdk_msgsMsgHandCommand element = part2[index];
            WriteRos2Aimdk_msgsMsgHandCommand(writer, element);
        }
        _Ros2Aimdk_msgsMsgHandType part3 = value.@right_hand_type;
        WriteRos2Aimdk_msgsMsgHandType(writer, part3);
        _Ros2Aimdk_msgsMsgHandCommand[] part4 = value.@right_hands;
        if(part4 == null || part4.Length > 4)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part4.Length, 4);
        for(int index = 0; index < part4.Length; ++index)
        {
            _Ros2Aimdk_msgsMsgHandCommand element = part4[index];
            WriteRos2Aimdk_msgsMsgHandCommand(writer, element);
        }
    }

    private static _Ros2Aimdk_msgsMsgHandCommandArray ReadRos2Aimdk_msgsMsgHandCommandArray(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsMsgHandCommandArray();
        value.@header = ReadRos2Aimdk_msgsMsgMessageHeader(reader);
        value.@left_hand_type = ReadRos2Aimdk_msgsMsgHandType(reader);
        value.@left_hands = new _Ros2Aimdk_msgsMsgHandCommand[ReadCount(reader, 4, 44)];
        for(int index = 0; index < value.@left_hands.Length; ++index)
            value.@left_hands[index] = ReadRos2Aimdk_msgsMsgHandCommand(reader);
        value.@right_hand_type = ReadRos2Aimdk_msgsMsgHandType(reader);
        value.@right_hands = new _Ros2Aimdk_msgsMsgHandCommand[ReadCount(reader, 4, 44)];
        for(int index = 0; index < value.@right_hands.Length; ++index)
            value.@right_hands[index] = ReadRos2Aimdk_msgsMsgHandCommand(reader);
        return value;
    }

    public sealed class _Ros2Aimdk_msgsMsgHandState
    {
        public string @name = "";
        public double @position = 0;
        public double @velocity = 0;
        public double @effort = 0;
        public int @state = 0;
        public int @faultcode = 0;

        public _Ros2Aimdk_msgsMsgHandState()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsMsgHandStateCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsMsgHandState>
    {
        public static readonly Ros2Aimdk_msgsMsgHandStateCodec Instance = new Ros2Aimdk_msgsMsgHandStateCodec();

        private Ros2Aimdk_msgsMsgHandStateCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/msg/HandState";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_9cfb695f97c9e314103a224bcb6b321de5f279cdae85d5eef7bec0c7968a875c";
        public const int MIN_WIRE_BYTES = 36, MAX_WIRE_BYTES = 164;

        public byte[] Encode(_Ros2Aimdk_msgsMsgHandState value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsMsgHandState(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsMsgHandState Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsMsgHandState value = ReadRos2Aimdk_msgsMsgHandState(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsMsgHandState(_Codecs.Writer writer, _Ros2Aimdk_msgsMsgHandState value)
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
        int part4 = value.@state;
        writer.Unsigned(unchecked((uint)part4), 4);
        int part5 = value.@faultcode;
        writer.Unsigned(unchecked((uint)part5), 4);
    }

    private static _Ros2Aimdk_msgsMsgHandState ReadRos2Aimdk_msgsMsgHandState(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsMsgHandState();
        value.@name = ReadText(reader, 128);
        value.@position = reader.Float64();
        value.@velocity = reader.Float64();
        value.@effort = reader.Float64();
        value.@state = unchecked((int)reader.Unsigned(4));
        value.@faultcode = unchecked((int)reader.Unsigned(4));
        return value;
    }

    public sealed class _Ros2Aimdk_msgsMsgHandStateArray
    {
        public _Ros2Aimdk_msgsMsgMessageHeader @header = new _Ros2Aimdk_msgsMsgMessageHeader();
        public _Ros2Aimdk_msgsMsgHandType @left_hand_type = new _Ros2Aimdk_msgsMsgHandType();
        public _Ros2Aimdk_msgsMsgHandState[] @left_hands = new _Ros2Aimdk_msgsMsgHandState[0];
        public _Ros2Aimdk_msgsMsgHandType @right_hand_type = new _Ros2Aimdk_msgsMsgHandType();
        public _Ros2Aimdk_msgsMsgHandState[] @right_hands = new _Ros2Aimdk_msgsMsgHandState[0];

        public _Ros2Aimdk_msgsMsgHandStateArray()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsMsgHandStateArrayCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsMsgHandStateArray>
    {
        public static readonly Ros2Aimdk_msgsMsgHandStateArrayCodec Instance = new Ros2Aimdk_msgsMsgHandStateArrayCodec();

        private Ros2Aimdk_msgsMsgHandStateArrayCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/msg/HandStateArray";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_241862e8351ba851c0b7124277b23dfc09df3344bae750f238422af6e820e46d";
        public const int MIN_WIRE_BYTES = 34, MAX_WIRE_BYTES = 1474;

        public byte[] Encode(_Ros2Aimdk_msgsMsgHandStateArray value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsMsgHandStateArray(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsMsgHandStateArray Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsMsgHandStateArray value = ReadRos2Aimdk_msgsMsgHandStateArray(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsMsgHandStateArray(_Codecs.Writer writer, _Ros2Aimdk_msgsMsgHandStateArray value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Aimdk_msgsMsgMessageHeader part0 = value.@header;
        WriteRos2Aimdk_msgsMsgMessageHeader(writer, part0);
        _Ros2Aimdk_msgsMsgHandType part1 = value.@left_hand_type;
        WriteRos2Aimdk_msgsMsgHandType(writer, part1);
        _Ros2Aimdk_msgsMsgHandState[] part2 = value.@left_hands;
        if(part2 == null || part2.Length > 4)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part2.Length, 4);
        for(int index = 0; index < part2.Length; ++index)
        {
            _Ros2Aimdk_msgsMsgHandState element = part2[index];
            WriteRos2Aimdk_msgsMsgHandState(writer, element);
        }
        _Ros2Aimdk_msgsMsgHandType part3 = value.@right_hand_type;
        WriteRos2Aimdk_msgsMsgHandType(writer, part3);
        _Ros2Aimdk_msgsMsgHandState[] part4 = value.@right_hands;
        if(part4 == null || part4.Length > 4)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part4.Length, 4);
        for(int index = 0; index < part4.Length; ++index)
        {
            _Ros2Aimdk_msgsMsgHandState element = part4[index];
            WriteRos2Aimdk_msgsMsgHandState(writer, element);
        }
    }

    private static _Ros2Aimdk_msgsMsgHandStateArray ReadRos2Aimdk_msgsMsgHandStateArray(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsMsgHandStateArray();
        value.@header = ReadRos2Aimdk_msgsMsgMessageHeader(reader);
        value.@left_hand_type = ReadRos2Aimdk_msgsMsgHandType(reader);
        value.@left_hands = new _Ros2Aimdk_msgsMsgHandState[ReadCount(reader, 4, 36)];
        for(int index = 0; index < value.@left_hands.Length; ++index)
            value.@left_hands[index] = ReadRos2Aimdk_msgsMsgHandState(reader);
        value.@right_hand_type = ReadRos2Aimdk_msgsMsgHandType(reader);
        value.@right_hands = new _Ros2Aimdk_msgsMsgHandState[ReadCount(reader, 4, 36)];
        for(int index = 0; index < value.@right_hands.Length; ++index)
            value.@right_hands[index] = ReadRos2Aimdk_msgsMsgHandState(reader);
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
        public byte @coil_temp = 0;
        public byte @motor_temp = 0;
        public byte @motor_vol = 0;

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
        public const string CODEC_IDENTITY = "UWVMROS1_1b786e0a54b6e19cbc8cdad4bffc7458534ce3db05064216eb3cf6b50674610f";
        public const int MIN_WIRE_BYTES = 31, MAX_WIRE_BYTES = 159;

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
        byte part4 = value.@coil_temp;
        writer.Unsigned(part4, 1);
        byte part5 = value.@motor_temp;
        writer.Unsigned(part5, 1);
        byte part6 = value.@motor_vol;
        writer.Unsigned(part6, 1);
    }

    private static _Ros2Aimdk_msgsMsgJointState ReadRos2Aimdk_msgsMsgJointState(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsMsgJointState();
        value.@name = ReadText(reader, 128);
        value.@position = reader.Float64();
        value.@velocity = reader.Float64();
        value.@effort = reader.Float64();
        value.@coil_temp = unchecked((byte)reader.Unsigned(1));
        value.@motor_temp = unchecked((byte)reader.Unsigned(1));
        value.@motor_vol = unchecked((byte)reader.Unsigned(1));
        return value;
    }

    public sealed class _Ros2Aimdk_msgsMsgJointStateArray
    {
        public _Ros2Aimdk_msgsMsgMessageHeader @header = new _Ros2Aimdk_msgsMsgMessageHeader();
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
        public const string CODEC_IDENTITY = "UWVMROS1_6bf212a55e2cbe59e4e1bd675bdb41d3461db28e11d91244c21bac45070683fa";
        public const int MIN_WIRE_BYTES = 28, MAX_WIRE_BYTES = 10332;

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
        _Ros2Aimdk_msgsMsgJointState[] part1 = value.@joints;
        if(part1 == null || part1.Length > 64)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part1.Length, 4);
        for(int index = 0; index < part1.Length; ++index)
        {
            _Ros2Aimdk_msgsMsgJointState element = part1[index];
            WriteRos2Aimdk_msgsMsgJointState(writer, element);
        }
    }

    private static _Ros2Aimdk_msgsMsgJointStateArray ReadRos2Aimdk_msgsMsgJointStateArray(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsMsgJointStateArray();
        value.@header = ReadRos2Aimdk_msgsMsgMessageHeader(reader);
        value.@joints = new _Ros2Aimdk_msgsMsgJointState[ReadCount(reader, 64, 31)];
        for(int index = 0; index < value.@joints.Length; ++index)
            value.@joints[index] = ReadRos2Aimdk_msgsMsgJointState(reader);
        return value;
    }

    public sealed class _Ros2Aimdk_msgsMsgMcAction
    {
        public int @value = 0;

        public _Ros2Aimdk_msgsMsgMcAction()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsMsgMcActionCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsMsgMcAction>
    {
        public static readonly Ros2Aimdk_msgsMsgMcActionCodec Instance = new Ros2Aimdk_msgsMsgMcActionCodec();

        private Ros2Aimdk_msgsMsgMcActionCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/msg/McAction";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_a43927486ae637ff4e5b8d60e1f45c91a9e3cf07b4505ea00550c6dc58e9354b";
        public const int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 4;

        public byte[] Encode(_Ros2Aimdk_msgsMsgMcAction value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsMsgMcAction(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsMsgMcAction Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsMsgMcAction value = ReadRos2Aimdk_msgsMsgMcAction(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsMsgMcAction(_Codecs.Writer writer, _Ros2Aimdk_msgsMsgMcAction value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        int part0 = value.@value;
        writer.Unsigned(unchecked((uint)part0), 4);
    }

    private static _Ros2Aimdk_msgsMsgMcAction ReadRos2Aimdk_msgsMsgMcAction(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsMsgMcAction();
        value.@value = unchecked((int)reader.Unsigned(4));
        return value;
    }

    public sealed class _Ros2Aimdk_msgsMsgMcActionCommand
    {
        public _Ros2Aimdk_msgsMsgMcAction @action = new _Ros2Aimdk_msgsMsgMcAction();
        public string @action_desc = "";

        public _Ros2Aimdk_msgsMsgMcActionCommand()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsMsgMcActionCommandCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsMsgMcActionCommand>
    {
        public static readonly Ros2Aimdk_msgsMsgMcActionCommandCodec Instance = new Ros2Aimdk_msgsMsgMcActionCommandCodec();

        private Ros2Aimdk_msgsMsgMcActionCommandCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/msg/McActionCommand";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_9a529c7988535cbc65c36425ffb0935b210a806906598baa3a2f1f717df4f648";
        public const int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 136;

        public byte[] Encode(_Ros2Aimdk_msgsMsgMcActionCommand value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsMsgMcActionCommand(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsMsgMcActionCommand Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsMsgMcActionCommand value = ReadRos2Aimdk_msgsMsgMcActionCommand(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsMsgMcActionCommand(_Codecs.Writer writer, _Ros2Aimdk_msgsMsgMcActionCommand value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Aimdk_msgsMsgMcAction part0 = value.@action;
        WriteRos2Aimdk_msgsMsgMcAction(writer, part0);
        string part1 = value.@action_desc;
        WriteText(writer, part1, 128);
    }

    private static _Ros2Aimdk_msgsMsgMcActionCommand ReadRos2Aimdk_msgsMsgMcActionCommand(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsMsgMcActionCommand();
        value.@action = ReadRos2Aimdk_msgsMsgMcAction(reader);
        value.@action_desc = ReadText(reader, 128);
        return value;
    }

    public sealed class _Ros2Aimdk_msgsMsgMcActionStatus
    {
        public int @value = 0;

        public _Ros2Aimdk_msgsMsgMcActionStatus()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsMsgMcActionStatusCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsMsgMcActionStatus>
    {
        public static readonly Ros2Aimdk_msgsMsgMcActionStatusCodec Instance = new Ros2Aimdk_msgsMsgMcActionStatusCodec();

        private Ros2Aimdk_msgsMsgMcActionStatusCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/msg/McActionStatus";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_8c05e9540004b968b042b32ed0164af4857574186776f311be9b3ecde209ad48";
        public const int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 4;

        public byte[] Encode(_Ros2Aimdk_msgsMsgMcActionStatus value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsMsgMcActionStatus(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsMsgMcActionStatus Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsMsgMcActionStatus value = ReadRos2Aimdk_msgsMsgMcActionStatus(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsMsgMcActionStatus(_Codecs.Writer writer, _Ros2Aimdk_msgsMsgMcActionStatus value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        int part0 = value.@value;
        writer.Unsigned(unchecked((uint)part0), 4);
    }

    private static _Ros2Aimdk_msgsMsgMcActionStatus ReadRos2Aimdk_msgsMsgMcActionStatus(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsMsgMcActionStatus();
        value.@value = unchecked((int)reader.Unsigned(4));
        return value;
    }

    public sealed class _Ros2Aimdk_msgsMsgMcActionInfo
    {
        public _Ros2Aimdk_msgsMsgMcAction @current_action = new _Ros2Aimdk_msgsMsgMcAction();
        public string @action_desc = "";
        public _Ros2Aimdk_msgsMsgMcActionStatus @status = new _Ros2Aimdk_msgsMsgMcActionStatus();

        public _Ros2Aimdk_msgsMsgMcActionInfo()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsMsgMcActionInfoCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsMsgMcActionInfo>
    {
        public static readonly Ros2Aimdk_msgsMsgMcActionInfoCodec Instance = new Ros2Aimdk_msgsMsgMcActionInfoCodec();

        private Ros2Aimdk_msgsMsgMcActionInfoCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/msg/McActionInfo";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_9c3c209060709befea26f340e6a607f4c6ddb00c638d1dedf5dd0cfa23f2e5e9";
        public const int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 140;

        public byte[] Encode(_Ros2Aimdk_msgsMsgMcActionInfo value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsMsgMcActionInfo(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsMsgMcActionInfo Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsMsgMcActionInfo value = ReadRos2Aimdk_msgsMsgMcActionInfo(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsMsgMcActionInfo(_Codecs.Writer writer, _Ros2Aimdk_msgsMsgMcActionInfo value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Aimdk_msgsMsgMcAction part0 = value.@current_action;
        WriteRos2Aimdk_msgsMsgMcAction(writer, part0);
        string part1 = value.@action_desc;
        WriteText(writer, part1, 128);
        _Ros2Aimdk_msgsMsgMcActionStatus part2 = value.@status;
        WriteRos2Aimdk_msgsMsgMcActionStatus(writer, part2);
    }

    private static _Ros2Aimdk_msgsMsgMcActionInfo ReadRos2Aimdk_msgsMsgMcActionInfo(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsMsgMcActionInfo();
        value.@current_action = ReadRos2Aimdk_msgsMsgMcAction(reader);
        value.@action_desc = ReadText(reader, 128);
        value.@status = ReadRos2Aimdk_msgsMsgMcActionStatus(reader);
        return value;
    }

    public sealed class _Ros2Aimdk_msgsMsgMcControlArea
    {
        public int @value = 0;

        public _Ros2Aimdk_msgsMsgMcControlArea()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsMsgMcControlAreaCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsMsgMcControlArea>
    {
        public static readonly Ros2Aimdk_msgsMsgMcControlAreaCodec Instance = new Ros2Aimdk_msgsMsgMcControlAreaCodec();

        private Ros2Aimdk_msgsMsgMcControlAreaCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/msg/McControlArea";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_ca241b8a191674136f0eeb0deee84b5e284de71f384038c9a5d6083eb4fc75c9";
        public const int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 4;

        public byte[] Encode(_Ros2Aimdk_msgsMsgMcControlArea value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsMsgMcControlArea(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsMsgMcControlArea Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsMsgMcControlArea value = ReadRos2Aimdk_msgsMsgMcControlArea(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsMsgMcControlArea(_Codecs.Writer writer, _Ros2Aimdk_msgsMsgMcControlArea value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        int part0 = value.@value;
        writer.Unsigned(unchecked((uint)part0), 4);
    }

    private static _Ros2Aimdk_msgsMsgMcControlArea ReadRos2Aimdk_msgsMsgMcControlArea(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsMsgMcControlArea();
        value.@value = unchecked((int)reader.Unsigned(4));
        return value;
    }

    public sealed class _Ros2Aimdk_msgsMsgMcInputAction
    {
        public int @value = 0;

        public _Ros2Aimdk_msgsMsgMcInputAction()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsMsgMcInputActionCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsMsgMcInputAction>
    {
        public static readonly Ros2Aimdk_msgsMsgMcInputActionCodec Instance = new Ros2Aimdk_msgsMsgMcInputActionCodec();

        private Ros2Aimdk_msgsMsgMcInputActionCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/msg/McInputAction";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_7016737845145fd03a104665957b475c512400775b93981573a40d0da30e15d9";
        public const int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 4;

        public byte[] Encode(_Ros2Aimdk_msgsMsgMcInputAction value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsMsgMcInputAction(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsMsgMcInputAction Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsMsgMcInputAction value = ReadRos2Aimdk_msgsMsgMcInputAction(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsMsgMcInputAction(_Codecs.Writer writer, _Ros2Aimdk_msgsMsgMcInputAction value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        int part0 = value.@value;
        writer.Unsigned(unchecked((uint)part0), 4);
    }

    private static _Ros2Aimdk_msgsMsgMcInputAction ReadRos2Aimdk_msgsMsgMcInputAction(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsMsgMcInputAction();
        value.@value = unchecked((int)reader.Unsigned(4));
        return value;
    }

    public sealed class _Ros2Aimdk_msgsMsgMcInputSource
    {
        public string @name = "";
        public int @priority = 0;
        public int @timeout = 0;

        public _Ros2Aimdk_msgsMsgMcInputSource()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsMsgMcInputSourceCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsMsgMcInputSource>
    {
        public static readonly Ros2Aimdk_msgsMsgMcInputSourceCodec Instance = new Ros2Aimdk_msgsMsgMcInputSourceCodec();

        private Ros2Aimdk_msgsMsgMcInputSourceCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/msg/McInputSource";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_4909fe165c71d1104207b393ba76d55347aa02836ebac251f6b57259ced1d1dd";
        public const int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 140;

        public byte[] Encode(_Ros2Aimdk_msgsMsgMcInputSource value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsMsgMcInputSource(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsMsgMcInputSource Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsMsgMcInputSource value = ReadRos2Aimdk_msgsMsgMcInputSource(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsMsgMcInputSource(_Codecs.Writer writer, _Ros2Aimdk_msgsMsgMcInputSource value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        string part0 = value.@name;
        WriteText(writer, part0, 128);
        int part1 = value.@priority;
        writer.Unsigned(unchecked((uint)part1), 4);
        int part2 = value.@timeout;
        writer.Unsigned(unchecked((uint)part2), 4);
    }

    private static _Ros2Aimdk_msgsMsgMcInputSource ReadRos2Aimdk_msgsMsgMcInputSource(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsMsgMcInputSource();
        value.@name = ReadText(reader, 128);
        value.@priority = unchecked((int)reader.Unsigned(4));
        value.@timeout = unchecked((int)reader.Unsigned(4));
        return value;
    }

    public sealed class _Ros2Aimdk_msgsMsgMcLocomotionVelocity
    {
        public _Ros2Aimdk_msgsMsgMessageHeader @header = new _Ros2Aimdk_msgsMsgMessageHeader();
        public string @source = "";
        public double @forward_velocity = 0;
        public double @lateral_velocity = 0;
        public double @angular_velocity = 0;

        public _Ros2Aimdk_msgsMsgMcLocomotionVelocity()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsMsgMcLocomotionVelocityCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsMsgMcLocomotionVelocity>
    {
        public static readonly Ros2Aimdk_msgsMsgMcLocomotionVelocityCodec Instance = new Ros2Aimdk_msgsMsgMcLocomotionVelocityCodec();

        private Ros2Aimdk_msgsMsgMcLocomotionVelocityCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/msg/McLocomotionVelocity";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_a3c45cd56bc3098af00eefba2b2fc5c34c6439228d3429ab077d80b60ef8ca00";
        public const int MIN_WIRE_BYTES = 52, MAX_WIRE_BYTES = 308;

        public byte[] Encode(_Ros2Aimdk_msgsMsgMcLocomotionVelocity value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsMsgMcLocomotionVelocity(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsMsgMcLocomotionVelocity Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsMsgMcLocomotionVelocity value = ReadRos2Aimdk_msgsMsgMcLocomotionVelocity(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsMsgMcLocomotionVelocity(_Codecs.Writer writer, _Ros2Aimdk_msgsMsgMcLocomotionVelocity value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Aimdk_msgsMsgMessageHeader part0 = value.@header;
        WriteRos2Aimdk_msgsMsgMessageHeader(writer, part0);
        string part1 = value.@source;
        WriteText(writer, part1, 128);
        double part2 = value.@forward_velocity;
        writer.Float64(part2);
        double part3 = value.@lateral_velocity;
        writer.Float64(part3);
        double part4 = value.@angular_velocity;
        writer.Float64(part4);
    }

    private static _Ros2Aimdk_msgsMsgMcLocomotionVelocity ReadRos2Aimdk_msgsMsgMcLocomotionVelocity(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsMsgMcLocomotionVelocity();
        value.@header = ReadRos2Aimdk_msgsMsgMessageHeader(reader);
        value.@source = ReadText(reader, 128);
        value.@forward_velocity = reader.Float64();
        value.@lateral_velocity = reader.Float64();
        value.@angular_velocity = reader.Float64();
        return value;
    }

    public sealed class _Ros2Aimdk_msgsMsgMcPresetMotion
    {
        public int @value = 0;

        public _Ros2Aimdk_msgsMsgMcPresetMotion()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsMsgMcPresetMotionCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsMsgMcPresetMotion>
    {
        public static readonly Ros2Aimdk_msgsMsgMcPresetMotionCodec Instance = new Ros2Aimdk_msgsMsgMcPresetMotionCodec();

        private Ros2Aimdk_msgsMsgMcPresetMotionCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/msg/McPresetMotion";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_7421ee5b50a30799907e6f521dd97874158a945019f09cecf168a8f3130c9153";
        public const int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 4;

        public byte[] Encode(_Ros2Aimdk_msgsMsgMcPresetMotion value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsMsgMcPresetMotion(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsMsgMcPresetMotion Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsMsgMcPresetMotion value = ReadRos2Aimdk_msgsMsgMcPresetMotion(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsMsgMcPresetMotion(_Codecs.Writer writer, _Ros2Aimdk_msgsMsgMcPresetMotion value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        int part0 = value.@value;
        writer.Unsigned(unchecked((uint)part0), 4);
    }

    private static _Ros2Aimdk_msgsMsgMcPresetMotion ReadRos2Aimdk_msgsMsgMcPresetMotion(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsMsgMcPresetMotion();
        value.@value = unchecked((int)reader.Unsigned(4));
        return value;
    }

    public sealed class _Ros2Aimdk_msgsMsgTtsPriorityLevel
    {
        public byte @value = 0;

        public _Ros2Aimdk_msgsMsgTtsPriorityLevel()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsMsgTtsPriorityLevelCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsMsgTtsPriorityLevel>
    {
        public static readonly Ros2Aimdk_msgsMsgTtsPriorityLevelCodec Instance = new Ros2Aimdk_msgsMsgTtsPriorityLevelCodec();

        private Ros2Aimdk_msgsMsgTtsPriorityLevelCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/msg/TtsPriorityLevel";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_38bce7b033528697c6667c348c66d327a0d63f176b519189d3720279591cd90a";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros2Aimdk_msgsMsgTtsPriorityLevel value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsMsgTtsPriorityLevel(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsMsgTtsPriorityLevel Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsMsgTtsPriorityLevel value = ReadRos2Aimdk_msgsMsgTtsPriorityLevel(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsMsgTtsPriorityLevel(_Codecs.Writer writer, _Ros2Aimdk_msgsMsgTtsPriorityLevel value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        byte part0 = value.@value;
        writer.Unsigned(part0, 1);
    }

    private static _Ros2Aimdk_msgsMsgTtsPriorityLevel ReadRos2Aimdk_msgsMsgTtsPriorityLevel(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsMsgTtsPriorityLevel();
        value.@value = unchecked((byte)reader.Unsigned(1));
        return value;
    }

    public sealed class _Ros2Aimdk_msgsMsgPlayMediaFileRequest
    {
        public string @file_name = "";
        public uint @sample_rate = 0;
        public _Ros2Aimdk_msgsMsgTtsPriorityLevel @priority_level = new _Ros2Aimdk_msgsMsgTtsPriorityLevel();
        public uint @priority_weight = 0;
        public string @domain = "";
        public string @trace_id = "";
        public bool @is_interrupted = false;

        public _Ros2Aimdk_msgsMsgPlayMediaFileRequest()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsMsgPlayMediaFileRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsMsgPlayMediaFileRequest>
    {
        public static readonly Ros2Aimdk_msgsMsgPlayMediaFileRequestCodec Instance = new Ros2Aimdk_msgsMsgPlayMediaFileRequestCodec();

        private Ros2Aimdk_msgsMsgPlayMediaFileRequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/msg/PlayMediaFileRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_de5d1ad3e7b16b0aaac78736982e24c1a1f3366952cb1b08f59a86bfaf70d254";
        public const int MIN_WIRE_BYTES = 22, MAX_WIRE_BYTES = 406;

        public byte[] Encode(_Ros2Aimdk_msgsMsgPlayMediaFileRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsMsgPlayMediaFileRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsMsgPlayMediaFileRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsMsgPlayMediaFileRequest value = ReadRos2Aimdk_msgsMsgPlayMediaFileRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsMsgPlayMediaFileRequest(_Codecs.Writer writer, _Ros2Aimdk_msgsMsgPlayMediaFileRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        string part0 = value.@file_name;
        WriteText(writer, part0, 128);
        uint part1 = value.@sample_rate;
        writer.Unsigned(part1, 4);
        _Ros2Aimdk_msgsMsgTtsPriorityLevel part2 = value.@priority_level;
        WriteRos2Aimdk_msgsMsgTtsPriorityLevel(writer, part2);
        uint part3 = value.@priority_weight;
        writer.Unsigned(part3, 4);
        string part4 = value.@domain;
        WriteText(writer, part4, 128);
        string part5 = value.@trace_id;
        WriteText(writer, part5, 128);
        bool part6 = value.@is_interrupted;
        writer.Unsigned(part6 ? 1UL : 0UL, 1);
    }

    private static _Ros2Aimdk_msgsMsgPlayMediaFileRequest ReadRos2Aimdk_msgsMsgPlayMediaFileRequest(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsMsgPlayMediaFileRequest();
        value.@file_name = ReadText(reader, 128);
        value.@sample_rate = unchecked((uint)reader.Unsigned(4));
        value.@priority_level = ReadRos2Aimdk_msgsMsgTtsPriorityLevel(reader);
        value.@priority_weight = unchecked((uint)reader.Unsigned(4));
        value.@domain = ReadText(reader, 128);
        value.@trace_id = ReadText(reader, 128);
        value.@is_interrupted = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Aimdk_msgsMsgPlayTtsRequest
    {
        public string @text = "";
        public _Ros2Aimdk_msgsMsgTtsPriorityLevel @priority_level = new _Ros2Aimdk_msgsMsgTtsPriorityLevel();
        public uint @priority_weight = 0;
        public string @domain = "";
        public string @trace_id = "";
        public bool @is_interrupted = false;

        public _Ros2Aimdk_msgsMsgPlayTtsRequest()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsMsgPlayTtsRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsMsgPlayTtsRequest>
    {
        public static readonly Ros2Aimdk_msgsMsgPlayTtsRequestCodec Instance = new Ros2Aimdk_msgsMsgPlayTtsRequestCodec();

        private Ros2Aimdk_msgsMsgPlayTtsRequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/msg/PlayTtsRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_d6410f21a03f560429a39216f36ce03ad040323054f5775b75586b3890802bbd";
        public const int MIN_WIRE_BYTES = 18, MAX_WIRE_BYTES = 402;

        public byte[] Encode(_Ros2Aimdk_msgsMsgPlayTtsRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsMsgPlayTtsRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsMsgPlayTtsRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsMsgPlayTtsRequest value = ReadRos2Aimdk_msgsMsgPlayTtsRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsMsgPlayTtsRequest(_Codecs.Writer writer, _Ros2Aimdk_msgsMsgPlayTtsRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        string part0 = value.@text;
        WriteText(writer, part0, 128);
        _Ros2Aimdk_msgsMsgTtsPriorityLevel part1 = value.@priority_level;
        WriteRos2Aimdk_msgsMsgTtsPriorityLevel(writer, part1);
        uint part2 = value.@priority_weight;
        writer.Unsigned(part2, 4);
        string part3 = value.@domain;
        WriteText(writer, part3, 128);
        string part4 = value.@trace_id;
        WriteText(writer, part4, 128);
        bool part5 = value.@is_interrupted;
        writer.Unsigned(part5 ? 1UL : 0UL, 1);
    }

    private static _Ros2Aimdk_msgsMsgPlayTtsRequest ReadRos2Aimdk_msgsMsgPlayTtsRequest(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsMsgPlayTtsRequest();
        value.@text = ReadText(reader, 128);
        value.@priority_level = ReadRos2Aimdk_msgsMsgTtsPriorityLevel(reader);
        value.@priority_weight = unchecked((uint)reader.Unsigned(4));
        value.@domain = ReadText(reader, 128);
        value.@trace_id = ReadText(reader, 128);
        value.@is_interrupted = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Aimdk_msgsMsgPlayTtsResponse
    {
        public string @text = "";
        public _Ros2Aimdk_msgsMsgTtsPriorityLevel @priority_level = new _Ros2Aimdk_msgsMsgTtsPriorityLevel();
        public uint @priority_weight = 0;
        public string @domain = "";
        public string @trace_id = "";
        public bool @is_success = false;
        public string @error_message = "";
        public uint @estimated_duration = 0;

        public _Ros2Aimdk_msgsMsgPlayTtsResponse()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsMsgPlayTtsResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsMsgPlayTtsResponse>
    {
        public static readonly Ros2Aimdk_msgsMsgPlayTtsResponseCodec Instance = new Ros2Aimdk_msgsMsgPlayTtsResponseCodec();

        private Ros2Aimdk_msgsMsgPlayTtsResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/msg/PlayTtsResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_8347d2c5ae04c1db9ea2fd0c6afdffcb5e1327a170e15a7e861a00a08c8a8af3";
        public const int MIN_WIRE_BYTES = 26, MAX_WIRE_BYTES = 538;

        public byte[] Encode(_Ros2Aimdk_msgsMsgPlayTtsResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsMsgPlayTtsResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsMsgPlayTtsResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsMsgPlayTtsResponse value = ReadRos2Aimdk_msgsMsgPlayTtsResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsMsgPlayTtsResponse(_Codecs.Writer writer, _Ros2Aimdk_msgsMsgPlayTtsResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        string part0 = value.@text;
        WriteText(writer, part0, 128);
        _Ros2Aimdk_msgsMsgTtsPriorityLevel part1 = value.@priority_level;
        WriteRos2Aimdk_msgsMsgTtsPriorityLevel(writer, part1);
        uint part2 = value.@priority_weight;
        writer.Unsigned(part2, 4);
        string part3 = value.@domain;
        WriteText(writer, part3, 128);
        string part4 = value.@trace_id;
        WriteText(writer, part4, 128);
        bool part5 = value.@is_success;
        writer.Unsigned(part5 ? 1UL : 0UL, 1);
        string part6 = value.@error_message;
        WriteText(writer, part6, 128);
        uint part7 = value.@estimated_duration;
        writer.Unsigned(part7, 4);
    }

    private static _Ros2Aimdk_msgsMsgPlayTtsResponse ReadRos2Aimdk_msgsMsgPlayTtsResponse(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsMsgPlayTtsResponse();
        value.@text = ReadText(reader, 128);
        value.@priority_level = ReadRos2Aimdk_msgsMsgTtsPriorityLevel(reader);
        value.@priority_weight = unchecked((uint)reader.Unsigned(4));
        value.@domain = ReadText(reader, 128);
        value.@trace_id = ReadText(reader, 128);
        value.@is_success = ReadBool(reader);
        value.@error_message = ReadText(reader, 128);
        value.@estimated_duration = unchecked((uint)reader.Unsigned(4));
        return value;
    }

    public sealed class _Ros2Aimdk_msgsMsgPmuState
    {
        public string @pmu_software_version = "";
        public string @pmu_hardware_version = "";
        public string @pmu_protocol_version = "";
        public uint @pmu_bool_status = 0;
        public double @head_power_current = 0;
        public double @output_48v_current = 0;
        public double @rk3588_current = 0;
        public double @output_12v_current = 0;
        public double @bus_48v_current = 0;
        public double @orin_current = 0;
        public double @bus_48v_pmos_voltage = 0;
        public double @battery_voltage = 0;
        public double @fan_voltage = 0;
        public double @output_12v_voltage = 0;
        public double @output_48v_voltage = 0;
        public double @bus_48v_voltage = 0;
        public double @head_power_voltage = 0;
        public double @orin_voltage = 0;
        public double @rk3588_voltage = 0;
        public string @bms_manufacturer = "";
        public string @bms_serial_number = "";
        public string @bms_hardware_version = "";
        public string @bms_software_version = "";
        public uint @bms_status_bits = 0;
        public ushort @battery_balance_line_resistance = 0;
        public double @battery_pack_voltage = 0;
        public double @battery_current = 0;
        public double @battery_output_power = 0;
        public double @battery_temperature = 0;
        public uint @battery_remaining_capacity = 0;
        public byte @battery_remaining_capacity_percentage = 0;
        public ushort @battery_cycle_count = 0;
        public uint @battery_cycle_total_capacity = 0;

        public _Ros2Aimdk_msgsMsgPmuState()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsMsgPmuStateCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsMsgPmuState>
    {
        public static readonly Ros2Aimdk_msgsMsgPmuStateCodec Instance = new Ros2Aimdk_msgsMsgPmuStateCodec();

        private Ros2Aimdk_msgsMsgPmuStateCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/msg/PmuState";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_5b7bda78c820384993ef98ff4563e61cc55fa29d5176db91b91bd787c91b8a1c";
        public const int MIN_WIRE_BYTES = 201, MAX_WIRE_BYTES = 1097;

        public byte[] Encode(_Ros2Aimdk_msgsMsgPmuState value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsMsgPmuState(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsMsgPmuState Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsMsgPmuState value = ReadRos2Aimdk_msgsMsgPmuState(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsMsgPmuState(_Codecs.Writer writer, _Ros2Aimdk_msgsMsgPmuState value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        string part0 = value.@pmu_software_version;
        WriteText(writer, part0, 128);
        string part1 = value.@pmu_hardware_version;
        WriteText(writer, part1, 128);
        string part2 = value.@pmu_protocol_version;
        WriteText(writer, part2, 128);
        uint part3 = value.@pmu_bool_status;
        writer.Unsigned(part3, 4);
        double part4 = value.@head_power_current;
        writer.Float64(part4);
        double part5 = value.@output_48v_current;
        writer.Float64(part5);
        double part6 = value.@rk3588_current;
        writer.Float64(part6);
        double part7 = value.@output_12v_current;
        writer.Float64(part7);
        double part8 = value.@bus_48v_current;
        writer.Float64(part8);
        double part9 = value.@orin_current;
        writer.Float64(part9);
        double part10 = value.@bus_48v_pmos_voltage;
        writer.Float64(part10);
        double part11 = value.@battery_voltage;
        writer.Float64(part11);
        double part12 = value.@fan_voltage;
        writer.Float64(part12);
        double part13 = value.@output_12v_voltage;
        writer.Float64(part13);
        double part14 = value.@output_48v_voltage;
        writer.Float64(part14);
        double part15 = value.@bus_48v_voltage;
        writer.Float64(part15);
        double part16 = value.@head_power_voltage;
        writer.Float64(part16);
        double part17 = value.@orin_voltage;
        writer.Float64(part17);
        double part18 = value.@rk3588_voltage;
        writer.Float64(part18);
        string part19 = value.@bms_manufacturer;
        WriteText(writer, part19, 128);
        string part20 = value.@bms_serial_number;
        WriteText(writer, part20, 128);
        string part21 = value.@bms_hardware_version;
        WriteText(writer, part21, 128);
        string part22 = value.@bms_software_version;
        WriteText(writer, part22, 128);
        uint part23 = value.@bms_status_bits;
        writer.Unsigned(part23, 4);
        ushort part24 = value.@battery_balance_line_resistance;
        writer.Unsigned(part24, 2);
        double part25 = value.@battery_pack_voltage;
        writer.Float64(part25);
        double part26 = value.@battery_current;
        writer.Float64(part26);
        double part27 = value.@battery_output_power;
        writer.Float64(part27);
        double part28 = value.@battery_temperature;
        writer.Float64(part28);
        uint part29 = value.@battery_remaining_capacity;
        writer.Unsigned(part29, 4);
        byte part30 = value.@battery_remaining_capacity_percentage;
        writer.Unsigned(part30, 1);
        ushort part31 = value.@battery_cycle_count;
        writer.Unsigned(part31, 2);
        uint part32 = value.@battery_cycle_total_capacity;
        writer.Unsigned(part32, 4);
    }

    private static _Ros2Aimdk_msgsMsgPmuState ReadRos2Aimdk_msgsMsgPmuState(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsMsgPmuState();
        value.@pmu_software_version = ReadText(reader, 128);
        value.@pmu_hardware_version = ReadText(reader, 128);
        value.@pmu_protocol_version = ReadText(reader, 128);
        value.@pmu_bool_status = unchecked((uint)reader.Unsigned(4));
        value.@head_power_current = reader.Float64();
        value.@output_48v_current = reader.Float64();
        value.@rk3588_current = reader.Float64();
        value.@output_12v_current = reader.Float64();
        value.@bus_48v_current = reader.Float64();
        value.@orin_current = reader.Float64();
        value.@bus_48v_pmos_voltage = reader.Float64();
        value.@battery_voltage = reader.Float64();
        value.@fan_voltage = reader.Float64();
        value.@output_12v_voltage = reader.Float64();
        value.@output_48v_voltage = reader.Float64();
        value.@bus_48v_voltage = reader.Float64();
        value.@head_power_voltage = reader.Float64();
        value.@orin_voltage = reader.Float64();
        value.@rk3588_voltage = reader.Float64();
        value.@bms_manufacturer = ReadText(reader, 128);
        value.@bms_serial_number = ReadText(reader, 128);
        value.@bms_hardware_version = ReadText(reader, 128);
        value.@bms_software_version = ReadText(reader, 128);
        value.@bms_status_bits = unchecked((uint)reader.Unsigned(4));
        value.@battery_balance_line_resistance = unchecked((ushort)reader.Unsigned(2));
        value.@battery_pack_voltage = reader.Float64();
        value.@battery_current = reader.Float64();
        value.@battery_output_power = reader.Float64();
        value.@battery_temperature = reader.Float64();
        value.@battery_remaining_capacity = unchecked((uint)reader.Unsigned(4));
        value.@battery_remaining_capacity_percentage = unchecked((byte)reader.Unsigned(1));
        value.@battery_cycle_count = unchecked((ushort)reader.Unsigned(2));
        value.@battery_cycle_total_capacity = unchecked((uint)reader.Unsigned(4));
        return value;
    }

    public sealed class _Ros2Aimdk_msgsMsgProcessedAudioOutput
    {
        public _Ros2Aimdk_msgsMsgMessageHeader @header = new _Ros2Aimdk_msgsMsgMessageHeader();
        public uint @stream_id = 0;
        public _Ros2Aimdk_msgsMsgAudioVadStateType @audio_vad_state = new _Ros2Aimdk_msgsMsgAudioVadStateType();
        public byte[] @audio_data = new byte[0];

        public _Ros2Aimdk_msgsMsgProcessedAudioOutput()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsMsgProcessedAudioOutputCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsMsgProcessedAudioOutput>
    {
        public static readonly Ros2Aimdk_msgsMsgProcessedAudioOutputCodec Instance = new Ros2Aimdk_msgsMsgProcessedAudioOutputCodec();

        private Ros2Aimdk_msgsMsgProcessedAudioOutputCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/msg/ProcessedAudioOutput";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_8b0ea5b4fc3db2efe41730f74a261ee6ea94ad34ee35ff42ae5288ddf501cc30";
        public const int MIN_WIRE_BYTES = 33, MAX_WIRE_BYTES = 417;

        public byte[] Encode(_Ros2Aimdk_msgsMsgProcessedAudioOutput value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsMsgProcessedAudioOutput(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsMsgProcessedAudioOutput Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsMsgProcessedAudioOutput value = ReadRos2Aimdk_msgsMsgProcessedAudioOutput(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsMsgProcessedAudioOutput(_Codecs.Writer writer, _Ros2Aimdk_msgsMsgProcessedAudioOutput value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Aimdk_msgsMsgMessageHeader part0 = value.@header;
        WriteRos2Aimdk_msgsMsgMessageHeader(writer, part0);
        uint part1 = value.@stream_id;
        writer.Unsigned(part1, 4);
        _Ros2Aimdk_msgsMsgAudioVadStateType part2 = value.@audio_vad_state;
        WriteRos2Aimdk_msgsMsgAudioVadStateType(writer, part2);
        byte[] part3 = value.@audio_data;
        if(part3 == null || part3.Length > 256)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part3.Length, 4);
        for(int index = 0; index < part3.Length; ++index)
        {
            byte element = part3[index];
            writer.Unsigned(element, 1);
        }
    }

    private static _Ros2Aimdk_msgsMsgProcessedAudioOutput ReadRos2Aimdk_msgsMsgProcessedAudioOutput(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsMsgProcessedAudioOutput();
        value.@header = ReadRos2Aimdk_msgsMsgMessageHeader(reader);
        value.@stream_id = unchecked((uint)reader.Unsigned(4));
        value.@audio_vad_state = ReadRos2Aimdk_msgsMsgAudioVadStateType(reader);
        value.@audio_data = new byte[ReadCount(reader, 256, 1)];
        for(int index = 0; index < value.@audio_data.Length; ++index)
            value.@audio_data[index] = unchecked((byte)reader.Unsigned(1));
        return value;
    }

    public sealed class _Ros2Aimdk_msgsMsgTouchState
    {
        public _Ros2Aimdk_msgsMsgMessageHeader @header = new _Ros2Aimdk_msgsMsgMessageHeader();
        public byte @event_type = 0;
        public uint[] @data = new uint[8];
        public uint[] @threshold = new uint[8];
        public bool[] @is_touched = new bool[8];

        public _Ros2Aimdk_msgsMsgTouchState()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsMsgTouchStateCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsMsgTouchState>
    {
        public static readonly Ros2Aimdk_msgsMsgTouchStateCodec Instance = new Ros2Aimdk_msgsMsgTouchStateCodec();

        private Ros2Aimdk_msgsMsgTouchStateCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/msg/TouchState";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_90d5626f09f2254a102224e74c1f8a4d8db63910b7e5eeafa519afd79c7b1564";
        public const int MIN_WIRE_BYTES = 97, MAX_WIRE_BYTES = 225;

        public byte[] Encode(_Ros2Aimdk_msgsMsgTouchState value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsMsgTouchState(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsMsgTouchState Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsMsgTouchState value = ReadRos2Aimdk_msgsMsgTouchState(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsMsgTouchState(_Codecs.Writer writer, _Ros2Aimdk_msgsMsgTouchState value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Aimdk_msgsMsgMessageHeader part0 = value.@header;
        WriteRos2Aimdk_msgsMsgMessageHeader(writer, part0);
        byte part1 = value.@event_type;
        writer.Unsigned(part1, 1);
        uint[] part2 = value.@data;
        if(part2 == null || part2.Length != 8)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part2.Length; ++index)
        {
            uint element = part2[index];
            writer.Unsigned(element, 4);
        }
        uint[] part3 = value.@threshold;
        if(part3 == null || part3.Length != 8)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part3.Length; ++index)
        {
            uint element = part3[index];
            writer.Unsigned(element, 4);
        }
        bool[] part4 = value.@is_touched;
        if(part4 == null || part4.Length != 8)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part4.Length; ++index)
        {
            bool element = part4[index];
            writer.Unsigned(element ? 1UL : 0UL, 1);
        }
    }

    private static _Ros2Aimdk_msgsMsgTouchState ReadRos2Aimdk_msgsMsgTouchState(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsMsgTouchState();
        value.@header = ReadRos2Aimdk_msgsMsgMessageHeader(reader);
        value.@event_type = unchecked((byte)reader.Unsigned(1));
        value.@data = new uint[8];
        for(int index = 0; index < value.@data.Length; ++index)
            value.@data[index] = unchecked((uint)reader.Unsigned(4));
        value.@threshold = new uint[8];
        for(int index = 0; index < value.@threshold.Length; ++index)
            value.@threshold[index] = unchecked((uint)reader.Unsigned(4));
        value.@is_touched = new bool[8];
        for(int index = 0; index < value.@is_touched.Length; ++index)
            value.@is_touched[index] = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Aimdk_msgsSrvGetAllJointState_Request
    {
        public _Ros2Aimdk_msgsMsgCommonRequest @request = new _Ros2Aimdk_msgsMsgCommonRequest();

        public _Ros2Aimdk_msgsSrvGetAllJointState_Request()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsSrvGetAllJointState_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsSrvGetAllJointState_Request>
    {
        public static readonly Ros2Aimdk_msgsSrvGetAllJointState_RequestCodec Instance = new Ros2Aimdk_msgsSrvGetAllJointState_RequestCodec();

        private Ros2Aimdk_msgsSrvGetAllJointState_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/srv/GetAllJointState_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_6ebdd4b2a15c8d5f3089fa93003d73adb818d92b51ecb65ea817b72e0ee90260";
        public const int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 8;

        public byte[] Encode(_Ros2Aimdk_msgsSrvGetAllJointState_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsSrvGetAllJointState_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsSrvGetAllJointState_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsSrvGetAllJointState_Request value = ReadRos2Aimdk_msgsSrvGetAllJointState_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsSrvGetAllJointState_Request(_Codecs.Writer writer, _Ros2Aimdk_msgsSrvGetAllJointState_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Aimdk_msgsMsgCommonRequest part0 = value.@request;
        WriteRos2Aimdk_msgsMsgCommonRequest(writer, part0);
    }

    private static _Ros2Aimdk_msgsSrvGetAllJointState_Request ReadRos2Aimdk_msgsSrvGetAllJointState_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsSrvGetAllJointState_Request();
        value.@request = ReadRos2Aimdk_msgsMsgCommonRequest(reader);
        return value;
    }

    public sealed class _Ros2Aimdk_msgsSrvGetAllJointState_Response
    {
        public _Ros2Aimdk_msgsMsgCommonResponse @reponse = new _Ros2Aimdk_msgsMsgCommonResponse();
        public _Ros2Aimdk_msgsMsgJointState[] @head_joints = new _Ros2Aimdk_msgsMsgJointState[0];
        public _Ros2Aimdk_msgsMsgJointState[] @arm_joints = new _Ros2Aimdk_msgsMsgJointState[0];
        public _Ros2Aimdk_msgsMsgJointState[] @waist_joints = new _Ros2Aimdk_msgsMsgJointState[0];
        public _Ros2Aimdk_msgsMsgJointState[] @leg_joints = new _Ros2Aimdk_msgsMsgJointState[0];

        public _Ros2Aimdk_msgsSrvGetAllJointState_Response()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsSrvGetAllJointState_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsSrvGetAllJointState_Response>
    {
        public static readonly Ros2Aimdk_msgsSrvGetAllJointState_ResponseCodec Instance = new Ros2Aimdk_msgsSrvGetAllJointState_ResponseCodec();

        private Ros2Aimdk_msgsSrvGetAllJointState_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/srv/GetAllJointState_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_14baa3fa0f7685798bdc9f15f4f65ca87070ca388fcbe65696fa030b0d68f793";
        public const int MIN_WIRE_BYTES = 40, MAX_WIRE_BYTES = 2712;

        public byte[] Encode(_Ros2Aimdk_msgsSrvGetAllJointState_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsSrvGetAllJointState_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsSrvGetAllJointState_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsSrvGetAllJointState_Response value = ReadRos2Aimdk_msgsSrvGetAllJointState_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsSrvGetAllJointState_Response(_Codecs.Writer writer, _Ros2Aimdk_msgsSrvGetAllJointState_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Aimdk_msgsMsgCommonResponse part0 = value.@reponse;
        WriteRos2Aimdk_msgsMsgCommonResponse(writer, part0);
        _Ros2Aimdk_msgsMsgJointState[] part1 = value.@head_joints;
        if(part1 == null || part1.Length > 4)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part1.Length, 4);
        for(int index = 0; index < part1.Length; ++index)
        {
            _Ros2Aimdk_msgsMsgJointState element = part1[index];
            WriteRos2Aimdk_msgsMsgJointState(writer, element);
        }
        _Ros2Aimdk_msgsMsgJointState[] part2 = value.@arm_joints;
        if(part2 == null || part2.Length > 4)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part2.Length, 4);
        for(int index = 0; index < part2.Length; ++index)
        {
            _Ros2Aimdk_msgsMsgJointState element = part2[index];
            WriteRos2Aimdk_msgsMsgJointState(writer, element);
        }
        _Ros2Aimdk_msgsMsgJointState[] part3 = value.@waist_joints;
        if(part3 == null || part3.Length > 4)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part3.Length, 4);
        for(int index = 0; index < part3.Length; ++index)
        {
            _Ros2Aimdk_msgsMsgJointState element = part3[index];
            WriteRos2Aimdk_msgsMsgJointState(writer, element);
        }
        _Ros2Aimdk_msgsMsgJointState[] part4 = value.@leg_joints;
        if(part4 == null || part4.Length > 4)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part4.Length, 4);
        for(int index = 0; index < part4.Length; ++index)
        {
            _Ros2Aimdk_msgsMsgJointState element = part4[index];
            WriteRos2Aimdk_msgsMsgJointState(writer, element);
        }
    }

    private static _Ros2Aimdk_msgsSrvGetAllJointState_Response ReadRos2Aimdk_msgsSrvGetAllJointState_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsSrvGetAllJointState_Response();
        value.@reponse = ReadRos2Aimdk_msgsMsgCommonResponse(reader);
        value.@head_joints = new _Ros2Aimdk_msgsMsgJointState[ReadCount(reader, 4, 31)];
        for(int index = 0; index < value.@head_joints.Length; ++index)
            value.@head_joints[index] = ReadRos2Aimdk_msgsMsgJointState(reader);
        value.@arm_joints = new _Ros2Aimdk_msgsMsgJointState[ReadCount(reader, 4, 31)];
        for(int index = 0; index < value.@arm_joints.Length; ++index)
            value.@arm_joints[index] = ReadRos2Aimdk_msgsMsgJointState(reader);
        value.@waist_joints = new _Ros2Aimdk_msgsMsgJointState[ReadCount(reader, 4, 31)];
        for(int index = 0; index < value.@waist_joints.Length; ++index)
            value.@waist_joints[index] = ReadRos2Aimdk_msgsMsgJointState(reader);
        value.@leg_joints = new _Ros2Aimdk_msgsMsgJointState[ReadCount(reader, 4, 31)];
        for(int index = 0; index < value.@leg_joints.Length; ++index)
            value.@leg_joints[index] = ReadRos2Aimdk_msgsMsgJointState(reader);
        return value;
    }

    public sealed class _Ros2Aimdk_msgsSrvGetCurrentInputSource_Request
    {
        public _Ros2Aimdk_msgsMsgCommonRequest @request = new _Ros2Aimdk_msgsMsgCommonRequest();

        public _Ros2Aimdk_msgsSrvGetCurrentInputSource_Request()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsSrvGetCurrentInputSource_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsSrvGetCurrentInputSource_Request>
    {
        public static readonly Ros2Aimdk_msgsSrvGetCurrentInputSource_RequestCodec Instance = new Ros2Aimdk_msgsSrvGetCurrentInputSource_RequestCodec();

        private Ros2Aimdk_msgsSrvGetCurrentInputSource_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/srv/GetCurrentInputSource_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_d5b73ba9bc2ea2f864884a0e278e2a3e327e0af405594a5e7aac7d3884e7143a";
        public const int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 8;

        public byte[] Encode(_Ros2Aimdk_msgsSrvGetCurrentInputSource_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsSrvGetCurrentInputSource_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsSrvGetCurrentInputSource_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsSrvGetCurrentInputSource_Request value = ReadRos2Aimdk_msgsSrvGetCurrentInputSource_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsSrvGetCurrentInputSource_Request(_Codecs.Writer writer, _Ros2Aimdk_msgsSrvGetCurrentInputSource_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Aimdk_msgsMsgCommonRequest part0 = value.@request;
        WriteRos2Aimdk_msgsMsgCommonRequest(writer, part0);
    }

    private static _Ros2Aimdk_msgsSrvGetCurrentInputSource_Request ReadRos2Aimdk_msgsSrvGetCurrentInputSource_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsSrvGetCurrentInputSource_Request();
        value.@request = ReadRos2Aimdk_msgsMsgCommonRequest(reader);
        return value;
    }

    public sealed class _Ros2Aimdk_msgsSrvGetCurrentInputSource_Response
    {
        public _Ros2Aimdk_msgsMsgCommonTaskResponse @response = new _Ros2Aimdk_msgsMsgCommonTaskResponse();
        public _Ros2Aimdk_msgsMsgMcInputSource @input_source = new _Ros2Aimdk_msgsMsgMcInputSource();

        public _Ros2Aimdk_msgsSrvGetCurrentInputSource_Response()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsSrvGetCurrentInputSource_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsSrvGetCurrentInputSource_Response>
    {
        public static readonly Ros2Aimdk_msgsSrvGetCurrentInputSource_ResponseCodec Instance = new Ros2Aimdk_msgsSrvGetCurrentInputSource_ResponseCodec();

        private Ros2Aimdk_msgsSrvGetCurrentInputSource_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/srv/GetCurrentInputSource_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_74952e748930b62ef98f8837c39e3925425b6f3a715fadb0d01339104bafbe5e";
        public const int MIN_WIRE_BYTES = 40, MAX_WIRE_BYTES = 168;

        public byte[] Encode(_Ros2Aimdk_msgsSrvGetCurrentInputSource_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsSrvGetCurrentInputSource_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsSrvGetCurrentInputSource_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsSrvGetCurrentInputSource_Response value = ReadRos2Aimdk_msgsSrvGetCurrentInputSource_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsSrvGetCurrentInputSource_Response(_Codecs.Writer writer, _Ros2Aimdk_msgsSrvGetCurrentInputSource_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Aimdk_msgsMsgCommonTaskResponse part0 = value.@response;
        WriteRos2Aimdk_msgsMsgCommonTaskResponse(writer, part0);
        _Ros2Aimdk_msgsMsgMcInputSource part1 = value.@input_source;
        WriteRos2Aimdk_msgsMsgMcInputSource(writer, part1);
    }

    private static _Ros2Aimdk_msgsSrvGetCurrentInputSource_Response ReadRos2Aimdk_msgsSrvGetCurrentInputSource_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsSrvGetCurrentInputSource_Response();
        value.@response = ReadRos2Aimdk_msgsMsgCommonTaskResponse(reader);
        value.@input_source = ReadRos2Aimdk_msgsMsgMcInputSource(reader);
        return value;
    }

    public sealed class _Ros2Aimdk_msgsSrvGetHandType_Request
    {
        public _Ros2Aimdk_msgsMsgCommonRequest @request = new _Ros2Aimdk_msgsMsgCommonRequest();

        public _Ros2Aimdk_msgsSrvGetHandType_Request()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsSrvGetHandType_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsSrvGetHandType_Request>
    {
        public static readonly Ros2Aimdk_msgsSrvGetHandType_RequestCodec Instance = new Ros2Aimdk_msgsSrvGetHandType_RequestCodec();

        private Ros2Aimdk_msgsSrvGetHandType_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/srv/GetHandType_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_d286d9ff63fa2191490e6aa526330d2a448b37fc47231d9e42d61a3b4ddca470";
        public const int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 8;

        public byte[] Encode(_Ros2Aimdk_msgsSrvGetHandType_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsSrvGetHandType_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsSrvGetHandType_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsSrvGetHandType_Request value = ReadRos2Aimdk_msgsSrvGetHandType_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsSrvGetHandType_Request(_Codecs.Writer writer, _Ros2Aimdk_msgsSrvGetHandType_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Aimdk_msgsMsgCommonRequest part0 = value.@request;
        WriteRos2Aimdk_msgsMsgCommonRequest(writer, part0);
    }

    private static _Ros2Aimdk_msgsSrvGetHandType_Request ReadRos2Aimdk_msgsSrvGetHandType_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsSrvGetHandType_Request();
        value.@request = ReadRos2Aimdk_msgsMsgCommonRequest(reader);
        return value;
    }

    public sealed class _Ros2Aimdk_msgsSrvGetHandType_Response
    {
        public _Ros2Aimdk_msgsMsgCommonResponse @reponse = new _Ros2Aimdk_msgsMsgCommonResponse();
        public _Ros2Aimdk_msgsMsgHandType @left_hands_type = new _Ros2Aimdk_msgsMsgHandType();
        public _Ros2Aimdk_msgsMsgHandType @right_hands_type = new _Ros2Aimdk_msgsMsgHandType();

        public _Ros2Aimdk_msgsSrvGetHandType_Response()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsSrvGetHandType_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsSrvGetHandType_Response>
    {
        public static readonly Ros2Aimdk_msgsSrvGetHandType_ResponseCodec Instance = new Ros2Aimdk_msgsSrvGetHandType_ResponseCodec();

        private Ros2Aimdk_msgsSrvGetHandType_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/srv/GetHandType_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_04f69fc5f7df302c1e73d2a51ffaef813b002ec387014b6d4d8a648e1e5d098c";
        public const int MIN_WIRE_BYTES = 26, MAX_WIRE_BYTES = 154;

        public byte[] Encode(_Ros2Aimdk_msgsSrvGetHandType_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsSrvGetHandType_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsSrvGetHandType_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsSrvGetHandType_Response value = ReadRos2Aimdk_msgsSrvGetHandType_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsSrvGetHandType_Response(_Codecs.Writer writer, _Ros2Aimdk_msgsSrvGetHandType_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Aimdk_msgsMsgCommonResponse part0 = value.@reponse;
        WriteRos2Aimdk_msgsMsgCommonResponse(writer, part0);
        _Ros2Aimdk_msgsMsgHandType part1 = value.@left_hands_type;
        WriteRos2Aimdk_msgsMsgHandType(writer, part1);
        _Ros2Aimdk_msgsMsgHandType part2 = value.@right_hands_type;
        WriteRos2Aimdk_msgsMsgHandType(writer, part2);
    }

    private static _Ros2Aimdk_msgsSrvGetHandType_Response ReadRos2Aimdk_msgsSrvGetHandType_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsSrvGetHandType_Response();
        value.@reponse = ReadRos2Aimdk_msgsMsgCommonResponse(reader);
        value.@left_hands_type = ReadRos2Aimdk_msgsMsgHandType(reader);
        value.@right_hands_type = ReadRos2Aimdk_msgsMsgHandType(reader);
        return value;
    }

    public sealed class _Ros2Aimdk_msgsSrvGetMcAction_Request
    {
        public _Ros2Aimdk_msgsMsgCommonRequest @request = new _Ros2Aimdk_msgsMsgCommonRequest();

        public _Ros2Aimdk_msgsSrvGetMcAction_Request()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsSrvGetMcAction_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsSrvGetMcAction_Request>
    {
        public static readonly Ros2Aimdk_msgsSrvGetMcAction_RequestCodec Instance = new Ros2Aimdk_msgsSrvGetMcAction_RequestCodec();

        private Ros2Aimdk_msgsSrvGetMcAction_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/srv/GetMcAction_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_f6dc5b72271fc51bfb1950b67d671619b65dfabc7931e12889a237fe47d18cfe";
        public const int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 8;

        public byte[] Encode(_Ros2Aimdk_msgsSrvGetMcAction_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsSrvGetMcAction_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsSrvGetMcAction_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsSrvGetMcAction_Request value = ReadRos2Aimdk_msgsSrvGetMcAction_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsSrvGetMcAction_Request(_Codecs.Writer writer, _Ros2Aimdk_msgsSrvGetMcAction_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Aimdk_msgsMsgCommonRequest part0 = value.@request;
        WriteRos2Aimdk_msgsMsgCommonRequest(writer, part0);
    }

    private static _Ros2Aimdk_msgsSrvGetMcAction_Request ReadRos2Aimdk_msgsSrvGetMcAction_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsSrvGetMcAction_Request();
        value.@request = ReadRos2Aimdk_msgsMsgCommonRequest(reader);
        return value;
    }

    public sealed class _Ros2Aimdk_msgsSrvGetMcAction_Response
    {
        public _Ros2Aimdk_msgsMsgResponseHeader @header = new _Ros2Aimdk_msgsMsgResponseHeader();
        public _Ros2Aimdk_msgsMsgMcActionInfo @info = new _Ros2Aimdk_msgsMsgMcActionInfo();

        public _Ros2Aimdk_msgsSrvGetMcAction_Response()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsSrvGetMcAction_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsSrvGetMcAction_Response>
    {
        public static readonly Ros2Aimdk_msgsSrvGetMcAction_ResponseCodec Instance = new Ros2Aimdk_msgsSrvGetMcAction_ResponseCodec();

        private Ros2Aimdk_msgsSrvGetMcAction_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/srv/GetMcAction_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_e2518bce930bc6f8e195b638d9eb5c132dffa93449c94b6f044e6192843df18f";
        public const int MIN_WIRE_BYTES = 28, MAX_WIRE_BYTES = 156;

        public byte[] Encode(_Ros2Aimdk_msgsSrvGetMcAction_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsSrvGetMcAction_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsSrvGetMcAction_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsSrvGetMcAction_Response value = ReadRos2Aimdk_msgsSrvGetMcAction_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsSrvGetMcAction_Response(_Codecs.Writer writer, _Ros2Aimdk_msgsSrvGetMcAction_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Aimdk_msgsMsgResponseHeader part0 = value.@header;
        WriteRos2Aimdk_msgsMsgResponseHeader(writer, part0);
        _Ros2Aimdk_msgsMsgMcActionInfo part1 = value.@info;
        WriteRos2Aimdk_msgsMsgMcActionInfo(writer, part1);
    }

    private static _Ros2Aimdk_msgsSrvGetMcAction_Response ReadRos2Aimdk_msgsSrvGetMcAction_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsSrvGetMcAction_Response();
        value.@header = ReadRos2Aimdk_msgsMsgResponseHeader(reader);
        value.@info = ReadRos2Aimdk_msgsMsgMcActionInfo(reader);
        return value;
    }

    public sealed class _Ros2Aimdk_msgsSrvGetMute_Request
    {
        public _Ros2Aimdk_msgsMsgCommonRequest @request = new _Ros2Aimdk_msgsMsgCommonRequest();

        public _Ros2Aimdk_msgsSrvGetMute_Request()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsSrvGetMute_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsSrvGetMute_Request>
    {
        public static readonly Ros2Aimdk_msgsSrvGetMute_RequestCodec Instance = new Ros2Aimdk_msgsSrvGetMute_RequestCodec();

        private Ros2Aimdk_msgsSrvGetMute_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/srv/GetMute_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_0f3d2a1679b2af2dca96bcdba69e8f076e9a333d4166a53501de40594c723ca5";
        public const int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 8;

        public byte[] Encode(_Ros2Aimdk_msgsSrvGetMute_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsSrvGetMute_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsSrvGetMute_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsSrvGetMute_Request value = ReadRos2Aimdk_msgsSrvGetMute_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsSrvGetMute_Request(_Codecs.Writer writer, _Ros2Aimdk_msgsSrvGetMute_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Aimdk_msgsMsgCommonRequest part0 = value.@request;
        WriteRos2Aimdk_msgsMsgCommonRequest(writer, part0);
    }

    private static _Ros2Aimdk_msgsSrvGetMute_Request ReadRos2Aimdk_msgsSrvGetMute_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsSrvGetMute_Request();
        value.@request = ReadRos2Aimdk_msgsMsgCommonRequest(reader);
        return value;
    }

    public sealed class _Ros2Aimdk_msgsSrvGetMute_Response
    {
        public _Ros2Aimdk_msgsMsgCommonResponse @reponse = new _Ros2Aimdk_msgsMsgCommonResponse();
        public bool @is_mute = false;

        public _Ros2Aimdk_msgsSrvGetMute_Response()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsSrvGetMute_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsSrvGetMute_Response>
    {
        public static readonly Ros2Aimdk_msgsSrvGetMute_ResponseCodec Instance = new Ros2Aimdk_msgsSrvGetMute_ResponseCodec();

        private Ros2Aimdk_msgsSrvGetMute_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/srv/GetMute_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_c1beb5c0c269083a0be2c3a4718043ec92639b6ac58cf1d74bae051bec2d8a42";
        public const int MIN_WIRE_BYTES = 25, MAX_WIRE_BYTES = 153;

        public byte[] Encode(_Ros2Aimdk_msgsSrvGetMute_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsSrvGetMute_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsSrvGetMute_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsSrvGetMute_Response value = ReadRos2Aimdk_msgsSrvGetMute_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsSrvGetMute_Response(_Codecs.Writer writer, _Ros2Aimdk_msgsSrvGetMute_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Aimdk_msgsMsgCommonResponse part0 = value.@reponse;
        WriteRos2Aimdk_msgsMsgCommonResponse(writer, part0);
        bool part1 = value.@is_mute;
        writer.Unsigned(part1 ? 1UL : 0UL, 1);
    }

    private static _Ros2Aimdk_msgsSrvGetMute_Response ReadRos2Aimdk_msgsSrvGetMute_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsSrvGetMute_Response();
        value.@reponse = ReadRos2Aimdk_msgsMsgCommonResponse(reader);
        value.@is_mute = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Aimdk_msgsSrvGetVolume_Request
    {
        public _Ros2Aimdk_msgsMsgCommonRequest @request = new _Ros2Aimdk_msgsMsgCommonRequest();

        public _Ros2Aimdk_msgsSrvGetVolume_Request()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsSrvGetVolume_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsSrvGetVolume_Request>
    {
        public static readonly Ros2Aimdk_msgsSrvGetVolume_RequestCodec Instance = new Ros2Aimdk_msgsSrvGetVolume_RequestCodec();

        private Ros2Aimdk_msgsSrvGetVolume_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/srv/GetVolume_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_6e0d1472098c746f350535d30a3281758480e8e7c7b8ef54485310dae16dfc2b";
        public const int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 8;

        public byte[] Encode(_Ros2Aimdk_msgsSrvGetVolume_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsSrvGetVolume_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsSrvGetVolume_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsSrvGetVolume_Request value = ReadRos2Aimdk_msgsSrvGetVolume_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsSrvGetVolume_Request(_Codecs.Writer writer, _Ros2Aimdk_msgsSrvGetVolume_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Aimdk_msgsMsgCommonRequest part0 = value.@request;
        WriteRos2Aimdk_msgsMsgCommonRequest(writer, part0);
    }

    private static _Ros2Aimdk_msgsSrvGetVolume_Request ReadRos2Aimdk_msgsSrvGetVolume_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsSrvGetVolume_Request();
        value.@request = ReadRos2Aimdk_msgsMsgCommonRequest(reader);
        return value;
    }

    public sealed class _Ros2Aimdk_msgsSrvGetVolume_Response
    {
        public _Ros2Aimdk_msgsMsgCommonResponse @reponse = new _Ros2Aimdk_msgsMsgCommonResponse();
        public uint @audio_volume = 0;

        public _Ros2Aimdk_msgsSrvGetVolume_Response()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsSrvGetVolume_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsSrvGetVolume_Response>
    {
        public static readonly Ros2Aimdk_msgsSrvGetVolume_ResponseCodec Instance = new Ros2Aimdk_msgsSrvGetVolume_ResponseCodec();

        private Ros2Aimdk_msgsSrvGetVolume_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/srv/GetVolume_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_24a04a12d640be4e17e24d372b0bbb2f65a89bd56e4ee1448e252db2c833c266";
        public const int MIN_WIRE_BYTES = 28, MAX_WIRE_BYTES = 156;

        public byte[] Encode(_Ros2Aimdk_msgsSrvGetVolume_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsSrvGetVolume_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsSrvGetVolume_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsSrvGetVolume_Response value = ReadRos2Aimdk_msgsSrvGetVolume_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsSrvGetVolume_Response(_Codecs.Writer writer, _Ros2Aimdk_msgsSrvGetVolume_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Aimdk_msgsMsgCommonResponse part0 = value.@reponse;
        WriteRos2Aimdk_msgsMsgCommonResponse(writer, part0);
        uint part1 = value.@audio_volume;
        writer.Unsigned(part1, 4);
    }

    private static _Ros2Aimdk_msgsSrvGetVolume_Response ReadRos2Aimdk_msgsSrvGetVolume_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsSrvGetVolume_Response();
        value.@reponse = ReadRos2Aimdk_msgsMsgCommonResponse(reader);
        value.@audio_volume = unchecked((uint)reader.Unsigned(4));
        return value;
    }

    public sealed class _Ros2Aimdk_msgsSrvLedStripCommand_Request
    {
        public _Ros2Aimdk_msgsMsgCommonRequest @request = new _Ros2Aimdk_msgsMsgCommonRequest();
        public byte @led_strip_mode = 0;
        public byte @r = 0;
        public byte @g = 0;
        public byte @b = 0;

        public _Ros2Aimdk_msgsSrvLedStripCommand_Request()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsSrvLedStripCommand_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsSrvLedStripCommand_Request>
    {
        public static readonly Ros2Aimdk_msgsSrvLedStripCommand_RequestCodec Instance = new Ros2Aimdk_msgsSrvLedStripCommand_RequestCodec();

        private Ros2Aimdk_msgsSrvLedStripCommand_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/srv/LedStripCommand_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_bd3167edba193b3ed932c8f6e841d229cf6e6574b2ce0c157d5f8bfc4cbc80a6";
        public const int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 12;

        public byte[] Encode(_Ros2Aimdk_msgsSrvLedStripCommand_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsSrvLedStripCommand_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsSrvLedStripCommand_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsSrvLedStripCommand_Request value = ReadRos2Aimdk_msgsSrvLedStripCommand_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsSrvLedStripCommand_Request(_Codecs.Writer writer, _Ros2Aimdk_msgsSrvLedStripCommand_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Aimdk_msgsMsgCommonRequest part0 = value.@request;
        WriteRos2Aimdk_msgsMsgCommonRequest(writer, part0);
        byte part1 = value.@led_strip_mode;
        writer.Unsigned(part1, 1);
        byte part2 = value.@r;
        writer.Unsigned(part2, 1);
        byte part3 = value.@g;
        writer.Unsigned(part3, 1);
        byte part4 = value.@b;
        writer.Unsigned(part4, 1);
    }

    private static _Ros2Aimdk_msgsSrvLedStripCommand_Request ReadRos2Aimdk_msgsSrvLedStripCommand_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsSrvLedStripCommand_Request();
        value.@request = ReadRos2Aimdk_msgsMsgCommonRequest(reader);
        value.@led_strip_mode = unchecked((byte)reader.Unsigned(1));
        value.@r = unchecked((byte)reader.Unsigned(1));
        value.@g = unchecked((byte)reader.Unsigned(1));
        value.@b = unchecked((byte)reader.Unsigned(1));
        return value;
    }

    public sealed class _Ros2Aimdk_msgsSrvLedStripCommand_Response
    {
        public _Ros2Aimdk_msgsMsgResponseHeader @header = new _Ros2Aimdk_msgsMsgResponseHeader();
        public ushort @status_code = 0;

        public _Ros2Aimdk_msgsSrvLedStripCommand_Response()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsSrvLedStripCommand_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsSrvLedStripCommand_Response>
    {
        public static readonly Ros2Aimdk_msgsSrvLedStripCommand_ResponseCodec Instance = new Ros2Aimdk_msgsSrvLedStripCommand_ResponseCodec();

        private Ros2Aimdk_msgsSrvLedStripCommand_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/srv/LedStripCommand_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_3e08fb0103545c0d4e1558eba1dd8adad52f90ef083e7e8fb336087386e3c2a9";
        public const int MIN_WIRE_BYTES = 18, MAX_WIRE_BYTES = 18;

        public byte[] Encode(_Ros2Aimdk_msgsSrvLedStripCommand_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsSrvLedStripCommand_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsSrvLedStripCommand_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsSrvLedStripCommand_Response value = ReadRos2Aimdk_msgsSrvLedStripCommand_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsSrvLedStripCommand_Response(_Codecs.Writer writer, _Ros2Aimdk_msgsSrvLedStripCommand_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Aimdk_msgsMsgResponseHeader part0 = value.@header;
        WriteRos2Aimdk_msgsMsgResponseHeader(writer, part0);
        ushort part1 = value.@status_code;
        writer.Unsigned(part1, 2);
    }

    private static _Ros2Aimdk_msgsSrvLedStripCommand_Response ReadRos2Aimdk_msgsSrvLedStripCommand_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsSrvLedStripCommand_Response();
        value.@header = ReadRos2Aimdk_msgsMsgResponseHeader(reader);
        value.@status_code = unchecked((ushort)reader.Unsigned(2));
        return value;
    }

    public sealed class _Ros2Aimdk_msgsSrvPlayEmoji_Request
    {
        public _Ros2Aimdk_msgsMsgCommonRequest @header = new _Ros2Aimdk_msgsMsgCommonRequest();
        public byte @emotion_id = 0;
        public byte @mode = 0;
        public int @priority = 0;

        public _Ros2Aimdk_msgsSrvPlayEmoji_Request()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsSrvPlayEmoji_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsSrvPlayEmoji_Request>
    {
        public static readonly Ros2Aimdk_msgsSrvPlayEmoji_RequestCodec Instance = new Ros2Aimdk_msgsSrvPlayEmoji_RequestCodec();

        private Ros2Aimdk_msgsSrvPlayEmoji_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/srv/PlayEmoji_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_ba31bdc232369e170ee9fb00ac8e51639d81a657de8f6e61f9acfccc2a083d43";
        public const int MIN_WIRE_BYTES = 14, MAX_WIRE_BYTES = 14;

        public byte[] Encode(_Ros2Aimdk_msgsSrvPlayEmoji_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsSrvPlayEmoji_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsSrvPlayEmoji_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsSrvPlayEmoji_Request value = ReadRos2Aimdk_msgsSrvPlayEmoji_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsSrvPlayEmoji_Request(_Codecs.Writer writer, _Ros2Aimdk_msgsSrvPlayEmoji_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Aimdk_msgsMsgCommonRequest part0 = value.@header;
        WriteRos2Aimdk_msgsMsgCommonRequest(writer, part0);
        byte part1 = value.@emotion_id;
        writer.Unsigned(part1, 1);
        byte part2 = value.@mode;
        writer.Unsigned(part2, 1);
        int part3 = value.@priority;
        writer.Unsigned(unchecked((uint)part3), 4);
    }

    private static _Ros2Aimdk_msgsSrvPlayEmoji_Request ReadRos2Aimdk_msgsSrvPlayEmoji_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsSrvPlayEmoji_Request();
        value.@header = ReadRos2Aimdk_msgsMsgCommonRequest(reader);
        value.@emotion_id = unchecked((byte)reader.Unsigned(1));
        value.@mode = unchecked((byte)reader.Unsigned(1));
        value.@priority = unchecked((int)reader.Unsigned(4));
        return value;
    }

    public sealed class _Ros2Aimdk_msgsSrvPlayEmoji_Response
    {
        public _Ros2Aimdk_msgsMsgCommonResponse @header = new _Ros2Aimdk_msgsMsgCommonResponse();
        public bool @success = false;
        public string @message = "";

        public _Ros2Aimdk_msgsSrvPlayEmoji_Response()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsSrvPlayEmoji_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsSrvPlayEmoji_Response>
    {
        public static readonly Ros2Aimdk_msgsSrvPlayEmoji_ResponseCodec Instance = new Ros2Aimdk_msgsSrvPlayEmoji_ResponseCodec();

        private Ros2Aimdk_msgsSrvPlayEmoji_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/srv/PlayEmoji_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_5e5ba0082cf9bf5d9b9c7eae034efd76bd44503306bb4994e06862a802cfb6b9";
        public const int MIN_WIRE_BYTES = 29, MAX_WIRE_BYTES = 285;

        public byte[] Encode(_Ros2Aimdk_msgsSrvPlayEmoji_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsSrvPlayEmoji_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsSrvPlayEmoji_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsSrvPlayEmoji_Response value = ReadRos2Aimdk_msgsSrvPlayEmoji_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsSrvPlayEmoji_Response(_Codecs.Writer writer, _Ros2Aimdk_msgsSrvPlayEmoji_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Aimdk_msgsMsgCommonResponse part0 = value.@header;
        WriteRos2Aimdk_msgsMsgCommonResponse(writer, part0);
        bool part1 = value.@success;
        writer.Unsigned(part1 ? 1UL : 0UL, 1);
        string part2 = value.@message;
        WriteText(writer, part2, 128);
    }

    private static _Ros2Aimdk_msgsSrvPlayEmoji_Response ReadRos2Aimdk_msgsSrvPlayEmoji_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsSrvPlayEmoji_Response();
        value.@header = ReadRos2Aimdk_msgsMsgCommonResponse(reader);
        value.@success = ReadBool(reader);
        value.@message = ReadText(reader, 128);
        return value;
    }

    public sealed class _Ros2Aimdk_msgsSrvPlayMediaFile_Request
    {
        public _Ros2Aimdk_msgsMsgCommonRequest @header = new _Ros2Aimdk_msgsMsgCommonRequest();
        public _Ros2Aimdk_msgsMsgPlayMediaFileRequest @media_file_req = new _Ros2Aimdk_msgsMsgPlayMediaFileRequest();

        public _Ros2Aimdk_msgsSrvPlayMediaFile_Request()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsSrvPlayMediaFile_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsSrvPlayMediaFile_Request>
    {
        public static readonly Ros2Aimdk_msgsSrvPlayMediaFile_RequestCodec Instance = new Ros2Aimdk_msgsSrvPlayMediaFile_RequestCodec();

        private Ros2Aimdk_msgsSrvPlayMediaFile_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/srv/PlayMediaFile_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_546706b9797f99c98a014f9849171aef262775e8ab702cfe6517d92f5047247c";
        public const int MIN_WIRE_BYTES = 30, MAX_WIRE_BYTES = 414;

        public byte[] Encode(_Ros2Aimdk_msgsSrvPlayMediaFile_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsSrvPlayMediaFile_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsSrvPlayMediaFile_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsSrvPlayMediaFile_Request value = ReadRos2Aimdk_msgsSrvPlayMediaFile_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsSrvPlayMediaFile_Request(_Codecs.Writer writer, _Ros2Aimdk_msgsSrvPlayMediaFile_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Aimdk_msgsMsgCommonRequest part0 = value.@header;
        WriteRos2Aimdk_msgsMsgCommonRequest(writer, part0);
        _Ros2Aimdk_msgsMsgPlayMediaFileRequest part1 = value.@media_file_req;
        WriteRos2Aimdk_msgsMsgPlayMediaFileRequest(writer, part1);
    }

    private static _Ros2Aimdk_msgsSrvPlayMediaFile_Request ReadRos2Aimdk_msgsSrvPlayMediaFile_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsSrvPlayMediaFile_Request();
        value.@header = ReadRos2Aimdk_msgsMsgCommonRequest(reader);
        value.@media_file_req = ReadRos2Aimdk_msgsMsgPlayMediaFileRequest(reader);
        return value;
    }

    public sealed class _Ros2Aimdk_msgsSrvPlayMediaFile_Response
    {
        public _Ros2Aimdk_msgsMsgCommonResponse @header = new _Ros2Aimdk_msgsMsgCommonResponse();
        public _Ros2Aimdk_msgsMsgPlayTtsResponse @tts_resp = new _Ros2Aimdk_msgsMsgPlayTtsResponse();

        public _Ros2Aimdk_msgsSrvPlayMediaFile_Response()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsSrvPlayMediaFile_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsSrvPlayMediaFile_Response>
    {
        public static readonly Ros2Aimdk_msgsSrvPlayMediaFile_ResponseCodec Instance = new Ros2Aimdk_msgsSrvPlayMediaFile_ResponseCodec();

        private Ros2Aimdk_msgsSrvPlayMediaFile_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/srv/PlayMediaFile_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_124871324704ab61f208168e64d4789376b3935b34895e824996e07561795099";
        public const int MIN_WIRE_BYTES = 50, MAX_WIRE_BYTES = 690;

        public byte[] Encode(_Ros2Aimdk_msgsSrvPlayMediaFile_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsSrvPlayMediaFile_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsSrvPlayMediaFile_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsSrvPlayMediaFile_Response value = ReadRos2Aimdk_msgsSrvPlayMediaFile_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsSrvPlayMediaFile_Response(_Codecs.Writer writer, _Ros2Aimdk_msgsSrvPlayMediaFile_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Aimdk_msgsMsgCommonResponse part0 = value.@header;
        WriteRos2Aimdk_msgsMsgCommonResponse(writer, part0);
        _Ros2Aimdk_msgsMsgPlayTtsResponse part1 = value.@tts_resp;
        WriteRos2Aimdk_msgsMsgPlayTtsResponse(writer, part1);
    }

    private static _Ros2Aimdk_msgsSrvPlayMediaFile_Response ReadRos2Aimdk_msgsSrvPlayMediaFile_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsSrvPlayMediaFile_Response();
        value.@header = ReadRos2Aimdk_msgsMsgCommonResponse(reader);
        value.@tts_resp = ReadRos2Aimdk_msgsMsgPlayTtsResponse(reader);
        return value;
    }

    public sealed class _Ros2Aimdk_msgsSrvPlayTts_Request
    {
        public _Ros2Aimdk_msgsMsgCommonRequest @header = new _Ros2Aimdk_msgsMsgCommonRequest();
        public _Ros2Aimdk_msgsMsgPlayTtsRequest @tts_req = new _Ros2Aimdk_msgsMsgPlayTtsRequest();

        public _Ros2Aimdk_msgsSrvPlayTts_Request()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsSrvPlayTts_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsSrvPlayTts_Request>
    {
        public static readonly Ros2Aimdk_msgsSrvPlayTts_RequestCodec Instance = new Ros2Aimdk_msgsSrvPlayTts_RequestCodec();

        private Ros2Aimdk_msgsSrvPlayTts_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/srv/PlayTts_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_2325b475e9d2777afe139aff54b29254f3e0ac0fd1fa499db049cf535810c6f7";
        public const int MIN_WIRE_BYTES = 26, MAX_WIRE_BYTES = 410;

        public byte[] Encode(_Ros2Aimdk_msgsSrvPlayTts_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsSrvPlayTts_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsSrvPlayTts_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsSrvPlayTts_Request value = ReadRos2Aimdk_msgsSrvPlayTts_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsSrvPlayTts_Request(_Codecs.Writer writer, _Ros2Aimdk_msgsSrvPlayTts_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Aimdk_msgsMsgCommonRequest part0 = value.@header;
        WriteRos2Aimdk_msgsMsgCommonRequest(writer, part0);
        _Ros2Aimdk_msgsMsgPlayTtsRequest part1 = value.@tts_req;
        WriteRos2Aimdk_msgsMsgPlayTtsRequest(writer, part1);
    }

    private static _Ros2Aimdk_msgsSrvPlayTts_Request ReadRos2Aimdk_msgsSrvPlayTts_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsSrvPlayTts_Request();
        value.@header = ReadRos2Aimdk_msgsMsgCommonRequest(reader);
        value.@tts_req = ReadRos2Aimdk_msgsMsgPlayTtsRequest(reader);
        return value;
    }

    public sealed class _Ros2Aimdk_msgsSrvPlayTts_Response
    {
        public _Ros2Aimdk_msgsMsgCommonResponse @header = new _Ros2Aimdk_msgsMsgCommonResponse();
        public _Ros2Aimdk_msgsMsgPlayTtsResponse @tts_resp = new _Ros2Aimdk_msgsMsgPlayTtsResponse();

        public _Ros2Aimdk_msgsSrvPlayTts_Response()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsSrvPlayTts_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsSrvPlayTts_Response>
    {
        public static readonly Ros2Aimdk_msgsSrvPlayTts_ResponseCodec Instance = new Ros2Aimdk_msgsSrvPlayTts_ResponseCodec();

        private Ros2Aimdk_msgsSrvPlayTts_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/srv/PlayTts_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_a0587cd9d9294f30dc27c095bfc1acdf54d98b47cf4ac8ddd77b6b75530c290a";
        public const int MIN_WIRE_BYTES = 50, MAX_WIRE_BYTES = 690;

        public byte[] Encode(_Ros2Aimdk_msgsSrvPlayTts_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsSrvPlayTts_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsSrvPlayTts_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsSrvPlayTts_Response value = ReadRos2Aimdk_msgsSrvPlayTts_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsSrvPlayTts_Response(_Codecs.Writer writer, _Ros2Aimdk_msgsSrvPlayTts_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Aimdk_msgsMsgCommonResponse part0 = value.@header;
        WriteRos2Aimdk_msgsMsgCommonResponse(writer, part0);
        _Ros2Aimdk_msgsMsgPlayTtsResponse part1 = value.@tts_resp;
        WriteRos2Aimdk_msgsMsgPlayTtsResponse(writer, part1);
    }

    private static _Ros2Aimdk_msgsSrvPlayTts_Response ReadRos2Aimdk_msgsSrvPlayTts_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsSrvPlayTts_Response();
        value.@header = ReadRos2Aimdk_msgsMsgCommonResponse(reader);
        value.@tts_resp = ReadRos2Aimdk_msgsMsgPlayTtsResponse(reader);
        return value;
    }

    public sealed class _Ros2Aimdk_msgsSrvPlayVideo_Request
    {
        public _Ros2Aimdk_msgsMsgCommonRequest @header = new _Ros2Aimdk_msgsMsgCommonRequest();
        public string @video_path = "";
        public byte @mode = 0;
        public int @priority = 0;

        public _Ros2Aimdk_msgsSrvPlayVideo_Request()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsSrvPlayVideo_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsSrvPlayVideo_Request>
    {
        public static readonly Ros2Aimdk_msgsSrvPlayVideo_RequestCodec Instance = new Ros2Aimdk_msgsSrvPlayVideo_RequestCodec();

        private Ros2Aimdk_msgsSrvPlayVideo_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/srv/PlayVideo_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_a42348160bfed67c90f9ddc96beaca7b37e6099ba67c8c025d6ac0f95e6bc878";
        public const int MIN_WIRE_BYTES = 17, MAX_WIRE_BYTES = 145;

        public byte[] Encode(_Ros2Aimdk_msgsSrvPlayVideo_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsSrvPlayVideo_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsSrvPlayVideo_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsSrvPlayVideo_Request value = ReadRos2Aimdk_msgsSrvPlayVideo_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsSrvPlayVideo_Request(_Codecs.Writer writer, _Ros2Aimdk_msgsSrvPlayVideo_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Aimdk_msgsMsgCommonRequest part0 = value.@header;
        WriteRos2Aimdk_msgsMsgCommonRequest(writer, part0);
        string part1 = value.@video_path;
        WriteText(writer, part1, 128);
        byte part2 = value.@mode;
        writer.Unsigned(part2, 1);
        int part3 = value.@priority;
        writer.Unsigned(unchecked((uint)part3), 4);
    }

    private static _Ros2Aimdk_msgsSrvPlayVideo_Request ReadRos2Aimdk_msgsSrvPlayVideo_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsSrvPlayVideo_Request();
        value.@header = ReadRos2Aimdk_msgsMsgCommonRequest(reader);
        value.@video_path = ReadText(reader, 128);
        value.@mode = unchecked((byte)reader.Unsigned(1));
        value.@priority = unchecked((int)reader.Unsigned(4));
        return value;
    }

    public sealed class _Ros2Aimdk_msgsSrvPlayVideo_Response
    {
        public _Ros2Aimdk_msgsMsgCommonResponse @header = new _Ros2Aimdk_msgsMsgCommonResponse();
        public bool @success = false;
        public string @message = "";

        public _Ros2Aimdk_msgsSrvPlayVideo_Response()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsSrvPlayVideo_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsSrvPlayVideo_Response>
    {
        public static readonly Ros2Aimdk_msgsSrvPlayVideo_ResponseCodec Instance = new Ros2Aimdk_msgsSrvPlayVideo_ResponseCodec();

        private Ros2Aimdk_msgsSrvPlayVideo_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/srv/PlayVideo_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_f714873f193ca3ee0d02c822dbc3262033a2fe7913748ba177136a24d5b7f627";
        public const int MIN_WIRE_BYTES = 29, MAX_WIRE_BYTES = 285;

        public byte[] Encode(_Ros2Aimdk_msgsSrvPlayVideo_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsSrvPlayVideo_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsSrvPlayVideo_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsSrvPlayVideo_Response value = ReadRos2Aimdk_msgsSrvPlayVideo_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsSrvPlayVideo_Response(_Codecs.Writer writer, _Ros2Aimdk_msgsSrvPlayVideo_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Aimdk_msgsMsgCommonResponse part0 = value.@header;
        WriteRos2Aimdk_msgsMsgCommonResponse(writer, part0);
        bool part1 = value.@success;
        writer.Unsigned(part1 ? 1UL : 0UL, 1);
        string part2 = value.@message;
        WriteText(writer, part2, 128);
    }

    private static _Ros2Aimdk_msgsSrvPlayVideo_Response ReadRos2Aimdk_msgsSrvPlayVideo_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsSrvPlayVideo_Response();
        value.@header = ReadRos2Aimdk_msgsMsgCommonResponse(reader);
        value.@success = ReadBool(reader);
        value.@message = ReadText(reader, 128);
        return value;
    }

    public sealed class _Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request
    {
        public _Ros2Aimdk_msgsMsgCommonRequest @header = new _Ros2Aimdk_msgsMsgCommonRequest();
        public _Ros2Aimdk_msgsMsgAgentProperties @contents = new _Ros2Aimdk_msgsMsgAgentProperties();

        public _Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_RequestCodec :
        global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request>
    {
        public static readonly Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_RequestCodec Instance = new Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_RequestCodec();

        private Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/srv/SetAgentPropertiesRequest_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_965af85f35239b728d7b2ea3c8e995a7cd54d3254bc1e89d3eeb36612ada5dec";
        public const int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 544;

        public byte[] Encode(_Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsSrvSetAgentPropertiesRequest_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request value = ReadRos2Aimdk_msgsSrvSetAgentPropertiesRequest_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsSrvSetAgentPropertiesRequest_Request(_Codecs.Writer writer,
                                                                                _Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Aimdk_msgsMsgCommonRequest part0 = value.@header;
        WriteRos2Aimdk_msgsMsgCommonRequest(writer, part0);
        _Ros2Aimdk_msgsMsgAgentProperties part1 = value.@contents;
        WriteRos2Aimdk_msgsMsgAgentProperties(writer, part1);
    }

    private static _Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request ReadRos2Aimdk_msgsSrvSetAgentPropertiesRequest_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request();
        value.@header = ReadRos2Aimdk_msgsMsgCommonRequest(reader);
        value.@contents = ReadRos2Aimdk_msgsMsgAgentProperties(reader);
        return value;
    }

    public sealed class _Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response
    {
        public _Ros2Aimdk_msgsMsgCommonResponse @header = new _Ros2Aimdk_msgsMsgCommonResponse();

        public _Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_ResponseCodec :
        global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response>
    {
        public static readonly Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_ResponseCodec Instance =
            new Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_ResponseCodec();

        private Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/srv/SetAgentPropertiesRequest_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_193eace6181c5da860dd9fa0d274415bdcb2246f7054acece8ae925414b0a81b";
        public const int MIN_WIRE_BYTES = 24, MAX_WIRE_BYTES = 152;

        public byte[] Encode(_Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsSrvSetAgentPropertiesRequest_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response value = ReadRos2Aimdk_msgsSrvSetAgentPropertiesRequest_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsSrvSetAgentPropertiesRequest_Response(_Codecs.Writer writer,
                                                                                 _Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Aimdk_msgsMsgCommonResponse part0 = value.@header;
        WriteRos2Aimdk_msgsMsgCommonResponse(writer, part0);
    }

    private static _Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response ReadRos2Aimdk_msgsSrvSetAgentPropertiesRequest_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response();
        value.@header = ReadRos2Aimdk_msgsMsgCommonResponse(reader);
        return value;
    }

    public sealed class _Ros2Aimdk_msgsSrvSetMcAction_Request
    {
        public _Ros2Aimdk_msgsMsgRequestHeader @header = new _Ros2Aimdk_msgsMsgRequestHeader();
        public _Ros2Aimdk_msgsMsgMcActionCommand @command = new _Ros2Aimdk_msgsMsgMcActionCommand();

        public _Ros2Aimdk_msgsSrvSetMcAction_Request()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsSrvSetMcAction_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsSrvSetMcAction_Request>
    {
        public static readonly Ros2Aimdk_msgsSrvSetMcAction_RequestCodec Instance = new Ros2Aimdk_msgsSrvSetMcAction_RequestCodec();

        private Ros2Aimdk_msgsSrvSetMcAction_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/srv/SetMcAction_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_6ad0e14f9aefc0ae34c383eec4498c556c97757f03eb315b74977327691489d5";
        public const int MIN_WIRE_BYTES = 16, MAX_WIRE_BYTES = 144;

        public byte[] Encode(_Ros2Aimdk_msgsSrvSetMcAction_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsSrvSetMcAction_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsSrvSetMcAction_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsSrvSetMcAction_Request value = ReadRos2Aimdk_msgsSrvSetMcAction_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsSrvSetMcAction_Request(_Codecs.Writer writer, _Ros2Aimdk_msgsSrvSetMcAction_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Aimdk_msgsMsgRequestHeader part0 = value.@header;
        WriteRos2Aimdk_msgsMsgRequestHeader(writer, part0);
        _Ros2Aimdk_msgsMsgMcActionCommand part1 = value.@command;
        WriteRos2Aimdk_msgsMsgMcActionCommand(writer, part1);
    }

    private static _Ros2Aimdk_msgsSrvSetMcAction_Request ReadRos2Aimdk_msgsSrvSetMcAction_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsSrvSetMcAction_Request();
        value.@header = ReadRos2Aimdk_msgsMsgRequestHeader(reader);
        value.@command = ReadRos2Aimdk_msgsMsgMcActionCommand(reader);
        return value;
    }

    public sealed class _Ros2Aimdk_msgsSrvSetMcAction_Response
    {
        public _Ros2Aimdk_msgsMsgCommonResponse @response = new _Ros2Aimdk_msgsMsgCommonResponse();

        public _Ros2Aimdk_msgsSrvSetMcAction_Response()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsSrvSetMcAction_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsSrvSetMcAction_Response>
    {
        public static readonly Ros2Aimdk_msgsSrvSetMcAction_ResponseCodec Instance = new Ros2Aimdk_msgsSrvSetMcAction_ResponseCodec();

        private Ros2Aimdk_msgsSrvSetMcAction_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/srv/SetMcAction_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_64c336314ea7d3635494d1e3f9da9b23442653033e3ddfb0936440520141d24f";
        public const int MIN_WIRE_BYTES = 24, MAX_WIRE_BYTES = 152;

        public byte[] Encode(_Ros2Aimdk_msgsSrvSetMcAction_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsSrvSetMcAction_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsSrvSetMcAction_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsSrvSetMcAction_Response value = ReadRos2Aimdk_msgsSrvSetMcAction_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsSrvSetMcAction_Response(_Codecs.Writer writer, _Ros2Aimdk_msgsSrvSetMcAction_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Aimdk_msgsMsgCommonResponse part0 = value.@response;
        WriteRos2Aimdk_msgsMsgCommonResponse(writer, part0);
    }

    private static _Ros2Aimdk_msgsSrvSetMcAction_Response ReadRos2Aimdk_msgsSrvSetMcAction_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsSrvSetMcAction_Response();
        value.@response = ReadRos2Aimdk_msgsMsgCommonResponse(reader);
        return value;
    }

    public sealed class _Ros2Aimdk_msgsSrvSetMcInputSource_Request
    {
        public _Ros2Aimdk_msgsMsgCommonRequest @request = new _Ros2Aimdk_msgsMsgCommonRequest();
        public _Ros2Aimdk_msgsMsgMcInputAction @action = new _Ros2Aimdk_msgsMsgMcInputAction();
        public _Ros2Aimdk_msgsMsgMcInputSource @input_source = new _Ros2Aimdk_msgsMsgMcInputSource();

        public _Ros2Aimdk_msgsSrvSetMcInputSource_Request()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsSrvSetMcInputSource_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsSrvSetMcInputSource_Request>
    {
        public static readonly Ros2Aimdk_msgsSrvSetMcInputSource_RequestCodec Instance = new Ros2Aimdk_msgsSrvSetMcInputSource_RequestCodec();

        private Ros2Aimdk_msgsSrvSetMcInputSource_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/srv/SetMcInputSource_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_853ae368291aa7e14c665d3d47caad66ba626c086ad759180c31223a9785b021";
        public const int MIN_WIRE_BYTES = 24, MAX_WIRE_BYTES = 152;

        public byte[] Encode(_Ros2Aimdk_msgsSrvSetMcInputSource_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsSrvSetMcInputSource_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsSrvSetMcInputSource_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsSrvSetMcInputSource_Request value = ReadRos2Aimdk_msgsSrvSetMcInputSource_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsSrvSetMcInputSource_Request(_Codecs.Writer writer, _Ros2Aimdk_msgsSrvSetMcInputSource_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Aimdk_msgsMsgCommonRequest part0 = value.@request;
        WriteRos2Aimdk_msgsMsgCommonRequest(writer, part0);
        _Ros2Aimdk_msgsMsgMcInputAction part1 = value.@action;
        WriteRos2Aimdk_msgsMsgMcInputAction(writer, part1);
        _Ros2Aimdk_msgsMsgMcInputSource part2 = value.@input_source;
        WriteRos2Aimdk_msgsMsgMcInputSource(writer, part2);
    }

    private static _Ros2Aimdk_msgsSrvSetMcInputSource_Request ReadRos2Aimdk_msgsSrvSetMcInputSource_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsSrvSetMcInputSource_Request();
        value.@request = ReadRos2Aimdk_msgsMsgCommonRequest(reader);
        value.@action = ReadRos2Aimdk_msgsMsgMcInputAction(reader);
        value.@input_source = ReadRos2Aimdk_msgsMsgMcInputSource(reader);
        return value;
    }

    public sealed class _Ros2Aimdk_msgsSrvSetMcInputSource_Response
    {
        public _Ros2Aimdk_msgsMsgCommonTaskResponse @response = new _Ros2Aimdk_msgsMsgCommonTaskResponse();

        public _Ros2Aimdk_msgsSrvSetMcInputSource_Response()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsSrvSetMcInputSource_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsSrvSetMcInputSource_Response>
    {
        public static readonly Ros2Aimdk_msgsSrvSetMcInputSource_ResponseCodec Instance = new Ros2Aimdk_msgsSrvSetMcInputSource_ResponseCodec();

        private Ros2Aimdk_msgsSrvSetMcInputSource_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/srv/SetMcInputSource_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_0c0764d24b86f57f3c2f1a59966a787113cf9411cf89f40d29a7708bf03650cb";
        public const int MIN_WIRE_BYTES = 28, MAX_WIRE_BYTES = 28;

        public byte[] Encode(_Ros2Aimdk_msgsSrvSetMcInputSource_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsSrvSetMcInputSource_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsSrvSetMcInputSource_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsSrvSetMcInputSource_Response value = ReadRos2Aimdk_msgsSrvSetMcInputSource_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsSrvSetMcInputSource_Response(_Codecs.Writer writer, _Ros2Aimdk_msgsSrvSetMcInputSource_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Aimdk_msgsMsgCommonTaskResponse part0 = value.@response;
        WriteRos2Aimdk_msgsMsgCommonTaskResponse(writer, part0);
    }

    private static _Ros2Aimdk_msgsSrvSetMcInputSource_Response ReadRos2Aimdk_msgsSrvSetMcInputSource_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsSrvSetMcInputSource_Response();
        value.@response = ReadRos2Aimdk_msgsMsgCommonTaskResponse(reader);
        return value;
    }

    public sealed class _Ros2Aimdk_msgsSrvSetMcPresetMotion_Request
    {
        public _Ros2Aimdk_msgsMsgRequestHeader @header = new _Ros2Aimdk_msgsMsgRequestHeader();
        public _Ros2Aimdk_msgsMsgMcControlArea @area = new _Ros2Aimdk_msgsMsgMcControlArea();
        public _Ros2Aimdk_msgsMsgMcPresetMotion @motion = new _Ros2Aimdk_msgsMsgMcPresetMotion();
        public bool @interrupt = false;
        public string @ani_path = "";

        public _Ros2Aimdk_msgsSrvSetMcPresetMotion_Request()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsSrvSetMcPresetMotion_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsSrvSetMcPresetMotion_Request>
    {
        public static readonly Ros2Aimdk_msgsSrvSetMcPresetMotion_RequestCodec Instance = new Ros2Aimdk_msgsSrvSetMcPresetMotion_RequestCodec();

        private Ros2Aimdk_msgsSrvSetMcPresetMotion_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/srv/SetMcPresetMotion_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_f8789c1eb47184c1a1c219ac861b5551d22bdc624caf1f7022523160c6cd62ea";
        public const int MIN_WIRE_BYTES = 21, MAX_WIRE_BYTES = 149;

        public byte[] Encode(_Ros2Aimdk_msgsSrvSetMcPresetMotion_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsSrvSetMcPresetMotion_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsSrvSetMcPresetMotion_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsSrvSetMcPresetMotion_Request value = ReadRos2Aimdk_msgsSrvSetMcPresetMotion_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsSrvSetMcPresetMotion_Request(_Codecs.Writer writer, _Ros2Aimdk_msgsSrvSetMcPresetMotion_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Aimdk_msgsMsgRequestHeader part0 = value.@header;
        WriteRos2Aimdk_msgsMsgRequestHeader(writer, part0);
        _Ros2Aimdk_msgsMsgMcControlArea part1 = value.@area;
        WriteRos2Aimdk_msgsMsgMcControlArea(writer, part1);
        _Ros2Aimdk_msgsMsgMcPresetMotion part2 = value.@motion;
        WriteRos2Aimdk_msgsMsgMcPresetMotion(writer, part2);
        bool part3 = value.@interrupt;
        writer.Unsigned(part3 ? 1UL : 0UL, 1);
        string part4 = value.@ani_path;
        WriteText(writer, part4, 128);
    }

    private static _Ros2Aimdk_msgsSrvSetMcPresetMotion_Request ReadRos2Aimdk_msgsSrvSetMcPresetMotion_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsSrvSetMcPresetMotion_Request();
        value.@header = ReadRos2Aimdk_msgsMsgRequestHeader(reader);
        value.@area = ReadRos2Aimdk_msgsMsgMcControlArea(reader);
        value.@motion = ReadRos2Aimdk_msgsMsgMcPresetMotion(reader);
        value.@interrupt = ReadBool(reader);
        value.@ani_path = ReadText(reader, 128);
        return value;
    }

    public sealed class _Ros2Aimdk_msgsSrvSetMcPresetMotion_Response
    {
        public _Ros2Aimdk_msgsMsgCommonTaskResponse @response = new _Ros2Aimdk_msgsMsgCommonTaskResponse();

        public _Ros2Aimdk_msgsSrvSetMcPresetMotion_Response()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsSrvSetMcPresetMotion_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsSrvSetMcPresetMotion_Response>
    {
        public static readonly Ros2Aimdk_msgsSrvSetMcPresetMotion_ResponseCodec Instance = new Ros2Aimdk_msgsSrvSetMcPresetMotion_ResponseCodec();

        private Ros2Aimdk_msgsSrvSetMcPresetMotion_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/srv/SetMcPresetMotion_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_9534060f44b6d36c7f0c585e7ce1f1e8b06a2561a2161a29fe6d0e4d22c77e85";
        public const int MIN_WIRE_BYTES = 28, MAX_WIRE_BYTES = 28;

        public byte[] Encode(_Ros2Aimdk_msgsSrvSetMcPresetMotion_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsSrvSetMcPresetMotion_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsSrvSetMcPresetMotion_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsSrvSetMcPresetMotion_Response value = ReadRos2Aimdk_msgsSrvSetMcPresetMotion_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsSrvSetMcPresetMotion_Response(_Codecs.Writer writer, _Ros2Aimdk_msgsSrvSetMcPresetMotion_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Aimdk_msgsMsgCommonTaskResponse part0 = value.@response;
        WriteRos2Aimdk_msgsMsgCommonTaskResponse(writer, part0);
    }

    private static _Ros2Aimdk_msgsSrvSetMcPresetMotion_Response ReadRos2Aimdk_msgsSrvSetMcPresetMotion_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsSrvSetMcPresetMotion_Response();
        value.@response = ReadRos2Aimdk_msgsMsgCommonTaskResponse(reader);
        return value;
    }

    public sealed class _Ros2Aimdk_msgsSrvSetMute_Request
    {
        public _Ros2Aimdk_msgsMsgCommonRequest @request = new _Ros2Aimdk_msgsMsgCommonRequest();
        public bool @is_mute = false;

        public _Ros2Aimdk_msgsSrvSetMute_Request()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsSrvSetMute_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsSrvSetMute_Request>
    {
        public static readonly Ros2Aimdk_msgsSrvSetMute_RequestCodec Instance = new Ros2Aimdk_msgsSrvSetMute_RequestCodec();

        private Ros2Aimdk_msgsSrvSetMute_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/srv/SetMute_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_a37f6b638f226a9d150315baa5b11e6994422ba8f58541ac7b04df11e5c21fe3";
        public const int MIN_WIRE_BYTES = 9, MAX_WIRE_BYTES = 9;

        public byte[] Encode(_Ros2Aimdk_msgsSrvSetMute_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsSrvSetMute_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsSrvSetMute_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsSrvSetMute_Request value = ReadRos2Aimdk_msgsSrvSetMute_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsSrvSetMute_Request(_Codecs.Writer writer, _Ros2Aimdk_msgsSrvSetMute_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Aimdk_msgsMsgCommonRequest part0 = value.@request;
        WriteRos2Aimdk_msgsMsgCommonRequest(writer, part0);
        bool part1 = value.@is_mute;
        writer.Unsigned(part1 ? 1UL : 0UL, 1);
    }

    private static _Ros2Aimdk_msgsSrvSetMute_Request ReadRos2Aimdk_msgsSrvSetMute_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsSrvSetMute_Request();
        value.@request = ReadRos2Aimdk_msgsMsgCommonRequest(reader);
        value.@is_mute = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Aimdk_msgsSrvSetMute_Response
    {
        public _Ros2Aimdk_msgsMsgCommonResponse @reponse = new _Ros2Aimdk_msgsMsgCommonResponse();
        public bool @is_mute = false;

        public _Ros2Aimdk_msgsSrvSetMute_Response()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsSrvSetMute_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsSrvSetMute_Response>
    {
        public static readonly Ros2Aimdk_msgsSrvSetMute_ResponseCodec Instance = new Ros2Aimdk_msgsSrvSetMute_ResponseCodec();

        private Ros2Aimdk_msgsSrvSetMute_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/srv/SetMute_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_0ba7d8046b7a0d23deb0b4cdb2ba5d144543a68a2468d657cc0b29f60efdca50";
        public const int MIN_WIRE_BYTES = 25, MAX_WIRE_BYTES = 153;

        public byte[] Encode(_Ros2Aimdk_msgsSrvSetMute_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsSrvSetMute_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsSrvSetMute_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsSrvSetMute_Response value = ReadRos2Aimdk_msgsSrvSetMute_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsSrvSetMute_Response(_Codecs.Writer writer, _Ros2Aimdk_msgsSrvSetMute_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Aimdk_msgsMsgCommonResponse part0 = value.@reponse;
        WriteRos2Aimdk_msgsMsgCommonResponse(writer, part0);
        bool part1 = value.@is_mute;
        writer.Unsigned(part1 ? 1UL : 0UL, 1);
    }

    private static _Ros2Aimdk_msgsSrvSetMute_Response ReadRos2Aimdk_msgsSrvSetMute_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsSrvSetMute_Response();
        value.@reponse = ReadRos2Aimdk_msgsMsgCommonResponse(reader);
        value.@is_mute = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Aimdk_msgsSrvSetVolume_Request
    {
        public _Ros2Aimdk_msgsMsgCommonRequest @request = new _Ros2Aimdk_msgsMsgCommonRequest();
        public uint @audio_volume = 0;

        public _Ros2Aimdk_msgsSrvSetVolume_Request()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsSrvSetVolume_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsSrvSetVolume_Request>
    {
        public static readonly Ros2Aimdk_msgsSrvSetVolume_RequestCodec Instance = new Ros2Aimdk_msgsSrvSetVolume_RequestCodec();

        private Ros2Aimdk_msgsSrvSetVolume_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/srv/SetVolume_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_09161b7a7ae47ab702190725e42e27cd247f681702de05c4f68fa59581f85aad";
        public const int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 12;

        public byte[] Encode(_Ros2Aimdk_msgsSrvSetVolume_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsSrvSetVolume_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsSrvSetVolume_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsSrvSetVolume_Request value = ReadRos2Aimdk_msgsSrvSetVolume_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsSrvSetVolume_Request(_Codecs.Writer writer, _Ros2Aimdk_msgsSrvSetVolume_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Aimdk_msgsMsgCommonRequest part0 = value.@request;
        WriteRos2Aimdk_msgsMsgCommonRequest(writer, part0);
        uint part1 = value.@audio_volume;
        writer.Unsigned(part1, 4);
    }

    private static _Ros2Aimdk_msgsSrvSetVolume_Request ReadRos2Aimdk_msgsSrvSetVolume_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsSrvSetVolume_Request();
        value.@request = ReadRos2Aimdk_msgsMsgCommonRequest(reader);
        value.@audio_volume = unchecked((uint)reader.Unsigned(4));
        return value;
    }

    public sealed class _Ros2Aimdk_msgsSrvSetVolume_Response
    {
        public _Ros2Aimdk_msgsMsgCommonResponse @reponse = new _Ros2Aimdk_msgsMsgCommonResponse();
        public uint @audio_volume = 0;

        public _Ros2Aimdk_msgsSrvSetVolume_Response()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsSrvSetVolume_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsSrvSetVolume_Response>
    {
        public static readonly Ros2Aimdk_msgsSrvSetVolume_ResponseCodec Instance = new Ros2Aimdk_msgsSrvSetVolume_ResponseCodec();

        private Ros2Aimdk_msgsSrvSetVolume_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/srv/SetVolume_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_e5baf36b9fe876cfa8633c769aa7bcf085b813a7174de2bd6dd2026bc3744a1e";
        public const int MIN_WIRE_BYTES = 28, MAX_WIRE_BYTES = 156;

        public byte[] Encode(_Ros2Aimdk_msgsSrvSetVolume_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsSrvSetVolume_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsSrvSetVolume_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsSrvSetVolume_Response value = ReadRos2Aimdk_msgsSrvSetVolume_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsSrvSetVolume_Response(_Codecs.Writer writer, _Ros2Aimdk_msgsSrvSetVolume_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Aimdk_msgsMsgCommonResponse part0 = value.@reponse;
        WriteRos2Aimdk_msgsMsgCommonResponse(writer, part0);
        uint part1 = value.@audio_volume;
        writer.Unsigned(part1, 4);
    }

    private static _Ros2Aimdk_msgsSrvSetVolume_Response ReadRos2Aimdk_msgsSrvSetVolume_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsSrvSetVolume_Response();
        value.@reponse = ReadRos2Aimdk_msgsMsgCommonResponse(reader);
        value.@audio_volume = unchecked((uint)reader.Unsigned(4));
        return value;
    }
}
