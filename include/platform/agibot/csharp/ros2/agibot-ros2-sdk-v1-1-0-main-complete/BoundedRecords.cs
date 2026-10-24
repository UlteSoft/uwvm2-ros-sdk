/**
 * @file BoundedRecords.cs
 * @brief Full agibot csharp codecs and original record metadata.
 * @details Complete agibot ros2_sdk_v1_1_0_main values in csharp. 166 original records retain 552 fields and 133
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
        public const string CODEC_IDENTITY = "UWVMROS1_d46b7979d687f30a04b2d96d2cfde9efeedb18a3b311e43fd3af362d7323102c";
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
        public const string CODEC_IDENTITY = "UWVMROS1_f5886bcdffa17bde1622e0441b0e05562826ea27c5e393a85e255d4dd6ac32bb";
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
        public const string CODEC_IDENTITY = "UWVMROS1_5c1d34cab6d73c22fa0c9555ff67309d3ad05002b19d814ea03e576a1298f4aa";
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

    public sealed class _Ros2Aimdk_msgsMsgAlertCode
    {
        public ulong @timestamp = 0;
        public ulong @first_timestamp = 0;
        public string @code = "";

        public _Ros2Aimdk_msgsMsgAlertCode()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsMsgAlertCodeCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsMsgAlertCode>
    {
        public static readonly Ros2Aimdk_msgsMsgAlertCodeCodec Instance = new Ros2Aimdk_msgsMsgAlertCodeCodec();

        private Ros2Aimdk_msgsMsgAlertCodeCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/msg/AlertCode";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_16e0ffe103d1d7761ff440bebfd6aa42c9471006f636c50fcd6acda8c32bc7e5";
        public const int MIN_WIRE_BYTES = 20, MAX_WIRE_BYTES = 148;

        public byte[] Encode(_Ros2Aimdk_msgsMsgAlertCode value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsMsgAlertCode(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsMsgAlertCode Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsMsgAlertCode value = ReadRos2Aimdk_msgsMsgAlertCode(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsMsgAlertCode(_Codecs.Writer writer, _Ros2Aimdk_msgsMsgAlertCode value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        ulong part0 = value.@timestamp;
        writer.Unsigned(part0, 8);
        ulong part1 = value.@first_timestamp;
        writer.Unsigned(part1, 8);
        string part2 = value.@code;
        WriteText(writer, part2, 128);
    }

    private static _Ros2Aimdk_msgsMsgAlertCode ReadRos2Aimdk_msgsMsgAlertCode(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsMsgAlertCode();
        value.@timestamp = unchecked((ulong)reader.Unsigned(8));
        value.@first_timestamp = unchecked((ulong)reader.Unsigned(8));
        value.@code = ReadText(reader, 128);
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

    public sealed class _Ros2Aimdk_msgsMsgAlertCodeArray
    {
        public _Ros2Aimdk_msgsMsgMessageHeader @header = new _Ros2Aimdk_msgsMsgMessageHeader();
        public _Ros2Aimdk_msgsMsgAlertCode[] @list = new _Ros2Aimdk_msgsMsgAlertCode[0];

        public _Ros2Aimdk_msgsMsgAlertCodeArray()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsMsgAlertCodeArrayCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsMsgAlertCodeArray>
    {
        public static readonly Ros2Aimdk_msgsMsgAlertCodeArrayCodec Instance = new Ros2Aimdk_msgsMsgAlertCodeArrayCodec();

        private Ros2Aimdk_msgsMsgAlertCodeArrayCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/msg/AlertCodeArray";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_1b63520082b1874bb85d84c6be60d4464a3ce7063422d6db5597c907e70fe261";
        public const int MIN_WIRE_BYTES = 28, MAX_WIRE_BYTES = 748;

        public byte[] Encode(_Ros2Aimdk_msgsMsgAlertCodeArray value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsMsgAlertCodeArray(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsMsgAlertCodeArray Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsMsgAlertCodeArray value = ReadRos2Aimdk_msgsMsgAlertCodeArray(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsMsgAlertCodeArray(_Codecs.Writer writer, _Ros2Aimdk_msgsMsgAlertCodeArray value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Aimdk_msgsMsgMessageHeader part0 = value.@header;
        WriteRos2Aimdk_msgsMsgMessageHeader(writer, part0);
        _Ros2Aimdk_msgsMsgAlertCode[] part1 = value.@list;
        if(part1 == null || part1.Length > 4)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part1.Length, 4);
        for(int index = 0; index < part1.Length; ++index)
        {
            _Ros2Aimdk_msgsMsgAlertCode element = part1[index];
            WriteRos2Aimdk_msgsMsgAlertCode(writer, element);
        }
    }

    private static _Ros2Aimdk_msgsMsgAlertCodeArray ReadRos2Aimdk_msgsMsgAlertCodeArray(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsMsgAlertCodeArray();
        value.@header = ReadRos2Aimdk_msgsMsgMessageHeader(reader);
        value.@list = new _Ros2Aimdk_msgsMsgAlertCode[ReadCount(reader, 4, 20)];
        for(int index = 0; index < value.@list.Length; ++index)
            value.@list[index] = ReadRos2Aimdk_msgsMsgAlertCode(reader);
        return value;
    }

    public sealed class _Ros2Aimdk_msgsMsgAudioInfo
    {
        public byte @channels = 0;
        public uint @sample_rate = 0;
        public uint @size = 0;
        public string @sample_format = "";
        public string @coding_format = "";

        public _Ros2Aimdk_msgsMsgAudioInfo()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsMsgAudioInfoCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsMsgAudioInfo>
    {
        public static readonly Ros2Aimdk_msgsMsgAudioInfoCodec Instance = new Ros2Aimdk_msgsMsgAudioInfoCodec();

        private Ros2Aimdk_msgsMsgAudioInfoCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/msg/AudioInfo";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_c58c89e03376e7f8beb8df02fe189fb1f6059825c5ff6924c4199b24fdb440be";
        public const int MIN_WIRE_BYTES = 17, MAX_WIRE_BYTES = 273;

        public byte[] Encode(_Ros2Aimdk_msgsMsgAudioInfo value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsMsgAudioInfo(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsMsgAudioInfo Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsMsgAudioInfo value = ReadRos2Aimdk_msgsMsgAudioInfo(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsMsgAudioInfo(_Codecs.Writer writer, _Ros2Aimdk_msgsMsgAudioInfo value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        byte part0 = value.@channels;
        writer.Unsigned(part0, 1);
        uint part1 = value.@sample_rate;
        writer.Unsigned(part1, 4);
        uint part2 = value.@size;
        writer.Unsigned(part2, 4);
        string part3 = value.@sample_format;
        WriteText(writer, part3, 128);
        string part4 = value.@coding_format;
        WriteText(writer, part4, 128);
    }

    private static _Ros2Aimdk_msgsMsgAudioInfo ReadRos2Aimdk_msgsMsgAudioInfo(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsMsgAudioInfo();
        value.@channels = unchecked((byte)reader.Unsigned(1));
        value.@sample_rate = unchecked((uint)reader.Unsigned(4));
        value.@size = unchecked((uint)reader.Unsigned(4));
        value.@sample_format = ReadText(reader, 128);
        value.@coding_format = ReadText(reader, 128);
        return value;
    }

    public sealed class _Ros2Aimdk_msgsMsgAudioData
    {
        public byte[] @data = new byte[0];

        public _Ros2Aimdk_msgsMsgAudioData()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsMsgAudioDataCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsMsgAudioData>
    {
        public static readonly Ros2Aimdk_msgsMsgAudioDataCodec Instance = new Ros2Aimdk_msgsMsgAudioDataCodec();

        private Ros2Aimdk_msgsMsgAudioDataCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/msg/AudioData";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_547da1b39105416d63222ff082398cfeec0804a7c7ad28199168f1107c6844e8";
        public const int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 260;

        public byte[] Encode(_Ros2Aimdk_msgsMsgAudioData value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsMsgAudioData(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsMsgAudioData Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsMsgAudioData value = ReadRos2Aimdk_msgsMsgAudioData(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsMsgAudioData(_Codecs.Writer writer, _Ros2Aimdk_msgsMsgAudioData value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        byte[] part0 = value.@data;
        if(part0 == null || part0.Length > 256)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part0.Length, 4);
        for(int index = 0; index < part0.Length; ++index)
        {
            byte element = part0[index];
            writer.Unsigned(element, 1);
        }
    }

    private static _Ros2Aimdk_msgsMsgAudioData ReadRos2Aimdk_msgsMsgAudioData(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsMsgAudioData();
        value.@data = new byte[ReadCount(reader, 256, 1)];
        for(int index = 0; index < value.@data.Length; ++index)
            value.@data[index] = unchecked((byte)reader.Unsigned(1));
        return value;
    }

    public sealed class _Ros2Aimdk_msgsMsgAudioCapture
    {
        public _Ros2Builtin_interfacesMsgTime @stamps = new _Ros2Builtin_interfacesMsgTime();
        public byte @mic_channels = 0;
        public byte @ref_channels = 0;
        public _Ros2Aimdk_msgsMsgAudioInfo @info = new _Ros2Aimdk_msgsMsgAudioInfo();
        public _Ros2Aimdk_msgsMsgAudioData @data = new _Ros2Aimdk_msgsMsgAudioData();
        public string @pkg_name = "";

        public _Ros2Aimdk_msgsMsgAudioCapture()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsMsgAudioCaptureCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsMsgAudioCapture>
    {
        public static readonly Ros2Aimdk_msgsMsgAudioCaptureCodec Instance = new Ros2Aimdk_msgsMsgAudioCaptureCodec();

        private Ros2Aimdk_msgsMsgAudioCaptureCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/msg/AudioCapture";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_de7db19093964d4783811019e6cc12c952a58364561be2a0a81ae874766e937c";
        public const int MIN_WIRE_BYTES = 35, MAX_WIRE_BYTES = 675;

        public byte[] Encode(_Ros2Aimdk_msgsMsgAudioCapture value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsMsgAudioCapture(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsMsgAudioCapture Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsMsgAudioCapture value = ReadRos2Aimdk_msgsMsgAudioCapture(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsMsgAudioCapture(_Codecs.Writer writer, _Ros2Aimdk_msgsMsgAudioCapture value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Builtin_interfacesMsgTime part0 = value.@stamps;
        WriteRos2Builtin_interfacesMsgTime(writer, part0);
        byte part1 = value.@mic_channels;
        writer.Unsigned(part1, 1);
        byte part2 = value.@ref_channels;
        writer.Unsigned(part2, 1);
        _Ros2Aimdk_msgsMsgAudioInfo part3 = value.@info;
        WriteRos2Aimdk_msgsMsgAudioInfo(writer, part3);
        _Ros2Aimdk_msgsMsgAudioData part4 = value.@data;
        WriteRos2Aimdk_msgsMsgAudioData(writer, part4);
        string part5 = value.@pkg_name;
        WriteText(writer, part5, 128);
    }

    private static _Ros2Aimdk_msgsMsgAudioCapture ReadRos2Aimdk_msgsMsgAudioCapture(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsMsgAudioCapture();
        value.@stamps = ReadRos2Builtin_interfacesMsgTime(reader);
        value.@mic_channels = unchecked((byte)reader.Unsigned(1));
        value.@ref_channels = unchecked((byte)reader.Unsigned(1));
        value.@info = ReadRos2Aimdk_msgsMsgAudioInfo(reader);
        value.@data = ReadRos2Aimdk_msgsMsgAudioData(reader);
        value.@pkg_name = ReadText(reader, 128);
        return value;
    }

    public sealed class _Ros2Aimdk_msgsMsgAudioFile
    {
        public string @pkg_name = "";
        public string @file_name = "";
        public string @file_path = "";
        public _Ros2Aimdk_msgsMsgAudioInfo @info = new _Ros2Aimdk_msgsMsgAudioInfo();
        public uint @priority = 0;
        public uint @priority_weight = 0;

        public _Ros2Aimdk_msgsMsgAudioFile()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsMsgAudioFileCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsMsgAudioFile>
    {
        public static readonly Ros2Aimdk_msgsMsgAudioFileCodec Instance = new Ros2Aimdk_msgsMsgAudioFileCodec();

        private Ros2Aimdk_msgsMsgAudioFileCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/msg/AudioFile";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_ed9aeffc24c98e014fe431b9e5e814bf21a474a777f70cf3ac989537b431995d";
        public const int MIN_WIRE_BYTES = 37, MAX_WIRE_BYTES = 677;

        public byte[] Encode(_Ros2Aimdk_msgsMsgAudioFile value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsMsgAudioFile(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsMsgAudioFile Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsMsgAudioFile value = ReadRos2Aimdk_msgsMsgAudioFile(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsMsgAudioFile(_Codecs.Writer writer, _Ros2Aimdk_msgsMsgAudioFile value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        string part0 = value.@pkg_name;
        WriteText(writer, part0, 128);
        string part1 = value.@file_name;
        WriteText(writer, part1, 128);
        string part2 = value.@file_path;
        WriteText(writer, part2, 128);
        _Ros2Aimdk_msgsMsgAudioInfo part3 = value.@info;
        WriteRos2Aimdk_msgsMsgAudioInfo(writer, part3);
        uint part4 = value.@priority;
        writer.Unsigned(part4, 4);
        uint part5 = value.@priority_weight;
        writer.Unsigned(part5, 4);
    }

    private static _Ros2Aimdk_msgsMsgAudioFile ReadRos2Aimdk_msgsMsgAudioFile(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsMsgAudioFile();
        value.@pkg_name = ReadText(reader, 128);
        value.@file_name = ReadText(reader, 128);
        value.@file_path = ReadText(reader, 128);
        value.@info = ReadRos2Aimdk_msgsMsgAudioInfo(reader);
        value.@priority = unchecked((uint)reader.Unsigned(4));
        value.@priority_weight = unchecked((uint)reader.Unsigned(4));
        return value;
    }

    public sealed class _Ros2Aimdk_msgsMsgAudioPlayback
    {
        public _Ros2Builtin_interfacesMsgTime @stamps = new _Ros2Builtin_interfacesMsgTime();
        public _Ros2Aimdk_msgsMsgAudioInfo @info = new _Ros2Aimdk_msgsMsgAudioInfo();
        public _Ros2Aimdk_msgsMsgAudioData @data = new _Ros2Aimdk_msgsMsgAudioData();
        public string @pkg_name = "";
        public string @token_id = "";

        public _Ros2Aimdk_msgsMsgAudioPlayback()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsMsgAudioPlaybackCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsMsgAudioPlayback>
    {
        public static readonly Ros2Aimdk_msgsMsgAudioPlaybackCodec Instance = new Ros2Aimdk_msgsMsgAudioPlaybackCodec();

        private Ros2Aimdk_msgsMsgAudioPlaybackCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/msg/AudioPlayback";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_1262b4dd07b332e6d10c5968292f29928e43fd6f6ea2faa2be1f48482e2dc499";
        public const int MIN_WIRE_BYTES = 37, MAX_WIRE_BYTES = 805;

        public byte[] Encode(_Ros2Aimdk_msgsMsgAudioPlayback value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsMsgAudioPlayback(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsMsgAudioPlayback Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsMsgAudioPlayback value = ReadRos2Aimdk_msgsMsgAudioPlayback(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsMsgAudioPlayback(_Codecs.Writer writer, _Ros2Aimdk_msgsMsgAudioPlayback value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Builtin_interfacesMsgTime part0 = value.@stamps;
        WriteRos2Builtin_interfacesMsgTime(writer, part0);
        _Ros2Aimdk_msgsMsgAudioInfo part1 = value.@info;
        WriteRos2Aimdk_msgsMsgAudioInfo(writer, part1);
        _Ros2Aimdk_msgsMsgAudioData part2 = value.@data;
        WriteRos2Aimdk_msgsMsgAudioData(writer, part2);
        string part3 = value.@pkg_name;
        WriteText(writer, part3, 128);
        string part4 = value.@token_id;
        WriteText(writer, part4, 128);
    }

    private static _Ros2Aimdk_msgsMsgAudioPlayback ReadRos2Aimdk_msgsMsgAudioPlayback(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsMsgAudioPlayback();
        value.@stamps = ReadRos2Builtin_interfacesMsgTime(reader);
        value.@info = ReadRos2Aimdk_msgsMsgAudioInfo(reader);
        value.@data = ReadRos2Aimdk_msgsMsgAudioData(reader);
        value.@pkg_name = ReadText(reader, 128);
        value.@token_id = ReadText(reader, 128);
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

    public sealed class _Ros2Aimdk_msgsMsgCommonTaskRequest
    {
        public _Ros2Aimdk_msgsMsgRequestHeader @header = new _Ros2Aimdk_msgsMsgRequestHeader();
        public ulong @task_id = 0;

        public _Ros2Aimdk_msgsMsgCommonTaskRequest()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsMsgCommonTaskRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsMsgCommonTaskRequest>
    {
        public static readonly Ros2Aimdk_msgsMsgCommonTaskRequestCodec Instance = new Ros2Aimdk_msgsMsgCommonTaskRequestCodec();

        private Ros2Aimdk_msgsMsgCommonTaskRequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/msg/CommonTaskRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_0324951171581259cf0c1bfed23887bdbc0f7328659e5efdfde046612f3d5de5";
        public const int MIN_WIRE_BYTES = 16, MAX_WIRE_BYTES = 16;

        public byte[] Encode(_Ros2Aimdk_msgsMsgCommonTaskRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsMsgCommonTaskRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsMsgCommonTaskRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsMsgCommonTaskRequest value = ReadRos2Aimdk_msgsMsgCommonTaskRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsMsgCommonTaskRequest(_Codecs.Writer writer, _Ros2Aimdk_msgsMsgCommonTaskRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Aimdk_msgsMsgRequestHeader part0 = value.@header;
        WriteRos2Aimdk_msgsMsgRequestHeader(writer, part0);
        ulong part1 = value.@task_id;
        writer.Unsigned(part1, 8);
    }

    private static _Ros2Aimdk_msgsMsgCommonTaskRequest ReadRos2Aimdk_msgsMsgCommonTaskRequest(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsMsgCommonTaskRequest();
        value.@header = ReadRos2Aimdk_msgsMsgRequestHeader(reader);
        value.@task_id = unchecked((ulong)reader.Unsigned(8));
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

    public sealed class _Ros2Aimdk_msgsMsgCurrentVersion
    {
        public string @version = "";
        public string @name = "";
        public string[] @files = new string[0];
        public ulong @download_timestamp_seconds = 0;

        public _Ros2Aimdk_msgsMsgCurrentVersion()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsMsgCurrentVersionCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsMsgCurrentVersion>
    {
        public static readonly Ros2Aimdk_msgsMsgCurrentVersionCodec Instance = new Ros2Aimdk_msgsMsgCurrentVersionCodec();

        private Ros2Aimdk_msgsMsgCurrentVersionCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/msg/CurrentVersion";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_0a8226d6e3af0a098ee88498274e2a166f40df85162a67d38ebcb1fcba5e87cd";
        public const int MIN_WIRE_BYTES = 20, MAX_WIRE_BYTES = 2388;

        public byte[] Encode(_Ros2Aimdk_msgsMsgCurrentVersion value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsMsgCurrentVersion(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsMsgCurrentVersion Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsMsgCurrentVersion value = ReadRos2Aimdk_msgsMsgCurrentVersion(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsMsgCurrentVersion(_Codecs.Writer writer, _Ros2Aimdk_msgsMsgCurrentVersion value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        string part0 = value.@version;
        WriteText(writer, part0, 128);
        string part1 = value.@name;
        WriteText(writer, part1, 128);
        string[] part2 = value.@files;
        if(part2 == null || part2.Length > 16)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part2.Length, 4);
        for(int index = 0; index < part2.Length; ++index)
        {
            string element = part2[index];
            WriteText(writer, element, 128);
        }
        ulong part3 = value.@download_timestamp_seconds;
        writer.Unsigned(part3, 8);
    }

    private static _Ros2Aimdk_msgsMsgCurrentVersion ReadRos2Aimdk_msgsMsgCurrentVersion(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsMsgCurrentVersion();
        value.@version = ReadText(reader, 128);
        value.@name = ReadText(reader, 128);
        value.@files = new string[ReadCount(reader, 16, 4)];
        for(int index = 0; index < value.@files.Length; ++index)
            value.@files[index] = ReadText(reader, 128);
        value.@download_timestamp_seconds = unchecked((ulong)reader.Unsigned(8));
        return value;
    }

    public sealed class _Ros2Aimdk_msgsMsgDiagnosticType
    {
        public int @value = 0;

        public _Ros2Aimdk_msgsMsgDiagnosticType()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsMsgDiagnosticTypeCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsMsgDiagnosticType>
    {
        public static readonly Ros2Aimdk_msgsMsgDiagnosticTypeCodec Instance = new Ros2Aimdk_msgsMsgDiagnosticTypeCodec();

        private Ros2Aimdk_msgsMsgDiagnosticTypeCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/msg/DiagnosticType";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_41bcce9c343c12c64f0d2c28282926a734361f5eb02d39be0aae5c98ae926d92";
        public const int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 4;

        public byte[] Encode(_Ros2Aimdk_msgsMsgDiagnosticType value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsMsgDiagnosticType(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsMsgDiagnosticType Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsMsgDiagnosticType value = ReadRos2Aimdk_msgsMsgDiagnosticType(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsMsgDiagnosticType(_Codecs.Writer writer, _Ros2Aimdk_msgsMsgDiagnosticType value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        int part0 = value.@value;
        writer.Unsigned(unchecked((uint)part0), 4);
    }

    private static _Ros2Aimdk_msgsMsgDiagnosticType ReadRos2Aimdk_msgsMsgDiagnosticType(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsMsgDiagnosticType();
        value.@value = unchecked((int)reader.Unsigned(4));
        return value;
    }

    public sealed class _Ros2Aimdk_msgsMsgDiagnosticInfo
    {
        public ulong @timestamp = 0;
        public ulong @first_timestamp = 0;
        public _Ros2Aimdk_msgsMsgDiagnosticType @type = new _Ros2Aimdk_msgsMsgDiagnosticType();
        public byte @module_id = 0;
        public uint @code = 0;
        public ulong @diag_code = 0;
        public string @info = "";

        public _Ros2Aimdk_msgsMsgDiagnosticInfo()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsMsgDiagnosticInfoCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsMsgDiagnosticInfo>
    {
        public static readonly Ros2Aimdk_msgsMsgDiagnosticInfoCodec Instance = new Ros2Aimdk_msgsMsgDiagnosticInfoCodec();

        private Ros2Aimdk_msgsMsgDiagnosticInfoCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/msg/DiagnosticInfo";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_989641e2dd8ef2e5e77f3455355ca8c1f08d1671874f1b920b0ae28352e20afa";
        public const int MIN_WIRE_BYTES = 37, MAX_WIRE_BYTES = 165;

        public byte[] Encode(_Ros2Aimdk_msgsMsgDiagnosticInfo value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsMsgDiagnosticInfo(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsMsgDiagnosticInfo Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsMsgDiagnosticInfo value = ReadRos2Aimdk_msgsMsgDiagnosticInfo(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsMsgDiagnosticInfo(_Codecs.Writer writer, _Ros2Aimdk_msgsMsgDiagnosticInfo value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        ulong part0 = value.@timestamp;
        writer.Unsigned(part0, 8);
        ulong part1 = value.@first_timestamp;
        writer.Unsigned(part1, 8);
        _Ros2Aimdk_msgsMsgDiagnosticType part2 = value.@type;
        WriteRos2Aimdk_msgsMsgDiagnosticType(writer, part2);
        byte part3 = value.@module_id;
        writer.Unsigned(part3, 1);
        uint part4 = value.@code;
        writer.Unsigned(part4, 4);
        ulong part5 = value.@diag_code;
        writer.Unsigned(part5, 8);
        string part6 = value.@info;
        WriteText(writer, part6, 128);
    }

    private static _Ros2Aimdk_msgsMsgDiagnosticInfo ReadRos2Aimdk_msgsMsgDiagnosticInfo(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsMsgDiagnosticInfo();
        value.@timestamp = unchecked((ulong)reader.Unsigned(8));
        value.@first_timestamp = unchecked((ulong)reader.Unsigned(8));
        value.@type = ReadRos2Aimdk_msgsMsgDiagnosticType(reader);
        value.@module_id = unchecked((byte)reader.Unsigned(1));
        value.@code = unchecked((uint)reader.Unsigned(4));
        value.@diag_code = unchecked((ulong)reader.Unsigned(8));
        value.@info = ReadText(reader, 128);
        return value;
    }

    public sealed class _Ros2Aimdk_msgsMsgDiagnosticInfoArray
    {
        public _Ros2Aimdk_msgsMsgMessageHeader @header = new _Ros2Aimdk_msgsMsgMessageHeader();
        public _Ros2Aimdk_msgsMsgDiagnosticInfo[] @diagnostics = new _Ros2Aimdk_msgsMsgDiagnosticInfo[0];

        public _Ros2Aimdk_msgsMsgDiagnosticInfoArray()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsMsgDiagnosticInfoArrayCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsMsgDiagnosticInfoArray>
    {
        public static readonly Ros2Aimdk_msgsMsgDiagnosticInfoArrayCodec Instance = new Ros2Aimdk_msgsMsgDiagnosticInfoArrayCodec();

        private Ros2Aimdk_msgsMsgDiagnosticInfoArrayCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/msg/DiagnosticInfoArray";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_ea9c3022e38d875c94431babc75f890382089d9e2fb1a15573421d475d2d280b";
        public const int MIN_WIRE_BYTES = 28, MAX_WIRE_BYTES = 816;

        public byte[] Encode(_Ros2Aimdk_msgsMsgDiagnosticInfoArray value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsMsgDiagnosticInfoArray(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsMsgDiagnosticInfoArray Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsMsgDiagnosticInfoArray value = ReadRos2Aimdk_msgsMsgDiagnosticInfoArray(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsMsgDiagnosticInfoArray(_Codecs.Writer writer, _Ros2Aimdk_msgsMsgDiagnosticInfoArray value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Aimdk_msgsMsgMessageHeader part0 = value.@header;
        WriteRos2Aimdk_msgsMsgMessageHeader(writer, part0);
        _Ros2Aimdk_msgsMsgDiagnosticInfo[] part1 = value.@diagnostics;
        if(part1 == null || part1.Length > 4)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part1.Length, 4);
        for(int index = 0; index < part1.Length; ++index)
        {
            _Ros2Aimdk_msgsMsgDiagnosticInfo element = part1[index];
            WriteRos2Aimdk_msgsMsgDiagnosticInfo(writer, element);
        }
    }

    private static _Ros2Aimdk_msgsMsgDiagnosticInfoArray ReadRos2Aimdk_msgsMsgDiagnosticInfoArray(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsMsgDiagnosticInfoArray();
        value.@header = ReadRos2Aimdk_msgsMsgMessageHeader(reader);
        value.@diagnostics = new _Ros2Aimdk_msgsMsgDiagnosticInfo[ReadCount(reader, 4, 37)];
        for(int index = 0; index < value.@diagnostics.Length; ++index)
            value.@diagnostics[index] = ReadRos2Aimdk_msgsMsgDiagnosticInfo(reader);
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
        public byte @display_type = 0;
        public string @trace_id = "";
        public int @error_code = 0;

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
        public const string CODEC_IDENTITY = "UWVMROS1_a2a3346bea421c1c0756e8e74dd05564f2281d15762dd300189563e5bd0d3df4";
        public const int MIN_WIRE_BYTES = 56, MAX_WIRE_BYTES = 2552;

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
        byte part8 = value.@display_type;
        writer.Unsigned(part8, 1);
        string part9 = value.@trace_id;
        WriteText(writer, part9, 128);
        int part10 = value.@error_code;
        writer.Unsigned(unchecked((uint)part10), 4);
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
        value.@display_type = unchecked((byte)reader.Unsigned(1));
        value.@trace_id = ReadText(reader, 128);
        value.@error_code = unchecked((int)reader.Unsigned(4));
        return value;
    }

    public sealed class _Ros2Aimdk_msgsMsgFixLineIntroState
    {
        public ulong @set_task_id = 0;
        public string @set_task_name = "";
        public string @task_name = "";
        public ulong @task_id = 0;
        public string @map_name = "";
        public ulong @map_id = 0;
        public uint @rest_site_number = 0;
        public byte @fix_line_intro_state = 0;
        public ulong @cur_target_id = 0;

        public _Ros2Aimdk_msgsMsgFixLineIntroState()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsMsgFixLineIntroStateCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsMsgFixLineIntroState>
    {
        public static readonly Ros2Aimdk_msgsMsgFixLineIntroStateCodec Instance = new Ros2Aimdk_msgsMsgFixLineIntroStateCodec();

        private Ros2Aimdk_msgsMsgFixLineIntroStateCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/msg/FixLineIntroState";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_f7c7b38331d9b5f0e8268f8373e254d9e9f2becd5388d0efd30927e5c4916384";
        public const int MIN_WIRE_BYTES = 49, MAX_WIRE_BYTES = 433;

        public byte[] Encode(_Ros2Aimdk_msgsMsgFixLineIntroState value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsMsgFixLineIntroState(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsMsgFixLineIntroState Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsMsgFixLineIntroState value = ReadRos2Aimdk_msgsMsgFixLineIntroState(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsMsgFixLineIntroState(_Codecs.Writer writer, _Ros2Aimdk_msgsMsgFixLineIntroState value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        ulong part0 = value.@set_task_id;
        writer.Unsigned(part0, 8);
        string part1 = value.@set_task_name;
        WriteText(writer, part1, 128);
        string part2 = value.@task_name;
        WriteText(writer, part2, 128);
        ulong part3 = value.@task_id;
        writer.Unsigned(part3, 8);
        string part4 = value.@map_name;
        WriteText(writer, part4, 128);
        ulong part5 = value.@map_id;
        writer.Unsigned(part5, 8);
        uint part6 = value.@rest_site_number;
        writer.Unsigned(part6, 4);
        byte part7 = value.@fix_line_intro_state;
        writer.Unsigned(part7, 1);
        ulong part8 = value.@cur_target_id;
        writer.Unsigned(part8, 8);
    }

    private static _Ros2Aimdk_msgsMsgFixLineIntroState ReadRos2Aimdk_msgsMsgFixLineIntroState(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsMsgFixLineIntroState();
        value.@set_task_id = unchecked((ulong)reader.Unsigned(8));
        value.@set_task_name = ReadText(reader, 128);
        value.@task_name = ReadText(reader, 128);
        value.@task_id = unchecked((ulong)reader.Unsigned(8));
        value.@map_name = ReadText(reader, 128);
        value.@map_id = unchecked((ulong)reader.Unsigned(8));
        value.@rest_site_number = unchecked((uint)reader.Unsigned(4));
        value.@fix_line_intro_state = unchecked((byte)reader.Unsigned(1));
        value.@cur_target_id = unchecked((ulong)reader.Unsigned(8));
        return value;
    }

    public sealed class _Ros2Aimdk_msgsMsgFocusRequester
    {
        public string @pkg_name = "";
        public uint @priority = 0;
        public uint @priority_weight = 0;

        public _Ros2Aimdk_msgsMsgFocusRequester()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsMsgFocusRequesterCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsMsgFocusRequester>
    {
        public static readonly Ros2Aimdk_msgsMsgFocusRequesterCodec Instance = new Ros2Aimdk_msgsMsgFocusRequesterCodec();

        private Ros2Aimdk_msgsMsgFocusRequesterCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/msg/FocusRequester";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_9b41f0b3a3cafa6b190ede3107f8cf802c1cbacf1eb81e075a376ceaf37fa186";
        public const int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 140;

        public byte[] Encode(_Ros2Aimdk_msgsMsgFocusRequester value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsMsgFocusRequester(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsMsgFocusRequester Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsMsgFocusRequester value = ReadRos2Aimdk_msgsMsgFocusRequester(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsMsgFocusRequester(_Codecs.Writer writer, _Ros2Aimdk_msgsMsgFocusRequester value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        string part0 = value.@pkg_name;
        WriteText(writer, part0, 128);
        uint part1 = value.@priority;
        writer.Unsigned(part1, 4);
        uint part2 = value.@priority_weight;
        writer.Unsigned(part2, 4);
    }

    private static _Ros2Aimdk_msgsMsgFocusRequester ReadRos2Aimdk_msgsMsgFocusRequester(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsMsgFocusRequester();
        value.@pkg_name = ReadText(reader, 128);
        value.@priority = unchecked((uint)reader.Unsigned(4));
        value.@priority_weight = unchecked((uint)reader.Unsigned(4));
        return value;
    }

    public sealed class _Ros2Aimdk_msgsMsgFocusResponse
    {
        public string @pkg_name = "";
        public bool @focus_gain = false;

        public _Ros2Aimdk_msgsMsgFocusResponse()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsMsgFocusResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsMsgFocusResponse>
    {
        public static readonly Ros2Aimdk_msgsMsgFocusResponseCodec Instance = new Ros2Aimdk_msgsMsgFocusResponseCodec();

        private Ros2Aimdk_msgsMsgFocusResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/msg/FocusResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_16047b8b9e9f131f8aa44fc4e0960ce81446788d557b055be1f6b2542db3a87c";
        public const int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 133;

        public byte[] Encode(_Ros2Aimdk_msgsMsgFocusResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsMsgFocusResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsMsgFocusResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsMsgFocusResponse value = ReadRos2Aimdk_msgsMsgFocusResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsMsgFocusResponse(_Codecs.Writer writer, _Ros2Aimdk_msgsMsgFocusResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        string part0 = value.@pkg_name;
        WriteText(writer, part0, 128);
        bool part1 = value.@focus_gain;
        writer.Unsigned(part1 ? 1UL : 0UL, 1);
    }

    private static _Ros2Aimdk_msgsMsgFocusResponse ReadRos2Aimdk_msgsMsgFocusResponse(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsMsgFocusResponse();
        value.@pkg_name = ReadText(reader, 128);
        value.@focus_gain = ReadBool(reader);
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

    public sealed class _Ros2Aimdk_msgsMsgQRCode
    {
        public int @code = 0;
        public _Ros2Geometry_msgsMsgPose @pose = new _Ros2Geometry_msgsMsgPose();

        public _Ros2Aimdk_msgsMsgQRCode()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsMsgQRCodeCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsMsgQRCode>
    {
        public static readonly Ros2Aimdk_msgsMsgQRCodeCodec Instance = new Ros2Aimdk_msgsMsgQRCodeCodec();

        private Ros2Aimdk_msgsMsgQRCodeCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/msg/QRCode";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_51293e3c7ee25b1a265c4a57539a11060563e89005ceaf4aaa0891481ab803cd";
        public const int MIN_WIRE_BYTES = 60, MAX_WIRE_BYTES = 60;

        public byte[] Encode(_Ros2Aimdk_msgsMsgQRCode value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsMsgQRCode(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsMsgQRCode Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsMsgQRCode value = ReadRos2Aimdk_msgsMsgQRCode(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsMsgQRCode(_Codecs.Writer writer, _Ros2Aimdk_msgsMsgQRCode value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        int part0 = value.@code;
        writer.Unsigned(unchecked((uint)part0), 4);
        _Ros2Geometry_msgsMsgPose part1 = value.@pose;
        WriteRos2Geometry_msgsMsgPose(writer, part1);
    }

    private static _Ros2Aimdk_msgsMsgQRCode ReadRos2Aimdk_msgsMsgQRCode(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsMsgQRCode();
        value.@code = unchecked((int)reader.Unsigned(4));
        value.@pose = ReadRos2Geometry_msgsMsgPose(reader);
        return value;
    }

    public sealed class _Ros2Aimdk_msgsMsgHRPoint
    {
        public int @point_id = 0;
        public _Ros2Geometry_msgsMsgPose @pose = new _Ros2Geometry_msgsMsgPose();
        public _Ros2Aimdk_msgsMsgQRCode[] @qr_list = new _Ros2Aimdk_msgsMsgQRCode[0];
        public bool @use_head = false;

        public _Ros2Aimdk_msgsMsgHRPoint()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsMsgHRPointCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsMsgHRPoint>
    {
        public static readonly Ros2Aimdk_msgsMsgHRPointCodec Instance = new Ros2Aimdk_msgsMsgHRPointCodec();

        private Ros2Aimdk_msgsMsgHRPointCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/msg/HRPoint";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_070874f4fea77298b6d66d02ee40026e86b4f48ee03e6d9acffcaddb387b3645";
        public const int MIN_WIRE_BYTES = 65, MAX_WIRE_BYTES = 305;

        public byte[] Encode(_Ros2Aimdk_msgsMsgHRPoint value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsMsgHRPoint(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsMsgHRPoint Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsMsgHRPoint value = ReadRos2Aimdk_msgsMsgHRPoint(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsMsgHRPoint(_Codecs.Writer writer, _Ros2Aimdk_msgsMsgHRPoint value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        int part0 = value.@point_id;
        writer.Unsigned(unchecked((uint)part0), 4);
        _Ros2Geometry_msgsMsgPose part1 = value.@pose;
        WriteRos2Geometry_msgsMsgPose(writer, part1);
        _Ros2Aimdk_msgsMsgQRCode[] part2 = value.@qr_list;
        if(part2 == null || part2.Length > 4)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part2.Length, 4);
        for(int index = 0; index < part2.Length; ++index)
        {
            _Ros2Aimdk_msgsMsgQRCode element = part2[index];
            WriteRos2Aimdk_msgsMsgQRCode(writer, element);
        }
        bool part3 = value.@use_head;
        writer.Unsigned(part3 ? 1UL : 0UL, 1);
    }

    private static _Ros2Aimdk_msgsMsgHRPoint ReadRos2Aimdk_msgsMsgHRPoint(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsMsgHRPoint();
        value.@point_id = unchecked((int)reader.Unsigned(4));
        value.@pose = ReadRos2Geometry_msgsMsgPose(reader);
        value.@qr_list = new _Ros2Aimdk_msgsMsgQRCode[ReadCount(reader, 4, 60)];
        for(int index = 0; index < value.@qr_list.Length; ++index)
            value.@qr_list[index] = ReadRos2Aimdk_msgsMsgQRCode(reader);
        value.@use_head = ReadBool(reader);
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
        public const string CODEC_IDENTITY = "UWVMROS1_07c4fd4188be6fccafc5808eb58094c528c1c7219f70850d2d77b05e1466daff";
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
        public const string CODEC_IDENTITY = "UWVMROS1_a120a6c2b4a364c358f2f76227954c9cf5a81345ad812683eea78dfe3e3c29ec";
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

    public sealed class _Ros2Aimdk_msgsMsgHandTouchSensorData
    {
        public byte[] @palm_touch_data = new byte[36];
        public byte[] @back_of_hand_touch_data = new byte[36];
        public byte[] @thumb_touch_data = new byte[16];
        public byte[] @index_finger_touch_data = new byte[16];
        public byte[] @middle_finger_touch_data = new byte[16];
        public byte[] @ring_finger_touch_data = new byte[16];
        public byte[] @little_finger_touch_data = new byte[16];

        public _Ros2Aimdk_msgsMsgHandTouchSensorData()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsMsgHandTouchSensorDataCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsMsgHandTouchSensorData>
    {
        public static readonly Ros2Aimdk_msgsMsgHandTouchSensorDataCodec Instance = new Ros2Aimdk_msgsMsgHandTouchSensorDataCodec();

        private Ros2Aimdk_msgsMsgHandTouchSensorDataCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/msg/HandTouchSensorData";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_573ab7611c65bde831172350c3cf49dd73cf4bfcbefabff7aa874845b828e4a0";
        public const int MIN_WIRE_BYTES = 152, MAX_WIRE_BYTES = 152;

        public byte[] Encode(_Ros2Aimdk_msgsMsgHandTouchSensorData value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsMsgHandTouchSensorData(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsMsgHandTouchSensorData Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsMsgHandTouchSensorData value = ReadRos2Aimdk_msgsMsgHandTouchSensorData(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsMsgHandTouchSensorData(_Codecs.Writer writer, _Ros2Aimdk_msgsMsgHandTouchSensorData value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        byte[] part0 = value.@palm_touch_data;
        if(part0 == null || part0.Length != 36)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part0.Length; ++index)
        {
            byte element = part0[index];
            writer.Unsigned(element, 1);
        }
        byte[] part1 = value.@back_of_hand_touch_data;
        if(part1 == null || part1.Length != 36)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part1.Length; ++index)
        {
            byte element = part1[index];
            writer.Unsigned(element, 1);
        }
        byte[] part2 = value.@thumb_touch_data;
        if(part2 == null || part2.Length != 16)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part2.Length; ++index)
        {
            byte element = part2[index];
            writer.Unsigned(element, 1);
        }
        byte[] part3 = value.@index_finger_touch_data;
        if(part3 == null || part3.Length != 16)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part3.Length; ++index)
        {
            byte element = part3[index];
            writer.Unsigned(element, 1);
        }
        byte[] part4 = value.@middle_finger_touch_data;
        if(part4 == null || part4.Length != 16)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part4.Length; ++index)
        {
            byte element = part4[index];
            writer.Unsigned(element, 1);
        }
        byte[] part5 = value.@ring_finger_touch_data;
        if(part5 == null || part5.Length != 16)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part5.Length; ++index)
        {
            byte element = part5[index];
            writer.Unsigned(element, 1);
        }
        byte[] part6 = value.@little_finger_touch_data;
        if(part6 == null || part6.Length != 16)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part6.Length; ++index)
        {
            byte element = part6[index];
            writer.Unsigned(element, 1);
        }
    }

    private static _Ros2Aimdk_msgsMsgHandTouchSensorData ReadRos2Aimdk_msgsMsgHandTouchSensorData(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsMsgHandTouchSensorData();
        value.@palm_touch_data = new byte[36];
        for(int index = 0; index < value.@palm_touch_data.Length; ++index)
            value.@palm_touch_data[index] = unchecked((byte)reader.Unsigned(1));
        value.@back_of_hand_touch_data = new byte[36];
        for(int index = 0; index < value.@back_of_hand_touch_data.Length; ++index)
            value.@back_of_hand_touch_data[index] = unchecked((byte)reader.Unsigned(1));
        value.@thumb_touch_data = new byte[16];
        for(int index = 0; index < value.@thumb_touch_data.Length; ++index)
            value.@thumb_touch_data[index] = unchecked((byte)reader.Unsigned(1));
        value.@index_finger_touch_data = new byte[16];
        for(int index = 0; index < value.@index_finger_touch_data.Length; ++index)
            value.@index_finger_touch_data[index] = unchecked((byte)reader.Unsigned(1));
        value.@middle_finger_touch_data = new byte[16];
        for(int index = 0; index < value.@middle_finger_touch_data.Length; ++index)
            value.@middle_finger_touch_data[index] = unchecked((byte)reader.Unsigned(1));
        value.@ring_finger_touch_data = new byte[16];
        for(int index = 0; index < value.@ring_finger_touch_data.Length; ++index)
            value.@ring_finger_touch_data[index] = unchecked((byte)reader.Unsigned(1));
        value.@little_finger_touch_data = new byte[16];
        for(int index = 0; index < value.@little_finger_touch_data.Length; ++index)
            value.@little_finger_touch_data[index] = unchecked((byte)reader.Unsigned(1));
        return value;
    }

    public sealed class _Ros2Aimdk_msgsMsgHandStateArray
    {
        public _Ros2Aimdk_msgsMsgMessageHeader @header = new _Ros2Aimdk_msgsMsgMessageHeader();
        public _Ros2Aimdk_msgsMsgHandType @left_hand_type = new _Ros2Aimdk_msgsMsgHandType();
        public _Ros2Aimdk_msgsMsgHandState[] @left_hands = new _Ros2Aimdk_msgsMsgHandState[0];
        public _Ros2Aimdk_msgsMsgHandTouchSensorData @left_touch_sensors = new _Ros2Aimdk_msgsMsgHandTouchSensorData();
        public _Ros2Aimdk_msgsMsgHandType @right_hand_type = new _Ros2Aimdk_msgsMsgHandType();
        public _Ros2Aimdk_msgsMsgHandState[] @right_hands = new _Ros2Aimdk_msgsMsgHandState[0];
        public _Ros2Aimdk_msgsMsgHandTouchSensorData @right_touch_sensors = new _Ros2Aimdk_msgsMsgHandTouchSensorData();

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
        public const string CODEC_IDENTITY = "UWVMROS1_c577a4f240ca6f9f26d82d8c8ba056b2877af96ab7dd774262637286c0302944";
        public const int MIN_WIRE_BYTES = 338, MAX_WIRE_BYTES = 1778;

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
        _Ros2Aimdk_msgsMsgHandTouchSensorData part3 = value.@left_touch_sensors;
        WriteRos2Aimdk_msgsMsgHandTouchSensorData(writer, part3);
        _Ros2Aimdk_msgsMsgHandType part4 = value.@right_hand_type;
        WriteRos2Aimdk_msgsMsgHandType(writer, part4);
        _Ros2Aimdk_msgsMsgHandState[] part5 = value.@right_hands;
        if(part5 == null || part5.Length > 4)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part5.Length, 4);
        for(int index = 0; index < part5.Length; ++index)
        {
            _Ros2Aimdk_msgsMsgHandState element = part5[index];
            WriteRos2Aimdk_msgsMsgHandState(writer, element);
        }
        _Ros2Aimdk_msgsMsgHandTouchSensorData part6 = value.@right_touch_sensors;
        WriteRos2Aimdk_msgsMsgHandTouchSensorData(writer, part6);
    }

    private static _Ros2Aimdk_msgsMsgHandStateArray ReadRos2Aimdk_msgsMsgHandStateArray(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsMsgHandStateArray();
        value.@header = ReadRos2Aimdk_msgsMsgMessageHeader(reader);
        value.@left_hand_type = ReadRos2Aimdk_msgsMsgHandType(reader);
        value.@left_hands = new _Ros2Aimdk_msgsMsgHandState[ReadCount(reader, 4, 36)];
        for(int index = 0; index < value.@left_hands.Length; ++index)
            value.@left_hands[index] = ReadRos2Aimdk_msgsMsgHandState(reader);
        value.@left_touch_sensors = ReadRos2Aimdk_msgsMsgHandTouchSensorData(reader);
        value.@right_hand_type = ReadRos2Aimdk_msgsMsgHandType(reader);
        value.@right_hands = new _Ros2Aimdk_msgsMsgHandState[ReadCount(reader, 4, 36)];
        for(int index = 0; index < value.@right_hands.Length; ++index)
            value.@right_hands[index] = ReadRos2Aimdk_msgsMsgHandState(reader);
        value.@right_touch_sensors = ReadRos2Aimdk_msgsMsgHandTouchSensorData(reader);
        return value;
    }

    public sealed class _Ros2Aimdk_msgsMsgHdsEventQuery
    {
        public ulong @start_time = 0;
        public ulong @end_time = 0;
        public ulong[] @diag_codes = new ulong[0];
        public string[] @alert_codes = new string[0];
        public string[] @alert_locations = new string[0];
        public byte @state = 0;
        public bool @order_desc = false;
        public uint @offset = 0;
        public uint @limit = 0;

        public _Ros2Aimdk_msgsMsgHdsEventQuery()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsMsgHdsEventQueryCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsMsgHdsEventQuery>
    {
        public static readonly Ros2Aimdk_msgsMsgHdsEventQueryCodec Instance = new Ros2Aimdk_msgsMsgHdsEventQueryCodec();

        private Ros2Aimdk_msgsMsgHdsEventQueryCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/msg/HdsEventQuery";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_bb210b5a804272bcf8eab7b9bd2217471997a8a4446032ddc0f0f0aca2734d29";
        public const int MIN_WIRE_BYTES = 38, MAX_WIRE_BYTES = 4390;

        public byte[] Encode(_Ros2Aimdk_msgsMsgHdsEventQuery value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsMsgHdsEventQuery(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsMsgHdsEventQuery Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsMsgHdsEventQuery value = ReadRos2Aimdk_msgsMsgHdsEventQuery(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsMsgHdsEventQuery(_Codecs.Writer writer, _Ros2Aimdk_msgsMsgHdsEventQuery value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        ulong part0 = value.@start_time;
        writer.Unsigned(part0, 8);
        ulong part1 = value.@end_time;
        writer.Unsigned(part1, 8);
        ulong[] part2 = value.@diag_codes;
        if(part2 == null || part2.Length > 16)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part2.Length, 4);
        for(int index = 0; index < part2.Length; ++index)
        {
            ulong element = part2[index];
            writer.Unsigned(element, 8);
        }
        string[] part3 = value.@alert_codes;
        if(part3 == null || part3.Length > 16)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part3.Length, 4);
        for(int index = 0; index < part3.Length; ++index)
        {
            string element = part3[index];
            WriteText(writer, element, 128);
        }
        string[] part4 = value.@alert_locations;
        if(part4 == null || part4.Length > 16)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part4.Length, 4);
        for(int index = 0; index < part4.Length; ++index)
        {
            string element = part4[index];
            WriteText(writer, element, 128);
        }
        byte part5 = value.@state;
        writer.Unsigned(part5, 1);
        bool part6 = value.@order_desc;
        writer.Unsigned(part6 ? 1UL : 0UL, 1);
        uint part7 = value.@offset;
        writer.Unsigned(part7, 4);
        uint part8 = value.@limit;
        writer.Unsigned(part8, 4);
    }

    private static _Ros2Aimdk_msgsMsgHdsEventQuery ReadRos2Aimdk_msgsMsgHdsEventQuery(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsMsgHdsEventQuery();
        value.@start_time = unchecked((ulong)reader.Unsigned(8));
        value.@end_time = unchecked((ulong)reader.Unsigned(8));
        value.@diag_codes = new ulong[ReadCount(reader, 16, 8)];
        for(int index = 0; index < value.@diag_codes.Length; ++index)
            value.@diag_codes[index] = unchecked((ulong)reader.Unsigned(8));
        value.@alert_codes = new string[ReadCount(reader, 16, 4)];
        for(int index = 0; index < value.@alert_codes.Length; ++index)
            value.@alert_codes[index] = ReadText(reader, 128);
        value.@alert_locations = new string[ReadCount(reader, 16, 4)];
        for(int index = 0; index < value.@alert_locations.Length; ++index)
            value.@alert_locations[index] = ReadText(reader, 128);
        value.@state = unchecked((byte)reader.Unsigned(1));
        value.@order_desc = ReadBool(reader);
        value.@offset = unchecked((uint)reader.Unsigned(4));
        value.@limit = unchecked((uint)reader.Unsigned(4));
        return value;
    }

    public sealed class _Ros2Aimdk_msgsMsgHdsEventRecord
    {
        public ulong @id = 0;
        public ulong @diag_code = 0;
        public string @alert_code = "";
        public string @alert_location = "";
        public ulong @first_timestamp = 0;
        public ulong @last_timestamp = 0;
        public ulong @recover_timestamp = 0;
        public ulong @duration_ns = 0;
        public bool @recovered = false;

        public _Ros2Aimdk_msgsMsgHdsEventRecord()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsMsgHdsEventRecordCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsMsgHdsEventRecord>
    {
        public static readonly Ros2Aimdk_msgsMsgHdsEventRecordCodec Instance = new Ros2Aimdk_msgsMsgHdsEventRecordCodec();

        private Ros2Aimdk_msgsMsgHdsEventRecordCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/msg/HdsEventRecord";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_7fe68df37f67144d462e2c9e1a126dc539d5f7156c923a879d36215145445de4";
        public const int MIN_WIRE_BYTES = 57, MAX_WIRE_BYTES = 313;

        public byte[] Encode(_Ros2Aimdk_msgsMsgHdsEventRecord value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsMsgHdsEventRecord(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsMsgHdsEventRecord Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsMsgHdsEventRecord value = ReadRos2Aimdk_msgsMsgHdsEventRecord(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsMsgHdsEventRecord(_Codecs.Writer writer, _Ros2Aimdk_msgsMsgHdsEventRecord value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        ulong part0 = value.@id;
        writer.Unsigned(part0, 8);
        ulong part1 = value.@diag_code;
        writer.Unsigned(part1, 8);
        string part2 = value.@alert_code;
        WriteText(writer, part2, 128);
        string part3 = value.@alert_location;
        WriteText(writer, part3, 128);
        ulong part4 = value.@first_timestamp;
        writer.Unsigned(part4, 8);
        ulong part5 = value.@last_timestamp;
        writer.Unsigned(part5, 8);
        ulong part6 = value.@recover_timestamp;
        writer.Unsigned(part6, 8);
        ulong part7 = value.@duration_ns;
        writer.Unsigned(part7, 8);
        bool part8 = value.@recovered;
        writer.Unsigned(part8 ? 1UL : 0UL, 1);
    }

    private static _Ros2Aimdk_msgsMsgHdsEventRecord ReadRos2Aimdk_msgsMsgHdsEventRecord(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsMsgHdsEventRecord();
        value.@id = unchecked((ulong)reader.Unsigned(8));
        value.@diag_code = unchecked((ulong)reader.Unsigned(8));
        value.@alert_code = ReadText(reader, 128);
        value.@alert_location = ReadText(reader, 128);
        value.@first_timestamp = unchecked((ulong)reader.Unsigned(8));
        value.@last_timestamp = unchecked((ulong)reader.Unsigned(8));
        value.@recover_timestamp = unchecked((ulong)reader.Unsigned(8));
        value.@duration_ns = unchecked((ulong)reader.Unsigned(8));
        value.@recovered = ReadBool(reader);
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

    public sealed class _Ros2Aimdk_msgsMsgMcBodyPoseStatus
    {
        public int @value = 0;

        public _Ros2Aimdk_msgsMsgMcBodyPoseStatus()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsMsgMcBodyPoseStatusCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsMsgMcBodyPoseStatus>
    {
        public static readonly Ros2Aimdk_msgsMsgMcBodyPoseStatusCodec Instance = new Ros2Aimdk_msgsMsgMcBodyPoseStatusCodec();

        private Ros2Aimdk_msgsMsgMcBodyPoseStatusCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/msg/McBodyPoseStatus";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_380976855f8c965a5c79a3688a1a2ce654dff9869441d061b464bda582fc7538";
        public const int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 4;

        public byte[] Encode(_Ros2Aimdk_msgsMsgMcBodyPoseStatus value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsMsgMcBodyPoseStatus(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsMsgMcBodyPoseStatus Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsMsgMcBodyPoseStatus value = ReadRos2Aimdk_msgsMsgMcBodyPoseStatus(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsMsgMcBodyPoseStatus(_Codecs.Writer writer, _Ros2Aimdk_msgsMsgMcBodyPoseStatus value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        int part0 = value.@value;
        writer.Unsigned(unchecked((uint)part0), 4);
    }

    private static _Ros2Aimdk_msgsMsgMcBodyPoseStatus ReadRos2Aimdk_msgsMsgMcBodyPoseStatus(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsMsgMcBodyPoseStatus();
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

    public sealed class _Ros2Aimdk_msgsMsgMcHandStatus
    {
        public int @value = 0;

        public _Ros2Aimdk_msgsMsgMcHandStatus()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsMsgMcHandStatusCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsMsgMcHandStatus>
    {
        public static readonly Ros2Aimdk_msgsMsgMcHandStatusCodec Instance = new Ros2Aimdk_msgsMsgMcHandStatusCodec();

        private Ros2Aimdk_msgsMsgMcHandStatusCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/msg/McHandStatus";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_7be307301e74f7c3db44fa94093233d8ac8f7f463f1904bee8748bb6fe29c462";
        public const int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 4;

        public byte[] Encode(_Ros2Aimdk_msgsMsgMcHandStatus value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsMsgMcHandStatus(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsMsgMcHandStatus Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsMsgMcHandStatus value = ReadRos2Aimdk_msgsMsgMcHandStatus(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsMsgMcHandStatus(_Codecs.Writer writer, _Ros2Aimdk_msgsMsgMcHandStatus value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        int part0 = value.@value;
        writer.Unsigned(unchecked((uint)part0), 4);
    }

    private static _Ros2Aimdk_msgsMsgMcHandStatus ReadRos2Aimdk_msgsMsgMcHandStatus(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsMsgMcHandStatus();
        value.@value = unchecked((int)reader.Unsigned(4));
        return value;
    }

    public sealed class _Ros2Aimdk_msgsMsgMcRuntimeModel
    {
        public bool @waist_status = false;
        public _Ros2Aimdk_msgsMsgMcHandStatus @left_hand_status = new _Ros2Aimdk_msgsMsgMcHandStatus();
        public _Ros2Aimdk_msgsMsgMcHandStatus @right_hand_status = new _Ros2Aimdk_msgsMsgMcHandStatus();

        public _Ros2Aimdk_msgsMsgMcRuntimeModel()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsMsgMcRuntimeModelCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsMsgMcRuntimeModel>
    {
        public static readonly Ros2Aimdk_msgsMsgMcRuntimeModelCodec Instance = new Ros2Aimdk_msgsMsgMcRuntimeModelCodec();

        private Ros2Aimdk_msgsMsgMcRuntimeModelCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/msg/McRuntimeModel";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_6a9196eaf82e74b282dfde8e9d7bf2f21712aeb537b0a6c8783445e5941254b4";
        public const int MIN_WIRE_BYTES = 9, MAX_WIRE_BYTES = 9;

        public byte[] Encode(_Ros2Aimdk_msgsMsgMcRuntimeModel value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsMsgMcRuntimeModel(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsMsgMcRuntimeModel Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsMsgMcRuntimeModel value = ReadRos2Aimdk_msgsMsgMcRuntimeModel(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsMsgMcRuntimeModel(_Codecs.Writer writer, _Ros2Aimdk_msgsMsgMcRuntimeModel value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@waist_status;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
        _Ros2Aimdk_msgsMsgMcHandStatus part1 = value.@left_hand_status;
        WriteRos2Aimdk_msgsMsgMcHandStatus(writer, part1);
        _Ros2Aimdk_msgsMsgMcHandStatus part2 = value.@right_hand_status;
        WriteRos2Aimdk_msgsMsgMcHandStatus(writer, part2);
    }

    private static _Ros2Aimdk_msgsMsgMcRuntimeModel ReadRos2Aimdk_msgsMsgMcRuntimeModel(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsMsgMcRuntimeModel();
        value.@waist_status = ReadBool(reader);
        value.@left_hand_status = ReadRos2Aimdk_msgsMsgMcHandStatus(reader);
        value.@right_hand_status = ReadRos2Aimdk_msgsMsgMcHandStatus(reader);
        return value;
    }

    public sealed class _Ros2Aimdk_msgsMsgMcPlayerState
    {
        public uint @value = 0;

        public _Ros2Aimdk_msgsMsgMcPlayerState()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsMsgMcPlayerStateCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsMsgMcPlayerState>
    {
        public static readonly Ros2Aimdk_msgsMsgMcPlayerStateCodec Instance = new Ros2Aimdk_msgsMsgMcPlayerStateCodec();

        private Ros2Aimdk_msgsMsgMcPlayerStateCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/msg/McPlayerState";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_a56c1b72e364a1b70243f6280dfea28a63f8533118b491ea67e968c27614a412";
        public const int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 4;

        public byte[] Encode(_Ros2Aimdk_msgsMsgMcPlayerState value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsMsgMcPlayerState(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsMsgMcPlayerState Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsMsgMcPlayerState value = ReadRos2Aimdk_msgsMsgMcPlayerState(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsMsgMcPlayerState(_Codecs.Writer writer, _Ros2Aimdk_msgsMsgMcPlayerState value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        uint part0 = value.@value;
        writer.Unsigned(part0, 4);
    }

    private static _Ros2Aimdk_msgsMsgMcPlayerState ReadRos2Aimdk_msgsMsgMcPlayerState(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsMsgMcPlayerState();
        value.@value = unchecked((uint)reader.Unsigned(4));
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

    public sealed class _Ros2Aimdk_msgsMsgMcMotionType
    {
        public int @value = 0;

        public _Ros2Aimdk_msgsMsgMcMotionType()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsMsgMcMotionTypeCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsMsgMcMotionType>
    {
        public static readonly Ros2Aimdk_msgsMsgMcMotionTypeCodec Instance = new Ros2Aimdk_msgsMsgMcMotionTypeCodec();

        private Ros2Aimdk_msgsMsgMcMotionTypeCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/msg/McMotionType";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_85a53e7c11c40212c3a2972b1c36ac4bfe9cc7861985b5966459c71fbc80a9da";
        public const int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 4;

        public byte[] Encode(_Ros2Aimdk_msgsMsgMcMotionType value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsMsgMcMotionType(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsMsgMcMotionType Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsMsgMcMotionType value = ReadRos2Aimdk_msgsMsgMcMotionType(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsMsgMcMotionType(_Codecs.Writer writer, _Ros2Aimdk_msgsMsgMcMotionType value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        int part0 = value.@value;
        writer.Unsigned(unchecked((uint)part0), 4);
    }

    private static _Ros2Aimdk_msgsMsgMcMotionType ReadRos2Aimdk_msgsMsgMcMotionType(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsMsgMcMotionType();
        value.@value = unchecked((int)reader.Unsigned(4));
        return value;
    }

    public sealed class _Ros2Aimdk_msgsMsgMcMotionStatus
    {
        public _Ros2Aimdk_msgsMsgMcPlayerState @player_state = new _Ros2Aimdk_msgsMsgMcPlayerState();
        public _Ros2Aimdk_msgsMsgMcControlArea @control_area = new _Ros2Aimdk_msgsMsgMcControlArea();
        public string @motion = "";
        public _Ros2Aimdk_msgsMsgMcMotionType @type = new _Ros2Aimdk_msgsMsgMcMotionType();

        public _Ros2Aimdk_msgsMsgMcMotionStatus()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsMsgMcMotionStatusCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsMsgMcMotionStatus>
    {
        public static readonly Ros2Aimdk_msgsMsgMcMotionStatusCodec Instance = new Ros2Aimdk_msgsMsgMcMotionStatusCodec();

        private Ros2Aimdk_msgsMsgMcMotionStatusCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/msg/McMotionStatus";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_4f80c178589dc4068c65c3243dbb4bd954bbcd81f1a2f0f8f844c910dea531ea";
        public const int MIN_WIRE_BYTES = 16, MAX_WIRE_BYTES = 144;

        public byte[] Encode(_Ros2Aimdk_msgsMsgMcMotionStatus value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsMsgMcMotionStatus(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsMsgMcMotionStatus Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsMsgMcMotionStatus value = ReadRos2Aimdk_msgsMsgMcMotionStatus(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsMsgMcMotionStatus(_Codecs.Writer writer, _Ros2Aimdk_msgsMsgMcMotionStatus value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Aimdk_msgsMsgMcPlayerState part0 = value.@player_state;
        WriteRos2Aimdk_msgsMsgMcPlayerState(writer, part0);
        _Ros2Aimdk_msgsMsgMcControlArea part1 = value.@control_area;
        WriteRos2Aimdk_msgsMsgMcControlArea(writer, part1);
        string part2 = value.@motion;
        WriteText(writer, part2, 128);
        _Ros2Aimdk_msgsMsgMcMotionType part3 = value.@type;
        WriteRos2Aimdk_msgsMsgMcMotionType(writer, part3);
    }

    private static _Ros2Aimdk_msgsMsgMcMotionStatus ReadRos2Aimdk_msgsMsgMcMotionStatus(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsMsgMcMotionStatus();
        value.@player_state = ReadRos2Aimdk_msgsMsgMcPlayerState(reader);
        value.@control_area = ReadRos2Aimdk_msgsMsgMcControlArea(reader);
        value.@motion = ReadText(reader, 128);
        value.@type = ReadRos2Aimdk_msgsMsgMcMotionType(reader);
        return value;
    }

    public sealed class _Ros2Aimdk_msgsMsgMcServoStatus
    {
        public bool @squat_enable = false;
        public double @squat_offset = 0;
        public uint @squat_limit = 0;
        public double @head_yaw_offset = 0;
        public double @head_pitch_offset = 0;
        public double @waist_yaw_offset = 0;
        public double @waist_pitch_offset = 0;
        public double @waist_roll_offset = 0;

        public _Ros2Aimdk_msgsMsgMcServoStatus()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsMsgMcServoStatusCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsMsgMcServoStatus>
    {
        public static readonly Ros2Aimdk_msgsMsgMcServoStatusCodec Instance = new Ros2Aimdk_msgsMsgMcServoStatusCodec();

        private Ros2Aimdk_msgsMsgMcServoStatusCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/msg/McServoStatus";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_824f5944e9dce34f459ad368cfc37e78e39a0589ff5f278417064773720b1ffa";
        public const int MIN_WIRE_BYTES = 53, MAX_WIRE_BYTES = 53;

        public byte[] Encode(_Ros2Aimdk_msgsMsgMcServoStatus value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsMsgMcServoStatus(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsMsgMcServoStatus Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsMsgMcServoStatus value = ReadRos2Aimdk_msgsMsgMcServoStatus(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsMsgMcServoStatus(_Codecs.Writer writer, _Ros2Aimdk_msgsMsgMcServoStatus value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@squat_enable;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
        double part1 = value.@squat_offset;
        writer.Float64(part1);
        uint part2 = value.@squat_limit;
        writer.Unsigned(part2, 4);
        double part3 = value.@head_yaw_offset;
        writer.Float64(part3);
        double part4 = value.@head_pitch_offset;
        writer.Float64(part4);
        double part5 = value.@waist_yaw_offset;
        writer.Float64(part5);
        double part6 = value.@waist_pitch_offset;
        writer.Float64(part6);
        double part7 = value.@waist_roll_offset;
        writer.Float64(part7);
    }

    private static _Ros2Aimdk_msgsMsgMcServoStatus ReadRos2Aimdk_msgsMsgMcServoStatus(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsMsgMcServoStatus();
        value.@squat_enable = ReadBool(reader);
        value.@squat_offset = reader.Float64();
        value.@squat_limit = unchecked((uint)reader.Unsigned(4));
        value.@head_yaw_offset = reader.Float64();
        value.@head_pitch_offset = reader.Float64();
        value.@waist_yaw_offset = reader.Float64();
        value.@waist_pitch_offset = reader.Float64();
        value.@waist_roll_offset = reader.Float64();
        return value;
    }

    public sealed class _Ros2Aimdk_msgsMsgMcFsmState
    {
        public uint @current_state = 0;

        public _Ros2Aimdk_msgsMsgMcFsmState()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsMsgMcFsmStateCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsMsgMcFsmState>
    {
        public static readonly Ros2Aimdk_msgsMsgMcFsmStateCodec Instance = new Ros2Aimdk_msgsMsgMcFsmStateCodec();

        private Ros2Aimdk_msgsMsgMcFsmStateCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/msg/McFsmState";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_2a3f0e37d5f835c8f80adc07e09bc9a162e869f662dc3ce440946b9e0ca9b047";
        public const int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 4;

        public byte[] Encode(_Ros2Aimdk_msgsMsgMcFsmState value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsMsgMcFsmState(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsMsgMcFsmState Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsMsgMcFsmState value = ReadRos2Aimdk_msgsMsgMcFsmState(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsMsgMcFsmState(_Codecs.Writer writer, _Ros2Aimdk_msgsMsgMcFsmState value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        uint part0 = value.@current_state;
        writer.Unsigned(part0, 4);
    }

    private static _Ros2Aimdk_msgsMsgMcFsmState ReadRos2Aimdk_msgsMsgMcFsmState(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsMsgMcFsmState();
        value.@current_state = unchecked((uint)reader.Unsigned(4));
        return value;
    }

    public sealed class _Ros2Aimdk_msgsMsgMcLocomotionSpeedMode
    {
        public int @value = 0;

        public _Ros2Aimdk_msgsMsgMcLocomotionSpeedMode()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsMsgMcLocomotionSpeedModeCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsMsgMcLocomotionSpeedMode>
    {
        public static readonly Ros2Aimdk_msgsMsgMcLocomotionSpeedModeCodec Instance = new Ros2Aimdk_msgsMsgMcLocomotionSpeedModeCodec();

        private Ros2Aimdk_msgsMsgMcLocomotionSpeedModeCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/msg/McLocomotionSpeedMode";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_52cf8b8e1e9a931076f9ed719deaf02d4b0c15647ff2ab8109579fb29d5fc6d6";
        public const int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 4;

        public byte[] Encode(_Ros2Aimdk_msgsMsgMcLocomotionSpeedMode value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsMsgMcLocomotionSpeedMode(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsMsgMcLocomotionSpeedMode Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsMsgMcLocomotionSpeedMode value = ReadRos2Aimdk_msgsMsgMcLocomotionSpeedMode(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsMsgMcLocomotionSpeedMode(_Codecs.Writer writer, _Ros2Aimdk_msgsMsgMcLocomotionSpeedMode value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        int part0 = value.@value;
        writer.Unsigned(unchecked((uint)part0), 4);
    }

    private static _Ros2Aimdk_msgsMsgMcLocomotionSpeedMode ReadRos2Aimdk_msgsMsgMcLocomotionSpeedMode(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsMsgMcLocomotionSpeedMode();
        value.@value = unchecked((int)reader.Unsigned(4));
        return value;
    }

    public sealed class _Ros2Aimdk_msgsMsgMcLocomotionSpeedBounds
    {
        public double @min_value = 0;
        public double @max_value = 0;

        public _Ros2Aimdk_msgsMsgMcLocomotionSpeedBounds()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsMsgMcLocomotionSpeedBoundsCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsMsgMcLocomotionSpeedBounds>
    {
        public static readonly Ros2Aimdk_msgsMsgMcLocomotionSpeedBoundsCodec Instance = new Ros2Aimdk_msgsMsgMcLocomotionSpeedBoundsCodec();

        private Ros2Aimdk_msgsMsgMcLocomotionSpeedBoundsCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/msg/McLocomotionSpeedBounds";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_9ba7b1992f315906d05b9f3850d31cdf1d5c422cbc3224a45b93c76c9368804d";
        public const int MIN_WIRE_BYTES = 16, MAX_WIRE_BYTES = 16;

        public byte[] Encode(_Ros2Aimdk_msgsMsgMcLocomotionSpeedBounds value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsMsgMcLocomotionSpeedBounds(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsMsgMcLocomotionSpeedBounds Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsMsgMcLocomotionSpeedBounds value = ReadRos2Aimdk_msgsMsgMcLocomotionSpeedBounds(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsMsgMcLocomotionSpeedBounds(_Codecs.Writer writer, _Ros2Aimdk_msgsMsgMcLocomotionSpeedBounds value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        double part0 = value.@min_value;
        writer.Float64(part0);
        double part1 = value.@max_value;
        writer.Float64(part1);
    }

    private static _Ros2Aimdk_msgsMsgMcLocomotionSpeedBounds ReadRos2Aimdk_msgsMsgMcLocomotionSpeedBounds(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsMsgMcLocomotionSpeedBounds();
        value.@min_value = reader.Float64();
        value.@max_value = reader.Float64();
        return value;
    }

    public sealed class _Ros2Aimdk_msgsMsgMcLocomotionSpeedStatus
    {
        public _Ros2Aimdk_msgsMsgMcLocomotionSpeedMode @speed_mode = new _Ros2Aimdk_msgsMsgMcLocomotionSpeedMode();
        public _Ros2Aimdk_msgsMsgMcLocomotionSpeedBounds @forward_bounds = new _Ros2Aimdk_msgsMsgMcLocomotionSpeedBounds();
        public _Ros2Aimdk_msgsMsgMcLocomotionSpeedBounds @lateral_bounds = new _Ros2Aimdk_msgsMsgMcLocomotionSpeedBounds();
        public _Ros2Aimdk_msgsMsgMcLocomotionSpeedBounds @angular_bounds = new _Ros2Aimdk_msgsMsgMcLocomotionSpeedBounds();

        public _Ros2Aimdk_msgsMsgMcLocomotionSpeedStatus()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsMsgMcLocomotionSpeedStatusCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsMsgMcLocomotionSpeedStatus>
    {
        public static readonly Ros2Aimdk_msgsMsgMcLocomotionSpeedStatusCodec Instance = new Ros2Aimdk_msgsMsgMcLocomotionSpeedStatusCodec();

        private Ros2Aimdk_msgsMsgMcLocomotionSpeedStatusCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/msg/McLocomotionSpeedStatus";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_91837c9a2783f2f2cdc09c1efc8d96a5be0bca7e43bf513a3d47162222fc8e79";
        public const int MIN_WIRE_BYTES = 52, MAX_WIRE_BYTES = 52;

        public byte[] Encode(_Ros2Aimdk_msgsMsgMcLocomotionSpeedStatus value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsMsgMcLocomotionSpeedStatus(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsMsgMcLocomotionSpeedStatus Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsMsgMcLocomotionSpeedStatus value = ReadRos2Aimdk_msgsMsgMcLocomotionSpeedStatus(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsMsgMcLocomotionSpeedStatus(_Codecs.Writer writer, _Ros2Aimdk_msgsMsgMcLocomotionSpeedStatus value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Aimdk_msgsMsgMcLocomotionSpeedMode part0 = value.@speed_mode;
        WriteRos2Aimdk_msgsMsgMcLocomotionSpeedMode(writer, part0);
        _Ros2Aimdk_msgsMsgMcLocomotionSpeedBounds part1 = value.@forward_bounds;
        WriteRos2Aimdk_msgsMsgMcLocomotionSpeedBounds(writer, part1);
        _Ros2Aimdk_msgsMsgMcLocomotionSpeedBounds part2 = value.@lateral_bounds;
        WriteRos2Aimdk_msgsMsgMcLocomotionSpeedBounds(writer, part2);
        _Ros2Aimdk_msgsMsgMcLocomotionSpeedBounds part3 = value.@angular_bounds;
        WriteRos2Aimdk_msgsMsgMcLocomotionSpeedBounds(writer, part3);
    }

    private static _Ros2Aimdk_msgsMsgMcLocomotionSpeedStatus ReadRos2Aimdk_msgsMsgMcLocomotionSpeedStatus(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsMsgMcLocomotionSpeedStatus();
        value.@speed_mode = ReadRos2Aimdk_msgsMsgMcLocomotionSpeedMode(reader);
        value.@forward_bounds = ReadRos2Aimdk_msgsMsgMcLocomotionSpeedBounds(reader);
        value.@lateral_bounds = ReadRos2Aimdk_msgsMsgMcLocomotionSpeedBounds(reader);
        value.@angular_bounds = ReadRos2Aimdk_msgsMsgMcLocomotionSpeedBounds(reader);
        return value;
    }

    public sealed class _Ros2Aimdk_msgsMsgMcCommonState
    {
        public _Ros2Aimdk_msgsMsgMessageHeader @header = new _Ros2Aimdk_msgsMsgMessageHeader();
        public _Ros2Aimdk_msgsMsgMcInputSource @input_source = new _Ros2Aimdk_msgsMsgMcInputSource();
        public _Ros2Aimdk_msgsMsgMcActionInfo @action_info = new _Ros2Aimdk_msgsMsgMcActionInfo();
        public _Ros2Aimdk_msgsMsgMcRuntimeModel @runtime_model = new _Ros2Aimdk_msgsMsgMcRuntimeModel();
        public _Ros2Aimdk_msgsMsgMcMotionStatus @motion_status = new _Ros2Aimdk_msgsMsgMcMotionStatus();
        public _Ros2Aimdk_msgsMsgMcServoStatus @servo_status = new _Ros2Aimdk_msgsMsgMcServoStatus();
        public _Ros2Aimdk_msgsMsgMcFsmState @fsm_state = new _Ros2Aimdk_msgsMsgMcFsmState();
        public _Ros2Aimdk_msgsMsgMcBodyPoseStatus @body_status = new _Ros2Aimdk_msgsMsgMcBodyPoseStatus();
        public _Ros2Aimdk_msgsMsgMcLocomotionSpeedStatus @speed_status = new _Ros2Aimdk_msgsMsgMcLocomotionSpeedStatus();

        public _Ros2Aimdk_msgsMsgMcCommonState()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsMsgMcCommonStateCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsMsgMcCommonState>
    {
        public static readonly Ros2Aimdk_msgsMsgMcCommonStateCodec Instance = new Ros2Aimdk_msgsMsgMcCommonStateCodec();

        private Ros2Aimdk_msgsMsgMcCommonStateCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/msg/McCommonState";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_ae0a72b7040926755e1b0542d34b6e928bedc20643ad5af9704ce86648c25558";
        public const int MIN_WIRE_BYTES = 186, MAX_WIRE_BYTES = 698;

        public byte[] Encode(_Ros2Aimdk_msgsMsgMcCommonState value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsMsgMcCommonState(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsMsgMcCommonState Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsMsgMcCommonState value = ReadRos2Aimdk_msgsMsgMcCommonState(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsMsgMcCommonState(_Codecs.Writer writer, _Ros2Aimdk_msgsMsgMcCommonState value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Aimdk_msgsMsgMessageHeader part0 = value.@header;
        WriteRos2Aimdk_msgsMsgMessageHeader(writer, part0);
        _Ros2Aimdk_msgsMsgMcInputSource part1 = value.@input_source;
        WriteRos2Aimdk_msgsMsgMcInputSource(writer, part1);
        _Ros2Aimdk_msgsMsgMcActionInfo part2 = value.@action_info;
        WriteRos2Aimdk_msgsMsgMcActionInfo(writer, part2);
        _Ros2Aimdk_msgsMsgMcRuntimeModel part3 = value.@runtime_model;
        WriteRos2Aimdk_msgsMsgMcRuntimeModel(writer, part3);
        _Ros2Aimdk_msgsMsgMcMotionStatus part4 = value.@motion_status;
        WriteRos2Aimdk_msgsMsgMcMotionStatus(writer, part4);
        _Ros2Aimdk_msgsMsgMcServoStatus part5 = value.@servo_status;
        WriteRos2Aimdk_msgsMsgMcServoStatus(writer, part5);
        _Ros2Aimdk_msgsMsgMcFsmState part6 = value.@fsm_state;
        WriteRos2Aimdk_msgsMsgMcFsmState(writer, part6);
        _Ros2Aimdk_msgsMsgMcBodyPoseStatus part7 = value.@body_status;
        WriteRos2Aimdk_msgsMsgMcBodyPoseStatus(writer, part7);
        _Ros2Aimdk_msgsMsgMcLocomotionSpeedStatus part8 = value.@speed_status;
        WriteRos2Aimdk_msgsMsgMcLocomotionSpeedStatus(writer, part8);
    }

    private static _Ros2Aimdk_msgsMsgMcCommonState ReadRos2Aimdk_msgsMsgMcCommonState(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsMsgMcCommonState();
        value.@header = ReadRos2Aimdk_msgsMsgMessageHeader(reader);
        value.@input_source = ReadRos2Aimdk_msgsMsgMcInputSource(reader);
        value.@action_info = ReadRos2Aimdk_msgsMsgMcActionInfo(reader);
        value.@runtime_model = ReadRos2Aimdk_msgsMsgMcRuntimeModel(reader);
        value.@motion_status = ReadRos2Aimdk_msgsMsgMcMotionStatus(reader);
        value.@servo_status = ReadRos2Aimdk_msgsMsgMcServoStatus(reader);
        value.@fsm_state = ReadRos2Aimdk_msgsMsgMcFsmState(reader);
        value.@body_status = ReadRos2Aimdk_msgsMsgMcBodyPoseStatus(reader);
        value.@speed_status = ReadRos2Aimdk_msgsMsgMcLocomotionSpeedStatus(reader);
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

    public sealed class _Ros2Geometry_msgsMsgPose2D
    {
        public double @x = 0;
        public double @y = 0;
        public double @theta = 0;

        public _Ros2Geometry_msgsMsgPose2D()
        {
        }
    }

    public sealed class Ros2Geometry_msgsMsgPose2DCodec : global::Uwvm.RosWasm.ICodec<_Ros2Geometry_msgsMsgPose2D>
    {
        public static readonly Ros2Geometry_msgsMsgPose2DCodec Instance = new Ros2Geometry_msgsMsgPose2DCodec();

        private Ros2Geometry_msgsMsgPose2DCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "geometry_msgs/msg/Pose2D";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_5926ccd43f868ca13520625e24e283abe2e6f6418dacaa136eed5951064d8bce";
        public const int MIN_WIRE_BYTES = 24, MAX_WIRE_BYTES = 24;

        public byte[] Encode(_Ros2Geometry_msgsMsgPose2D value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Geometry_msgsMsgPose2D(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Geometry_msgsMsgPose2D Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Geometry_msgsMsgPose2D value = ReadRos2Geometry_msgsMsgPose2D(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Geometry_msgsMsgPose2D(_Codecs.Writer writer, _Ros2Geometry_msgsMsgPose2D value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        double part0 = value.@x;
        writer.Float64(part0);
        double part1 = value.@y;
        writer.Float64(part1);
        double part2 = value.@theta;
        writer.Float64(part2);
    }

    private static _Ros2Geometry_msgsMsgPose2D ReadRos2Geometry_msgsMsgPose2D(_Codecs.Reader reader)
    {
        var value = new _Ros2Geometry_msgsMsgPose2D();
        value.@x = reader.Float64();
        value.@y = reader.Float64();
        value.@theta = reader.Float64();
        return value;
    }

    public sealed class _Ros2Aimdk_msgsMsgNaviPoint
    {
        public int @point_id = 0;
        public _Ros2Geometry_msgsMsgPose2D @navi_point = new _Ros2Geometry_msgsMsgPose2D();

        public _Ros2Aimdk_msgsMsgNaviPoint()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsMsgNaviPointCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsMsgNaviPoint>
    {
        public static readonly Ros2Aimdk_msgsMsgNaviPointCodec Instance = new Ros2Aimdk_msgsMsgNaviPointCodec();

        private Ros2Aimdk_msgsMsgNaviPointCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/msg/NaviPoint";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_e1613f1cc3f2e23dffba8c4b2414f5eaba7ef8909aa4d032f13f6f514484694e";
        public const int MIN_WIRE_BYTES = 28, MAX_WIRE_BYTES = 28;

        public byte[] Encode(_Ros2Aimdk_msgsMsgNaviPoint value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsMsgNaviPoint(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsMsgNaviPoint Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsMsgNaviPoint value = ReadRos2Aimdk_msgsMsgNaviPoint(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsMsgNaviPoint(_Codecs.Writer writer, _Ros2Aimdk_msgsMsgNaviPoint value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        int part0 = value.@point_id;
        writer.Unsigned(unchecked((uint)part0), 4);
        _Ros2Geometry_msgsMsgPose2D part1 = value.@navi_point;
        WriteRos2Geometry_msgsMsgPose2D(writer, part1);
    }

    private static _Ros2Aimdk_msgsMsgNaviPoint ReadRos2Aimdk_msgsMsgNaviPoint(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsMsgNaviPoint();
        value.@point_id = unchecked((int)reader.Unsigned(4));
        value.@navi_point = ReadRos2Geometry_msgsMsgPose2D(reader);
        return value;
    }

    public sealed class _Ros2Aimdk_msgsMsgPath
    {
        public int @path_id = 0;
        public _Ros2Geometry_msgsMsgPose2D[] @points = new _Ros2Geometry_msgsMsgPose2D[0];

        public _Ros2Aimdk_msgsMsgPath()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsMsgPathCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsMsgPath>
    {
        public static readonly Ros2Aimdk_msgsMsgPathCodec Instance = new Ros2Aimdk_msgsMsgPathCodec();

        private Ros2Aimdk_msgsMsgPathCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/msg/Path";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_88efeee6a105a4a88d155242fcd6f5be0866f4c0eadfc0b90243ca0eb020f27d";
        public const int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 104;

        public byte[] Encode(_Ros2Aimdk_msgsMsgPath value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsMsgPath(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsMsgPath Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsMsgPath value = ReadRos2Aimdk_msgsMsgPath(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsMsgPath(_Codecs.Writer writer, _Ros2Aimdk_msgsMsgPath value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        int part0 = value.@path_id;
        writer.Unsigned(unchecked((uint)part0), 4);
        _Ros2Geometry_msgsMsgPose2D[] part1 = value.@points;
        if(part1 == null || part1.Length > 4)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part1.Length, 4);
        for(int index = 0; index < part1.Length; ++index)
        {
            _Ros2Geometry_msgsMsgPose2D element = part1[index];
            WriteRos2Geometry_msgsMsgPose2D(writer, element);
        }
    }

    private static _Ros2Aimdk_msgsMsgPath ReadRos2Aimdk_msgsMsgPath(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsMsgPath();
        value.@path_id = unchecked((int)reader.Unsigned(4));
        value.@points = new _Ros2Geometry_msgsMsgPose2D[ReadCount(reader, 4, 24)];
        for(int index = 0; index < value.@points.Length; ++index)
            value.@points[index] = ReadRos2Geometry_msgsMsgPose2D(reader);
        return value;
    }

    public sealed class _Ros2Aimdk_msgsMsgPilotState
    {
        public string @target_name = "";
        public ulong @target_id = 0;
        public string @intro_task_name = "";
        public ulong @intro_task_id = 0;
        public string @map_name = "";
        public ulong @map_id = 0;
        public byte @pilot_state = 0;

        public _Ros2Aimdk_msgsMsgPilotState()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsMsgPilotStateCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsMsgPilotState>
    {
        public static readonly Ros2Aimdk_msgsMsgPilotStateCodec Instance = new Ros2Aimdk_msgsMsgPilotStateCodec();

        private Ros2Aimdk_msgsMsgPilotStateCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/msg/PilotState";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_8d2421a2a13d52ea4ab7af2a6a9e57c145c4b7fb10e59701fcb2f58c421fe31a";
        public const int MIN_WIRE_BYTES = 37, MAX_WIRE_BYTES = 421;

        public byte[] Encode(_Ros2Aimdk_msgsMsgPilotState value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsMsgPilotState(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsMsgPilotState Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsMsgPilotState value = ReadRos2Aimdk_msgsMsgPilotState(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsMsgPilotState(_Codecs.Writer writer, _Ros2Aimdk_msgsMsgPilotState value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        string part0 = value.@target_name;
        WriteText(writer, part0, 128);
        ulong part1 = value.@target_id;
        writer.Unsigned(part1, 8);
        string part2 = value.@intro_task_name;
        WriteText(writer, part2, 128);
        ulong part3 = value.@intro_task_id;
        writer.Unsigned(part3, 8);
        string part4 = value.@map_name;
        WriteText(writer, part4, 128);
        ulong part5 = value.@map_id;
        writer.Unsigned(part5, 8);
        byte part6 = value.@pilot_state;
        writer.Unsigned(part6, 1);
    }

    private static _Ros2Aimdk_msgsMsgPilotState ReadRos2Aimdk_msgsMsgPilotState(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsMsgPilotState();
        value.@target_name = ReadText(reader, 128);
        value.@target_id = unchecked((ulong)reader.Unsigned(8));
        value.@intro_task_name = ReadText(reader, 128);
        value.@intro_task_id = unchecked((ulong)reader.Unsigned(8));
        value.@map_name = ReadText(reader, 128);
        value.@map_id = unchecked((ulong)reader.Unsigned(8));
        value.@pilot_state = unchecked((byte)reader.Unsigned(1));
        return value;
    }

    public sealed class _Ros2Aimdk_msgsMsgPlayStateType
    {
        public byte @value = 0;

        public _Ros2Aimdk_msgsMsgPlayStateType()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsMsgPlayStateTypeCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsMsgPlayStateType>
    {
        public static readonly Ros2Aimdk_msgsMsgPlayStateTypeCodec Instance = new Ros2Aimdk_msgsMsgPlayStateTypeCodec();

        private Ros2Aimdk_msgsMsgPlayStateTypeCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/msg/PlayStateType";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_a103f60f1b75030272dea3bcf7da76ac8fdc214c3a38721fa2b09c507cc47946";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros2Aimdk_msgsMsgPlayStateType value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsMsgPlayStateType(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsMsgPlayStateType Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsMsgPlayStateType value = ReadRos2Aimdk_msgsMsgPlayStateType(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsMsgPlayStateType(_Codecs.Writer writer, _Ros2Aimdk_msgsMsgPlayStateType value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        byte part0 = value.@value;
        writer.Unsigned(part0, 1);
    }

    private static _Ros2Aimdk_msgsMsgPlayStateType ReadRos2Aimdk_msgsMsgPlayStateType(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsMsgPlayStateType();
        value.@value = unchecked((byte)reader.Unsigned(1));
        return value;
    }

    public sealed class _Ros2Aimdk_msgsMsgPlayStateChange
    {
        public string @pkg_name = "";
        public _Ros2Aimdk_msgsMsgPlayStateType @state = new _Ros2Aimdk_msgsMsgPlayStateType();

        public _Ros2Aimdk_msgsMsgPlayStateChange()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsMsgPlayStateChangeCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsMsgPlayStateChange>
    {
        public static readonly Ros2Aimdk_msgsMsgPlayStateChangeCodec Instance = new Ros2Aimdk_msgsMsgPlayStateChangeCodec();

        private Ros2Aimdk_msgsMsgPlayStateChangeCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/msg/PlayStateChange";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_62c2a232fb57ebab6a0fce42a84e12d8a25dc21e40fb5420201ef6337894f41c";
        public const int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 133;

        public byte[] Encode(_Ros2Aimdk_msgsMsgPlayStateChange value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsMsgPlayStateChange(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsMsgPlayStateChange Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsMsgPlayStateChange value = ReadRos2Aimdk_msgsMsgPlayStateChange(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsMsgPlayStateChange(_Codecs.Writer writer, _Ros2Aimdk_msgsMsgPlayStateChange value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        string part0 = value.@pkg_name;
        WriteText(writer, part0, 128);
        _Ros2Aimdk_msgsMsgPlayStateType part1 = value.@state;
        WriteRos2Aimdk_msgsMsgPlayStateType(writer, part1);
    }

    private static _Ros2Aimdk_msgsMsgPlayStateChange ReadRos2Aimdk_msgsMsgPlayStateChange(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsMsgPlayStateChange();
        value.@pkg_name = ReadText(reader, 128);
        value.@state = ReadRos2Aimdk_msgsMsgPlayStateType(reader);
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
        public const string CODEC_IDENTITY = "UWVMROS1_6e19302f3df2152dabda478d48e0506d483427f946a552d364a206fee9687507";
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
        public const string CODEC_IDENTITY = "UWVMROS1_f5c7b9646cefc4c4d7a3a2ddac3e1ebed6d6aa789c03be06d89ffdf6fd023b72";
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
        public byte @error_code = 0;

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
        public const string CODEC_IDENTITY = "UWVMROS1_859aaa26ebee477f028cd7836e64aeaaabdafbd8ea67fc4b563bc145e4a55dc8";
        public const int MIN_WIRE_BYTES = 27, MAX_WIRE_BYTES = 539;

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
        byte part8 = value.@error_code;
        writer.Unsigned(part8, 1);
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
        value.@error_code = unchecked((byte)reader.Unsigned(1));
        return value;
    }

    public sealed class _Ros2Aimdk_msgsMsgPmuLedState
    {
        public _Ros2Aimdk_msgsMsgMessageHeader @header = new _Ros2Aimdk_msgsMsgMessageHeader();
        public string @trace_id = "";
        public byte @led_strip_mode = 0;
        public byte @r = 0;
        public byte @g = 0;
        public byte @b = 0;
        public int @priority = 0;

        public _Ros2Aimdk_msgsMsgPmuLedState()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsMsgPmuLedStateCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsMsgPmuLedState>
    {
        public static readonly Ros2Aimdk_msgsMsgPmuLedStateCodec Instance = new Ros2Aimdk_msgsMsgPmuLedStateCodec();

        private Ros2Aimdk_msgsMsgPmuLedStateCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/msg/PmuLedState";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_ffd9da2c79f63f9a61a4dfcefde97cb58676f61598b76c0435f33ab23e9002dc";
        public const int MIN_WIRE_BYTES = 36, MAX_WIRE_BYTES = 292;

        public byte[] Encode(_Ros2Aimdk_msgsMsgPmuLedState value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsMsgPmuLedState(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsMsgPmuLedState Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsMsgPmuLedState value = ReadRos2Aimdk_msgsMsgPmuLedState(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsMsgPmuLedState(_Codecs.Writer writer, _Ros2Aimdk_msgsMsgPmuLedState value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Aimdk_msgsMsgMessageHeader part0 = value.@header;
        WriteRos2Aimdk_msgsMsgMessageHeader(writer, part0);
        string part1 = value.@trace_id;
        WriteText(writer, part1, 128);
        byte part2 = value.@led_strip_mode;
        writer.Unsigned(part2, 1);
        byte part3 = value.@r;
        writer.Unsigned(part3, 1);
        byte part4 = value.@g;
        writer.Unsigned(part4, 1);
        byte part5 = value.@b;
        writer.Unsigned(part5, 1);
        int part6 = value.@priority;
        writer.Unsigned(unchecked((uint)part6), 4);
    }

    private static _Ros2Aimdk_msgsMsgPmuLedState ReadRos2Aimdk_msgsMsgPmuLedState(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsMsgPmuLedState();
        value.@header = ReadRos2Aimdk_msgsMsgMessageHeader(reader);
        value.@trace_id = ReadText(reader, 128);
        value.@led_strip_mode = unchecked((byte)reader.Unsigned(1));
        value.@r = unchecked((byte)reader.Unsigned(1));
        value.@g = unchecked((byte)reader.Unsigned(1));
        value.@b = unchecked((byte)reader.Unsigned(1));
        value.@priority = unchecked((int)reader.Unsigned(4));
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
        public double @fan_speed = 0;
        public byte @fan_pecentage = 0;
        public double @pmu_temperature = 0;
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
        public const string CODEC_IDENTITY = "UWVMROS1_bb828bf3667ae8a8909a7e98b20e789d9dfc6b954fe2ab7fc3adbc306c9ebbbd";
        public const int MIN_WIRE_BYTES = 218, MAX_WIRE_BYTES = 1114;

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
        double part19 = value.@fan_speed;
        writer.Float64(part19);
        byte part20 = value.@fan_pecentage;
        writer.Unsigned(part20, 1);
        double part21 = value.@pmu_temperature;
        writer.Float64(part21);
        string part22 = value.@bms_manufacturer;
        WriteText(writer, part22, 128);
        string part23 = value.@bms_serial_number;
        WriteText(writer, part23, 128);
        string part24 = value.@bms_hardware_version;
        WriteText(writer, part24, 128);
        string part25 = value.@bms_software_version;
        WriteText(writer, part25, 128);
        uint part26 = value.@bms_status_bits;
        writer.Unsigned(part26, 4);
        ushort part27 = value.@battery_balance_line_resistance;
        writer.Unsigned(part27, 2);
        double part28 = value.@battery_pack_voltage;
        writer.Float64(part28);
        double part29 = value.@battery_current;
        writer.Float64(part29);
        double part30 = value.@battery_output_power;
        writer.Float64(part30);
        double part31 = value.@battery_temperature;
        writer.Float64(part31);
        uint part32 = value.@battery_remaining_capacity;
        writer.Unsigned(part32, 4);
        byte part33 = value.@battery_remaining_capacity_percentage;
        writer.Unsigned(part33, 1);
        ushort part34 = value.@battery_cycle_count;
        writer.Unsigned(part34, 2);
        uint part35 = value.@battery_cycle_total_capacity;
        writer.Unsigned(part35, 4);
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
        value.@fan_speed = reader.Float64();
        value.@fan_pecentage = unchecked((byte)reader.Unsigned(1));
        value.@pmu_temperature = reader.Float64();
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

    public sealed class _Ros2Aimdk_msgsMsgPncTaskRequest
    {
        public _Ros2Aimdk_msgsMsgMessageHeader @header = new _Ros2Aimdk_msgsMsgMessageHeader();
        public byte @task_type = 0;
        public byte @task_request = 0;
        public byte @pnc_mode = 0;
        public ulong @task_id = 0;
        public ulong @map_id = 0;
        public _Ros2Geometry_msgsMsgPoseStamped @target_pose = new _Ros2Geometry_msgsMsgPoseStamped();
        public _Ros2Geometry_msgsMsgPose2D[] @reference_line = new _Ros2Geometry_msgsMsgPose2D[0];
        public double @target_pose_radius = 0;
        public float @max_forward_speed = 0;
        public _Ros2Geometry_msgsMsgPose2D[] @trajectory_pos = new _Ros2Geometry_msgsMsgPose2D[0];
        public _Ros2Geometry_msgsMsgTwist[] @trajectory_vel = new _Ros2Geometry_msgsMsgTwist[0];
        public ulong @play_timestamp = 0;
        public ulong @time_duration = 0;
        public byte[] @reserve_info = new byte[64];

        public _Ros2Aimdk_msgsMsgPncTaskRequest()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsMsgPncTaskRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsMsgPncTaskRequest>
    {
        public static readonly Ros2Aimdk_msgsMsgPncTaskRequestCodec Instance = new Ros2Aimdk_msgsMsgPncTaskRequestCodec();

        private Ros2Aimdk_msgsMsgPncTaskRequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/msg/PncTaskRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_70b6f57408c6a09cc52d3ce4aeaab20322737a6c4cfddbd380e87d673050469c";
        public const int MIN_WIRE_BYTES = 215, MAX_WIRE_BYTES = 855;

        public byte[] Encode(_Ros2Aimdk_msgsMsgPncTaskRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsMsgPncTaskRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsMsgPncTaskRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsMsgPncTaskRequest value = ReadRos2Aimdk_msgsMsgPncTaskRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsMsgPncTaskRequest(_Codecs.Writer writer, _Ros2Aimdk_msgsMsgPncTaskRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Aimdk_msgsMsgMessageHeader part0 = value.@header;
        WriteRos2Aimdk_msgsMsgMessageHeader(writer, part0);
        byte part1 = value.@task_type;
        writer.Unsigned(part1, 1);
        byte part2 = value.@task_request;
        writer.Unsigned(part2, 1);
        byte part3 = value.@pnc_mode;
        writer.Unsigned(part3, 1);
        ulong part4 = value.@task_id;
        writer.Unsigned(part4, 8);
        ulong part5 = value.@map_id;
        writer.Unsigned(part5, 8);
        _Ros2Geometry_msgsMsgPoseStamped part6 = value.@target_pose;
        WriteRos2Geometry_msgsMsgPoseStamped(writer, part6);
        _Ros2Geometry_msgsMsgPose2D[] part7 = value.@reference_line;
        if(part7 == null || part7.Length > 4)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part7.Length, 4);
        for(int index = 0; index < part7.Length; ++index)
        {
            _Ros2Geometry_msgsMsgPose2D element = part7[index];
            WriteRos2Geometry_msgsMsgPose2D(writer, element);
        }
        double part8 = value.@target_pose_radius;
        writer.Float64(part8);
        float part9 = value.@max_forward_speed;
        WriteFloat32(writer, part9);
        _Ros2Geometry_msgsMsgPose2D[] part10 = value.@trajectory_pos;
        if(part10 == null || part10.Length > 4)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part10.Length, 4);
        for(int index = 0; index < part10.Length; ++index)
        {
            _Ros2Geometry_msgsMsgPose2D element = part10[index];
            WriteRos2Geometry_msgsMsgPose2D(writer, element);
        }
        _Ros2Geometry_msgsMsgTwist[] part11 = value.@trajectory_vel;
        if(part11 == null || part11.Length > 4)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part11.Length, 4);
        for(int index = 0; index < part11.Length; ++index)
        {
            _Ros2Geometry_msgsMsgTwist element = part11[index];
            WriteRos2Geometry_msgsMsgTwist(writer, element);
        }
        ulong part12 = value.@play_timestamp;
        writer.Unsigned(part12, 8);
        ulong part13 = value.@time_duration;
        writer.Unsigned(part13, 8);
        byte[] part14 = value.@reserve_info;
        if(part14 == null || part14.Length != 64)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part14.Length; ++index)
        {
            byte element = part14[index];
            writer.Unsigned(element, 1);
        }
    }

    private static _Ros2Aimdk_msgsMsgPncTaskRequest ReadRos2Aimdk_msgsMsgPncTaskRequest(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsMsgPncTaskRequest();
        value.@header = ReadRos2Aimdk_msgsMsgMessageHeader(reader);
        value.@task_type = unchecked((byte)reader.Unsigned(1));
        value.@task_request = unchecked((byte)reader.Unsigned(1));
        value.@pnc_mode = unchecked((byte)reader.Unsigned(1));
        value.@task_id = unchecked((ulong)reader.Unsigned(8));
        value.@map_id = unchecked((ulong)reader.Unsigned(8));
        value.@target_pose = ReadRos2Geometry_msgsMsgPoseStamped(reader);
        value.@reference_line = new _Ros2Geometry_msgsMsgPose2D[ReadCount(reader, 4, 24)];
        for(int index = 0; index < value.@reference_line.Length; ++index)
            value.@reference_line[index] = ReadRos2Geometry_msgsMsgPose2D(reader);
        value.@target_pose_radius = reader.Float64();
        value.@max_forward_speed = ReadFloat32(reader);
        value.@trajectory_pos = new _Ros2Geometry_msgsMsgPose2D[ReadCount(reader, 4, 24)];
        for(int index = 0; index < value.@trajectory_pos.Length; ++index)
            value.@trajectory_pos[index] = ReadRos2Geometry_msgsMsgPose2D(reader);
        value.@trajectory_vel = new _Ros2Geometry_msgsMsgTwist[ReadCount(reader, 4, 48)];
        for(int index = 0; index < value.@trajectory_vel.Length; ++index)
            value.@trajectory_vel[index] = ReadRos2Geometry_msgsMsgTwist(reader);
        value.@play_timestamp = unchecked((ulong)reader.Unsigned(8));
        value.@time_duration = unchecked((ulong)reader.Unsigned(8));
        value.@reserve_info = new byte[64];
        for(int index = 0; index < value.@reserve_info.Length; ++index)
            value.@reserve_info[index] = unchecked((byte)reader.Unsigned(1));
        return value;
    }

    public sealed class _Ros2Aimdk_msgsMsgPncTaskResponse
    {
        public _Ros2Aimdk_msgsMsgMessageHeader @header = new _Ros2Aimdk_msgsMsgMessageHeader();
        public byte @task_type = 0;
        public ulong @task_id = 0;
        public ulong @map_id = 0;
        public byte @task_status = 0;
        public byte[] @reserve_info = new byte[64];

        public _Ros2Aimdk_msgsMsgPncTaskResponse()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsMsgPncTaskResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsMsgPncTaskResponse>
    {
        public static readonly Ros2Aimdk_msgsMsgPncTaskResponseCodec Instance = new Ros2Aimdk_msgsMsgPncTaskResponseCodec();

        private Ros2Aimdk_msgsMsgPncTaskResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/msg/PncTaskResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_b79712144fee059d6b2d3fc74a86a33ca577734d8445b446a4b80db01e87243e";
        public const int MIN_WIRE_BYTES = 106, MAX_WIRE_BYTES = 234;

        public byte[] Encode(_Ros2Aimdk_msgsMsgPncTaskResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsMsgPncTaskResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsMsgPncTaskResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsMsgPncTaskResponse value = ReadRos2Aimdk_msgsMsgPncTaskResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsMsgPncTaskResponse(_Codecs.Writer writer, _Ros2Aimdk_msgsMsgPncTaskResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Aimdk_msgsMsgMessageHeader part0 = value.@header;
        WriteRos2Aimdk_msgsMsgMessageHeader(writer, part0);
        byte part1 = value.@task_type;
        writer.Unsigned(part1, 1);
        ulong part2 = value.@task_id;
        writer.Unsigned(part2, 8);
        ulong part3 = value.@map_id;
        writer.Unsigned(part3, 8);
        byte part4 = value.@task_status;
        writer.Unsigned(part4, 1);
        byte[] part5 = value.@reserve_info;
        if(part5 == null || part5.Length != 64)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part5.Length; ++index)
        {
            byte element = part5[index];
            writer.Unsigned(element, 1);
        }
    }

    private static _Ros2Aimdk_msgsMsgPncTaskResponse ReadRos2Aimdk_msgsMsgPncTaskResponse(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsMsgPncTaskResponse();
        value.@header = ReadRos2Aimdk_msgsMsgMessageHeader(reader);
        value.@task_type = unchecked((byte)reader.Unsigned(1));
        value.@task_id = unchecked((ulong)reader.Unsigned(8));
        value.@map_id = unchecked((ulong)reader.Unsigned(8));
        value.@task_status = unchecked((byte)reader.Unsigned(1));
        value.@reserve_info = new byte[64];
        for(int index = 0; index < value.@reserve_info.Length; ++index)
            value.@reserve_info[index] = unchecked((byte)reader.Unsigned(1));
        return value;
    }

    public sealed class _Ros2Aimdk_msgsMsgSigSet
    {
        public int @robot_sig = 0;
        public byte @motion_sig = 0;
        public byte @sound_sig = 0;
        public byte @led_sig = 0;
        public byte @facial_sig = 0;
        public uint @reserve = 0;
        public ulong @funcdisable_sig = 0;

        public _Ros2Aimdk_msgsMsgSigSet()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsMsgSigSetCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsMsgSigSet>
    {
        public static readonly Ros2Aimdk_msgsMsgSigSetCodec Instance = new Ros2Aimdk_msgsMsgSigSetCodec();

        private Ros2Aimdk_msgsMsgSigSetCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/msg/SigSet";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_24fc701bfd984160280c2b150c2b6accee18cead254009fb4f781341efb5b8ae";
        public const int MIN_WIRE_BYTES = 20, MAX_WIRE_BYTES = 20;

        public byte[] Encode(_Ros2Aimdk_msgsMsgSigSet value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsMsgSigSet(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsMsgSigSet Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsMsgSigSet value = ReadRos2Aimdk_msgsMsgSigSet(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsMsgSigSet(_Codecs.Writer writer, _Ros2Aimdk_msgsMsgSigSet value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        int part0 = value.@robot_sig;
        writer.Unsigned(unchecked((uint)part0), 4);
        byte part1 = value.@motion_sig;
        writer.Unsigned(part1, 1);
        byte part2 = value.@sound_sig;
        writer.Unsigned(part2, 1);
        byte part3 = value.@led_sig;
        writer.Unsigned(part3, 1);
        byte part4 = value.@facial_sig;
        writer.Unsigned(part4, 1);
        uint part5 = value.@reserve;
        writer.Unsigned(part5, 4);
        ulong part6 = value.@funcdisable_sig;
        writer.Unsigned(part6, 8);
    }

    private static _Ros2Aimdk_msgsMsgSigSet ReadRos2Aimdk_msgsMsgSigSet(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsMsgSigSet();
        value.@robot_sig = unchecked((int)reader.Unsigned(4));
        value.@motion_sig = unchecked((byte)reader.Unsigned(1));
        value.@sound_sig = unchecked((byte)reader.Unsigned(1));
        value.@led_sig = unchecked((byte)reader.Unsigned(1));
        value.@facial_sig = unchecked((byte)reader.Unsigned(1));
        value.@reserve = unchecked((uint)reader.Unsigned(4));
        value.@funcdisable_sig = unchecked((ulong)reader.Unsigned(8));
        return value;
    }

    public sealed class _Ros2Aimdk_msgsMsgPostProcSig
    {
        public ulong @timestamp = 0;
        public ulong @diag_code = 0;
        public _Ros2Aimdk_msgsMsgSigSet @sig_set = new _Ros2Aimdk_msgsMsgSigSet();

        public _Ros2Aimdk_msgsMsgPostProcSig()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsMsgPostProcSigCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsMsgPostProcSig>
    {
        public static readonly Ros2Aimdk_msgsMsgPostProcSigCodec Instance = new Ros2Aimdk_msgsMsgPostProcSigCodec();

        private Ros2Aimdk_msgsMsgPostProcSigCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/msg/PostProcSig";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_f6eceb5eb1e64d0b68e1cfac297cec324fc4aa42ea709e1c721aefe4d4feda8b";
        public const int MIN_WIRE_BYTES = 36, MAX_WIRE_BYTES = 36;

        public byte[] Encode(_Ros2Aimdk_msgsMsgPostProcSig value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsMsgPostProcSig(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsMsgPostProcSig Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsMsgPostProcSig value = ReadRos2Aimdk_msgsMsgPostProcSig(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsMsgPostProcSig(_Codecs.Writer writer, _Ros2Aimdk_msgsMsgPostProcSig value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        ulong part0 = value.@timestamp;
        writer.Unsigned(part0, 8);
        ulong part1 = value.@diag_code;
        writer.Unsigned(part1, 8);
        _Ros2Aimdk_msgsMsgSigSet part2 = value.@sig_set;
        WriteRos2Aimdk_msgsMsgSigSet(writer, part2);
    }

    private static _Ros2Aimdk_msgsMsgPostProcSig ReadRos2Aimdk_msgsMsgPostProcSig(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsMsgPostProcSig();
        value.@timestamp = unchecked((ulong)reader.Unsigned(8));
        value.@diag_code = unchecked((ulong)reader.Unsigned(8));
        value.@sig_set = ReadRos2Aimdk_msgsMsgSigSet(reader);
        return value;
    }

    public sealed class _Ros2Aimdk_msgsMsgPostProcSigArray
    {
        public _Ros2Aimdk_msgsMsgMessageHeader @header = new _Ros2Aimdk_msgsMsgMessageHeader();
        public _Ros2Aimdk_msgsMsgPostProcSig[] @post_proc_sig = new _Ros2Aimdk_msgsMsgPostProcSig[0];

        public _Ros2Aimdk_msgsMsgPostProcSigArray()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsMsgPostProcSigArrayCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsMsgPostProcSigArray>
    {
        public static readonly Ros2Aimdk_msgsMsgPostProcSigArrayCodec Instance = new Ros2Aimdk_msgsMsgPostProcSigArrayCodec();

        private Ros2Aimdk_msgsMsgPostProcSigArrayCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/msg/PostProcSigArray";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_5a2202eb697688ee1fe7530df21d462d4a0f1a4e62e986e610e970bf04f64824";
        public const int MIN_WIRE_BYTES = 28, MAX_WIRE_BYTES = 300;

        public byte[] Encode(_Ros2Aimdk_msgsMsgPostProcSigArray value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsMsgPostProcSigArray(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsMsgPostProcSigArray Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsMsgPostProcSigArray value = ReadRos2Aimdk_msgsMsgPostProcSigArray(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsMsgPostProcSigArray(_Codecs.Writer writer, _Ros2Aimdk_msgsMsgPostProcSigArray value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Aimdk_msgsMsgMessageHeader part0 = value.@header;
        WriteRos2Aimdk_msgsMsgMessageHeader(writer, part0);
        _Ros2Aimdk_msgsMsgPostProcSig[] part1 = value.@post_proc_sig;
        if(part1 == null || part1.Length > 4)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part1.Length, 4);
        for(int index = 0; index < part1.Length; ++index)
        {
            _Ros2Aimdk_msgsMsgPostProcSig element = part1[index];
            WriteRos2Aimdk_msgsMsgPostProcSig(writer, element);
        }
    }

    private static _Ros2Aimdk_msgsMsgPostProcSigArray ReadRos2Aimdk_msgsMsgPostProcSigArray(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsMsgPostProcSigArray();
        value.@header = ReadRos2Aimdk_msgsMsgMessageHeader(reader);
        value.@post_proc_sig = new _Ros2Aimdk_msgsMsgPostProcSig[ReadCount(reader, 4, 36)];
        for(int index = 0; index < value.@post_proc_sig.Length; ++index)
            value.@post_proc_sig[index] = ReadRos2Aimdk_msgsMsgPostProcSig(reader);
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

    public sealed class _Ros2Aimdk_msgsMsgQRPoint
    {
        public int @point_id = 0;
        public _Ros2Aimdk_msgsMsgQRCode @qr_code = new _Ros2Aimdk_msgsMsgQRCode();

        public _Ros2Aimdk_msgsMsgQRPoint()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsMsgQRPointCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsMsgQRPoint>
    {
        public static readonly Ros2Aimdk_msgsMsgQRPointCodec Instance = new Ros2Aimdk_msgsMsgQRPointCodec();

        private Ros2Aimdk_msgsMsgQRPointCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/msg/QRPoint";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_b158d016b9e3607a1345df207459476cf88c9817dfd3ee7560b5635c7a81863e";
        public const int MIN_WIRE_BYTES = 64, MAX_WIRE_BYTES = 64;

        public byte[] Encode(_Ros2Aimdk_msgsMsgQRPoint value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsMsgQRPoint(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsMsgQRPoint Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsMsgQRPoint value = ReadRos2Aimdk_msgsMsgQRPoint(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsMsgQRPoint(_Codecs.Writer writer, _Ros2Aimdk_msgsMsgQRPoint value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        int part0 = value.@point_id;
        writer.Unsigned(unchecked((uint)part0), 4);
        _Ros2Aimdk_msgsMsgQRCode part1 = value.@qr_code;
        WriteRos2Aimdk_msgsMsgQRCode(writer, part1);
    }

    private static _Ros2Aimdk_msgsMsgQRPoint ReadRos2Aimdk_msgsMsgQRPoint(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsMsgQRPoint();
        value.@point_id = unchecked((int)reader.Unsigned(4));
        value.@qr_code = ReadRos2Aimdk_msgsMsgQRCode(reader);
        return value;
    }

    public sealed class _Ros2Geometry_msgsMsgPoint32
    {
        public float @x = 0;
        public float @y = 0;
        public float @z = 0;

        public _Ros2Geometry_msgsMsgPoint32()
        {
        }
    }

    public sealed class Ros2Geometry_msgsMsgPoint32Codec : global::Uwvm.RosWasm.ICodec<_Ros2Geometry_msgsMsgPoint32>
    {
        public static readonly Ros2Geometry_msgsMsgPoint32Codec Instance = new Ros2Geometry_msgsMsgPoint32Codec();

        private Ros2Geometry_msgsMsgPoint32Codec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "geometry_msgs/msg/Point32";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_8ca11f8b9c00af9c95e3eebbeb6073227af8dee04b57f84e120a024e7f8539f9";
        public const int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 12;

        public byte[] Encode(_Ros2Geometry_msgsMsgPoint32 value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Geometry_msgsMsgPoint32(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Geometry_msgsMsgPoint32 Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Geometry_msgsMsgPoint32 value = ReadRos2Geometry_msgsMsgPoint32(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Geometry_msgsMsgPoint32(_Codecs.Writer writer, _Ros2Geometry_msgsMsgPoint32 value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        float part0 = value.@x;
        WriteFloat32(writer, part0);
        float part1 = value.@y;
        WriteFloat32(writer, part1);
        float part2 = value.@z;
        WriteFloat32(writer, part2);
    }

    private static _Ros2Geometry_msgsMsgPoint32 ReadRos2Geometry_msgsMsgPoint32(_Codecs.Reader reader)
    {
        var value = new _Ros2Geometry_msgsMsgPoint32();
        value.@x = ReadFloat32(reader);
        value.@y = ReadFloat32(reader);
        value.@z = ReadFloat32(reader);
        return value;
    }

    public sealed class _Ros2Geometry_msgsMsgPolygon
    {
        public _Ros2Geometry_msgsMsgPoint32[] @points = new _Ros2Geometry_msgsMsgPoint32[0];

        public _Ros2Geometry_msgsMsgPolygon()
        {
        }
    }

    public sealed class Ros2Geometry_msgsMsgPolygonCodec : global::Uwvm.RosWasm.ICodec<_Ros2Geometry_msgsMsgPolygon>
    {
        public static readonly Ros2Geometry_msgsMsgPolygonCodec Instance = new Ros2Geometry_msgsMsgPolygonCodec();

        private Ros2Geometry_msgsMsgPolygonCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "geometry_msgs/msg/Polygon";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_b5492d33b802b68eea062a74ffe7f336b1f392161b183e67c3bf24bb0a7d0aa8";
        public const int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 52;

        public byte[] Encode(_Ros2Geometry_msgsMsgPolygon value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Geometry_msgsMsgPolygon(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Geometry_msgsMsgPolygon Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Geometry_msgsMsgPolygon value = ReadRos2Geometry_msgsMsgPolygon(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Geometry_msgsMsgPolygon(_Codecs.Writer writer, _Ros2Geometry_msgsMsgPolygon value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Geometry_msgsMsgPoint32[] part0 = value.@points;
        if(part0 == null || part0.Length > 4)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part0.Length, 4);
        for(int index = 0; index < part0.Length; ++index)
        {
            _Ros2Geometry_msgsMsgPoint32 element = part0[index];
            WriteRos2Geometry_msgsMsgPoint32(writer, element);
        }
    }

    private static _Ros2Geometry_msgsMsgPolygon ReadRos2Geometry_msgsMsgPolygon(_Codecs.Reader reader)
    {
        var value = new _Ros2Geometry_msgsMsgPolygon();
        value.@points = new _Ros2Geometry_msgsMsgPoint32[ReadCount(reader, 4, 12)];
        for(int index = 0; index < value.@points.Length; ++index)
            value.@points[index] = ReadRos2Geometry_msgsMsgPoint32(reader);
        return value;
    }

    public sealed class _Ros2Aimdk_msgsMsgRegion
    {
        public byte @type = 0;
        public byte @drawing_type = 0;
        public string @name = "";
        public _Ros2Geometry_msgsMsgPolygon @polygon = new _Ros2Geometry_msgsMsgPolygon();

        public _Ros2Aimdk_msgsMsgRegion()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsMsgRegionCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsMsgRegion>
    {
        public static readonly Ros2Aimdk_msgsMsgRegionCodec Instance = new Ros2Aimdk_msgsMsgRegionCodec();

        private Ros2Aimdk_msgsMsgRegionCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/msg/Region";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_161bb9787ae2df5a45015946bc386a2c4cf310701fa4970cf447c6445c85f1ce";
        public const int MIN_WIRE_BYTES = 10, MAX_WIRE_BYTES = 186;

        public byte[] Encode(_Ros2Aimdk_msgsMsgRegion value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsMsgRegion(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsMsgRegion Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsMsgRegion value = ReadRos2Aimdk_msgsMsgRegion(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsMsgRegion(_Codecs.Writer writer, _Ros2Aimdk_msgsMsgRegion value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        byte part0 = value.@type;
        writer.Unsigned(part0, 1);
        byte part1 = value.@drawing_type;
        writer.Unsigned(part1, 1);
        string part2 = value.@name;
        WriteText(writer, part2, 128);
        _Ros2Geometry_msgsMsgPolygon part3 = value.@polygon;
        WriteRos2Geometry_msgsMsgPolygon(writer, part3);
    }

    private static _Ros2Aimdk_msgsMsgRegion ReadRos2Aimdk_msgsMsgRegion(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsMsgRegion();
        value.@type = unchecked((byte)reader.Unsigned(1));
        value.@drawing_type = unchecked((byte)reader.Unsigned(1));
        value.@name = ReadText(reader, 128);
        value.@polygon = ReadRos2Geometry_msgsMsgPolygon(reader);
        return value;
    }

    public sealed class _Ros2Aimdk_msgsMsgRobotResource
    {
        public string @resource_key = "";
        public _Ros2Aimdk_msgsMsgCurrentVersion @current_version = new _Ros2Aimdk_msgsMsgCurrentVersion();

        public _Ros2Aimdk_msgsMsgRobotResource()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsMsgRobotResourceCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsMsgRobotResource>
    {
        public static readonly Ros2Aimdk_msgsMsgRobotResourceCodec Instance = new Ros2Aimdk_msgsMsgRobotResourceCodec();

        private Ros2Aimdk_msgsMsgRobotResourceCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/msg/RobotResource";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_abc49dc6dd4cc0b0c59cd0ddb01d19897a51018752e3d9eb39aa6bcc684ad34d";
        public const int MIN_WIRE_BYTES = 24, MAX_WIRE_BYTES = 2520;

        public byte[] Encode(_Ros2Aimdk_msgsMsgRobotResource value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsMsgRobotResource(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsMsgRobotResource Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsMsgRobotResource value = ReadRos2Aimdk_msgsMsgRobotResource(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsMsgRobotResource(_Codecs.Writer writer, _Ros2Aimdk_msgsMsgRobotResource value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        string part0 = value.@resource_key;
        WriteText(writer, part0, 128);
        _Ros2Aimdk_msgsMsgCurrentVersion part1 = value.@current_version;
        WriteRos2Aimdk_msgsMsgCurrentVersion(writer, part1);
    }

    private static _Ros2Aimdk_msgsMsgRobotResource ReadRos2Aimdk_msgsMsgRobotResource(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsMsgRobotResource();
        value.@resource_key = ReadText(reader, 128);
        value.@current_version = ReadRos2Aimdk_msgsMsgCurrentVersion(reader);
        return value;
    }

    public sealed class _Ros2Aimdk_msgsMsgSlaveDevice
    {
        public string @ip = "";

        public _Ros2Aimdk_msgsMsgSlaveDevice()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsMsgSlaveDeviceCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsMsgSlaveDevice>
    {
        public static readonly Ros2Aimdk_msgsMsgSlaveDeviceCodec Instance = new Ros2Aimdk_msgsMsgSlaveDeviceCodec();

        private Ros2Aimdk_msgsMsgSlaveDeviceCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/msg/SlaveDevice";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_36af580c9887ea808824106a14966193c9a639f6825a2cb3f94cbde369bd3255";
        public const int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 132;

        public byte[] Encode(_Ros2Aimdk_msgsMsgSlaveDevice value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsMsgSlaveDevice(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsMsgSlaveDevice Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsMsgSlaveDevice value = ReadRos2Aimdk_msgsMsgSlaveDevice(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsMsgSlaveDevice(_Codecs.Writer writer, _Ros2Aimdk_msgsMsgSlaveDevice value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        string part0 = value.@ip;
        WriteText(writer, part0, 128);
    }

    private static _Ros2Aimdk_msgsMsgSlaveDevice ReadRos2Aimdk_msgsMsgSlaveDevice(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsMsgSlaveDevice();
        value.@ip = ReadText(reader, 128);
        return value;
    }

    public sealed class _Ros2Aimdk_msgsMsgSystemStatus
    {
        public byte @value = 0;

        public _Ros2Aimdk_msgsMsgSystemStatus()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsMsgSystemStatusCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsMsgSystemStatus>
    {
        public static readonly Ros2Aimdk_msgsMsgSystemStatusCodec Instance = new Ros2Aimdk_msgsMsgSystemStatusCodec();

        private Ros2Aimdk_msgsMsgSystemStatusCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/msg/SystemStatus";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_94275d3d0a1e83e4cc8e45b166b2cb111c9eccd4eabfe7410795b9c1fd69c6f1";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros2Aimdk_msgsMsgSystemStatus value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsMsgSystemStatus(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsMsgSystemStatus Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsMsgSystemStatus value = ReadRos2Aimdk_msgsMsgSystemStatus(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsMsgSystemStatus(_Codecs.Writer writer, _Ros2Aimdk_msgsMsgSystemStatus value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        byte part0 = value.@value;
        writer.Unsigned(part0, 1);
    }

    private static _Ros2Aimdk_msgsMsgSystemStatus ReadRos2Aimdk_msgsMsgSystemStatus(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsMsgSystemStatus();
        value.@value = unchecked((byte)reader.Unsigned(1));
        return value;
    }

    public sealed class _Ros2Aimdk_msgsMsgSmSystemState
    {
        public _Ros2Aimdk_msgsMsgMessageHeader @header = new _Ros2Aimdk_msgsMsgMessageHeader();
        public string @cur_state = "";
        public _Ros2Aimdk_msgsMsgSystemStatus @cur_status = new _Ros2Aimdk_msgsMsgSystemStatus();

        public _Ros2Aimdk_msgsMsgSmSystemState()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsMsgSmSystemStateCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsMsgSmSystemState>
    {
        public static readonly Ros2Aimdk_msgsMsgSmSystemStateCodec Instance = new Ros2Aimdk_msgsMsgSmSystemStateCodec();

        private Ros2Aimdk_msgsMsgSmSystemStateCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/msg/SmSystemState";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_32df2f2ac235992629e4fd98257feaac52917482d1065071a4513eaf611980ce";
        public const int MIN_WIRE_BYTES = 29, MAX_WIRE_BYTES = 285;

        public byte[] Encode(_Ros2Aimdk_msgsMsgSmSystemState value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsMsgSmSystemState(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsMsgSmSystemState Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsMsgSmSystemState value = ReadRos2Aimdk_msgsMsgSmSystemState(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsMsgSmSystemState(_Codecs.Writer writer, _Ros2Aimdk_msgsMsgSmSystemState value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Aimdk_msgsMsgMessageHeader part0 = value.@header;
        WriteRos2Aimdk_msgsMsgMessageHeader(writer, part0);
        string part1 = value.@cur_state;
        WriteText(writer, part1, 128);
        _Ros2Aimdk_msgsMsgSystemStatus part2 = value.@cur_status;
        WriteRos2Aimdk_msgsMsgSystemStatus(writer, part2);
    }

    private static _Ros2Aimdk_msgsMsgSmSystemState ReadRos2Aimdk_msgsMsgSmSystemState(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsMsgSmSystemState();
        value.@header = ReadRos2Aimdk_msgsMsgMessageHeader(reader);
        value.@cur_state = ReadText(reader, 128);
        value.@cur_status = ReadRos2Aimdk_msgsMsgSystemStatus(reader);
        return value;
    }

    public sealed class _Ros2Aimdk_msgsMsgTaskMasterState
    {
        public byte @main_state = 0;
        public byte @sub_state = 0;
        public byte @slam_state = 0;
        public ulong @loc_map_id = 0;
        public string @loc_map_name = "";
        public _Ros2Aimdk_msgsMsgFixLineIntroState @fix_line_intro_state = new _Ros2Aimdk_msgsMsgFixLineIntroState();
        public _Ros2Aimdk_msgsMsgPilotState @pilot_state = new _Ros2Aimdk_msgsMsgPilotState();
        public string @reserve_info = "";

        public _Ros2Aimdk_msgsMsgTaskMasterState()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsMsgTaskMasterStateCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsMsgTaskMasterState>
    {
        public static readonly Ros2Aimdk_msgsMsgTaskMasterStateCodec Instance = new Ros2Aimdk_msgsMsgTaskMasterStateCodec();

        private Ros2Aimdk_msgsMsgTaskMasterStateCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/msg/TaskMasterState";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_90307681af8de801b0fac5e757fb89f1d23e33efdbdf939666b884b8d260a7a4";
        public const int MIN_WIRE_BYTES = 105, MAX_WIRE_BYTES = 1129;

        public byte[] Encode(_Ros2Aimdk_msgsMsgTaskMasterState value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsMsgTaskMasterState(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsMsgTaskMasterState Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsMsgTaskMasterState value = ReadRos2Aimdk_msgsMsgTaskMasterState(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsMsgTaskMasterState(_Codecs.Writer writer, _Ros2Aimdk_msgsMsgTaskMasterState value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        byte part0 = value.@main_state;
        writer.Unsigned(part0, 1);
        byte part1 = value.@sub_state;
        writer.Unsigned(part1, 1);
        byte part2 = value.@slam_state;
        writer.Unsigned(part2, 1);
        ulong part3 = value.@loc_map_id;
        writer.Unsigned(part3, 8);
        string part4 = value.@loc_map_name;
        WriteText(writer, part4, 128);
        _Ros2Aimdk_msgsMsgFixLineIntroState part5 = value.@fix_line_intro_state;
        WriteRos2Aimdk_msgsMsgFixLineIntroState(writer, part5);
        _Ros2Aimdk_msgsMsgPilotState part6 = value.@pilot_state;
        WriteRos2Aimdk_msgsMsgPilotState(writer, part6);
        string part7 = value.@reserve_info;
        WriteText(writer, part7, 128);
    }

    private static _Ros2Aimdk_msgsMsgTaskMasterState ReadRos2Aimdk_msgsMsgTaskMasterState(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsMsgTaskMasterState();
        value.@main_state = unchecked((byte)reader.Unsigned(1));
        value.@sub_state = unchecked((byte)reader.Unsigned(1));
        value.@slam_state = unchecked((byte)reader.Unsigned(1));
        value.@loc_map_id = unchecked((ulong)reader.Unsigned(8));
        value.@loc_map_name = ReadText(reader, 128);
        value.@fix_line_intro_state = ReadRos2Aimdk_msgsMsgFixLineIntroState(reader);
        value.@pilot_state = ReadRos2Aimdk_msgsMsgPilotState(reader);
        value.@reserve_info = ReadText(reader, 128);
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

    public sealed class _Ros2Aimdk_msgsMsgUpperBodyCommandArray
    {
        public _Ros2Aimdk_msgsMsgMessageHeader @header = new _Ros2Aimdk_msgsMsgMessageHeader();
        public string @source = "";
        public byte @hand_sub_mode = 0;
        public double[] @head_pos = new double[2];
        public double[] @arm_pos = new double[14];
        public double[] @hand_pos = new double[0];

        public _Ros2Aimdk_msgsMsgUpperBodyCommandArray()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsMsgUpperBodyCommandArrayCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsMsgUpperBodyCommandArray>
    {
        public static readonly Ros2Aimdk_msgsMsgUpperBodyCommandArrayCodec Instance = new Ros2Aimdk_msgsMsgUpperBodyCommandArrayCodec();

        private Ros2Aimdk_msgsMsgUpperBodyCommandArrayCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/msg/UpperBodyCommandArray";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_7f283521eed5b5febcba3cd0b19e1948749c2898c753e8b57983ec966a4ccbe0";
        public const int MIN_WIRE_BYTES = 161, MAX_WIRE_BYTES = 545;

        public byte[] Encode(_Ros2Aimdk_msgsMsgUpperBodyCommandArray value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsMsgUpperBodyCommandArray(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsMsgUpperBodyCommandArray Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsMsgUpperBodyCommandArray value = ReadRos2Aimdk_msgsMsgUpperBodyCommandArray(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsMsgUpperBodyCommandArray(_Codecs.Writer writer, _Ros2Aimdk_msgsMsgUpperBodyCommandArray value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Aimdk_msgsMsgMessageHeader part0 = value.@header;
        WriteRos2Aimdk_msgsMsgMessageHeader(writer, part0);
        string part1 = value.@source;
        WriteText(writer, part1, 128);
        byte part2 = value.@hand_sub_mode;
        writer.Unsigned(part2, 1);
        double[] part3 = value.@head_pos;
        if(part3 == null || part3.Length != 2)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part3.Length; ++index)
        {
            double element = part3[index];
            writer.Float64(element);
        }
        double[] part4 = value.@arm_pos;
        if(part4 == null || part4.Length != 14)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part4.Length; ++index)
        {
            double element = part4[index];
            writer.Float64(element);
        }
        double[] part5 = value.@hand_pos;
        if(part5 == null || part5.Length > 16)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part5.Length, 4);
        for(int index = 0; index < part5.Length; ++index)
        {
            double element = part5[index];
            writer.Float64(element);
        }
    }

    private static _Ros2Aimdk_msgsMsgUpperBodyCommandArray ReadRos2Aimdk_msgsMsgUpperBodyCommandArray(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsMsgUpperBodyCommandArray();
        value.@header = ReadRos2Aimdk_msgsMsgMessageHeader(reader);
        value.@source = ReadText(reader, 128);
        value.@hand_sub_mode = unchecked((byte)reader.Unsigned(1));
        value.@head_pos = new double[2];
        for(int index = 0; index < value.@head_pos.Length; ++index)
            value.@head_pos[index] = reader.Float64();
        value.@arm_pos = new double[14];
        for(int index = 0; index < value.@arm_pos.Length; ++index)
            value.@arm_pos[index] = reader.Float64();
        value.@hand_pos = new double[ReadCount(reader, 16, 8)];
        for(int index = 0; index < value.@hand_pos.Length; ++index)
            value.@hand_pos[index] = reader.Float64();
        return value;
    }

    public sealed class _Ros2Aimdk_msgsSrvAbandonAudioFocus_Request
    {
        public _Ros2Aimdk_msgsMsgCommonRequest @request = new _Ros2Aimdk_msgsMsgCommonRequest();
        public _Ros2Aimdk_msgsMsgFocusRequester @focus_requester = new _Ros2Aimdk_msgsMsgFocusRequester();

        public _Ros2Aimdk_msgsSrvAbandonAudioFocus_Request()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsSrvAbandonAudioFocus_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsSrvAbandonAudioFocus_Request>
    {
        public static readonly Ros2Aimdk_msgsSrvAbandonAudioFocus_RequestCodec Instance = new Ros2Aimdk_msgsSrvAbandonAudioFocus_RequestCodec();

        private Ros2Aimdk_msgsSrvAbandonAudioFocus_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/srv/AbandonAudioFocus_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_c49f508915d7e28b09d6b4e21da757ec4457f96f7bced6861caecf00b5e68ce5";
        public const int MIN_WIRE_BYTES = 20, MAX_WIRE_BYTES = 148;

        public byte[] Encode(_Ros2Aimdk_msgsSrvAbandonAudioFocus_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsSrvAbandonAudioFocus_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsSrvAbandonAudioFocus_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsSrvAbandonAudioFocus_Request value = ReadRos2Aimdk_msgsSrvAbandonAudioFocus_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsSrvAbandonAudioFocus_Request(_Codecs.Writer writer, _Ros2Aimdk_msgsSrvAbandonAudioFocus_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Aimdk_msgsMsgCommonRequest part0 = value.@request;
        WriteRos2Aimdk_msgsMsgCommonRequest(writer, part0);
        _Ros2Aimdk_msgsMsgFocusRequester part1 = value.@focus_requester;
        WriteRos2Aimdk_msgsMsgFocusRequester(writer, part1);
    }

    private static _Ros2Aimdk_msgsSrvAbandonAudioFocus_Request ReadRos2Aimdk_msgsSrvAbandonAudioFocus_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsSrvAbandonAudioFocus_Request();
        value.@request = ReadRos2Aimdk_msgsMsgCommonRequest(reader);
        value.@focus_requester = ReadRos2Aimdk_msgsMsgFocusRequester(reader);
        return value;
    }

    public sealed class _Ros2Aimdk_msgsSrvAbandonAudioFocus_Response
    {
        public _Ros2Aimdk_msgsMsgCommonResponse @reponse = new _Ros2Aimdk_msgsMsgCommonResponse();
        public _Ros2Aimdk_msgsMsgFocusResponse @focus_response = new _Ros2Aimdk_msgsMsgFocusResponse();

        public _Ros2Aimdk_msgsSrvAbandonAudioFocus_Response()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsSrvAbandonAudioFocus_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsSrvAbandonAudioFocus_Response>
    {
        public static readonly Ros2Aimdk_msgsSrvAbandonAudioFocus_ResponseCodec Instance = new Ros2Aimdk_msgsSrvAbandonAudioFocus_ResponseCodec();

        private Ros2Aimdk_msgsSrvAbandonAudioFocus_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/srv/AbandonAudioFocus_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_6a26581d66d35c5e6d04720935a163a6f527c036cb9c774e130bce242e47f376";
        public const int MIN_WIRE_BYTES = 29, MAX_WIRE_BYTES = 285;

        public byte[] Encode(_Ros2Aimdk_msgsSrvAbandonAudioFocus_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsSrvAbandonAudioFocus_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsSrvAbandonAudioFocus_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsSrvAbandonAudioFocus_Response value = ReadRos2Aimdk_msgsSrvAbandonAudioFocus_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsSrvAbandonAudioFocus_Response(_Codecs.Writer writer, _Ros2Aimdk_msgsSrvAbandonAudioFocus_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Aimdk_msgsMsgCommonResponse part0 = value.@reponse;
        WriteRos2Aimdk_msgsMsgCommonResponse(writer, part0);
        _Ros2Aimdk_msgsMsgFocusResponse part1 = value.@focus_response;
        WriteRos2Aimdk_msgsMsgFocusResponse(writer, part1);
    }

    private static _Ros2Aimdk_msgsSrvAbandonAudioFocus_Response ReadRos2Aimdk_msgsSrvAbandonAudioFocus_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsSrvAbandonAudioFocus_Response();
        value.@reponse = ReadRos2Aimdk_msgsMsgCommonResponse(reader);
        value.@focus_response = ReadRos2Aimdk_msgsMsgFocusResponse(reader);
        return value;
    }

    public sealed class _Ros2Aimdk_msgsSrvExecuteActionResource_Request
    {
        public _Ros2Aimdk_msgsMsgCommonRequest @header = new _Ros2Aimdk_msgsMsgCommonRequest();
        public string @resource_key = "";
        public string @resource_version = "";
        public _Ros2Aimdk_msgsMsgSlaveDevice[] @slaves = new _Ros2Aimdk_msgsMsgSlaveDevice[0];
        public string @meta = "";

        public _Ros2Aimdk_msgsSrvExecuteActionResource_Request()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsSrvExecuteActionResource_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsSrvExecuteActionResource_Request>
    {
        public static readonly Ros2Aimdk_msgsSrvExecuteActionResource_RequestCodec Instance = new Ros2Aimdk_msgsSrvExecuteActionResource_RequestCodec();

        private Ros2Aimdk_msgsSrvExecuteActionResource_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/srv/ExecuteActionResource_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_4fa82b039bfd5804bf1591c04cf4c874c78a8f2b25d2a39cd55e8ce877f6ce56";
        public const int MIN_WIRE_BYTES = 24, MAX_WIRE_BYTES = 936;

        public byte[] Encode(_Ros2Aimdk_msgsSrvExecuteActionResource_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsSrvExecuteActionResource_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsSrvExecuteActionResource_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsSrvExecuteActionResource_Request value = ReadRos2Aimdk_msgsSrvExecuteActionResource_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsSrvExecuteActionResource_Request(_Codecs.Writer writer, _Ros2Aimdk_msgsSrvExecuteActionResource_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Aimdk_msgsMsgCommonRequest part0 = value.@header;
        WriteRos2Aimdk_msgsMsgCommonRequest(writer, part0);
        string part1 = value.@resource_key;
        WriteText(writer, part1, 128);
        string part2 = value.@resource_version;
        WriteText(writer, part2, 128);
        _Ros2Aimdk_msgsMsgSlaveDevice[] part3 = value.@slaves;
        if(part3 == null || part3.Length > 4)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part3.Length, 4);
        for(int index = 0; index < part3.Length; ++index)
        {
            _Ros2Aimdk_msgsMsgSlaveDevice element = part3[index];
            WriteRos2Aimdk_msgsMsgSlaveDevice(writer, element);
        }
        string part4 = value.@meta;
        WriteText(writer, part4, 128);
    }

    private static _Ros2Aimdk_msgsSrvExecuteActionResource_Request ReadRos2Aimdk_msgsSrvExecuteActionResource_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsSrvExecuteActionResource_Request();
        value.@header = ReadRos2Aimdk_msgsMsgCommonRequest(reader);
        value.@resource_key = ReadText(reader, 128);
        value.@resource_version = ReadText(reader, 128);
        value.@slaves = new _Ros2Aimdk_msgsMsgSlaveDevice[ReadCount(reader, 4, 4)];
        for(int index = 0; index < value.@slaves.Length; ++index)
            value.@slaves[index] = ReadRos2Aimdk_msgsMsgSlaveDevice(reader);
        value.@meta = ReadText(reader, 128);
        return value;
    }

    public sealed class _Ros2Aimdk_msgsSrvExecuteActionResource_Response
    {
        public _Ros2Aimdk_msgsMsgCommonResponse @header = new _Ros2Aimdk_msgsMsgCommonResponse();

        public _Ros2Aimdk_msgsSrvExecuteActionResource_Response()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsSrvExecuteActionResource_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsSrvExecuteActionResource_Response>
    {
        public static readonly Ros2Aimdk_msgsSrvExecuteActionResource_ResponseCodec Instance = new Ros2Aimdk_msgsSrvExecuteActionResource_ResponseCodec();

        private Ros2Aimdk_msgsSrvExecuteActionResource_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/srv/ExecuteActionResource_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_40e147ad6f1534415f232269043f52e6566a1023f728ad31851bbd6aa8651011";
        public const int MIN_WIRE_BYTES = 24, MAX_WIRE_BYTES = 152;

        public byte[] Encode(_Ros2Aimdk_msgsSrvExecuteActionResource_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsSrvExecuteActionResource_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsSrvExecuteActionResource_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsSrvExecuteActionResource_Response value = ReadRos2Aimdk_msgsSrvExecuteActionResource_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsSrvExecuteActionResource_Response(_Codecs.Writer writer, _Ros2Aimdk_msgsSrvExecuteActionResource_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Aimdk_msgsMsgCommonResponse part0 = value.@header;
        WriteRos2Aimdk_msgsMsgCommonResponse(writer, part0);
    }

    private static _Ros2Aimdk_msgsSrvExecuteActionResource_Response ReadRos2Aimdk_msgsSrvExecuteActionResource_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsSrvExecuteActionResource_Response();
        value.@header = ReadRos2Aimdk_msgsMsgCommonResponse(reader);
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
        public const string CODEC_IDENTITY = "UWVMROS1_7b5d2c7e0d8c1f9a7beb98289b933a2f4466c4d08e9340a816e9e65d7a8151f2";
        public const int MIN_WIRE_BYTES = 40, MAX_WIRE_BYTES = 2696;

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
        value.@head_joints = new _Ros2Aimdk_msgsMsgJointState[ReadCount(reader, 4, 30)];
        for(int index = 0; index < value.@head_joints.Length; ++index)
            value.@head_joints[index] = ReadRos2Aimdk_msgsMsgJointState(reader);
        value.@arm_joints = new _Ros2Aimdk_msgsMsgJointState[ReadCount(reader, 4, 30)];
        for(int index = 0; index < value.@arm_joints.Length; ++index)
            value.@arm_joints[index] = ReadRos2Aimdk_msgsMsgJointState(reader);
        value.@waist_joints = new _Ros2Aimdk_msgsMsgJointState[ReadCount(reader, 4, 30)];
        for(int index = 0; index < value.@waist_joints.Length; ++index)
            value.@waist_joints[index] = ReadRos2Aimdk_msgsMsgJointState(reader);
        value.@leg_joints = new _Ros2Aimdk_msgsMsgJointState[ReadCount(reader, 4, 30)];
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
        public const string CODEC_IDENTITY = "UWVMROS1_a4911dedef84b0d6702905f580cf911b4cde7b14b5beac3b516d3faca3b39726";
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

    public sealed class _Ros2Aimdk_msgsSrvGetHdsEventHistory_Request
    {
        public _Ros2Aimdk_msgsMsgRequestHeader @header = new _Ros2Aimdk_msgsMsgRequestHeader();
        public _Ros2Aimdk_msgsMsgHdsEventQuery @query = new _Ros2Aimdk_msgsMsgHdsEventQuery();

        public _Ros2Aimdk_msgsSrvGetHdsEventHistory_Request()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsSrvGetHdsEventHistory_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsSrvGetHdsEventHistory_Request>
    {
        public static readonly Ros2Aimdk_msgsSrvGetHdsEventHistory_RequestCodec Instance = new Ros2Aimdk_msgsSrvGetHdsEventHistory_RequestCodec();

        private Ros2Aimdk_msgsSrvGetHdsEventHistory_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/srv/GetHdsEventHistory_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_9a2916041770f7392e93bdb21736c5b3b218cbbd65b9533451db64efc670e7da";
        public const int MIN_WIRE_BYTES = 46, MAX_WIRE_BYTES = 4398;

        public byte[] Encode(_Ros2Aimdk_msgsSrvGetHdsEventHistory_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsSrvGetHdsEventHistory_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsSrvGetHdsEventHistory_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsSrvGetHdsEventHistory_Request value = ReadRos2Aimdk_msgsSrvGetHdsEventHistory_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsSrvGetHdsEventHistory_Request(_Codecs.Writer writer, _Ros2Aimdk_msgsSrvGetHdsEventHistory_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Aimdk_msgsMsgRequestHeader part0 = value.@header;
        WriteRos2Aimdk_msgsMsgRequestHeader(writer, part0);
        _Ros2Aimdk_msgsMsgHdsEventQuery part1 = value.@query;
        WriteRos2Aimdk_msgsMsgHdsEventQuery(writer, part1);
    }

    private static _Ros2Aimdk_msgsSrvGetHdsEventHistory_Request ReadRos2Aimdk_msgsSrvGetHdsEventHistory_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsSrvGetHdsEventHistory_Request();
        value.@header = ReadRos2Aimdk_msgsMsgRequestHeader(reader);
        value.@query = ReadRos2Aimdk_msgsMsgHdsEventQuery(reader);
        return value;
    }

    public sealed class _Ros2Aimdk_msgsSrvGetHdsEventHistory_Response
    {
        public _Ros2Aimdk_msgsMsgResponseHeader @header = new _Ros2Aimdk_msgsMsgResponseHeader();
        public _Ros2Aimdk_msgsMsgHdsEventRecord[] @records = new _Ros2Aimdk_msgsMsgHdsEventRecord[0];
        public uint @total_count = 0;
        public bool @has_more = false;

        public _Ros2Aimdk_msgsSrvGetHdsEventHistory_Response()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsSrvGetHdsEventHistory_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsSrvGetHdsEventHistory_Response>
    {
        public static readonly Ros2Aimdk_msgsSrvGetHdsEventHistory_ResponseCodec Instance = new Ros2Aimdk_msgsSrvGetHdsEventHistory_ResponseCodec();

        private Ros2Aimdk_msgsSrvGetHdsEventHistory_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/srv/GetHdsEventHistory_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_ce2d51d64e2f318ef7e8cfb294969e3e9267f9355780fd3a45acc7a001783bea";
        public const int MIN_WIRE_BYTES = 25, MAX_WIRE_BYTES = 1277;

        public byte[] Encode(_Ros2Aimdk_msgsSrvGetHdsEventHistory_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsSrvGetHdsEventHistory_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsSrvGetHdsEventHistory_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsSrvGetHdsEventHistory_Response value = ReadRos2Aimdk_msgsSrvGetHdsEventHistory_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsSrvGetHdsEventHistory_Response(_Codecs.Writer writer, _Ros2Aimdk_msgsSrvGetHdsEventHistory_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Aimdk_msgsMsgResponseHeader part0 = value.@header;
        WriteRos2Aimdk_msgsMsgResponseHeader(writer, part0);
        _Ros2Aimdk_msgsMsgHdsEventRecord[] part1 = value.@records;
        if(part1 == null || part1.Length > 4)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part1.Length, 4);
        for(int index = 0; index < part1.Length; ++index)
        {
            _Ros2Aimdk_msgsMsgHdsEventRecord element = part1[index];
            WriteRos2Aimdk_msgsMsgHdsEventRecord(writer, element);
        }
        uint part2 = value.@total_count;
        writer.Unsigned(part2, 4);
        bool part3 = value.@has_more;
        writer.Unsigned(part3 ? 1UL : 0UL, 1);
    }

    private static _Ros2Aimdk_msgsSrvGetHdsEventHistory_Response ReadRos2Aimdk_msgsSrvGetHdsEventHistory_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsSrvGetHdsEventHistory_Response();
        value.@header = ReadRos2Aimdk_msgsMsgResponseHeader(reader);
        value.@records = new _Ros2Aimdk_msgsMsgHdsEventRecord[ReadCount(reader, 4, 57)];
        for(int index = 0; index < value.@records.Length; ++index)
            value.@records[index] = ReadRos2Aimdk_msgsMsgHdsEventRecord(reader);
        value.@total_count = unchecked((uint)reader.Unsigned(4));
        value.@has_more = ReadBool(reader);
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

    public sealed class _Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Request
    {
        public _Ros2Aimdk_msgsMsgCommonRequest @request = new _Ros2Aimdk_msgsMsgCommonRequest();

        public _Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Request()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_RequestCodec :
        global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Request>
    {
        public static readonly Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_RequestCodec Instance =
            new Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_RequestCodec();

        private Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/srv/GetMcLocomotionSpeedStatus_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_3ba1d0408e9a60f37a17a790d89bb7f7da0ba8618fc5da56a8d92122989a8b3b";
        public const int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 8;

        public byte[] Encode(_Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Request value = ReadRos2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Request(_Codecs.Writer writer,
                                                                                 _Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Aimdk_msgsMsgCommonRequest part0 = value.@request;
        WriteRos2Aimdk_msgsMsgCommonRequest(writer, part0);
    }

    private static _Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Request ReadRos2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Request();
        value.@request = ReadRos2Aimdk_msgsMsgCommonRequest(reader);
        return value;
    }

    public sealed class _Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Response
    {
        public _Ros2Aimdk_msgsMsgResponseHeader @header = new _Ros2Aimdk_msgsMsgResponseHeader();
        public _Ros2Aimdk_msgsMsgMcLocomotionSpeedStatus @current_speed_status = new _Ros2Aimdk_msgsMsgMcLocomotionSpeedStatus();
        public _Ros2Aimdk_msgsMsgMcLocomotionSpeedStatus @none_speed_status = new _Ros2Aimdk_msgsMsgMcLocomotionSpeedStatus();
        public _Ros2Aimdk_msgsMsgMcLocomotionSpeedStatus @low_speed_status = new _Ros2Aimdk_msgsMsgMcLocomotionSpeedStatus();
        public _Ros2Aimdk_msgsMsgMcLocomotionSpeedStatus @medium_speed_status = new _Ros2Aimdk_msgsMsgMcLocomotionSpeedStatus();
        public _Ros2Aimdk_msgsMsgMcLocomotionSpeedStatus @high_speed_status = new _Ros2Aimdk_msgsMsgMcLocomotionSpeedStatus();
        public _Ros2Aimdk_msgsMsgMcLocomotionSpeedStatus @step_speed_status = new _Ros2Aimdk_msgsMsgMcLocomotionSpeedStatus();

        public _Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Response()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_ResponseCodec :
        global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Response>
    {
        public static readonly Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_ResponseCodec Instance =
            new Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_ResponseCodec();

        private Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/srv/GetMcLocomotionSpeedStatus_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_6b27a64e371638dc12d2a469f6dbac32d09d2ecd9d5348b96782d94204056d54";
        public const int MIN_WIRE_BYTES = 328, MAX_WIRE_BYTES = 328;

        public byte[] Encode(_Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Response value = ReadRos2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Response(_Codecs.Writer writer,
                                                                                  _Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Aimdk_msgsMsgResponseHeader part0 = value.@header;
        WriteRos2Aimdk_msgsMsgResponseHeader(writer, part0);
        _Ros2Aimdk_msgsMsgMcLocomotionSpeedStatus part1 = value.@current_speed_status;
        WriteRos2Aimdk_msgsMsgMcLocomotionSpeedStatus(writer, part1);
        _Ros2Aimdk_msgsMsgMcLocomotionSpeedStatus part2 = value.@none_speed_status;
        WriteRos2Aimdk_msgsMsgMcLocomotionSpeedStatus(writer, part2);
        _Ros2Aimdk_msgsMsgMcLocomotionSpeedStatus part3 = value.@low_speed_status;
        WriteRos2Aimdk_msgsMsgMcLocomotionSpeedStatus(writer, part3);
        _Ros2Aimdk_msgsMsgMcLocomotionSpeedStatus part4 = value.@medium_speed_status;
        WriteRos2Aimdk_msgsMsgMcLocomotionSpeedStatus(writer, part4);
        _Ros2Aimdk_msgsMsgMcLocomotionSpeedStatus part5 = value.@high_speed_status;
        WriteRos2Aimdk_msgsMsgMcLocomotionSpeedStatus(writer, part5);
        _Ros2Aimdk_msgsMsgMcLocomotionSpeedStatus part6 = value.@step_speed_status;
        WriteRos2Aimdk_msgsMsgMcLocomotionSpeedStatus(writer, part6);
    }

    private static _Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Response ReadRos2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Response();
        value.@header = ReadRos2Aimdk_msgsMsgResponseHeader(reader);
        value.@current_speed_status = ReadRos2Aimdk_msgsMsgMcLocomotionSpeedStatus(reader);
        value.@none_speed_status = ReadRos2Aimdk_msgsMsgMcLocomotionSpeedStatus(reader);
        value.@low_speed_status = ReadRos2Aimdk_msgsMsgMcLocomotionSpeedStatus(reader);
        value.@medium_speed_status = ReadRos2Aimdk_msgsMsgMcLocomotionSpeedStatus(reader);
        value.@high_speed_status = ReadRos2Aimdk_msgsMsgMcLocomotionSpeedStatus(reader);
        value.@step_speed_status = ReadRos2Aimdk_msgsMsgMcLocomotionSpeedStatus(reader);
        return value;
    }

    public sealed class _Ros2Aimdk_msgsSrvGetMcPresetMotionState_Request
    {
        public _Ros2Aimdk_msgsMsgCommonTaskRequest @request = new _Ros2Aimdk_msgsMsgCommonTaskRequest();

        public _Ros2Aimdk_msgsSrvGetMcPresetMotionState_Request()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsSrvGetMcPresetMotionState_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsSrvGetMcPresetMotionState_Request>
    {
        public static readonly Ros2Aimdk_msgsSrvGetMcPresetMotionState_RequestCodec Instance = new Ros2Aimdk_msgsSrvGetMcPresetMotionState_RequestCodec();

        private Ros2Aimdk_msgsSrvGetMcPresetMotionState_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/srv/GetMcPresetMotionState_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_7faee35b0b5a2494d668743b5f21e59bb167c553c5f4b61be97eabb8f044e095";
        public const int MIN_WIRE_BYTES = 16, MAX_WIRE_BYTES = 16;

        public byte[] Encode(_Ros2Aimdk_msgsSrvGetMcPresetMotionState_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsSrvGetMcPresetMotionState_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsSrvGetMcPresetMotionState_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsSrvGetMcPresetMotionState_Request value = ReadRos2Aimdk_msgsSrvGetMcPresetMotionState_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsSrvGetMcPresetMotionState_Request(_Codecs.Writer writer, _Ros2Aimdk_msgsSrvGetMcPresetMotionState_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Aimdk_msgsMsgCommonTaskRequest part0 = value.@request;
        WriteRos2Aimdk_msgsMsgCommonTaskRequest(writer, part0);
    }

    private static _Ros2Aimdk_msgsSrvGetMcPresetMotionState_Request ReadRos2Aimdk_msgsSrvGetMcPresetMotionState_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsSrvGetMcPresetMotionState_Request();
        value.@request = ReadRos2Aimdk_msgsMsgCommonTaskRequest(reader);
        return value;
    }

    public sealed class _Ros2Aimdk_msgsSrvGetMcPresetMotionState_Response
    {
        public _Ros2Aimdk_msgsMsgCommonTaskResponse @response = new _Ros2Aimdk_msgsMsgCommonTaskResponse();

        public _Ros2Aimdk_msgsSrvGetMcPresetMotionState_Response()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsSrvGetMcPresetMotionState_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsSrvGetMcPresetMotionState_Response>
    {
        public static readonly Ros2Aimdk_msgsSrvGetMcPresetMotionState_ResponseCodec Instance = new Ros2Aimdk_msgsSrvGetMcPresetMotionState_ResponseCodec();

        private Ros2Aimdk_msgsSrvGetMcPresetMotionState_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/srv/GetMcPresetMotionState_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_490aef5363792dc0f0148fe1fbb3e6036238341c41de104445d9d35191e76e30";
        public const int MIN_WIRE_BYTES = 28, MAX_WIRE_BYTES = 28;

        public byte[] Encode(_Ros2Aimdk_msgsSrvGetMcPresetMotionState_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsSrvGetMcPresetMotionState_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsSrvGetMcPresetMotionState_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsSrvGetMcPresetMotionState_Response value = ReadRos2Aimdk_msgsSrvGetMcPresetMotionState_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsSrvGetMcPresetMotionState_Response(_Codecs.Writer writer, _Ros2Aimdk_msgsSrvGetMcPresetMotionState_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Aimdk_msgsMsgCommonTaskResponse part0 = value.@response;
        WriteRos2Aimdk_msgsMsgCommonTaskResponse(writer, part0);
    }

    private static _Ros2Aimdk_msgsSrvGetMcPresetMotionState_Response ReadRos2Aimdk_msgsSrvGetMcPresetMotionState_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsSrvGetMcPresetMotionState_Response();
        value.@response = ReadRos2Aimdk_msgsMsgCommonTaskResponse(reader);
        return value;
    }

    public sealed class _Ros2Aimdk_msgsSrvGetMicSourceRequest_Request
    {
        public _Ros2Aimdk_msgsMsgCommonRequest @header = new _Ros2Aimdk_msgsMsgCommonRequest();

        public _Ros2Aimdk_msgsSrvGetMicSourceRequest_Request()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsSrvGetMicSourceRequest_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsSrvGetMicSourceRequest_Request>
    {
        public static readonly Ros2Aimdk_msgsSrvGetMicSourceRequest_RequestCodec Instance = new Ros2Aimdk_msgsSrvGetMicSourceRequest_RequestCodec();

        private Ros2Aimdk_msgsSrvGetMicSourceRequest_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/srv/GetMicSourceRequest_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_da81fa95ff0da422aaabb2412f11371452bac4c9b658682884b91fece94171cc";
        public const int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 8;

        public byte[] Encode(_Ros2Aimdk_msgsSrvGetMicSourceRequest_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsSrvGetMicSourceRequest_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsSrvGetMicSourceRequest_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsSrvGetMicSourceRequest_Request value = ReadRos2Aimdk_msgsSrvGetMicSourceRequest_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsSrvGetMicSourceRequest_Request(_Codecs.Writer writer, _Ros2Aimdk_msgsSrvGetMicSourceRequest_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Aimdk_msgsMsgCommonRequest part0 = value.@header;
        WriteRos2Aimdk_msgsMsgCommonRequest(writer, part0);
    }

    private static _Ros2Aimdk_msgsSrvGetMicSourceRequest_Request ReadRos2Aimdk_msgsSrvGetMicSourceRequest_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsSrvGetMicSourceRequest_Request();
        value.@header = ReadRos2Aimdk_msgsMsgCommonRequest(reader);
        return value;
    }

    public sealed class _Ros2Aimdk_msgsSrvGetMicSourceRequest_Response
    {
        public _Ros2Aimdk_msgsMsgCommonResponse @header = new _Ros2Aimdk_msgsMsgCommonResponse();
        public uint @mic_source = 0;

        public _Ros2Aimdk_msgsSrvGetMicSourceRequest_Response()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsSrvGetMicSourceRequest_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsSrvGetMicSourceRequest_Response>
    {
        public static readonly Ros2Aimdk_msgsSrvGetMicSourceRequest_ResponseCodec Instance = new Ros2Aimdk_msgsSrvGetMicSourceRequest_ResponseCodec();

        private Ros2Aimdk_msgsSrvGetMicSourceRequest_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/srv/GetMicSourceRequest_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_86637a091357add483c69aa331eb4305632f3701ff9d77dc8e00e8bc19b6f1f6";
        public const int MIN_WIRE_BYTES = 28, MAX_WIRE_BYTES = 156;

        public byte[] Encode(_Ros2Aimdk_msgsSrvGetMicSourceRequest_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsSrvGetMicSourceRequest_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsSrvGetMicSourceRequest_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsSrvGetMicSourceRequest_Response value = ReadRos2Aimdk_msgsSrvGetMicSourceRequest_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsSrvGetMicSourceRequest_Response(_Codecs.Writer writer, _Ros2Aimdk_msgsSrvGetMicSourceRequest_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Aimdk_msgsMsgCommonResponse part0 = value.@header;
        WriteRos2Aimdk_msgsMsgCommonResponse(writer, part0);
        uint part1 = value.@mic_source;
        writer.Unsigned(part1, 4);
    }

    private static _Ros2Aimdk_msgsSrvGetMicSourceRequest_Response ReadRos2Aimdk_msgsSrvGetMicSourceRequest_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsSrvGetMicSourceRequest_Response();
        value.@header = ReadRos2Aimdk_msgsMsgCommonResponse(reader);
        value.@mic_source = unchecked((uint)reader.Unsigned(4));
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

    public sealed class _Ros2Aimdk_msgsSrvGetRobotResources_Request
    {
        public _Ros2Aimdk_msgsMsgCommonRequest @header = new _Ros2Aimdk_msgsMsgCommonRequest();

        public _Ros2Aimdk_msgsSrvGetRobotResources_Request()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsSrvGetRobotResources_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsSrvGetRobotResources_Request>
    {
        public static readonly Ros2Aimdk_msgsSrvGetRobotResources_RequestCodec Instance = new Ros2Aimdk_msgsSrvGetRobotResources_RequestCodec();

        private Ros2Aimdk_msgsSrvGetRobotResources_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/srv/GetRobotResources_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_0d086d105a54d7feea306182350c962ecebe145b8f9c45ca1216a88e6aaec86b";
        public const int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 8;

        public byte[] Encode(_Ros2Aimdk_msgsSrvGetRobotResources_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsSrvGetRobotResources_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsSrvGetRobotResources_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsSrvGetRobotResources_Request value = ReadRos2Aimdk_msgsSrvGetRobotResources_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsSrvGetRobotResources_Request(_Codecs.Writer writer, _Ros2Aimdk_msgsSrvGetRobotResources_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Aimdk_msgsMsgCommonRequest part0 = value.@header;
        WriteRos2Aimdk_msgsMsgCommonRequest(writer, part0);
    }

    private static _Ros2Aimdk_msgsSrvGetRobotResources_Request ReadRos2Aimdk_msgsSrvGetRobotResources_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsSrvGetRobotResources_Request();
        value.@header = ReadRos2Aimdk_msgsMsgCommonRequest(reader);
        return value;
    }

    public sealed class _Ros2Aimdk_msgsSrvGetRobotResources_Response
    {
        public _Ros2Aimdk_msgsMsgCommonResponse @header = new _Ros2Aimdk_msgsMsgCommonResponse();
        public _Ros2Aimdk_msgsMsgRobotResource[] @robot_resources = new _Ros2Aimdk_msgsMsgRobotResource[0];

        public _Ros2Aimdk_msgsSrvGetRobotResources_Response()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsSrvGetRobotResources_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsSrvGetRobotResources_Response>
    {
        public static readonly Ros2Aimdk_msgsSrvGetRobotResources_ResponseCodec Instance = new Ros2Aimdk_msgsSrvGetRobotResources_ResponseCodec();

        private Ros2Aimdk_msgsSrvGetRobotResources_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/srv/GetRobotResources_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_ec4e3d0e6c502b60e70a3ba18f41d885e108fd4fe530ef2a9136ca0b32edda91";
        public const int MIN_WIRE_BYTES = 28, MAX_WIRE_BYTES = 10236;

        public byte[] Encode(_Ros2Aimdk_msgsSrvGetRobotResources_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsSrvGetRobotResources_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsSrvGetRobotResources_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsSrvGetRobotResources_Response value = ReadRos2Aimdk_msgsSrvGetRobotResources_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsSrvGetRobotResources_Response(_Codecs.Writer writer, _Ros2Aimdk_msgsSrvGetRobotResources_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Aimdk_msgsMsgCommonResponse part0 = value.@header;
        WriteRos2Aimdk_msgsMsgCommonResponse(writer, part0);
        _Ros2Aimdk_msgsMsgRobotResource[] part1 = value.@robot_resources;
        if(part1 == null || part1.Length > 4)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part1.Length, 4);
        for(int index = 0; index < part1.Length; ++index)
        {
            _Ros2Aimdk_msgsMsgRobotResource element = part1[index];
            WriteRos2Aimdk_msgsMsgRobotResource(writer, element);
        }
    }

    private static _Ros2Aimdk_msgsSrvGetRobotResources_Response ReadRos2Aimdk_msgsSrvGetRobotResources_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsSrvGetRobotResources_Response();
        value.@header = ReadRos2Aimdk_msgsMsgCommonResponse(reader);
        value.@robot_resources = new _Ros2Aimdk_msgsMsgRobotResource[ReadCount(reader, 4, 24)];
        for(int index = 0; index < value.@robot_resources.Length; ++index)
            value.@robot_resources[index] = ReadRos2Aimdk_msgsMsgRobotResource(reader);
        return value;
    }

    public sealed class _Ros2Aimdk_msgsSrvGetStoredMapByName_Request
    {
        public _Ros2Std_msgsMsgHeader @header = new _Ros2Std_msgsMsgHeader();
        public string @map_name = "";

        public _Ros2Aimdk_msgsSrvGetStoredMapByName_Request()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsSrvGetStoredMapByName_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsSrvGetStoredMapByName_Request>
    {
        public static readonly Ros2Aimdk_msgsSrvGetStoredMapByName_RequestCodec Instance = new Ros2Aimdk_msgsSrvGetStoredMapByName_RequestCodec();

        private Ros2Aimdk_msgsSrvGetStoredMapByName_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/srv/GetStoredMapByName_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_4c33fbe7dbfe4cb2c06345046eb36d470530ff775ae5eee9b89f69fa5ec2fbc3";
        public const int MIN_WIRE_BYTES = 16, MAX_WIRE_BYTES = 272;

        public byte[] Encode(_Ros2Aimdk_msgsSrvGetStoredMapByName_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsSrvGetStoredMapByName_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsSrvGetStoredMapByName_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsSrvGetStoredMapByName_Request value = ReadRos2Aimdk_msgsSrvGetStoredMapByName_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsSrvGetStoredMapByName_Request(_Codecs.Writer writer, _Ros2Aimdk_msgsSrvGetStoredMapByName_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Std_msgsMsgHeader part0 = value.@header;
        WriteRos2Std_msgsMsgHeader(writer, part0);
        string part1 = value.@map_name;
        WriteText(writer, part1, 128);
    }

    private static _Ros2Aimdk_msgsSrvGetStoredMapByName_Request ReadRos2Aimdk_msgsSrvGetStoredMapByName_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsSrvGetStoredMapByName_Request();
        value.@header = ReadRos2Std_msgsMsgHeader(reader);
        value.@map_name = ReadText(reader, 128);
        return value;
    }

    public sealed class _Ros2Nav_msgsMsgMapMetaData
    {
        public _Ros2Builtin_interfacesMsgTime @map_load_time = new _Ros2Builtin_interfacesMsgTime();
        public float @resolution = 0;
        public uint @width = 0;
        public uint @height = 0;
        public _Ros2Geometry_msgsMsgPose @origin = new _Ros2Geometry_msgsMsgPose();

        public _Ros2Nav_msgsMsgMapMetaData()
        {
        }
    }

    public sealed class Ros2Nav_msgsMsgMapMetaDataCodec : global::Uwvm.RosWasm.ICodec<_Ros2Nav_msgsMsgMapMetaData>
    {
        public static readonly Ros2Nav_msgsMsgMapMetaDataCodec Instance = new Ros2Nav_msgsMsgMapMetaDataCodec();

        private Ros2Nav_msgsMsgMapMetaDataCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "nav_msgs/msg/MapMetaData";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_494874ea5dbbb03876e0405f6d06b5d7cc5b1727e61dcb8ff9e449735b800009";
        public const int MIN_WIRE_BYTES = 76, MAX_WIRE_BYTES = 76;

        public byte[] Encode(_Ros2Nav_msgsMsgMapMetaData value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Nav_msgsMsgMapMetaData(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Nav_msgsMsgMapMetaData Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Nav_msgsMsgMapMetaData value = ReadRos2Nav_msgsMsgMapMetaData(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Nav_msgsMsgMapMetaData(_Codecs.Writer writer, _Ros2Nav_msgsMsgMapMetaData value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Builtin_interfacesMsgTime part0 = value.@map_load_time;
        WriteRos2Builtin_interfacesMsgTime(writer, part0);
        float part1 = value.@resolution;
        WriteFloat32(writer, part1);
        uint part2 = value.@width;
        writer.Unsigned(part2, 4);
        uint part3 = value.@height;
        writer.Unsigned(part3, 4);
        _Ros2Geometry_msgsMsgPose part4 = value.@origin;
        WriteRos2Geometry_msgsMsgPose(writer, part4);
    }

    private static _Ros2Nav_msgsMsgMapMetaData ReadRos2Nav_msgsMsgMapMetaData(_Codecs.Reader reader)
    {
        var value = new _Ros2Nav_msgsMsgMapMetaData();
        value.@map_load_time = ReadRos2Builtin_interfacesMsgTime(reader);
        value.@resolution = ReadFloat32(reader);
        value.@width = unchecked((uint)reader.Unsigned(4));
        value.@height = unchecked((uint)reader.Unsigned(4));
        value.@origin = ReadRos2Geometry_msgsMsgPose(reader);
        return value;
    }

    public sealed class _Ros2Aimdk_msgsSrvGetStoredMapByName_Response
    {
        public ulong @code = 0;
        public _Ros2Std_msgsMsgHeader @header = new _Ros2Std_msgsMsgHeader();
        public _Ros2Nav_msgsMsgMapMetaData @map_info = new _Ros2Nav_msgsMsgMapMetaData();
        public ulong @map_version = 0;
        public string @map_path = "";
        public sbyte[] @data = new sbyte[0];
        public _Ros2Aimdk_msgsMsgNaviPoint[] @navi_points = new _Ros2Aimdk_msgsMsgNaviPoint[0];
        public _Ros2Aimdk_msgsMsgQRPoint[] @qr_points = new _Ros2Aimdk_msgsMsgQRPoint[0];
        public _Ros2Aimdk_msgsMsgHRPoint[] @hr_points = new _Ros2Aimdk_msgsMsgHRPoint[0];
        public _Ros2Aimdk_msgsMsgPath[] @paths = new _Ros2Aimdk_msgsMsgPath[0];
        public _Ros2Aimdk_msgsMsgRegion[] @regions = new _Ros2Aimdk_msgsMsgRegion[0];
        public ulong @map_id = 0;

        public _Ros2Aimdk_msgsSrvGetStoredMapByName_Response()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsSrvGetStoredMapByName_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsSrvGetStoredMapByName_Response>
    {
        public static readonly Ros2Aimdk_msgsSrvGetStoredMapByName_ResponseCodec Instance = new Ros2Aimdk_msgsSrvGetStoredMapByName_ResponseCodec();

        private Ros2Aimdk_msgsSrvGetStoredMapByName_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/srv/GetStoredMapByName_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_66ba1fb25a02dc55b4c5f46bdb5e090d134ea5fa9ff2a47f4934b0af382c61fb";
        public const int MIN_WIRE_BYTES = 140, MAX_WIRE_BYTES = 3400;

        public byte[] Encode(_Ros2Aimdk_msgsSrvGetStoredMapByName_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsSrvGetStoredMapByName_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsSrvGetStoredMapByName_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsSrvGetStoredMapByName_Response value = ReadRos2Aimdk_msgsSrvGetStoredMapByName_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsSrvGetStoredMapByName_Response(_Codecs.Writer writer, _Ros2Aimdk_msgsSrvGetStoredMapByName_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        ulong part0 = value.@code;
        writer.Unsigned(part0, 8);
        _Ros2Std_msgsMsgHeader part1 = value.@header;
        WriteRos2Std_msgsMsgHeader(writer, part1);
        _Ros2Nav_msgsMsgMapMetaData part2 = value.@map_info;
        WriteRos2Nav_msgsMsgMapMetaData(writer, part2);
        ulong part3 = value.@map_version;
        writer.Unsigned(part3, 8);
        string part4 = value.@map_path;
        WriteText(writer, part4, 128);
        sbyte[] part5 = value.@data;
        if(part5 == null || part5.Length > 256)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part5.Length, 4);
        for(int index = 0; index < part5.Length; ++index)
        {
            sbyte element = part5[index];
            writer.Unsigned(unchecked((byte)element), 1);
        }
        _Ros2Aimdk_msgsMsgNaviPoint[] part6 = value.@navi_points;
        if(part6 == null || part6.Length > 4)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part6.Length, 4);
        for(int index = 0; index < part6.Length; ++index)
        {
            _Ros2Aimdk_msgsMsgNaviPoint element = part6[index];
            WriteRos2Aimdk_msgsMsgNaviPoint(writer, element);
        }
        _Ros2Aimdk_msgsMsgQRPoint[] part7 = value.@qr_points;
        if(part7 == null || part7.Length > 4)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part7.Length, 4);
        for(int index = 0; index < part7.Length; ++index)
        {
            _Ros2Aimdk_msgsMsgQRPoint element = part7[index];
            WriteRos2Aimdk_msgsMsgQRPoint(writer, element);
        }
        _Ros2Aimdk_msgsMsgHRPoint[] part8 = value.@hr_points;
        if(part8 == null || part8.Length > 4)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part8.Length, 4);
        for(int index = 0; index < part8.Length; ++index)
        {
            _Ros2Aimdk_msgsMsgHRPoint element = part8[index];
            WriteRos2Aimdk_msgsMsgHRPoint(writer, element);
        }
        _Ros2Aimdk_msgsMsgPath[] part9 = value.@paths;
        if(part9 == null || part9.Length > 4)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part9.Length, 4);
        for(int index = 0; index < part9.Length; ++index)
        {
            _Ros2Aimdk_msgsMsgPath element = part9[index];
            WriteRos2Aimdk_msgsMsgPath(writer, element);
        }
        _Ros2Aimdk_msgsMsgRegion[] part10 = value.@regions;
        if(part10 == null || part10.Length > 4)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part10.Length, 4);
        for(int index = 0; index < part10.Length; ++index)
        {
            _Ros2Aimdk_msgsMsgRegion element = part10[index];
            WriteRos2Aimdk_msgsMsgRegion(writer, element);
        }
        ulong part11 = value.@map_id;
        writer.Unsigned(part11, 8);
    }

    private static _Ros2Aimdk_msgsSrvGetStoredMapByName_Response ReadRos2Aimdk_msgsSrvGetStoredMapByName_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsSrvGetStoredMapByName_Response();
        value.@code = unchecked((ulong)reader.Unsigned(8));
        value.@header = ReadRos2Std_msgsMsgHeader(reader);
        value.@map_info = ReadRos2Nav_msgsMsgMapMetaData(reader);
        value.@map_version = unchecked((ulong)reader.Unsigned(8));
        value.@map_path = ReadText(reader, 128);
        value.@data = new sbyte[ReadCount(reader, 256, 1)];
        for(int index = 0; index < value.@data.Length; ++index)
            value.@data[index] = unchecked((sbyte)reader.Unsigned(1));
        value.@navi_points = new _Ros2Aimdk_msgsMsgNaviPoint[ReadCount(reader, 4, 28)];
        for(int index = 0; index < value.@navi_points.Length; ++index)
            value.@navi_points[index] = ReadRos2Aimdk_msgsMsgNaviPoint(reader);
        value.@qr_points = new _Ros2Aimdk_msgsMsgQRPoint[ReadCount(reader, 4, 64)];
        for(int index = 0; index < value.@qr_points.Length; ++index)
            value.@qr_points[index] = ReadRos2Aimdk_msgsMsgQRPoint(reader);
        value.@hr_points = new _Ros2Aimdk_msgsMsgHRPoint[ReadCount(reader, 4, 65)];
        for(int index = 0; index < value.@hr_points.Length; ++index)
            value.@hr_points[index] = ReadRos2Aimdk_msgsMsgHRPoint(reader);
        value.@paths = new _Ros2Aimdk_msgsMsgPath[ReadCount(reader, 4, 8)];
        for(int index = 0; index < value.@paths.Length; ++index)
            value.@paths[index] = ReadRos2Aimdk_msgsMsgPath(reader);
        value.@regions = new _Ros2Aimdk_msgsMsgRegion[ReadCount(reader, 4, 10)];
        for(int index = 0; index < value.@regions.Length; ++index)
            value.@regions[index] = ReadRos2Aimdk_msgsMsgRegion(reader);
        value.@map_id = unchecked((ulong)reader.Unsigned(8));
        return value;
    }

    public sealed class _Ros2Aimdk_msgsSrvGetSystemState_Request
    {
        public _Ros2Aimdk_msgsMsgCommonRequest @header = new _Ros2Aimdk_msgsMsgCommonRequest();

        public _Ros2Aimdk_msgsSrvGetSystemState_Request()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsSrvGetSystemState_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsSrvGetSystemState_Request>
    {
        public static readonly Ros2Aimdk_msgsSrvGetSystemState_RequestCodec Instance = new Ros2Aimdk_msgsSrvGetSystemState_RequestCodec();

        private Ros2Aimdk_msgsSrvGetSystemState_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/srv/GetSystemState_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_abc62c31fea241d08d99a5a726199b29b995c0cadb688e5aa480ab70d173bf1f";
        public const int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 8;

        public byte[] Encode(_Ros2Aimdk_msgsSrvGetSystemState_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsSrvGetSystemState_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsSrvGetSystemState_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsSrvGetSystemState_Request value = ReadRos2Aimdk_msgsSrvGetSystemState_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsSrvGetSystemState_Request(_Codecs.Writer writer, _Ros2Aimdk_msgsSrvGetSystemState_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Aimdk_msgsMsgCommonRequest part0 = value.@header;
        WriteRos2Aimdk_msgsMsgCommonRequest(writer, part0);
    }

    private static _Ros2Aimdk_msgsSrvGetSystemState_Request ReadRos2Aimdk_msgsSrvGetSystemState_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsSrvGetSystemState_Request();
        value.@header = ReadRos2Aimdk_msgsMsgCommonRequest(reader);
        return value;
    }

    public sealed class _Ros2Aimdk_msgsSrvGetSystemState_Response
    {
        public _Ros2Aimdk_msgsMsgCommonResponse @header = new _Ros2Aimdk_msgsMsgCommonResponse();
        public string @cur_state = "";
        public _Ros2Aimdk_msgsMsgSystemStatus @curr_status = new _Ros2Aimdk_msgsMsgSystemStatus();

        public _Ros2Aimdk_msgsSrvGetSystemState_Response()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsSrvGetSystemState_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsSrvGetSystemState_Response>
    {
        public static readonly Ros2Aimdk_msgsSrvGetSystemState_ResponseCodec Instance = new Ros2Aimdk_msgsSrvGetSystemState_ResponseCodec();

        private Ros2Aimdk_msgsSrvGetSystemState_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/srv/GetSystemState_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_8ea41f1383183b566d3c4457bee27191c9ac986a7c42e0b98aab05ab500c9039";
        public const int MIN_WIRE_BYTES = 29, MAX_WIRE_BYTES = 285;

        public byte[] Encode(_Ros2Aimdk_msgsSrvGetSystemState_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsSrvGetSystemState_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsSrvGetSystemState_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsSrvGetSystemState_Response value = ReadRos2Aimdk_msgsSrvGetSystemState_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsSrvGetSystemState_Response(_Codecs.Writer writer, _Ros2Aimdk_msgsSrvGetSystemState_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Aimdk_msgsMsgCommonResponse part0 = value.@header;
        WriteRos2Aimdk_msgsMsgCommonResponse(writer, part0);
        string part1 = value.@cur_state;
        WriteText(writer, part1, 128);
        _Ros2Aimdk_msgsMsgSystemStatus part2 = value.@curr_status;
        WriteRos2Aimdk_msgsMsgSystemStatus(writer, part2);
    }

    private static _Ros2Aimdk_msgsSrvGetSystemState_Response ReadRos2Aimdk_msgsSrvGetSystemState_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsSrvGetSystemState_Response();
        value.@header = ReadRos2Aimdk_msgsMsgCommonResponse(reader);
        value.@cur_state = ReadText(reader, 128);
        value.@curr_status = ReadRos2Aimdk_msgsMsgSystemStatus(reader);
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

    public sealed class _Ros2Aimdk_msgsSrvGroupControlTimeSync_Request
    {
        public _Ros2Aimdk_msgsMsgCommonRequest @header = new _Ros2Aimdk_msgsMsgCommonRequest();
        public _Ros2Aimdk_msgsMsgSlaveDevice[] @slaves = new _Ros2Aimdk_msgsMsgSlaveDevice[0];

        public _Ros2Aimdk_msgsSrvGroupControlTimeSync_Request()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsSrvGroupControlTimeSync_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsSrvGroupControlTimeSync_Request>
    {
        public static readonly Ros2Aimdk_msgsSrvGroupControlTimeSync_RequestCodec Instance = new Ros2Aimdk_msgsSrvGroupControlTimeSync_RequestCodec();

        private Ros2Aimdk_msgsSrvGroupControlTimeSync_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/srv/GroupControlTimeSync_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_00f371868d2cf78c68a9824a418f7e3376c959b1f600ee1906b75ea7c6eafedd";
        public const int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 540;

        public byte[] Encode(_Ros2Aimdk_msgsSrvGroupControlTimeSync_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsSrvGroupControlTimeSync_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsSrvGroupControlTimeSync_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsSrvGroupControlTimeSync_Request value = ReadRos2Aimdk_msgsSrvGroupControlTimeSync_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsSrvGroupControlTimeSync_Request(_Codecs.Writer writer, _Ros2Aimdk_msgsSrvGroupControlTimeSync_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Aimdk_msgsMsgCommonRequest part0 = value.@header;
        WriteRos2Aimdk_msgsMsgCommonRequest(writer, part0);
        _Ros2Aimdk_msgsMsgSlaveDevice[] part1 = value.@slaves;
        if(part1 == null || part1.Length > 4)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part1.Length, 4);
        for(int index = 0; index < part1.Length; ++index)
        {
            _Ros2Aimdk_msgsMsgSlaveDevice element = part1[index];
            WriteRos2Aimdk_msgsMsgSlaveDevice(writer, element);
        }
    }

    private static _Ros2Aimdk_msgsSrvGroupControlTimeSync_Request ReadRos2Aimdk_msgsSrvGroupControlTimeSync_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsSrvGroupControlTimeSync_Request();
        value.@header = ReadRos2Aimdk_msgsMsgCommonRequest(reader);
        value.@slaves = new _Ros2Aimdk_msgsMsgSlaveDevice[ReadCount(reader, 4, 4)];
        for(int index = 0; index < value.@slaves.Length; ++index)
            value.@slaves[index] = ReadRos2Aimdk_msgsMsgSlaveDevice(reader);
        return value;
    }

    public sealed class _Ros2Aimdk_msgsSrvGroupControlTimeSync_Response
    {
        public _Ros2Aimdk_msgsMsgCommonResponse @header = new _Ros2Aimdk_msgsMsgCommonResponse();
        public int @error_code = 0;
        public string @error_msg = "";

        public _Ros2Aimdk_msgsSrvGroupControlTimeSync_Response()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsSrvGroupControlTimeSync_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsSrvGroupControlTimeSync_Response>
    {
        public static readonly Ros2Aimdk_msgsSrvGroupControlTimeSync_ResponseCodec Instance = new Ros2Aimdk_msgsSrvGroupControlTimeSync_ResponseCodec();

        private Ros2Aimdk_msgsSrvGroupControlTimeSync_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/srv/GroupControlTimeSync_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_16bf8f1d44dcecd1263dcd1b48385fe079fa29893a03e5778797d24e361695ec";
        public const int MIN_WIRE_BYTES = 32, MAX_WIRE_BYTES = 288;

        public byte[] Encode(_Ros2Aimdk_msgsSrvGroupControlTimeSync_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsSrvGroupControlTimeSync_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsSrvGroupControlTimeSync_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsSrvGroupControlTimeSync_Response value = ReadRos2Aimdk_msgsSrvGroupControlTimeSync_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsSrvGroupControlTimeSync_Response(_Codecs.Writer writer, _Ros2Aimdk_msgsSrvGroupControlTimeSync_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Aimdk_msgsMsgCommonResponse part0 = value.@header;
        WriteRos2Aimdk_msgsMsgCommonResponse(writer, part0);
        int part1 = value.@error_code;
        writer.Unsigned(unchecked((uint)part1), 4);
        string part2 = value.@error_msg;
        WriteText(writer, part2, 128);
    }

    private static _Ros2Aimdk_msgsSrvGroupControlTimeSync_Response ReadRos2Aimdk_msgsSrvGroupControlTimeSync_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsSrvGroupControlTimeSync_Response();
        value.@header = ReadRos2Aimdk_msgsMsgCommonResponse(reader);
        value.@error_code = unchecked((int)reader.Unsigned(4));
        value.@error_msg = ReadText(reader, 128);
        return value;
    }

    public sealed class _Ros2Aimdk_msgsSrvMigrateSystemState_Request
    {
        public _Ros2Aimdk_msgsMsgCommonRequest @header = new _Ros2Aimdk_msgsMsgCommonRequest();
        public string @state = "";

        public _Ros2Aimdk_msgsSrvMigrateSystemState_Request()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsSrvMigrateSystemState_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsSrvMigrateSystemState_Request>
    {
        public static readonly Ros2Aimdk_msgsSrvMigrateSystemState_RequestCodec Instance = new Ros2Aimdk_msgsSrvMigrateSystemState_RequestCodec();

        private Ros2Aimdk_msgsSrvMigrateSystemState_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/srv/MigrateSystemState_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_02131f85cee3462c507bef0c8f54e75adbb1c8318551cfaef8efc59d693a415b";
        public const int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 140;

        public byte[] Encode(_Ros2Aimdk_msgsSrvMigrateSystemState_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsSrvMigrateSystemState_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsSrvMigrateSystemState_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsSrvMigrateSystemState_Request value = ReadRos2Aimdk_msgsSrvMigrateSystemState_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsSrvMigrateSystemState_Request(_Codecs.Writer writer, _Ros2Aimdk_msgsSrvMigrateSystemState_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Aimdk_msgsMsgCommonRequest part0 = value.@header;
        WriteRos2Aimdk_msgsMsgCommonRequest(writer, part0);
        string part1 = value.@state;
        WriteText(writer, part1, 128);
    }

    private static _Ros2Aimdk_msgsSrvMigrateSystemState_Request ReadRos2Aimdk_msgsSrvMigrateSystemState_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsSrvMigrateSystemState_Request();
        value.@header = ReadRos2Aimdk_msgsMsgCommonRequest(reader);
        value.@state = ReadText(reader, 128);
        return value;
    }

    public sealed class _Ros2Aimdk_msgsSrvMigrateSystemState_Response
    {
        public _Ros2Aimdk_msgsMsgCommonResponse @header = new _Ros2Aimdk_msgsMsgCommonResponse();

        public _Ros2Aimdk_msgsSrvMigrateSystemState_Response()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsSrvMigrateSystemState_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsSrvMigrateSystemState_Response>
    {
        public static readonly Ros2Aimdk_msgsSrvMigrateSystemState_ResponseCodec Instance = new Ros2Aimdk_msgsSrvMigrateSystemState_ResponseCodec();

        private Ros2Aimdk_msgsSrvMigrateSystemState_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/srv/MigrateSystemState_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_7d4901fe8d9ab86c9f42b643604809a73e07ea77877b955764b4311d6f585802";
        public const int MIN_WIRE_BYTES = 24, MAX_WIRE_BYTES = 152;

        public byte[] Encode(_Ros2Aimdk_msgsSrvMigrateSystemState_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsSrvMigrateSystemState_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsSrvMigrateSystemState_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsSrvMigrateSystemState_Response value = ReadRos2Aimdk_msgsSrvMigrateSystemState_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsSrvMigrateSystemState_Response(_Codecs.Writer writer, _Ros2Aimdk_msgsSrvMigrateSystemState_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Aimdk_msgsMsgCommonResponse part0 = value.@header;
        WriteRos2Aimdk_msgsMsgCommonResponse(writer, part0);
    }

    private static _Ros2Aimdk_msgsSrvMigrateSystemState_Response ReadRos2Aimdk_msgsSrvMigrateSystemState_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsSrvMigrateSystemState_Response();
        value.@header = ReadRos2Aimdk_msgsMsgCommonResponse(reader);
        return value;
    }

    public sealed class _Ros2Aimdk_msgsSrvPlayAudioFile_Request
    {
        public _Ros2Aimdk_msgsMsgCommonRequest @request = new _Ros2Aimdk_msgsMsgCommonRequest();
        public _Ros2Aimdk_msgsMsgAudioFile @file = new _Ros2Aimdk_msgsMsgAudioFile();
        public _Ros2Builtin_interfacesMsgTime @play_stamps = new _Ros2Builtin_interfacesMsgTime();

        public _Ros2Aimdk_msgsSrvPlayAudioFile_Request()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsSrvPlayAudioFile_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsSrvPlayAudioFile_Request>
    {
        public static readonly Ros2Aimdk_msgsSrvPlayAudioFile_RequestCodec Instance = new Ros2Aimdk_msgsSrvPlayAudioFile_RequestCodec();

        private Ros2Aimdk_msgsSrvPlayAudioFile_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/srv/PlayAudioFile_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_710a4db7c9c3792601fd958615acbd3e413ed1b1ca98aec0a7b04aff79c59cb1";
        public const int MIN_WIRE_BYTES = 53, MAX_WIRE_BYTES = 693;

        public byte[] Encode(_Ros2Aimdk_msgsSrvPlayAudioFile_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsSrvPlayAudioFile_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsSrvPlayAudioFile_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsSrvPlayAudioFile_Request value = ReadRos2Aimdk_msgsSrvPlayAudioFile_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsSrvPlayAudioFile_Request(_Codecs.Writer writer, _Ros2Aimdk_msgsSrvPlayAudioFile_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Aimdk_msgsMsgCommonRequest part0 = value.@request;
        WriteRos2Aimdk_msgsMsgCommonRequest(writer, part0);
        _Ros2Aimdk_msgsMsgAudioFile part1 = value.@file;
        WriteRos2Aimdk_msgsMsgAudioFile(writer, part1);
        _Ros2Builtin_interfacesMsgTime part2 = value.@play_stamps;
        WriteRos2Builtin_interfacesMsgTime(writer, part2);
    }

    private static _Ros2Aimdk_msgsSrvPlayAudioFile_Request ReadRos2Aimdk_msgsSrvPlayAudioFile_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsSrvPlayAudioFile_Request();
        value.@request = ReadRos2Aimdk_msgsMsgCommonRequest(reader);
        value.@file = ReadRos2Aimdk_msgsMsgAudioFile(reader);
        value.@play_stamps = ReadRos2Builtin_interfacesMsgTime(reader);
        return value;
    }

    public sealed class _Ros2Aimdk_msgsSrvPlayAudioFile_Response
    {
        public _Ros2Aimdk_msgsMsgCommonResponse @reponse = new _Ros2Aimdk_msgsMsgCommonResponse();

        public _Ros2Aimdk_msgsSrvPlayAudioFile_Response()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsSrvPlayAudioFile_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsSrvPlayAudioFile_Response>
    {
        public static readonly Ros2Aimdk_msgsSrvPlayAudioFile_ResponseCodec Instance = new Ros2Aimdk_msgsSrvPlayAudioFile_ResponseCodec();

        private Ros2Aimdk_msgsSrvPlayAudioFile_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/srv/PlayAudioFile_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_988d360e84f041bc5a53a6d085709ba31e7e3836115e40d890534f44e62b0b85";
        public const int MIN_WIRE_BYTES = 24, MAX_WIRE_BYTES = 152;

        public byte[] Encode(_Ros2Aimdk_msgsSrvPlayAudioFile_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsSrvPlayAudioFile_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsSrvPlayAudioFile_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsSrvPlayAudioFile_Response value = ReadRos2Aimdk_msgsSrvPlayAudioFile_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsSrvPlayAudioFile_Response(_Codecs.Writer writer, _Ros2Aimdk_msgsSrvPlayAudioFile_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Aimdk_msgsMsgCommonResponse part0 = value.@reponse;
        WriteRos2Aimdk_msgsMsgCommonResponse(writer, part0);
    }

    private static _Ros2Aimdk_msgsSrvPlayAudioFile_Response ReadRos2Aimdk_msgsSrvPlayAudioFile_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsSrvPlayAudioFile_Response();
        value.@reponse = ReadRos2Aimdk_msgsMsgCommonResponse(reader);
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

    public sealed class _Ros2Aimdk_msgsSrvPlayEmojiGroup_Request
    {
        public _Ros2Aimdk_msgsMsgCommonRequest @header = new _Ros2Aimdk_msgsMsgCommonRequest();
        public byte[] @emotion_ids = new byte[0];
        public byte @mode = 0;
        public int @priority = 0;

        public _Ros2Aimdk_msgsSrvPlayEmojiGroup_Request()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsSrvPlayEmojiGroup_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsSrvPlayEmojiGroup_Request>
    {
        public static readonly Ros2Aimdk_msgsSrvPlayEmojiGroup_RequestCodec Instance = new Ros2Aimdk_msgsSrvPlayEmojiGroup_RequestCodec();

        private Ros2Aimdk_msgsSrvPlayEmojiGroup_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/srv/PlayEmojiGroup_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_c696b5327d31945737301b57784797762832e143c4ccb89fba9228bc47402223";
        public const int MIN_WIRE_BYTES = 17, MAX_WIRE_BYTES = 273;

        public byte[] Encode(_Ros2Aimdk_msgsSrvPlayEmojiGroup_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsSrvPlayEmojiGroup_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsSrvPlayEmojiGroup_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsSrvPlayEmojiGroup_Request value = ReadRos2Aimdk_msgsSrvPlayEmojiGroup_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsSrvPlayEmojiGroup_Request(_Codecs.Writer writer, _Ros2Aimdk_msgsSrvPlayEmojiGroup_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Aimdk_msgsMsgCommonRequest part0 = value.@header;
        WriteRos2Aimdk_msgsMsgCommonRequest(writer, part0);
        byte[] part1 = value.@emotion_ids;
        if(part1 == null || part1.Length > 256)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part1.Length, 4);
        for(int index = 0; index < part1.Length; ++index)
        {
            byte element = part1[index];
            writer.Unsigned(element, 1);
        }
        byte part2 = value.@mode;
        writer.Unsigned(part2, 1);
        int part3 = value.@priority;
        writer.Unsigned(unchecked((uint)part3), 4);
    }

    private static _Ros2Aimdk_msgsSrvPlayEmojiGroup_Request ReadRos2Aimdk_msgsSrvPlayEmojiGroup_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsSrvPlayEmojiGroup_Request();
        value.@header = ReadRos2Aimdk_msgsMsgCommonRequest(reader);
        value.@emotion_ids = new byte[ReadCount(reader, 256, 1)];
        for(int index = 0; index < value.@emotion_ids.Length; ++index)
            value.@emotion_ids[index] = unchecked((byte)reader.Unsigned(1));
        value.@mode = unchecked((byte)reader.Unsigned(1));
        value.@priority = unchecked((int)reader.Unsigned(4));
        return value;
    }

    public sealed class _Ros2Aimdk_msgsSrvPlayEmojiGroup_Response
    {
        public _Ros2Aimdk_msgsMsgCommonResponse @header = new _Ros2Aimdk_msgsMsgCommonResponse();
        public bool @success = false;
        public string @message = "";

        public _Ros2Aimdk_msgsSrvPlayEmojiGroup_Response()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsSrvPlayEmojiGroup_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsSrvPlayEmojiGroup_Response>
    {
        public static readonly Ros2Aimdk_msgsSrvPlayEmojiGroup_ResponseCodec Instance = new Ros2Aimdk_msgsSrvPlayEmojiGroup_ResponseCodec();

        private Ros2Aimdk_msgsSrvPlayEmojiGroup_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/srv/PlayEmojiGroup_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_e12fb46d3a4912ee89cedafc27fffd1b984d68407e3ae45aef0f8c1e47a4d94d";
        public const int MIN_WIRE_BYTES = 29, MAX_WIRE_BYTES = 285;

        public byte[] Encode(_Ros2Aimdk_msgsSrvPlayEmojiGroup_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsSrvPlayEmojiGroup_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsSrvPlayEmojiGroup_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsSrvPlayEmojiGroup_Response value = ReadRos2Aimdk_msgsSrvPlayEmojiGroup_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsSrvPlayEmojiGroup_Response(_Codecs.Writer writer, _Ros2Aimdk_msgsSrvPlayEmojiGroup_Response value)
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

    private static _Ros2Aimdk_msgsSrvPlayEmojiGroup_Response ReadRos2Aimdk_msgsSrvPlayEmojiGroup_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsSrvPlayEmojiGroup_Response();
        value.@header = ReadRos2Aimdk_msgsMsgCommonResponse(reader);
        value.@success = ReadBool(reader);
        value.@message = ReadText(reader, 128);
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
        public const string CODEC_IDENTITY = "UWVMROS1_33f223039d43b52c64efebade4db48eb23c734f57094ed9f354a624927326989";
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
        public const string CODEC_IDENTITY = "UWVMROS1_1d77e2009a7a486e392cec8aa4a045257140839b22ba4001c1c06d0deffab57d";
        public const int MIN_WIRE_BYTES = 51, MAX_WIRE_BYTES = 691;

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

    public sealed class _Ros2Aimdk_msgsSrvPlayVideoGroup_Request
    {
        public _Ros2Aimdk_msgsMsgCommonRequest @header = new _Ros2Aimdk_msgsMsgCommonRequest();
        public string[] @video_path_list = new string[0];
        public byte @mode = 0;
        public int @priority = 0;

        public _Ros2Aimdk_msgsSrvPlayVideoGroup_Request()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsSrvPlayVideoGroup_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsSrvPlayVideoGroup_Request>
    {
        public static readonly Ros2Aimdk_msgsSrvPlayVideoGroup_RequestCodec Instance = new Ros2Aimdk_msgsSrvPlayVideoGroup_RequestCodec();

        private Ros2Aimdk_msgsSrvPlayVideoGroup_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/srv/PlayVideoGroup_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_3c55649a41758dca0eeb22b090ae63a38bb4720d6b55342ac5204ec1a3696473";
        public const int MIN_WIRE_BYTES = 17, MAX_WIRE_BYTES = 2129;

        public byte[] Encode(_Ros2Aimdk_msgsSrvPlayVideoGroup_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsSrvPlayVideoGroup_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsSrvPlayVideoGroup_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsSrvPlayVideoGroup_Request value = ReadRos2Aimdk_msgsSrvPlayVideoGroup_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsSrvPlayVideoGroup_Request(_Codecs.Writer writer, _Ros2Aimdk_msgsSrvPlayVideoGroup_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Aimdk_msgsMsgCommonRequest part0 = value.@header;
        WriteRos2Aimdk_msgsMsgCommonRequest(writer, part0);
        string[] part1 = value.@video_path_list;
        if(part1 == null || part1.Length > 16)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part1.Length, 4);
        for(int index = 0; index < part1.Length; ++index)
        {
            string element = part1[index];
            WriteText(writer, element, 128);
        }
        byte part2 = value.@mode;
        writer.Unsigned(part2, 1);
        int part3 = value.@priority;
        writer.Unsigned(unchecked((uint)part3), 4);
    }

    private static _Ros2Aimdk_msgsSrvPlayVideoGroup_Request ReadRos2Aimdk_msgsSrvPlayVideoGroup_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsSrvPlayVideoGroup_Request();
        value.@header = ReadRos2Aimdk_msgsMsgCommonRequest(reader);
        value.@video_path_list = new string[ReadCount(reader, 16, 4)];
        for(int index = 0; index < value.@video_path_list.Length; ++index)
            value.@video_path_list[index] = ReadText(reader, 128);
        value.@mode = unchecked((byte)reader.Unsigned(1));
        value.@priority = unchecked((int)reader.Unsigned(4));
        return value;
    }

    public sealed class _Ros2Aimdk_msgsSrvPlayVideoGroup_Response
    {
        public _Ros2Aimdk_msgsMsgCommonResponse @header = new _Ros2Aimdk_msgsMsgCommonResponse();
        public bool @success = false;
        public string @message = "";

        public _Ros2Aimdk_msgsSrvPlayVideoGroup_Response()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsSrvPlayVideoGroup_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsSrvPlayVideoGroup_Response>
    {
        public static readonly Ros2Aimdk_msgsSrvPlayVideoGroup_ResponseCodec Instance = new Ros2Aimdk_msgsSrvPlayVideoGroup_ResponseCodec();

        private Ros2Aimdk_msgsSrvPlayVideoGroup_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/srv/PlayVideoGroup_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_eb57edaed02ddee9424ba10f7c783e9e6147fa0990043059f2b4102d0d0a5a19";
        public const int MIN_WIRE_BYTES = 29, MAX_WIRE_BYTES = 285;

        public byte[] Encode(_Ros2Aimdk_msgsSrvPlayVideoGroup_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsSrvPlayVideoGroup_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsSrvPlayVideoGroup_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsSrvPlayVideoGroup_Response value = ReadRos2Aimdk_msgsSrvPlayVideoGroup_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsSrvPlayVideoGroup_Response(_Codecs.Writer writer, _Ros2Aimdk_msgsSrvPlayVideoGroup_Response value)
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

    private static _Ros2Aimdk_msgsSrvPlayVideoGroup_Response ReadRos2Aimdk_msgsSrvPlayVideoGroup_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsSrvPlayVideoGroup_Response();
        value.@header = ReadRos2Aimdk_msgsMsgCommonResponse(reader);
        value.@success = ReadBool(reader);
        value.@message = ReadText(reader, 128);
        return value;
    }

    public sealed class _Ros2Aimdk_msgsSrvRequestAudioFocus_Request
    {
        public _Ros2Aimdk_msgsMsgCommonRequest @request = new _Ros2Aimdk_msgsMsgCommonRequest();
        public _Ros2Aimdk_msgsMsgFocusRequester @focus_requester = new _Ros2Aimdk_msgsMsgFocusRequester();

        public _Ros2Aimdk_msgsSrvRequestAudioFocus_Request()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsSrvRequestAudioFocus_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsSrvRequestAudioFocus_Request>
    {
        public static readonly Ros2Aimdk_msgsSrvRequestAudioFocus_RequestCodec Instance = new Ros2Aimdk_msgsSrvRequestAudioFocus_RequestCodec();

        private Ros2Aimdk_msgsSrvRequestAudioFocus_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/srv/RequestAudioFocus_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_b6354e6109618f66c9c52fc67351c687e60ad1bf5f4b77a8e326755deca7ae8a";
        public const int MIN_WIRE_BYTES = 20, MAX_WIRE_BYTES = 148;

        public byte[] Encode(_Ros2Aimdk_msgsSrvRequestAudioFocus_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsSrvRequestAudioFocus_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsSrvRequestAudioFocus_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsSrvRequestAudioFocus_Request value = ReadRos2Aimdk_msgsSrvRequestAudioFocus_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsSrvRequestAudioFocus_Request(_Codecs.Writer writer, _Ros2Aimdk_msgsSrvRequestAudioFocus_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Aimdk_msgsMsgCommonRequest part0 = value.@request;
        WriteRos2Aimdk_msgsMsgCommonRequest(writer, part0);
        _Ros2Aimdk_msgsMsgFocusRequester part1 = value.@focus_requester;
        WriteRos2Aimdk_msgsMsgFocusRequester(writer, part1);
    }

    private static _Ros2Aimdk_msgsSrvRequestAudioFocus_Request ReadRos2Aimdk_msgsSrvRequestAudioFocus_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsSrvRequestAudioFocus_Request();
        value.@request = ReadRos2Aimdk_msgsMsgCommonRequest(reader);
        value.@focus_requester = ReadRos2Aimdk_msgsMsgFocusRequester(reader);
        return value;
    }

    public sealed class _Ros2Aimdk_msgsSrvRequestAudioFocus_Response
    {
        public _Ros2Aimdk_msgsMsgCommonResponse @reponse = new _Ros2Aimdk_msgsMsgCommonResponse();
        public _Ros2Aimdk_msgsMsgFocusResponse @focus_response = new _Ros2Aimdk_msgsMsgFocusResponse();

        public _Ros2Aimdk_msgsSrvRequestAudioFocus_Response()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsSrvRequestAudioFocus_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsSrvRequestAudioFocus_Response>
    {
        public static readonly Ros2Aimdk_msgsSrvRequestAudioFocus_ResponseCodec Instance = new Ros2Aimdk_msgsSrvRequestAudioFocus_ResponseCodec();

        private Ros2Aimdk_msgsSrvRequestAudioFocus_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/srv/RequestAudioFocus_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_41f9d4bcd2021b66e092897b1c587be4359d28b9bac69ea4058d429c5cf88180";
        public const int MIN_WIRE_BYTES = 29, MAX_WIRE_BYTES = 285;

        public byte[] Encode(_Ros2Aimdk_msgsSrvRequestAudioFocus_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsSrvRequestAudioFocus_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsSrvRequestAudioFocus_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsSrvRequestAudioFocus_Response value = ReadRos2Aimdk_msgsSrvRequestAudioFocus_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsSrvRequestAudioFocus_Response(_Codecs.Writer writer, _Ros2Aimdk_msgsSrvRequestAudioFocus_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Aimdk_msgsMsgCommonResponse part0 = value.@reponse;
        WriteRos2Aimdk_msgsMsgCommonResponse(writer, part0);
        _Ros2Aimdk_msgsMsgFocusResponse part1 = value.@focus_response;
        WriteRos2Aimdk_msgsMsgFocusResponse(writer, part1);
    }

    private static _Ros2Aimdk_msgsSrvRequestAudioFocus_Response ReadRos2Aimdk_msgsSrvRequestAudioFocus_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsSrvRequestAudioFocus_Response();
        value.@reponse = ReadRos2Aimdk_msgsMsgCommonResponse(reader);
        value.@focus_response = ReadRos2Aimdk_msgsMsgFocusResponse(reader);
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
        public const string CODEC_IDENTITY = "UWVMROS1_b05248c104afdd5331b9afb7a029923b03d3a984ba53633b0e42a70395f96fb8";
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
        public string @source = "";
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
        public const string CODEC_IDENTITY = "UWVMROS1_ba4bc79d2f30a969feb655cc441955119aee8c5d0dc56be32639c9c3e682e246";
        public const int MIN_WIRE_BYTES = 20, MAX_WIRE_BYTES = 276;

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
        string part1 = value.@source;
        WriteText(writer, part1, 128);
        _Ros2Aimdk_msgsMsgMcActionCommand part2 = value.@command;
        WriteRos2Aimdk_msgsMsgMcActionCommand(writer, part2);
    }

    private static _Ros2Aimdk_msgsSrvSetMcAction_Request ReadRos2Aimdk_msgsSrvSetMcAction_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsSrvSetMcAction_Request();
        value.@header = ReadRos2Aimdk_msgsMsgRequestHeader(reader);
        value.@source = ReadText(reader, 128);
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
        public _Ros2Aimdk_msgsMsgMcInputSource @input_source = new _Ros2Aimdk_msgsMsgMcInputSource();
        public _Ros2Aimdk_msgsMsgMcControlArea @area = new _Ros2Aimdk_msgsMsgMcControlArea();
        public _Ros2Aimdk_msgsMsgMcPresetMotion @motion = new _Ros2Aimdk_msgsMsgMcPresetMotion();
        public bool @interrupt = false;
        public string @ani_path = "";
        public ulong @play_timestamp = 0;

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
        public const string CODEC_IDENTITY = "UWVMROS1_1bc0bdea042012300548f5d9845b37dfc192d9680bb3beda186a69a11870ca96";
        public const int MIN_WIRE_BYTES = 41, MAX_WIRE_BYTES = 297;

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
        _Ros2Aimdk_msgsMsgMcInputSource part1 = value.@input_source;
        WriteRos2Aimdk_msgsMsgMcInputSource(writer, part1);
        _Ros2Aimdk_msgsMsgMcControlArea part2 = value.@area;
        WriteRos2Aimdk_msgsMsgMcControlArea(writer, part2);
        _Ros2Aimdk_msgsMsgMcPresetMotion part3 = value.@motion;
        WriteRos2Aimdk_msgsMsgMcPresetMotion(writer, part3);
        bool part4 = value.@interrupt;
        writer.Unsigned(part4 ? 1UL : 0UL, 1);
        string part5 = value.@ani_path;
        WriteText(writer, part5, 128);
        ulong part6 = value.@play_timestamp;
        writer.Unsigned(part6, 8);
    }

    private static _Ros2Aimdk_msgsSrvSetMcPresetMotion_Request ReadRos2Aimdk_msgsSrvSetMcPresetMotion_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsSrvSetMcPresetMotion_Request();
        value.@header = ReadRos2Aimdk_msgsMsgRequestHeader(reader);
        value.@input_source = ReadRos2Aimdk_msgsMsgMcInputSource(reader);
        value.@area = ReadRos2Aimdk_msgsMsgMcControlArea(reader);
        value.@motion = ReadRos2Aimdk_msgsMsgMcPresetMotion(reader);
        value.@interrupt = ReadBool(reader);
        value.@ani_path = ReadText(reader, 128);
        value.@play_timestamp = unchecked((ulong)reader.Unsigned(8));
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

    public sealed class _Ros2Aimdk_msgsSrvSetMicSourceRequest_Request
    {
        public _Ros2Aimdk_msgsMsgCommonRequest @header = new _Ros2Aimdk_msgsMsgCommonRequest();
        public uint @mic_source = 0;

        public _Ros2Aimdk_msgsSrvSetMicSourceRequest_Request()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsSrvSetMicSourceRequest_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsSrvSetMicSourceRequest_Request>
    {
        public static readonly Ros2Aimdk_msgsSrvSetMicSourceRequest_RequestCodec Instance = new Ros2Aimdk_msgsSrvSetMicSourceRequest_RequestCodec();

        private Ros2Aimdk_msgsSrvSetMicSourceRequest_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/srv/SetMicSourceRequest_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_01f1bcb54c816c25f1a88eb4392e8bedc4943d39a5b09974d7859c20ad1ca5e5";
        public const int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 12;

        public byte[] Encode(_Ros2Aimdk_msgsSrvSetMicSourceRequest_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsSrvSetMicSourceRequest_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsSrvSetMicSourceRequest_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsSrvSetMicSourceRequest_Request value = ReadRos2Aimdk_msgsSrvSetMicSourceRequest_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsSrvSetMicSourceRequest_Request(_Codecs.Writer writer, _Ros2Aimdk_msgsSrvSetMicSourceRequest_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Aimdk_msgsMsgCommonRequest part0 = value.@header;
        WriteRos2Aimdk_msgsMsgCommonRequest(writer, part0);
        uint part1 = value.@mic_source;
        writer.Unsigned(part1, 4);
    }

    private static _Ros2Aimdk_msgsSrvSetMicSourceRequest_Request ReadRos2Aimdk_msgsSrvSetMicSourceRequest_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsSrvSetMicSourceRequest_Request();
        value.@header = ReadRos2Aimdk_msgsMsgCommonRequest(reader);
        value.@mic_source = unchecked((uint)reader.Unsigned(4));
        return value;
    }

    public sealed class _Ros2Aimdk_msgsSrvSetMicSourceRequest_Response
    {
        public _Ros2Aimdk_msgsMsgCommonResponse @header = new _Ros2Aimdk_msgsMsgCommonResponse();

        public _Ros2Aimdk_msgsSrvSetMicSourceRequest_Response()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsSrvSetMicSourceRequest_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsSrvSetMicSourceRequest_Response>
    {
        public static readonly Ros2Aimdk_msgsSrvSetMicSourceRequest_ResponseCodec Instance = new Ros2Aimdk_msgsSrvSetMicSourceRequest_ResponseCodec();

        private Ros2Aimdk_msgsSrvSetMicSourceRequest_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/srv/SetMicSourceRequest_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_ee6caccf202dae100928dacc71303c536144d76458cf7c9b4facc6b88405ba02";
        public const int MIN_WIRE_BYTES = 24, MAX_WIRE_BYTES = 152;

        public byte[] Encode(_Ros2Aimdk_msgsSrvSetMicSourceRequest_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsSrvSetMicSourceRequest_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsSrvSetMicSourceRequest_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsSrvSetMicSourceRequest_Response value = ReadRos2Aimdk_msgsSrvSetMicSourceRequest_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsSrvSetMicSourceRequest_Response(_Codecs.Writer writer, _Ros2Aimdk_msgsSrvSetMicSourceRequest_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Aimdk_msgsMsgCommonResponse part0 = value.@header;
        WriteRos2Aimdk_msgsMsgCommonResponse(writer, part0);
    }

    private static _Ros2Aimdk_msgsSrvSetMicSourceRequest_Response ReadRos2Aimdk_msgsSrvSetMicSourceRequest_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsSrvSetMicSourceRequest_Response();
        value.@header = ReadRos2Aimdk_msgsMsgCommonResponse(reader);
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

    public sealed class _Ros2Aimdk_msgsSrvSetPmuLed_Request
    {
        public _Ros2Aimdk_msgsMsgCommonRequest @request = new _Ros2Aimdk_msgsMsgCommonRequest();
        public string @trace_id = "";
        public byte @led_strip_mode = 0;
        public byte @r = 0;
        public byte @g = 0;
        public byte @b = 0;
        public int @priority = 0;
        public bool @reset_priority = false;

        public _Ros2Aimdk_msgsSrvSetPmuLed_Request()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsSrvSetPmuLed_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsSrvSetPmuLed_Request>
    {
        public static readonly Ros2Aimdk_msgsSrvSetPmuLed_RequestCodec Instance = new Ros2Aimdk_msgsSrvSetPmuLed_RequestCodec();

        private Ros2Aimdk_msgsSrvSetPmuLed_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/srv/SetPmuLed_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_015ab71547b25baf5658c13781f8e78e5f6ed19692a6a30d191d7f39c962357e";
        public const int MIN_WIRE_BYTES = 21, MAX_WIRE_BYTES = 149;

        public byte[] Encode(_Ros2Aimdk_msgsSrvSetPmuLed_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsSrvSetPmuLed_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsSrvSetPmuLed_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsSrvSetPmuLed_Request value = ReadRos2Aimdk_msgsSrvSetPmuLed_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsSrvSetPmuLed_Request(_Codecs.Writer writer, _Ros2Aimdk_msgsSrvSetPmuLed_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Aimdk_msgsMsgCommonRequest part0 = value.@request;
        WriteRos2Aimdk_msgsMsgCommonRequest(writer, part0);
        string part1 = value.@trace_id;
        WriteText(writer, part1, 128);
        byte part2 = value.@led_strip_mode;
        writer.Unsigned(part2, 1);
        byte part3 = value.@r;
        writer.Unsigned(part3, 1);
        byte part4 = value.@g;
        writer.Unsigned(part4, 1);
        byte part5 = value.@b;
        writer.Unsigned(part5, 1);
        int part6 = value.@priority;
        writer.Unsigned(unchecked((uint)part6), 4);
        bool part7 = value.@reset_priority;
        writer.Unsigned(part7 ? 1UL : 0UL, 1);
    }

    private static _Ros2Aimdk_msgsSrvSetPmuLed_Request ReadRos2Aimdk_msgsSrvSetPmuLed_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsSrvSetPmuLed_Request();
        value.@request = ReadRos2Aimdk_msgsMsgCommonRequest(reader);
        value.@trace_id = ReadText(reader, 128);
        value.@led_strip_mode = unchecked((byte)reader.Unsigned(1));
        value.@r = unchecked((byte)reader.Unsigned(1));
        value.@g = unchecked((byte)reader.Unsigned(1));
        value.@b = unchecked((byte)reader.Unsigned(1));
        value.@priority = unchecked((int)reader.Unsigned(4));
        value.@reset_priority = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Aimdk_msgsSrvSetPmuLed_Response
    {
        public _Ros2Aimdk_msgsMsgResponseHeader @header = new _Ros2Aimdk_msgsMsgResponseHeader();
        public ushort @status_code = 0;

        public _Ros2Aimdk_msgsSrvSetPmuLed_Response()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsSrvSetPmuLed_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsSrvSetPmuLed_Response>
    {
        public static readonly Ros2Aimdk_msgsSrvSetPmuLed_ResponseCodec Instance = new Ros2Aimdk_msgsSrvSetPmuLed_ResponseCodec();

        private Ros2Aimdk_msgsSrvSetPmuLed_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/srv/SetPmuLed_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_0408d54ce93e19d7299d79ee7797dc9b3511b3f5c37fd97a3b3d7d193cefcd28";
        public const int MIN_WIRE_BYTES = 18, MAX_WIRE_BYTES = 18;

        public byte[] Encode(_Ros2Aimdk_msgsSrvSetPmuLed_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsSrvSetPmuLed_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsSrvSetPmuLed_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsSrvSetPmuLed_Response value = ReadRos2Aimdk_msgsSrvSetPmuLed_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsSrvSetPmuLed_Response(_Codecs.Writer writer, _Ros2Aimdk_msgsSrvSetPmuLed_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Aimdk_msgsMsgResponseHeader part0 = value.@header;
        WriteRos2Aimdk_msgsMsgResponseHeader(writer, part0);
        ushort part1 = value.@status_code;
        writer.Unsigned(part1, 2);
    }

    private static _Ros2Aimdk_msgsSrvSetPmuLed_Response ReadRos2Aimdk_msgsSrvSetPmuLed_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsSrvSetPmuLed_Response();
        value.@header = ReadRos2Aimdk_msgsMsgResponseHeader(reader);
        value.@status_code = unchecked((ushort)reader.Unsigned(2));
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

    public sealed class _Ros2Aimdk_msgsSrvStopAudioPlay_Request
    {
        public _Ros2Aimdk_msgsMsgCommonRequest @request = new _Ros2Aimdk_msgsMsgCommonRequest();

        public _Ros2Aimdk_msgsSrvStopAudioPlay_Request()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsSrvStopAudioPlay_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsSrvStopAudioPlay_Request>
    {
        public static readonly Ros2Aimdk_msgsSrvStopAudioPlay_RequestCodec Instance = new Ros2Aimdk_msgsSrvStopAudioPlay_RequestCodec();

        private Ros2Aimdk_msgsSrvStopAudioPlay_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/srv/StopAudioPlay_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_477159e3e8f462376693e7d0051c4b49cf5170520a056be2a2bd5a72d83e24b9";
        public const int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 8;

        public byte[] Encode(_Ros2Aimdk_msgsSrvStopAudioPlay_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsSrvStopAudioPlay_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsSrvStopAudioPlay_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsSrvStopAudioPlay_Request value = ReadRos2Aimdk_msgsSrvStopAudioPlay_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsSrvStopAudioPlay_Request(_Codecs.Writer writer, _Ros2Aimdk_msgsSrvStopAudioPlay_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Aimdk_msgsMsgCommonRequest part0 = value.@request;
        WriteRos2Aimdk_msgsMsgCommonRequest(writer, part0);
    }

    private static _Ros2Aimdk_msgsSrvStopAudioPlay_Request ReadRos2Aimdk_msgsSrvStopAudioPlay_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsSrvStopAudioPlay_Request();
        value.@request = ReadRos2Aimdk_msgsMsgCommonRequest(reader);
        return value;
    }

    public sealed class _Ros2Aimdk_msgsSrvStopAudioPlay_Response
    {
        public _Ros2Aimdk_msgsMsgCommonResponse @reponse = new _Ros2Aimdk_msgsMsgCommonResponse();

        public _Ros2Aimdk_msgsSrvStopAudioPlay_Response()
        {
        }
    }

    public sealed class Ros2Aimdk_msgsSrvStopAudioPlay_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Aimdk_msgsSrvStopAudioPlay_Response>
    {
        public static readonly Ros2Aimdk_msgsSrvStopAudioPlay_ResponseCodec Instance = new Ros2Aimdk_msgsSrvStopAudioPlay_ResponseCodec();

        private Ros2Aimdk_msgsSrvStopAudioPlay_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "aimdk_msgs/srv/StopAudioPlay_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_9a21b16e6eb5642e5bf5e0e64b15999a661142a65d2cc8ea68d8c62a2a1fbcb4";
        public const int MIN_WIRE_BYTES = 24, MAX_WIRE_BYTES = 152;

        public byte[] Encode(_Ros2Aimdk_msgsSrvStopAudioPlay_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Aimdk_msgsSrvStopAudioPlay_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Aimdk_msgsSrvStopAudioPlay_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Aimdk_msgsSrvStopAudioPlay_Response value = ReadRos2Aimdk_msgsSrvStopAudioPlay_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Aimdk_msgsSrvStopAudioPlay_Response(_Codecs.Writer writer, _Ros2Aimdk_msgsSrvStopAudioPlay_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Aimdk_msgsMsgCommonResponse part0 = value.@reponse;
        WriteRos2Aimdk_msgsMsgCommonResponse(writer, part0);
    }

    private static _Ros2Aimdk_msgsSrvStopAudioPlay_Response ReadRos2Aimdk_msgsSrvStopAudioPlay_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Aimdk_msgsSrvStopAudioPlay_Response();
        value.@reponse = ReadRos2Aimdk_msgsMsgCommonResponse(reader);
        return value;
    }
}
