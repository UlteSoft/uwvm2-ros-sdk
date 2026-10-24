/**
 * @file BoundedRecords.cs
 * @brief Complete doosan values and adapters for the selected original interface catalog.
 * @details Retain original field order, scalar widths, array capacities, string bounds, constants and declared
 * defaults. Pure value access and canonical codecs create no native ROS allocation or resource grant. Transport
 * roles require the separately admitted SDK owner.
 * @see share/platform/doosan/domains/doosan-ros1-aws-simulation-complete.ir.json
 * @see document/platform/doosan/en_US/README.md
 */

// Generated complete canonical records; no native ABI, CDR or ROS grant.
#nullable enable
using System;
using _Codecs = global::Uwvm.RosWasm.Codecs;
namespace Uwvm.DoosanDoosanRos1AwsSimulationComplete.Models;

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

    public sealed class _Ros1Dsr_msgsConfigCreateModbusRequest
    {
        public string @name = "";
        public string @ip = "";
        public int @port = 0;
        public sbyte @reg_type = 0;
        public sbyte @index = 0;
        public sbyte @value = 0;
        public int @slave_id = 0;

        public _Ros1Dsr_msgsConfigCreateModbusRequest()
        {
        }
    }

    public sealed class Ros1Dsr_msgsConfigCreateModbusRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsConfigCreateModbusRequest>
    {
        public static readonly Ros1Dsr_msgsConfigCreateModbusRequestCodec Instance = new Ros1Dsr_msgsConfigCreateModbusRequestCodec();

        private Ros1Dsr_msgsConfigCreateModbusRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/ConfigCreateModbusRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_67fe218ec3ea51f74df38d696c95b24f4f64dcdeb6652b618ec327133a1fc29f";
        public const int MIN_WIRE_BYTES = 19, MAX_WIRE_BYTES = 531;

        public byte[] Encode(_Ros1Dsr_msgsConfigCreateModbusRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsConfigCreateModbusRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsConfigCreateModbusRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsConfigCreateModbusRequest value = ReadRos1Dsr_msgsConfigCreateModbusRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsConfigCreateModbusRequest(_Codecs.Writer writer, _Ros1Dsr_msgsConfigCreateModbusRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        string part0 = value.@name;
        WriteText(writer, part0, 256);
        string part1 = value.@ip;
        WriteText(writer, part1, 256);
        int part2 = value.@port;
        writer.Unsigned(unchecked((uint)part2), 4);
        sbyte part3 = value.@reg_type;
        writer.Unsigned(unchecked((byte)part3), 1);
        sbyte part4 = value.@index;
        writer.Unsigned(unchecked((byte)part4), 1);
        sbyte part5 = value.@value;
        writer.Unsigned(unchecked((byte)part5), 1);
        int part6 = value.@slave_id;
        writer.Unsigned(unchecked((uint)part6), 4);
    }

    private static _Ros1Dsr_msgsConfigCreateModbusRequest ReadRos1Dsr_msgsConfigCreateModbusRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsConfigCreateModbusRequest();
        value.@name = ReadText(reader, 256);
        value.@ip = ReadText(reader, 256);
        value.@port = unchecked((int)reader.Unsigned(4));
        value.@reg_type = unchecked((sbyte)reader.Unsigned(1));
        value.@index = unchecked((sbyte)reader.Unsigned(1));
        value.@value = unchecked((sbyte)reader.Unsigned(1));
        value.@slave_id = unchecked((int)reader.Unsigned(4));
        return value;
    }

    public sealed class _Ros1Dsr_msgsConfigCreateModbusResponse
    {
        public bool @success = false;

        public _Ros1Dsr_msgsConfigCreateModbusResponse()
        {
        }
    }

    public sealed class Ros1Dsr_msgsConfigCreateModbusResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsConfigCreateModbusResponse>
    {
        public static readonly Ros1Dsr_msgsConfigCreateModbusResponseCodec Instance = new Ros1Dsr_msgsConfigCreateModbusResponseCodec();

        private Ros1Dsr_msgsConfigCreateModbusResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/ConfigCreateModbusResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_13243e4aeefdebf38671fc24f7059daf3597cdebcbc1a6ffd315d3edab3dfc2f";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros1Dsr_msgsConfigCreateModbusResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsConfigCreateModbusResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsConfigCreateModbusResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsConfigCreateModbusResponse value = ReadRos1Dsr_msgsConfigCreateModbusResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsConfigCreateModbusResponse(_Codecs.Writer writer, _Ros1Dsr_msgsConfigCreateModbusResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros1Dsr_msgsConfigCreateModbusResponse ReadRos1Dsr_msgsConfigCreateModbusResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsConfigCreateModbusResponse();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros1Dsr_msgsConfigCreateTcpRequest
    {
        public string @name = "";
        public double[] @pos = new double[6];

        public _Ros1Dsr_msgsConfigCreateTcpRequest()
        {
        }
    }

    public sealed class Ros1Dsr_msgsConfigCreateTcpRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsConfigCreateTcpRequest>
    {
        public static readonly Ros1Dsr_msgsConfigCreateTcpRequestCodec Instance = new Ros1Dsr_msgsConfigCreateTcpRequestCodec();

        private Ros1Dsr_msgsConfigCreateTcpRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/ConfigCreateTcpRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_afd19140176d214b18610297e53a7606a78cefd366dc01bb6baf05d72795e744";
        public const int MIN_WIRE_BYTES = 52, MAX_WIRE_BYTES = 308;

        public byte[] Encode(_Ros1Dsr_msgsConfigCreateTcpRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsConfigCreateTcpRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsConfigCreateTcpRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsConfigCreateTcpRequest value = ReadRos1Dsr_msgsConfigCreateTcpRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsConfigCreateTcpRequest(_Codecs.Writer writer, _Ros1Dsr_msgsConfigCreateTcpRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        string part0 = value.@name;
        WriteText(writer, part0, 256);
        double[] part1 = value.@pos;
        if(part1 == null || part1.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part1.Length; ++index)
        {
            double element = part1[index];
            writer.Float64(element);
        }
    }

    private static _Ros1Dsr_msgsConfigCreateTcpRequest ReadRos1Dsr_msgsConfigCreateTcpRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsConfigCreateTcpRequest();
        value.@name = ReadText(reader, 256);
        value.@pos = new double[6];
        for(int index = 0; index < value.@pos.Length; ++index)
            value.@pos[index] = reader.Float64();
        return value;
    }

    public sealed class _Ros1Dsr_msgsConfigCreateTcpResponse
    {
        public bool @success = false;

        public _Ros1Dsr_msgsConfigCreateTcpResponse()
        {
        }
    }

    public sealed class Ros1Dsr_msgsConfigCreateTcpResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsConfigCreateTcpResponse>
    {
        public static readonly Ros1Dsr_msgsConfigCreateTcpResponseCodec Instance = new Ros1Dsr_msgsConfigCreateTcpResponseCodec();

        private Ros1Dsr_msgsConfigCreateTcpResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/ConfigCreateTcpResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_768b2341613afaecf36342ebe26060e2c41ebd8fd4404d0394065c0d0ea6c948";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros1Dsr_msgsConfigCreateTcpResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsConfigCreateTcpResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsConfigCreateTcpResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsConfigCreateTcpResponse value = ReadRos1Dsr_msgsConfigCreateTcpResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsConfigCreateTcpResponse(_Codecs.Writer writer, _Ros1Dsr_msgsConfigCreateTcpResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros1Dsr_msgsConfigCreateTcpResponse ReadRos1Dsr_msgsConfigCreateTcpResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsConfigCreateTcpResponse();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros1Dsr_msgsConfigCreateToolRequest
    {
        public string @name = "";
        public double @weight = 0;
        public double[] @cog = new double[3];
        public double[] @inertia = new double[6];

        public _Ros1Dsr_msgsConfigCreateToolRequest()
        {
        }
    }

    public sealed class Ros1Dsr_msgsConfigCreateToolRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsConfigCreateToolRequest>
    {
        public static readonly Ros1Dsr_msgsConfigCreateToolRequestCodec Instance = new Ros1Dsr_msgsConfigCreateToolRequestCodec();

        private Ros1Dsr_msgsConfigCreateToolRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/ConfigCreateToolRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_ade17ea7096f6309da57a5d9e0be362562551da27bbc1508aac8e2d3c3afcd44";
        public const int MIN_WIRE_BYTES = 84, MAX_WIRE_BYTES = 340;

        public byte[] Encode(_Ros1Dsr_msgsConfigCreateToolRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsConfigCreateToolRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsConfigCreateToolRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsConfigCreateToolRequest value = ReadRos1Dsr_msgsConfigCreateToolRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsConfigCreateToolRequest(_Codecs.Writer writer, _Ros1Dsr_msgsConfigCreateToolRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        string part0 = value.@name;
        WriteText(writer, part0, 256);
        double part1 = value.@weight;
        writer.Float64(part1);
        double[] part2 = value.@cog;
        if(part2 == null || part2.Length != 3)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part2.Length; ++index)
        {
            double element = part2[index];
            writer.Float64(element);
        }
        double[] part3 = value.@inertia;
        if(part3 == null || part3.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part3.Length; ++index)
        {
            double element = part3[index];
            writer.Float64(element);
        }
    }

    private static _Ros1Dsr_msgsConfigCreateToolRequest ReadRos1Dsr_msgsConfigCreateToolRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsConfigCreateToolRequest();
        value.@name = ReadText(reader, 256);
        value.@weight = reader.Float64();
        value.@cog = new double[3];
        for(int index = 0; index < value.@cog.Length; ++index)
            value.@cog[index] = reader.Float64();
        value.@inertia = new double[6];
        for(int index = 0; index < value.@inertia.Length; ++index)
            value.@inertia[index] = reader.Float64();
        return value;
    }

    public sealed class _Ros1Dsr_msgsConfigCreateToolResponse
    {
        public bool @success = false;

        public _Ros1Dsr_msgsConfigCreateToolResponse()
        {
        }
    }

    public sealed class Ros1Dsr_msgsConfigCreateToolResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsConfigCreateToolResponse>
    {
        public static readonly Ros1Dsr_msgsConfigCreateToolResponseCodec Instance = new Ros1Dsr_msgsConfigCreateToolResponseCodec();

        private Ros1Dsr_msgsConfigCreateToolResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/ConfigCreateToolResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_6ed584718ae8c0b9d3946007cfcc713e58f867d3b6b6bfdcabc7ffc126f98a9b";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros1Dsr_msgsConfigCreateToolResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsConfigCreateToolResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsConfigCreateToolResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsConfigCreateToolResponse value = ReadRos1Dsr_msgsConfigCreateToolResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsConfigCreateToolResponse(_Codecs.Writer writer, _Ros1Dsr_msgsConfigCreateToolResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros1Dsr_msgsConfigCreateToolResponse ReadRos1Dsr_msgsConfigCreateToolResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsConfigCreateToolResponse();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros1Dsr_msgsConfigDeleteModbusRequest
    {
        public string @name = "";

        public _Ros1Dsr_msgsConfigDeleteModbusRequest()
        {
        }
    }

    public sealed class Ros1Dsr_msgsConfigDeleteModbusRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsConfigDeleteModbusRequest>
    {
        public static readonly Ros1Dsr_msgsConfigDeleteModbusRequestCodec Instance = new Ros1Dsr_msgsConfigDeleteModbusRequestCodec();

        private Ros1Dsr_msgsConfigDeleteModbusRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/ConfigDeleteModbusRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_d2007f4aa533a46244a6924762b701f84c31f5c9d19495a745e35c6fdd55d96b";
        public const int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 260;

        public byte[] Encode(_Ros1Dsr_msgsConfigDeleteModbusRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsConfigDeleteModbusRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsConfigDeleteModbusRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsConfigDeleteModbusRequest value = ReadRos1Dsr_msgsConfigDeleteModbusRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsConfigDeleteModbusRequest(_Codecs.Writer writer, _Ros1Dsr_msgsConfigDeleteModbusRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        string part0 = value.@name;
        WriteText(writer, part0, 256);
    }

    private static _Ros1Dsr_msgsConfigDeleteModbusRequest ReadRos1Dsr_msgsConfigDeleteModbusRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsConfigDeleteModbusRequest();
        value.@name = ReadText(reader, 256);
        return value;
    }

    public sealed class _Ros1Dsr_msgsConfigDeleteModbusResponse
    {
        public bool @success = false;

        public _Ros1Dsr_msgsConfigDeleteModbusResponse()
        {
        }
    }

    public sealed class Ros1Dsr_msgsConfigDeleteModbusResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsConfigDeleteModbusResponse>
    {
        public static readonly Ros1Dsr_msgsConfigDeleteModbusResponseCodec Instance = new Ros1Dsr_msgsConfigDeleteModbusResponseCodec();

        private Ros1Dsr_msgsConfigDeleteModbusResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/ConfigDeleteModbusResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_e3f8b3da769c249f0064ee118d26d7154a31e2dd5e65417d01f1524baa317c4e";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros1Dsr_msgsConfigDeleteModbusResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsConfigDeleteModbusResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsConfigDeleteModbusResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsConfigDeleteModbusResponse value = ReadRos1Dsr_msgsConfigDeleteModbusResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsConfigDeleteModbusResponse(_Codecs.Writer writer, _Ros1Dsr_msgsConfigDeleteModbusResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros1Dsr_msgsConfigDeleteModbusResponse ReadRos1Dsr_msgsConfigDeleteModbusResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsConfigDeleteModbusResponse();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros1Dsr_msgsConfigDeleteTcpRequest
    {
        public string @name = "";

        public _Ros1Dsr_msgsConfigDeleteTcpRequest()
        {
        }
    }

    public sealed class Ros1Dsr_msgsConfigDeleteTcpRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsConfigDeleteTcpRequest>
    {
        public static readonly Ros1Dsr_msgsConfigDeleteTcpRequestCodec Instance = new Ros1Dsr_msgsConfigDeleteTcpRequestCodec();

        private Ros1Dsr_msgsConfigDeleteTcpRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/ConfigDeleteTcpRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_096510681530cdda07b413a426fcf0ad5ca98e657a5d7612c1f497893fa96de4";
        public const int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 260;

        public byte[] Encode(_Ros1Dsr_msgsConfigDeleteTcpRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsConfigDeleteTcpRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsConfigDeleteTcpRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsConfigDeleteTcpRequest value = ReadRos1Dsr_msgsConfigDeleteTcpRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsConfigDeleteTcpRequest(_Codecs.Writer writer, _Ros1Dsr_msgsConfigDeleteTcpRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        string part0 = value.@name;
        WriteText(writer, part0, 256);
    }

    private static _Ros1Dsr_msgsConfigDeleteTcpRequest ReadRos1Dsr_msgsConfigDeleteTcpRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsConfigDeleteTcpRequest();
        value.@name = ReadText(reader, 256);
        return value;
    }

    public sealed class _Ros1Dsr_msgsConfigDeleteTcpResponse
    {
        public bool @success = false;

        public _Ros1Dsr_msgsConfigDeleteTcpResponse()
        {
        }
    }

    public sealed class Ros1Dsr_msgsConfigDeleteTcpResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsConfigDeleteTcpResponse>
    {
        public static readonly Ros1Dsr_msgsConfigDeleteTcpResponseCodec Instance = new Ros1Dsr_msgsConfigDeleteTcpResponseCodec();

        private Ros1Dsr_msgsConfigDeleteTcpResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/ConfigDeleteTcpResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_5842def73643bf4621c17fbfa2ecd19cfec7a5c9c4ce9b954c72e0be846cebe5";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros1Dsr_msgsConfigDeleteTcpResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsConfigDeleteTcpResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsConfigDeleteTcpResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsConfigDeleteTcpResponse value = ReadRos1Dsr_msgsConfigDeleteTcpResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsConfigDeleteTcpResponse(_Codecs.Writer writer, _Ros1Dsr_msgsConfigDeleteTcpResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros1Dsr_msgsConfigDeleteTcpResponse ReadRos1Dsr_msgsConfigDeleteTcpResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsConfigDeleteTcpResponse();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros1Dsr_msgsConfigDeleteToolRequest
    {
        public string @name = "";

        public _Ros1Dsr_msgsConfigDeleteToolRequest()
        {
        }
    }

    public sealed class Ros1Dsr_msgsConfigDeleteToolRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsConfigDeleteToolRequest>
    {
        public static readonly Ros1Dsr_msgsConfigDeleteToolRequestCodec Instance = new Ros1Dsr_msgsConfigDeleteToolRequestCodec();

        private Ros1Dsr_msgsConfigDeleteToolRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/ConfigDeleteToolRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_be7ab4ae62ab38dd1c31f4cb96303edf98511e369ef64476f835e23b7b6168f3";
        public const int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 260;

        public byte[] Encode(_Ros1Dsr_msgsConfigDeleteToolRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsConfigDeleteToolRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsConfigDeleteToolRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsConfigDeleteToolRequest value = ReadRos1Dsr_msgsConfigDeleteToolRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsConfigDeleteToolRequest(_Codecs.Writer writer, _Ros1Dsr_msgsConfigDeleteToolRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        string part0 = value.@name;
        WriteText(writer, part0, 256);
    }

    private static _Ros1Dsr_msgsConfigDeleteToolRequest ReadRos1Dsr_msgsConfigDeleteToolRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsConfigDeleteToolRequest();
        value.@name = ReadText(reader, 256);
        return value;
    }

    public sealed class _Ros1Dsr_msgsConfigDeleteToolResponse
    {
        public bool @success = false;

        public _Ros1Dsr_msgsConfigDeleteToolResponse()
        {
        }
    }

    public sealed class Ros1Dsr_msgsConfigDeleteToolResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsConfigDeleteToolResponse>
    {
        public static readonly Ros1Dsr_msgsConfigDeleteToolResponseCodec Instance = new Ros1Dsr_msgsConfigDeleteToolResponseCodec();

        private Ros1Dsr_msgsConfigDeleteToolResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/ConfigDeleteToolResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_0e0708c161ba1aeeb9c7e96e77434eb7ba7c9c77eba230e5488f59b34fd8f780";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros1Dsr_msgsConfigDeleteToolResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsConfigDeleteToolResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsConfigDeleteToolResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsConfigDeleteToolResponse value = ReadRos1Dsr_msgsConfigDeleteToolResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsConfigDeleteToolResponse(_Codecs.Writer writer, _Ros1Dsr_msgsConfigDeleteToolResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros1Dsr_msgsConfigDeleteToolResponse ReadRos1Dsr_msgsConfigDeleteToolResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsConfigDeleteToolResponse();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros1Dsr_msgsDrlPauseRequest
    {
        public _Ros1Dsr_msgsDrlPauseRequest()
        {
        }
    }

    public sealed class Ros1Dsr_msgsDrlPauseRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsDrlPauseRequest>
    {
        public static readonly Ros1Dsr_msgsDrlPauseRequestCodec Instance = new Ros1Dsr_msgsDrlPauseRequestCodec();

        private Ros1Dsr_msgsDrlPauseRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/DrlPauseRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_e8e6c075432920d6650a5dddc31fd33f7a1688ce99264113be7d0675378eb120";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public byte[] Encode(_Ros1Dsr_msgsDrlPauseRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsDrlPauseRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsDrlPauseRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsDrlPauseRequest value = ReadRos1Dsr_msgsDrlPauseRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsDrlPauseRequest(_Codecs.Writer writer, _Ros1Dsr_msgsDrlPauseRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    private static _Ros1Dsr_msgsDrlPauseRequest ReadRos1Dsr_msgsDrlPauseRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsDrlPauseRequest();
        return value;
    }

    public sealed class _Ros1Dsr_msgsDrlPauseResponse
    {
        public bool @success = false;

        public _Ros1Dsr_msgsDrlPauseResponse()
        {
        }
    }

    public sealed class Ros1Dsr_msgsDrlPauseResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsDrlPauseResponse>
    {
        public static readonly Ros1Dsr_msgsDrlPauseResponseCodec Instance = new Ros1Dsr_msgsDrlPauseResponseCodec();

        private Ros1Dsr_msgsDrlPauseResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/DrlPauseResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_9a448d82cb77115d43abe062d8f1bbb904ab680a98cf4d95b025eedd3deca0bb";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros1Dsr_msgsDrlPauseResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsDrlPauseResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsDrlPauseResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsDrlPauseResponse value = ReadRos1Dsr_msgsDrlPauseResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsDrlPauseResponse(_Codecs.Writer writer, _Ros1Dsr_msgsDrlPauseResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros1Dsr_msgsDrlPauseResponse ReadRos1Dsr_msgsDrlPauseResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsDrlPauseResponse();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros1Dsr_msgsDrlResumeRequest
    {
        public _Ros1Dsr_msgsDrlResumeRequest()
        {
        }
    }

    public sealed class Ros1Dsr_msgsDrlResumeRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsDrlResumeRequest>
    {
        public static readonly Ros1Dsr_msgsDrlResumeRequestCodec Instance = new Ros1Dsr_msgsDrlResumeRequestCodec();

        private Ros1Dsr_msgsDrlResumeRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/DrlResumeRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_11d5e8618dacde2d4f9ee2b9e7ee6306396e7495003bc31d9bd02a2438232713";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public byte[] Encode(_Ros1Dsr_msgsDrlResumeRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsDrlResumeRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsDrlResumeRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsDrlResumeRequest value = ReadRos1Dsr_msgsDrlResumeRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsDrlResumeRequest(_Codecs.Writer writer, _Ros1Dsr_msgsDrlResumeRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    private static _Ros1Dsr_msgsDrlResumeRequest ReadRos1Dsr_msgsDrlResumeRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsDrlResumeRequest();
        return value;
    }

    public sealed class _Ros1Dsr_msgsDrlResumeResponse
    {
        public bool @success = false;

        public _Ros1Dsr_msgsDrlResumeResponse()
        {
        }
    }

    public sealed class Ros1Dsr_msgsDrlResumeResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsDrlResumeResponse>
    {
        public static readonly Ros1Dsr_msgsDrlResumeResponseCodec Instance = new Ros1Dsr_msgsDrlResumeResponseCodec();

        private Ros1Dsr_msgsDrlResumeResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/DrlResumeResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_40fdc65739450e3c8e0af52f69623624dac33620feda55065587e8e8a1d9a05a";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros1Dsr_msgsDrlResumeResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsDrlResumeResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsDrlResumeResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsDrlResumeResponse value = ReadRos1Dsr_msgsDrlResumeResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsDrlResumeResponse(_Codecs.Writer writer, _Ros1Dsr_msgsDrlResumeResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros1Dsr_msgsDrlResumeResponse ReadRos1Dsr_msgsDrlResumeResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsDrlResumeResponse();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros1Dsr_msgsDrlStartRequest
    {
        public sbyte @robotSystem = 0;
        public string @code = "";

        public _Ros1Dsr_msgsDrlStartRequest()
        {
        }
    }

    public sealed class Ros1Dsr_msgsDrlStartRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsDrlStartRequest>
    {
        public static readonly Ros1Dsr_msgsDrlStartRequestCodec Instance = new Ros1Dsr_msgsDrlStartRequestCodec();

        private Ros1Dsr_msgsDrlStartRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/DrlStartRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_1f5f908c63b09780c6b68ef280f87328590e5eec3be18d98916137c0d2c42a65";
        public const int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 261;

        public byte[] Encode(_Ros1Dsr_msgsDrlStartRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsDrlStartRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsDrlStartRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsDrlStartRequest value = ReadRos1Dsr_msgsDrlStartRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsDrlStartRequest(_Codecs.Writer writer, _Ros1Dsr_msgsDrlStartRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        sbyte part0 = value.@robotSystem;
        writer.Unsigned(unchecked((byte)part0), 1);
        string part1 = value.@code;
        WriteText(writer, part1, 256);
    }

    private static _Ros1Dsr_msgsDrlStartRequest ReadRos1Dsr_msgsDrlStartRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsDrlStartRequest();
        value.@robotSystem = unchecked((sbyte)reader.Unsigned(1));
        value.@code = ReadText(reader, 256);
        return value;
    }

    public sealed class _Ros1Dsr_msgsDrlStartResponse
    {
        public bool @success = false;

        public _Ros1Dsr_msgsDrlStartResponse()
        {
        }
    }

    public sealed class Ros1Dsr_msgsDrlStartResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsDrlStartResponse>
    {
        public static readonly Ros1Dsr_msgsDrlStartResponseCodec Instance = new Ros1Dsr_msgsDrlStartResponseCodec();

        private Ros1Dsr_msgsDrlStartResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/DrlStartResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_2e39df1817ac076c895b43f565515db035ba300f4433b8635976b20713d98d76";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros1Dsr_msgsDrlStartResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsDrlStartResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsDrlStartResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsDrlStartResponse value = ReadRos1Dsr_msgsDrlStartResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsDrlStartResponse(_Codecs.Writer writer, _Ros1Dsr_msgsDrlStartResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros1Dsr_msgsDrlStartResponse ReadRos1Dsr_msgsDrlStartResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsDrlStartResponse();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros1Dsr_msgsDrlStopRequest
    {
        public sbyte @stop_mode = 0;

        public _Ros1Dsr_msgsDrlStopRequest()
        {
        }
    }

    public sealed class Ros1Dsr_msgsDrlStopRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsDrlStopRequest>
    {
        public static readonly Ros1Dsr_msgsDrlStopRequestCodec Instance = new Ros1Dsr_msgsDrlStopRequestCodec();

        private Ros1Dsr_msgsDrlStopRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/DrlStopRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_5be1c9f2284e5244660cfcb60632921bb5db1440536a5030e8d4c93c15704f9b";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros1Dsr_msgsDrlStopRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsDrlStopRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsDrlStopRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsDrlStopRequest value = ReadRos1Dsr_msgsDrlStopRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsDrlStopRequest(_Codecs.Writer writer, _Ros1Dsr_msgsDrlStopRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        sbyte part0 = value.@stop_mode;
        writer.Unsigned(unchecked((byte)part0), 1);
    }

    private static _Ros1Dsr_msgsDrlStopRequest ReadRos1Dsr_msgsDrlStopRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsDrlStopRequest();
        value.@stop_mode = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    public sealed class _Ros1Dsr_msgsDrlStopResponse
    {
        public bool @success = false;

        public _Ros1Dsr_msgsDrlStopResponse()
        {
        }
    }

    public sealed class Ros1Dsr_msgsDrlStopResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsDrlStopResponse>
    {
        public static readonly Ros1Dsr_msgsDrlStopResponseCodec Instance = new Ros1Dsr_msgsDrlStopResponseCodec();

        private Ros1Dsr_msgsDrlStopResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/DrlStopResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_0f2cf2aff2ce20b984c602673fdf51ec38ef81820171e1c08e8c9c07d536a988";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros1Dsr_msgsDrlStopResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsDrlStopResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsDrlStopResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsDrlStopResponse value = ReadRos1Dsr_msgsDrlStopResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsDrlStopResponse(_Codecs.Writer writer, _Ros1Dsr_msgsDrlStopResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros1Dsr_msgsDrlStopResponse ReadRos1Dsr_msgsDrlStopResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsDrlStopResponse();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros1Dsr_msgsGetCtrlBoxAnalogInputRequest
    {
        public sbyte @channel = 0;

        public _Ros1Dsr_msgsGetCtrlBoxAnalogInputRequest()
        {
        }
    }

    public sealed class Ros1Dsr_msgsGetCtrlBoxAnalogInputRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsGetCtrlBoxAnalogInputRequest>
    {
        public static readonly Ros1Dsr_msgsGetCtrlBoxAnalogInputRequestCodec Instance = new Ros1Dsr_msgsGetCtrlBoxAnalogInputRequestCodec();

        private Ros1Dsr_msgsGetCtrlBoxAnalogInputRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/GetCtrlBoxAnalogInputRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_0cfaa9f68b92deff18c68d7def4dda13dcd1082065218cc0af1ef8909a35898a";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros1Dsr_msgsGetCtrlBoxAnalogInputRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsGetCtrlBoxAnalogInputRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsGetCtrlBoxAnalogInputRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsGetCtrlBoxAnalogInputRequest value = ReadRos1Dsr_msgsGetCtrlBoxAnalogInputRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsGetCtrlBoxAnalogInputRequest(_Codecs.Writer writer, _Ros1Dsr_msgsGetCtrlBoxAnalogInputRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        sbyte part0 = value.@channel;
        writer.Unsigned(unchecked((byte)part0), 1);
    }

    private static _Ros1Dsr_msgsGetCtrlBoxAnalogInputRequest ReadRos1Dsr_msgsGetCtrlBoxAnalogInputRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsGetCtrlBoxAnalogInputRequest();
        value.@channel = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    public sealed class _Ros1Dsr_msgsGetCtrlBoxAnalogInputResponse
    {
        public double @value = 0;

        public _Ros1Dsr_msgsGetCtrlBoxAnalogInputResponse()
        {
        }
    }

    public sealed class Ros1Dsr_msgsGetCtrlBoxAnalogInputResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsGetCtrlBoxAnalogInputResponse>
    {
        public static readonly Ros1Dsr_msgsGetCtrlBoxAnalogInputResponseCodec Instance = new Ros1Dsr_msgsGetCtrlBoxAnalogInputResponseCodec();

        private Ros1Dsr_msgsGetCtrlBoxAnalogInputResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/GetCtrlBoxAnalogInputResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_53fc14db79f9c63ee04e5e055961e397d6ceefa553e0912c4c944f858376b4b2";
        public const int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 8;

        public byte[] Encode(_Ros1Dsr_msgsGetCtrlBoxAnalogInputResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsGetCtrlBoxAnalogInputResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsGetCtrlBoxAnalogInputResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsGetCtrlBoxAnalogInputResponse value = ReadRos1Dsr_msgsGetCtrlBoxAnalogInputResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsGetCtrlBoxAnalogInputResponse(_Codecs.Writer writer, _Ros1Dsr_msgsGetCtrlBoxAnalogInputResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        double part0 = value.@value;
        writer.Float64(part0);
    }

    private static _Ros1Dsr_msgsGetCtrlBoxAnalogInputResponse ReadRos1Dsr_msgsGetCtrlBoxAnalogInputResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsGetCtrlBoxAnalogInputResponse();
        value.@value = reader.Float64();
        return value;
    }

    public sealed class _Ros1Dsr_msgsGetCtrlBoxDigitalInputRequest
    {
        public sbyte @index = 0;

        public _Ros1Dsr_msgsGetCtrlBoxDigitalInputRequest()
        {
        }
    }

    public sealed class Ros1Dsr_msgsGetCtrlBoxDigitalInputRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsGetCtrlBoxDigitalInputRequest>
    {
        public static readonly Ros1Dsr_msgsGetCtrlBoxDigitalInputRequestCodec Instance = new Ros1Dsr_msgsGetCtrlBoxDigitalInputRequestCodec();

        private Ros1Dsr_msgsGetCtrlBoxDigitalInputRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/GetCtrlBoxDigitalInputRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_43410710b24f4ef8aeb4533a0d45babb2adf93890d72c08ec45b1062e0d83f7e";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros1Dsr_msgsGetCtrlBoxDigitalInputRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsGetCtrlBoxDigitalInputRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsGetCtrlBoxDigitalInputRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsGetCtrlBoxDigitalInputRequest value = ReadRos1Dsr_msgsGetCtrlBoxDigitalInputRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsGetCtrlBoxDigitalInputRequest(_Codecs.Writer writer, _Ros1Dsr_msgsGetCtrlBoxDigitalInputRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        sbyte part0 = value.@index;
        writer.Unsigned(unchecked((byte)part0), 1);
    }

    private static _Ros1Dsr_msgsGetCtrlBoxDigitalInputRequest ReadRos1Dsr_msgsGetCtrlBoxDigitalInputRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsGetCtrlBoxDigitalInputRequest();
        value.@index = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    public sealed class _Ros1Dsr_msgsGetCtrlBoxDigitalInputResponse
    {
        public bool @value = false;

        public _Ros1Dsr_msgsGetCtrlBoxDigitalInputResponse()
        {
        }
    }

    public sealed class Ros1Dsr_msgsGetCtrlBoxDigitalInputResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsGetCtrlBoxDigitalInputResponse>
    {
        public static readonly Ros1Dsr_msgsGetCtrlBoxDigitalInputResponseCodec Instance = new Ros1Dsr_msgsGetCtrlBoxDigitalInputResponseCodec();

        private Ros1Dsr_msgsGetCtrlBoxDigitalInputResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/GetCtrlBoxDigitalInputResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_b24172ba7a1d82456b33bcbfccde50c1e0a40d4ce870dae704c00a553591a6a2";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros1Dsr_msgsGetCtrlBoxDigitalInputResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsGetCtrlBoxDigitalInputResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsGetCtrlBoxDigitalInputResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsGetCtrlBoxDigitalInputResponse value = ReadRos1Dsr_msgsGetCtrlBoxDigitalInputResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsGetCtrlBoxDigitalInputResponse(_Codecs.Writer writer, _Ros1Dsr_msgsGetCtrlBoxDigitalInputResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@value;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros1Dsr_msgsGetCtrlBoxDigitalInputResponse ReadRos1Dsr_msgsGetCtrlBoxDigitalInputResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsGetCtrlBoxDigitalInputResponse();
        value.@value = ReadBool(reader);
        return value;
    }

    public sealed class _Ros1Dsr_msgsGetCurrentPoseRequest
    {
        public sbyte @space_type = 0;

        public _Ros1Dsr_msgsGetCurrentPoseRequest()
        {
        }
    }

    public sealed class Ros1Dsr_msgsGetCurrentPoseRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsGetCurrentPoseRequest>
    {
        public static readonly Ros1Dsr_msgsGetCurrentPoseRequestCodec Instance = new Ros1Dsr_msgsGetCurrentPoseRequestCodec();

        private Ros1Dsr_msgsGetCurrentPoseRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/GetCurrentPoseRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_674feef59812a37871c3022be9d588ffa67178430be01f47a4e3bca86766b72b";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros1Dsr_msgsGetCurrentPoseRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsGetCurrentPoseRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsGetCurrentPoseRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsGetCurrentPoseRequest value = ReadRos1Dsr_msgsGetCurrentPoseRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsGetCurrentPoseRequest(_Codecs.Writer writer, _Ros1Dsr_msgsGetCurrentPoseRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        sbyte part0 = value.@space_type;
        writer.Unsigned(unchecked((byte)part0), 1);
    }

    private static _Ros1Dsr_msgsGetCurrentPoseRequest ReadRos1Dsr_msgsGetCurrentPoseRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsGetCurrentPoseRequest();
        value.@space_type = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    public sealed class _Ros1Dsr_msgsGetCurrentPoseResponse
    {
        public double[] @pos = new double[6];

        public _Ros1Dsr_msgsGetCurrentPoseResponse()
        {
        }
    }

    public sealed class Ros1Dsr_msgsGetCurrentPoseResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsGetCurrentPoseResponse>
    {
        public static readonly Ros1Dsr_msgsGetCurrentPoseResponseCodec Instance = new Ros1Dsr_msgsGetCurrentPoseResponseCodec();

        private Ros1Dsr_msgsGetCurrentPoseResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/GetCurrentPoseResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_cae2a551df6b2c548e171cdb181bbbe1fcbfe9fc3039b68f4edab2043ef8b9d6";
        public const int MIN_WIRE_BYTES = 48, MAX_WIRE_BYTES = 48;

        public byte[] Encode(_Ros1Dsr_msgsGetCurrentPoseResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsGetCurrentPoseResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsGetCurrentPoseResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsGetCurrentPoseResponse value = ReadRos1Dsr_msgsGetCurrentPoseResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsGetCurrentPoseResponse(_Codecs.Writer writer, _Ros1Dsr_msgsGetCurrentPoseResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        double[] part0 = value.@pos;
        if(part0 == null || part0.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part0.Length; ++index)
        {
            double element = part0[index];
            writer.Float64(element);
        }
    }

    private static _Ros1Dsr_msgsGetCurrentPoseResponse ReadRos1Dsr_msgsGetCurrentPoseResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsGetCurrentPoseResponse();
        value.@pos = new double[6];
        for(int index = 0; index < value.@pos.Length; ++index)
            value.@pos[index] = reader.Float64();
        return value;
    }

    public sealed class _Ros1Dsr_msgsGetCurrentSolutionSpaceRequest
    {
        public _Ros1Dsr_msgsGetCurrentSolutionSpaceRequest()
        {
        }
    }

    public sealed class Ros1Dsr_msgsGetCurrentSolutionSpaceRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsGetCurrentSolutionSpaceRequest>
    {
        public static readonly Ros1Dsr_msgsGetCurrentSolutionSpaceRequestCodec Instance = new Ros1Dsr_msgsGetCurrentSolutionSpaceRequestCodec();

        private Ros1Dsr_msgsGetCurrentSolutionSpaceRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/GetCurrentSolutionSpaceRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_303fe75ff690897d18296dfb34aad4b0482e372656ed5c85bf9d60bb1832af78";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public byte[] Encode(_Ros1Dsr_msgsGetCurrentSolutionSpaceRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsGetCurrentSolutionSpaceRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsGetCurrentSolutionSpaceRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsGetCurrentSolutionSpaceRequest value = ReadRos1Dsr_msgsGetCurrentSolutionSpaceRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsGetCurrentSolutionSpaceRequest(_Codecs.Writer writer, _Ros1Dsr_msgsGetCurrentSolutionSpaceRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    private static _Ros1Dsr_msgsGetCurrentSolutionSpaceRequest ReadRos1Dsr_msgsGetCurrentSolutionSpaceRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsGetCurrentSolutionSpaceRequest();
        return value;
    }

    public sealed class _Ros1Dsr_msgsGetCurrentSolutionSpaceResponse
    {
        public sbyte @solution_space = 0;

        public _Ros1Dsr_msgsGetCurrentSolutionSpaceResponse()
        {
        }
    }

    public sealed class Ros1Dsr_msgsGetCurrentSolutionSpaceResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsGetCurrentSolutionSpaceResponse>
    {
        public static readonly Ros1Dsr_msgsGetCurrentSolutionSpaceResponseCodec Instance = new Ros1Dsr_msgsGetCurrentSolutionSpaceResponseCodec();

        private Ros1Dsr_msgsGetCurrentSolutionSpaceResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/GetCurrentSolutionSpaceResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_57e390c7f039b26fc69fe35d07420ee94084ce9d9531e7e8c6d6a09729b5986f";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros1Dsr_msgsGetCurrentSolutionSpaceResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsGetCurrentSolutionSpaceResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsGetCurrentSolutionSpaceResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsGetCurrentSolutionSpaceResponse value = ReadRos1Dsr_msgsGetCurrentSolutionSpaceResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsGetCurrentSolutionSpaceResponse(_Codecs.Writer writer, _Ros1Dsr_msgsGetCurrentSolutionSpaceResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        sbyte part0 = value.@solution_space;
        writer.Unsigned(unchecked((byte)part0), 1);
    }

    private static _Ros1Dsr_msgsGetCurrentSolutionSpaceResponse ReadRos1Dsr_msgsGetCurrentSolutionSpaceResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsGetCurrentSolutionSpaceResponse();
        value.@solution_space = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    public sealed class _Ros1Dsr_msgsGetCurrentTcpRequest
    {
        public _Ros1Dsr_msgsGetCurrentTcpRequest()
        {
        }
    }

    public sealed class Ros1Dsr_msgsGetCurrentTcpRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsGetCurrentTcpRequest>
    {
        public static readonly Ros1Dsr_msgsGetCurrentTcpRequestCodec Instance = new Ros1Dsr_msgsGetCurrentTcpRequestCodec();

        private Ros1Dsr_msgsGetCurrentTcpRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/GetCurrentTcpRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_f2a902cbf141335bb559f739861860de93f07d3ed3200ba91833b831389eb3b8";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public byte[] Encode(_Ros1Dsr_msgsGetCurrentTcpRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsGetCurrentTcpRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsGetCurrentTcpRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsGetCurrentTcpRequest value = ReadRos1Dsr_msgsGetCurrentTcpRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsGetCurrentTcpRequest(_Codecs.Writer writer, _Ros1Dsr_msgsGetCurrentTcpRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    private static _Ros1Dsr_msgsGetCurrentTcpRequest ReadRos1Dsr_msgsGetCurrentTcpRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsGetCurrentTcpRequest();
        return value;
    }

    public sealed class _Ros1Dsr_msgsGetCurrentTcpResponse
    {
        public string @info = "";

        public _Ros1Dsr_msgsGetCurrentTcpResponse()
        {
        }
    }

    public sealed class Ros1Dsr_msgsGetCurrentTcpResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsGetCurrentTcpResponse>
    {
        public static readonly Ros1Dsr_msgsGetCurrentTcpResponseCodec Instance = new Ros1Dsr_msgsGetCurrentTcpResponseCodec();

        private Ros1Dsr_msgsGetCurrentTcpResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/GetCurrentTcpResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_8076cd565188d0adcda508a0637b240969a434a924daeed7cf3b7e442b901ee3";
        public const int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 260;

        public byte[] Encode(_Ros1Dsr_msgsGetCurrentTcpResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsGetCurrentTcpResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsGetCurrentTcpResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsGetCurrentTcpResponse value = ReadRos1Dsr_msgsGetCurrentTcpResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsGetCurrentTcpResponse(_Codecs.Writer writer, _Ros1Dsr_msgsGetCurrentTcpResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        string part0 = value.@info;
        WriteText(writer, part0, 256);
    }

    private static _Ros1Dsr_msgsGetCurrentTcpResponse ReadRos1Dsr_msgsGetCurrentTcpResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsGetCurrentTcpResponse();
        value.@info = ReadText(reader, 256);
        return value;
    }

    public sealed class _Ros1Dsr_msgsGetCurrentToolRequest
    {
        public _Ros1Dsr_msgsGetCurrentToolRequest()
        {
        }
    }

    public sealed class Ros1Dsr_msgsGetCurrentToolRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsGetCurrentToolRequest>
    {
        public static readonly Ros1Dsr_msgsGetCurrentToolRequestCodec Instance = new Ros1Dsr_msgsGetCurrentToolRequestCodec();

        private Ros1Dsr_msgsGetCurrentToolRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/GetCurrentToolRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_0d86dff574728cebfb33a873845e9563665d4173267adbc6fd7f542d26b15970";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public byte[] Encode(_Ros1Dsr_msgsGetCurrentToolRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsGetCurrentToolRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsGetCurrentToolRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsGetCurrentToolRequest value = ReadRos1Dsr_msgsGetCurrentToolRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsGetCurrentToolRequest(_Codecs.Writer writer, _Ros1Dsr_msgsGetCurrentToolRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    private static _Ros1Dsr_msgsGetCurrentToolRequest ReadRos1Dsr_msgsGetCurrentToolRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsGetCurrentToolRequest();
        return value;
    }

    public sealed class _Ros1Dsr_msgsGetCurrentToolResponse
    {
        public string @info = "";

        public _Ros1Dsr_msgsGetCurrentToolResponse()
        {
        }
    }

    public sealed class Ros1Dsr_msgsGetCurrentToolResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsGetCurrentToolResponse>
    {
        public static readonly Ros1Dsr_msgsGetCurrentToolResponseCodec Instance = new Ros1Dsr_msgsGetCurrentToolResponseCodec();

        private Ros1Dsr_msgsGetCurrentToolResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/GetCurrentToolResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_8afef46263fd34fe71e4c33d9add7d71672cb9d95aa237a60e17c3c3cdd58e43";
        public const int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 260;

        public byte[] Encode(_Ros1Dsr_msgsGetCurrentToolResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsGetCurrentToolResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsGetCurrentToolResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsGetCurrentToolResponse value = ReadRos1Dsr_msgsGetCurrentToolResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsGetCurrentToolResponse(_Codecs.Writer writer, _Ros1Dsr_msgsGetCurrentToolResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        string part0 = value.@info;
        WriteText(writer, part0, 256);
    }

    private static _Ros1Dsr_msgsGetCurrentToolResponse ReadRos1Dsr_msgsGetCurrentToolResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsGetCurrentToolResponse();
        value.@info = ReadText(reader, 256);
        return value;
    }

    public sealed class _Ros1Dsr_msgsGetDrlStateRequest
    {
        public _Ros1Dsr_msgsGetDrlStateRequest()
        {
        }
    }

    public sealed class Ros1Dsr_msgsGetDrlStateRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsGetDrlStateRequest>
    {
        public static readonly Ros1Dsr_msgsGetDrlStateRequestCodec Instance = new Ros1Dsr_msgsGetDrlStateRequestCodec();

        private Ros1Dsr_msgsGetDrlStateRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/GetDrlStateRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_425ce8ba966c52337c8d06a8436d593e8333a33cdb21ecdb983df3db9980d51f";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public byte[] Encode(_Ros1Dsr_msgsGetDrlStateRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsGetDrlStateRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsGetDrlStateRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsGetDrlStateRequest value = ReadRos1Dsr_msgsGetDrlStateRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsGetDrlStateRequest(_Codecs.Writer writer, _Ros1Dsr_msgsGetDrlStateRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    private static _Ros1Dsr_msgsGetDrlStateRequest ReadRos1Dsr_msgsGetDrlStateRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsGetDrlStateRequest();
        return value;
    }

    public sealed class _Ros1Dsr_msgsGetDrlStateResponse
    {
        public sbyte @drl_state = 0;

        public _Ros1Dsr_msgsGetDrlStateResponse()
        {
        }
    }

    public sealed class Ros1Dsr_msgsGetDrlStateResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsGetDrlStateResponse>
    {
        public static readonly Ros1Dsr_msgsGetDrlStateResponseCodec Instance = new Ros1Dsr_msgsGetDrlStateResponseCodec();

        private Ros1Dsr_msgsGetDrlStateResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/GetDrlStateResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_d8238b34c53f1da07057059fadfc1bbc767be38453b0410a90bccb84d99d1a94";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros1Dsr_msgsGetDrlStateResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsGetDrlStateResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsGetDrlStateResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsGetDrlStateResponse value = ReadRos1Dsr_msgsGetDrlStateResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsGetDrlStateResponse(_Codecs.Writer writer, _Ros1Dsr_msgsGetDrlStateResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        sbyte part0 = value.@drl_state;
        writer.Unsigned(unchecked((byte)part0), 1);
    }

    private static _Ros1Dsr_msgsGetDrlStateResponse ReadRos1Dsr_msgsGetDrlStateResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsGetDrlStateResponse();
        value.@drl_state = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    public sealed class _Ros1Dsr_msgsGetExternalTorqueRequest
    {
        public _Ros1Dsr_msgsGetExternalTorqueRequest()
        {
        }
    }

    public sealed class Ros1Dsr_msgsGetExternalTorqueRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsGetExternalTorqueRequest>
    {
        public static readonly Ros1Dsr_msgsGetExternalTorqueRequestCodec Instance = new Ros1Dsr_msgsGetExternalTorqueRequestCodec();

        private Ros1Dsr_msgsGetExternalTorqueRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/GetExternalTorqueRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_601bfc2f1283520f2dd76e3f0eee05c02e584873e22b2188f6206cc22d96ee11";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public byte[] Encode(_Ros1Dsr_msgsGetExternalTorqueRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsGetExternalTorqueRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsGetExternalTorqueRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsGetExternalTorqueRequest value = ReadRos1Dsr_msgsGetExternalTorqueRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsGetExternalTorqueRequest(_Codecs.Writer writer, _Ros1Dsr_msgsGetExternalTorqueRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    private static _Ros1Dsr_msgsGetExternalTorqueRequest ReadRos1Dsr_msgsGetExternalTorqueRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsGetExternalTorqueRequest();
        return value;
    }

    public sealed class _Ros1Dsr_msgsGetExternalTorqueResponse
    {
        public double[] @ext_torque = new double[6];

        public _Ros1Dsr_msgsGetExternalTorqueResponse()
        {
        }
    }

    public sealed class Ros1Dsr_msgsGetExternalTorqueResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsGetExternalTorqueResponse>
    {
        public static readonly Ros1Dsr_msgsGetExternalTorqueResponseCodec Instance = new Ros1Dsr_msgsGetExternalTorqueResponseCodec();

        private Ros1Dsr_msgsGetExternalTorqueResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/GetExternalTorqueResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_52c063acee790649e0e439390ee3c8bd4e7ac2a124911093ba0fd00f06a07ff2";
        public const int MIN_WIRE_BYTES = 48, MAX_WIRE_BYTES = 48;

        public byte[] Encode(_Ros1Dsr_msgsGetExternalTorqueResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsGetExternalTorqueResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsGetExternalTorqueResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsGetExternalTorqueResponse value = ReadRos1Dsr_msgsGetExternalTorqueResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsGetExternalTorqueResponse(_Codecs.Writer writer, _Ros1Dsr_msgsGetExternalTorqueResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        double[] part0 = value.@ext_torque;
        if(part0 == null || part0.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part0.Length; ++index)
        {
            double element = part0[index];
            writer.Float64(element);
        }
    }

    private static _Ros1Dsr_msgsGetExternalTorqueResponse ReadRos1Dsr_msgsGetExternalTorqueResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsGetExternalTorqueResponse();
        value.@ext_torque = new double[6];
        for(int index = 0; index < value.@ext_torque.Length; ++index)
            value.@ext_torque[index] = reader.Float64();
        return value;
    }

    public sealed class _Ros1Dsr_msgsGetJointTorqueRequest
    {
        public _Ros1Dsr_msgsGetJointTorqueRequest()
        {
        }
    }

    public sealed class Ros1Dsr_msgsGetJointTorqueRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsGetJointTorqueRequest>
    {
        public static readonly Ros1Dsr_msgsGetJointTorqueRequestCodec Instance = new Ros1Dsr_msgsGetJointTorqueRequestCodec();

        private Ros1Dsr_msgsGetJointTorqueRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/GetJointTorqueRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_63dee3592e81bf9c2442ba8f01660710ef80c01c3ab55a73c35404da2d6da149";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public byte[] Encode(_Ros1Dsr_msgsGetJointTorqueRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsGetJointTorqueRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsGetJointTorqueRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsGetJointTorqueRequest value = ReadRos1Dsr_msgsGetJointTorqueRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsGetJointTorqueRequest(_Codecs.Writer writer, _Ros1Dsr_msgsGetJointTorqueRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    private static _Ros1Dsr_msgsGetJointTorqueRequest ReadRos1Dsr_msgsGetJointTorqueRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsGetJointTorqueRequest();
        return value;
    }

    public sealed class _Ros1Dsr_msgsGetJointTorqueResponse
    {
        public double[] @joint_torque = new double[6];

        public _Ros1Dsr_msgsGetJointTorqueResponse()
        {
        }
    }

    public sealed class Ros1Dsr_msgsGetJointTorqueResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsGetJointTorqueResponse>
    {
        public static readonly Ros1Dsr_msgsGetJointTorqueResponseCodec Instance = new Ros1Dsr_msgsGetJointTorqueResponseCodec();

        private Ros1Dsr_msgsGetJointTorqueResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/GetJointTorqueResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_25bda80075428cb48858ba2ab3d38b52d4fe631596e919c001cf1a4f96391bf1";
        public const int MIN_WIRE_BYTES = 48, MAX_WIRE_BYTES = 48;

        public byte[] Encode(_Ros1Dsr_msgsGetJointTorqueResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsGetJointTorqueResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsGetJointTorqueResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsGetJointTorqueResponse value = ReadRos1Dsr_msgsGetJointTorqueResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsGetJointTorqueResponse(_Codecs.Writer writer, _Ros1Dsr_msgsGetJointTorqueResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        double[] part0 = value.@joint_torque;
        if(part0 == null || part0.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part0.Length; ++index)
        {
            double element = part0[index];
            writer.Float64(element);
        }
    }

    private static _Ros1Dsr_msgsGetJointTorqueResponse ReadRos1Dsr_msgsGetJointTorqueResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsGetJointTorqueResponse();
        value.@joint_torque = new double[6];
        for(int index = 0; index < value.@joint_torque.Length; ++index)
            value.@joint_torque[index] = reader.Float64();
        return value;
    }

    public sealed class _Ros1Dsr_msgsGetLastAlarmRequest
    {
        public _Ros1Dsr_msgsGetLastAlarmRequest()
        {
        }
    }

    public sealed class Ros1Dsr_msgsGetLastAlarmRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsGetLastAlarmRequest>
    {
        public static readonly Ros1Dsr_msgsGetLastAlarmRequestCodec Instance = new Ros1Dsr_msgsGetLastAlarmRequestCodec();

        private Ros1Dsr_msgsGetLastAlarmRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/GetLastAlarmRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_4ff39c1f6b320245fd73e84755fe876eb12177c4a7b3ac3888d870ec5a761bdf";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public byte[] Encode(_Ros1Dsr_msgsGetLastAlarmRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsGetLastAlarmRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsGetLastAlarmRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsGetLastAlarmRequest value = ReadRos1Dsr_msgsGetLastAlarmRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsGetLastAlarmRequest(_Codecs.Writer writer, _Ros1Dsr_msgsGetLastAlarmRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    private static _Ros1Dsr_msgsGetLastAlarmRequest ReadRos1Dsr_msgsGetLastAlarmRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsGetLastAlarmRequest();
        return value;
    }

    public sealed class _Ros1Dsr_msgsLogAlarm
    {
        public int @level = 0;
        public int @group = 0;
        public int @index = 0;
        public string[] @param = new string[3];

        public _Ros1Dsr_msgsLogAlarm()
        {
            for(int index = 0; index < 3; ++index)
                this.@param[index] = "";
        }
    }

    public sealed class Ros1Dsr_msgsLogAlarmCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsLogAlarm>
    {
        public static readonly Ros1Dsr_msgsLogAlarmCodec Instance = new Ros1Dsr_msgsLogAlarmCodec();

        private Ros1Dsr_msgsLogAlarmCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/LogAlarm";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_39a6ecc178ed79ab41cd3948b6efb9666f66b0c33b6abe7845b1d16a17f9700f";
        public const int MIN_WIRE_BYTES = 24, MAX_WIRE_BYTES = 792;

        public byte[] Encode(_Ros1Dsr_msgsLogAlarm value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsLogAlarm(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsLogAlarm Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsLogAlarm value = ReadRos1Dsr_msgsLogAlarm(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsLogAlarm(_Codecs.Writer writer, _Ros1Dsr_msgsLogAlarm value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        int part0 = value.@level;
        writer.Unsigned(unchecked((uint)part0), 4);
        int part1 = value.@group;
        writer.Unsigned(unchecked((uint)part1), 4);
        int part2 = value.@index;
        writer.Unsigned(unchecked((uint)part2), 4);
        string[] part3 = value.@param;
        if(part3 == null || part3.Length != 3)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part3.Length; ++index)
        {
            string element = part3[index];
            WriteText(writer, element, 256);
        }
    }

    private static _Ros1Dsr_msgsLogAlarm ReadRos1Dsr_msgsLogAlarm(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsLogAlarm();
        value.@level = unchecked((int)reader.Unsigned(4));
        value.@group = unchecked((int)reader.Unsigned(4));
        value.@index = unchecked((int)reader.Unsigned(4));
        value.@param = new string[3];
        for(int index = 0; index < value.@param.Length; ++index)
            value.@param[index] = ReadText(reader, 256);
        return value;
    }

    public sealed class _Ros1Dsr_msgsGetLastAlarmResponse
    {
        public _Ros1Dsr_msgsLogAlarm @log_alarm = new _Ros1Dsr_msgsLogAlarm();

        public _Ros1Dsr_msgsGetLastAlarmResponse()
        {
        }
    }

    public sealed class Ros1Dsr_msgsGetLastAlarmResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsGetLastAlarmResponse>
    {
        public static readonly Ros1Dsr_msgsGetLastAlarmResponseCodec Instance = new Ros1Dsr_msgsGetLastAlarmResponseCodec();

        private Ros1Dsr_msgsGetLastAlarmResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/GetLastAlarmResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_cbf970486efc6fc6dbda7ecfd673f3642f228b27e1a406156d2592d71467995c";
        public const int MIN_WIRE_BYTES = 24, MAX_WIRE_BYTES = 792;

        public byte[] Encode(_Ros1Dsr_msgsGetLastAlarmResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsGetLastAlarmResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsGetLastAlarmResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsGetLastAlarmResponse value = ReadRos1Dsr_msgsGetLastAlarmResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsGetLastAlarmResponse(_Codecs.Writer writer, _Ros1Dsr_msgsGetLastAlarmResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros1Dsr_msgsLogAlarm part0 = value.@log_alarm;
        WriteRos1Dsr_msgsLogAlarm(writer, part0);
    }

    private static _Ros1Dsr_msgsGetLastAlarmResponse ReadRos1Dsr_msgsGetLastAlarmResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsGetLastAlarmResponse();
        value.@log_alarm = ReadRos1Dsr_msgsLogAlarm(reader);
        return value;
    }

    public sealed class _Ros1Dsr_msgsGetModbusInputRequest
    {
        public string @name = "";

        public _Ros1Dsr_msgsGetModbusInputRequest()
        {
        }
    }

    public sealed class Ros1Dsr_msgsGetModbusInputRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsGetModbusInputRequest>
    {
        public static readonly Ros1Dsr_msgsGetModbusInputRequestCodec Instance = new Ros1Dsr_msgsGetModbusInputRequestCodec();

        private Ros1Dsr_msgsGetModbusInputRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/GetModbusInputRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_812e7d2d259db6a466dd304239aee910848a1fb9059c431f3495825d8ebe800c";
        public const int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 260;

        public byte[] Encode(_Ros1Dsr_msgsGetModbusInputRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsGetModbusInputRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsGetModbusInputRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsGetModbusInputRequest value = ReadRos1Dsr_msgsGetModbusInputRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsGetModbusInputRequest(_Codecs.Writer writer, _Ros1Dsr_msgsGetModbusInputRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        string part0 = value.@name;
        WriteText(writer, part0, 256);
    }

    private static _Ros1Dsr_msgsGetModbusInputRequest ReadRos1Dsr_msgsGetModbusInputRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsGetModbusInputRequest();
        value.@name = ReadText(reader, 256);
        return value;
    }

    public sealed class _Ros1Dsr_msgsGetModbusInputResponse
    {
        public int @value = 0;

        public _Ros1Dsr_msgsGetModbusInputResponse()
        {
        }
    }

    public sealed class Ros1Dsr_msgsGetModbusInputResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsGetModbusInputResponse>
    {
        public static readonly Ros1Dsr_msgsGetModbusInputResponseCodec Instance = new Ros1Dsr_msgsGetModbusInputResponseCodec();

        private Ros1Dsr_msgsGetModbusInputResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/GetModbusInputResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_5a9baa85959370b7562c32510a9ebe6bd48ccb01b5d71d3898126e69fe60afb3";
        public const int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 4;

        public byte[] Encode(_Ros1Dsr_msgsGetModbusInputResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsGetModbusInputResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsGetModbusInputResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsGetModbusInputResponse value = ReadRos1Dsr_msgsGetModbusInputResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsGetModbusInputResponse(_Codecs.Writer writer, _Ros1Dsr_msgsGetModbusInputResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        int part0 = value.@value;
        writer.Unsigned(unchecked((uint)part0), 4);
    }

    private static _Ros1Dsr_msgsGetModbusInputResponse ReadRos1Dsr_msgsGetModbusInputResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsGetModbusInputResponse();
        value.@value = unchecked((int)reader.Unsigned(4));
        return value;
    }

    public sealed class _Ros1Dsr_msgsGetRobotModeRequest
    {
        public _Ros1Dsr_msgsGetRobotModeRequest()
        {
        }
    }

    public sealed class Ros1Dsr_msgsGetRobotModeRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsGetRobotModeRequest>
    {
        public static readonly Ros1Dsr_msgsGetRobotModeRequestCodec Instance = new Ros1Dsr_msgsGetRobotModeRequestCodec();

        private Ros1Dsr_msgsGetRobotModeRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/GetRobotModeRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_228237c16ea308e25d1a5fb7f74713a31a67e6e1e6b0a94f06c30264ed90af90";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public byte[] Encode(_Ros1Dsr_msgsGetRobotModeRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsGetRobotModeRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsGetRobotModeRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsGetRobotModeRequest value = ReadRos1Dsr_msgsGetRobotModeRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsGetRobotModeRequest(_Codecs.Writer writer, _Ros1Dsr_msgsGetRobotModeRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    private static _Ros1Dsr_msgsGetRobotModeRequest ReadRos1Dsr_msgsGetRobotModeRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsGetRobotModeRequest();
        return value;
    }

    public sealed class _Ros1Dsr_msgsGetRobotModeResponse
    {
        public sbyte @robot_mode = 0;

        public _Ros1Dsr_msgsGetRobotModeResponse()
        {
        }
    }

    public sealed class Ros1Dsr_msgsGetRobotModeResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsGetRobotModeResponse>
    {
        public static readonly Ros1Dsr_msgsGetRobotModeResponseCodec Instance = new Ros1Dsr_msgsGetRobotModeResponseCodec();

        private Ros1Dsr_msgsGetRobotModeResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/GetRobotModeResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_3049e13cf2157e75860253953231b258ac495b2fc424aa2c6343fcf0f91044b5";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros1Dsr_msgsGetRobotModeResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsGetRobotModeResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsGetRobotModeResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsGetRobotModeResponse value = ReadRos1Dsr_msgsGetRobotModeResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsGetRobotModeResponse(_Codecs.Writer writer, _Ros1Dsr_msgsGetRobotModeResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        sbyte part0 = value.@robot_mode;
        writer.Unsigned(unchecked((byte)part0), 1);
    }

    private static _Ros1Dsr_msgsGetRobotModeResponse ReadRos1Dsr_msgsGetRobotModeResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsGetRobotModeResponse();
        value.@robot_mode = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    public sealed class _Ros1Dsr_msgsGetRobotSpeedModeRequest
    {
        public _Ros1Dsr_msgsGetRobotSpeedModeRequest()
        {
        }
    }

    public sealed class Ros1Dsr_msgsGetRobotSpeedModeRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsGetRobotSpeedModeRequest>
    {
        public static readonly Ros1Dsr_msgsGetRobotSpeedModeRequestCodec Instance = new Ros1Dsr_msgsGetRobotSpeedModeRequestCodec();

        private Ros1Dsr_msgsGetRobotSpeedModeRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/GetRobotSpeedModeRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_ff02ad740851d4dc6955206ffa3556f6564854bd6edd6a8190ce44f8ba9709d4";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public byte[] Encode(_Ros1Dsr_msgsGetRobotSpeedModeRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsGetRobotSpeedModeRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsGetRobotSpeedModeRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsGetRobotSpeedModeRequest value = ReadRos1Dsr_msgsGetRobotSpeedModeRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsGetRobotSpeedModeRequest(_Codecs.Writer writer, _Ros1Dsr_msgsGetRobotSpeedModeRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    private static _Ros1Dsr_msgsGetRobotSpeedModeRequest ReadRos1Dsr_msgsGetRobotSpeedModeRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsGetRobotSpeedModeRequest();
        return value;
    }

    public sealed class _Ros1Dsr_msgsGetRobotSpeedModeResponse
    {
        public sbyte @speed_mode = 0;

        public _Ros1Dsr_msgsGetRobotSpeedModeResponse()
        {
        }
    }

    public sealed class Ros1Dsr_msgsGetRobotSpeedModeResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsGetRobotSpeedModeResponse>
    {
        public static readonly Ros1Dsr_msgsGetRobotSpeedModeResponseCodec Instance = new Ros1Dsr_msgsGetRobotSpeedModeResponseCodec();

        private Ros1Dsr_msgsGetRobotSpeedModeResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/GetRobotSpeedModeResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_e67a5a94c55ea30657ecdf83201cac431e89c11817bb12831d31023d4fd2cec1";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros1Dsr_msgsGetRobotSpeedModeResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsGetRobotSpeedModeResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsGetRobotSpeedModeResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsGetRobotSpeedModeResponse value = ReadRos1Dsr_msgsGetRobotSpeedModeResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsGetRobotSpeedModeResponse(_Codecs.Writer writer, _Ros1Dsr_msgsGetRobotSpeedModeResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        sbyte part0 = value.@speed_mode;
        writer.Unsigned(unchecked((byte)part0), 1);
    }

    private static _Ros1Dsr_msgsGetRobotSpeedModeResponse ReadRos1Dsr_msgsGetRobotSpeedModeResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsGetRobotSpeedModeResponse();
        value.@speed_mode = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    public sealed class _Ros1Dsr_msgsGetRobotStateRequest
    {
        public _Ros1Dsr_msgsGetRobotStateRequest()
        {
        }
    }

    public sealed class Ros1Dsr_msgsGetRobotStateRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsGetRobotStateRequest>
    {
        public static readonly Ros1Dsr_msgsGetRobotStateRequestCodec Instance = new Ros1Dsr_msgsGetRobotStateRequestCodec();

        private Ros1Dsr_msgsGetRobotStateRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/GetRobotStateRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_b773b6fe4f08ade05cc0bac7e0d70cb7edcfa763f83608d944bf072da4ad08bc";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public byte[] Encode(_Ros1Dsr_msgsGetRobotStateRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsGetRobotStateRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsGetRobotStateRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsGetRobotStateRequest value = ReadRos1Dsr_msgsGetRobotStateRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsGetRobotStateRequest(_Codecs.Writer writer, _Ros1Dsr_msgsGetRobotStateRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    private static _Ros1Dsr_msgsGetRobotStateRequest ReadRos1Dsr_msgsGetRobotStateRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsGetRobotStateRequest();
        return value;
    }

    public sealed class _Ros1Dsr_msgsGetRobotStateResponse
    {
        public sbyte @robot_state = 0;

        public _Ros1Dsr_msgsGetRobotStateResponse()
        {
        }
    }

    public sealed class Ros1Dsr_msgsGetRobotStateResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsGetRobotStateResponse>
    {
        public static readonly Ros1Dsr_msgsGetRobotStateResponseCodec Instance = new Ros1Dsr_msgsGetRobotStateResponseCodec();

        private Ros1Dsr_msgsGetRobotStateResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/GetRobotStateResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_2fdea6418150a77db99b9e1bcecb11a9a10f826690b18853d6adfbdc2b6f8d4d";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros1Dsr_msgsGetRobotStateResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsGetRobotStateResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsGetRobotStateResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsGetRobotStateResponse value = ReadRos1Dsr_msgsGetRobotStateResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsGetRobotStateResponse(_Codecs.Writer writer, _Ros1Dsr_msgsGetRobotStateResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        sbyte part0 = value.@robot_state;
        writer.Unsigned(unchecked((byte)part0), 1);
    }

    private static _Ros1Dsr_msgsGetRobotStateResponse ReadRos1Dsr_msgsGetRobotStateResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsGetRobotStateResponse();
        value.@robot_state = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    public sealed class _Ros1Dsr_msgsGetRobotSystemRequest
    {
        public _Ros1Dsr_msgsGetRobotSystemRequest()
        {
        }
    }

    public sealed class Ros1Dsr_msgsGetRobotSystemRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsGetRobotSystemRequest>
    {
        public static readonly Ros1Dsr_msgsGetRobotSystemRequestCodec Instance = new Ros1Dsr_msgsGetRobotSystemRequestCodec();

        private Ros1Dsr_msgsGetRobotSystemRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/GetRobotSystemRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_43cc52a8d4b5e36ace679eb3f5bad943b3052bb0dec9f8af6f58f2d5c7deb203";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public byte[] Encode(_Ros1Dsr_msgsGetRobotSystemRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsGetRobotSystemRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsGetRobotSystemRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsGetRobotSystemRequest value = ReadRos1Dsr_msgsGetRobotSystemRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsGetRobotSystemRequest(_Codecs.Writer writer, _Ros1Dsr_msgsGetRobotSystemRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    private static _Ros1Dsr_msgsGetRobotSystemRequest ReadRos1Dsr_msgsGetRobotSystemRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsGetRobotSystemRequest();
        return value;
    }

    public sealed class _Ros1Dsr_msgsGetRobotSystemResponse
    {
        public sbyte @robot_system = 0;

        public _Ros1Dsr_msgsGetRobotSystemResponse()
        {
        }
    }

    public sealed class Ros1Dsr_msgsGetRobotSystemResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsGetRobotSystemResponse>
    {
        public static readonly Ros1Dsr_msgsGetRobotSystemResponseCodec Instance = new Ros1Dsr_msgsGetRobotSystemResponseCodec();

        private Ros1Dsr_msgsGetRobotSystemResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/GetRobotSystemResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_ecdbadad1fa8a9e22bf20bbb5c7aa489b739a6d0ef725ea20e37d50feb92a570";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros1Dsr_msgsGetRobotSystemResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsGetRobotSystemResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsGetRobotSystemResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsGetRobotSystemResponse value = ReadRos1Dsr_msgsGetRobotSystemResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsGetRobotSystemResponse(_Codecs.Writer writer, _Ros1Dsr_msgsGetRobotSystemResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        sbyte part0 = value.@robot_system;
        writer.Unsigned(unchecked((byte)part0), 1);
    }

    private static _Ros1Dsr_msgsGetRobotSystemResponse ReadRos1Dsr_msgsGetRobotSystemResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsGetRobotSystemResponse();
        value.@robot_system = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    public sealed class _Ros1Dsr_msgsGetToolDigitalInputRequest
    {
        public sbyte @index = 0;

        public _Ros1Dsr_msgsGetToolDigitalInputRequest()
        {
        }
    }

    public sealed class Ros1Dsr_msgsGetToolDigitalInputRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsGetToolDigitalInputRequest>
    {
        public static readonly Ros1Dsr_msgsGetToolDigitalInputRequestCodec Instance = new Ros1Dsr_msgsGetToolDigitalInputRequestCodec();

        private Ros1Dsr_msgsGetToolDigitalInputRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/GetToolDigitalInputRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_a8fa1714fc6c5d9082f6909ad8562c87e1bd95e40168701c1dc670e614b5dd70";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros1Dsr_msgsGetToolDigitalInputRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsGetToolDigitalInputRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsGetToolDigitalInputRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsGetToolDigitalInputRequest value = ReadRos1Dsr_msgsGetToolDigitalInputRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsGetToolDigitalInputRequest(_Codecs.Writer writer, _Ros1Dsr_msgsGetToolDigitalInputRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        sbyte part0 = value.@index;
        writer.Unsigned(unchecked((byte)part0), 1);
    }

    private static _Ros1Dsr_msgsGetToolDigitalInputRequest ReadRos1Dsr_msgsGetToolDigitalInputRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsGetToolDigitalInputRequest();
        value.@index = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    public sealed class _Ros1Dsr_msgsGetToolDigitalInputResponse
    {
        public bool @value = false;

        public _Ros1Dsr_msgsGetToolDigitalInputResponse()
        {
        }
    }

    public sealed class Ros1Dsr_msgsGetToolDigitalInputResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsGetToolDigitalInputResponse>
    {
        public static readonly Ros1Dsr_msgsGetToolDigitalInputResponseCodec Instance = new Ros1Dsr_msgsGetToolDigitalInputResponseCodec();

        private Ros1Dsr_msgsGetToolDigitalInputResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/GetToolDigitalInputResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_ee2a97dbab5eb6f818d5165e68ebc9077f8ebae391f79445f35205158e0d7f92";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros1Dsr_msgsGetToolDigitalInputResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsGetToolDigitalInputResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsGetToolDigitalInputResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsGetToolDigitalInputResponse value = ReadRos1Dsr_msgsGetToolDigitalInputResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsGetToolDigitalInputResponse(_Codecs.Writer writer, _Ros1Dsr_msgsGetToolDigitalInputResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@value;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros1Dsr_msgsGetToolDigitalInputResponse ReadRos1Dsr_msgsGetToolDigitalInputResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsGetToolDigitalInputResponse();
        value.@value = ReadBool(reader);
        return value;
    }

    public sealed class _Ros1Dsr_msgsGetToolForceRequest
    {
        public _Ros1Dsr_msgsGetToolForceRequest()
        {
        }
    }

    public sealed class Ros1Dsr_msgsGetToolForceRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsGetToolForceRequest>
    {
        public static readonly Ros1Dsr_msgsGetToolForceRequestCodec Instance = new Ros1Dsr_msgsGetToolForceRequestCodec();

        private Ros1Dsr_msgsGetToolForceRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/GetToolForceRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_27ccf47d48432cce678c6dad5ecff2aac258f4b17e4172556fa05183bc5111b7";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public byte[] Encode(_Ros1Dsr_msgsGetToolForceRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsGetToolForceRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsGetToolForceRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsGetToolForceRequest value = ReadRos1Dsr_msgsGetToolForceRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsGetToolForceRequest(_Codecs.Writer writer, _Ros1Dsr_msgsGetToolForceRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    private static _Ros1Dsr_msgsGetToolForceRequest ReadRos1Dsr_msgsGetToolForceRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsGetToolForceRequest();
        return value;
    }

    public sealed class _Ros1Dsr_msgsGetToolForceResponse
    {
        public double[] @tool_force = new double[6];

        public _Ros1Dsr_msgsGetToolForceResponse()
        {
        }
    }

    public sealed class Ros1Dsr_msgsGetToolForceResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsGetToolForceResponse>
    {
        public static readonly Ros1Dsr_msgsGetToolForceResponseCodec Instance = new Ros1Dsr_msgsGetToolForceResponseCodec();

        private Ros1Dsr_msgsGetToolForceResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/GetToolForceResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_752d1690a4d3b7b6842ce45d1ae599de4cbfdde9bf7da96193cbf3a9e4205026";
        public const int MIN_WIRE_BYTES = 48, MAX_WIRE_BYTES = 48;

        public byte[] Encode(_Ros1Dsr_msgsGetToolForceResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsGetToolForceResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsGetToolForceResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsGetToolForceResponse value = ReadRos1Dsr_msgsGetToolForceResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsGetToolForceResponse(_Codecs.Writer writer, _Ros1Dsr_msgsGetToolForceResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        double[] part0 = value.@tool_force;
        if(part0 == null || part0.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part0.Length; ++index)
        {
            double element = part0[index];
            writer.Float64(element);
        }
    }

    private static _Ros1Dsr_msgsGetToolForceResponse ReadRos1Dsr_msgsGetToolForceResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsGetToolForceResponse();
        value.@tool_force = new double[6];
        for(int index = 0; index < value.@tool_force.Length; ++index)
            value.@tool_force[index] = reader.Float64();
        return value;
    }

    public sealed class _Ros1Dsr_msgsJogRequest
    {
        public sbyte @jog_axis = 0;
        public sbyte @move_reference = 0;
        public double @speed = 0;

        public _Ros1Dsr_msgsJogRequest()
        {
        }
    }

    public sealed class Ros1Dsr_msgsJogRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsJogRequest>
    {
        public static readonly Ros1Dsr_msgsJogRequestCodec Instance = new Ros1Dsr_msgsJogRequestCodec();

        private Ros1Dsr_msgsJogRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/JogRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_28c6930998059030e74613930bd86066b3a37a490f7f438395eed15570617f7a";
        public const int MIN_WIRE_BYTES = 10, MAX_WIRE_BYTES = 10;

        public byte[] Encode(_Ros1Dsr_msgsJogRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsJogRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsJogRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsJogRequest value = ReadRos1Dsr_msgsJogRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsJogRequest(_Codecs.Writer writer, _Ros1Dsr_msgsJogRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        sbyte part0 = value.@jog_axis;
        writer.Unsigned(unchecked((byte)part0), 1);
        sbyte part1 = value.@move_reference;
        writer.Unsigned(unchecked((byte)part1), 1);
        double part2 = value.@speed;
        writer.Float64(part2);
    }

    private static _Ros1Dsr_msgsJogRequest ReadRos1Dsr_msgsJogRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsJogRequest();
        value.@jog_axis = unchecked((sbyte)reader.Unsigned(1));
        value.@move_reference = unchecked((sbyte)reader.Unsigned(1));
        value.@speed = reader.Float64();
        return value;
    }

    public sealed class _Ros1Dsr_msgsJogResponse
    {
        public bool @success = false;

        public _Ros1Dsr_msgsJogResponse()
        {
        }
    }

    public sealed class Ros1Dsr_msgsJogResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsJogResponse>
    {
        public static readonly Ros1Dsr_msgsJogResponseCodec Instance = new Ros1Dsr_msgsJogResponseCodec();

        private Ros1Dsr_msgsJogResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/JogResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_f87fba5fb96bd9ae52d16a519b20ca7ea2c17560b15bd8543a9484282e1967d7";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros1Dsr_msgsJogResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsJogResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsJogResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsJogResponse value = ReadRos1Dsr_msgsJogResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsJogResponse(_Codecs.Writer writer, _Ros1Dsr_msgsJogResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros1Dsr_msgsJogResponse ReadRos1Dsr_msgsJogResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsJogResponse();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros1Dsr_msgsJogMultiRequest
    {
        public double[] @jog_axis = new double[6];
        public sbyte @move_reference = 0;
        public double @speed = 0;

        public _Ros1Dsr_msgsJogMultiRequest()
        {
        }
    }

    public sealed class Ros1Dsr_msgsJogMultiRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsJogMultiRequest>
    {
        public static readonly Ros1Dsr_msgsJogMultiRequestCodec Instance = new Ros1Dsr_msgsJogMultiRequestCodec();

        private Ros1Dsr_msgsJogMultiRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/JogMultiRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_f24271474302516dfce0dde848b2420490c35800b12d2fbdf5250ebbffc25cea";
        public const int MIN_WIRE_BYTES = 57, MAX_WIRE_BYTES = 57;

        public byte[] Encode(_Ros1Dsr_msgsJogMultiRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsJogMultiRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsJogMultiRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsJogMultiRequest value = ReadRos1Dsr_msgsJogMultiRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsJogMultiRequest(_Codecs.Writer writer, _Ros1Dsr_msgsJogMultiRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        double[] part0 = value.@jog_axis;
        if(part0 == null || part0.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part0.Length; ++index)
        {
            double element = part0[index];
            writer.Float64(element);
        }
        sbyte part1 = value.@move_reference;
        writer.Unsigned(unchecked((byte)part1), 1);
        double part2 = value.@speed;
        writer.Float64(part2);
    }

    private static _Ros1Dsr_msgsJogMultiRequest ReadRos1Dsr_msgsJogMultiRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsJogMultiRequest();
        value.@jog_axis = new double[6];
        for(int index = 0; index < value.@jog_axis.Length; ++index)
            value.@jog_axis[index] = reader.Float64();
        value.@move_reference = unchecked((sbyte)reader.Unsigned(1));
        value.@speed = reader.Float64();
        return value;
    }

    public sealed class _Ros1Dsr_msgsJogMultiResponse
    {
        public bool @success = false;

        public _Ros1Dsr_msgsJogMultiResponse()
        {
        }
    }

    public sealed class Ros1Dsr_msgsJogMultiResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsJogMultiResponse>
    {
        public static readonly Ros1Dsr_msgsJogMultiResponseCodec Instance = new Ros1Dsr_msgsJogMultiResponseCodec();

        private Ros1Dsr_msgsJogMultiResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/JogMultiResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_fecf5222e690c35fe0503c56d12e06b375d55ffab9ea0bbef96270729305a64a";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros1Dsr_msgsJogMultiResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsJogMultiResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsJogMultiResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsJogMultiResponse value = ReadRos1Dsr_msgsJogMultiResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsJogMultiResponse(_Codecs.Writer writer, _Ros1Dsr_msgsJogMultiResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros1Dsr_msgsJogMultiResponse ReadRos1Dsr_msgsJogMultiResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsJogMultiResponse();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros1Dsr_msgsJogMultiAxis
    {
        public double[] @jog_axis = new double[6];
        public sbyte @move_reference = 0;
        public double @speed = 0;

        public _Ros1Dsr_msgsJogMultiAxis()
        {
        }
    }

    public sealed class Ros1Dsr_msgsJogMultiAxisCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsJogMultiAxis>
    {
        public static readonly Ros1Dsr_msgsJogMultiAxisCodec Instance = new Ros1Dsr_msgsJogMultiAxisCodec();

        private Ros1Dsr_msgsJogMultiAxisCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/JogMultiAxis";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_ee64c6ccdfa3726ebbfc0b3779f878cbbece6fe878cbfbc14fa45eed4486de02";
        public const int MIN_WIRE_BYTES = 57, MAX_WIRE_BYTES = 57;

        public byte[] Encode(_Ros1Dsr_msgsJogMultiAxis value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsJogMultiAxis(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsJogMultiAxis Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsJogMultiAxis value = ReadRos1Dsr_msgsJogMultiAxis(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsJogMultiAxis(_Codecs.Writer writer, _Ros1Dsr_msgsJogMultiAxis value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        double[] part0 = value.@jog_axis;
        if(part0 == null || part0.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part0.Length; ++index)
        {
            double element = part0[index];
            writer.Float64(element);
        }
        sbyte part1 = value.@move_reference;
        writer.Unsigned(unchecked((byte)part1), 1);
        double part2 = value.@speed;
        writer.Float64(part2);
    }

    private static _Ros1Dsr_msgsJogMultiAxis ReadRos1Dsr_msgsJogMultiAxis(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsJogMultiAxis();
        value.@jog_axis = new double[6];
        for(int index = 0; index < value.@jog_axis.Length; ++index)
            value.@jog_axis[index] = reader.Float64();
        value.@move_reference = unchecked((sbyte)reader.Unsigned(1));
        value.@speed = reader.Float64();
        return value;
    }

    public sealed class _Ros1Dsr_msgsModbusState
    {
        public string @modbus_symbol = "";
        public int @modbus_value = 0;

        public _Ros1Dsr_msgsModbusState()
        {
        }
    }

    public sealed class Ros1Dsr_msgsModbusStateCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsModbusState>
    {
        public static readonly Ros1Dsr_msgsModbusStateCodec Instance = new Ros1Dsr_msgsModbusStateCodec();

        private Ros1Dsr_msgsModbusStateCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/ModbusState";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_e107e7ff86b98e9c58565f3a2889ac50ea49ecc6efb9c982d29b075086fe3ae9";
        public const int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 264;

        public byte[] Encode(_Ros1Dsr_msgsModbusState value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsModbusState(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsModbusState Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsModbusState value = ReadRos1Dsr_msgsModbusState(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsModbusState(_Codecs.Writer writer, _Ros1Dsr_msgsModbusState value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        string part0 = value.@modbus_symbol;
        WriteText(writer, part0, 256);
        int part1 = value.@modbus_value;
        writer.Unsigned(unchecked((uint)part1), 4);
    }

    private static _Ros1Dsr_msgsModbusState ReadRos1Dsr_msgsModbusState(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsModbusState();
        value.@modbus_symbol = ReadText(reader, 256);
        value.@modbus_value = unchecked((int)reader.Unsigned(4));
        return value;
    }

    public sealed class _Ros1Std_msgsMultiArrayDimension
    {
        public string @label = "";
        public uint @size = 0;
        public uint @stride = 0;

        public _Ros1Std_msgsMultiArrayDimension()
        {
        }
    }

    public sealed class Ros1Std_msgsMultiArrayDimensionCodec : global::Uwvm.RosWasm.ICodec<_Ros1Std_msgsMultiArrayDimension>
    {
        public static readonly Ros1Std_msgsMultiArrayDimensionCodec Instance = new Ros1Std_msgsMultiArrayDimensionCodec();

        private Ros1Std_msgsMultiArrayDimensionCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "std_msgs/MultiArrayDimension";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_0a279c83cc8c73db2472e3768c8e17d877bb15d72d41f4056568a279b5352444";
        public const int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 76;

        public byte[] Encode(_Ros1Std_msgsMultiArrayDimension value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Std_msgsMultiArrayDimension(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Std_msgsMultiArrayDimension Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Std_msgsMultiArrayDimension value = ReadRos1Std_msgsMultiArrayDimension(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Std_msgsMultiArrayDimension(_Codecs.Writer writer, _Ros1Std_msgsMultiArrayDimension value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        string part0 = value.@label;
        WriteText(writer, part0, 64);
        uint part1 = value.@size;
        writer.Unsigned(part1, 4);
        uint part2 = value.@stride;
        writer.Unsigned(part2, 4);
    }

    private static _Ros1Std_msgsMultiArrayDimension ReadRos1Std_msgsMultiArrayDimension(_Codecs.Reader reader)
    {
        var value = new _Ros1Std_msgsMultiArrayDimension();
        value.@label = ReadText(reader, 64);
        value.@size = unchecked((uint)reader.Unsigned(4));
        value.@stride = unchecked((uint)reader.Unsigned(4));
        return value;
    }

    public sealed class _Ros1Std_msgsMultiArrayLayout
    {
        public _Ros1Std_msgsMultiArrayDimension[] @dim = new _Ros1Std_msgsMultiArrayDimension[0];
        public uint @data_offset = 0;

        public _Ros1Std_msgsMultiArrayLayout()
        {
        }
    }

    public sealed class Ros1Std_msgsMultiArrayLayoutCodec : global::Uwvm.RosWasm.ICodec<_Ros1Std_msgsMultiArrayLayout>
    {
        public static readonly Ros1Std_msgsMultiArrayLayoutCodec Instance = new Ros1Std_msgsMultiArrayLayoutCodec();

        private Ros1Std_msgsMultiArrayLayoutCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "std_msgs/MultiArrayLayout";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_602f6ec018f567486b5ea052944a24b0d798fdad5910915337ab6a76c966603e";
        public const int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 236;

        public byte[] Encode(_Ros1Std_msgsMultiArrayLayout value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Std_msgsMultiArrayLayout(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Std_msgsMultiArrayLayout Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Std_msgsMultiArrayLayout value = ReadRos1Std_msgsMultiArrayLayout(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Std_msgsMultiArrayLayout(_Codecs.Writer writer, _Ros1Std_msgsMultiArrayLayout value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros1Std_msgsMultiArrayDimension[] part0 = value.@dim;
        if(part0 == null || part0.Length > 3)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part0.Length, 4);
        for(int index = 0; index < part0.Length; ++index)
        {
            _Ros1Std_msgsMultiArrayDimension element = part0[index];
            WriteRos1Std_msgsMultiArrayDimension(writer, element);
        }
        uint part1 = value.@data_offset;
        writer.Unsigned(part1, 4);
    }

    private static _Ros1Std_msgsMultiArrayLayout ReadRos1Std_msgsMultiArrayLayout(_Codecs.Reader reader)
    {
        var value = new _Ros1Std_msgsMultiArrayLayout();
        value.@dim = new _Ros1Std_msgsMultiArrayDimension[ReadCount(reader, 3, 12)];
        for(int index = 0; index < value.@dim.Length; ++index)
            value.@dim[index] = ReadRos1Std_msgsMultiArrayDimension(reader);
        value.@data_offset = unchecked((uint)reader.Unsigned(4));
        return value;
    }

    public sealed class _Ros1Std_msgsFloat64MultiArray
    {
        public _Ros1Std_msgsMultiArrayLayout @layout = new _Ros1Std_msgsMultiArrayLayout();
        public double[] @data = new double[0];

        public _Ros1Std_msgsFloat64MultiArray()
        {
        }
    }

    public sealed class Ros1Std_msgsFloat64MultiArrayCodec : global::Uwvm.RosWasm.ICodec<_Ros1Std_msgsFloat64MultiArray>
    {
        public static readonly Ros1Std_msgsFloat64MultiArrayCodec Instance = new Ros1Std_msgsFloat64MultiArrayCodec();

        private Ros1Std_msgsFloat64MultiArrayCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "std_msgs/Float64MultiArray";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_e75045efb9b80cdc278940f799d16f3b6f49ca4eeb67b4c095d1df4db133bdf8";
        public const int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 368;

        public byte[] Encode(_Ros1Std_msgsFloat64MultiArray value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Std_msgsFloat64MultiArray(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Std_msgsFloat64MultiArray Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Std_msgsFloat64MultiArray value = ReadRos1Std_msgsFloat64MultiArray(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Std_msgsFloat64MultiArray(_Codecs.Writer writer, _Ros1Std_msgsFloat64MultiArray value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros1Std_msgsMultiArrayLayout part0 = value.@layout;
        WriteRos1Std_msgsMultiArrayLayout(writer, part0);
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

    private static _Ros1Std_msgsFloat64MultiArray ReadRos1Std_msgsFloat64MultiArray(_Codecs.Reader reader)
    {
        var value = new _Ros1Std_msgsFloat64MultiArray();
        value.@layout = ReadRos1Std_msgsMultiArrayLayout(reader);
        value.@data = new double[ReadCount(reader, 16, 8)];
        for(int index = 0; index < value.@data.Length; ++index)
            value.@data[index] = reader.Float64();
        return value;
    }

    public sealed class _Ros1Dsr_msgsMoveBlendingRequest
    {
        public _Ros1Std_msgsFloat64MultiArray[] @segment = new _Ros1Std_msgsFloat64MultiArray[0];
        public sbyte @posCnt = 0;
        public double[] @vel = new double[2];
        public double[] @acc = new double[2];
        public double @time = 0;
        public sbyte @ref = 0;
        public sbyte @mode = 0;
        public sbyte @syncType = 0;

        public _Ros1Dsr_msgsMoveBlendingRequest()
        {
        }
    }

    public sealed class Ros1Dsr_msgsMoveBlendingRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsMoveBlendingRequest>
    {
        public static readonly Ros1Dsr_msgsMoveBlendingRequestCodec Instance = new Ros1Dsr_msgsMoveBlendingRequestCodec();

        private Ros1Dsr_msgsMoveBlendingRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/MoveBlendingRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_70b7fb3501e9677b76ed8f893883090e500be36ff8175edce8fd6d6d4f23e4e6";
        public const int MIN_WIRE_BYTES = 48, MAX_WIRE_BYTES = 2256;

        public byte[] Encode(_Ros1Dsr_msgsMoveBlendingRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsMoveBlendingRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsMoveBlendingRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsMoveBlendingRequest value = ReadRos1Dsr_msgsMoveBlendingRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsMoveBlendingRequest(_Codecs.Writer writer, _Ros1Dsr_msgsMoveBlendingRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros1Std_msgsFloat64MultiArray[] part0 = value.@segment;
        if(part0 == null || part0.Length > 6)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part0.Length, 4);
        for(int index = 0; index < part0.Length; ++index)
        {
            _Ros1Std_msgsFloat64MultiArray element = part0[index];
            WriteRos1Std_msgsFloat64MultiArray(writer, element);
        }
        sbyte part1 = value.@posCnt;
        writer.Unsigned(unchecked((byte)part1), 1);
        double[] part2 = value.@vel;
        if(part2 == null || part2.Length != 2)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part2.Length; ++index)
        {
            double element = part2[index];
            writer.Float64(element);
        }
        double[] part3 = value.@acc;
        if(part3 == null || part3.Length != 2)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part3.Length; ++index)
        {
            double element = part3[index];
            writer.Float64(element);
        }
        double part4 = value.@time;
        writer.Float64(part4);
        sbyte part5 = value.@ref;
        writer.Unsigned(unchecked((byte)part5), 1);
        sbyte part6 = value.@mode;
        writer.Unsigned(unchecked((byte)part6), 1);
        sbyte part7 = value.@syncType;
        writer.Unsigned(unchecked((byte)part7), 1);
    }

    private static _Ros1Dsr_msgsMoveBlendingRequest ReadRos1Dsr_msgsMoveBlendingRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsMoveBlendingRequest();
        value.@segment = new _Ros1Std_msgsFloat64MultiArray[ReadCount(reader, 6, 12)];
        for(int index = 0; index < value.@segment.Length; ++index)
            value.@segment[index] = ReadRos1Std_msgsFloat64MultiArray(reader);
        value.@posCnt = unchecked((sbyte)reader.Unsigned(1));
        value.@vel = new double[2];
        for(int index = 0; index < value.@vel.Length; ++index)
            value.@vel[index] = reader.Float64();
        value.@acc = new double[2];
        for(int index = 0; index < value.@acc.Length; ++index)
            value.@acc[index] = reader.Float64();
        value.@time = reader.Float64();
        value.@ref = unchecked((sbyte)reader.Unsigned(1));
        value.@mode = unchecked((sbyte)reader.Unsigned(1));
        value.@syncType = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    public sealed class _Ros1Dsr_msgsMoveBlendingResponse
    {
        public bool @success = false;

        public _Ros1Dsr_msgsMoveBlendingResponse()
        {
        }
    }

    public sealed class Ros1Dsr_msgsMoveBlendingResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsMoveBlendingResponse>
    {
        public static readonly Ros1Dsr_msgsMoveBlendingResponseCodec Instance = new Ros1Dsr_msgsMoveBlendingResponseCodec();

        private Ros1Dsr_msgsMoveBlendingResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/MoveBlendingResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_9c5697b77eaad084e9870d5ca1a1a960e22bd87137f2a1035daa9f014cc28eb6";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros1Dsr_msgsMoveBlendingResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsMoveBlendingResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsMoveBlendingResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsMoveBlendingResponse value = ReadRos1Dsr_msgsMoveBlendingResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsMoveBlendingResponse(_Codecs.Writer writer, _Ros1Dsr_msgsMoveBlendingResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros1Dsr_msgsMoveBlendingResponse ReadRos1Dsr_msgsMoveBlendingResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsMoveBlendingResponse();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros1Dsr_msgsMoveCircleRequest
    {
        public _Ros1Std_msgsFloat64MultiArray[] @pos = new _Ros1Std_msgsFloat64MultiArray[0];
        public double[] @vel = new double[2];
        public double[] @acc = new double[2];
        public double @time = 0;
        public double @radius = 0;
        public sbyte @ref = 0;
        public sbyte @mode = 0;
        public double @angle1 = 0;
        public double @angle2 = 0;
        public sbyte @blendType = 0;
        public sbyte @syncType = 0;

        public _Ros1Dsr_msgsMoveCircleRequest()
        {
        }
    }

    public sealed class Ros1Dsr_msgsMoveCircleRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsMoveCircleRequest>
    {
        public static readonly Ros1Dsr_msgsMoveCircleRequestCodec Instance = new Ros1Dsr_msgsMoveCircleRequestCodec();

        private Ros1Dsr_msgsMoveCircleRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/MoveCircleRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_39c6ea4c3b15ae9866db805863a5c5c542bbf7b104adcd81a13425719fd994f4";
        public const int MIN_WIRE_BYTES = 72, MAX_WIRE_BYTES = 2280;

        public byte[] Encode(_Ros1Dsr_msgsMoveCircleRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsMoveCircleRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsMoveCircleRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsMoveCircleRequest value = ReadRos1Dsr_msgsMoveCircleRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsMoveCircleRequest(_Codecs.Writer writer, _Ros1Dsr_msgsMoveCircleRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros1Std_msgsFloat64MultiArray[] part0 = value.@pos;
        if(part0 == null || part0.Length > 6)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part0.Length, 4);
        for(int index = 0; index < part0.Length; ++index)
        {
            _Ros1Std_msgsFloat64MultiArray element = part0[index];
            WriteRos1Std_msgsFloat64MultiArray(writer, element);
        }
        double[] part1 = value.@vel;
        if(part1 == null || part1.Length != 2)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part1.Length; ++index)
        {
            double element = part1[index];
            writer.Float64(element);
        }
        double[] part2 = value.@acc;
        if(part2 == null || part2.Length != 2)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part2.Length; ++index)
        {
            double element = part2[index];
            writer.Float64(element);
        }
        double part3 = value.@time;
        writer.Float64(part3);
        double part4 = value.@radius;
        writer.Float64(part4);
        sbyte part5 = value.@ref;
        writer.Unsigned(unchecked((byte)part5), 1);
        sbyte part6 = value.@mode;
        writer.Unsigned(unchecked((byte)part6), 1);
        double part7 = value.@angle1;
        writer.Float64(part7);
        double part8 = value.@angle2;
        writer.Float64(part8);
        sbyte part9 = value.@blendType;
        writer.Unsigned(unchecked((byte)part9), 1);
        sbyte part10 = value.@syncType;
        writer.Unsigned(unchecked((byte)part10), 1);
    }

    private static _Ros1Dsr_msgsMoveCircleRequest ReadRos1Dsr_msgsMoveCircleRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsMoveCircleRequest();
        value.@pos = new _Ros1Std_msgsFloat64MultiArray[ReadCount(reader, 6, 12)];
        for(int index = 0; index < value.@pos.Length; ++index)
            value.@pos[index] = ReadRos1Std_msgsFloat64MultiArray(reader);
        value.@vel = new double[2];
        for(int index = 0; index < value.@vel.Length; ++index)
            value.@vel[index] = reader.Float64();
        value.@acc = new double[2];
        for(int index = 0; index < value.@acc.Length; ++index)
            value.@acc[index] = reader.Float64();
        value.@time = reader.Float64();
        value.@radius = reader.Float64();
        value.@ref = unchecked((sbyte)reader.Unsigned(1));
        value.@mode = unchecked((sbyte)reader.Unsigned(1));
        value.@angle1 = reader.Float64();
        value.@angle2 = reader.Float64();
        value.@blendType = unchecked((sbyte)reader.Unsigned(1));
        value.@syncType = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    public sealed class _Ros1Dsr_msgsMoveCircleResponse
    {
        public bool @success = false;

        public _Ros1Dsr_msgsMoveCircleResponse()
        {
        }
    }

    public sealed class Ros1Dsr_msgsMoveCircleResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsMoveCircleResponse>
    {
        public static readonly Ros1Dsr_msgsMoveCircleResponseCodec Instance = new Ros1Dsr_msgsMoveCircleResponseCodec();

        private Ros1Dsr_msgsMoveCircleResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/MoveCircleResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_a5950bd2e98ce04a5b2261eec3c95f65613f3fb60d8d1779c6a8bcbb28fa42f3";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros1Dsr_msgsMoveCircleResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsMoveCircleResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsMoveCircleResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsMoveCircleResponse value = ReadRos1Dsr_msgsMoveCircleResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsMoveCircleResponse(_Codecs.Writer writer, _Ros1Dsr_msgsMoveCircleResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros1Dsr_msgsMoveCircleResponse ReadRos1Dsr_msgsMoveCircleResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsMoveCircleResponse();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros1Dsr_msgsMoveJointRequest
    {
        public double[] @pos = new double[6];
        public double @vel = 0;
        public double @acc = 0;
        public double @time = 0;
        public double @radius = 0;
        public sbyte @mode = 0;
        public sbyte @blendType = 0;
        public sbyte @syncType = 0;

        public _Ros1Dsr_msgsMoveJointRequest()
        {
        }
    }

    public sealed class Ros1Dsr_msgsMoveJointRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsMoveJointRequest>
    {
        public static readonly Ros1Dsr_msgsMoveJointRequestCodec Instance = new Ros1Dsr_msgsMoveJointRequestCodec();

        private Ros1Dsr_msgsMoveJointRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/MoveJointRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_b244b9d86649987111dd94846a98260a464ac54b9074025689028be9a1ed6a03";
        public const int MIN_WIRE_BYTES = 83, MAX_WIRE_BYTES = 83;

        public byte[] Encode(_Ros1Dsr_msgsMoveJointRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsMoveJointRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsMoveJointRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsMoveJointRequest value = ReadRos1Dsr_msgsMoveJointRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsMoveJointRequest(_Codecs.Writer writer, _Ros1Dsr_msgsMoveJointRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        double[] part0 = value.@pos;
        if(part0 == null || part0.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part0.Length; ++index)
        {
            double element = part0[index];
            writer.Float64(element);
        }
        double part1 = value.@vel;
        writer.Float64(part1);
        double part2 = value.@acc;
        writer.Float64(part2);
        double part3 = value.@time;
        writer.Float64(part3);
        double part4 = value.@radius;
        writer.Float64(part4);
        sbyte part5 = value.@mode;
        writer.Unsigned(unchecked((byte)part5), 1);
        sbyte part6 = value.@blendType;
        writer.Unsigned(unchecked((byte)part6), 1);
        sbyte part7 = value.@syncType;
        writer.Unsigned(unchecked((byte)part7), 1);
    }

    private static _Ros1Dsr_msgsMoveJointRequest ReadRos1Dsr_msgsMoveJointRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsMoveJointRequest();
        value.@pos = new double[6];
        for(int index = 0; index < value.@pos.Length; ++index)
            value.@pos[index] = reader.Float64();
        value.@vel = reader.Float64();
        value.@acc = reader.Float64();
        value.@time = reader.Float64();
        value.@radius = reader.Float64();
        value.@mode = unchecked((sbyte)reader.Unsigned(1));
        value.@blendType = unchecked((sbyte)reader.Unsigned(1));
        value.@syncType = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    public sealed class _Ros1Dsr_msgsMoveJointResponse
    {
        public bool @success = false;

        public _Ros1Dsr_msgsMoveJointResponse()
        {
        }
    }

    public sealed class Ros1Dsr_msgsMoveJointResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsMoveJointResponse>
    {
        public static readonly Ros1Dsr_msgsMoveJointResponseCodec Instance = new Ros1Dsr_msgsMoveJointResponseCodec();

        private Ros1Dsr_msgsMoveJointResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/MoveJointResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_66e1e0f7cf2043211218cd9d1c58bfb89ffaf7480a4adddb375c002321a3fcc4";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros1Dsr_msgsMoveJointResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsMoveJointResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsMoveJointResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsMoveJointResponse value = ReadRos1Dsr_msgsMoveJointResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsMoveJointResponse(_Codecs.Writer writer, _Ros1Dsr_msgsMoveJointResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros1Dsr_msgsMoveJointResponse ReadRos1Dsr_msgsMoveJointResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsMoveJointResponse();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros1Dsr_msgsMoveJointxRequest
    {
        public double[] @pos = new double[6];
        public double @vel = 0;
        public double @acc = 0;
        public double @time = 0;
        public double @radius = 0;
        public sbyte @ref = 0;
        public sbyte @mode = 0;
        public sbyte @blendType = 0;
        public sbyte @sol = 0;
        public sbyte @syncType = 0;

        public _Ros1Dsr_msgsMoveJointxRequest()
        {
        }
    }

    public sealed class Ros1Dsr_msgsMoveJointxRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsMoveJointxRequest>
    {
        public static readonly Ros1Dsr_msgsMoveJointxRequestCodec Instance = new Ros1Dsr_msgsMoveJointxRequestCodec();

        private Ros1Dsr_msgsMoveJointxRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/MoveJointxRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_d3a91ad268c65b3f4967c281c53301ec61b6aebdc4a55324103aac4d3ed392db";
        public const int MIN_WIRE_BYTES = 85, MAX_WIRE_BYTES = 85;

        public byte[] Encode(_Ros1Dsr_msgsMoveJointxRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsMoveJointxRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsMoveJointxRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsMoveJointxRequest value = ReadRos1Dsr_msgsMoveJointxRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsMoveJointxRequest(_Codecs.Writer writer, _Ros1Dsr_msgsMoveJointxRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        double[] part0 = value.@pos;
        if(part0 == null || part0.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part0.Length; ++index)
        {
            double element = part0[index];
            writer.Float64(element);
        }
        double part1 = value.@vel;
        writer.Float64(part1);
        double part2 = value.@acc;
        writer.Float64(part2);
        double part3 = value.@time;
        writer.Float64(part3);
        double part4 = value.@radius;
        writer.Float64(part4);
        sbyte part5 = value.@ref;
        writer.Unsigned(unchecked((byte)part5), 1);
        sbyte part6 = value.@mode;
        writer.Unsigned(unchecked((byte)part6), 1);
        sbyte part7 = value.@blendType;
        writer.Unsigned(unchecked((byte)part7), 1);
        sbyte part8 = value.@sol;
        writer.Unsigned(unchecked((byte)part8), 1);
        sbyte part9 = value.@syncType;
        writer.Unsigned(unchecked((byte)part9), 1);
    }

    private static _Ros1Dsr_msgsMoveJointxRequest ReadRos1Dsr_msgsMoveJointxRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsMoveJointxRequest();
        value.@pos = new double[6];
        for(int index = 0; index < value.@pos.Length; ++index)
            value.@pos[index] = reader.Float64();
        value.@vel = reader.Float64();
        value.@acc = reader.Float64();
        value.@time = reader.Float64();
        value.@radius = reader.Float64();
        value.@ref = unchecked((sbyte)reader.Unsigned(1));
        value.@mode = unchecked((sbyte)reader.Unsigned(1));
        value.@blendType = unchecked((sbyte)reader.Unsigned(1));
        value.@sol = unchecked((sbyte)reader.Unsigned(1));
        value.@syncType = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    public sealed class _Ros1Dsr_msgsMoveJointxResponse
    {
        public bool @success = false;

        public _Ros1Dsr_msgsMoveJointxResponse()
        {
        }
    }

    public sealed class Ros1Dsr_msgsMoveJointxResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsMoveJointxResponse>
    {
        public static readonly Ros1Dsr_msgsMoveJointxResponseCodec Instance = new Ros1Dsr_msgsMoveJointxResponseCodec();

        private Ros1Dsr_msgsMoveJointxResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/MoveJointxResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_9286ce396d98df17fa6cab04cd10ab449be09a07134799f09ae19082921103cc";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros1Dsr_msgsMoveJointxResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsMoveJointxResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsMoveJointxResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsMoveJointxResponse value = ReadRos1Dsr_msgsMoveJointxResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsMoveJointxResponse(_Codecs.Writer writer, _Ros1Dsr_msgsMoveJointxResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros1Dsr_msgsMoveJointxResponse ReadRos1Dsr_msgsMoveJointxResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsMoveJointxResponse();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros1Dsr_msgsMoveLineRequest
    {
        public double[] @pos = new double[6];
        public double[] @vel = new double[2];
        public double[] @acc = new double[2];
        public double @time = 0;
        public double @radius = 0;
        public sbyte @ref = 0;
        public sbyte @mode = 0;
        public sbyte @blendType = 0;
        public sbyte @syncType = 0;

        public _Ros1Dsr_msgsMoveLineRequest()
        {
        }
    }

    public sealed class Ros1Dsr_msgsMoveLineRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsMoveLineRequest>
    {
        public static readonly Ros1Dsr_msgsMoveLineRequestCodec Instance = new Ros1Dsr_msgsMoveLineRequestCodec();

        private Ros1Dsr_msgsMoveLineRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/MoveLineRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_ef69f202700bbcfb829e8eedbb7189489f4c30a6f08702f368c5e7f9493b206e";
        public const int MIN_WIRE_BYTES = 100, MAX_WIRE_BYTES = 100;

        public byte[] Encode(_Ros1Dsr_msgsMoveLineRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsMoveLineRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsMoveLineRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsMoveLineRequest value = ReadRos1Dsr_msgsMoveLineRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsMoveLineRequest(_Codecs.Writer writer, _Ros1Dsr_msgsMoveLineRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        double[] part0 = value.@pos;
        if(part0 == null || part0.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part0.Length; ++index)
        {
            double element = part0[index];
            writer.Float64(element);
        }
        double[] part1 = value.@vel;
        if(part1 == null || part1.Length != 2)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part1.Length; ++index)
        {
            double element = part1[index];
            writer.Float64(element);
        }
        double[] part2 = value.@acc;
        if(part2 == null || part2.Length != 2)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part2.Length; ++index)
        {
            double element = part2[index];
            writer.Float64(element);
        }
        double part3 = value.@time;
        writer.Float64(part3);
        double part4 = value.@radius;
        writer.Float64(part4);
        sbyte part5 = value.@ref;
        writer.Unsigned(unchecked((byte)part5), 1);
        sbyte part6 = value.@mode;
        writer.Unsigned(unchecked((byte)part6), 1);
        sbyte part7 = value.@blendType;
        writer.Unsigned(unchecked((byte)part7), 1);
        sbyte part8 = value.@syncType;
        writer.Unsigned(unchecked((byte)part8), 1);
    }

    private static _Ros1Dsr_msgsMoveLineRequest ReadRos1Dsr_msgsMoveLineRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsMoveLineRequest();
        value.@pos = new double[6];
        for(int index = 0; index < value.@pos.Length; ++index)
            value.@pos[index] = reader.Float64();
        value.@vel = new double[2];
        for(int index = 0; index < value.@vel.Length; ++index)
            value.@vel[index] = reader.Float64();
        value.@acc = new double[2];
        for(int index = 0; index < value.@acc.Length; ++index)
            value.@acc[index] = reader.Float64();
        value.@time = reader.Float64();
        value.@radius = reader.Float64();
        value.@ref = unchecked((sbyte)reader.Unsigned(1));
        value.@mode = unchecked((sbyte)reader.Unsigned(1));
        value.@blendType = unchecked((sbyte)reader.Unsigned(1));
        value.@syncType = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    public sealed class _Ros1Dsr_msgsMoveLineResponse
    {
        public bool @success = false;

        public _Ros1Dsr_msgsMoveLineResponse()
        {
        }
    }

    public sealed class Ros1Dsr_msgsMoveLineResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsMoveLineResponse>
    {
        public static readonly Ros1Dsr_msgsMoveLineResponseCodec Instance = new Ros1Dsr_msgsMoveLineResponseCodec();

        private Ros1Dsr_msgsMoveLineResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/MoveLineResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_0d316d575a341637b3cbe5a2ee68734670ca6f3f9f5035b383194b8457afe82c";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros1Dsr_msgsMoveLineResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsMoveLineResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsMoveLineResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsMoveLineResponse value = ReadRos1Dsr_msgsMoveLineResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsMoveLineResponse(_Codecs.Writer writer, _Ros1Dsr_msgsMoveLineResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros1Dsr_msgsMoveLineResponse ReadRos1Dsr_msgsMoveLineResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsMoveLineResponse();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros1Dsr_msgsMovePauseRequest
    {
        public _Ros1Dsr_msgsMovePauseRequest()
        {
        }
    }

    public sealed class Ros1Dsr_msgsMovePauseRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsMovePauseRequest>
    {
        public static readonly Ros1Dsr_msgsMovePauseRequestCodec Instance = new Ros1Dsr_msgsMovePauseRequestCodec();

        private Ros1Dsr_msgsMovePauseRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/MovePauseRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_a25b42c1e8819548bfff8d108ec661b4a1137eeafd19d8805cfecdc4d14c5f19";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public byte[] Encode(_Ros1Dsr_msgsMovePauseRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsMovePauseRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsMovePauseRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsMovePauseRequest value = ReadRos1Dsr_msgsMovePauseRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsMovePauseRequest(_Codecs.Writer writer, _Ros1Dsr_msgsMovePauseRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    private static _Ros1Dsr_msgsMovePauseRequest ReadRos1Dsr_msgsMovePauseRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsMovePauseRequest();
        return value;
    }

    public sealed class _Ros1Dsr_msgsMovePauseResponse
    {
        public bool @success = false;

        public _Ros1Dsr_msgsMovePauseResponse()
        {
        }
    }

    public sealed class Ros1Dsr_msgsMovePauseResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsMovePauseResponse>
    {
        public static readonly Ros1Dsr_msgsMovePauseResponseCodec Instance = new Ros1Dsr_msgsMovePauseResponseCodec();

        private Ros1Dsr_msgsMovePauseResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/MovePauseResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_148a3cc895846afa55520af770f76bc6118c313b5cfbf4d83d0f161b22171aed";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros1Dsr_msgsMovePauseResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsMovePauseResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsMovePauseResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsMovePauseResponse value = ReadRos1Dsr_msgsMovePauseResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsMovePauseResponse(_Codecs.Writer writer, _Ros1Dsr_msgsMovePauseResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros1Dsr_msgsMovePauseResponse ReadRos1Dsr_msgsMovePauseResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsMovePauseResponse();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros1Dsr_msgsMovePeriodicRequest
    {
        public double[] @amp = new double[6];
        public double[] @periodic = new double[6];
        public double @acc = 0;
        public sbyte @repeat = 0;
        public sbyte @ref = 0;
        public sbyte @syncType = 0;

        public _Ros1Dsr_msgsMovePeriodicRequest()
        {
        }
    }

    public sealed class Ros1Dsr_msgsMovePeriodicRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsMovePeriodicRequest>
    {
        public static readonly Ros1Dsr_msgsMovePeriodicRequestCodec Instance = new Ros1Dsr_msgsMovePeriodicRequestCodec();

        private Ros1Dsr_msgsMovePeriodicRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/MovePeriodicRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_73ffac70af9558b1be99d969ee99cf992816cf84ce97f29ef81036963fbd2d69";
        public const int MIN_WIRE_BYTES = 107, MAX_WIRE_BYTES = 107;

        public byte[] Encode(_Ros1Dsr_msgsMovePeriodicRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsMovePeriodicRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsMovePeriodicRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsMovePeriodicRequest value = ReadRos1Dsr_msgsMovePeriodicRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsMovePeriodicRequest(_Codecs.Writer writer, _Ros1Dsr_msgsMovePeriodicRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        double[] part0 = value.@amp;
        if(part0 == null || part0.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part0.Length; ++index)
        {
            double element = part0[index];
            writer.Float64(element);
        }
        double[] part1 = value.@periodic;
        if(part1 == null || part1.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part1.Length; ++index)
        {
            double element = part1[index];
            writer.Float64(element);
        }
        double part2 = value.@acc;
        writer.Float64(part2);
        sbyte part3 = value.@repeat;
        writer.Unsigned(unchecked((byte)part3), 1);
        sbyte part4 = value.@ref;
        writer.Unsigned(unchecked((byte)part4), 1);
        sbyte part5 = value.@syncType;
        writer.Unsigned(unchecked((byte)part5), 1);
    }

    private static _Ros1Dsr_msgsMovePeriodicRequest ReadRos1Dsr_msgsMovePeriodicRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsMovePeriodicRequest();
        value.@amp = new double[6];
        for(int index = 0; index < value.@amp.Length; ++index)
            value.@amp[index] = reader.Float64();
        value.@periodic = new double[6];
        for(int index = 0; index < value.@periodic.Length; ++index)
            value.@periodic[index] = reader.Float64();
        value.@acc = reader.Float64();
        value.@repeat = unchecked((sbyte)reader.Unsigned(1));
        value.@ref = unchecked((sbyte)reader.Unsigned(1));
        value.@syncType = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    public sealed class _Ros1Dsr_msgsMovePeriodicResponse
    {
        public bool @success = false;

        public _Ros1Dsr_msgsMovePeriodicResponse()
        {
        }
    }

    public sealed class Ros1Dsr_msgsMovePeriodicResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsMovePeriodicResponse>
    {
        public static readonly Ros1Dsr_msgsMovePeriodicResponseCodec Instance = new Ros1Dsr_msgsMovePeriodicResponseCodec();

        private Ros1Dsr_msgsMovePeriodicResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/MovePeriodicResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_97f5baff448319a629f79ea38696662bfca6960af28150b8dfa07902cd7393b3";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros1Dsr_msgsMovePeriodicResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsMovePeriodicResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsMovePeriodicResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsMovePeriodicResponse value = ReadRos1Dsr_msgsMovePeriodicResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsMovePeriodicResponse(_Codecs.Writer writer, _Ros1Dsr_msgsMovePeriodicResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros1Dsr_msgsMovePeriodicResponse ReadRos1Dsr_msgsMovePeriodicResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsMovePeriodicResponse();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros1Dsr_msgsMoveResumeRequest
    {
        public _Ros1Dsr_msgsMoveResumeRequest()
        {
        }
    }

    public sealed class Ros1Dsr_msgsMoveResumeRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsMoveResumeRequest>
    {
        public static readonly Ros1Dsr_msgsMoveResumeRequestCodec Instance = new Ros1Dsr_msgsMoveResumeRequestCodec();

        private Ros1Dsr_msgsMoveResumeRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/MoveResumeRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_313ed9fb87f75b7a010a658e734390145b46050b1f554f863cf6c2afb7e60f1f";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public byte[] Encode(_Ros1Dsr_msgsMoveResumeRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsMoveResumeRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsMoveResumeRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsMoveResumeRequest value = ReadRos1Dsr_msgsMoveResumeRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsMoveResumeRequest(_Codecs.Writer writer, _Ros1Dsr_msgsMoveResumeRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    private static _Ros1Dsr_msgsMoveResumeRequest ReadRos1Dsr_msgsMoveResumeRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsMoveResumeRequest();
        return value;
    }

    public sealed class _Ros1Dsr_msgsMoveResumeResponse
    {
        public bool @success = false;

        public _Ros1Dsr_msgsMoveResumeResponse()
        {
        }
    }

    public sealed class Ros1Dsr_msgsMoveResumeResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsMoveResumeResponse>
    {
        public static readonly Ros1Dsr_msgsMoveResumeResponseCodec Instance = new Ros1Dsr_msgsMoveResumeResponseCodec();

        private Ros1Dsr_msgsMoveResumeResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/MoveResumeResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_072287041c0e4462d8994d15ad03c5c36db00c754565d99cf9d30a215100937a";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros1Dsr_msgsMoveResumeResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsMoveResumeResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsMoveResumeResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsMoveResumeResponse value = ReadRos1Dsr_msgsMoveResumeResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsMoveResumeResponse(_Codecs.Writer writer, _Ros1Dsr_msgsMoveResumeResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros1Dsr_msgsMoveResumeResponse ReadRos1Dsr_msgsMoveResumeResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsMoveResumeResponse();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros1Dsr_msgsMoveSpiralRequest
    {
        public double @revolution = 0;
        public double @maxRadius = 0;
        public double @maxLength = 0;
        public double[] @vel = new double[2];
        public double[] @acc = new double[2];
        public double @time = 0;
        public sbyte @taskAxis = 0;
        public sbyte @ref = 0;
        public sbyte @syncType = 0;

        public _Ros1Dsr_msgsMoveSpiralRequest()
        {
        }
    }

    public sealed class Ros1Dsr_msgsMoveSpiralRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsMoveSpiralRequest>
    {
        public static readonly Ros1Dsr_msgsMoveSpiralRequestCodec Instance = new Ros1Dsr_msgsMoveSpiralRequestCodec();

        private Ros1Dsr_msgsMoveSpiralRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/MoveSpiralRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_5b5a4a14ecc3021b9f98e44891c3c87011ba825fb6399e1ae5ef179257a4565c";
        public const int MIN_WIRE_BYTES = 67, MAX_WIRE_BYTES = 67;

        public byte[] Encode(_Ros1Dsr_msgsMoveSpiralRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsMoveSpiralRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsMoveSpiralRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsMoveSpiralRequest value = ReadRos1Dsr_msgsMoveSpiralRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsMoveSpiralRequest(_Codecs.Writer writer, _Ros1Dsr_msgsMoveSpiralRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        double part0 = value.@revolution;
        writer.Float64(part0);
        double part1 = value.@maxRadius;
        writer.Float64(part1);
        double part2 = value.@maxLength;
        writer.Float64(part2);
        double[] part3 = value.@vel;
        if(part3 == null || part3.Length != 2)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part3.Length; ++index)
        {
            double element = part3[index];
            writer.Float64(element);
        }
        double[] part4 = value.@acc;
        if(part4 == null || part4.Length != 2)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part4.Length; ++index)
        {
            double element = part4[index];
            writer.Float64(element);
        }
        double part5 = value.@time;
        writer.Float64(part5);
        sbyte part6 = value.@taskAxis;
        writer.Unsigned(unchecked((byte)part6), 1);
        sbyte part7 = value.@ref;
        writer.Unsigned(unchecked((byte)part7), 1);
        sbyte part8 = value.@syncType;
        writer.Unsigned(unchecked((byte)part8), 1);
    }

    private static _Ros1Dsr_msgsMoveSpiralRequest ReadRos1Dsr_msgsMoveSpiralRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsMoveSpiralRequest();
        value.@revolution = reader.Float64();
        value.@maxRadius = reader.Float64();
        value.@maxLength = reader.Float64();
        value.@vel = new double[2];
        for(int index = 0; index < value.@vel.Length; ++index)
            value.@vel[index] = reader.Float64();
        value.@acc = new double[2];
        for(int index = 0; index < value.@acc.Length; ++index)
            value.@acc[index] = reader.Float64();
        value.@time = reader.Float64();
        value.@taskAxis = unchecked((sbyte)reader.Unsigned(1));
        value.@ref = unchecked((sbyte)reader.Unsigned(1));
        value.@syncType = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    public sealed class _Ros1Dsr_msgsMoveSpiralResponse
    {
        public bool @success = false;

        public _Ros1Dsr_msgsMoveSpiralResponse()
        {
        }
    }

    public sealed class Ros1Dsr_msgsMoveSpiralResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsMoveSpiralResponse>
    {
        public static readonly Ros1Dsr_msgsMoveSpiralResponseCodec Instance = new Ros1Dsr_msgsMoveSpiralResponseCodec();

        private Ros1Dsr_msgsMoveSpiralResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/MoveSpiralResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_be420ead496b05aafd3aa152a89bd04cc6dc1e584e700019a568f0dcae3a7691";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros1Dsr_msgsMoveSpiralResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsMoveSpiralResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsMoveSpiralResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsMoveSpiralResponse value = ReadRos1Dsr_msgsMoveSpiralResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsMoveSpiralResponse(_Codecs.Writer writer, _Ros1Dsr_msgsMoveSpiralResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros1Dsr_msgsMoveSpiralResponse ReadRos1Dsr_msgsMoveSpiralResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsMoveSpiralResponse();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros1Dsr_msgsMoveSplineJointRequest
    {
        public _Ros1Std_msgsFloat64MultiArray[] @pos = new _Ros1Std_msgsFloat64MultiArray[0];
        public sbyte @posCnt = 0;
        public double @vel = 0;
        public double @acc = 0;
        public double @time = 0;
        public sbyte @mode = 0;
        public sbyte @syncType = 0;

        public _Ros1Dsr_msgsMoveSplineJointRequest()
        {
        }
    }

    public sealed class Ros1Dsr_msgsMoveSplineJointRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsMoveSplineJointRequest>
    {
        public static readonly Ros1Dsr_msgsMoveSplineJointRequestCodec Instance = new Ros1Dsr_msgsMoveSplineJointRequestCodec();

        private Ros1Dsr_msgsMoveSplineJointRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/MoveSplineJointRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_6e386632864f2315ba8737001727f9c03bb17a0e70b8eb990ce39fed669aac33";
        public const int MIN_WIRE_BYTES = 31, MAX_WIRE_BYTES = 2239;

        public byte[] Encode(_Ros1Dsr_msgsMoveSplineJointRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsMoveSplineJointRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsMoveSplineJointRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsMoveSplineJointRequest value = ReadRos1Dsr_msgsMoveSplineJointRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsMoveSplineJointRequest(_Codecs.Writer writer, _Ros1Dsr_msgsMoveSplineJointRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros1Std_msgsFloat64MultiArray[] part0 = value.@pos;
        if(part0 == null || part0.Length > 6)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part0.Length, 4);
        for(int index = 0; index < part0.Length; ++index)
        {
            _Ros1Std_msgsFloat64MultiArray element = part0[index];
            WriteRos1Std_msgsFloat64MultiArray(writer, element);
        }
        sbyte part1 = value.@posCnt;
        writer.Unsigned(unchecked((byte)part1), 1);
        double part2 = value.@vel;
        writer.Float64(part2);
        double part3 = value.@acc;
        writer.Float64(part3);
        double part4 = value.@time;
        writer.Float64(part4);
        sbyte part5 = value.@mode;
        writer.Unsigned(unchecked((byte)part5), 1);
        sbyte part6 = value.@syncType;
        writer.Unsigned(unchecked((byte)part6), 1);
    }

    private static _Ros1Dsr_msgsMoveSplineJointRequest ReadRos1Dsr_msgsMoveSplineJointRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsMoveSplineJointRequest();
        value.@pos = new _Ros1Std_msgsFloat64MultiArray[ReadCount(reader, 6, 12)];
        for(int index = 0; index < value.@pos.Length; ++index)
            value.@pos[index] = ReadRos1Std_msgsFloat64MultiArray(reader);
        value.@posCnt = unchecked((sbyte)reader.Unsigned(1));
        value.@vel = reader.Float64();
        value.@acc = reader.Float64();
        value.@time = reader.Float64();
        value.@mode = unchecked((sbyte)reader.Unsigned(1));
        value.@syncType = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    public sealed class _Ros1Dsr_msgsMoveSplineJointResponse
    {
        public bool @success = false;

        public _Ros1Dsr_msgsMoveSplineJointResponse()
        {
        }
    }

    public sealed class Ros1Dsr_msgsMoveSplineJointResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsMoveSplineJointResponse>
    {
        public static readonly Ros1Dsr_msgsMoveSplineJointResponseCodec Instance = new Ros1Dsr_msgsMoveSplineJointResponseCodec();

        private Ros1Dsr_msgsMoveSplineJointResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/MoveSplineJointResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_b6fe363893f83066cfbf079aedf9fd6161316fe698b1a02713761aa46adb6e68";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros1Dsr_msgsMoveSplineJointResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsMoveSplineJointResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsMoveSplineJointResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsMoveSplineJointResponse value = ReadRos1Dsr_msgsMoveSplineJointResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsMoveSplineJointResponse(_Codecs.Writer writer, _Ros1Dsr_msgsMoveSplineJointResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros1Dsr_msgsMoveSplineJointResponse ReadRos1Dsr_msgsMoveSplineJointResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsMoveSplineJointResponse();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros1Dsr_msgsMoveSplineTaskRequest
    {
        public _Ros1Std_msgsFloat64MultiArray[] @pos = new _Ros1Std_msgsFloat64MultiArray[0];
        public sbyte @posCnt = 0;
        public double[] @vel = new double[2];
        public double[] @acc = new double[2];
        public double @time = 0;
        public sbyte @ref = 0;
        public sbyte @mode = 0;
        public sbyte @opt = 0;
        public sbyte @syncType = 0;

        public _Ros1Dsr_msgsMoveSplineTaskRequest()
        {
        }
    }

    public sealed class Ros1Dsr_msgsMoveSplineTaskRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsMoveSplineTaskRequest>
    {
        public static readonly Ros1Dsr_msgsMoveSplineTaskRequestCodec Instance = new Ros1Dsr_msgsMoveSplineTaskRequestCodec();

        private Ros1Dsr_msgsMoveSplineTaskRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/MoveSplineTaskRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_fa8ee3b180d331309471cb20a1dbe4b46a3493cc0c7298222017200d2ff65e5a";
        public const int MIN_WIRE_BYTES = 49, MAX_WIRE_BYTES = 2257;

        public byte[] Encode(_Ros1Dsr_msgsMoveSplineTaskRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsMoveSplineTaskRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsMoveSplineTaskRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsMoveSplineTaskRequest value = ReadRos1Dsr_msgsMoveSplineTaskRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsMoveSplineTaskRequest(_Codecs.Writer writer, _Ros1Dsr_msgsMoveSplineTaskRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros1Std_msgsFloat64MultiArray[] part0 = value.@pos;
        if(part0 == null || part0.Length > 6)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part0.Length, 4);
        for(int index = 0; index < part0.Length; ++index)
        {
            _Ros1Std_msgsFloat64MultiArray element = part0[index];
            WriteRos1Std_msgsFloat64MultiArray(writer, element);
        }
        sbyte part1 = value.@posCnt;
        writer.Unsigned(unchecked((byte)part1), 1);
        double[] part2 = value.@vel;
        if(part2 == null || part2.Length != 2)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part2.Length; ++index)
        {
            double element = part2[index];
            writer.Float64(element);
        }
        double[] part3 = value.@acc;
        if(part3 == null || part3.Length != 2)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part3.Length; ++index)
        {
            double element = part3[index];
            writer.Float64(element);
        }
        double part4 = value.@time;
        writer.Float64(part4);
        sbyte part5 = value.@ref;
        writer.Unsigned(unchecked((byte)part5), 1);
        sbyte part6 = value.@mode;
        writer.Unsigned(unchecked((byte)part6), 1);
        sbyte part7 = value.@opt;
        writer.Unsigned(unchecked((byte)part7), 1);
        sbyte part8 = value.@syncType;
        writer.Unsigned(unchecked((byte)part8), 1);
    }

    private static _Ros1Dsr_msgsMoveSplineTaskRequest ReadRos1Dsr_msgsMoveSplineTaskRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsMoveSplineTaskRequest();
        value.@pos = new _Ros1Std_msgsFloat64MultiArray[ReadCount(reader, 6, 12)];
        for(int index = 0; index < value.@pos.Length; ++index)
            value.@pos[index] = ReadRos1Std_msgsFloat64MultiArray(reader);
        value.@posCnt = unchecked((sbyte)reader.Unsigned(1));
        value.@vel = new double[2];
        for(int index = 0; index < value.@vel.Length; ++index)
            value.@vel[index] = reader.Float64();
        value.@acc = new double[2];
        for(int index = 0; index < value.@acc.Length; ++index)
            value.@acc[index] = reader.Float64();
        value.@time = reader.Float64();
        value.@ref = unchecked((sbyte)reader.Unsigned(1));
        value.@mode = unchecked((sbyte)reader.Unsigned(1));
        value.@opt = unchecked((sbyte)reader.Unsigned(1));
        value.@syncType = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    public sealed class _Ros1Dsr_msgsMoveSplineTaskResponse
    {
        public bool @success = false;

        public _Ros1Dsr_msgsMoveSplineTaskResponse()
        {
        }
    }

    public sealed class Ros1Dsr_msgsMoveSplineTaskResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsMoveSplineTaskResponse>
    {
        public static readonly Ros1Dsr_msgsMoveSplineTaskResponseCodec Instance = new Ros1Dsr_msgsMoveSplineTaskResponseCodec();

        private Ros1Dsr_msgsMoveSplineTaskResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/MoveSplineTaskResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_3d19b8f693f665703fc8b8ee151ee49ed94100de85668164f953095f718cdb7a";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros1Dsr_msgsMoveSplineTaskResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsMoveSplineTaskResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsMoveSplineTaskResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsMoveSplineTaskResponse value = ReadRos1Dsr_msgsMoveSplineTaskResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsMoveSplineTaskResponse(_Codecs.Writer writer, _Ros1Dsr_msgsMoveSplineTaskResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros1Dsr_msgsMoveSplineTaskResponse ReadRos1Dsr_msgsMoveSplineTaskResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsMoveSplineTaskResponse();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros1Dsr_msgsMoveStopRequest
    {
        public int @stop_mode = 0;

        public _Ros1Dsr_msgsMoveStopRequest()
        {
        }
    }

    public sealed class Ros1Dsr_msgsMoveStopRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsMoveStopRequest>
    {
        public static readonly Ros1Dsr_msgsMoveStopRequestCodec Instance = new Ros1Dsr_msgsMoveStopRequestCodec();

        private Ros1Dsr_msgsMoveStopRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/MoveStopRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_8591a7188be1a528bbbb4b62f134825e0bf0f41517709604ac06c537f01423e4";
        public const int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 4;

        public byte[] Encode(_Ros1Dsr_msgsMoveStopRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsMoveStopRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsMoveStopRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsMoveStopRequest value = ReadRos1Dsr_msgsMoveStopRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsMoveStopRequest(_Codecs.Writer writer, _Ros1Dsr_msgsMoveStopRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        int part0 = value.@stop_mode;
        writer.Unsigned(unchecked((uint)part0), 4);
    }

    private static _Ros1Dsr_msgsMoveStopRequest ReadRos1Dsr_msgsMoveStopRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsMoveStopRequest();
        value.@stop_mode = unchecked((int)reader.Unsigned(4));
        return value;
    }

    public sealed class _Ros1Dsr_msgsMoveStopResponse
    {
        public bool @success = false;

        public _Ros1Dsr_msgsMoveStopResponse()
        {
        }
    }

    public sealed class Ros1Dsr_msgsMoveStopResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsMoveStopResponse>
    {
        public static readonly Ros1Dsr_msgsMoveStopResponseCodec Instance = new Ros1Dsr_msgsMoveStopResponseCodec();

        private Ros1Dsr_msgsMoveStopResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/MoveStopResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_25580dd85be376dcb588ebe62a49394f0f9c92abd7b094c2552df86b64f87427";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros1Dsr_msgsMoveStopResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsMoveStopResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsMoveStopResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsMoveStopResponse value = ReadRos1Dsr_msgsMoveStopResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsMoveStopResponse(_Codecs.Writer writer, _Ros1Dsr_msgsMoveStopResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros1Dsr_msgsMoveStopResponse ReadRos1Dsr_msgsMoveStopResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsMoveStopResponse();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros1Dsr_msgsMoveWaitRequest
    {
        public _Ros1Dsr_msgsMoveWaitRequest()
        {
        }
    }

    public sealed class Ros1Dsr_msgsMoveWaitRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsMoveWaitRequest>
    {
        public static readonly Ros1Dsr_msgsMoveWaitRequestCodec Instance = new Ros1Dsr_msgsMoveWaitRequestCodec();

        private Ros1Dsr_msgsMoveWaitRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/MoveWaitRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_ca59fcddb15dd63fcf0481cb2e81be6a338d63167a15ad66585335eee1922a39";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public byte[] Encode(_Ros1Dsr_msgsMoveWaitRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsMoveWaitRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsMoveWaitRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsMoveWaitRequest value = ReadRos1Dsr_msgsMoveWaitRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsMoveWaitRequest(_Codecs.Writer writer, _Ros1Dsr_msgsMoveWaitRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    private static _Ros1Dsr_msgsMoveWaitRequest ReadRos1Dsr_msgsMoveWaitRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsMoveWaitRequest();
        return value;
    }

    public sealed class _Ros1Dsr_msgsMoveWaitResponse
    {
        public bool @success = false;

        public _Ros1Dsr_msgsMoveWaitResponse()
        {
        }
    }

    public sealed class Ros1Dsr_msgsMoveWaitResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsMoveWaitResponse>
    {
        public static readonly Ros1Dsr_msgsMoveWaitResponseCodec Instance = new Ros1Dsr_msgsMoveWaitResponseCodec();

        private Ros1Dsr_msgsMoveWaitResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/MoveWaitResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_764dd1fba59b88d4baae818b06b9c735f62f156e67842013d95d55381d32f232";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros1Dsr_msgsMoveWaitResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsMoveWaitResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsMoveWaitResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsMoveWaitResponse value = ReadRos1Dsr_msgsMoveWaitResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsMoveWaitResponse(_Codecs.Writer writer, _Ros1Dsr_msgsMoveWaitResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros1Dsr_msgsMoveWaitResponse ReadRos1Dsr_msgsMoveWaitResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsMoveWaitResponse();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros1Dsr_msgsRobotError
    {
        public int @level = 0;
        public int @group = 0;
        public int @code = 0;
        public string @msg1 = "";
        public string @msg2 = "";
        public string @msg3 = "";

        public _Ros1Dsr_msgsRobotError()
        {
        }
    }

    public sealed class Ros1Dsr_msgsRobotErrorCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsRobotError>
    {
        public static readonly Ros1Dsr_msgsRobotErrorCodec Instance = new Ros1Dsr_msgsRobotErrorCodec();

        private Ros1Dsr_msgsRobotErrorCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/RobotError";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_86d4b7b2d131374e05e7fe9d53988f0ed6713deb337a37182ac4998951ca5641";
        public const int MIN_WIRE_BYTES = 24, MAX_WIRE_BYTES = 792;

        public byte[] Encode(_Ros1Dsr_msgsRobotError value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsRobotError(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsRobotError Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsRobotError value = ReadRos1Dsr_msgsRobotError(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsRobotError(_Codecs.Writer writer, _Ros1Dsr_msgsRobotError value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        int part0 = value.@level;
        writer.Unsigned(unchecked((uint)part0), 4);
        int part1 = value.@group;
        writer.Unsigned(unchecked((uint)part1), 4);
        int part2 = value.@code;
        writer.Unsigned(unchecked((uint)part2), 4);
        string part3 = value.@msg1;
        WriteText(writer, part3, 256);
        string part4 = value.@msg2;
        WriteText(writer, part4, 256);
        string part5 = value.@msg3;
        WriteText(writer, part5, 256);
    }

    private static _Ros1Dsr_msgsRobotError ReadRos1Dsr_msgsRobotError(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsRobotError();
        value.@level = unchecked((int)reader.Unsigned(4));
        value.@group = unchecked((int)reader.Unsigned(4));
        value.@code = unchecked((int)reader.Unsigned(4));
        value.@msg1 = ReadText(reader, 256);
        value.@msg2 = ReadText(reader, 256);
        value.@msg3 = ReadText(reader, 256);
        return value;
    }

    public sealed class _Ros1Dsr_msgsRobotState
    {
        public int @robot_state = 0;
        public string @robot_state_str = "";
        public sbyte @actual_mode = 0;
        public sbyte @actual_space = 0;
        public double[] @current_posj = new double[6];
        public double[] @current_velj = new double[6];
        public double[] @joint_abs = new double[6];
        public double[] @joint_err = new double[6];
        public double[] @target_posj = new double[6];
        public double[] @target_velj = new double[6];
        public double[] @current_posx = new double[6];
        public double[] @current_velx = new double[6];
        public double[] @task_err = new double[6];
        public double[] @target_velx = new double[6];
        public double[] @target_posx = new double[6];
        public sbyte @solution_space = 0;
        public _Ros1Std_msgsFloat64MultiArray[] @rotation_matrix = new _Ros1Std_msgsFloat64MultiArray[0];
        public double[] @dynamic_tor = new double[6];
        public double[] @actual_jts = new double[6];
        public double[] @actual_ejt = new double[6];
        public double[] @actual_ett = new double[6];
        public double @sync_time = 0;
        public sbyte[] @actual_bk = new sbyte[6];
        public sbyte[] @actual_bt = new sbyte[5];
        public double[] @actual_mc = new double[6];
        public double[] @actual_mt = new double[6];
        public sbyte[] @ctrlbox_digital_input = new sbyte[16];
        public sbyte[] @ctrlbox_digital_output = new sbyte[16];
        public sbyte[] @flange_digital_input = new sbyte[6];
        public sbyte[] @flange_digital_output = new sbyte[6];
        public _Ros1Dsr_msgsModbusState[] @modbus_state = new _Ros1Dsr_msgsModbusState[0];
        public int @access_control = 0;
        public bool @homming_completed = false;
        public bool @tp_initialized = false;
        public sbyte @mastering_need = 0;
        public bool @drl_stopped = false;
        public bool @disconnected = false;

        public _Ros1Dsr_msgsRobotState()
        {
        }
    }

    public sealed class Ros1Dsr_msgsRobotStateCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsRobotState>
    {
        public static readonly Ros1Dsr_msgsRobotStateCodec Instance = new Ros1Dsr_msgsRobotStateCodec();

        private Ros1Dsr_msgsRobotStateCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/RobotState";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_67691d32d7b73ab123439c6f14dca8f626ad9e9a6f09f9ecb0e631b5f63d2574";
        public const int MIN_WIRE_BYTES = 907, MAX_WIRE_BYTES = 7595;

        public byte[] Encode(_Ros1Dsr_msgsRobotState value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsRobotState(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsRobotState Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsRobotState value = ReadRos1Dsr_msgsRobotState(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsRobotState(_Codecs.Writer writer, _Ros1Dsr_msgsRobotState value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        int part0 = value.@robot_state;
        writer.Unsigned(unchecked((uint)part0), 4);
        string part1 = value.@robot_state_str;
        WriteText(writer, part1, 256);
        sbyte part2 = value.@actual_mode;
        writer.Unsigned(unchecked((byte)part2), 1);
        sbyte part3 = value.@actual_space;
        writer.Unsigned(unchecked((byte)part3), 1);
        double[] part4 = value.@current_posj;
        if(part4 == null || part4.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part4.Length; ++index)
        {
            double element = part4[index];
            writer.Float64(element);
        }
        double[] part5 = value.@current_velj;
        if(part5 == null || part5.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part5.Length; ++index)
        {
            double element = part5[index];
            writer.Float64(element);
        }
        double[] part6 = value.@joint_abs;
        if(part6 == null || part6.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part6.Length; ++index)
        {
            double element = part6[index];
            writer.Float64(element);
        }
        double[] part7 = value.@joint_err;
        if(part7 == null || part7.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part7.Length; ++index)
        {
            double element = part7[index];
            writer.Float64(element);
        }
        double[] part8 = value.@target_posj;
        if(part8 == null || part8.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part8.Length; ++index)
        {
            double element = part8[index];
            writer.Float64(element);
        }
        double[] part9 = value.@target_velj;
        if(part9 == null || part9.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part9.Length; ++index)
        {
            double element = part9[index];
            writer.Float64(element);
        }
        double[] part10 = value.@current_posx;
        if(part10 == null || part10.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part10.Length; ++index)
        {
            double element = part10[index];
            writer.Float64(element);
        }
        double[] part11 = value.@current_velx;
        if(part11 == null || part11.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part11.Length; ++index)
        {
            double element = part11[index];
            writer.Float64(element);
        }
        double[] part12 = value.@task_err;
        if(part12 == null || part12.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part12.Length; ++index)
        {
            double element = part12[index];
            writer.Float64(element);
        }
        double[] part13 = value.@target_velx;
        if(part13 == null || part13.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part13.Length; ++index)
        {
            double element = part13[index];
            writer.Float64(element);
        }
        double[] part14 = value.@target_posx;
        if(part14 == null || part14.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part14.Length; ++index)
        {
            double element = part14[index];
            writer.Float64(element);
        }
        sbyte part15 = value.@solution_space;
        writer.Unsigned(unchecked((byte)part15), 1);
        _Ros1Std_msgsFloat64MultiArray[] part16 = value.@rotation_matrix;
        if(part16 == null || part16.Length > 6)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part16.Length, 4);
        for(int index = 0; index < part16.Length; ++index)
        {
            _Ros1Std_msgsFloat64MultiArray element = part16[index];
            WriteRos1Std_msgsFloat64MultiArray(writer, element);
        }
        double[] part17 = value.@dynamic_tor;
        if(part17 == null || part17.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part17.Length; ++index)
        {
            double element = part17[index];
            writer.Float64(element);
        }
        double[] part18 = value.@actual_jts;
        if(part18 == null || part18.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part18.Length; ++index)
        {
            double element = part18[index];
            writer.Float64(element);
        }
        double[] part19 = value.@actual_ejt;
        if(part19 == null || part19.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part19.Length; ++index)
        {
            double element = part19[index];
            writer.Float64(element);
        }
        double[] part20 = value.@actual_ett;
        if(part20 == null || part20.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part20.Length; ++index)
        {
            double element = part20[index];
            writer.Float64(element);
        }
        double part21 = value.@sync_time;
        writer.Float64(part21);
        sbyte[] part22 = value.@actual_bk;
        if(part22 == null || part22.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part22.Length; ++index)
        {
            sbyte element = part22[index];
            writer.Unsigned(unchecked((byte)element), 1);
        }
        sbyte[] part23 = value.@actual_bt;
        if(part23 == null || part23.Length != 5)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part23.Length; ++index)
        {
            sbyte element = part23[index];
            writer.Unsigned(unchecked((byte)element), 1);
        }
        double[] part24 = value.@actual_mc;
        if(part24 == null || part24.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part24.Length; ++index)
        {
            double element = part24[index];
            writer.Float64(element);
        }
        double[] part25 = value.@actual_mt;
        if(part25 == null || part25.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part25.Length; ++index)
        {
            double element = part25[index];
            writer.Float64(element);
        }
        sbyte[] part26 = value.@ctrlbox_digital_input;
        if(part26 == null || part26.Length != 16)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part26.Length; ++index)
        {
            sbyte element = part26[index];
            writer.Unsigned(unchecked((byte)element), 1);
        }
        sbyte[] part27 = value.@ctrlbox_digital_output;
        if(part27 == null || part27.Length != 16)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part27.Length; ++index)
        {
            sbyte element = part27[index];
            writer.Unsigned(unchecked((byte)element), 1);
        }
        sbyte[] part28 = value.@flange_digital_input;
        if(part28 == null || part28.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part28.Length; ++index)
        {
            sbyte element = part28[index];
            writer.Unsigned(unchecked((byte)element), 1);
        }
        sbyte[] part29 = value.@flange_digital_output;
        if(part29 == null || part29.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part29.Length; ++index)
        {
            sbyte element = part29[index];
            writer.Unsigned(unchecked((byte)element), 1);
        }
        _Ros1Dsr_msgsModbusState[] part30 = value.@modbus_state;
        if(part30 == null || part30.Length > 16)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part30.Length, 4);
        for(int index = 0; index < part30.Length; ++index)
        {
            _Ros1Dsr_msgsModbusState element = part30[index];
            WriteRos1Dsr_msgsModbusState(writer, element);
        }
        int part31 = value.@access_control;
        writer.Unsigned(unchecked((uint)part31), 4);
        bool part32 = value.@homming_completed;
        writer.Unsigned(part32 ? 1UL : 0UL, 1);
        bool part33 = value.@tp_initialized;
        writer.Unsigned(part33 ? 1UL : 0UL, 1);
        sbyte part34 = value.@mastering_need;
        writer.Unsigned(unchecked((byte)part34), 1);
        bool part35 = value.@drl_stopped;
        writer.Unsigned(part35 ? 1UL : 0UL, 1);
        bool part36 = value.@disconnected;
        writer.Unsigned(part36 ? 1UL : 0UL, 1);
    }

    private static _Ros1Dsr_msgsRobotState ReadRos1Dsr_msgsRobotState(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsRobotState();
        value.@robot_state = unchecked((int)reader.Unsigned(4));
        value.@robot_state_str = ReadText(reader, 256);
        value.@actual_mode = unchecked((sbyte)reader.Unsigned(1));
        value.@actual_space = unchecked((sbyte)reader.Unsigned(1));
        value.@current_posj = new double[6];
        for(int index = 0; index < value.@current_posj.Length; ++index)
            value.@current_posj[index] = reader.Float64();
        value.@current_velj = new double[6];
        for(int index = 0; index < value.@current_velj.Length; ++index)
            value.@current_velj[index] = reader.Float64();
        value.@joint_abs = new double[6];
        for(int index = 0; index < value.@joint_abs.Length; ++index)
            value.@joint_abs[index] = reader.Float64();
        value.@joint_err = new double[6];
        for(int index = 0; index < value.@joint_err.Length; ++index)
            value.@joint_err[index] = reader.Float64();
        value.@target_posj = new double[6];
        for(int index = 0; index < value.@target_posj.Length; ++index)
            value.@target_posj[index] = reader.Float64();
        value.@target_velj = new double[6];
        for(int index = 0; index < value.@target_velj.Length; ++index)
            value.@target_velj[index] = reader.Float64();
        value.@current_posx = new double[6];
        for(int index = 0; index < value.@current_posx.Length; ++index)
            value.@current_posx[index] = reader.Float64();
        value.@current_velx = new double[6];
        for(int index = 0; index < value.@current_velx.Length; ++index)
            value.@current_velx[index] = reader.Float64();
        value.@task_err = new double[6];
        for(int index = 0; index < value.@task_err.Length; ++index)
            value.@task_err[index] = reader.Float64();
        value.@target_velx = new double[6];
        for(int index = 0; index < value.@target_velx.Length; ++index)
            value.@target_velx[index] = reader.Float64();
        value.@target_posx = new double[6];
        for(int index = 0; index < value.@target_posx.Length; ++index)
            value.@target_posx[index] = reader.Float64();
        value.@solution_space = unchecked((sbyte)reader.Unsigned(1));
        value.@rotation_matrix = new _Ros1Std_msgsFloat64MultiArray[ReadCount(reader, 6, 12)];
        for(int index = 0; index < value.@rotation_matrix.Length; ++index)
            value.@rotation_matrix[index] = ReadRos1Std_msgsFloat64MultiArray(reader);
        value.@dynamic_tor = new double[6];
        for(int index = 0; index < value.@dynamic_tor.Length; ++index)
            value.@dynamic_tor[index] = reader.Float64();
        value.@actual_jts = new double[6];
        for(int index = 0; index < value.@actual_jts.Length; ++index)
            value.@actual_jts[index] = reader.Float64();
        value.@actual_ejt = new double[6];
        for(int index = 0; index < value.@actual_ejt.Length; ++index)
            value.@actual_ejt[index] = reader.Float64();
        value.@actual_ett = new double[6];
        for(int index = 0; index < value.@actual_ett.Length; ++index)
            value.@actual_ett[index] = reader.Float64();
        value.@sync_time = reader.Float64();
        value.@actual_bk = new sbyte[6];
        for(int index = 0; index < value.@actual_bk.Length; ++index)
            value.@actual_bk[index] = unchecked((sbyte)reader.Unsigned(1));
        value.@actual_bt = new sbyte[5];
        for(int index = 0; index < value.@actual_bt.Length; ++index)
            value.@actual_bt[index] = unchecked((sbyte)reader.Unsigned(1));
        value.@actual_mc = new double[6];
        for(int index = 0; index < value.@actual_mc.Length; ++index)
            value.@actual_mc[index] = reader.Float64();
        value.@actual_mt = new double[6];
        for(int index = 0; index < value.@actual_mt.Length; ++index)
            value.@actual_mt[index] = reader.Float64();
        value.@ctrlbox_digital_input = new sbyte[16];
        for(int index = 0; index < value.@ctrlbox_digital_input.Length; ++index)
            value.@ctrlbox_digital_input[index] = unchecked((sbyte)reader.Unsigned(1));
        value.@ctrlbox_digital_output = new sbyte[16];
        for(int index = 0; index < value.@ctrlbox_digital_output.Length; ++index)
            value.@ctrlbox_digital_output[index] = unchecked((sbyte)reader.Unsigned(1));
        value.@flange_digital_input = new sbyte[6];
        for(int index = 0; index < value.@flange_digital_input.Length; ++index)
            value.@flange_digital_input[index] = unchecked((sbyte)reader.Unsigned(1));
        value.@flange_digital_output = new sbyte[6];
        for(int index = 0; index < value.@flange_digital_output.Length; ++index)
            value.@flange_digital_output[index] = unchecked((sbyte)reader.Unsigned(1));
        value.@modbus_state = new _Ros1Dsr_msgsModbusState[ReadCount(reader, 16, 8)];
        for(int index = 0; index < value.@modbus_state.Length; ++index)
            value.@modbus_state[index] = ReadRos1Dsr_msgsModbusState(reader);
        value.@access_control = unchecked((int)reader.Unsigned(4));
        value.@homming_completed = ReadBool(reader);
        value.@tp_initialized = ReadBool(reader);
        value.@mastering_need = unchecked((sbyte)reader.Unsigned(1));
        value.@drl_stopped = ReadBool(reader);
        value.@disconnected = ReadBool(reader);
        return value;
    }

    public sealed class _Ros1Dsr_msgsRobotStop
    {
        public int @stop_mode = 0;

        public _Ros1Dsr_msgsRobotStop()
        {
        }
    }

    public sealed class Ros1Dsr_msgsRobotStopCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsRobotStop>
    {
        public static readonly Ros1Dsr_msgsRobotStopCodec Instance = new Ros1Dsr_msgsRobotStopCodec();

        private Ros1Dsr_msgsRobotStopCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/RobotStop";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_fd77182b171cc0c4eea28c26c78310584b38e47a3c7d987783648a9f230b6323";
        public const int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 4;

        public byte[] Encode(_Ros1Dsr_msgsRobotStop value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsRobotStop(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsRobotStop Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsRobotStop value = ReadRos1Dsr_msgsRobotStop(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsRobotStop(_Codecs.Writer writer, _Ros1Dsr_msgsRobotStop value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        int part0 = value.@stop_mode;
        writer.Unsigned(unchecked((uint)part0), 4);
    }

    private static _Ros1Dsr_msgsRobotStop ReadRos1Dsr_msgsRobotStop(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsRobotStop();
        value.@stop_mode = unchecked((int)reader.Unsigned(4));
        return value;
    }

    public sealed class _Ros1Dsr_msgsRobotiq2FCloseRequest
    {
        public _Ros1Dsr_msgsRobotiq2FCloseRequest()
        {
        }
    }

    public sealed class Ros1Dsr_msgsRobotiq2FCloseRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsRobotiq2FCloseRequest>
    {
        public static readonly Ros1Dsr_msgsRobotiq2FCloseRequestCodec Instance = new Ros1Dsr_msgsRobotiq2FCloseRequestCodec();

        private Ros1Dsr_msgsRobotiq2FCloseRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/Robotiq2FCloseRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_208edddefb1fee08c3ba285600357951edca6b0328a14ea3cca56ec5b2c4d3b4";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public byte[] Encode(_Ros1Dsr_msgsRobotiq2FCloseRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsRobotiq2FCloseRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsRobotiq2FCloseRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsRobotiq2FCloseRequest value = ReadRos1Dsr_msgsRobotiq2FCloseRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsRobotiq2FCloseRequest(_Codecs.Writer writer, _Ros1Dsr_msgsRobotiq2FCloseRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    private static _Ros1Dsr_msgsRobotiq2FCloseRequest ReadRos1Dsr_msgsRobotiq2FCloseRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsRobotiq2FCloseRequest();
        return value;
    }

    public sealed class _Ros1Dsr_msgsRobotiq2FCloseResponse
    {
        public bool @success = false;

        public _Ros1Dsr_msgsRobotiq2FCloseResponse()
        {
        }
    }

    public sealed class Ros1Dsr_msgsRobotiq2FCloseResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsRobotiq2FCloseResponse>
    {
        public static readonly Ros1Dsr_msgsRobotiq2FCloseResponseCodec Instance = new Ros1Dsr_msgsRobotiq2FCloseResponseCodec();

        private Ros1Dsr_msgsRobotiq2FCloseResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/Robotiq2FCloseResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_21a215db4729d55b86ae1f56d932984a38c5c7093f09623a5a5cee1e5647a09d";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros1Dsr_msgsRobotiq2FCloseResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsRobotiq2FCloseResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsRobotiq2FCloseResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsRobotiq2FCloseResponse value = ReadRos1Dsr_msgsRobotiq2FCloseResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsRobotiq2FCloseResponse(_Codecs.Writer writer, _Ros1Dsr_msgsRobotiq2FCloseResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros1Dsr_msgsRobotiq2FCloseResponse ReadRos1Dsr_msgsRobotiq2FCloseResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsRobotiq2FCloseResponse();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros1Dsr_msgsRobotiq2FMoveRequest
    {
        public double @width = 0;

        public _Ros1Dsr_msgsRobotiq2FMoveRequest()
        {
        }
    }

    public sealed class Ros1Dsr_msgsRobotiq2FMoveRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsRobotiq2FMoveRequest>
    {
        public static readonly Ros1Dsr_msgsRobotiq2FMoveRequestCodec Instance = new Ros1Dsr_msgsRobotiq2FMoveRequestCodec();

        private Ros1Dsr_msgsRobotiq2FMoveRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/Robotiq2FMoveRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_81cbba3bf5cd634b8c30fe914123d67da1294352a6e1a70a5c8a58259a79d6a2";
        public const int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 8;

        public byte[] Encode(_Ros1Dsr_msgsRobotiq2FMoveRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsRobotiq2FMoveRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsRobotiq2FMoveRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsRobotiq2FMoveRequest value = ReadRos1Dsr_msgsRobotiq2FMoveRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsRobotiq2FMoveRequest(_Codecs.Writer writer, _Ros1Dsr_msgsRobotiq2FMoveRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        double part0 = value.@width;
        writer.Float64(part0);
    }

    private static _Ros1Dsr_msgsRobotiq2FMoveRequest ReadRos1Dsr_msgsRobotiq2FMoveRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsRobotiq2FMoveRequest();
        value.@width = reader.Float64();
        return value;
    }

    public sealed class _Ros1Dsr_msgsRobotiq2FMoveResponse
    {
        public bool @success = false;

        public _Ros1Dsr_msgsRobotiq2FMoveResponse()
        {
        }
    }

    public sealed class Ros1Dsr_msgsRobotiq2FMoveResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsRobotiq2FMoveResponse>
    {
        public static readonly Ros1Dsr_msgsRobotiq2FMoveResponseCodec Instance = new Ros1Dsr_msgsRobotiq2FMoveResponseCodec();

        private Ros1Dsr_msgsRobotiq2FMoveResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/Robotiq2FMoveResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_90f90a7486c727afb08f0e09f76f0bfa7f5b0d057be653258b6bdf1e935e7183";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros1Dsr_msgsRobotiq2FMoveResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsRobotiq2FMoveResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsRobotiq2FMoveResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsRobotiq2FMoveResponse value = ReadRos1Dsr_msgsRobotiq2FMoveResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsRobotiq2FMoveResponse(_Codecs.Writer writer, _Ros1Dsr_msgsRobotiq2FMoveResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros1Dsr_msgsRobotiq2FMoveResponse ReadRos1Dsr_msgsRobotiq2FMoveResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsRobotiq2FMoveResponse();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros1Dsr_msgsRobotiq2FOpenRequest
    {
        public _Ros1Dsr_msgsRobotiq2FOpenRequest()
        {
        }
    }

    public sealed class Ros1Dsr_msgsRobotiq2FOpenRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsRobotiq2FOpenRequest>
    {
        public static readonly Ros1Dsr_msgsRobotiq2FOpenRequestCodec Instance = new Ros1Dsr_msgsRobotiq2FOpenRequestCodec();

        private Ros1Dsr_msgsRobotiq2FOpenRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/Robotiq2FOpenRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_64576393afca9ec6bd2e76eaf57324b5e625e62f5899d77762dc041dc1fbdda2";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public byte[] Encode(_Ros1Dsr_msgsRobotiq2FOpenRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsRobotiq2FOpenRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsRobotiq2FOpenRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsRobotiq2FOpenRequest value = ReadRos1Dsr_msgsRobotiq2FOpenRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsRobotiq2FOpenRequest(_Codecs.Writer writer, _Ros1Dsr_msgsRobotiq2FOpenRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    private static _Ros1Dsr_msgsRobotiq2FOpenRequest ReadRos1Dsr_msgsRobotiq2FOpenRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsRobotiq2FOpenRequest();
        return value;
    }

    public sealed class _Ros1Dsr_msgsRobotiq2FOpenResponse
    {
        public bool @success = false;

        public _Ros1Dsr_msgsRobotiq2FOpenResponse()
        {
        }
    }

    public sealed class Ros1Dsr_msgsRobotiq2FOpenResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsRobotiq2FOpenResponse>
    {
        public static readonly Ros1Dsr_msgsRobotiq2FOpenResponseCodec Instance = new Ros1Dsr_msgsRobotiq2FOpenResponseCodec();

        private Ros1Dsr_msgsRobotiq2FOpenResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/Robotiq2FOpenResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_83448b0daee950113e41814fe398efbb5624568e812f5989dd26cec24f24742a";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros1Dsr_msgsRobotiq2FOpenResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsRobotiq2FOpenResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsRobotiq2FOpenResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsRobotiq2FOpenResponse value = ReadRos1Dsr_msgsRobotiq2FOpenResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsRobotiq2FOpenResponse(_Codecs.Writer writer, _Ros1Dsr_msgsRobotiq2FOpenResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros1Dsr_msgsRobotiq2FOpenResponse ReadRos1Dsr_msgsRobotiq2FOpenResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsRobotiq2FOpenResponse();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros1Dsr_msgsSerialSendDataRequest
    {
        public string @data = "";

        public _Ros1Dsr_msgsSerialSendDataRequest()
        {
        }
    }

    public sealed class Ros1Dsr_msgsSerialSendDataRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsSerialSendDataRequest>
    {
        public static readonly Ros1Dsr_msgsSerialSendDataRequestCodec Instance = new Ros1Dsr_msgsSerialSendDataRequestCodec();

        private Ros1Dsr_msgsSerialSendDataRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/SerialSendDataRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_19253624f5870830126073f19daa4e4f42dcdd10c4d3154989aa619ce2749498";
        public const int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 260;

        public byte[] Encode(_Ros1Dsr_msgsSerialSendDataRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsSerialSendDataRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsSerialSendDataRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsSerialSendDataRequest value = ReadRos1Dsr_msgsSerialSendDataRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsSerialSendDataRequest(_Codecs.Writer writer, _Ros1Dsr_msgsSerialSendDataRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        string part0 = value.@data;
        WriteText(writer, part0, 256);
    }

    private static _Ros1Dsr_msgsSerialSendDataRequest ReadRos1Dsr_msgsSerialSendDataRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsSerialSendDataRequest();
        value.@data = ReadText(reader, 256);
        return value;
    }

    public sealed class _Ros1Dsr_msgsSerialSendDataResponse
    {
        public bool @success = false;

        public _Ros1Dsr_msgsSerialSendDataResponse()
        {
        }
    }

    public sealed class Ros1Dsr_msgsSerialSendDataResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsSerialSendDataResponse>
    {
        public static readonly Ros1Dsr_msgsSerialSendDataResponseCodec Instance = new Ros1Dsr_msgsSerialSendDataResponseCodec();

        private Ros1Dsr_msgsSerialSendDataResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/SerialSendDataResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_0bb4f5a2bfcf02e9febe7846d2616c99141a8860f62d83b59ebb56da6c89dc43";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros1Dsr_msgsSerialSendDataResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsSerialSendDataResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsSerialSendDataResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsSerialSendDataResponse value = ReadRos1Dsr_msgsSerialSendDataResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsSerialSendDataResponse(_Codecs.Writer writer, _Ros1Dsr_msgsSerialSendDataResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros1Dsr_msgsSerialSendDataResponse ReadRos1Dsr_msgsSerialSendDataResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsSerialSendDataResponse();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeRequest
    {
        public sbyte @channel = 0;
        public sbyte @mode = 0;

        public _Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeRequest()
        {
        }
    }

    public sealed class Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeRequest>
    {
        public static readonly Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeRequestCodec Instance = new Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeRequestCodec();

        private Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/SetCtrlBoxAnalogInputTypeRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_934735469130eef5a4e4599d3033242f0dacf467b2d413d607f733bcdebb7f5b";
        public const int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;

        public byte[] Encode(_Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsSetCtrlBoxAnalogInputTypeRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeRequest value = ReadRos1Dsr_msgsSetCtrlBoxAnalogInputTypeRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsSetCtrlBoxAnalogInputTypeRequest(_Codecs.Writer writer, _Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        sbyte part0 = value.@channel;
        writer.Unsigned(unchecked((byte)part0), 1);
        sbyte part1 = value.@mode;
        writer.Unsigned(unchecked((byte)part1), 1);
    }

    private static _Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeRequest ReadRos1Dsr_msgsSetCtrlBoxAnalogInputTypeRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeRequest();
        value.@channel = unchecked((sbyte)reader.Unsigned(1));
        value.@mode = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    public sealed class _Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeResponse
    {
        public bool @success = false;

        public _Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeResponse()
        {
        }
    }

    public sealed class Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeResponse>
    {
        public static readonly Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeResponseCodec Instance = new Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeResponseCodec();

        private Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/SetCtrlBoxAnalogInputTypeResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_a1e73687962235470a5f55d1fa4abd910001dfae2b05aa7779fce0ad93137400";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsSetCtrlBoxAnalogInputTypeResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeResponse value = ReadRos1Dsr_msgsSetCtrlBoxAnalogInputTypeResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsSetCtrlBoxAnalogInputTypeResponse(_Codecs.Writer writer, _Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeResponse ReadRos1Dsr_msgsSetCtrlBoxAnalogInputTypeResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeResponse();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros1Dsr_msgsSetCtrlBoxAnalogOutputRequest
    {
        public sbyte @channel = 0;
        public double @value = 0;

        public _Ros1Dsr_msgsSetCtrlBoxAnalogOutputRequest()
        {
        }
    }

    public sealed class Ros1Dsr_msgsSetCtrlBoxAnalogOutputRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsSetCtrlBoxAnalogOutputRequest>
    {
        public static readonly Ros1Dsr_msgsSetCtrlBoxAnalogOutputRequestCodec Instance = new Ros1Dsr_msgsSetCtrlBoxAnalogOutputRequestCodec();

        private Ros1Dsr_msgsSetCtrlBoxAnalogOutputRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/SetCtrlBoxAnalogOutputRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_1ea5fd673a691bc7a51cf3c65c9a3b30352539155e6d7007181990c9a227efb4";
        public const int MIN_WIRE_BYTES = 9, MAX_WIRE_BYTES = 9;

        public byte[] Encode(_Ros1Dsr_msgsSetCtrlBoxAnalogOutputRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsSetCtrlBoxAnalogOutputRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsSetCtrlBoxAnalogOutputRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsSetCtrlBoxAnalogOutputRequest value = ReadRos1Dsr_msgsSetCtrlBoxAnalogOutputRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsSetCtrlBoxAnalogOutputRequest(_Codecs.Writer writer, _Ros1Dsr_msgsSetCtrlBoxAnalogOutputRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        sbyte part0 = value.@channel;
        writer.Unsigned(unchecked((byte)part0), 1);
        double part1 = value.@value;
        writer.Float64(part1);
    }

    private static _Ros1Dsr_msgsSetCtrlBoxAnalogOutputRequest ReadRos1Dsr_msgsSetCtrlBoxAnalogOutputRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsSetCtrlBoxAnalogOutputRequest();
        value.@channel = unchecked((sbyte)reader.Unsigned(1));
        value.@value = reader.Float64();
        return value;
    }

    public sealed class _Ros1Dsr_msgsSetCtrlBoxAnalogOutputResponse
    {
        public bool @success = false;

        public _Ros1Dsr_msgsSetCtrlBoxAnalogOutputResponse()
        {
        }
    }

    public sealed class Ros1Dsr_msgsSetCtrlBoxAnalogOutputResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsSetCtrlBoxAnalogOutputResponse>
    {
        public static readonly Ros1Dsr_msgsSetCtrlBoxAnalogOutputResponseCodec Instance = new Ros1Dsr_msgsSetCtrlBoxAnalogOutputResponseCodec();

        private Ros1Dsr_msgsSetCtrlBoxAnalogOutputResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/SetCtrlBoxAnalogOutputResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_f0df03f3603b7ec2c0ef5f1e5d126b718ad8ca432130e32184dc87497bf707a5";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros1Dsr_msgsSetCtrlBoxAnalogOutputResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsSetCtrlBoxAnalogOutputResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsSetCtrlBoxAnalogOutputResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsSetCtrlBoxAnalogOutputResponse value = ReadRos1Dsr_msgsSetCtrlBoxAnalogOutputResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsSetCtrlBoxAnalogOutputResponse(_Codecs.Writer writer, _Ros1Dsr_msgsSetCtrlBoxAnalogOutputResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros1Dsr_msgsSetCtrlBoxAnalogOutputResponse ReadRos1Dsr_msgsSetCtrlBoxAnalogOutputResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsSetCtrlBoxAnalogOutputResponse();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeRequest
    {
        public sbyte @channel = 0;
        public sbyte @mode = 0;

        public _Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeRequest()
        {
        }
    }

    public sealed class Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeRequest>
    {
        public static readonly Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeRequestCodec Instance = new Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeRequestCodec();

        private Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/SetCtrlBoxAnalogOutputTypeRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_71aaf5f279052ba620d9cd13fa1751f96629c19d60e4030086b51e316ceab14f";
        public const int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;

        public byte[] Encode(_Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsSetCtrlBoxAnalogOutputTypeRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeRequest value = ReadRos1Dsr_msgsSetCtrlBoxAnalogOutputTypeRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsSetCtrlBoxAnalogOutputTypeRequest(_Codecs.Writer writer, _Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        sbyte part0 = value.@channel;
        writer.Unsigned(unchecked((byte)part0), 1);
        sbyte part1 = value.@mode;
        writer.Unsigned(unchecked((byte)part1), 1);
    }

    private static _Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeRequest ReadRos1Dsr_msgsSetCtrlBoxAnalogOutputTypeRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeRequest();
        value.@channel = unchecked((sbyte)reader.Unsigned(1));
        value.@mode = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    public sealed class _Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeResponse
    {
        public bool @success = false;

        public _Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeResponse()
        {
        }
    }

    public sealed class Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeResponse>
    {
        public static readonly Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeResponseCodec Instance = new Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeResponseCodec();

        private Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/SetCtrlBoxAnalogOutputTypeResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_a175ae12517731f2c2e4de021b1921920bd543d9c81469876b50b51b62ad8cc2";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsSetCtrlBoxAnalogOutputTypeResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeResponse value = ReadRos1Dsr_msgsSetCtrlBoxAnalogOutputTypeResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsSetCtrlBoxAnalogOutputTypeResponse(_Codecs.Writer writer, _Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeResponse ReadRos1Dsr_msgsSetCtrlBoxAnalogOutputTypeResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeResponse();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros1Dsr_msgsSetCtrlBoxDigitalOutputRequest
    {
        public sbyte @index = 0;
        public sbyte @value = 0;

        public _Ros1Dsr_msgsSetCtrlBoxDigitalOutputRequest()
        {
        }
    }

    public sealed class Ros1Dsr_msgsSetCtrlBoxDigitalOutputRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsSetCtrlBoxDigitalOutputRequest>
    {
        public static readonly Ros1Dsr_msgsSetCtrlBoxDigitalOutputRequestCodec Instance = new Ros1Dsr_msgsSetCtrlBoxDigitalOutputRequestCodec();

        private Ros1Dsr_msgsSetCtrlBoxDigitalOutputRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/SetCtrlBoxDigitalOutputRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_82a2c083195f7adc4fd3104cb05039cf109e9779920e36b4d3966edb819f83db";
        public const int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;

        public byte[] Encode(_Ros1Dsr_msgsSetCtrlBoxDigitalOutputRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsSetCtrlBoxDigitalOutputRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsSetCtrlBoxDigitalOutputRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsSetCtrlBoxDigitalOutputRequest value = ReadRos1Dsr_msgsSetCtrlBoxDigitalOutputRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsSetCtrlBoxDigitalOutputRequest(_Codecs.Writer writer, _Ros1Dsr_msgsSetCtrlBoxDigitalOutputRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        sbyte part0 = value.@index;
        writer.Unsigned(unchecked((byte)part0), 1);
        sbyte part1 = value.@value;
        writer.Unsigned(unchecked((byte)part1), 1);
    }

    private static _Ros1Dsr_msgsSetCtrlBoxDigitalOutputRequest ReadRos1Dsr_msgsSetCtrlBoxDigitalOutputRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsSetCtrlBoxDigitalOutputRequest();
        value.@index = unchecked((sbyte)reader.Unsigned(1));
        value.@value = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    public sealed class _Ros1Dsr_msgsSetCtrlBoxDigitalOutputResponse
    {
        public bool @success = false;

        public _Ros1Dsr_msgsSetCtrlBoxDigitalOutputResponse()
        {
        }
    }

    public sealed class Ros1Dsr_msgsSetCtrlBoxDigitalOutputResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsSetCtrlBoxDigitalOutputResponse>
    {
        public static readonly Ros1Dsr_msgsSetCtrlBoxDigitalOutputResponseCodec Instance = new Ros1Dsr_msgsSetCtrlBoxDigitalOutputResponseCodec();

        private Ros1Dsr_msgsSetCtrlBoxDigitalOutputResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/SetCtrlBoxDigitalOutputResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_dc0411c903a4350c81130d3343615212c4e3a9c259f7b193bff92c95b7039657";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros1Dsr_msgsSetCtrlBoxDigitalOutputResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsSetCtrlBoxDigitalOutputResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsSetCtrlBoxDigitalOutputResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsSetCtrlBoxDigitalOutputResponse value = ReadRos1Dsr_msgsSetCtrlBoxDigitalOutputResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsSetCtrlBoxDigitalOutputResponse(_Codecs.Writer writer, _Ros1Dsr_msgsSetCtrlBoxDigitalOutputResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros1Dsr_msgsSetCtrlBoxDigitalOutputResponse ReadRos1Dsr_msgsSetCtrlBoxDigitalOutputResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsSetCtrlBoxDigitalOutputResponse();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros1Dsr_msgsSetCurrentTcpRequest
    {
        public string @name = "";

        public _Ros1Dsr_msgsSetCurrentTcpRequest()
        {
        }
    }

    public sealed class Ros1Dsr_msgsSetCurrentTcpRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsSetCurrentTcpRequest>
    {
        public static readonly Ros1Dsr_msgsSetCurrentTcpRequestCodec Instance = new Ros1Dsr_msgsSetCurrentTcpRequestCodec();

        private Ros1Dsr_msgsSetCurrentTcpRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/SetCurrentTcpRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_6a403e6eb4e86aab4d76913e5dd679425f68c6e4c9b38c82af1eaa180dc65f00";
        public const int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 260;

        public byte[] Encode(_Ros1Dsr_msgsSetCurrentTcpRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsSetCurrentTcpRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsSetCurrentTcpRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsSetCurrentTcpRequest value = ReadRos1Dsr_msgsSetCurrentTcpRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsSetCurrentTcpRequest(_Codecs.Writer writer, _Ros1Dsr_msgsSetCurrentTcpRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        string part0 = value.@name;
        WriteText(writer, part0, 256);
    }

    private static _Ros1Dsr_msgsSetCurrentTcpRequest ReadRos1Dsr_msgsSetCurrentTcpRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsSetCurrentTcpRequest();
        value.@name = ReadText(reader, 256);
        return value;
    }

    public sealed class _Ros1Dsr_msgsSetCurrentTcpResponse
    {
        public bool @success = false;

        public _Ros1Dsr_msgsSetCurrentTcpResponse()
        {
        }
    }

    public sealed class Ros1Dsr_msgsSetCurrentTcpResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsSetCurrentTcpResponse>
    {
        public static readonly Ros1Dsr_msgsSetCurrentTcpResponseCodec Instance = new Ros1Dsr_msgsSetCurrentTcpResponseCodec();

        private Ros1Dsr_msgsSetCurrentTcpResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/SetCurrentTcpResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_29c09f17453ac9fa413922b023f1a54ae253cecbbdea211202da551187bbf7ab";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros1Dsr_msgsSetCurrentTcpResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsSetCurrentTcpResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsSetCurrentTcpResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsSetCurrentTcpResponse value = ReadRos1Dsr_msgsSetCurrentTcpResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsSetCurrentTcpResponse(_Codecs.Writer writer, _Ros1Dsr_msgsSetCurrentTcpResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros1Dsr_msgsSetCurrentTcpResponse ReadRos1Dsr_msgsSetCurrentTcpResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsSetCurrentTcpResponse();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros1Dsr_msgsSetCurrentToolRequest
    {
        public string @name = "";

        public _Ros1Dsr_msgsSetCurrentToolRequest()
        {
        }
    }

    public sealed class Ros1Dsr_msgsSetCurrentToolRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsSetCurrentToolRequest>
    {
        public static readonly Ros1Dsr_msgsSetCurrentToolRequestCodec Instance = new Ros1Dsr_msgsSetCurrentToolRequestCodec();

        private Ros1Dsr_msgsSetCurrentToolRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/SetCurrentToolRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_d5d71101193ff28fe86d6ba22de9922fda0c806bbd8cd5bfdb8ef3688f5bacb4";
        public const int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 260;

        public byte[] Encode(_Ros1Dsr_msgsSetCurrentToolRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsSetCurrentToolRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsSetCurrentToolRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsSetCurrentToolRequest value = ReadRos1Dsr_msgsSetCurrentToolRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsSetCurrentToolRequest(_Codecs.Writer writer, _Ros1Dsr_msgsSetCurrentToolRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        string part0 = value.@name;
        WriteText(writer, part0, 256);
    }

    private static _Ros1Dsr_msgsSetCurrentToolRequest ReadRos1Dsr_msgsSetCurrentToolRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsSetCurrentToolRequest();
        value.@name = ReadText(reader, 256);
        return value;
    }

    public sealed class _Ros1Dsr_msgsSetCurrentToolResponse
    {
        public bool @success = false;

        public _Ros1Dsr_msgsSetCurrentToolResponse()
        {
        }
    }

    public sealed class Ros1Dsr_msgsSetCurrentToolResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsSetCurrentToolResponse>
    {
        public static readonly Ros1Dsr_msgsSetCurrentToolResponseCodec Instance = new Ros1Dsr_msgsSetCurrentToolResponseCodec();

        private Ros1Dsr_msgsSetCurrentToolResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/SetCurrentToolResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_89937411059cec969c42c90bdb4c81fa15dc645b627d10d376dc5ded2c56e1de";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros1Dsr_msgsSetCurrentToolResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsSetCurrentToolResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsSetCurrentToolResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsSetCurrentToolResponse value = ReadRos1Dsr_msgsSetCurrentToolResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsSetCurrentToolResponse(_Codecs.Writer writer, _Ros1Dsr_msgsSetCurrentToolResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros1Dsr_msgsSetCurrentToolResponse ReadRos1Dsr_msgsSetCurrentToolResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsSetCurrentToolResponse();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros1Dsr_msgsSetModbusOutputRequest
    {
        public string @name = "";
        public int @value = 0;

        public _Ros1Dsr_msgsSetModbusOutputRequest()
        {
        }
    }

    public sealed class Ros1Dsr_msgsSetModbusOutputRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsSetModbusOutputRequest>
    {
        public static readonly Ros1Dsr_msgsSetModbusOutputRequestCodec Instance = new Ros1Dsr_msgsSetModbusOutputRequestCodec();

        private Ros1Dsr_msgsSetModbusOutputRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/SetModbusOutputRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_3482041cfb90233b59433f4749d9e8f422fc73cdb26525bdbc60370e73c7827f";
        public const int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 264;

        public byte[] Encode(_Ros1Dsr_msgsSetModbusOutputRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsSetModbusOutputRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsSetModbusOutputRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsSetModbusOutputRequest value = ReadRos1Dsr_msgsSetModbusOutputRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsSetModbusOutputRequest(_Codecs.Writer writer, _Ros1Dsr_msgsSetModbusOutputRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        string part0 = value.@name;
        WriteText(writer, part0, 256);
        int part1 = value.@value;
        writer.Unsigned(unchecked((uint)part1), 4);
    }

    private static _Ros1Dsr_msgsSetModbusOutputRequest ReadRos1Dsr_msgsSetModbusOutputRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsSetModbusOutputRequest();
        value.@name = ReadText(reader, 256);
        value.@value = unchecked((int)reader.Unsigned(4));
        return value;
    }

    public sealed class _Ros1Dsr_msgsSetModbusOutputResponse
    {
        public bool @success = false;

        public _Ros1Dsr_msgsSetModbusOutputResponse()
        {
        }
    }

    public sealed class Ros1Dsr_msgsSetModbusOutputResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsSetModbusOutputResponse>
    {
        public static readonly Ros1Dsr_msgsSetModbusOutputResponseCodec Instance = new Ros1Dsr_msgsSetModbusOutputResponseCodec();

        private Ros1Dsr_msgsSetModbusOutputResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/SetModbusOutputResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_763789f569991b2ba44844586d51b20f2c439e9b22ace4bc72b1bce7b23e0491";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros1Dsr_msgsSetModbusOutputResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsSetModbusOutputResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsSetModbusOutputResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsSetModbusOutputResponse value = ReadRos1Dsr_msgsSetModbusOutputResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsSetModbusOutputResponse(_Codecs.Writer writer, _Ros1Dsr_msgsSetModbusOutputResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros1Dsr_msgsSetModbusOutputResponse ReadRos1Dsr_msgsSetModbusOutputResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsSetModbusOutputResponse();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros1Dsr_msgsSetRobotModeRequest
    {
        public sbyte @robot_mode = 0;

        public _Ros1Dsr_msgsSetRobotModeRequest()
        {
        }
    }

    public sealed class Ros1Dsr_msgsSetRobotModeRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsSetRobotModeRequest>
    {
        public static readonly Ros1Dsr_msgsSetRobotModeRequestCodec Instance = new Ros1Dsr_msgsSetRobotModeRequestCodec();

        private Ros1Dsr_msgsSetRobotModeRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/SetRobotModeRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_295575a2df0f007254f9aa7eac220e99fcae85ecb085181d5a3ca4e4e86f23fe";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros1Dsr_msgsSetRobotModeRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsSetRobotModeRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsSetRobotModeRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsSetRobotModeRequest value = ReadRos1Dsr_msgsSetRobotModeRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsSetRobotModeRequest(_Codecs.Writer writer, _Ros1Dsr_msgsSetRobotModeRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        sbyte part0 = value.@robot_mode;
        writer.Unsigned(unchecked((byte)part0), 1);
    }

    private static _Ros1Dsr_msgsSetRobotModeRequest ReadRos1Dsr_msgsSetRobotModeRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsSetRobotModeRequest();
        value.@robot_mode = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    public sealed class _Ros1Dsr_msgsSetRobotModeResponse
    {
        public bool @success = false;

        public _Ros1Dsr_msgsSetRobotModeResponse()
        {
        }
    }

    public sealed class Ros1Dsr_msgsSetRobotModeResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsSetRobotModeResponse>
    {
        public static readonly Ros1Dsr_msgsSetRobotModeResponseCodec Instance = new Ros1Dsr_msgsSetRobotModeResponseCodec();

        private Ros1Dsr_msgsSetRobotModeResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/SetRobotModeResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_bbf3bda8cd2e9afbda89023639013686ecd7612a9323a6d4180b8ac092caaad1";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros1Dsr_msgsSetRobotModeResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsSetRobotModeResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsSetRobotModeResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsSetRobotModeResponse value = ReadRos1Dsr_msgsSetRobotModeResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsSetRobotModeResponse(_Codecs.Writer writer, _Ros1Dsr_msgsSetRobotModeResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros1Dsr_msgsSetRobotModeResponse ReadRos1Dsr_msgsSetRobotModeResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsSetRobotModeResponse();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros1Dsr_msgsSetRobotSpeedModeRequest
    {
        public sbyte @speed_mode = 0;

        public _Ros1Dsr_msgsSetRobotSpeedModeRequest()
        {
        }
    }

    public sealed class Ros1Dsr_msgsSetRobotSpeedModeRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsSetRobotSpeedModeRequest>
    {
        public static readonly Ros1Dsr_msgsSetRobotSpeedModeRequestCodec Instance = new Ros1Dsr_msgsSetRobotSpeedModeRequestCodec();

        private Ros1Dsr_msgsSetRobotSpeedModeRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/SetRobotSpeedModeRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_68f9a7f019ddfa1015de6c7e3115d632eb44ec794f364e6a0617fed34f70531c";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros1Dsr_msgsSetRobotSpeedModeRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsSetRobotSpeedModeRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsSetRobotSpeedModeRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsSetRobotSpeedModeRequest value = ReadRos1Dsr_msgsSetRobotSpeedModeRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsSetRobotSpeedModeRequest(_Codecs.Writer writer, _Ros1Dsr_msgsSetRobotSpeedModeRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        sbyte part0 = value.@speed_mode;
        writer.Unsigned(unchecked((byte)part0), 1);
    }

    private static _Ros1Dsr_msgsSetRobotSpeedModeRequest ReadRos1Dsr_msgsSetRobotSpeedModeRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsSetRobotSpeedModeRequest();
        value.@speed_mode = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    public sealed class _Ros1Dsr_msgsSetRobotSpeedModeResponse
    {
        public bool @success = false;

        public _Ros1Dsr_msgsSetRobotSpeedModeResponse()
        {
        }
    }

    public sealed class Ros1Dsr_msgsSetRobotSpeedModeResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsSetRobotSpeedModeResponse>
    {
        public static readonly Ros1Dsr_msgsSetRobotSpeedModeResponseCodec Instance = new Ros1Dsr_msgsSetRobotSpeedModeResponseCodec();

        private Ros1Dsr_msgsSetRobotSpeedModeResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/SetRobotSpeedModeResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_6434538e8bf60b1b900aba530ed3e027eb13d854591eab5e0e93cc407e90c94b";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros1Dsr_msgsSetRobotSpeedModeResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsSetRobotSpeedModeResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsSetRobotSpeedModeResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsSetRobotSpeedModeResponse value = ReadRos1Dsr_msgsSetRobotSpeedModeResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsSetRobotSpeedModeResponse(_Codecs.Writer writer, _Ros1Dsr_msgsSetRobotSpeedModeResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros1Dsr_msgsSetRobotSpeedModeResponse ReadRos1Dsr_msgsSetRobotSpeedModeResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsSetRobotSpeedModeResponse();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros1Dsr_msgsSetRobotSystemRequest
    {
        public sbyte @robot_system = 0;

        public _Ros1Dsr_msgsSetRobotSystemRequest()
        {
        }
    }

    public sealed class Ros1Dsr_msgsSetRobotSystemRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsSetRobotSystemRequest>
    {
        public static readonly Ros1Dsr_msgsSetRobotSystemRequestCodec Instance = new Ros1Dsr_msgsSetRobotSystemRequestCodec();

        private Ros1Dsr_msgsSetRobotSystemRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/SetRobotSystemRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_75ffa8e1e77ea59a3b7a27151404682cfdef7226d32d3b78b6d67e562536eeee";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros1Dsr_msgsSetRobotSystemRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsSetRobotSystemRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsSetRobotSystemRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsSetRobotSystemRequest value = ReadRos1Dsr_msgsSetRobotSystemRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsSetRobotSystemRequest(_Codecs.Writer writer, _Ros1Dsr_msgsSetRobotSystemRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        sbyte part0 = value.@robot_system;
        writer.Unsigned(unchecked((byte)part0), 1);
    }

    private static _Ros1Dsr_msgsSetRobotSystemRequest ReadRos1Dsr_msgsSetRobotSystemRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsSetRobotSystemRequest();
        value.@robot_system = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    public sealed class _Ros1Dsr_msgsSetRobotSystemResponse
    {
        public bool @success = false;

        public _Ros1Dsr_msgsSetRobotSystemResponse()
        {
        }
    }

    public sealed class Ros1Dsr_msgsSetRobotSystemResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsSetRobotSystemResponse>
    {
        public static readonly Ros1Dsr_msgsSetRobotSystemResponseCodec Instance = new Ros1Dsr_msgsSetRobotSystemResponseCodec();

        private Ros1Dsr_msgsSetRobotSystemResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/SetRobotSystemResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_38f3915ccf71872a966f2f511e73782a79df1923c76e6134ea8d72f0b96f6c27";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros1Dsr_msgsSetRobotSystemResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsSetRobotSystemResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsSetRobotSystemResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsSetRobotSystemResponse value = ReadRos1Dsr_msgsSetRobotSystemResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsSetRobotSystemResponse(_Codecs.Writer writer, _Ros1Dsr_msgsSetRobotSystemResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros1Dsr_msgsSetRobotSystemResponse ReadRos1Dsr_msgsSetRobotSystemResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsSetRobotSystemResponse();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros1Dsr_msgsSetSafeStopResetTypeRequest
    {
        public sbyte @reset_type = 0;

        public _Ros1Dsr_msgsSetSafeStopResetTypeRequest()
        {
        }
    }

    public sealed class Ros1Dsr_msgsSetSafeStopResetTypeRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsSetSafeStopResetTypeRequest>
    {
        public static readonly Ros1Dsr_msgsSetSafeStopResetTypeRequestCodec Instance = new Ros1Dsr_msgsSetSafeStopResetTypeRequestCodec();

        private Ros1Dsr_msgsSetSafeStopResetTypeRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/SetSafeStopResetTypeRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_8a9961395d960217a4f867ee0d2994ea40afe83c4a33a7dcc5b348a85a7fff42";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros1Dsr_msgsSetSafeStopResetTypeRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsSetSafeStopResetTypeRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsSetSafeStopResetTypeRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsSetSafeStopResetTypeRequest value = ReadRos1Dsr_msgsSetSafeStopResetTypeRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsSetSafeStopResetTypeRequest(_Codecs.Writer writer, _Ros1Dsr_msgsSetSafeStopResetTypeRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        sbyte part0 = value.@reset_type;
        writer.Unsigned(unchecked((byte)part0), 1);
    }

    private static _Ros1Dsr_msgsSetSafeStopResetTypeRequest ReadRos1Dsr_msgsSetSafeStopResetTypeRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsSetSafeStopResetTypeRequest();
        value.@reset_type = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    public sealed class _Ros1Dsr_msgsSetSafeStopResetTypeResponse
    {
        public bool @success = false;

        public _Ros1Dsr_msgsSetSafeStopResetTypeResponse()
        {
        }
    }

    public sealed class Ros1Dsr_msgsSetSafeStopResetTypeResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsSetSafeStopResetTypeResponse>
    {
        public static readonly Ros1Dsr_msgsSetSafeStopResetTypeResponseCodec Instance = new Ros1Dsr_msgsSetSafeStopResetTypeResponseCodec();

        private Ros1Dsr_msgsSetSafeStopResetTypeResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/SetSafeStopResetTypeResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_2227553731ecf10a55eda31cd8735f90bd4539777661e3723f712a7a456cd4db";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros1Dsr_msgsSetSafeStopResetTypeResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsSetSafeStopResetTypeResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsSetSafeStopResetTypeResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsSetSafeStopResetTypeResponse value = ReadRos1Dsr_msgsSetSafeStopResetTypeResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsSetSafeStopResetTypeResponse(_Codecs.Writer writer, _Ros1Dsr_msgsSetSafeStopResetTypeResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros1Dsr_msgsSetSafeStopResetTypeResponse ReadRos1Dsr_msgsSetSafeStopResetTypeResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsSetSafeStopResetTypeResponse();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros1Dsr_msgsSetToolDigitalOutputRequest
    {
        public sbyte @index = 0;
        public sbyte @value = 0;

        public _Ros1Dsr_msgsSetToolDigitalOutputRequest()
        {
        }
    }

    public sealed class Ros1Dsr_msgsSetToolDigitalOutputRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsSetToolDigitalOutputRequest>
    {
        public static readonly Ros1Dsr_msgsSetToolDigitalOutputRequestCodec Instance = new Ros1Dsr_msgsSetToolDigitalOutputRequestCodec();

        private Ros1Dsr_msgsSetToolDigitalOutputRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/SetToolDigitalOutputRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_6b384924cefbae3dfe50e02b8fb26ed9e228d2ada5c63070feb0375c125a2123";
        public const int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;

        public byte[] Encode(_Ros1Dsr_msgsSetToolDigitalOutputRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsSetToolDigitalOutputRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsSetToolDigitalOutputRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsSetToolDigitalOutputRequest value = ReadRos1Dsr_msgsSetToolDigitalOutputRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsSetToolDigitalOutputRequest(_Codecs.Writer writer, _Ros1Dsr_msgsSetToolDigitalOutputRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        sbyte part0 = value.@index;
        writer.Unsigned(unchecked((byte)part0), 1);
        sbyte part1 = value.@value;
        writer.Unsigned(unchecked((byte)part1), 1);
    }

    private static _Ros1Dsr_msgsSetToolDigitalOutputRequest ReadRos1Dsr_msgsSetToolDigitalOutputRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsSetToolDigitalOutputRequest();
        value.@index = unchecked((sbyte)reader.Unsigned(1));
        value.@value = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    public sealed class _Ros1Dsr_msgsSetToolDigitalOutputResponse
    {
        public bool @success = false;

        public _Ros1Dsr_msgsSetToolDigitalOutputResponse()
        {
        }
    }

    public sealed class Ros1Dsr_msgsSetToolDigitalOutputResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsSetToolDigitalOutputResponse>
    {
        public static readonly Ros1Dsr_msgsSetToolDigitalOutputResponseCodec Instance = new Ros1Dsr_msgsSetToolDigitalOutputResponseCodec();

        private Ros1Dsr_msgsSetToolDigitalOutputResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/SetToolDigitalOutputResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_4e0acd035740d1e47b42128818528aa3aa33736d979f46ada511ad0e6230ae94";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros1Dsr_msgsSetToolDigitalOutputResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsSetToolDigitalOutputResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsSetToolDigitalOutputResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsSetToolDigitalOutputResponse value = ReadRos1Dsr_msgsSetToolDigitalOutputResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsSetToolDigitalOutputResponse(_Codecs.Writer writer, _Ros1Dsr_msgsSetToolDigitalOutputResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros1Dsr_msgsSetToolDigitalOutputResponse ReadRos1Dsr_msgsSetToolDigitalOutputResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsSetToolDigitalOutputResponse();
        value.@success = ReadBool(reader);
        return value;
    }
}
