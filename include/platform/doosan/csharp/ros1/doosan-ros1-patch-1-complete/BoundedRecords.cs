/**
 * @file BoundedRecords.cs
 * @brief Complete doosan values and adapters for the selected original interface catalog.
 * @details Retain original field order, scalar widths, array capacities, string bounds, constants and declared
 * defaults. Pure value access and canonical codecs create no native ROS allocation or resource grant. Transport
 * roles require the separately admitted SDK owner.
 * @see share/platform/doosan/domains/doosan-ros1-patch-1-complete.ir.json
 * @see document/platform/doosan/en_US/README.md
 */

// Generated complete canonical records; no native ABI, CDR or ROS grant.
#nullable enable
using System;
using _Codecs = global::Uwvm.RosWasm.Codecs;
namespace Uwvm.DoosanDoosanRos1Patch1Complete.Models;

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

    public sealed class _Ros1Dsr_msgsAlignAxis1Request
    {
        public double[] @x1 = new double[6];
        public double[] @x2 = new double[6];
        public double[] @x3 = new double[6];
        public double[] @source_vect = new double[3];
        public sbyte @axis = 0;
        public sbyte @ref = 0;

        public _Ros1Dsr_msgsAlignAxis1Request()
        {
        }
    }

    public sealed class Ros1Dsr_msgsAlignAxis1RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsAlignAxis1Request>
    {
        public static readonly Ros1Dsr_msgsAlignAxis1RequestCodec Instance = new Ros1Dsr_msgsAlignAxis1RequestCodec();

        private Ros1Dsr_msgsAlignAxis1RequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/AlignAxis1Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_708643fa3a09d74f06ee9ba327c3fc05fb60dd73447ea95e43d9d96f7c5b6e54";
        public const int MIN_WIRE_BYTES = 170, MAX_WIRE_BYTES = 170;

        public byte[] Encode(_Ros1Dsr_msgsAlignAxis1Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsAlignAxis1Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsAlignAxis1Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsAlignAxis1Request value = ReadRos1Dsr_msgsAlignAxis1Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsAlignAxis1Request(_Codecs.Writer writer, _Ros1Dsr_msgsAlignAxis1Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        double[] part0 = value.@x1;
        if(part0 == null || part0.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part0.Length; ++index)
        {
            double element = part0[index];
            writer.Float64(element);
        }
        double[] part1 = value.@x2;
        if(part1 == null || part1.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part1.Length; ++index)
        {
            double element = part1[index];
            writer.Float64(element);
        }
        double[] part2 = value.@x3;
        if(part2 == null || part2.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part2.Length; ++index)
        {
            double element = part2[index];
            writer.Float64(element);
        }
        double[] part3 = value.@source_vect;
        if(part3 == null || part3.Length != 3)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part3.Length; ++index)
        {
            double element = part3[index];
            writer.Float64(element);
        }
        sbyte part4 = value.@axis;
        writer.Unsigned(unchecked((byte)part4), 1);
        sbyte part5 = value.@ref;
        writer.Unsigned(unchecked((byte)part5), 1);
    }

    private static _Ros1Dsr_msgsAlignAxis1Request ReadRos1Dsr_msgsAlignAxis1Request(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsAlignAxis1Request();
        value.@x1 = new double[6];
        for(int index = 0; index < value.@x1.Length; ++index)
            value.@x1[index] = reader.Float64();
        value.@x2 = new double[6];
        for(int index = 0; index < value.@x2.Length; ++index)
            value.@x2[index] = reader.Float64();
        value.@x3 = new double[6];
        for(int index = 0; index < value.@x3.Length; ++index)
            value.@x3[index] = reader.Float64();
        value.@source_vect = new double[3];
        for(int index = 0; index < value.@source_vect.Length; ++index)
            value.@source_vect[index] = reader.Float64();
        value.@axis = unchecked((sbyte)reader.Unsigned(1));
        value.@ref = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    public sealed class _Ros1Dsr_msgsAlignAxis1Response
    {
        public bool @success = false;

        public _Ros1Dsr_msgsAlignAxis1Response()
        {
        }
    }

    public sealed class Ros1Dsr_msgsAlignAxis1ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsAlignAxis1Response>
    {
        public static readonly Ros1Dsr_msgsAlignAxis1ResponseCodec Instance = new Ros1Dsr_msgsAlignAxis1ResponseCodec();

        private Ros1Dsr_msgsAlignAxis1ResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/AlignAxis1Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_dda31d7d89f3f8b2bb3c68c0d685a30ccfc32a9c363ea5399a1777da80d2f33d";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros1Dsr_msgsAlignAxis1Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsAlignAxis1Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsAlignAxis1Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsAlignAxis1Response value = ReadRos1Dsr_msgsAlignAxis1Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsAlignAxis1Response(_Codecs.Writer writer, _Ros1Dsr_msgsAlignAxis1Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros1Dsr_msgsAlignAxis1Response ReadRos1Dsr_msgsAlignAxis1Response(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsAlignAxis1Response();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros1Dsr_msgsAlignAxis2Request
    {
        public double[] @target_vect = new double[3];
        public double[] @source_vect = new double[3];
        public sbyte @axis = 0;
        public sbyte @ref = 0;

        public _Ros1Dsr_msgsAlignAxis2Request()
        {
        }
    }

    public sealed class Ros1Dsr_msgsAlignAxis2RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsAlignAxis2Request>
    {
        public static readonly Ros1Dsr_msgsAlignAxis2RequestCodec Instance = new Ros1Dsr_msgsAlignAxis2RequestCodec();

        private Ros1Dsr_msgsAlignAxis2RequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/AlignAxis2Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_3e1c136bdfe0d97015a19c2fffc6b40460933a3ada556e57142d6309f99fe1ea";
        public const int MIN_WIRE_BYTES = 50, MAX_WIRE_BYTES = 50;

        public byte[] Encode(_Ros1Dsr_msgsAlignAxis2Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsAlignAxis2Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsAlignAxis2Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsAlignAxis2Request value = ReadRos1Dsr_msgsAlignAxis2Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsAlignAxis2Request(_Codecs.Writer writer, _Ros1Dsr_msgsAlignAxis2Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        double[] part0 = value.@target_vect;
        if(part0 == null || part0.Length != 3)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part0.Length; ++index)
        {
            double element = part0[index];
            writer.Float64(element);
        }
        double[] part1 = value.@source_vect;
        if(part1 == null || part1.Length != 3)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part1.Length; ++index)
        {
            double element = part1[index];
            writer.Float64(element);
        }
        sbyte part2 = value.@axis;
        writer.Unsigned(unchecked((byte)part2), 1);
        sbyte part3 = value.@ref;
        writer.Unsigned(unchecked((byte)part3), 1);
    }

    private static _Ros1Dsr_msgsAlignAxis2Request ReadRos1Dsr_msgsAlignAxis2Request(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsAlignAxis2Request();
        value.@target_vect = new double[3];
        for(int index = 0; index < value.@target_vect.Length; ++index)
            value.@target_vect[index] = reader.Float64();
        value.@source_vect = new double[3];
        for(int index = 0; index < value.@source_vect.Length; ++index)
            value.@source_vect[index] = reader.Float64();
        value.@axis = unchecked((sbyte)reader.Unsigned(1));
        value.@ref = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    public sealed class _Ros1Dsr_msgsAlignAxis2Response
    {
        public bool @success = false;

        public _Ros1Dsr_msgsAlignAxis2Response()
        {
        }
    }

    public sealed class Ros1Dsr_msgsAlignAxis2ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsAlignAxis2Response>
    {
        public static readonly Ros1Dsr_msgsAlignAxis2ResponseCodec Instance = new Ros1Dsr_msgsAlignAxis2ResponseCodec();

        private Ros1Dsr_msgsAlignAxis2ResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/AlignAxis2Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_79618c7ede73decd7a8cb4f0cc013b95c463ca37126d49c0b54e17ad17224ade";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros1Dsr_msgsAlignAxis2Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsAlignAxis2Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsAlignAxis2Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsAlignAxis2Response value = ReadRos1Dsr_msgsAlignAxis2Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsAlignAxis2Response(_Codecs.Writer writer, _Ros1Dsr_msgsAlignAxis2Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros1Dsr_msgsAlignAxis2Response ReadRos1Dsr_msgsAlignAxis2Response(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsAlignAxis2Response();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros1Dsr_msgsAlterMotionRequest
    {
        public double[] @pos = new double[6];

        public _Ros1Dsr_msgsAlterMotionRequest()
        {
        }
    }

    public sealed class Ros1Dsr_msgsAlterMotionRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsAlterMotionRequest>
    {
        public static readonly Ros1Dsr_msgsAlterMotionRequestCodec Instance = new Ros1Dsr_msgsAlterMotionRequestCodec();

        private Ros1Dsr_msgsAlterMotionRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/AlterMotionRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_2230e6b8bc09c902ab6ba9ed4e9fdb59a9e8d691cf614599e5f96fd8d2820787";
        public const int MIN_WIRE_BYTES = 48, MAX_WIRE_BYTES = 48;

        public byte[] Encode(_Ros1Dsr_msgsAlterMotionRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsAlterMotionRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsAlterMotionRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsAlterMotionRequest value = ReadRos1Dsr_msgsAlterMotionRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsAlterMotionRequest(_Codecs.Writer writer, _Ros1Dsr_msgsAlterMotionRequest value)
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

    private static _Ros1Dsr_msgsAlterMotionRequest ReadRos1Dsr_msgsAlterMotionRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsAlterMotionRequest();
        value.@pos = new double[6];
        for(int index = 0; index < value.@pos.Length; ++index)
            value.@pos[index] = reader.Float64();
        return value;
    }

    public sealed class _Ros1Dsr_msgsAlterMotionResponse
    {
        public bool @success = false;

        public _Ros1Dsr_msgsAlterMotionResponse()
        {
        }
    }

    public sealed class Ros1Dsr_msgsAlterMotionResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsAlterMotionResponse>
    {
        public static readonly Ros1Dsr_msgsAlterMotionResponseCodec Instance = new Ros1Dsr_msgsAlterMotionResponseCodec();

        private Ros1Dsr_msgsAlterMotionResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/AlterMotionResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_d27db25bae1cbb78fedfb24b96acbe023949948766ed856ad91e942fe367f716";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros1Dsr_msgsAlterMotionResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsAlterMotionResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsAlterMotionResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsAlterMotionResponse value = ReadRos1Dsr_msgsAlterMotionResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsAlterMotionResponse(_Codecs.Writer writer, _Ros1Dsr_msgsAlterMotionResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros1Dsr_msgsAlterMotionResponse ReadRos1Dsr_msgsAlterMotionResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsAlterMotionResponse();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros1Dsr_msgsAlterMotionStream
    {
        public double[] @pos = new double[6];

        public _Ros1Dsr_msgsAlterMotionStream()
        {
        }
    }

    public sealed class Ros1Dsr_msgsAlterMotionStreamCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsAlterMotionStream>
    {
        public static readonly Ros1Dsr_msgsAlterMotionStreamCodec Instance = new Ros1Dsr_msgsAlterMotionStreamCodec();

        private Ros1Dsr_msgsAlterMotionStreamCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/AlterMotionStream";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_18119f940783ffa402b9f51773f9eac801b70f891039aa1da99b1bea04bc50ac";
        public const int MIN_WIRE_BYTES = 48, MAX_WIRE_BYTES = 48;

        public byte[] Encode(_Ros1Dsr_msgsAlterMotionStream value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsAlterMotionStream(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsAlterMotionStream Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsAlterMotionStream value = ReadRos1Dsr_msgsAlterMotionStream(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsAlterMotionStream(_Codecs.Writer writer, _Ros1Dsr_msgsAlterMotionStream value)
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

    private static _Ros1Dsr_msgsAlterMotionStream ReadRos1Dsr_msgsAlterMotionStream(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsAlterMotionStream();
        value.@pos = new double[6];
        for(int index = 0; index < value.@pos.Length; ++index)
            value.@pos[index] = reader.Float64();
        return value;
    }

    public sealed class _Ros1Dsr_msgsCalcCoordRequest
    {
        public sbyte @input_pos_cnt = 0;
        public double[] @x1 = new double[6];
        public double[] @x2 = new double[6];
        public double[] @x3 = new double[6];
        public double[] @x4 = new double[6];
        public sbyte @ref = 0;
        public sbyte @mod = 0;

        public _Ros1Dsr_msgsCalcCoordRequest()
        {
        }
    }

    public sealed class Ros1Dsr_msgsCalcCoordRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsCalcCoordRequest>
    {
        public static readonly Ros1Dsr_msgsCalcCoordRequestCodec Instance = new Ros1Dsr_msgsCalcCoordRequestCodec();

        private Ros1Dsr_msgsCalcCoordRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/CalcCoordRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_7124a7312fd476b49ef2fd9fb468ea19ce7ae644da5c8fffb3ddfc67c175c70d";
        public const int MIN_WIRE_BYTES = 195, MAX_WIRE_BYTES = 195;

        public byte[] Encode(_Ros1Dsr_msgsCalcCoordRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsCalcCoordRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsCalcCoordRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsCalcCoordRequest value = ReadRos1Dsr_msgsCalcCoordRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsCalcCoordRequest(_Codecs.Writer writer, _Ros1Dsr_msgsCalcCoordRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        sbyte part0 = value.@input_pos_cnt;
        writer.Unsigned(unchecked((byte)part0), 1);
        double[] part1 = value.@x1;
        if(part1 == null || part1.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part1.Length; ++index)
        {
            double element = part1[index];
            writer.Float64(element);
        }
        double[] part2 = value.@x2;
        if(part2 == null || part2.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part2.Length; ++index)
        {
            double element = part2[index];
            writer.Float64(element);
        }
        double[] part3 = value.@x3;
        if(part3 == null || part3.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part3.Length; ++index)
        {
            double element = part3[index];
            writer.Float64(element);
        }
        double[] part4 = value.@x4;
        if(part4 == null || part4.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part4.Length; ++index)
        {
            double element = part4[index];
            writer.Float64(element);
        }
        sbyte part5 = value.@ref;
        writer.Unsigned(unchecked((byte)part5), 1);
        sbyte part6 = value.@mod;
        writer.Unsigned(unchecked((byte)part6), 1);
    }

    private static _Ros1Dsr_msgsCalcCoordRequest ReadRos1Dsr_msgsCalcCoordRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsCalcCoordRequest();
        value.@input_pos_cnt = unchecked((sbyte)reader.Unsigned(1));
        value.@x1 = new double[6];
        for(int index = 0; index < value.@x1.Length; ++index)
            value.@x1[index] = reader.Float64();
        value.@x2 = new double[6];
        for(int index = 0; index < value.@x2.Length; ++index)
            value.@x2[index] = reader.Float64();
        value.@x3 = new double[6];
        for(int index = 0; index < value.@x3.Length; ++index)
            value.@x3[index] = reader.Float64();
        value.@x4 = new double[6];
        for(int index = 0; index < value.@x4.Length; ++index)
            value.@x4[index] = reader.Float64();
        value.@ref = unchecked((sbyte)reader.Unsigned(1));
        value.@mod = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    public sealed class _Ros1Dsr_msgsCalcCoordResponse
    {
        public double[] @conv_posx = new double[6];
        public bool @success = false;

        public _Ros1Dsr_msgsCalcCoordResponse()
        {
        }
    }

    public sealed class Ros1Dsr_msgsCalcCoordResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsCalcCoordResponse>
    {
        public static readonly Ros1Dsr_msgsCalcCoordResponseCodec Instance = new Ros1Dsr_msgsCalcCoordResponseCodec();

        private Ros1Dsr_msgsCalcCoordResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/CalcCoordResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_c34ef9bfe05948a853305174e1084443e5358bc5877c0dd5d05ba6655dc6d993";
        public const int MIN_WIRE_BYTES = 49, MAX_WIRE_BYTES = 49;

        public byte[] Encode(_Ros1Dsr_msgsCalcCoordResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsCalcCoordResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsCalcCoordResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsCalcCoordResponse value = ReadRos1Dsr_msgsCalcCoordResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsCalcCoordResponse(_Codecs.Writer writer, _Ros1Dsr_msgsCalcCoordResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        double[] part0 = value.@conv_posx;
        if(part0 == null || part0.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part0.Length; ++index)
        {
            double element = part0[index];
            writer.Float64(element);
        }
        bool part1 = value.@success;
        writer.Unsigned(part1 ? 1UL : 0UL, 1);
    }

    private static _Ros1Dsr_msgsCalcCoordResponse ReadRos1Dsr_msgsCalcCoordResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsCalcCoordResponse();
        value.@conv_posx = new double[6];
        for(int index = 0; index < value.@conv_posx.Length; ++index)
            value.@conv_posx[index] = reader.Float64();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros1Dsr_msgsChangeOperationSpeedRequest
    {
        public sbyte @speed = 0;

        public _Ros1Dsr_msgsChangeOperationSpeedRequest()
        {
        }
    }

    public sealed class Ros1Dsr_msgsChangeOperationSpeedRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsChangeOperationSpeedRequest>
    {
        public static readonly Ros1Dsr_msgsChangeOperationSpeedRequestCodec Instance = new Ros1Dsr_msgsChangeOperationSpeedRequestCodec();

        private Ros1Dsr_msgsChangeOperationSpeedRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/ChangeOperationSpeedRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_8d8beb40ab8ebd7d0f69509832bc71ac9e460ec01bdecc41a82f4eab28017616";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros1Dsr_msgsChangeOperationSpeedRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsChangeOperationSpeedRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsChangeOperationSpeedRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsChangeOperationSpeedRequest value = ReadRos1Dsr_msgsChangeOperationSpeedRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsChangeOperationSpeedRequest(_Codecs.Writer writer, _Ros1Dsr_msgsChangeOperationSpeedRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        sbyte part0 = value.@speed;
        writer.Unsigned(unchecked((byte)part0), 1);
    }

    private static _Ros1Dsr_msgsChangeOperationSpeedRequest ReadRos1Dsr_msgsChangeOperationSpeedRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsChangeOperationSpeedRequest();
        value.@speed = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    public sealed class _Ros1Dsr_msgsChangeOperationSpeedResponse
    {
        public bool @success = false;

        public _Ros1Dsr_msgsChangeOperationSpeedResponse()
        {
        }
    }

    public sealed class Ros1Dsr_msgsChangeOperationSpeedResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsChangeOperationSpeedResponse>
    {
        public static readonly Ros1Dsr_msgsChangeOperationSpeedResponseCodec Instance = new Ros1Dsr_msgsChangeOperationSpeedResponseCodec();

        private Ros1Dsr_msgsChangeOperationSpeedResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/ChangeOperationSpeedResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_bf8b7e30e18d38f6dde9b02576151cb57c4789cef7b7ea6c56fc8581eafc08f6";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros1Dsr_msgsChangeOperationSpeedResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsChangeOperationSpeedResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsChangeOperationSpeedResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsChangeOperationSpeedResponse value = ReadRos1Dsr_msgsChangeOperationSpeedResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsChangeOperationSpeedResponse(_Codecs.Writer writer, _Ros1Dsr_msgsChangeOperationSpeedResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros1Dsr_msgsChangeOperationSpeedResponse ReadRos1Dsr_msgsChangeOperationSpeedResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsChangeOperationSpeedResponse();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros1Dsr_msgsCheckForceConditionRequest
    {
        public sbyte @axis = 0;
        public double @min = 0;
        public double @max = 0;
        public sbyte @ref = 0;

        public _Ros1Dsr_msgsCheckForceConditionRequest()
        {
        }
    }

    public sealed class Ros1Dsr_msgsCheckForceConditionRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsCheckForceConditionRequest>
    {
        public static readonly Ros1Dsr_msgsCheckForceConditionRequestCodec Instance = new Ros1Dsr_msgsCheckForceConditionRequestCodec();

        private Ros1Dsr_msgsCheckForceConditionRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/CheckForceConditionRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_590694ea44b90bb2aa6fa1f903d129e2a58a33af58fe26c9f67f9b0272b34673";
        public const int MIN_WIRE_BYTES = 18, MAX_WIRE_BYTES = 18;

        public byte[] Encode(_Ros1Dsr_msgsCheckForceConditionRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsCheckForceConditionRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsCheckForceConditionRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsCheckForceConditionRequest value = ReadRos1Dsr_msgsCheckForceConditionRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsCheckForceConditionRequest(_Codecs.Writer writer, _Ros1Dsr_msgsCheckForceConditionRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        sbyte part0 = value.@axis;
        writer.Unsigned(unchecked((byte)part0), 1);
        double part1 = value.@min;
        writer.Float64(part1);
        double part2 = value.@max;
        writer.Float64(part2);
        sbyte part3 = value.@ref;
        writer.Unsigned(unchecked((byte)part3), 1);
    }

    private static _Ros1Dsr_msgsCheckForceConditionRequest ReadRos1Dsr_msgsCheckForceConditionRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsCheckForceConditionRequest();
        value.@axis = unchecked((sbyte)reader.Unsigned(1));
        value.@min = reader.Float64();
        value.@max = reader.Float64();
        value.@ref = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    public sealed class _Ros1Dsr_msgsCheckForceConditionResponse
    {
        public bool @success = false;

        public _Ros1Dsr_msgsCheckForceConditionResponse()
        {
        }
    }

    public sealed class Ros1Dsr_msgsCheckForceConditionResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsCheckForceConditionResponse>
    {
        public static readonly Ros1Dsr_msgsCheckForceConditionResponseCodec Instance = new Ros1Dsr_msgsCheckForceConditionResponseCodec();

        private Ros1Dsr_msgsCheckForceConditionResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/CheckForceConditionResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_6d0cb8413b824c1a469f77cd592946e67dd0a0c15d5945b0ea908c0e0e7a3270";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros1Dsr_msgsCheckForceConditionResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsCheckForceConditionResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsCheckForceConditionResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsCheckForceConditionResponse value = ReadRos1Dsr_msgsCheckForceConditionResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsCheckForceConditionResponse(_Codecs.Writer writer, _Ros1Dsr_msgsCheckForceConditionResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros1Dsr_msgsCheckForceConditionResponse ReadRos1Dsr_msgsCheckForceConditionResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsCheckForceConditionResponse();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros1Dsr_msgsCheckMotionRequest
    {
        public _Ros1Dsr_msgsCheckMotionRequest()
        {
        }
    }

    public sealed class Ros1Dsr_msgsCheckMotionRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsCheckMotionRequest>
    {
        public static readonly Ros1Dsr_msgsCheckMotionRequestCodec Instance = new Ros1Dsr_msgsCheckMotionRequestCodec();

        private Ros1Dsr_msgsCheckMotionRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/CheckMotionRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_f38bee5e76ececdf4868a092e4ee673da6bcd95db9baacd504ef31017b94b7d5";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public byte[] Encode(_Ros1Dsr_msgsCheckMotionRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsCheckMotionRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsCheckMotionRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsCheckMotionRequest value = ReadRos1Dsr_msgsCheckMotionRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsCheckMotionRequest(_Codecs.Writer writer, _Ros1Dsr_msgsCheckMotionRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    private static _Ros1Dsr_msgsCheckMotionRequest ReadRos1Dsr_msgsCheckMotionRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsCheckMotionRequest();
        return value;
    }

    public sealed class _Ros1Dsr_msgsCheckMotionResponse
    {
        public sbyte @status = 0;
        public bool @success = false;

        public _Ros1Dsr_msgsCheckMotionResponse()
        {
        }
    }

    public sealed class Ros1Dsr_msgsCheckMotionResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsCheckMotionResponse>
    {
        public static readonly Ros1Dsr_msgsCheckMotionResponseCodec Instance = new Ros1Dsr_msgsCheckMotionResponseCodec();

        private Ros1Dsr_msgsCheckMotionResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/CheckMotionResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_2e11dbf1b2a447dd3b6f302f3839b2383f6c3e0c0408c138cb7acb12062df480";
        public const int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;

        public byte[] Encode(_Ros1Dsr_msgsCheckMotionResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsCheckMotionResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsCheckMotionResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsCheckMotionResponse value = ReadRos1Dsr_msgsCheckMotionResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsCheckMotionResponse(_Codecs.Writer writer, _Ros1Dsr_msgsCheckMotionResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        sbyte part0 = value.@status;
        writer.Unsigned(unchecked((byte)part0), 1);
        bool part1 = value.@success;
        writer.Unsigned(part1 ? 1UL : 0UL, 1);
    }

    private static _Ros1Dsr_msgsCheckMotionResponse ReadRos1Dsr_msgsCheckMotionResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsCheckMotionResponse();
        value.@status = unchecked((sbyte)reader.Unsigned(1));
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros1Dsr_msgsCheckOrientationCondition1Request
    {
        public sbyte @axis = 0;
        public double[] @min = new double[6];
        public double[] @max = new double[6];
        public sbyte @ref = 0;
        public sbyte @mode = 0;

        public _Ros1Dsr_msgsCheckOrientationCondition1Request()
        {
        }
    }

    public sealed class Ros1Dsr_msgsCheckOrientationCondition1RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsCheckOrientationCondition1Request>
    {
        public static readonly Ros1Dsr_msgsCheckOrientationCondition1RequestCodec Instance = new Ros1Dsr_msgsCheckOrientationCondition1RequestCodec();

        private Ros1Dsr_msgsCheckOrientationCondition1RequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/CheckOrientationCondition1Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_048532f02d47e889e7299755886812a454c0457d4c70fda58bd090c959a52c6e";
        public const int MIN_WIRE_BYTES = 99, MAX_WIRE_BYTES = 99;

        public byte[] Encode(_Ros1Dsr_msgsCheckOrientationCondition1Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsCheckOrientationCondition1Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsCheckOrientationCondition1Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsCheckOrientationCondition1Request value = ReadRos1Dsr_msgsCheckOrientationCondition1Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsCheckOrientationCondition1Request(_Codecs.Writer writer, _Ros1Dsr_msgsCheckOrientationCondition1Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        sbyte part0 = value.@axis;
        writer.Unsigned(unchecked((byte)part0), 1);
        double[] part1 = value.@min;
        if(part1 == null || part1.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part1.Length; ++index)
        {
            double element = part1[index];
            writer.Float64(element);
        }
        double[] part2 = value.@max;
        if(part2 == null || part2.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part2.Length; ++index)
        {
            double element = part2[index];
            writer.Float64(element);
        }
        sbyte part3 = value.@ref;
        writer.Unsigned(unchecked((byte)part3), 1);
        sbyte part4 = value.@mode;
        writer.Unsigned(unchecked((byte)part4), 1);
    }

    private static _Ros1Dsr_msgsCheckOrientationCondition1Request ReadRos1Dsr_msgsCheckOrientationCondition1Request(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsCheckOrientationCondition1Request();
        value.@axis = unchecked((sbyte)reader.Unsigned(1));
        value.@min = new double[6];
        for(int index = 0; index < value.@min.Length; ++index)
            value.@min[index] = reader.Float64();
        value.@max = new double[6];
        for(int index = 0; index < value.@max.Length; ++index)
            value.@max[index] = reader.Float64();
        value.@ref = unchecked((sbyte)reader.Unsigned(1));
        value.@mode = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    public sealed class _Ros1Dsr_msgsCheckOrientationCondition1Response
    {
        public bool @success = false;

        public _Ros1Dsr_msgsCheckOrientationCondition1Response()
        {
        }
    }

    public sealed class Ros1Dsr_msgsCheckOrientationCondition1ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsCheckOrientationCondition1Response>
    {
        public static readonly Ros1Dsr_msgsCheckOrientationCondition1ResponseCodec Instance = new Ros1Dsr_msgsCheckOrientationCondition1ResponseCodec();

        private Ros1Dsr_msgsCheckOrientationCondition1ResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/CheckOrientationCondition1Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_4b8359166eedb70a505b0d1829168618088cbedada2bc5d6f7d9e9a5dfa79b32";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros1Dsr_msgsCheckOrientationCondition1Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsCheckOrientationCondition1Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsCheckOrientationCondition1Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsCheckOrientationCondition1Response value = ReadRos1Dsr_msgsCheckOrientationCondition1Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsCheckOrientationCondition1Response(_Codecs.Writer writer, _Ros1Dsr_msgsCheckOrientationCondition1Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros1Dsr_msgsCheckOrientationCondition1Response ReadRos1Dsr_msgsCheckOrientationCondition1Response(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsCheckOrientationCondition1Response();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros1Dsr_msgsCheckOrientationCondition2Request
    {
        public sbyte @axis = 0;
        public double @min = 0;
        public double @max = 0;
        public sbyte @ref = 0;
        public sbyte @mode = 0;
        public double[] @pos = new double[6];

        public _Ros1Dsr_msgsCheckOrientationCondition2Request()
        {
        }
    }

    public sealed class Ros1Dsr_msgsCheckOrientationCondition2RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsCheckOrientationCondition2Request>
    {
        public static readonly Ros1Dsr_msgsCheckOrientationCondition2RequestCodec Instance = new Ros1Dsr_msgsCheckOrientationCondition2RequestCodec();

        private Ros1Dsr_msgsCheckOrientationCondition2RequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/CheckOrientationCondition2Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_42287a8e7cef2b93a1bd5778de6ae4ef4d1aa484dd0c74fcd29c660b400b6ff0";
        public const int MIN_WIRE_BYTES = 67, MAX_WIRE_BYTES = 67;

        public byte[] Encode(_Ros1Dsr_msgsCheckOrientationCondition2Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsCheckOrientationCondition2Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsCheckOrientationCondition2Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsCheckOrientationCondition2Request value = ReadRos1Dsr_msgsCheckOrientationCondition2Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsCheckOrientationCondition2Request(_Codecs.Writer writer, _Ros1Dsr_msgsCheckOrientationCondition2Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        sbyte part0 = value.@axis;
        writer.Unsigned(unchecked((byte)part0), 1);
        double part1 = value.@min;
        writer.Float64(part1);
        double part2 = value.@max;
        writer.Float64(part2);
        sbyte part3 = value.@ref;
        writer.Unsigned(unchecked((byte)part3), 1);
        sbyte part4 = value.@mode;
        writer.Unsigned(unchecked((byte)part4), 1);
        double[] part5 = value.@pos;
        if(part5 == null || part5.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part5.Length; ++index)
        {
            double element = part5[index];
            writer.Float64(element);
        }
    }

    private static _Ros1Dsr_msgsCheckOrientationCondition2Request ReadRos1Dsr_msgsCheckOrientationCondition2Request(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsCheckOrientationCondition2Request();
        value.@axis = unchecked((sbyte)reader.Unsigned(1));
        value.@min = reader.Float64();
        value.@max = reader.Float64();
        value.@ref = unchecked((sbyte)reader.Unsigned(1));
        value.@mode = unchecked((sbyte)reader.Unsigned(1));
        value.@pos = new double[6];
        for(int index = 0; index < value.@pos.Length; ++index)
            value.@pos[index] = reader.Float64();
        return value;
    }

    public sealed class _Ros1Dsr_msgsCheckOrientationCondition2Response
    {
        public bool @success = false;

        public _Ros1Dsr_msgsCheckOrientationCondition2Response()
        {
        }
    }

    public sealed class Ros1Dsr_msgsCheckOrientationCondition2ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsCheckOrientationCondition2Response>
    {
        public static readonly Ros1Dsr_msgsCheckOrientationCondition2ResponseCodec Instance = new Ros1Dsr_msgsCheckOrientationCondition2ResponseCodec();

        private Ros1Dsr_msgsCheckOrientationCondition2ResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/CheckOrientationCondition2Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_334774329557c04594f02ee344f0af39d250c482c3f9c4b2dd5f275e87880e83";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros1Dsr_msgsCheckOrientationCondition2Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsCheckOrientationCondition2Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsCheckOrientationCondition2Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsCheckOrientationCondition2Response value = ReadRos1Dsr_msgsCheckOrientationCondition2Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsCheckOrientationCondition2Response(_Codecs.Writer writer, _Ros1Dsr_msgsCheckOrientationCondition2Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros1Dsr_msgsCheckOrientationCondition2Response ReadRos1Dsr_msgsCheckOrientationCondition2Response(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsCheckOrientationCondition2Response();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros1Dsr_msgsCheckPositionConditionRequest
    {
        public sbyte @axis = 0;
        public double @min = 0;
        public double @max = 0;
        public sbyte @ref = 0;
        public sbyte @mode = 0;
        public double[] @pos = new double[6];

        public _Ros1Dsr_msgsCheckPositionConditionRequest()
        {
        }
    }

    public sealed class Ros1Dsr_msgsCheckPositionConditionRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsCheckPositionConditionRequest>
    {
        public static readonly Ros1Dsr_msgsCheckPositionConditionRequestCodec Instance = new Ros1Dsr_msgsCheckPositionConditionRequestCodec();

        private Ros1Dsr_msgsCheckPositionConditionRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/CheckPositionConditionRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_973c397ac52f4eba5f5956bd25c6552749d14ebd070ea659cea7601bf2bfdbeb";
        public const int MIN_WIRE_BYTES = 67, MAX_WIRE_BYTES = 67;

        public byte[] Encode(_Ros1Dsr_msgsCheckPositionConditionRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsCheckPositionConditionRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsCheckPositionConditionRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsCheckPositionConditionRequest value = ReadRos1Dsr_msgsCheckPositionConditionRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsCheckPositionConditionRequest(_Codecs.Writer writer, _Ros1Dsr_msgsCheckPositionConditionRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        sbyte part0 = value.@axis;
        writer.Unsigned(unchecked((byte)part0), 1);
        double part1 = value.@min;
        writer.Float64(part1);
        double part2 = value.@max;
        writer.Float64(part2);
        sbyte part3 = value.@ref;
        writer.Unsigned(unchecked((byte)part3), 1);
        sbyte part4 = value.@mode;
        writer.Unsigned(unchecked((byte)part4), 1);
        double[] part5 = value.@pos;
        if(part5 == null || part5.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part5.Length; ++index)
        {
            double element = part5[index];
            writer.Float64(element);
        }
    }

    private static _Ros1Dsr_msgsCheckPositionConditionRequest ReadRos1Dsr_msgsCheckPositionConditionRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsCheckPositionConditionRequest();
        value.@axis = unchecked((sbyte)reader.Unsigned(1));
        value.@min = reader.Float64();
        value.@max = reader.Float64();
        value.@ref = unchecked((sbyte)reader.Unsigned(1));
        value.@mode = unchecked((sbyte)reader.Unsigned(1));
        value.@pos = new double[6];
        for(int index = 0; index < value.@pos.Length; ++index)
            value.@pos[index] = reader.Float64();
        return value;
    }

    public sealed class _Ros1Dsr_msgsCheckPositionConditionResponse
    {
        public bool @success = false;

        public _Ros1Dsr_msgsCheckPositionConditionResponse()
        {
        }
    }

    public sealed class Ros1Dsr_msgsCheckPositionConditionResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsCheckPositionConditionResponse>
    {
        public static readonly Ros1Dsr_msgsCheckPositionConditionResponseCodec Instance = new Ros1Dsr_msgsCheckPositionConditionResponseCodec();

        private Ros1Dsr_msgsCheckPositionConditionResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/CheckPositionConditionResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_e809f6231e9bea172a7c00c6d32bb553e97026a607a6070e6fa82d007c3bf94a";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros1Dsr_msgsCheckPositionConditionResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsCheckPositionConditionResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsCheckPositionConditionResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsCheckPositionConditionResponse value = ReadRos1Dsr_msgsCheckPositionConditionResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsCheckPositionConditionResponse(_Codecs.Writer writer, _Ros1Dsr_msgsCheckPositionConditionResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros1Dsr_msgsCheckPositionConditionResponse ReadRos1Dsr_msgsCheckPositionConditionResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsCheckPositionConditionResponse();
        value.@success = ReadBool(reader);
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

    public sealed class _Ros1Dsr_msgsConnectRTControlRequest
    {
        public string @ip_address = "";
        public uint @port = 0;

        public _Ros1Dsr_msgsConnectRTControlRequest()
        {
        }
    }

    public sealed class Ros1Dsr_msgsConnectRTControlRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsConnectRTControlRequest>
    {
        public static readonly Ros1Dsr_msgsConnectRTControlRequestCodec Instance = new Ros1Dsr_msgsConnectRTControlRequestCodec();

        private Ros1Dsr_msgsConnectRTControlRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/ConnectRTControlRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_c9843ae994672ab18e264c025f929a10d208952e0583da7200b6aa26ec3eb755";
        public const int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 264;

        public byte[] Encode(_Ros1Dsr_msgsConnectRTControlRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsConnectRTControlRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsConnectRTControlRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsConnectRTControlRequest value = ReadRos1Dsr_msgsConnectRTControlRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsConnectRTControlRequest(_Codecs.Writer writer, _Ros1Dsr_msgsConnectRTControlRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        string part0 = value.@ip_address;
        WriteText(writer, part0, 256);
        uint part1 = value.@port;
        writer.Unsigned(part1, 4);
    }

    private static _Ros1Dsr_msgsConnectRTControlRequest ReadRos1Dsr_msgsConnectRTControlRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsConnectRTControlRequest();
        value.@ip_address = ReadText(reader, 256);
        value.@port = unchecked((uint)reader.Unsigned(4));
        return value;
    }

    public sealed class _Ros1Dsr_msgsConnectRTControlResponse
    {
        public bool @success = false;

        public _Ros1Dsr_msgsConnectRTControlResponse()
        {
        }
    }

    public sealed class Ros1Dsr_msgsConnectRTControlResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsConnectRTControlResponse>
    {
        public static readonly Ros1Dsr_msgsConnectRTControlResponseCodec Instance = new Ros1Dsr_msgsConnectRTControlResponseCodec();

        private Ros1Dsr_msgsConnectRTControlResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/ConnectRTControlResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_716d95e3f734dff8442935476028644077836389e8d54f73661fd3c52804f5a4";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros1Dsr_msgsConnectRTControlResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsConnectRTControlResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsConnectRTControlResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsConnectRTControlResponse value = ReadRos1Dsr_msgsConnectRTControlResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsConnectRTControlResponse(_Codecs.Writer writer, _Ros1Dsr_msgsConnectRTControlResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros1Dsr_msgsConnectRTControlResponse ReadRos1Dsr_msgsConnectRTControlResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsConnectRTControlResponse();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros1Dsr_msgsCoordTransformRequest
    {
        public double[] @pos_in = new double[6];
        public sbyte @ref_in = 0;
        public sbyte @ref_out = 0;

        public _Ros1Dsr_msgsCoordTransformRequest()
        {
        }
    }

    public sealed class Ros1Dsr_msgsCoordTransformRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsCoordTransformRequest>
    {
        public static readonly Ros1Dsr_msgsCoordTransformRequestCodec Instance = new Ros1Dsr_msgsCoordTransformRequestCodec();

        private Ros1Dsr_msgsCoordTransformRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/CoordTransformRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_28b33cdb83f95f41982ccc99d276cc4efb34ff33707101e1d56cf63580095436";
        public const int MIN_WIRE_BYTES = 50, MAX_WIRE_BYTES = 50;

        public byte[] Encode(_Ros1Dsr_msgsCoordTransformRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsCoordTransformRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsCoordTransformRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsCoordTransformRequest value = ReadRos1Dsr_msgsCoordTransformRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsCoordTransformRequest(_Codecs.Writer writer, _Ros1Dsr_msgsCoordTransformRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        double[] part0 = value.@pos_in;
        if(part0 == null || part0.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part0.Length; ++index)
        {
            double element = part0[index];
            writer.Float64(element);
        }
        sbyte part1 = value.@ref_in;
        writer.Unsigned(unchecked((byte)part1), 1);
        sbyte part2 = value.@ref_out;
        writer.Unsigned(unchecked((byte)part2), 1);
    }

    private static _Ros1Dsr_msgsCoordTransformRequest ReadRos1Dsr_msgsCoordTransformRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsCoordTransformRequest();
        value.@pos_in = new double[6];
        for(int index = 0; index < value.@pos_in.Length; ++index)
            value.@pos_in[index] = reader.Float64();
        value.@ref_in = unchecked((sbyte)reader.Unsigned(1));
        value.@ref_out = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    public sealed class _Ros1Dsr_msgsCoordTransformResponse
    {
        public double[] @conv_posx = new double[6];
        public bool @success = false;

        public _Ros1Dsr_msgsCoordTransformResponse()
        {
        }
    }

    public sealed class Ros1Dsr_msgsCoordTransformResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsCoordTransformResponse>
    {
        public static readonly Ros1Dsr_msgsCoordTransformResponseCodec Instance = new Ros1Dsr_msgsCoordTransformResponseCodec();

        private Ros1Dsr_msgsCoordTransformResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/CoordTransformResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_1b9492d45f096bfd2a53e1ed8a701d53698a7aebc525b70e95de70c6275035c9";
        public const int MIN_WIRE_BYTES = 49, MAX_WIRE_BYTES = 49;

        public byte[] Encode(_Ros1Dsr_msgsCoordTransformResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsCoordTransformResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsCoordTransformResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsCoordTransformResponse value = ReadRos1Dsr_msgsCoordTransformResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsCoordTransformResponse(_Codecs.Writer writer, _Ros1Dsr_msgsCoordTransformResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        double[] part0 = value.@conv_posx;
        if(part0 == null || part0.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part0.Length; ++index)
        {
            double element = part0[index];
            writer.Float64(element);
        }
        bool part1 = value.@success;
        writer.Unsigned(part1 ? 1UL : 0UL, 1);
    }

    private static _Ros1Dsr_msgsCoordTransformResponse ReadRos1Dsr_msgsCoordTransformResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsCoordTransformResponse();
        value.@conv_posx = new double[6];
        for(int index = 0; index < value.@conv_posx.Length; ++index)
            value.@conv_posx[index] = reader.Float64();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros1Dsr_msgsDisableAlterMotionRequest
    {
        public _Ros1Dsr_msgsDisableAlterMotionRequest()
        {
        }
    }

    public sealed class Ros1Dsr_msgsDisableAlterMotionRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsDisableAlterMotionRequest>
    {
        public static readonly Ros1Dsr_msgsDisableAlterMotionRequestCodec Instance = new Ros1Dsr_msgsDisableAlterMotionRequestCodec();

        private Ros1Dsr_msgsDisableAlterMotionRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/DisableAlterMotionRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_4ff4905d3843c08022003c96abd4031a5438078e919e0b8e43554aae3229bbc1";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public byte[] Encode(_Ros1Dsr_msgsDisableAlterMotionRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsDisableAlterMotionRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsDisableAlterMotionRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsDisableAlterMotionRequest value = ReadRos1Dsr_msgsDisableAlterMotionRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsDisableAlterMotionRequest(_Codecs.Writer writer, _Ros1Dsr_msgsDisableAlterMotionRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    private static _Ros1Dsr_msgsDisableAlterMotionRequest ReadRos1Dsr_msgsDisableAlterMotionRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsDisableAlterMotionRequest();
        return value;
    }

    public sealed class _Ros1Dsr_msgsDisableAlterMotionResponse
    {
        public bool @success = false;

        public _Ros1Dsr_msgsDisableAlterMotionResponse()
        {
        }
    }

    public sealed class Ros1Dsr_msgsDisableAlterMotionResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsDisableAlterMotionResponse>
    {
        public static readonly Ros1Dsr_msgsDisableAlterMotionResponseCodec Instance = new Ros1Dsr_msgsDisableAlterMotionResponseCodec();

        private Ros1Dsr_msgsDisableAlterMotionResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/DisableAlterMotionResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_feff25cf5412112d1ebc9fd4dd0aca62f1a9af7f63673a0633f6f32e915a27b1";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros1Dsr_msgsDisableAlterMotionResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsDisableAlterMotionResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsDisableAlterMotionResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsDisableAlterMotionResponse value = ReadRos1Dsr_msgsDisableAlterMotionResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsDisableAlterMotionResponse(_Codecs.Writer writer, _Ros1Dsr_msgsDisableAlterMotionResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros1Dsr_msgsDisableAlterMotionResponse ReadRos1Dsr_msgsDisableAlterMotionResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsDisableAlterMotionResponse();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros1Dsr_msgsDisconnectRTControlRequest
    {
        public _Ros1Dsr_msgsDisconnectRTControlRequest()
        {
        }
    }

    public sealed class Ros1Dsr_msgsDisconnectRTControlRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsDisconnectRTControlRequest>
    {
        public static readonly Ros1Dsr_msgsDisconnectRTControlRequestCodec Instance = new Ros1Dsr_msgsDisconnectRTControlRequestCodec();

        private Ros1Dsr_msgsDisconnectRTControlRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/DisconnectRTControlRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_4fb305bf56dfd6e1cbaa3f5a9e86f7fdb9cd3c5822447dbdd953944545686d82";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public byte[] Encode(_Ros1Dsr_msgsDisconnectRTControlRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsDisconnectRTControlRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsDisconnectRTControlRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsDisconnectRTControlRequest value = ReadRos1Dsr_msgsDisconnectRTControlRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsDisconnectRTControlRequest(_Codecs.Writer writer, _Ros1Dsr_msgsDisconnectRTControlRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    private static _Ros1Dsr_msgsDisconnectRTControlRequest ReadRos1Dsr_msgsDisconnectRTControlRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsDisconnectRTControlRequest();
        return value;
    }

    public sealed class _Ros1Dsr_msgsDisconnectRTControlResponse
    {
        public bool @success = false;

        public _Ros1Dsr_msgsDisconnectRTControlResponse()
        {
        }
    }

    public sealed class Ros1Dsr_msgsDisconnectRTControlResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsDisconnectRTControlResponse>
    {
        public static readonly Ros1Dsr_msgsDisconnectRTControlResponseCodec Instance = new Ros1Dsr_msgsDisconnectRTControlResponseCodec();

        private Ros1Dsr_msgsDisconnectRTControlResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/DisconnectRTControlResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_4e9481ecb0b6a13cf344d2fab2f044eb7a75d9d3277fd5dba87bd73f107c822e";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros1Dsr_msgsDisconnectRTControlResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsDisconnectRTControlResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsDisconnectRTControlResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsDisconnectRTControlResponse value = ReadRos1Dsr_msgsDisconnectRTControlResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsDisconnectRTControlResponse(_Codecs.Writer writer, _Ros1Dsr_msgsDisconnectRTControlResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros1Dsr_msgsDisconnectRTControlResponse ReadRos1Dsr_msgsDisconnectRTControlResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsDisconnectRTControlResponse();
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

    public sealed class _Ros1Dsr_msgsEnableAlterMotionRequest
    {
        public int @n = 0;
        public sbyte @mode = 0;
        public sbyte @ref = 0;
        public double[] @limit_dPOS = new double[2];
        public double[] @limit_dPOS_per = new double[2];

        public _Ros1Dsr_msgsEnableAlterMotionRequest()
        {
        }
    }

    public sealed class Ros1Dsr_msgsEnableAlterMotionRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsEnableAlterMotionRequest>
    {
        public static readonly Ros1Dsr_msgsEnableAlterMotionRequestCodec Instance = new Ros1Dsr_msgsEnableAlterMotionRequestCodec();

        private Ros1Dsr_msgsEnableAlterMotionRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/EnableAlterMotionRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_fa62f478a04e6d92a170e62e1ea690f6e6827e3784388fab3ecc58966c25c99f";
        public const int MIN_WIRE_BYTES = 38, MAX_WIRE_BYTES = 38;

        public byte[] Encode(_Ros1Dsr_msgsEnableAlterMotionRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsEnableAlterMotionRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsEnableAlterMotionRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsEnableAlterMotionRequest value = ReadRos1Dsr_msgsEnableAlterMotionRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsEnableAlterMotionRequest(_Codecs.Writer writer, _Ros1Dsr_msgsEnableAlterMotionRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        int part0 = value.@n;
        writer.Unsigned(unchecked((uint)part0), 4);
        sbyte part1 = value.@mode;
        writer.Unsigned(unchecked((byte)part1), 1);
        sbyte part2 = value.@ref;
        writer.Unsigned(unchecked((byte)part2), 1);
        double[] part3 = value.@limit_dPOS;
        if(part3 == null || part3.Length != 2)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part3.Length; ++index)
        {
            double element = part3[index];
            writer.Float64(element);
        }
        double[] part4 = value.@limit_dPOS_per;
        if(part4 == null || part4.Length != 2)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part4.Length; ++index)
        {
            double element = part4[index];
            writer.Float64(element);
        }
    }

    private static _Ros1Dsr_msgsEnableAlterMotionRequest ReadRos1Dsr_msgsEnableAlterMotionRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsEnableAlterMotionRequest();
        value.@n = unchecked((int)reader.Unsigned(4));
        value.@mode = unchecked((sbyte)reader.Unsigned(1));
        value.@ref = unchecked((sbyte)reader.Unsigned(1));
        value.@limit_dPOS = new double[2];
        for(int index = 0; index < value.@limit_dPOS.Length; ++index)
            value.@limit_dPOS[index] = reader.Float64();
        value.@limit_dPOS_per = new double[2];
        for(int index = 0; index < value.@limit_dPOS_per.Length; ++index)
            value.@limit_dPOS_per[index] = reader.Float64();
        return value;
    }

    public sealed class _Ros1Dsr_msgsEnableAlterMotionResponse
    {
        public bool @success = false;

        public _Ros1Dsr_msgsEnableAlterMotionResponse()
        {
        }
    }

    public sealed class Ros1Dsr_msgsEnableAlterMotionResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsEnableAlterMotionResponse>
    {
        public static readonly Ros1Dsr_msgsEnableAlterMotionResponseCodec Instance = new Ros1Dsr_msgsEnableAlterMotionResponseCodec();

        private Ros1Dsr_msgsEnableAlterMotionResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/EnableAlterMotionResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_24f3d751a4b49ff5f3280893ecb2f896ae57a9a05309a8827c5ae8eb18daf885";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros1Dsr_msgsEnableAlterMotionResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsEnableAlterMotionResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsEnableAlterMotionResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsEnableAlterMotionResponse value = ReadRos1Dsr_msgsEnableAlterMotionResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsEnableAlterMotionResponse(_Codecs.Writer writer, _Ros1Dsr_msgsEnableAlterMotionResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros1Dsr_msgsEnableAlterMotionResponse ReadRos1Dsr_msgsEnableAlterMotionResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsEnableAlterMotionResponse();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros1Dsr_msgsFkinRequest
    {
        public double[] @pos = new double[6];
        public sbyte @ref = 0;

        public _Ros1Dsr_msgsFkinRequest()
        {
        }
    }

    public sealed class Ros1Dsr_msgsFkinRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsFkinRequest>
    {
        public static readonly Ros1Dsr_msgsFkinRequestCodec Instance = new Ros1Dsr_msgsFkinRequestCodec();

        private Ros1Dsr_msgsFkinRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/FkinRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_6bbd7ead217dd4d6ed0f5d044df5a32d3be159fcc929a395396ec7c1208c325d";
        public const int MIN_WIRE_BYTES = 49, MAX_WIRE_BYTES = 49;

        public byte[] Encode(_Ros1Dsr_msgsFkinRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsFkinRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsFkinRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsFkinRequest value = ReadRos1Dsr_msgsFkinRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsFkinRequest(_Codecs.Writer writer, _Ros1Dsr_msgsFkinRequest value)
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
        sbyte part1 = value.@ref;
        writer.Unsigned(unchecked((byte)part1), 1);
    }

    private static _Ros1Dsr_msgsFkinRequest ReadRos1Dsr_msgsFkinRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsFkinRequest();
        value.@pos = new double[6];
        for(int index = 0; index < value.@pos.Length; ++index)
            value.@pos[index] = reader.Float64();
        value.@ref = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    public sealed class _Ros1Dsr_msgsFkinResponse
    {
        public double[] @conv_posx = new double[6];
        public bool @success = false;

        public _Ros1Dsr_msgsFkinResponse()
        {
        }
    }

    public sealed class Ros1Dsr_msgsFkinResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsFkinResponse>
    {
        public static readonly Ros1Dsr_msgsFkinResponseCodec Instance = new Ros1Dsr_msgsFkinResponseCodec();

        private Ros1Dsr_msgsFkinResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/FkinResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_86e79e02833be0498aef75436df542063454b0e5b0a46fb153467afc5a492c94";
        public const int MIN_WIRE_BYTES = 49, MAX_WIRE_BYTES = 49;

        public byte[] Encode(_Ros1Dsr_msgsFkinResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsFkinResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsFkinResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsFkinResponse value = ReadRos1Dsr_msgsFkinResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsFkinResponse(_Codecs.Writer writer, _Ros1Dsr_msgsFkinResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        double[] part0 = value.@conv_posx;
        if(part0 == null || part0.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part0.Length; ++index)
        {
            double element = part0[index];
            writer.Float64(element);
        }
        bool part1 = value.@success;
        writer.Unsigned(part1 ? 1UL : 0UL, 1);
    }

    private static _Ros1Dsr_msgsFkinResponse ReadRos1Dsr_msgsFkinResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsFkinResponse();
        value.@conv_posx = new double[6];
        for(int index = 0; index < value.@conv_posx.Length; ++index)
            value.@conv_posx[index] = reader.Float64();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros1Dsr_msgsGetControlModeRequest
    {
        public _Ros1Dsr_msgsGetControlModeRequest()
        {
        }
    }

    public sealed class Ros1Dsr_msgsGetControlModeRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsGetControlModeRequest>
    {
        public static readonly Ros1Dsr_msgsGetControlModeRequestCodec Instance = new Ros1Dsr_msgsGetControlModeRequestCodec();

        private Ros1Dsr_msgsGetControlModeRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/GetControlModeRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_c7872f67adf097ccf8b60b910ea0c9ce8831a88b1ab82827b3789355b19fbaab";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public byte[] Encode(_Ros1Dsr_msgsGetControlModeRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsGetControlModeRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsGetControlModeRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsGetControlModeRequest value = ReadRos1Dsr_msgsGetControlModeRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsGetControlModeRequest(_Codecs.Writer writer, _Ros1Dsr_msgsGetControlModeRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    private static _Ros1Dsr_msgsGetControlModeRequest ReadRos1Dsr_msgsGetControlModeRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsGetControlModeRequest();
        return value;
    }

    public sealed class _Ros1Dsr_msgsGetControlModeResponse
    {
        public sbyte @control_mode = 0;
        public bool @success = false;

        public _Ros1Dsr_msgsGetControlModeResponse()
        {
        }
    }

    public sealed class Ros1Dsr_msgsGetControlModeResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsGetControlModeResponse>
    {
        public static readonly Ros1Dsr_msgsGetControlModeResponseCodec Instance = new Ros1Dsr_msgsGetControlModeResponseCodec();

        private Ros1Dsr_msgsGetControlModeResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/GetControlModeResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_29bcb7b65473a8e0c70660a270b9110c95d486358b6ccece3580214cb47d8f4f";
        public const int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;

        public byte[] Encode(_Ros1Dsr_msgsGetControlModeResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsGetControlModeResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsGetControlModeResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsGetControlModeResponse value = ReadRos1Dsr_msgsGetControlModeResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsGetControlModeResponse(_Codecs.Writer writer, _Ros1Dsr_msgsGetControlModeResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        sbyte part0 = value.@control_mode;
        writer.Unsigned(unchecked((byte)part0), 1);
        bool part1 = value.@success;
        writer.Unsigned(part1 ? 1UL : 0UL, 1);
    }

    private static _Ros1Dsr_msgsGetControlModeResponse ReadRos1Dsr_msgsGetControlModeResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsGetControlModeResponse();
        value.@control_mode = unchecked((sbyte)reader.Unsigned(1));
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros1Dsr_msgsGetControlSpaceRequest
    {
        public _Ros1Dsr_msgsGetControlSpaceRequest()
        {
        }
    }

    public sealed class Ros1Dsr_msgsGetControlSpaceRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsGetControlSpaceRequest>
    {
        public static readonly Ros1Dsr_msgsGetControlSpaceRequestCodec Instance = new Ros1Dsr_msgsGetControlSpaceRequestCodec();

        private Ros1Dsr_msgsGetControlSpaceRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/GetControlSpaceRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_eaff6359de691c20936219f59c4c63b1a439ef1367afee1e554d22c013bf74cf";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public byte[] Encode(_Ros1Dsr_msgsGetControlSpaceRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsGetControlSpaceRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsGetControlSpaceRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsGetControlSpaceRequest value = ReadRos1Dsr_msgsGetControlSpaceRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsGetControlSpaceRequest(_Codecs.Writer writer, _Ros1Dsr_msgsGetControlSpaceRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    private static _Ros1Dsr_msgsGetControlSpaceRequest ReadRos1Dsr_msgsGetControlSpaceRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsGetControlSpaceRequest();
        return value;
    }

    public sealed class _Ros1Dsr_msgsGetControlSpaceResponse
    {
        public sbyte @space = 0;
        public bool @success = false;

        public _Ros1Dsr_msgsGetControlSpaceResponse()
        {
        }
    }

    public sealed class Ros1Dsr_msgsGetControlSpaceResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsGetControlSpaceResponse>
    {
        public static readonly Ros1Dsr_msgsGetControlSpaceResponseCodec Instance = new Ros1Dsr_msgsGetControlSpaceResponseCodec();

        private Ros1Dsr_msgsGetControlSpaceResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/GetControlSpaceResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_4ef8cc2465e8d38e5d44fa83e907ea5658f14f5f4f95776f8044f791e8311dfb";
        public const int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;

        public byte[] Encode(_Ros1Dsr_msgsGetControlSpaceResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsGetControlSpaceResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsGetControlSpaceResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsGetControlSpaceResponse value = ReadRos1Dsr_msgsGetControlSpaceResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsGetControlSpaceResponse(_Codecs.Writer writer, _Ros1Dsr_msgsGetControlSpaceResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        sbyte part0 = value.@space;
        writer.Unsigned(unchecked((byte)part0), 1);
        bool part1 = value.@success;
        writer.Unsigned(part1 ? 1UL : 0UL, 1);
    }

    private static _Ros1Dsr_msgsGetControlSpaceResponse ReadRos1Dsr_msgsGetControlSpaceResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsGetControlSpaceResponse();
        value.@space = unchecked((sbyte)reader.Unsigned(1));
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
        public bool @success = false;

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
        public const string CODEC_IDENTITY = "UWVMROS1_a23bcb46f249dc92a614e37a44ebb9e683921ee4104a22446855c8f3b35a6be7";
        public const int MIN_WIRE_BYTES = 9, MAX_WIRE_BYTES = 9;

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
        bool part1 = value.@success;
        writer.Unsigned(part1 ? 1UL : 0UL, 1);
    }

    private static _Ros1Dsr_msgsGetCtrlBoxAnalogInputResponse ReadRos1Dsr_msgsGetCtrlBoxAnalogInputResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsGetCtrlBoxAnalogInputResponse();
        value.@value = reader.Float64();
        value.@success = ReadBool(reader);
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
        public sbyte @value = 0;
        public bool @success = false;

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
        public const string CODEC_IDENTITY = "UWVMROS1_f838432468390d51d64a6d9bc714b503b168a9fedfabcfb96cce7a202a34613f";
        public const int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;

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
        sbyte part0 = value.@value;
        writer.Unsigned(unchecked((byte)part0), 1);
        bool part1 = value.@success;
        writer.Unsigned(part1 ? 1UL : 0UL, 1);
    }

    private static _Ros1Dsr_msgsGetCtrlBoxDigitalInputResponse ReadRos1Dsr_msgsGetCtrlBoxDigitalInputResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsGetCtrlBoxDigitalInputResponse();
        value.@value = unchecked((sbyte)reader.Unsigned(1));
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros1Dsr_msgsGetCtrlBoxDigitalOutputRequest
    {
        public sbyte @index = 0;

        public _Ros1Dsr_msgsGetCtrlBoxDigitalOutputRequest()
        {
        }
    }

    public sealed class Ros1Dsr_msgsGetCtrlBoxDigitalOutputRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsGetCtrlBoxDigitalOutputRequest>
    {
        public static readonly Ros1Dsr_msgsGetCtrlBoxDigitalOutputRequestCodec Instance = new Ros1Dsr_msgsGetCtrlBoxDigitalOutputRequestCodec();

        private Ros1Dsr_msgsGetCtrlBoxDigitalOutputRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/GetCtrlBoxDigitalOutputRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_a33419794c2431ab9d5b6c3a96becb14edca0d7b00953aa7a7ec1f11ea7bbdb5";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros1Dsr_msgsGetCtrlBoxDigitalOutputRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsGetCtrlBoxDigitalOutputRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsGetCtrlBoxDigitalOutputRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsGetCtrlBoxDigitalOutputRequest value = ReadRos1Dsr_msgsGetCtrlBoxDigitalOutputRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsGetCtrlBoxDigitalOutputRequest(_Codecs.Writer writer, _Ros1Dsr_msgsGetCtrlBoxDigitalOutputRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        sbyte part0 = value.@index;
        writer.Unsigned(unchecked((byte)part0), 1);
    }

    private static _Ros1Dsr_msgsGetCtrlBoxDigitalOutputRequest ReadRos1Dsr_msgsGetCtrlBoxDigitalOutputRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsGetCtrlBoxDigitalOutputRequest();
        value.@index = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    public sealed class _Ros1Dsr_msgsGetCtrlBoxDigitalOutputResponse
    {
        public sbyte @value = 0;
        public bool @success = false;

        public _Ros1Dsr_msgsGetCtrlBoxDigitalOutputResponse()
        {
        }
    }

    public sealed class Ros1Dsr_msgsGetCtrlBoxDigitalOutputResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsGetCtrlBoxDigitalOutputResponse>
    {
        public static readonly Ros1Dsr_msgsGetCtrlBoxDigitalOutputResponseCodec Instance = new Ros1Dsr_msgsGetCtrlBoxDigitalOutputResponseCodec();

        private Ros1Dsr_msgsGetCtrlBoxDigitalOutputResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/GetCtrlBoxDigitalOutputResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_cf472a4ed84d8005ce6ea97ae3c2fd72aba049015924069ee16c79ad41c76534";
        public const int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;

        public byte[] Encode(_Ros1Dsr_msgsGetCtrlBoxDigitalOutputResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsGetCtrlBoxDigitalOutputResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsGetCtrlBoxDigitalOutputResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsGetCtrlBoxDigitalOutputResponse value = ReadRos1Dsr_msgsGetCtrlBoxDigitalOutputResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsGetCtrlBoxDigitalOutputResponse(_Codecs.Writer writer, _Ros1Dsr_msgsGetCtrlBoxDigitalOutputResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        sbyte part0 = value.@value;
        writer.Unsigned(unchecked((byte)part0), 1);
        bool part1 = value.@success;
        writer.Unsigned(part1 ? 1UL : 0UL, 1);
    }

    private static _Ros1Dsr_msgsGetCtrlBoxDigitalOutputResponse ReadRos1Dsr_msgsGetCtrlBoxDigitalOutputResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsGetCtrlBoxDigitalOutputResponse();
        value.@value = unchecked((sbyte)reader.Unsigned(1));
        value.@success = ReadBool(reader);
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
        public bool @success = false;

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
        public const string CODEC_IDENTITY = "UWVMROS1_8b57d2561b1a04d2ddb60c29f9a4ffb6ba6eeb2f73e8b7e704ee091b49861fe1";
        public const int MIN_WIRE_BYTES = 49, MAX_WIRE_BYTES = 49;

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
        bool part1 = value.@success;
        writer.Unsigned(part1 ? 1UL : 0UL, 1);
    }

    private static _Ros1Dsr_msgsGetCurrentPoseResponse ReadRos1Dsr_msgsGetCurrentPoseResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsGetCurrentPoseResponse();
        value.@pos = new double[6];
        for(int index = 0; index < value.@pos.Length; ++index)
            value.@pos[index] = reader.Float64();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros1Dsr_msgsGetCurrentPosjRequest
    {
        public _Ros1Dsr_msgsGetCurrentPosjRequest()
        {
        }
    }

    public sealed class Ros1Dsr_msgsGetCurrentPosjRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsGetCurrentPosjRequest>
    {
        public static readonly Ros1Dsr_msgsGetCurrentPosjRequestCodec Instance = new Ros1Dsr_msgsGetCurrentPosjRequestCodec();

        private Ros1Dsr_msgsGetCurrentPosjRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/GetCurrentPosjRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_5a4d2e7f7304671d96e5ee9ff83ad957d6e74f49ac2562aea6e3dbfcc1726be7";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public byte[] Encode(_Ros1Dsr_msgsGetCurrentPosjRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsGetCurrentPosjRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsGetCurrentPosjRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsGetCurrentPosjRequest value = ReadRos1Dsr_msgsGetCurrentPosjRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsGetCurrentPosjRequest(_Codecs.Writer writer, _Ros1Dsr_msgsGetCurrentPosjRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    private static _Ros1Dsr_msgsGetCurrentPosjRequest ReadRos1Dsr_msgsGetCurrentPosjRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsGetCurrentPosjRequest();
        return value;
    }

    public sealed class _Ros1Dsr_msgsGetCurrentPosjResponse
    {
        public double[] @pos = new double[6];
        public bool @success = false;

        public _Ros1Dsr_msgsGetCurrentPosjResponse()
        {
        }
    }

    public sealed class Ros1Dsr_msgsGetCurrentPosjResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsGetCurrentPosjResponse>
    {
        public static readonly Ros1Dsr_msgsGetCurrentPosjResponseCodec Instance = new Ros1Dsr_msgsGetCurrentPosjResponseCodec();

        private Ros1Dsr_msgsGetCurrentPosjResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/GetCurrentPosjResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_6d9f277e82052e84ee2494991ffcca6b8cb8457c2d0fdeb805122f99ae583c29";
        public const int MIN_WIRE_BYTES = 49, MAX_WIRE_BYTES = 49;

        public byte[] Encode(_Ros1Dsr_msgsGetCurrentPosjResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsGetCurrentPosjResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsGetCurrentPosjResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsGetCurrentPosjResponse value = ReadRos1Dsr_msgsGetCurrentPosjResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsGetCurrentPosjResponse(_Codecs.Writer writer, _Ros1Dsr_msgsGetCurrentPosjResponse value)
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
        bool part1 = value.@success;
        writer.Unsigned(part1 ? 1UL : 0UL, 1);
    }

    private static _Ros1Dsr_msgsGetCurrentPosjResponse ReadRos1Dsr_msgsGetCurrentPosjResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsGetCurrentPosjResponse();
        value.@pos = new double[6];
        for(int index = 0; index < value.@pos.Length; ++index)
            value.@pos[index] = reader.Float64();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros1Dsr_msgsGetCurrentPosxRequest
    {
        public sbyte @ref = 0;

        public _Ros1Dsr_msgsGetCurrentPosxRequest()
        {
        }
    }

    public sealed class Ros1Dsr_msgsGetCurrentPosxRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsGetCurrentPosxRequest>
    {
        public static readonly Ros1Dsr_msgsGetCurrentPosxRequestCodec Instance = new Ros1Dsr_msgsGetCurrentPosxRequestCodec();

        private Ros1Dsr_msgsGetCurrentPosxRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/GetCurrentPosxRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_e134a62a318034e8ab66c88085f8e9f0380500394b9d61bb2998a618fc7d3437";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros1Dsr_msgsGetCurrentPosxRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsGetCurrentPosxRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsGetCurrentPosxRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsGetCurrentPosxRequest value = ReadRos1Dsr_msgsGetCurrentPosxRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsGetCurrentPosxRequest(_Codecs.Writer writer, _Ros1Dsr_msgsGetCurrentPosxRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        sbyte part0 = value.@ref;
        writer.Unsigned(unchecked((byte)part0), 1);
    }

    private static _Ros1Dsr_msgsGetCurrentPosxRequest ReadRos1Dsr_msgsGetCurrentPosxRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsGetCurrentPosxRequest();
        value.@ref = unchecked((sbyte)reader.Unsigned(1));
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

    public sealed class _Ros1Dsr_msgsGetCurrentPosxResponse
    {
        public _Ros1Std_msgsFloat64MultiArray[] @task_pos_info = new _Ros1Std_msgsFloat64MultiArray[0];
        public bool @success = false;

        public _Ros1Dsr_msgsGetCurrentPosxResponse()
        {
        }
    }

    public sealed class Ros1Dsr_msgsGetCurrentPosxResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsGetCurrentPosxResponse>
    {
        public static readonly Ros1Dsr_msgsGetCurrentPosxResponseCodec Instance = new Ros1Dsr_msgsGetCurrentPosxResponseCodec();

        private Ros1Dsr_msgsGetCurrentPosxResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/GetCurrentPosxResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_2fb411b9e660dddd17fcd65507bd6437db63aa41b3d1eeecd5c0048405828bf4";
        public const int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 2213;

        public byte[] Encode(_Ros1Dsr_msgsGetCurrentPosxResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsGetCurrentPosxResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsGetCurrentPosxResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsGetCurrentPosxResponse value = ReadRos1Dsr_msgsGetCurrentPosxResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsGetCurrentPosxResponse(_Codecs.Writer writer, _Ros1Dsr_msgsGetCurrentPosxResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros1Std_msgsFloat64MultiArray[] part0 = value.@task_pos_info;
        if(part0 == null || part0.Length > 6)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part0.Length, 4);
        for(int index = 0; index < part0.Length; ++index)
        {
            _Ros1Std_msgsFloat64MultiArray element = part0[index];
            WriteRos1Std_msgsFloat64MultiArray(writer, element);
        }
        bool part1 = value.@success;
        writer.Unsigned(part1 ? 1UL : 0UL, 1);
    }

    private static _Ros1Dsr_msgsGetCurrentPosxResponse ReadRos1Dsr_msgsGetCurrentPosxResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsGetCurrentPosxResponse();
        value.@task_pos_info = new _Ros1Std_msgsFloat64MultiArray[ReadCount(reader, 6, 12)];
        for(int index = 0; index < value.@task_pos_info.Length; ++index)
            value.@task_pos_info[index] = ReadRos1Std_msgsFloat64MultiArray(reader);
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros1Dsr_msgsGetCurrentRotmRequest
    {
        public sbyte @ref = 0;

        public _Ros1Dsr_msgsGetCurrentRotmRequest()
        {
        }
    }

    public sealed class Ros1Dsr_msgsGetCurrentRotmRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsGetCurrentRotmRequest>
    {
        public static readonly Ros1Dsr_msgsGetCurrentRotmRequestCodec Instance = new Ros1Dsr_msgsGetCurrentRotmRequestCodec();

        private Ros1Dsr_msgsGetCurrentRotmRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/GetCurrentRotmRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_e0f4ee3e0c208a87004cca9771a0696f4acfa8a09ab6a861b8a83bd28ccfb436";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros1Dsr_msgsGetCurrentRotmRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsGetCurrentRotmRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsGetCurrentRotmRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsGetCurrentRotmRequest value = ReadRos1Dsr_msgsGetCurrentRotmRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsGetCurrentRotmRequest(_Codecs.Writer writer, _Ros1Dsr_msgsGetCurrentRotmRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        sbyte part0 = value.@ref;
        writer.Unsigned(unchecked((byte)part0), 1);
    }

    private static _Ros1Dsr_msgsGetCurrentRotmRequest ReadRos1Dsr_msgsGetCurrentRotmRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsGetCurrentRotmRequest();
        value.@ref = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    public sealed class _Ros1Dsr_msgsGetCurrentRotmResponse
    {
        public _Ros1Std_msgsFloat64MultiArray[] @rot_matrix = new _Ros1Std_msgsFloat64MultiArray[0];
        public bool @success = false;

        public _Ros1Dsr_msgsGetCurrentRotmResponse()
        {
        }
    }

    public sealed class Ros1Dsr_msgsGetCurrentRotmResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsGetCurrentRotmResponse>
    {
        public static readonly Ros1Dsr_msgsGetCurrentRotmResponseCodec Instance = new Ros1Dsr_msgsGetCurrentRotmResponseCodec();

        private Ros1Dsr_msgsGetCurrentRotmResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/GetCurrentRotmResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_6cfa5fffb8e5c1575cb821b9330dd9e1f60ab3b325d54ff4d00bc8859e7535d1";
        public const int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 2213;

        public byte[] Encode(_Ros1Dsr_msgsGetCurrentRotmResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsGetCurrentRotmResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsGetCurrentRotmResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsGetCurrentRotmResponse value = ReadRos1Dsr_msgsGetCurrentRotmResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsGetCurrentRotmResponse(_Codecs.Writer writer, _Ros1Dsr_msgsGetCurrentRotmResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros1Std_msgsFloat64MultiArray[] part0 = value.@rot_matrix;
        if(part0 == null || part0.Length > 6)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part0.Length, 4);
        for(int index = 0; index < part0.Length; ++index)
        {
            _Ros1Std_msgsFloat64MultiArray element = part0[index];
            WriteRos1Std_msgsFloat64MultiArray(writer, element);
        }
        bool part1 = value.@success;
        writer.Unsigned(part1 ? 1UL : 0UL, 1);
    }

    private static _Ros1Dsr_msgsGetCurrentRotmResponse ReadRos1Dsr_msgsGetCurrentRotmResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsGetCurrentRotmResponse();
        value.@rot_matrix = new _Ros1Std_msgsFloat64MultiArray[ReadCount(reader, 6, 12)];
        for(int index = 0; index < value.@rot_matrix.Length; ++index)
            value.@rot_matrix[index] = ReadRos1Std_msgsFloat64MultiArray(reader);
        value.@success = ReadBool(reader);
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
        public sbyte @sol_space = 0;
        public bool @success = false;

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
        public const string CODEC_IDENTITY = "UWVMROS1_e7ef22b6516c92acb76e6173e0d14f0b7c25a7ec669ef18060b4f1158e877c68";
        public const int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;

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
        sbyte part0 = value.@sol_space;
        writer.Unsigned(unchecked((byte)part0), 1);
        bool part1 = value.@success;
        writer.Unsigned(part1 ? 1UL : 0UL, 1);
    }

    private static _Ros1Dsr_msgsGetCurrentSolutionSpaceResponse ReadRos1Dsr_msgsGetCurrentSolutionSpaceResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsGetCurrentSolutionSpaceResponse();
        value.@sol_space = unchecked((sbyte)reader.Unsigned(1));
        value.@success = ReadBool(reader);
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
        public bool @success = false;

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
        public const string CODEC_IDENTITY = "UWVMROS1_e0041507b5cdc970e31a6df40a0af22a4115724b1e4c4f615b54c788cf2f27b6";
        public const int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 261;

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
        bool part1 = value.@success;
        writer.Unsigned(part1 ? 1UL : 0UL, 1);
    }

    private static _Ros1Dsr_msgsGetCurrentTcpResponse ReadRos1Dsr_msgsGetCurrentTcpResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsGetCurrentTcpResponse();
        value.@info = ReadText(reader, 256);
        value.@success = ReadBool(reader);
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
        public bool @success = false;

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
        public const string CODEC_IDENTITY = "UWVMROS1_ab0de7b251e53fe03818ec0169e428bf70c27bdef187c792c54e65e37b2e717b";
        public const int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 261;

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
        bool part1 = value.@success;
        writer.Unsigned(part1 ? 1UL : 0UL, 1);
    }

    private static _Ros1Dsr_msgsGetCurrentToolResponse ReadRos1Dsr_msgsGetCurrentToolResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsGetCurrentToolResponse();
        value.@info = ReadText(reader, 256);
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros1Dsr_msgsGetCurrentToolFlangePosxRequest
    {
        public sbyte @ref = 0;

        public _Ros1Dsr_msgsGetCurrentToolFlangePosxRequest()
        {
        }
    }

    public sealed class Ros1Dsr_msgsGetCurrentToolFlangePosxRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsGetCurrentToolFlangePosxRequest>
    {
        public static readonly Ros1Dsr_msgsGetCurrentToolFlangePosxRequestCodec Instance = new Ros1Dsr_msgsGetCurrentToolFlangePosxRequestCodec();

        private Ros1Dsr_msgsGetCurrentToolFlangePosxRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/GetCurrentToolFlangePosxRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_c5377881231716926a6e0abeff2b115eaf5292f0d7e41478a7f1b4ccf7896d53";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros1Dsr_msgsGetCurrentToolFlangePosxRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsGetCurrentToolFlangePosxRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsGetCurrentToolFlangePosxRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsGetCurrentToolFlangePosxRequest value = ReadRos1Dsr_msgsGetCurrentToolFlangePosxRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsGetCurrentToolFlangePosxRequest(_Codecs.Writer writer, _Ros1Dsr_msgsGetCurrentToolFlangePosxRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        sbyte part0 = value.@ref;
        writer.Unsigned(unchecked((byte)part0), 1);
    }

    private static _Ros1Dsr_msgsGetCurrentToolFlangePosxRequest ReadRos1Dsr_msgsGetCurrentToolFlangePosxRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsGetCurrentToolFlangePosxRequest();
        value.@ref = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    public sealed class _Ros1Dsr_msgsGetCurrentToolFlangePosxResponse
    {
        public double[] @pos = new double[6];
        public bool @success = false;

        public _Ros1Dsr_msgsGetCurrentToolFlangePosxResponse()
        {
        }
    }

    public sealed class Ros1Dsr_msgsGetCurrentToolFlangePosxResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsGetCurrentToolFlangePosxResponse>
    {
        public static readonly Ros1Dsr_msgsGetCurrentToolFlangePosxResponseCodec Instance = new Ros1Dsr_msgsGetCurrentToolFlangePosxResponseCodec();

        private Ros1Dsr_msgsGetCurrentToolFlangePosxResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/GetCurrentToolFlangePosxResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_0de91ced161ef1b14003e0e248887f641fd366500674aae15cbbb0f7d915caac";
        public const int MIN_WIRE_BYTES = 49, MAX_WIRE_BYTES = 49;

        public byte[] Encode(_Ros1Dsr_msgsGetCurrentToolFlangePosxResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsGetCurrentToolFlangePosxResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsGetCurrentToolFlangePosxResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsGetCurrentToolFlangePosxResponse value = ReadRos1Dsr_msgsGetCurrentToolFlangePosxResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsGetCurrentToolFlangePosxResponse(_Codecs.Writer writer, _Ros1Dsr_msgsGetCurrentToolFlangePosxResponse value)
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
        bool part1 = value.@success;
        writer.Unsigned(part1 ? 1UL : 0UL, 1);
    }

    private static _Ros1Dsr_msgsGetCurrentToolFlangePosxResponse ReadRos1Dsr_msgsGetCurrentToolFlangePosxResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsGetCurrentToolFlangePosxResponse();
        value.@pos = new double[6];
        for(int index = 0; index < value.@pos.Length; ++index)
            value.@pos[index] = reader.Float64();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros1Dsr_msgsGetCurrentVeljRequest
    {
        public _Ros1Dsr_msgsGetCurrentVeljRequest()
        {
        }
    }

    public sealed class Ros1Dsr_msgsGetCurrentVeljRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsGetCurrentVeljRequest>
    {
        public static readonly Ros1Dsr_msgsGetCurrentVeljRequestCodec Instance = new Ros1Dsr_msgsGetCurrentVeljRequestCodec();

        private Ros1Dsr_msgsGetCurrentVeljRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/GetCurrentVeljRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_ee4ef9a4e0b65ed58844e3b545094c569113b23d2478717306a14edb399242fa";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public byte[] Encode(_Ros1Dsr_msgsGetCurrentVeljRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsGetCurrentVeljRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsGetCurrentVeljRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsGetCurrentVeljRequest value = ReadRos1Dsr_msgsGetCurrentVeljRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsGetCurrentVeljRequest(_Codecs.Writer writer, _Ros1Dsr_msgsGetCurrentVeljRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    private static _Ros1Dsr_msgsGetCurrentVeljRequest ReadRos1Dsr_msgsGetCurrentVeljRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsGetCurrentVeljRequest();
        return value;
    }

    public sealed class _Ros1Dsr_msgsGetCurrentVeljResponse
    {
        public double[] @joint_speed = new double[6];
        public bool @success = false;

        public _Ros1Dsr_msgsGetCurrentVeljResponse()
        {
        }
    }

    public sealed class Ros1Dsr_msgsGetCurrentVeljResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsGetCurrentVeljResponse>
    {
        public static readonly Ros1Dsr_msgsGetCurrentVeljResponseCodec Instance = new Ros1Dsr_msgsGetCurrentVeljResponseCodec();

        private Ros1Dsr_msgsGetCurrentVeljResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/GetCurrentVeljResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_000fed042d8de5fd8a1d95fe6b45cec5e4ad20ea2833199d7836ebb9e3ae5b2c";
        public const int MIN_WIRE_BYTES = 49, MAX_WIRE_BYTES = 49;

        public byte[] Encode(_Ros1Dsr_msgsGetCurrentVeljResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsGetCurrentVeljResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsGetCurrentVeljResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsGetCurrentVeljResponse value = ReadRos1Dsr_msgsGetCurrentVeljResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsGetCurrentVeljResponse(_Codecs.Writer writer, _Ros1Dsr_msgsGetCurrentVeljResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        double[] part0 = value.@joint_speed;
        if(part0 == null || part0.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part0.Length; ++index)
        {
            double element = part0[index];
            writer.Float64(element);
        }
        bool part1 = value.@success;
        writer.Unsigned(part1 ? 1UL : 0UL, 1);
    }

    private static _Ros1Dsr_msgsGetCurrentVeljResponse ReadRos1Dsr_msgsGetCurrentVeljResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsGetCurrentVeljResponse();
        value.@joint_speed = new double[6];
        for(int index = 0; index < value.@joint_speed.Length; ++index)
            value.@joint_speed[index] = reader.Float64();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros1Dsr_msgsGetCurrentVelxRequest
    {
        public sbyte @ref = 0;

        public _Ros1Dsr_msgsGetCurrentVelxRequest()
        {
        }
    }

    public sealed class Ros1Dsr_msgsGetCurrentVelxRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsGetCurrentVelxRequest>
    {
        public static readonly Ros1Dsr_msgsGetCurrentVelxRequestCodec Instance = new Ros1Dsr_msgsGetCurrentVelxRequestCodec();

        private Ros1Dsr_msgsGetCurrentVelxRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/GetCurrentVelxRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_6f37a0ffd22a29a6b7812d551680cacb146192c25b234806ff16686992c34efb";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros1Dsr_msgsGetCurrentVelxRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsGetCurrentVelxRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsGetCurrentVelxRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsGetCurrentVelxRequest value = ReadRos1Dsr_msgsGetCurrentVelxRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsGetCurrentVelxRequest(_Codecs.Writer writer, _Ros1Dsr_msgsGetCurrentVelxRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        sbyte part0 = value.@ref;
        writer.Unsigned(unchecked((byte)part0), 1);
    }

    private static _Ros1Dsr_msgsGetCurrentVelxRequest ReadRos1Dsr_msgsGetCurrentVelxRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsGetCurrentVelxRequest();
        value.@ref = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    public sealed class _Ros1Dsr_msgsGetCurrentVelxResponse
    {
        public double[] @vel = new double[6];
        public bool @success = false;

        public _Ros1Dsr_msgsGetCurrentVelxResponse()
        {
        }
    }

    public sealed class Ros1Dsr_msgsGetCurrentVelxResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsGetCurrentVelxResponse>
    {
        public static readonly Ros1Dsr_msgsGetCurrentVelxResponseCodec Instance = new Ros1Dsr_msgsGetCurrentVelxResponseCodec();

        private Ros1Dsr_msgsGetCurrentVelxResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/GetCurrentVelxResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_98c1cd7ae5663063ce12ea61d9be3dbfd37e9e0b10b6a7f4cc1c212419392f40";
        public const int MIN_WIRE_BYTES = 49, MAX_WIRE_BYTES = 49;

        public byte[] Encode(_Ros1Dsr_msgsGetCurrentVelxResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsGetCurrentVelxResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsGetCurrentVelxResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsGetCurrentVelxResponse value = ReadRos1Dsr_msgsGetCurrentVelxResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsGetCurrentVelxResponse(_Codecs.Writer writer, _Ros1Dsr_msgsGetCurrentVelxResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        double[] part0 = value.@vel;
        if(part0 == null || part0.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part0.Length; ++index)
        {
            double element = part0[index];
            writer.Float64(element);
        }
        bool part1 = value.@success;
        writer.Unsigned(part1 ? 1UL : 0UL, 1);
    }

    private static _Ros1Dsr_msgsGetCurrentVelxResponse ReadRos1Dsr_msgsGetCurrentVelxResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsGetCurrentVelxResponse();
        value.@vel = new double[6];
        for(int index = 0; index < value.@vel.Length; ++index)
            value.@vel[index] = reader.Float64();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros1Dsr_msgsGetDesiredPosjRequest
    {
        public _Ros1Dsr_msgsGetDesiredPosjRequest()
        {
        }
    }

    public sealed class Ros1Dsr_msgsGetDesiredPosjRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsGetDesiredPosjRequest>
    {
        public static readonly Ros1Dsr_msgsGetDesiredPosjRequestCodec Instance = new Ros1Dsr_msgsGetDesiredPosjRequestCodec();

        private Ros1Dsr_msgsGetDesiredPosjRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/GetDesiredPosjRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_2937a5625d07a7681c80c13557018978107abc537a22ee85ff562f15925caf1e";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public byte[] Encode(_Ros1Dsr_msgsGetDesiredPosjRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsGetDesiredPosjRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsGetDesiredPosjRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsGetDesiredPosjRequest value = ReadRos1Dsr_msgsGetDesiredPosjRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsGetDesiredPosjRequest(_Codecs.Writer writer, _Ros1Dsr_msgsGetDesiredPosjRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    private static _Ros1Dsr_msgsGetDesiredPosjRequest ReadRos1Dsr_msgsGetDesiredPosjRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsGetDesiredPosjRequest();
        return value;
    }

    public sealed class _Ros1Dsr_msgsGetDesiredPosjResponse
    {
        public double[] @pos = new double[6];
        public bool @success = false;

        public _Ros1Dsr_msgsGetDesiredPosjResponse()
        {
        }
    }

    public sealed class Ros1Dsr_msgsGetDesiredPosjResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsGetDesiredPosjResponse>
    {
        public static readonly Ros1Dsr_msgsGetDesiredPosjResponseCodec Instance = new Ros1Dsr_msgsGetDesiredPosjResponseCodec();

        private Ros1Dsr_msgsGetDesiredPosjResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/GetDesiredPosjResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_11ac4a05e65b0142f18a152904020780179fadfe540fbff7d5c53e4f177bc833";
        public const int MIN_WIRE_BYTES = 49, MAX_WIRE_BYTES = 49;

        public byte[] Encode(_Ros1Dsr_msgsGetDesiredPosjResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsGetDesiredPosjResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsGetDesiredPosjResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsGetDesiredPosjResponse value = ReadRos1Dsr_msgsGetDesiredPosjResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsGetDesiredPosjResponse(_Codecs.Writer writer, _Ros1Dsr_msgsGetDesiredPosjResponse value)
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
        bool part1 = value.@success;
        writer.Unsigned(part1 ? 1UL : 0UL, 1);
    }

    private static _Ros1Dsr_msgsGetDesiredPosjResponse ReadRos1Dsr_msgsGetDesiredPosjResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsGetDesiredPosjResponse();
        value.@pos = new double[6];
        for(int index = 0; index < value.@pos.Length; ++index)
            value.@pos[index] = reader.Float64();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros1Dsr_msgsGetDesiredPosxRequest
    {
        public sbyte @ref = 0;

        public _Ros1Dsr_msgsGetDesiredPosxRequest()
        {
        }
    }

    public sealed class Ros1Dsr_msgsGetDesiredPosxRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsGetDesiredPosxRequest>
    {
        public static readonly Ros1Dsr_msgsGetDesiredPosxRequestCodec Instance = new Ros1Dsr_msgsGetDesiredPosxRequestCodec();

        private Ros1Dsr_msgsGetDesiredPosxRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/GetDesiredPosxRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_812744777c143dfb5c4b60f71ab9461b3e95ead9e599473f87f88ba4f21d3563";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros1Dsr_msgsGetDesiredPosxRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsGetDesiredPosxRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsGetDesiredPosxRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsGetDesiredPosxRequest value = ReadRos1Dsr_msgsGetDesiredPosxRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsGetDesiredPosxRequest(_Codecs.Writer writer, _Ros1Dsr_msgsGetDesiredPosxRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        sbyte part0 = value.@ref;
        writer.Unsigned(unchecked((byte)part0), 1);
    }

    private static _Ros1Dsr_msgsGetDesiredPosxRequest ReadRos1Dsr_msgsGetDesiredPosxRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsGetDesiredPosxRequest();
        value.@ref = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    public sealed class _Ros1Dsr_msgsGetDesiredPosxResponse
    {
        public double[] @pos = new double[6];
        public bool @success = false;

        public _Ros1Dsr_msgsGetDesiredPosxResponse()
        {
        }
    }

    public sealed class Ros1Dsr_msgsGetDesiredPosxResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsGetDesiredPosxResponse>
    {
        public static readonly Ros1Dsr_msgsGetDesiredPosxResponseCodec Instance = new Ros1Dsr_msgsGetDesiredPosxResponseCodec();

        private Ros1Dsr_msgsGetDesiredPosxResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/GetDesiredPosxResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_2cf88bb8a14a1c2083a659a509fc1d29531aed1a1f9eb18590ad4381ff00a10a";
        public const int MIN_WIRE_BYTES = 49, MAX_WIRE_BYTES = 49;

        public byte[] Encode(_Ros1Dsr_msgsGetDesiredPosxResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsGetDesiredPosxResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsGetDesiredPosxResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsGetDesiredPosxResponse value = ReadRos1Dsr_msgsGetDesiredPosxResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsGetDesiredPosxResponse(_Codecs.Writer writer, _Ros1Dsr_msgsGetDesiredPosxResponse value)
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
        bool part1 = value.@success;
        writer.Unsigned(part1 ? 1UL : 0UL, 1);
    }

    private static _Ros1Dsr_msgsGetDesiredPosxResponse ReadRos1Dsr_msgsGetDesiredPosxResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsGetDesiredPosxResponse();
        value.@pos = new double[6];
        for(int index = 0; index < value.@pos.Length; ++index)
            value.@pos[index] = reader.Float64();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros1Dsr_msgsGetDesiredVeljRequest
    {
        public _Ros1Dsr_msgsGetDesiredVeljRequest()
        {
        }
    }

    public sealed class Ros1Dsr_msgsGetDesiredVeljRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsGetDesiredVeljRequest>
    {
        public static readonly Ros1Dsr_msgsGetDesiredVeljRequestCodec Instance = new Ros1Dsr_msgsGetDesiredVeljRequestCodec();

        private Ros1Dsr_msgsGetDesiredVeljRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/GetDesiredVeljRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_0b93381c0f1e5f57e086d316056912ecb10e3697346e5f250fa5efa612d76e99";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public byte[] Encode(_Ros1Dsr_msgsGetDesiredVeljRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsGetDesiredVeljRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsGetDesiredVeljRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsGetDesiredVeljRequest value = ReadRos1Dsr_msgsGetDesiredVeljRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsGetDesiredVeljRequest(_Codecs.Writer writer, _Ros1Dsr_msgsGetDesiredVeljRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    private static _Ros1Dsr_msgsGetDesiredVeljRequest ReadRos1Dsr_msgsGetDesiredVeljRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsGetDesiredVeljRequest();
        return value;
    }

    public sealed class _Ros1Dsr_msgsGetDesiredVeljResponse
    {
        public double[] @joint_vel = new double[6];
        public bool @success = false;

        public _Ros1Dsr_msgsGetDesiredVeljResponse()
        {
        }
    }

    public sealed class Ros1Dsr_msgsGetDesiredVeljResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsGetDesiredVeljResponse>
    {
        public static readonly Ros1Dsr_msgsGetDesiredVeljResponseCodec Instance = new Ros1Dsr_msgsGetDesiredVeljResponseCodec();

        private Ros1Dsr_msgsGetDesiredVeljResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/GetDesiredVeljResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_753747a45767aad1a06f610e11bfd405d07aa365ff1ede44c4b78de99ef6ef22";
        public const int MIN_WIRE_BYTES = 49, MAX_WIRE_BYTES = 49;

        public byte[] Encode(_Ros1Dsr_msgsGetDesiredVeljResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsGetDesiredVeljResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsGetDesiredVeljResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsGetDesiredVeljResponse value = ReadRos1Dsr_msgsGetDesiredVeljResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsGetDesiredVeljResponse(_Codecs.Writer writer, _Ros1Dsr_msgsGetDesiredVeljResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        double[] part0 = value.@joint_vel;
        if(part0 == null || part0.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part0.Length; ++index)
        {
            double element = part0[index];
            writer.Float64(element);
        }
        bool part1 = value.@success;
        writer.Unsigned(part1 ? 1UL : 0UL, 1);
    }

    private static _Ros1Dsr_msgsGetDesiredVeljResponse ReadRos1Dsr_msgsGetDesiredVeljResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsGetDesiredVeljResponse();
        value.@joint_vel = new double[6];
        for(int index = 0; index < value.@joint_vel.Length; ++index)
            value.@joint_vel[index] = reader.Float64();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros1Dsr_msgsGetDesiredVelxRequest
    {
        public sbyte @ref = 0;

        public _Ros1Dsr_msgsGetDesiredVelxRequest()
        {
        }
    }

    public sealed class Ros1Dsr_msgsGetDesiredVelxRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsGetDesiredVelxRequest>
    {
        public static readonly Ros1Dsr_msgsGetDesiredVelxRequestCodec Instance = new Ros1Dsr_msgsGetDesiredVelxRequestCodec();

        private Ros1Dsr_msgsGetDesiredVelxRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/GetDesiredVelxRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_f26e4ab51d82b3afdaf0f628f62346c740e2bb331d7f482001662884fd6d8aff";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros1Dsr_msgsGetDesiredVelxRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsGetDesiredVelxRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsGetDesiredVelxRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsGetDesiredVelxRequest value = ReadRos1Dsr_msgsGetDesiredVelxRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsGetDesiredVelxRequest(_Codecs.Writer writer, _Ros1Dsr_msgsGetDesiredVelxRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        sbyte part0 = value.@ref;
        writer.Unsigned(unchecked((byte)part0), 1);
    }

    private static _Ros1Dsr_msgsGetDesiredVelxRequest ReadRos1Dsr_msgsGetDesiredVelxRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsGetDesiredVelxRequest();
        value.@ref = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    public sealed class _Ros1Dsr_msgsGetDesiredVelxResponse
    {
        public double[] @vel = new double[6];
        public bool @success = false;

        public _Ros1Dsr_msgsGetDesiredVelxResponse()
        {
        }
    }

    public sealed class Ros1Dsr_msgsGetDesiredVelxResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsGetDesiredVelxResponse>
    {
        public static readonly Ros1Dsr_msgsGetDesiredVelxResponseCodec Instance = new Ros1Dsr_msgsGetDesiredVelxResponseCodec();

        private Ros1Dsr_msgsGetDesiredVelxResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/GetDesiredVelxResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_30fd91ceb67fa5a2cdaf78fc9b537befc89bac4e3db1203f1da10181fb7d9e51";
        public const int MIN_WIRE_BYTES = 49, MAX_WIRE_BYTES = 49;

        public byte[] Encode(_Ros1Dsr_msgsGetDesiredVelxResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsGetDesiredVelxResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsGetDesiredVelxResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsGetDesiredVelxResponse value = ReadRos1Dsr_msgsGetDesiredVelxResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsGetDesiredVelxResponse(_Codecs.Writer writer, _Ros1Dsr_msgsGetDesiredVelxResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        double[] part0 = value.@vel;
        if(part0 == null || part0.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part0.Length; ++index)
        {
            double element = part0[index];
            writer.Float64(element);
        }
        bool part1 = value.@success;
        writer.Unsigned(part1 ? 1UL : 0UL, 1);
    }

    private static _Ros1Dsr_msgsGetDesiredVelxResponse ReadRos1Dsr_msgsGetDesiredVelxResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsGetDesiredVelxResponse();
        value.@vel = new double[6];
        for(int index = 0; index < value.@vel.Length; ++index)
            value.@vel[index] = reader.Float64();
        value.@success = ReadBool(reader);
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
        public bool @success = false;

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
        public const string CODEC_IDENTITY = "UWVMROS1_2d0e1a81d0a1b5cda2cc3c4a9a5e627878324c67a0843e8a47583d4d86c149c9";
        public const int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;

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
        bool part1 = value.@success;
        writer.Unsigned(part1 ? 1UL : 0UL, 1);
    }

    private static _Ros1Dsr_msgsGetDrlStateResponse ReadRos1Dsr_msgsGetDrlStateResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsGetDrlStateResponse();
        value.@drl_state = unchecked((sbyte)reader.Unsigned(1));
        value.@success = ReadBool(reader);
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
        public bool @success = false;

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
        public const string CODEC_IDENTITY = "UWVMROS1_bdcda8b96e5a22a9143c70f5af6ea56deabe1c68fbf03eb176689c14cc2f50e4";
        public const int MIN_WIRE_BYTES = 49, MAX_WIRE_BYTES = 49;

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
        bool part1 = value.@success;
        writer.Unsigned(part1 ? 1UL : 0UL, 1);
    }

    private static _Ros1Dsr_msgsGetExternalTorqueResponse ReadRos1Dsr_msgsGetExternalTorqueResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsGetExternalTorqueResponse();
        value.@ext_torque = new double[6];
        for(int index = 0; index < value.@ext_torque.Length; ++index)
            value.@ext_torque[index] = reader.Float64();
        value.@success = ReadBool(reader);
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
        public double[] @jts = new double[6];
        public bool @success = false;

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
        public const string CODEC_IDENTITY = "UWVMROS1_da41dbdbac4580eaab3ad355caaa9e0075b87894256722521303559c698b9962";
        public const int MIN_WIRE_BYTES = 49, MAX_WIRE_BYTES = 49;

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
        double[] part0 = value.@jts;
        if(part0 == null || part0.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part0.Length; ++index)
        {
            double element = part0[index];
            writer.Float64(element);
        }
        bool part1 = value.@success;
        writer.Unsigned(part1 ? 1UL : 0UL, 1);
    }

    private static _Ros1Dsr_msgsGetJointTorqueResponse ReadRos1Dsr_msgsGetJointTorqueResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsGetJointTorqueResponse();
        value.@jts = new double[6];
        for(int index = 0; index < value.@jts.Length; ++index)
            value.@jts[index] = reader.Float64();
        value.@success = ReadBool(reader);
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
        public bool @success = false;

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
        public const string CODEC_IDENTITY = "UWVMROS1_477c434da50cd9b26e93b02ca9072542afc22b62084cf5a9eb785cd43cb4d61e";
        public const int MIN_WIRE_BYTES = 25, MAX_WIRE_BYTES = 793;

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
        bool part1 = value.@success;
        writer.Unsigned(part1 ? 1UL : 0UL, 1);
    }

    private static _Ros1Dsr_msgsGetLastAlarmResponse ReadRos1Dsr_msgsGetLastAlarmResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsGetLastAlarmResponse();
        value.@log_alarm = ReadRos1Dsr_msgsLogAlarm(reader);
        value.@success = ReadBool(reader);
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
        public bool @success = false;

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
        public const string CODEC_IDENTITY = "UWVMROS1_29360b7702eec80f1dd7915cc8bb58fb5126d93b545cb921b7eb9c3ffa0b49d5";
        public const int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 5;

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
        bool part1 = value.@success;
        writer.Unsigned(part1 ? 1UL : 0UL, 1);
    }

    private static _Ros1Dsr_msgsGetModbusInputResponse ReadRos1Dsr_msgsGetModbusInputResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsGetModbusInputResponse();
        value.@value = unchecked((int)reader.Unsigned(4));
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros1Dsr_msgsGetOrientationErrorRequest
    {
        public double[] @xd = new double[6];
        public double[] @xc = new double[6];
        public sbyte @axis = 0;

        public _Ros1Dsr_msgsGetOrientationErrorRequest()
        {
        }
    }

    public sealed class Ros1Dsr_msgsGetOrientationErrorRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsGetOrientationErrorRequest>
    {
        public static readonly Ros1Dsr_msgsGetOrientationErrorRequestCodec Instance = new Ros1Dsr_msgsGetOrientationErrorRequestCodec();

        private Ros1Dsr_msgsGetOrientationErrorRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/GetOrientationErrorRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_db1e637c2f187602b5c3aaa2b3e33fb1b7636b28281832d393d3516984e9e01e";
        public const int MIN_WIRE_BYTES = 97, MAX_WIRE_BYTES = 97;

        public byte[] Encode(_Ros1Dsr_msgsGetOrientationErrorRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsGetOrientationErrorRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsGetOrientationErrorRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsGetOrientationErrorRequest value = ReadRos1Dsr_msgsGetOrientationErrorRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsGetOrientationErrorRequest(_Codecs.Writer writer, _Ros1Dsr_msgsGetOrientationErrorRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        double[] part0 = value.@xd;
        if(part0 == null || part0.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part0.Length; ++index)
        {
            double element = part0[index];
            writer.Float64(element);
        }
        double[] part1 = value.@xc;
        if(part1 == null || part1.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part1.Length; ++index)
        {
            double element = part1[index];
            writer.Float64(element);
        }
        sbyte part2 = value.@axis;
        writer.Unsigned(unchecked((byte)part2), 1);
    }

    private static _Ros1Dsr_msgsGetOrientationErrorRequest ReadRos1Dsr_msgsGetOrientationErrorRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsGetOrientationErrorRequest();
        value.@xd = new double[6];
        for(int index = 0; index < value.@xd.Length; ++index)
            value.@xd[index] = reader.Float64();
        value.@xc = new double[6];
        for(int index = 0; index < value.@xc.Length; ++index)
            value.@xc[index] = reader.Float64();
        value.@axis = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    public sealed class _Ros1Dsr_msgsGetOrientationErrorResponse
    {
        public float @ori_error = 0;
        public bool @success = false;

        public _Ros1Dsr_msgsGetOrientationErrorResponse()
        {
        }
    }

    public sealed class Ros1Dsr_msgsGetOrientationErrorResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsGetOrientationErrorResponse>
    {
        public static readonly Ros1Dsr_msgsGetOrientationErrorResponseCodec Instance = new Ros1Dsr_msgsGetOrientationErrorResponseCodec();

        private Ros1Dsr_msgsGetOrientationErrorResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/GetOrientationErrorResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_909be18b65c95198ce5c5a7b2a11ae97cfad9509c360aec833bbfd239497b9e6";
        public const int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 5;

        public byte[] Encode(_Ros1Dsr_msgsGetOrientationErrorResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsGetOrientationErrorResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsGetOrientationErrorResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsGetOrientationErrorResponse value = ReadRos1Dsr_msgsGetOrientationErrorResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsGetOrientationErrorResponse(_Codecs.Writer writer, _Ros1Dsr_msgsGetOrientationErrorResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        float part0 = value.@ori_error;
        WriteFloat32(writer, part0);
        bool part1 = value.@success;
        writer.Unsigned(part1 ? 1UL : 0UL, 1);
    }

    private static _Ros1Dsr_msgsGetOrientationErrorResponse ReadRos1Dsr_msgsGetOrientationErrorResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsGetOrientationErrorResponse();
        value.@ori_error = ReadFloat32(reader);
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros1Dsr_msgsGetRTControlInputDataListRequest
    {
        public string @version = "";

        public _Ros1Dsr_msgsGetRTControlInputDataListRequest()
        {
        }
    }

    public sealed class Ros1Dsr_msgsGetRTControlInputDataListRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsGetRTControlInputDataListRequest>
    {
        public static readonly Ros1Dsr_msgsGetRTControlInputDataListRequestCodec Instance = new Ros1Dsr_msgsGetRTControlInputDataListRequestCodec();

        private Ros1Dsr_msgsGetRTControlInputDataListRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/GetRTControlInputDataListRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_7f10baf8b008b8de00c2fcc20aea49615584980c73d20b6018e39e5a6b98542e";
        public const int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 260;

        public byte[] Encode(_Ros1Dsr_msgsGetRTControlInputDataListRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsGetRTControlInputDataListRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsGetRTControlInputDataListRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsGetRTControlInputDataListRequest value = ReadRos1Dsr_msgsGetRTControlInputDataListRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsGetRTControlInputDataListRequest(_Codecs.Writer writer, _Ros1Dsr_msgsGetRTControlInputDataListRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        string part0 = value.@version;
        WriteText(writer, part0, 256);
    }

    private static _Ros1Dsr_msgsGetRTControlInputDataListRequest ReadRos1Dsr_msgsGetRTControlInputDataListRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsGetRTControlInputDataListRequest();
        value.@version = ReadText(reader, 256);
        return value;
    }

    public sealed class _Ros1Dsr_msgsGetRTControlInputDataListResponse
    {
        public bool @success = false;
        public string @data = "";

        public _Ros1Dsr_msgsGetRTControlInputDataListResponse()
        {
        }
    }

    public sealed class Ros1Dsr_msgsGetRTControlInputDataListResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsGetRTControlInputDataListResponse>
    {
        public static readonly Ros1Dsr_msgsGetRTControlInputDataListResponseCodec Instance = new Ros1Dsr_msgsGetRTControlInputDataListResponseCodec();

        private Ros1Dsr_msgsGetRTControlInputDataListResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/GetRTControlInputDataListResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_e930906de3694556f29baaacac82899dab1ad90716d52c67789e2494ed64ec63";
        public const int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 261;

        public byte[] Encode(_Ros1Dsr_msgsGetRTControlInputDataListResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsGetRTControlInputDataListResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsGetRTControlInputDataListResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsGetRTControlInputDataListResponse value = ReadRos1Dsr_msgsGetRTControlInputDataListResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsGetRTControlInputDataListResponse(_Codecs.Writer writer, _Ros1Dsr_msgsGetRTControlInputDataListResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
        string part1 = value.@data;
        WriteText(writer, part1, 256);
    }

    private static _Ros1Dsr_msgsGetRTControlInputDataListResponse ReadRos1Dsr_msgsGetRTControlInputDataListResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsGetRTControlInputDataListResponse();
        value.@success = ReadBool(reader);
        value.@data = ReadText(reader, 256);
        return value;
    }

    public sealed class _Ros1Dsr_msgsGetRTControlInputVersionListRequest
    {
        public _Ros1Dsr_msgsGetRTControlInputVersionListRequest()
        {
        }
    }

    public sealed class Ros1Dsr_msgsGetRTControlInputVersionListRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsGetRTControlInputVersionListRequest>
    {
        public static readonly Ros1Dsr_msgsGetRTControlInputVersionListRequestCodec Instance = new Ros1Dsr_msgsGetRTControlInputVersionListRequestCodec();

        private Ros1Dsr_msgsGetRTControlInputVersionListRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/GetRTControlInputVersionListRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_e9bef63b747d0b01343249f0df32a27a7f97a5b031ec2215fac346a9df113fb8";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public byte[] Encode(_Ros1Dsr_msgsGetRTControlInputVersionListRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsGetRTControlInputVersionListRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsGetRTControlInputVersionListRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsGetRTControlInputVersionListRequest value = ReadRos1Dsr_msgsGetRTControlInputVersionListRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsGetRTControlInputVersionListRequest(_Codecs.Writer writer, _Ros1Dsr_msgsGetRTControlInputVersionListRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    private static _Ros1Dsr_msgsGetRTControlInputVersionListRequest ReadRos1Dsr_msgsGetRTControlInputVersionListRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsGetRTControlInputVersionListRequest();
        return value;
    }

    public sealed class _Ros1Dsr_msgsGetRTControlInputVersionListResponse
    {
        public bool @success = false;
        public string @version = "";

        public _Ros1Dsr_msgsGetRTControlInputVersionListResponse()
        {
        }
    }

    public sealed class Ros1Dsr_msgsGetRTControlInputVersionListResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsGetRTControlInputVersionListResponse>
    {
        public static readonly Ros1Dsr_msgsGetRTControlInputVersionListResponseCodec Instance = new Ros1Dsr_msgsGetRTControlInputVersionListResponseCodec();

        private Ros1Dsr_msgsGetRTControlInputVersionListResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/GetRTControlInputVersionListResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_d7c478e4dce0983f786db7df29798eee087e500169b9e1f676a3c57c835d94f1";
        public const int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 261;

        public byte[] Encode(_Ros1Dsr_msgsGetRTControlInputVersionListResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsGetRTControlInputVersionListResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsGetRTControlInputVersionListResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsGetRTControlInputVersionListResponse value = ReadRos1Dsr_msgsGetRTControlInputVersionListResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsGetRTControlInputVersionListResponse(_Codecs.Writer writer, _Ros1Dsr_msgsGetRTControlInputVersionListResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
        string part1 = value.@version;
        WriteText(writer, part1, 256);
    }

    private static _Ros1Dsr_msgsGetRTControlInputVersionListResponse ReadRos1Dsr_msgsGetRTControlInputVersionListResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsGetRTControlInputVersionListResponse();
        value.@success = ReadBool(reader);
        value.@version = ReadText(reader, 256);
        return value;
    }

    public sealed class _Ros1Dsr_msgsGetRTControlOutputDataListRequest
    {
        public string @version = "";

        public _Ros1Dsr_msgsGetRTControlOutputDataListRequest()
        {
        }
    }

    public sealed class Ros1Dsr_msgsGetRTControlOutputDataListRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsGetRTControlOutputDataListRequest>
    {
        public static readonly Ros1Dsr_msgsGetRTControlOutputDataListRequestCodec Instance = new Ros1Dsr_msgsGetRTControlOutputDataListRequestCodec();

        private Ros1Dsr_msgsGetRTControlOutputDataListRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/GetRTControlOutputDataListRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_ce20938bf62ee2d5389c4151d16af5e0cb8f935b5cf4c7e14070f269a0baa524";
        public const int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 260;

        public byte[] Encode(_Ros1Dsr_msgsGetRTControlOutputDataListRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsGetRTControlOutputDataListRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsGetRTControlOutputDataListRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsGetRTControlOutputDataListRequest value = ReadRos1Dsr_msgsGetRTControlOutputDataListRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsGetRTControlOutputDataListRequest(_Codecs.Writer writer, _Ros1Dsr_msgsGetRTControlOutputDataListRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        string part0 = value.@version;
        WriteText(writer, part0, 256);
    }

    private static _Ros1Dsr_msgsGetRTControlOutputDataListRequest ReadRos1Dsr_msgsGetRTControlOutputDataListRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsGetRTControlOutputDataListRequest();
        value.@version = ReadText(reader, 256);
        return value;
    }

    public sealed class _Ros1Dsr_msgsGetRTControlOutputDataListResponse
    {
        public bool @success = false;
        public string @data = "";

        public _Ros1Dsr_msgsGetRTControlOutputDataListResponse()
        {
        }
    }

    public sealed class Ros1Dsr_msgsGetRTControlOutputDataListResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsGetRTControlOutputDataListResponse>
    {
        public static readonly Ros1Dsr_msgsGetRTControlOutputDataListResponseCodec Instance = new Ros1Dsr_msgsGetRTControlOutputDataListResponseCodec();

        private Ros1Dsr_msgsGetRTControlOutputDataListResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/GetRTControlOutputDataListResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_030d3e350790b44f0101b263558518a807d97c772289c2eb16763808be6b1d5f";
        public const int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 261;

        public byte[] Encode(_Ros1Dsr_msgsGetRTControlOutputDataListResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsGetRTControlOutputDataListResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsGetRTControlOutputDataListResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsGetRTControlOutputDataListResponse value = ReadRos1Dsr_msgsGetRTControlOutputDataListResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsGetRTControlOutputDataListResponse(_Codecs.Writer writer, _Ros1Dsr_msgsGetRTControlOutputDataListResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
        string part1 = value.@data;
        WriteText(writer, part1, 256);
    }

    private static _Ros1Dsr_msgsGetRTControlOutputDataListResponse ReadRos1Dsr_msgsGetRTControlOutputDataListResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsGetRTControlOutputDataListResponse();
        value.@success = ReadBool(reader);
        value.@data = ReadText(reader, 256);
        return value;
    }

    public sealed class _Ros1Dsr_msgsGetRTControlOutputVersionListRequest
    {
        public _Ros1Dsr_msgsGetRTControlOutputVersionListRequest()
        {
        }
    }

    public sealed class Ros1Dsr_msgsGetRTControlOutputVersionListRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsGetRTControlOutputVersionListRequest>
    {
        public static readonly Ros1Dsr_msgsGetRTControlOutputVersionListRequestCodec Instance = new Ros1Dsr_msgsGetRTControlOutputVersionListRequestCodec();

        private Ros1Dsr_msgsGetRTControlOutputVersionListRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/GetRTControlOutputVersionListRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_67330fd6822948e262d4d68e48593e67189bada0e5281607a074235f086b34d0";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public byte[] Encode(_Ros1Dsr_msgsGetRTControlOutputVersionListRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsGetRTControlOutputVersionListRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsGetRTControlOutputVersionListRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsGetRTControlOutputVersionListRequest value = ReadRos1Dsr_msgsGetRTControlOutputVersionListRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsGetRTControlOutputVersionListRequest(_Codecs.Writer writer, _Ros1Dsr_msgsGetRTControlOutputVersionListRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    private static _Ros1Dsr_msgsGetRTControlOutputVersionListRequest ReadRos1Dsr_msgsGetRTControlOutputVersionListRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsGetRTControlOutputVersionListRequest();
        return value;
    }

    public sealed class _Ros1Dsr_msgsGetRTControlOutputVersionListResponse
    {
        public bool @success = false;
        public string @version = "";

        public _Ros1Dsr_msgsGetRTControlOutputVersionListResponse()
        {
        }
    }

    public sealed class Ros1Dsr_msgsGetRTControlOutputVersionListResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsGetRTControlOutputVersionListResponse>
    {
        public static readonly Ros1Dsr_msgsGetRTControlOutputVersionListResponseCodec Instance = new Ros1Dsr_msgsGetRTControlOutputVersionListResponseCodec();

        private Ros1Dsr_msgsGetRTControlOutputVersionListResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/GetRTControlOutputVersionListResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_19ca1e03d18347033f071489428024a1f9204b64aced31a42c8161d11e5fa76b";
        public const int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 261;

        public byte[] Encode(_Ros1Dsr_msgsGetRTControlOutputVersionListResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsGetRTControlOutputVersionListResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsGetRTControlOutputVersionListResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsGetRTControlOutputVersionListResponse value = ReadRos1Dsr_msgsGetRTControlOutputVersionListResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsGetRTControlOutputVersionListResponse(_Codecs.Writer writer, _Ros1Dsr_msgsGetRTControlOutputVersionListResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
        string part1 = value.@version;
        WriteText(writer, part1, 256);
    }

    private static _Ros1Dsr_msgsGetRTControlOutputVersionListResponse ReadRos1Dsr_msgsGetRTControlOutputVersionListResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsGetRTControlOutputVersionListResponse();
        value.@success = ReadBool(reader);
        value.@version = ReadText(reader, 256);
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
        public bool @success = false;

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
        public const string CODEC_IDENTITY = "UWVMROS1_559f9328cba413aa572f66818aace6061020777c2cbb6bea475adf3cbca1a88c";
        public const int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;

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
        bool part1 = value.@success;
        writer.Unsigned(part1 ? 1UL : 0UL, 1);
    }

    private static _Ros1Dsr_msgsGetRobotModeResponse ReadRos1Dsr_msgsGetRobotModeResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsGetRobotModeResponse();
        value.@robot_mode = unchecked((sbyte)reader.Unsigned(1));
        value.@success = ReadBool(reader);
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
        public bool @success = false;

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
        public const string CODEC_IDENTITY = "UWVMROS1_eaef45ce098108c89a49b2ed3e0cfeba901d7a9e8e4fee86d7c646e181cfe3c4";
        public const int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;

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
        bool part1 = value.@success;
        writer.Unsigned(part1 ? 1UL : 0UL, 1);
    }

    private static _Ros1Dsr_msgsGetRobotSpeedModeResponse ReadRos1Dsr_msgsGetRobotSpeedModeResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsGetRobotSpeedModeResponse();
        value.@speed_mode = unchecked((sbyte)reader.Unsigned(1));
        value.@success = ReadBool(reader);
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
        public bool @success = false;

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
        public const string CODEC_IDENTITY = "UWVMROS1_1e210aa1fd0a833b8d8dedbbda759f12b860c7cbe161f2bed50b41015451ba51";
        public const int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;

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
        bool part1 = value.@success;
        writer.Unsigned(part1 ? 1UL : 0UL, 1);
    }

    private static _Ros1Dsr_msgsGetRobotStateResponse ReadRos1Dsr_msgsGetRobotStateResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsGetRobotStateResponse();
        value.@robot_state = unchecked((sbyte)reader.Unsigned(1));
        value.@success = ReadBool(reader);
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
        public bool @success = false;

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
        public const string CODEC_IDENTITY = "UWVMROS1_b7f7ec9a3e0bf607295bc5d0af1d82d192bc35103401c913c4ed8a8c77811c7f";
        public const int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;

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
        bool part1 = value.@success;
        writer.Unsigned(part1 ? 1UL : 0UL, 1);
    }

    private static _Ros1Dsr_msgsGetRobotSystemResponse ReadRos1Dsr_msgsGetRobotSystemResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsGetRobotSystemResponse();
        value.@robot_system = unchecked((sbyte)reader.Unsigned(1));
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros1Dsr_msgsGetSolutionSpaceRequest
    {
        public double[] @pos = new double[6];

        public _Ros1Dsr_msgsGetSolutionSpaceRequest()
        {
        }
    }

    public sealed class Ros1Dsr_msgsGetSolutionSpaceRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsGetSolutionSpaceRequest>
    {
        public static readonly Ros1Dsr_msgsGetSolutionSpaceRequestCodec Instance = new Ros1Dsr_msgsGetSolutionSpaceRequestCodec();

        private Ros1Dsr_msgsGetSolutionSpaceRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/GetSolutionSpaceRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_416c6623add6fed0900f585292905890932f326162a1431b481b28aac52c7bf3";
        public const int MIN_WIRE_BYTES = 48, MAX_WIRE_BYTES = 48;

        public byte[] Encode(_Ros1Dsr_msgsGetSolutionSpaceRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsGetSolutionSpaceRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsGetSolutionSpaceRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsGetSolutionSpaceRequest value = ReadRos1Dsr_msgsGetSolutionSpaceRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsGetSolutionSpaceRequest(_Codecs.Writer writer, _Ros1Dsr_msgsGetSolutionSpaceRequest value)
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

    private static _Ros1Dsr_msgsGetSolutionSpaceRequest ReadRos1Dsr_msgsGetSolutionSpaceRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsGetSolutionSpaceRequest();
        value.@pos = new double[6];
        for(int index = 0; index < value.@pos.Length; ++index)
            value.@pos[index] = reader.Float64();
        return value;
    }

    public sealed class _Ros1Dsr_msgsGetSolutionSpaceResponse
    {
        public sbyte @sol_space = 0;
        public bool @success = false;

        public _Ros1Dsr_msgsGetSolutionSpaceResponse()
        {
        }
    }

    public sealed class Ros1Dsr_msgsGetSolutionSpaceResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsGetSolutionSpaceResponse>
    {
        public static readonly Ros1Dsr_msgsGetSolutionSpaceResponseCodec Instance = new Ros1Dsr_msgsGetSolutionSpaceResponseCodec();

        private Ros1Dsr_msgsGetSolutionSpaceResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/GetSolutionSpaceResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_d6cf69fb571a6947cabc01a594e84d1eed7a581511e755db9dde5452f1230511";
        public const int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;

        public byte[] Encode(_Ros1Dsr_msgsGetSolutionSpaceResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsGetSolutionSpaceResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsGetSolutionSpaceResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsGetSolutionSpaceResponse value = ReadRos1Dsr_msgsGetSolutionSpaceResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsGetSolutionSpaceResponse(_Codecs.Writer writer, _Ros1Dsr_msgsGetSolutionSpaceResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        sbyte part0 = value.@sol_space;
        writer.Unsigned(unchecked((byte)part0), 1);
        bool part1 = value.@success;
        writer.Unsigned(part1 ? 1UL : 0UL, 1);
    }

    private static _Ros1Dsr_msgsGetSolutionSpaceResponse ReadRos1Dsr_msgsGetSolutionSpaceResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsGetSolutionSpaceResponse();
        value.@sol_space = unchecked((sbyte)reader.Unsigned(1));
        value.@success = ReadBool(reader);
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
        public sbyte @value = 0;
        public bool @success = false;

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
        public const string CODEC_IDENTITY = "UWVMROS1_ba289ccf352c0560a70d99ec99a95c01b84ab7436f5638874ae4e1d89364a8b6";
        public const int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;

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
        sbyte part0 = value.@value;
        writer.Unsigned(unchecked((byte)part0), 1);
        bool part1 = value.@success;
        writer.Unsigned(part1 ? 1UL : 0UL, 1);
    }

    private static _Ros1Dsr_msgsGetToolDigitalInputResponse ReadRos1Dsr_msgsGetToolDigitalInputResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsGetToolDigitalInputResponse();
        value.@value = unchecked((sbyte)reader.Unsigned(1));
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros1Dsr_msgsGetToolDigitalOutputRequest
    {
        public sbyte @index = 0;

        public _Ros1Dsr_msgsGetToolDigitalOutputRequest()
        {
        }
    }

    public sealed class Ros1Dsr_msgsGetToolDigitalOutputRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsGetToolDigitalOutputRequest>
    {
        public static readonly Ros1Dsr_msgsGetToolDigitalOutputRequestCodec Instance = new Ros1Dsr_msgsGetToolDigitalOutputRequestCodec();

        private Ros1Dsr_msgsGetToolDigitalOutputRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/GetToolDigitalOutputRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_bfed701bd5b788685802e15709a594b065dff57f5c6706b14ad41bc6f80736ce";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros1Dsr_msgsGetToolDigitalOutputRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsGetToolDigitalOutputRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsGetToolDigitalOutputRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsGetToolDigitalOutputRequest value = ReadRos1Dsr_msgsGetToolDigitalOutputRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsGetToolDigitalOutputRequest(_Codecs.Writer writer, _Ros1Dsr_msgsGetToolDigitalOutputRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        sbyte part0 = value.@index;
        writer.Unsigned(unchecked((byte)part0), 1);
    }

    private static _Ros1Dsr_msgsGetToolDigitalOutputRequest ReadRos1Dsr_msgsGetToolDigitalOutputRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsGetToolDigitalOutputRequest();
        value.@index = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    public sealed class _Ros1Dsr_msgsGetToolDigitalOutputResponse
    {
        public sbyte @value = 0;
        public bool @success = false;

        public _Ros1Dsr_msgsGetToolDigitalOutputResponse()
        {
        }
    }

    public sealed class Ros1Dsr_msgsGetToolDigitalOutputResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsGetToolDigitalOutputResponse>
    {
        public static readonly Ros1Dsr_msgsGetToolDigitalOutputResponseCodec Instance = new Ros1Dsr_msgsGetToolDigitalOutputResponseCodec();

        private Ros1Dsr_msgsGetToolDigitalOutputResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/GetToolDigitalOutputResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_0873d83b7b79d0270af4d61d86fd77bb248a75ebfe91177e4acc9299c46a309d";
        public const int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;

        public byte[] Encode(_Ros1Dsr_msgsGetToolDigitalOutputResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsGetToolDigitalOutputResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsGetToolDigitalOutputResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsGetToolDigitalOutputResponse value = ReadRos1Dsr_msgsGetToolDigitalOutputResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsGetToolDigitalOutputResponse(_Codecs.Writer writer, _Ros1Dsr_msgsGetToolDigitalOutputResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        sbyte part0 = value.@value;
        writer.Unsigned(unchecked((byte)part0), 1);
        bool part1 = value.@success;
        writer.Unsigned(part1 ? 1UL : 0UL, 1);
    }

    private static _Ros1Dsr_msgsGetToolDigitalOutputResponse ReadRos1Dsr_msgsGetToolDigitalOutputResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsGetToolDigitalOutputResponse();
        value.@value = unchecked((sbyte)reader.Unsigned(1));
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros1Dsr_msgsGetToolForceRequest
    {
        public sbyte @ref = 0;

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
        public const string CODEC_IDENTITY = "UWVMROS1_2df77a1075113a1c8febd77c89e13417c596c6d1d4abd26454a4439620e397b4";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

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
        sbyte part0 = value.@ref;
        writer.Unsigned(unchecked((byte)part0), 1);
    }

    private static _Ros1Dsr_msgsGetToolForceRequest ReadRos1Dsr_msgsGetToolForceRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsGetToolForceRequest();
        value.@ref = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    public sealed class _Ros1Dsr_msgsGetToolForceResponse
    {
        public double[] @tool_force = new double[6];
        public bool @success = false;

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
        public const string CODEC_IDENTITY = "UWVMROS1_11dfdda93d1818dbcb331bba86cf08815f24bb8adb34e70792a730ce27d95ed9";
        public const int MIN_WIRE_BYTES = 49, MAX_WIRE_BYTES = 49;

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
        bool part1 = value.@success;
        writer.Unsigned(part1 ? 1UL : 0UL, 1);
    }

    private static _Ros1Dsr_msgsGetToolForceResponse ReadRos1Dsr_msgsGetToolForceResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsGetToolForceResponse();
        value.@tool_force = new double[6];
        for(int index = 0; index < value.@tool_force.Length; ++index)
            value.@tool_force[index] = reader.Float64();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros1Dsr_msgsGetUserCartCoordRequest
    {
        public sbyte @id = 0;

        public _Ros1Dsr_msgsGetUserCartCoordRequest()
        {
        }
    }

    public sealed class Ros1Dsr_msgsGetUserCartCoordRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsGetUserCartCoordRequest>
    {
        public static readonly Ros1Dsr_msgsGetUserCartCoordRequestCodec Instance = new Ros1Dsr_msgsGetUserCartCoordRequestCodec();

        private Ros1Dsr_msgsGetUserCartCoordRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/GetUserCartCoordRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_07824b4c8403d59fad8e8a33c615fcf96a0556bd8de1c1639a16d3aa28db0637";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros1Dsr_msgsGetUserCartCoordRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsGetUserCartCoordRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsGetUserCartCoordRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsGetUserCartCoordRequest value = ReadRos1Dsr_msgsGetUserCartCoordRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsGetUserCartCoordRequest(_Codecs.Writer writer, _Ros1Dsr_msgsGetUserCartCoordRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        sbyte part0 = value.@id;
        writer.Unsigned(unchecked((byte)part0), 1);
    }

    private static _Ros1Dsr_msgsGetUserCartCoordRequest ReadRos1Dsr_msgsGetUserCartCoordRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsGetUserCartCoordRequest();
        value.@id = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    public sealed class _Ros1Dsr_msgsGetUserCartCoordResponse
    {
        public double[] @conv_posx = new double[6];
        public sbyte @ref = 0;
        public bool @success = false;

        public _Ros1Dsr_msgsGetUserCartCoordResponse()
        {
        }
    }

    public sealed class Ros1Dsr_msgsGetUserCartCoordResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsGetUserCartCoordResponse>
    {
        public static readonly Ros1Dsr_msgsGetUserCartCoordResponseCodec Instance = new Ros1Dsr_msgsGetUserCartCoordResponseCodec();

        private Ros1Dsr_msgsGetUserCartCoordResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/GetUserCartCoordResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_2fea411082260a3dbaf3fb3f4c1314f74dda9fb864222fe5837e1d5f62502a22";
        public const int MIN_WIRE_BYTES = 50, MAX_WIRE_BYTES = 50;

        public byte[] Encode(_Ros1Dsr_msgsGetUserCartCoordResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsGetUserCartCoordResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsGetUserCartCoordResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsGetUserCartCoordResponse value = ReadRos1Dsr_msgsGetUserCartCoordResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsGetUserCartCoordResponse(_Codecs.Writer writer, _Ros1Dsr_msgsGetUserCartCoordResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        double[] part0 = value.@conv_posx;
        if(part0 == null || part0.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part0.Length; ++index)
        {
            double element = part0[index];
            writer.Float64(element);
        }
        sbyte part1 = value.@ref;
        writer.Unsigned(unchecked((byte)part1), 1);
        bool part2 = value.@success;
        writer.Unsigned(part2 ? 1UL : 0UL, 1);
    }

    private static _Ros1Dsr_msgsGetUserCartCoordResponse ReadRos1Dsr_msgsGetUserCartCoordResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsGetUserCartCoordResponse();
        value.@conv_posx = new double[6];
        for(int index = 0; index < value.@conv_posx.Length; ++index)
            value.@conv_posx[index] = reader.Float64();
        value.@ref = unchecked((sbyte)reader.Unsigned(1));
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros1Dsr_msgsGetWorkpieceWeightRequest
    {
        public _Ros1Dsr_msgsGetWorkpieceWeightRequest()
        {
        }
    }

    public sealed class Ros1Dsr_msgsGetWorkpieceWeightRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsGetWorkpieceWeightRequest>
    {
        public static readonly Ros1Dsr_msgsGetWorkpieceWeightRequestCodec Instance = new Ros1Dsr_msgsGetWorkpieceWeightRequestCodec();

        private Ros1Dsr_msgsGetWorkpieceWeightRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/GetWorkpieceWeightRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_fa987920bd5c89882bd52b444bec319c5b83c3fdf6086c065c87e924d40890ec";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public byte[] Encode(_Ros1Dsr_msgsGetWorkpieceWeightRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsGetWorkpieceWeightRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsGetWorkpieceWeightRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsGetWorkpieceWeightRequest value = ReadRos1Dsr_msgsGetWorkpieceWeightRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsGetWorkpieceWeightRequest(_Codecs.Writer writer, _Ros1Dsr_msgsGetWorkpieceWeightRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    private static _Ros1Dsr_msgsGetWorkpieceWeightRequest ReadRos1Dsr_msgsGetWorkpieceWeightRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsGetWorkpieceWeightRequest();
        return value;
    }

    public sealed class _Ros1Dsr_msgsGetWorkpieceWeightResponse
    {
        public float @weight = 0;
        public bool @success = false;

        public _Ros1Dsr_msgsGetWorkpieceWeightResponse()
        {
        }
    }

    public sealed class Ros1Dsr_msgsGetWorkpieceWeightResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsGetWorkpieceWeightResponse>
    {
        public static readonly Ros1Dsr_msgsGetWorkpieceWeightResponseCodec Instance = new Ros1Dsr_msgsGetWorkpieceWeightResponseCodec();

        private Ros1Dsr_msgsGetWorkpieceWeightResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/GetWorkpieceWeightResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_687f2eaa565bbbb878ff0018ad4fa9bc1596316cbbb83c07df85df5cd81887ca";
        public const int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 5;

        public byte[] Encode(_Ros1Dsr_msgsGetWorkpieceWeightResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsGetWorkpieceWeightResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsGetWorkpieceWeightResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsGetWorkpieceWeightResponse value = ReadRos1Dsr_msgsGetWorkpieceWeightResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsGetWorkpieceWeightResponse(_Codecs.Writer writer, _Ros1Dsr_msgsGetWorkpieceWeightResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        float part0 = value.@weight;
        WriteFloat32(writer, part0);
        bool part1 = value.@success;
        writer.Unsigned(part1 ? 1UL : 0UL, 1);
    }

    private static _Ros1Dsr_msgsGetWorkpieceWeightResponse ReadRos1Dsr_msgsGetWorkpieceWeightResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsGetWorkpieceWeightResponse();
        value.@weight = ReadFloat32(reader);
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros1Dsr_msgsIkinRequest
    {
        public double[] @pos = new double[6];
        public sbyte @sol_space = 0;
        public sbyte @ref = 0;

        public _Ros1Dsr_msgsIkinRequest()
        {
        }
    }

    public sealed class Ros1Dsr_msgsIkinRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsIkinRequest>
    {
        public static readonly Ros1Dsr_msgsIkinRequestCodec Instance = new Ros1Dsr_msgsIkinRequestCodec();

        private Ros1Dsr_msgsIkinRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/IkinRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_64192c8fc182151b11fe48b99d05e142994a0724cbde8572058378e843fe7f27";
        public const int MIN_WIRE_BYTES = 50, MAX_WIRE_BYTES = 50;

        public byte[] Encode(_Ros1Dsr_msgsIkinRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsIkinRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsIkinRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsIkinRequest value = ReadRos1Dsr_msgsIkinRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsIkinRequest(_Codecs.Writer writer, _Ros1Dsr_msgsIkinRequest value)
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
        sbyte part1 = value.@sol_space;
        writer.Unsigned(unchecked((byte)part1), 1);
        sbyte part2 = value.@ref;
        writer.Unsigned(unchecked((byte)part2), 1);
    }

    private static _Ros1Dsr_msgsIkinRequest ReadRos1Dsr_msgsIkinRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsIkinRequest();
        value.@pos = new double[6];
        for(int index = 0; index < value.@pos.Length; ++index)
            value.@pos[index] = reader.Float64();
        value.@sol_space = unchecked((sbyte)reader.Unsigned(1));
        value.@ref = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    public sealed class _Ros1Dsr_msgsIkinResponse
    {
        public double[] @conv_posj = new double[6];
        public bool @success = false;

        public _Ros1Dsr_msgsIkinResponse()
        {
        }
    }

    public sealed class Ros1Dsr_msgsIkinResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsIkinResponse>
    {
        public static readonly Ros1Dsr_msgsIkinResponseCodec Instance = new Ros1Dsr_msgsIkinResponseCodec();

        private Ros1Dsr_msgsIkinResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/IkinResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_fa64a9417d777219d7142d600391a80c0001464e3777174bef040ecd80df1e23";
        public const int MIN_WIRE_BYTES = 49, MAX_WIRE_BYTES = 49;

        public byte[] Encode(_Ros1Dsr_msgsIkinResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsIkinResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsIkinResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsIkinResponse value = ReadRos1Dsr_msgsIkinResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsIkinResponse(_Codecs.Writer writer, _Ros1Dsr_msgsIkinResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        double[] part0 = value.@conv_posj;
        if(part0 == null || part0.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part0.Length; ++index)
        {
            double element = part0[index];
            writer.Float64(element);
        }
        bool part1 = value.@success;
        writer.Unsigned(part1 ? 1UL : 0UL, 1);
    }

    private static _Ros1Dsr_msgsIkinResponse ReadRos1Dsr_msgsIkinResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsIkinResponse();
        value.@conv_posj = new double[6];
        for(int index = 0; index < value.@conv_posj.Length; ++index)
            value.@conv_posj[index] = reader.Float64();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros1Dsr_msgsIkinExRequest
    {
        public double[] @pos = new double[6];
        public sbyte @sol_space = 0;
        public sbyte @ref = 0;
        public sbyte @ref_pos_opt = 0;

        public _Ros1Dsr_msgsIkinExRequest()
        {
        }
    }

    public sealed class Ros1Dsr_msgsIkinExRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsIkinExRequest>
    {
        public static readonly Ros1Dsr_msgsIkinExRequestCodec Instance = new Ros1Dsr_msgsIkinExRequestCodec();

        private Ros1Dsr_msgsIkinExRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/IkinExRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_6af2997a590ef83a15238d4837d7540ba1f5dd0d40067c74e03ebda063fa0cd0";
        public const int MIN_WIRE_BYTES = 51, MAX_WIRE_BYTES = 51;

        public byte[] Encode(_Ros1Dsr_msgsIkinExRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsIkinExRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsIkinExRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsIkinExRequest value = ReadRos1Dsr_msgsIkinExRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsIkinExRequest(_Codecs.Writer writer, _Ros1Dsr_msgsIkinExRequest value)
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
        sbyte part1 = value.@sol_space;
        writer.Unsigned(unchecked((byte)part1), 1);
        sbyte part2 = value.@ref;
        writer.Unsigned(unchecked((byte)part2), 1);
        sbyte part3 = value.@ref_pos_opt;
        writer.Unsigned(unchecked((byte)part3), 1);
    }

    private static _Ros1Dsr_msgsIkinExRequest ReadRos1Dsr_msgsIkinExRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsIkinExRequest();
        value.@pos = new double[6];
        for(int index = 0; index < value.@pos.Length; ++index)
            value.@pos[index] = reader.Float64();
        value.@sol_space = unchecked((sbyte)reader.Unsigned(1));
        value.@ref = unchecked((sbyte)reader.Unsigned(1));
        value.@ref_pos_opt = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    public sealed class _Ros1Dsr_msgsIkinExResponse
    {
        public double[] @conv_posj = new double[6];
        public bool @status = false;
        public bool @success = false;

        public _Ros1Dsr_msgsIkinExResponse()
        {
        }
    }

    public sealed class Ros1Dsr_msgsIkinExResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsIkinExResponse>
    {
        public static readonly Ros1Dsr_msgsIkinExResponseCodec Instance = new Ros1Dsr_msgsIkinExResponseCodec();

        private Ros1Dsr_msgsIkinExResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/IkinExResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_67a37bdec1e80488a520a0efc6f7bc1781cbd90b5137068c7e2961b5cb1ee1d1";
        public const int MIN_WIRE_BYTES = 50, MAX_WIRE_BYTES = 50;

        public byte[] Encode(_Ros1Dsr_msgsIkinExResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsIkinExResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsIkinExResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsIkinExResponse value = ReadRos1Dsr_msgsIkinExResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsIkinExResponse(_Codecs.Writer writer, _Ros1Dsr_msgsIkinExResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        double[] part0 = value.@conv_posj;
        if(part0 == null || part0.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part0.Length; ++index)
        {
            double element = part0[index];
            writer.Float64(element);
        }
        bool part1 = value.@status;
        writer.Unsigned(part1 ? 1UL : 0UL, 1);
        bool part2 = value.@success;
        writer.Unsigned(part2 ? 1UL : 0UL, 1);
    }

    private static _Ros1Dsr_msgsIkinExResponse ReadRos1Dsr_msgsIkinExResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsIkinExResponse();
        value.@conv_posj = new double[6];
        for(int index = 0; index < value.@conv_posj.Length; ++index)
            value.@conv_posj[index] = reader.Float64();
        value.@status = ReadBool(reader);
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros1Dsr_msgsIsDoneBoltTighteningRequest
    {
        public double @m = 0;
        public double @timeout = 0;
        public sbyte @axis = 0;

        public _Ros1Dsr_msgsIsDoneBoltTighteningRequest()
        {
        }
    }

    public sealed class Ros1Dsr_msgsIsDoneBoltTighteningRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsIsDoneBoltTighteningRequest>
    {
        public static readonly Ros1Dsr_msgsIsDoneBoltTighteningRequestCodec Instance = new Ros1Dsr_msgsIsDoneBoltTighteningRequestCodec();

        private Ros1Dsr_msgsIsDoneBoltTighteningRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/IsDoneBoltTighteningRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_40ab245e2e736f9171f7ab55ff340717ef3f1ec89614730f4f9e3811ba6afa9e";
        public const int MIN_WIRE_BYTES = 17, MAX_WIRE_BYTES = 17;

        public byte[] Encode(_Ros1Dsr_msgsIsDoneBoltTighteningRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsIsDoneBoltTighteningRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsIsDoneBoltTighteningRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsIsDoneBoltTighteningRequest value = ReadRos1Dsr_msgsIsDoneBoltTighteningRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsIsDoneBoltTighteningRequest(_Codecs.Writer writer, _Ros1Dsr_msgsIsDoneBoltTighteningRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        double part0 = value.@m;
        writer.Float64(part0);
        double part1 = value.@timeout;
        writer.Float64(part1);
        sbyte part2 = value.@axis;
        writer.Unsigned(unchecked((byte)part2), 1);
    }

    private static _Ros1Dsr_msgsIsDoneBoltTighteningRequest ReadRos1Dsr_msgsIsDoneBoltTighteningRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsIsDoneBoltTighteningRequest();
        value.@m = reader.Float64();
        value.@timeout = reader.Float64();
        value.@axis = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    public sealed class _Ros1Dsr_msgsIsDoneBoltTighteningResponse
    {
        public bool @success = false;

        public _Ros1Dsr_msgsIsDoneBoltTighteningResponse()
        {
        }
    }

    public sealed class Ros1Dsr_msgsIsDoneBoltTighteningResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsIsDoneBoltTighteningResponse>
    {
        public static readonly Ros1Dsr_msgsIsDoneBoltTighteningResponseCodec Instance = new Ros1Dsr_msgsIsDoneBoltTighteningResponseCodec();

        private Ros1Dsr_msgsIsDoneBoltTighteningResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/IsDoneBoltTighteningResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_86e7eb378e84a1feec9b2abfb3b8af889b9cf986c7455e0d74bb8832af6ff611";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros1Dsr_msgsIsDoneBoltTighteningResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsIsDoneBoltTighteningResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsIsDoneBoltTighteningResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsIsDoneBoltTighteningResponse value = ReadRos1Dsr_msgsIsDoneBoltTighteningResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsIsDoneBoltTighteningResponse(_Codecs.Writer writer, _Ros1Dsr_msgsIsDoneBoltTighteningResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros1Dsr_msgsIsDoneBoltTighteningResponse ReadRos1Dsr_msgsIsDoneBoltTighteningResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsIsDoneBoltTighteningResponse();
        value.@success = ReadBool(reader);
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

    public sealed class _Ros1Dsr_msgsManageAccessControlRequest
    {
        public sbyte @access_control = 0;

        public _Ros1Dsr_msgsManageAccessControlRequest()
        {
        }
    }

    public sealed class Ros1Dsr_msgsManageAccessControlRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsManageAccessControlRequest>
    {
        public static readonly Ros1Dsr_msgsManageAccessControlRequestCodec Instance = new Ros1Dsr_msgsManageAccessControlRequestCodec();

        private Ros1Dsr_msgsManageAccessControlRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/ManageAccessControlRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_0b29aed59d855590ad69ec9bf8e2585b39ee8ce05bed1e305dd7f2a7c1b79d36";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros1Dsr_msgsManageAccessControlRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsManageAccessControlRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsManageAccessControlRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsManageAccessControlRequest value = ReadRos1Dsr_msgsManageAccessControlRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsManageAccessControlRequest(_Codecs.Writer writer, _Ros1Dsr_msgsManageAccessControlRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        sbyte part0 = value.@access_control;
        writer.Unsigned(unchecked((byte)part0), 1);
    }

    private static _Ros1Dsr_msgsManageAccessControlRequest ReadRos1Dsr_msgsManageAccessControlRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsManageAccessControlRequest();
        value.@access_control = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    public sealed class _Ros1Dsr_msgsManageAccessControlResponse
    {
        public bool @success = false;

        public _Ros1Dsr_msgsManageAccessControlResponse()
        {
        }
    }

    public sealed class Ros1Dsr_msgsManageAccessControlResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsManageAccessControlResponse>
    {
        public static readonly Ros1Dsr_msgsManageAccessControlResponseCodec Instance = new Ros1Dsr_msgsManageAccessControlResponseCodec();

        private Ros1Dsr_msgsManageAccessControlResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/ManageAccessControlResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_64837b0ea282acdc16ad7d0a4e6679d9b9b74a3ff3d276dad77042529fa897b3";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros1Dsr_msgsManageAccessControlResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsManageAccessControlResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsManageAccessControlResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsManageAccessControlResponse value = ReadRos1Dsr_msgsManageAccessControlResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsManageAccessControlResponse(_Codecs.Writer writer, _Ros1Dsr_msgsManageAccessControlResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros1Dsr_msgsManageAccessControlResponse ReadRos1Dsr_msgsManageAccessControlResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsManageAccessControlResponse();
        value.@success = ReadBool(reader);
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

    public sealed class _Ros1Dsr_msgsMoveHomeRequest
    {
        public sbyte @target = 0;

        public _Ros1Dsr_msgsMoveHomeRequest()
        {
        }
    }

    public sealed class Ros1Dsr_msgsMoveHomeRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsMoveHomeRequest>
    {
        public static readonly Ros1Dsr_msgsMoveHomeRequestCodec Instance = new Ros1Dsr_msgsMoveHomeRequestCodec();

        private Ros1Dsr_msgsMoveHomeRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/MoveHomeRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_99b3fe492438ffc71627412077f7b0ced950e0f6038722ecfb34191093e0308f";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros1Dsr_msgsMoveHomeRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsMoveHomeRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsMoveHomeRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsMoveHomeRequest value = ReadRos1Dsr_msgsMoveHomeRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsMoveHomeRequest(_Codecs.Writer writer, _Ros1Dsr_msgsMoveHomeRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        sbyte part0 = value.@target;
        writer.Unsigned(unchecked((byte)part0), 1);
    }

    private static _Ros1Dsr_msgsMoveHomeRequest ReadRos1Dsr_msgsMoveHomeRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsMoveHomeRequest();
        value.@target = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    public sealed class _Ros1Dsr_msgsMoveHomeResponse
    {
        public sbyte @res = 0;
        public bool @success = false;

        public _Ros1Dsr_msgsMoveHomeResponse()
        {
        }
    }

    public sealed class Ros1Dsr_msgsMoveHomeResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsMoveHomeResponse>
    {
        public static readonly Ros1Dsr_msgsMoveHomeResponseCodec Instance = new Ros1Dsr_msgsMoveHomeResponseCodec();

        private Ros1Dsr_msgsMoveHomeResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/MoveHomeResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_9906457df2f7eccd40564fb7ba76fe7245ad943f20461bf23192cfbcba3a596f";
        public const int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;

        public byte[] Encode(_Ros1Dsr_msgsMoveHomeResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsMoveHomeResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsMoveHomeResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsMoveHomeResponse value = ReadRos1Dsr_msgsMoveHomeResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsMoveHomeResponse(_Codecs.Writer writer, _Ros1Dsr_msgsMoveHomeResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        sbyte part0 = value.@res;
        writer.Unsigned(unchecked((byte)part0), 1);
        bool part1 = value.@success;
        writer.Unsigned(part1 ? 1UL : 0UL, 1);
    }

    private static _Ros1Dsr_msgsMoveHomeResponse ReadRos1Dsr_msgsMoveHomeResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsMoveHomeResponse();
        value.@res = unchecked((sbyte)reader.Unsigned(1));
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
        public double[] @vel = new double[6];
        public double[] @acc = new double[6];
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
        public const string CODEC_IDENTITY = "UWVMROS1_f5ccf9a5eade1a2f7f11c741c26e3b045fa11d81d8f03587e4a527b0256e2a8a";
        public const int MIN_WIRE_BYTES = 111, MAX_WIRE_BYTES = 2319;

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
        double[] part2 = value.@vel;
        if(part2 == null || part2.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part2.Length; ++index)
        {
            double element = part2[index];
            writer.Float64(element);
        }
        double[] part3 = value.@acc;
        if(part3 == null || part3.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part3.Length; ++index)
        {
            double element = part3[index];
            writer.Float64(element);
        }
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
        value.@vel = new double[6];
        for(int index = 0; index < value.@vel.Length; ++index)
            value.@vel[index] = reader.Float64();
        value.@acc = new double[6];
        for(int index = 0; index < value.@acc.Length; ++index)
            value.@acc[index] = reader.Float64();
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

    public sealed class _Ros1Dsr_msgsOverwriteUserCartCoordRequest
    {
        public sbyte @id = 0;
        public double[] @pos = new double[6];
        public sbyte @ref = 0;

        public _Ros1Dsr_msgsOverwriteUserCartCoordRequest()
        {
        }
    }

    public sealed class Ros1Dsr_msgsOverwriteUserCartCoordRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsOverwriteUserCartCoordRequest>
    {
        public static readonly Ros1Dsr_msgsOverwriteUserCartCoordRequestCodec Instance = new Ros1Dsr_msgsOverwriteUserCartCoordRequestCodec();

        private Ros1Dsr_msgsOverwriteUserCartCoordRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/OverwriteUserCartCoordRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_b89858cf40ee4ae756c90e048fb0cffd362dd2477ca23ba1172749353eb63721";
        public const int MIN_WIRE_BYTES = 50, MAX_WIRE_BYTES = 50;

        public byte[] Encode(_Ros1Dsr_msgsOverwriteUserCartCoordRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsOverwriteUserCartCoordRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsOverwriteUserCartCoordRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsOverwriteUserCartCoordRequest value = ReadRos1Dsr_msgsOverwriteUserCartCoordRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsOverwriteUserCartCoordRequest(_Codecs.Writer writer, _Ros1Dsr_msgsOverwriteUserCartCoordRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        sbyte part0 = value.@id;
        writer.Unsigned(unchecked((byte)part0), 1);
        double[] part1 = value.@pos;
        if(part1 == null || part1.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part1.Length; ++index)
        {
            double element = part1[index];
            writer.Float64(element);
        }
        sbyte part2 = value.@ref;
        writer.Unsigned(unchecked((byte)part2), 1);
    }

    private static _Ros1Dsr_msgsOverwriteUserCartCoordRequest ReadRos1Dsr_msgsOverwriteUserCartCoordRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsOverwriteUserCartCoordRequest();
        value.@id = unchecked((sbyte)reader.Unsigned(1));
        value.@pos = new double[6];
        for(int index = 0; index < value.@pos.Length; ++index)
            value.@pos[index] = reader.Float64();
        value.@ref = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    public sealed class _Ros1Dsr_msgsOverwriteUserCartCoordResponse
    {
        public sbyte @id = 0;
        public bool @success = false;

        public _Ros1Dsr_msgsOverwriteUserCartCoordResponse()
        {
        }
    }

    public sealed class Ros1Dsr_msgsOverwriteUserCartCoordResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsOverwriteUserCartCoordResponse>
    {
        public static readonly Ros1Dsr_msgsOverwriteUserCartCoordResponseCodec Instance = new Ros1Dsr_msgsOverwriteUserCartCoordResponseCodec();

        private Ros1Dsr_msgsOverwriteUserCartCoordResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/OverwriteUserCartCoordResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_953c73d75e0381b067612ea733d58faf95919f5f20f940b6827396fc9d363833";
        public const int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;

        public byte[] Encode(_Ros1Dsr_msgsOverwriteUserCartCoordResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsOverwriteUserCartCoordResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsOverwriteUserCartCoordResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsOverwriteUserCartCoordResponse value = ReadRos1Dsr_msgsOverwriteUserCartCoordResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsOverwriteUserCartCoordResponse(_Codecs.Writer writer, _Ros1Dsr_msgsOverwriteUserCartCoordResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        sbyte part0 = value.@id;
        writer.Unsigned(unchecked((byte)part0), 1);
        bool part1 = value.@success;
        writer.Unsigned(part1 ? 1UL : 0UL, 1);
    }

    private static _Ros1Dsr_msgsOverwriteUserCartCoordResponse ReadRos1Dsr_msgsOverwriteUserCartCoordResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsOverwriteUserCartCoordResponse();
        value.@id = unchecked((sbyte)reader.Unsigned(1));
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros1Dsr_msgsParallelAxis1Request
    {
        public double[] @x1 = new double[6];
        public double[] @x2 = new double[6];
        public double[] @x3 = new double[6];
        public sbyte @axis = 0;
        public sbyte @ref = 0;

        public _Ros1Dsr_msgsParallelAxis1Request()
        {
        }
    }

    public sealed class Ros1Dsr_msgsParallelAxis1RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsParallelAxis1Request>
    {
        public static readonly Ros1Dsr_msgsParallelAxis1RequestCodec Instance = new Ros1Dsr_msgsParallelAxis1RequestCodec();

        private Ros1Dsr_msgsParallelAxis1RequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/ParallelAxis1Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_d032b8ab9d71b7f30b395c0f7ecf376e7ca056fa893479754780a90c8db7f7fe";
        public const int MIN_WIRE_BYTES = 146, MAX_WIRE_BYTES = 146;

        public byte[] Encode(_Ros1Dsr_msgsParallelAxis1Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsParallelAxis1Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsParallelAxis1Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsParallelAxis1Request value = ReadRos1Dsr_msgsParallelAxis1Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsParallelAxis1Request(_Codecs.Writer writer, _Ros1Dsr_msgsParallelAxis1Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        double[] part0 = value.@x1;
        if(part0 == null || part0.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part0.Length; ++index)
        {
            double element = part0[index];
            writer.Float64(element);
        }
        double[] part1 = value.@x2;
        if(part1 == null || part1.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part1.Length; ++index)
        {
            double element = part1[index];
            writer.Float64(element);
        }
        double[] part2 = value.@x3;
        if(part2 == null || part2.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part2.Length; ++index)
        {
            double element = part2[index];
            writer.Float64(element);
        }
        sbyte part3 = value.@axis;
        writer.Unsigned(unchecked((byte)part3), 1);
        sbyte part4 = value.@ref;
        writer.Unsigned(unchecked((byte)part4), 1);
    }

    private static _Ros1Dsr_msgsParallelAxis1Request ReadRos1Dsr_msgsParallelAxis1Request(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsParallelAxis1Request();
        value.@x1 = new double[6];
        for(int index = 0; index < value.@x1.Length; ++index)
            value.@x1[index] = reader.Float64();
        value.@x2 = new double[6];
        for(int index = 0; index < value.@x2.Length; ++index)
            value.@x2[index] = reader.Float64();
        value.@x3 = new double[6];
        for(int index = 0; index < value.@x3.Length; ++index)
            value.@x3[index] = reader.Float64();
        value.@axis = unchecked((sbyte)reader.Unsigned(1));
        value.@ref = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    public sealed class _Ros1Dsr_msgsParallelAxis1Response
    {
        public bool @success = false;

        public _Ros1Dsr_msgsParallelAxis1Response()
        {
        }
    }

    public sealed class Ros1Dsr_msgsParallelAxis1ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsParallelAxis1Response>
    {
        public static readonly Ros1Dsr_msgsParallelAxis1ResponseCodec Instance = new Ros1Dsr_msgsParallelAxis1ResponseCodec();

        private Ros1Dsr_msgsParallelAxis1ResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/ParallelAxis1Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_f7ba09a96d450b53ef9b2fb77b6de6a6e760de65fc8dce42dcbc7dace8fef543";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros1Dsr_msgsParallelAxis1Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsParallelAxis1Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsParallelAxis1Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsParallelAxis1Response value = ReadRos1Dsr_msgsParallelAxis1Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsParallelAxis1Response(_Codecs.Writer writer, _Ros1Dsr_msgsParallelAxis1Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros1Dsr_msgsParallelAxis1Response ReadRos1Dsr_msgsParallelAxis1Response(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsParallelAxis1Response();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros1Dsr_msgsParallelAxis2Request
    {
        public double[] @vect = new double[3];
        public sbyte @axis = 0;
        public sbyte @ref = 0;

        public _Ros1Dsr_msgsParallelAxis2Request()
        {
        }
    }

    public sealed class Ros1Dsr_msgsParallelAxis2RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsParallelAxis2Request>
    {
        public static readonly Ros1Dsr_msgsParallelAxis2RequestCodec Instance = new Ros1Dsr_msgsParallelAxis2RequestCodec();

        private Ros1Dsr_msgsParallelAxis2RequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/ParallelAxis2Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_11dcf871306958211993961d60c607836696edf5c825bb7a109ec5efd885f191";
        public const int MIN_WIRE_BYTES = 26, MAX_WIRE_BYTES = 26;

        public byte[] Encode(_Ros1Dsr_msgsParallelAxis2Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsParallelAxis2Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsParallelAxis2Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsParallelAxis2Request value = ReadRos1Dsr_msgsParallelAxis2Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsParallelAxis2Request(_Codecs.Writer writer, _Ros1Dsr_msgsParallelAxis2Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        double[] part0 = value.@vect;
        if(part0 == null || part0.Length != 3)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part0.Length; ++index)
        {
            double element = part0[index];
            writer.Float64(element);
        }
        sbyte part1 = value.@axis;
        writer.Unsigned(unchecked((byte)part1), 1);
        sbyte part2 = value.@ref;
        writer.Unsigned(unchecked((byte)part2), 1);
    }

    private static _Ros1Dsr_msgsParallelAxis2Request ReadRos1Dsr_msgsParallelAxis2Request(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsParallelAxis2Request();
        value.@vect = new double[3];
        for(int index = 0; index < value.@vect.Length; ++index)
            value.@vect[index] = reader.Float64();
        value.@axis = unchecked((sbyte)reader.Unsigned(1));
        value.@ref = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    public sealed class _Ros1Dsr_msgsParallelAxis2Response
    {
        public bool @success = false;

        public _Ros1Dsr_msgsParallelAxis2Response()
        {
        }
    }

    public sealed class Ros1Dsr_msgsParallelAxis2ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsParallelAxis2Response>
    {
        public static readonly Ros1Dsr_msgsParallelAxis2ResponseCodec Instance = new Ros1Dsr_msgsParallelAxis2ResponseCodec();

        private Ros1Dsr_msgsParallelAxis2ResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/ParallelAxis2Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_41ca262ffdbabdde6ee4bbb0521813cc08cb56a86eb59335be8af82aa5d629c4";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros1Dsr_msgsParallelAxis2Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsParallelAxis2Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsParallelAxis2Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsParallelAxis2Response value = ReadRos1Dsr_msgsParallelAxis2Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsParallelAxis2Response(_Codecs.Writer writer, _Ros1Dsr_msgsParallelAxis2Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros1Dsr_msgsParallelAxis2Response ReadRos1Dsr_msgsParallelAxis2Response(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsParallelAxis2Response();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros1Dsr_msgsReadDataRTRequest
    {
        public _Ros1Dsr_msgsReadDataRTRequest()
        {
        }
    }

    public sealed class Ros1Dsr_msgsReadDataRTRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsReadDataRTRequest>
    {
        public static readonly Ros1Dsr_msgsReadDataRTRequestCodec Instance = new Ros1Dsr_msgsReadDataRTRequestCodec();

        private Ros1Dsr_msgsReadDataRTRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/ReadDataRTRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_2c1ece2dc02863d851f0d24f9705a3c66217b1557827d450e1b58c9fb64af4bf";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public byte[] Encode(_Ros1Dsr_msgsReadDataRTRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsReadDataRTRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsReadDataRTRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsReadDataRTRequest value = ReadRos1Dsr_msgsReadDataRTRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsReadDataRTRequest(_Codecs.Writer writer, _Ros1Dsr_msgsReadDataRTRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    private static _Ros1Dsr_msgsReadDataRTRequest ReadRos1Dsr_msgsReadDataRTRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsReadDataRTRequest();
        return value;
    }

    public sealed class _Ros1Dsr_msgsRobotStateRT
    {
        public double @time_stamp = 0;
        public double[] @actual_joint_position = new double[6];
        public double[] @actual_joint_position_abs = new double[6];
        public double[] @actual_joint_velocity = new double[6];
        public double[] @actual_joint_velocity_abs = new double[6];
        public double[] @actual_tcp_position = new double[6];
        public double[] @actual_tcp_velocity = new double[6];
        public double[] @actual_flange_position = new double[6];
        public double[] @actual_flange_velocity = new double[6];
        public double[] @actual_motor_torque = new double[6];
        public double[] @actual_joint_torque = new double[6];
        public double[] @raw_joint_torque = new double[6];
        public double[] @raw_force_torque = new double[6];
        public double[] @external_joint_torque = new double[6];
        public double[] @external_tcp_force = new double[6];
        public double[] @target_joint_position = new double[6];
        public double[] @target_joint_velocity = new double[6];
        public double[] @target_joint_acceleration = new double[6];
        public double[] @target_motor_torque = new double[6];
        public double[] @target_tcp_position = new double[6];
        public double[] @target_tcp_velocity = new double[6];
        public _Ros1Std_msgsFloat64MultiArray[] @jacobian_matrix = new _Ros1Std_msgsFloat64MultiArray[0];
        public double[] @gravity_torque = new double[6];
        public _Ros1Std_msgsFloat64MultiArray[] @coriolis_matrix = new _Ros1Std_msgsFloat64MultiArray[0];
        public _Ros1Std_msgsFloat64MultiArray[] @mass_matrix = new _Ros1Std_msgsFloat64MultiArray[0];
        public ushort @solution_space = 0;
        public double @singularity = 0;
        public double @operation_speed_rate = 0;
        public double[] @joint_temperature = new double[6];
        public ushort @controller_digital_input = 0;
        public ushort @controller_digital_output = 0;
        public byte[] @controller_analog_input_type = new byte[2];
        public double[] @controller_analog_input = new double[2];
        public byte[] @controller_analog_output_type = new byte[2];
        public double[] @controller_analog_output = new double[2];
        public byte @flange_digital_input = 0;
        public byte @flange_digital_output = 0;
        public double[] @flange_analog_input = new double[4];
        public byte[] @external_encoder_strobe_count = new byte[2];
        public ushort[] @external_encoder_count = new ushort[2];
        public double[] @goal_joint_position = new double[6];
        public double[] @goal_tcp_position = new double[6];
        public byte @robot_mode = 0;
        public byte @robot_state = 0;
        public ushort @control_mode = 0;
        public byte[] @reserved = new byte[256];

        public _Ros1Dsr_msgsRobotStateRT()
        {
        }
    }

    public sealed class Ros1Dsr_msgsRobotStateRTCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsRobotStateRT>
    {
        public static readonly Ros1Dsr_msgsRobotStateRTCodec Instance = new Ros1Dsr_msgsRobotStateRTCodec();

        private Ros1Dsr_msgsRobotStateRTCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/RobotStateRT";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_558a295457376b0d96845db2a2bd64c5549a9e72ea49f01036286d14e5022232";
        public const int MIN_WIRE_BYTES = 1530, MAX_WIRE_BYTES = 8154;

        public byte[] Encode(_Ros1Dsr_msgsRobotStateRT value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsRobotStateRT(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsRobotStateRT Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsRobotStateRT value = ReadRos1Dsr_msgsRobotStateRT(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsRobotStateRT(_Codecs.Writer writer, _Ros1Dsr_msgsRobotStateRT value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        double part0 = value.@time_stamp;
        writer.Float64(part0);
        double[] part1 = value.@actual_joint_position;
        if(part1 == null || part1.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part1.Length; ++index)
        {
            double element = part1[index];
            writer.Float64(element);
        }
        double[] part2 = value.@actual_joint_position_abs;
        if(part2 == null || part2.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part2.Length; ++index)
        {
            double element = part2[index];
            writer.Float64(element);
        }
        double[] part3 = value.@actual_joint_velocity;
        if(part3 == null || part3.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part3.Length; ++index)
        {
            double element = part3[index];
            writer.Float64(element);
        }
        double[] part4 = value.@actual_joint_velocity_abs;
        if(part4 == null || part4.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part4.Length; ++index)
        {
            double element = part4[index];
            writer.Float64(element);
        }
        double[] part5 = value.@actual_tcp_position;
        if(part5 == null || part5.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part5.Length; ++index)
        {
            double element = part5[index];
            writer.Float64(element);
        }
        double[] part6 = value.@actual_tcp_velocity;
        if(part6 == null || part6.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part6.Length; ++index)
        {
            double element = part6[index];
            writer.Float64(element);
        }
        double[] part7 = value.@actual_flange_position;
        if(part7 == null || part7.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part7.Length; ++index)
        {
            double element = part7[index];
            writer.Float64(element);
        }
        double[] part8 = value.@actual_flange_velocity;
        if(part8 == null || part8.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part8.Length; ++index)
        {
            double element = part8[index];
            writer.Float64(element);
        }
        double[] part9 = value.@actual_motor_torque;
        if(part9 == null || part9.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part9.Length; ++index)
        {
            double element = part9[index];
            writer.Float64(element);
        }
        double[] part10 = value.@actual_joint_torque;
        if(part10 == null || part10.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part10.Length; ++index)
        {
            double element = part10[index];
            writer.Float64(element);
        }
        double[] part11 = value.@raw_joint_torque;
        if(part11 == null || part11.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part11.Length; ++index)
        {
            double element = part11[index];
            writer.Float64(element);
        }
        double[] part12 = value.@raw_force_torque;
        if(part12 == null || part12.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part12.Length; ++index)
        {
            double element = part12[index];
            writer.Float64(element);
        }
        double[] part13 = value.@external_joint_torque;
        if(part13 == null || part13.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part13.Length; ++index)
        {
            double element = part13[index];
            writer.Float64(element);
        }
        double[] part14 = value.@external_tcp_force;
        if(part14 == null || part14.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part14.Length; ++index)
        {
            double element = part14[index];
            writer.Float64(element);
        }
        double[] part15 = value.@target_joint_position;
        if(part15 == null || part15.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part15.Length; ++index)
        {
            double element = part15[index];
            writer.Float64(element);
        }
        double[] part16 = value.@target_joint_velocity;
        if(part16 == null || part16.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part16.Length; ++index)
        {
            double element = part16[index];
            writer.Float64(element);
        }
        double[] part17 = value.@target_joint_acceleration;
        if(part17 == null || part17.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part17.Length; ++index)
        {
            double element = part17[index];
            writer.Float64(element);
        }
        double[] part18 = value.@target_motor_torque;
        if(part18 == null || part18.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part18.Length; ++index)
        {
            double element = part18[index];
            writer.Float64(element);
        }
        double[] part19 = value.@target_tcp_position;
        if(part19 == null || part19.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part19.Length; ++index)
        {
            double element = part19[index];
            writer.Float64(element);
        }
        double[] part20 = value.@target_tcp_velocity;
        if(part20 == null || part20.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part20.Length; ++index)
        {
            double element = part20[index];
            writer.Float64(element);
        }
        _Ros1Std_msgsFloat64MultiArray[] part21 = value.@jacobian_matrix;
        if(part21 == null || part21.Length > 6)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part21.Length, 4);
        for(int index = 0; index < part21.Length; ++index)
        {
            _Ros1Std_msgsFloat64MultiArray element = part21[index];
            WriteRos1Std_msgsFloat64MultiArray(writer, element);
        }
        double[] part22 = value.@gravity_torque;
        if(part22 == null || part22.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part22.Length; ++index)
        {
            double element = part22[index];
            writer.Float64(element);
        }
        _Ros1Std_msgsFloat64MultiArray[] part23 = value.@coriolis_matrix;
        if(part23 == null || part23.Length > 6)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part23.Length, 4);
        for(int index = 0; index < part23.Length; ++index)
        {
            _Ros1Std_msgsFloat64MultiArray element = part23[index];
            WriteRos1Std_msgsFloat64MultiArray(writer, element);
        }
        _Ros1Std_msgsFloat64MultiArray[] part24 = value.@mass_matrix;
        if(part24 == null || part24.Length > 6)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part24.Length, 4);
        for(int index = 0; index < part24.Length; ++index)
        {
            _Ros1Std_msgsFloat64MultiArray element = part24[index];
            WriteRos1Std_msgsFloat64MultiArray(writer, element);
        }
        ushort part25 = value.@solution_space;
        writer.Unsigned(part25, 2);
        double part26 = value.@singularity;
        writer.Float64(part26);
        double part27 = value.@operation_speed_rate;
        writer.Float64(part27);
        double[] part28 = value.@joint_temperature;
        if(part28 == null || part28.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part28.Length; ++index)
        {
            double element = part28[index];
            writer.Float64(element);
        }
        ushort part29 = value.@controller_digital_input;
        writer.Unsigned(part29, 2);
        ushort part30 = value.@controller_digital_output;
        writer.Unsigned(part30, 2);
        byte[] part31 = value.@controller_analog_input_type;
        if(part31 == null || part31.Length != 2)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part31.Length; ++index)
        {
            byte element = part31[index];
            writer.Unsigned(element, 1);
        }
        double[] part32 = value.@controller_analog_input;
        if(part32 == null || part32.Length != 2)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part32.Length; ++index)
        {
            double element = part32[index];
            writer.Float64(element);
        }
        byte[] part33 = value.@controller_analog_output_type;
        if(part33 == null || part33.Length != 2)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part33.Length; ++index)
        {
            byte element = part33[index];
            writer.Unsigned(element, 1);
        }
        double[] part34 = value.@controller_analog_output;
        if(part34 == null || part34.Length != 2)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part34.Length; ++index)
        {
            double element = part34[index];
            writer.Float64(element);
        }
        byte part35 = value.@flange_digital_input;
        writer.Unsigned(part35, 1);
        byte part36 = value.@flange_digital_output;
        writer.Unsigned(part36, 1);
        double[] part37 = value.@flange_analog_input;
        if(part37 == null || part37.Length != 4)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part37.Length; ++index)
        {
            double element = part37[index];
            writer.Float64(element);
        }
        byte[] part38 = value.@external_encoder_strobe_count;
        if(part38 == null || part38.Length != 2)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part38.Length; ++index)
        {
            byte element = part38[index];
            writer.Unsigned(element, 1);
        }
        ushort[] part39 = value.@external_encoder_count;
        if(part39 == null || part39.Length != 2)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part39.Length; ++index)
        {
            ushort element = part39[index];
            writer.Unsigned(element, 2);
        }
        double[] part40 = value.@goal_joint_position;
        if(part40 == null || part40.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part40.Length; ++index)
        {
            double element = part40[index];
            writer.Float64(element);
        }
        double[] part41 = value.@goal_tcp_position;
        if(part41 == null || part41.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part41.Length; ++index)
        {
            double element = part41[index];
            writer.Float64(element);
        }
        byte part42 = value.@robot_mode;
        writer.Unsigned(part42, 1);
        byte part43 = value.@robot_state;
        writer.Unsigned(part43, 1);
        ushort part44 = value.@control_mode;
        writer.Unsigned(part44, 2);
        byte[] part45 = value.@reserved;
        if(part45 == null || part45.Length != 256)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part45.Length; ++index)
        {
            byte element = part45[index];
            writer.Unsigned(element, 1);
        }
    }

    private static _Ros1Dsr_msgsRobotStateRT ReadRos1Dsr_msgsRobotStateRT(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsRobotStateRT();
        value.@time_stamp = reader.Float64();
        value.@actual_joint_position = new double[6];
        for(int index = 0; index < value.@actual_joint_position.Length; ++index)
            value.@actual_joint_position[index] = reader.Float64();
        value.@actual_joint_position_abs = new double[6];
        for(int index = 0; index < value.@actual_joint_position_abs.Length; ++index)
            value.@actual_joint_position_abs[index] = reader.Float64();
        value.@actual_joint_velocity = new double[6];
        for(int index = 0; index < value.@actual_joint_velocity.Length; ++index)
            value.@actual_joint_velocity[index] = reader.Float64();
        value.@actual_joint_velocity_abs = new double[6];
        for(int index = 0; index < value.@actual_joint_velocity_abs.Length; ++index)
            value.@actual_joint_velocity_abs[index] = reader.Float64();
        value.@actual_tcp_position = new double[6];
        for(int index = 0; index < value.@actual_tcp_position.Length; ++index)
            value.@actual_tcp_position[index] = reader.Float64();
        value.@actual_tcp_velocity = new double[6];
        for(int index = 0; index < value.@actual_tcp_velocity.Length; ++index)
            value.@actual_tcp_velocity[index] = reader.Float64();
        value.@actual_flange_position = new double[6];
        for(int index = 0; index < value.@actual_flange_position.Length; ++index)
            value.@actual_flange_position[index] = reader.Float64();
        value.@actual_flange_velocity = new double[6];
        for(int index = 0; index < value.@actual_flange_velocity.Length; ++index)
            value.@actual_flange_velocity[index] = reader.Float64();
        value.@actual_motor_torque = new double[6];
        for(int index = 0; index < value.@actual_motor_torque.Length; ++index)
            value.@actual_motor_torque[index] = reader.Float64();
        value.@actual_joint_torque = new double[6];
        for(int index = 0; index < value.@actual_joint_torque.Length; ++index)
            value.@actual_joint_torque[index] = reader.Float64();
        value.@raw_joint_torque = new double[6];
        for(int index = 0; index < value.@raw_joint_torque.Length; ++index)
            value.@raw_joint_torque[index] = reader.Float64();
        value.@raw_force_torque = new double[6];
        for(int index = 0; index < value.@raw_force_torque.Length; ++index)
            value.@raw_force_torque[index] = reader.Float64();
        value.@external_joint_torque = new double[6];
        for(int index = 0; index < value.@external_joint_torque.Length; ++index)
            value.@external_joint_torque[index] = reader.Float64();
        value.@external_tcp_force = new double[6];
        for(int index = 0; index < value.@external_tcp_force.Length; ++index)
            value.@external_tcp_force[index] = reader.Float64();
        value.@target_joint_position = new double[6];
        for(int index = 0; index < value.@target_joint_position.Length; ++index)
            value.@target_joint_position[index] = reader.Float64();
        value.@target_joint_velocity = new double[6];
        for(int index = 0; index < value.@target_joint_velocity.Length; ++index)
            value.@target_joint_velocity[index] = reader.Float64();
        value.@target_joint_acceleration = new double[6];
        for(int index = 0; index < value.@target_joint_acceleration.Length; ++index)
            value.@target_joint_acceleration[index] = reader.Float64();
        value.@target_motor_torque = new double[6];
        for(int index = 0; index < value.@target_motor_torque.Length; ++index)
            value.@target_motor_torque[index] = reader.Float64();
        value.@target_tcp_position = new double[6];
        for(int index = 0; index < value.@target_tcp_position.Length; ++index)
            value.@target_tcp_position[index] = reader.Float64();
        value.@target_tcp_velocity = new double[6];
        for(int index = 0; index < value.@target_tcp_velocity.Length; ++index)
            value.@target_tcp_velocity[index] = reader.Float64();
        value.@jacobian_matrix = new _Ros1Std_msgsFloat64MultiArray[ReadCount(reader, 6, 12)];
        for(int index = 0; index < value.@jacobian_matrix.Length; ++index)
            value.@jacobian_matrix[index] = ReadRos1Std_msgsFloat64MultiArray(reader);
        value.@gravity_torque = new double[6];
        for(int index = 0; index < value.@gravity_torque.Length; ++index)
            value.@gravity_torque[index] = reader.Float64();
        value.@coriolis_matrix = new _Ros1Std_msgsFloat64MultiArray[ReadCount(reader, 6, 12)];
        for(int index = 0; index < value.@coriolis_matrix.Length; ++index)
            value.@coriolis_matrix[index] = ReadRos1Std_msgsFloat64MultiArray(reader);
        value.@mass_matrix = new _Ros1Std_msgsFloat64MultiArray[ReadCount(reader, 6, 12)];
        for(int index = 0; index < value.@mass_matrix.Length; ++index)
            value.@mass_matrix[index] = ReadRos1Std_msgsFloat64MultiArray(reader);
        value.@solution_space = unchecked((ushort)reader.Unsigned(2));
        value.@singularity = reader.Float64();
        value.@operation_speed_rate = reader.Float64();
        value.@joint_temperature = new double[6];
        for(int index = 0; index < value.@joint_temperature.Length; ++index)
            value.@joint_temperature[index] = reader.Float64();
        value.@controller_digital_input = unchecked((ushort)reader.Unsigned(2));
        value.@controller_digital_output = unchecked((ushort)reader.Unsigned(2));
        value.@controller_analog_input_type = new byte[2];
        for(int index = 0; index < value.@controller_analog_input_type.Length; ++index)
            value.@controller_analog_input_type[index] = unchecked((byte)reader.Unsigned(1));
        value.@controller_analog_input = new double[2];
        for(int index = 0; index < value.@controller_analog_input.Length; ++index)
            value.@controller_analog_input[index] = reader.Float64();
        value.@controller_analog_output_type = new byte[2];
        for(int index = 0; index < value.@controller_analog_output_type.Length; ++index)
            value.@controller_analog_output_type[index] = unchecked((byte)reader.Unsigned(1));
        value.@controller_analog_output = new double[2];
        for(int index = 0; index < value.@controller_analog_output.Length; ++index)
            value.@controller_analog_output[index] = reader.Float64();
        value.@flange_digital_input = unchecked((byte)reader.Unsigned(1));
        value.@flange_digital_output = unchecked((byte)reader.Unsigned(1));
        value.@flange_analog_input = new double[4];
        for(int index = 0; index < value.@flange_analog_input.Length; ++index)
            value.@flange_analog_input[index] = reader.Float64();
        value.@external_encoder_strobe_count = new byte[2];
        for(int index = 0; index < value.@external_encoder_strobe_count.Length; ++index)
            value.@external_encoder_strobe_count[index] = unchecked((byte)reader.Unsigned(1));
        value.@external_encoder_count = new ushort[2];
        for(int index = 0; index < value.@external_encoder_count.Length; ++index)
            value.@external_encoder_count[index] = unchecked((ushort)reader.Unsigned(2));
        value.@goal_joint_position = new double[6];
        for(int index = 0; index < value.@goal_joint_position.Length; ++index)
            value.@goal_joint_position[index] = reader.Float64();
        value.@goal_tcp_position = new double[6];
        for(int index = 0; index < value.@goal_tcp_position.Length; ++index)
            value.@goal_tcp_position[index] = reader.Float64();
        value.@robot_mode = unchecked((byte)reader.Unsigned(1));
        value.@robot_state = unchecked((byte)reader.Unsigned(1));
        value.@control_mode = unchecked((ushort)reader.Unsigned(2));
        value.@reserved = new byte[256];
        for(int index = 0; index < value.@reserved.Length; ++index)
            value.@reserved[index] = unchecked((byte)reader.Unsigned(1));
        return value;
    }

    public sealed class _Ros1Dsr_msgsReadDataRTResponse
    {
        public _Ros1Dsr_msgsRobotStateRT @data = new _Ros1Dsr_msgsRobotStateRT();

        public _Ros1Dsr_msgsReadDataRTResponse()
        {
        }
    }

    public sealed class Ros1Dsr_msgsReadDataRTResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsReadDataRTResponse>
    {
        public static readonly Ros1Dsr_msgsReadDataRTResponseCodec Instance = new Ros1Dsr_msgsReadDataRTResponseCodec();

        private Ros1Dsr_msgsReadDataRTResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/ReadDataRTResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_bb6425973c166cd6f5ab88ae080d521d6f3f2e3e40cfb4ec0493c59e71f83bda";
        public const int MIN_WIRE_BYTES = 1530, MAX_WIRE_BYTES = 8154;

        public byte[] Encode(_Ros1Dsr_msgsReadDataRTResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsReadDataRTResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsReadDataRTResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsReadDataRTResponse value = ReadRos1Dsr_msgsReadDataRTResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsReadDataRTResponse(_Codecs.Writer writer, _Ros1Dsr_msgsReadDataRTResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros1Dsr_msgsRobotStateRT part0 = value.@data;
        WriteRos1Dsr_msgsRobotStateRT(writer, part0);
    }

    private static _Ros1Dsr_msgsReadDataRTResponse ReadRos1Dsr_msgsReadDataRTResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsReadDataRTResponse();
        value.@data = ReadRos1Dsr_msgsRobotStateRT(reader);
        return value;
    }

    public sealed class _Ros1Dsr_msgsReleaseComplianceCtrlRequest
    {
        public _Ros1Dsr_msgsReleaseComplianceCtrlRequest()
        {
        }
    }

    public sealed class Ros1Dsr_msgsReleaseComplianceCtrlRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsReleaseComplianceCtrlRequest>
    {
        public static readonly Ros1Dsr_msgsReleaseComplianceCtrlRequestCodec Instance = new Ros1Dsr_msgsReleaseComplianceCtrlRequestCodec();

        private Ros1Dsr_msgsReleaseComplianceCtrlRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/ReleaseComplianceCtrlRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_963f201a73d6cb461e28bf94dc6223bf0c8e603adb96142cde94a764349ccdd2";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public byte[] Encode(_Ros1Dsr_msgsReleaseComplianceCtrlRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsReleaseComplianceCtrlRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsReleaseComplianceCtrlRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsReleaseComplianceCtrlRequest value = ReadRos1Dsr_msgsReleaseComplianceCtrlRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsReleaseComplianceCtrlRequest(_Codecs.Writer writer, _Ros1Dsr_msgsReleaseComplianceCtrlRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    private static _Ros1Dsr_msgsReleaseComplianceCtrlRequest ReadRos1Dsr_msgsReleaseComplianceCtrlRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsReleaseComplianceCtrlRequest();
        return value;
    }

    public sealed class _Ros1Dsr_msgsReleaseComplianceCtrlResponse
    {
        public bool @success = false;

        public _Ros1Dsr_msgsReleaseComplianceCtrlResponse()
        {
        }
    }

    public sealed class Ros1Dsr_msgsReleaseComplianceCtrlResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsReleaseComplianceCtrlResponse>
    {
        public static readonly Ros1Dsr_msgsReleaseComplianceCtrlResponseCodec Instance = new Ros1Dsr_msgsReleaseComplianceCtrlResponseCodec();

        private Ros1Dsr_msgsReleaseComplianceCtrlResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/ReleaseComplianceCtrlResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_5c5e9252fd9e8c346e8317f600fa46eb18c8e53be3447eddf3fb5f474a44682d";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros1Dsr_msgsReleaseComplianceCtrlResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsReleaseComplianceCtrlResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsReleaseComplianceCtrlResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsReleaseComplianceCtrlResponse value = ReadRos1Dsr_msgsReleaseComplianceCtrlResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsReleaseComplianceCtrlResponse(_Codecs.Writer writer, _Ros1Dsr_msgsReleaseComplianceCtrlResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros1Dsr_msgsReleaseComplianceCtrlResponse ReadRos1Dsr_msgsReleaseComplianceCtrlResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsReleaseComplianceCtrlResponse();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros1Dsr_msgsReleaseForceRequest
    {
        public double @time = 0;

        public _Ros1Dsr_msgsReleaseForceRequest()
        {
        }
    }

    public sealed class Ros1Dsr_msgsReleaseForceRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsReleaseForceRequest>
    {
        public static readonly Ros1Dsr_msgsReleaseForceRequestCodec Instance = new Ros1Dsr_msgsReleaseForceRequestCodec();

        private Ros1Dsr_msgsReleaseForceRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/ReleaseForceRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_5809993bacca15147eaf819181a6c1d187512d169539b6125e112b56bc0d2bc2";
        public const int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 8;

        public byte[] Encode(_Ros1Dsr_msgsReleaseForceRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsReleaseForceRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsReleaseForceRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsReleaseForceRequest value = ReadRos1Dsr_msgsReleaseForceRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsReleaseForceRequest(_Codecs.Writer writer, _Ros1Dsr_msgsReleaseForceRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        double part0 = value.@time;
        writer.Float64(part0);
    }

    private static _Ros1Dsr_msgsReleaseForceRequest ReadRos1Dsr_msgsReleaseForceRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsReleaseForceRequest();
        value.@time = reader.Float64();
        return value;
    }

    public sealed class _Ros1Dsr_msgsReleaseForceResponse
    {
        public bool @success = false;

        public _Ros1Dsr_msgsReleaseForceResponse()
        {
        }
    }

    public sealed class Ros1Dsr_msgsReleaseForceResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsReleaseForceResponse>
    {
        public static readonly Ros1Dsr_msgsReleaseForceResponseCodec Instance = new Ros1Dsr_msgsReleaseForceResponseCodec();

        private Ros1Dsr_msgsReleaseForceResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/ReleaseForceResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_59e8fed1895c6e1664d689126a2df57918728f4006b20e50c1bc0055e76cc2d5";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros1Dsr_msgsReleaseForceResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsReleaseForceResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsReleaseForceResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsReleaseForceResponse value = ReadRos1Dsr_msgsReleaseForceResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsReleaseForceResponse(_Codecs.Writer writer, _Ros1Dsr_msgsReleaseForceResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros1Dsr_msgsReleaseForceResponse ReadRos1Dsr_msgsReleaseForceResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsReleaseForceResponse();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros1Dsr_msgsReleaseProtectiveStopRequest
    {
        public sbyte @release_mode = 0;

        public _Ros1Dsr_msgsReleaseProtectiveStopRequest()
        {
        }
    }

    public sealed class Ros1Dsr_msgsReleaseProtectiveStopRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsReleaseProtectiveStopRequest>
    {
        public static readonly Ros1Dsr_msgsReleaseProtectiveStopRequestCodec Instance = new Ros1Dsr_msgsReleaseProtectiveStopRequestCodec();

        private Ros1Dsr_msgsReleaseProtectiveStopRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/ReleaseProtectiveStopRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_0703fb0af5fef931ae1b4364f05b4f5325e6195a2b4865e1dfcfeb3dd6f7c175";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros1Dsr_msgsReleaseProtectiveStopRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsReleaseProtectiveStopRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsReleaseProtectiveStopRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsReleaseProtectiveStopRequest value = ReadRos1Dsr_msgsReleaseProtectiveStopRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsReleaseProtectiveStopRequest(_Codecs.Writer writer, _Ros1Dsr_msgsReleaseProtectiveStopRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        sbyte part0 = value.@release_mode;
        writer.Unsigned(unchecked((byte)part0), 1);
    }

    private static _Ros1Dsr_msgsReleaseProtectiveStopRequest ReadRos1Dsr_msgsReleaseProtectiveStopRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsReleaseProtectiveStopRequest();
        value.@release_mode = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    public sealed class _Ros1Dsr_msgsReleaseProtectiveStopResponse
    {
        public bool @success = false;

        public _Ros1Dsr_msgsReleaseProtectiveStopResponse()
        {
        }
    }

    public sealed class Ros1Dsr_msgsReleaseProtectiveStopResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsReleaseProtectiveStopResponse>
    {
        public static readonly Ros1Dsr_msgsReleaseProtectiveStopResponseCodec Instance = new Ros1Dsr_msgsReleaseProtectiveStopResponseCodec();

        private Ros1Dsr_msgsReleaseProtectiveStopResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/ReleaseProtectiveStopResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_2fdc5568ddd9e700513489ccbf9078932bc28fe902f815fdd9a722b13ab599ec";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros1Dsr_msgsReleaseProtectiveStopResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsReleaseProtectiveStopResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsReleaseProtectiveStopResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsReleaseProtectiveStopResponse value = ReadRos1Dsr_msgsReleaseProtectiveStopResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsReleaseProtectiveStopResponse(_Codecs.Writer writer, _Ros1Dsr_msgsReleaseProtectiveStopResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros1Dsr_msgsReleaseProtectiveStopResponse ReadRos1Dsr_msgsReleaseProtectiveStopResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsReleaseProtectiveStopResponse();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros1Dsr_msgsResetWorkpieceWeightRequest
    {
        public _Ros1Dsr_msgsResetWorkpieceWeightRequest()
        {
        }
    }

    public sealed class Ros1Dsr_msgsResetWorkpieceWeightRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsResetWorkpieceWeightRequest>
    {
        public static readonly Ros1Dsr_msgsResetWorkpieceWeightRequestCodec Instance = new Ros1Dsr_msgsResetWorkpieceWeightRequestCodec();

        private Ros1Dsr_msgsResetWorkpieceWeightRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/ResetWorkpieceWeightRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_b2cf228390cc1aa473c6e1a9025d7ea7e789acb3f7dd6a0a4178402b6d843ed6";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public byte[] Encode(_Ros1Dsr_msgsResetWorkpieceWeightRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsResetWorkpieceWeightRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsResetWorkpieceWeightRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsResetWorkpieceWeightRequest value = ReadRos1Dsr_msgsResetWorkpieceWeightRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsResetWorkpieceWeightRequest(_Codecs.Writer writer, _Ros1Dsr_msgsResetWorkpieceWeightRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    private static _Ros1Dsr_msgsResetWorkpieceWeightRequest ReadRos1Dsr_msgsResetWorkpieceWeightRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsResetWorkpieceWeightRequest();
        return value;
    }

    public sealed class _Ros1Dsr_msgsResetWorkpieceWeightResponse
    {
        public bool @success = false;

        public _Ros1Dsr_msgsResetWorkpieceWeightResponse()
        {
        }
    }

    public sealed class Ros1Dsr_msgsResetWorkpieceWeightResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsResetWorkpieceWeightResponse>
    {
        public static readonly Ros1Dsr_msgsResetWorkpieceWeightResponseCodec Instance = new Ros1Dsr_msgsResetWorkpieceWeightResponseCodec();

        private Ros1Dsr_msgsResetWorkpieceWeightResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/ResetWorkpieceWeightResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_f11776348fcebca43e64f7a635e2a080642a29c32762704029bd1429055cc025";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros1Dsr_msgsResetWorkpieceWeightResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsResetWorkpieceWeightResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsResetWorkpieceWeightResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsResetWorkpieceWeightResponse value = ReadRos1Dsr_msgsResetWorkpieceWeightResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsResetWorkpieceWeightResponse(_Codecs.Writer writer, _Ros1Dsr_msgsResetWorkpieceWeightResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros1Dsr_msgsResetWorkpieceWeightResponse ReadRos1Dsr_msgsResetWorkpieceWeightResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsResetWorkpieceWeightResponse();
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
        public double[] @current_tool_posx = new double[6];
        public double[] @current_velx = new double[6];
        public double[] @task_err = new double[6];
        public double[] @target_velx = new double[6];
        public double[] @target_posx = new double[6];
        public double[] @dynamic_tor = new double[6];
        public double[] @actual_jts = new double[6];
        public double[] @actual_ejt = new double[6];
        public double[] @actual_ett = new double[6];
        public sbyte[] @actual_bk = new sbyte[6];
        public double[] @actual_mc = new double[6];
        public double[] @actual_mt = new double[6];
        public sbyte @solution_space = 0;
        public double @sync_time = 0;
        public sbyte[] @actual_bt = new sbyte[5];
        public _Ros1Std_msgsFloat64MultiArray[] @rotation_matrix = new _Ros1Std_msgsFloat64MultiArray[0];
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
        public double[] @fActualW2B = new double[6];
        public _Ros1Std_msgsFloat64MultiArray[] @fCurrentPosW = new _Ros1Std_msgsFloat64MultiArray[0];
        public double[] @fCurrentVelW = new double[6];
        public double[] @fWorldETT = new double[6];
        public double[] @fTargetPosW = new double[6];
        public double[] @fTargetVelW = new double[6];
        public _Ros1Std_msgsFloat64MultiArray[] @fRotationMatrixWorld = new _Ros1Std_msgsFloat64MultiArray[0];
        public sbyte @iActualUCN = 0;
        public sbyte @iParent = 0;
        public _Ros1Std_msgsFloat64MultiArray[] @fCurrentPosU = new _Ros1Std_msgsFloat64MultiArray[0];
        public double[] @fCurrentVelU = new double[6];
        public double[] @fUserETT = new double[6];
        public double[] @fTargetPosU = new double[6];
        public double[] @fTargetVelU = new double[6];
        public _Ros1Std_msgsFloat64MultiArray[] @fRotationMatrixUser = new _Ros1Std_msgsFloat64MultiArray[0];
        public double[] @fActualAI = new double[6];
        public bool[] @bActualSW = new bool[3];
        public bool[] @bActualSI = new bool[2];
        public sbyte[] @iActualAT = new sbyte[2];
        public double[] @fTargetAO = new double[2];
        public sbyte[] @iTargetAT = new sbyte[2];
        public bool[] @bActualES = new bool[2];
        public sbyte[] @iActualED = new sbyte[2];
        public bool[] @bActualER = new bool[2];

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
        public const string CODEC_IDENTITY = "UWVMROS1_3f34278ee2cdceff51b3bb665ce314cc4a0d4e164b110969102a04c96e374456";
        public const int MIN_WIRE_BYTES = 1484, MAX_WIRE_BYTES = 17004;

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
        double[] part11 = value.@current_tool_posx;
        if(part11 == null || part11.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part11.Length; ++index)
        {
            double element = part11[index];
            writer.Float64(element);
        }
        double[] part12 = value.@current_velx;
        if(part12 == null || part12.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part12.Length; ++index)
        {
            double element = part12[index];
            writer.Float64(element);
        }
        double[] part13 = value.@task_err;
        if(part13 == null || part13.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part13.Length; ++index)
        {
            double element = part13[index];
            writer.Float64(element);
        }
        double[] part14 = value.@target_velx;
        if(part14 == null || part14.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part14.Length; ++index)
        {
            double element = part14[index];
            writer.Float64(element);
        }
        double[] part15 = value.@target_posx;
        if(part15 == null || part15.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part15.Length; ++index)
        {
            double element = part15[index];
            writer.Float64(element);
        }
        double[] part16 = value.@dynamic_tor;
        if(part16 == null || part16.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part16.Length; ++index)
        {
            double element = part16[index];
            writer.Float64(element);
        }
        double[] part17 = value.@actual_jts;
        if(part17 == null || part17.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part17.Length; ++index)
        {
            double element = part17[index];
            writer.Float64(element);
        }
        double[] part18 = value.@actual_ejt;
        if(part18 == null || part18.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part18.Length; ++index)
        {
            double element = part18[index];
            writer.Float64(element);
        }
        double[] part19 = value.@actual_ett;
        if(part19 == null || part19.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part19.Length; ++index)
        {
            double element = part19[index];
            writer.Float64(element);
        }
        sbyte[] part20 = value.@actual_bk;
        if(part20 == null || part20.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part20.Length; ++index)
        {
            sbyte element = part20[index];
            writer.Unsigned(unchecked((byte)element), 1);
        }
        double[] part21 = value.@actual_mc;
        if(part21 == null || part21.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part21.Length; ++index)
        {
            double element = part21[index];
            writer.Float64(element);
        }
        double[] part22 = value.@actual_mt;
        if(part22 == null || part22.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part22.Length; ++index)
        {
            double element = part22[index];
            writer.Float64(element);
        }
        sbyte part23 = value.@solution_space;
        writer.Unsigned(unchecked((byte)part23), 1);
        double part24 = value.@sync_time;
        writer.Float64(part24);
        sbyte[] part25 = value.@actual_bt;
        if(part25 == null || part25.Length != 5)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part25.Length; ++index)
        {
            sbyte element = part25[index];
            writer.Unsigned(unchecked((byte)element), 1);
        }
        _Ros1Std_msgsFloat64MultiArray[] part26 = value.@rotation_matrix;
        if(part26 == null || part26.Length > 6)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part26.Length, 4);
        for(int index = 0; index < part26.Length; ++index)
        {
            _Ros1Std_msgsFloat64MultiArray element = part26[index];
            WriteRos1Std_msgsFloat64MultiArray(writer, element);
        }
        sbyte[] part27 = value.@ctrlbox_digital_input;
        if(part27 == null || part27.Length != 16)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part27.Length; ++index)
        {
            sbyte element = part27[index];
            writer.Unsigned(unchecked((byte)element), 1);
        }
        sbyte[] part28 = value.@ctrlbox_digital_output;
        if(part28 == null || part28.Length != 16)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part28.Length; ++index)
        {
            sbyte element = part28[index];
            writer.Unsigned(unchecked((byte)element), 1);
        }
        sbyte[] part29 = value.@flange_digital_input;
        if(part29 == null || part29.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part29.Length; ++index)
        {
            sbyte element = part29[index];
            writer.Unsigned(unchecked((byte)element), 1);
        }
        sbyte[] part30 = value.@flange_digital_output;
        if(part30 == null || part30.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part30.Length; ++index)
        {
            sbyte element = part30[index];
            writer.Unsigned(unchecked((byte)element), 1);
        }
        _Ros1Dsr_msgsModbusState[] part31 = value.@modbus_state;
        if(part31 == null || part31.Length > 16)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part31.Length, 4);
        for(int index = 0; index < part31.Length; ++index)
        {
            _Ros1Dsr_msgsModbusState element = part31[index];
            WriteRos1Dsr_msgsModbusState(writer, element);
        }
        int part32 = value.@access_control;
        writer.Unsigned(unchecked((uint)part32), 4);
        bool part33 = value.@homming_completed;
        writer.Unsigned(part33 ? 1UL : 0UL, 1);
        bool part34 = value.@tp_initialized;
        writer.Unsigned(part34 ? 1UL : 0UL, 1);
        sbyte part35 = value.@mastering_need;
        writer.Unsigned(unchecked((byte)part35), 1);
        bool part36 = value.@drl_stopped;
        writer.Unsigned(part36 ? 1UL : 0UL, 1);
        bool part37 = value.@disconnected;
        writer.Unsigned(part37 ? 1UL : 0UL, 1);
        double[] part38 = value.@fActualW2B;
        if(part38 == null || part38.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part38.Length; ++index)
        {
            double element = part38[index];
            writer.Float64(element);
        }
        _Ros1Std_msgsFloat64MultiArray[] part39 = value.@fCurrentPosW;
        if(part39 == null || part39.Length > 6)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part39.Length, 4);
        for(int index = 0; index < part39.Length; ++index)
        {
            _Ros1Std_msgsFloat64MultiArray element = part39[index];
            WriteRos1Std_msgsFloat64MultiArray(writer, element);
        }
        double[] part40 = value.@fCurrentVelW;
        if(part40 == null || part40.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part40.Length; ++index)
        {
            double element = part40[index];
            writer.Float64(element);
        }
        double[] part41 = value.@fWorldETT;
        if(part41 == null || part41.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part41.Length; ++index)
        {
            double element = part41[index];
            writer.Float64(element);
        }
        double[] part42 = value.@fTargetPosW;
        if(part42 == null || part42.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part42.Length; ++index)
        {
            double element = part42[index];
            writer.Float64(element);
        }
        double[] part43 = value.@fTargetVelW;
        if(part43 == null || part43.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part43.Length; ++index)
        {
            double element = part43[index];
            writer.Float64(element);
        }
        _Ros1Std_msgsFloat64MultiArray[] part44 = value.@fRotationMatrixWorld;
        if(part44 == null || part44.Length > 6)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part44.Length, 4);
        for(int index = 0; index < part44.Length; ++index)
        {
            _Ros1Std_msgsFloat64MultiArray element = part44[index];
            WriteRos1Std_msgsFloat64MultiArray(writer, element);
        }
        sbyte part45 = value.@iActualUCN;
        writer.Unsigned(unchecked((byte)part45), 1);
        sbyte part46 = value.@iParent;
        writer.Unsigned(unchecked((byte)part46), 1);
        _Ros1Std_msgsFloat64MultiArray[] part47 = value.@fCurrentPosU;
        if(part47 == null || part47.Length > 6)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part47.Length, 4);
        for(int index = 0; index < part47.Length; ++index)
        {
            _Ros1Std_msgsFloat64MultiArray element = part47[index];
            WriteRos1Std_msgsFloat64MultiArray(writer, element);
        }
        double[] part48 = value.@fCurrentVelU;
        if(part48 == null || part48.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part48.Length; ++index)
        {
            double element = part48[index];
            writer.Float64(element);
        }
        double[] part49 = value.@fUserETT;
        if(part49 == null || part49.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part49.Length; ++index)
        {
            double element = part49[index];
            writer.Float64(element);
        }
        double[] part50 = value.@fTargetPosU;
        if(part50 == null || part50.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part50.Length; ++index)
        {
            double element = part50[index];
            writer.Float64(element);
        }
        double[] part51 = value.@fTargetVelU;
        if(part51 == null || part51.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part51.Length; ++index)
        {
            double element = part51[index];
            writer.Float64(element);
        }
        _Ros1Std_msgsFloat64MultiArray[] part52 = value.@fRotationMatrixUser;
        if(part52 == null || part52.Length > 6)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part52.Length, 4);
        for(int index = 0; index < part52.Length; ++index)
        {
            _Ros1Std_msgsFloat64MultiArray element = part52[index];
            WriteRos1Std_msgsFloat64MultiArray(writer, element);
        }
        double[] part53 = value.@fActualAI;
        if(part53 == null || part53.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part53.Length; ++index)
        {
            double element = part53[index];
            writer.Float64(element);
        }
        bool[] part54 = value.@bActualSW;
        if(part54 == null || part54.Length != 3)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part54.Length; ++index)
        {
            bool element = part54[index];
            writer.Unsigned(element ? 1UL : 0UL, 1);
        }
        bool[] part55 = value.@bActualSI;
        if(part55 == null || part55.Length != 2)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part55.Length; ++index)
        {
            bool element = part55[index];
            writer.Unsigned(element ? 1UL : 0UL, 1);
        }
        sbyte[] part56 = value.@iActualAT;
        if(part56 == null || part56.Length != 2)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part56.Length; ++index)
        {
            sbyte element = part56[index];
            writer.Unsigned(unchecked((byte)element), 1);
        }
        double[] part57 = value.@fTargetAO;
        if(part57 == null || part57.Length != 2)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part57.Length; ++index)
        {
            double element = part57[index];
            writer.Float64(element);
        }
        sbyte[] part58 = value.@iTargetAT;
        if(part58 == null || part58.Length != 2)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part58.Length; ++index)
        {
            sbyte element = part58[index];
            writer.Unsigned(unchecked((byte)element), 1);
        }
        bool[] part59 = value.@bActualES;
        if(part59 == null || part59.Length != 2)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part59.Length; ++index)
        {
            bool element = part59[index];
            writer.Unsigned(element ? 1UL : 0UL, 1);
        }
        sbyte[] part60 = value.@iActualED;
        if(part60 == null || part60.Length != 2)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part60.Length; ++index)
        {
            sbyte element = part60[index];
            writer.Unsigned(unchecked((byte)element), 1);
        }
        bool[] part61 = value.@bActualER;
        if(part61 == null || part61.Length != 2)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part61.Length; ++index)
        {
            bool element = part61[index];
            writer.Unsigned(element ? 1UL : 0UL, 1);
        }
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
        value.@current_tool_posx = new double[6];
        for(int index = 0; index < value.@current_tool_posx.Length; ++index)
            value.@current_tool_posx[index] = reader.Float64();
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
        value.@actual_bk = new sbyte[6];
        for(int index = 0; index < value.@actual_bk.Length; ++index)
            value.@actual_bk[index] = unchecked((sbyte)reader.Unsigned(1));
        value.@actual_mc = new double[6];
        for(int index = 0; index < value.@actual_mc.Length; ++index)
            value.@actual_mc[index] = reader.Float64();
        value.@actual_mt = new double[6];
        for(int index = 0; index < value.@actual_mt.Length; ++index)
            value.@actual_mt[index] = reader.Float64();
        value.@solution_space = unchecked((sbyte)reader.Unsigned(1));
        value.@sync_time = reader.Float64();
        value.@actual_bt = new sbyte[5];
        for(int index = 0; index < value.@actual_bt.Length; ++index)
            value.@actual_bt[index] = unchecked((sbyte)reader.Unsigned(1));
        value.@rotation_matrix = new _Ros1Std_msgsFloat64MultiArray[ReadCount(reader, 6, 12)];
        for(int index = 0; index < value.@rotation_matrix.Length; ++index)
            value.@rotation_matrix[index] = ReadRos1Std_msgsFloat64MultiArray(reader);
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
        value.@fActualW2B = new double[6];
        for(int index = 0; index < value.@fActualW2B.Length; ++index)
            value.@fActualW2B[index] = reader.Float64();
        value.@fCurrentPosW = new _Ros1Std_msgsFloat64MultiArray[ReadCount(reader, 6, 12)];
        for(int index = 0; index < value.@fCurrentPosW.Length; ++index)
            value.@fCurrentPosW[index] = ReadRos1Std_msgsFloat64MultiArray(reader);
        value.@fCurrentVelW = new double[6];
        for(int index = 0; index < value.@fCurrentVelW.Length; ++index)
            value.@fCurrentVelW[index] = reader.Float64();
        value.@fWorldETT = new double[6];
        for(int index = 0; index < value.@fWorldETT.Length; ++index)
            value.@fWorldETT[index] = reader.Float64();
        value.@fTargetPosW = new double[6];
        for(int index = 0; index < value.@fTargetPosW.Length; ++index)
            value.@fTargetPosW[index] = reader.Float64();
        value.@fTargetVelW = new double[6];
        for(int index = 0; index < value.@fTargetVelW.Length; ++index)
            value.@fTargetVelW[index] = reader.Float64();
        value.@fRotationMatrixWorld = new _Ros1Std_msgsFloat64MultiArray[ReadCount(reader, 6, 12)];
        for(int index = 0; index < value.@fRotationMatrixWorld.Length; ++index)
            value.@fRotationMatrixWorld[index] = ReadRos1Std_msgsFloat64MultiArray(reader);
        value.@iActualUCN = unchecked((sbyte)reader.Unsigned(1));
        value.@iParent = unchecked((sbyte)reader.Unsigned(1));
        value.@fCurrentPosU = new _Ros1Std_msgsFloat64MultiArray[ReadCount(reader, 6, 12)];
        for(int index = 0; index < value.@fCurrentPosU.Length; ++index)
            value.@fCurrentPosU[index] = ReadRos1Std_msgsFloat64MultiArray(reader);
        value.@fCurrentVelU = new double[6];
        for(int index = 0; index < value.@fCurrentVelU.Length; ++index)
            value.@fCurrentVelU[index] = reader.Float64();
        value.@fUserETT = new double[6];
        for(int index = 0; index < value.@fUserETT.Length; ++index)
            value.@fUserETT[index] = reader.Float64();
        value.@fTargetPosU = new double[6];
        for(int index = 0; index < value.@fTargetPosU.Length; ++index)
            value.@fTargetPosU[index] = reader.Float64();
        value.@fTargetVelU = new double[6];
        for(int index = 0; index < value.@fTargetVelU.Length; ++index)
            value.@fTargetVelU[index] = reader.Float64();
        value.@fRotationMatrixUser = new _Ros1Std_msgsFloat64MultiArray[ReadCount(reader, 6, 12)];
        for(int index = 0; index < value.@fRotationMatrixUser.Length; ++index)
            value.@fRotationMatrixUser[index] = ReadRos1Std_msgsFloat64MultiArray(reader);
        value.@fActualAI = new double[6];
        for(int index = 0; index < value.@fActualAI.Length; ++index)
            value.@fActualAI[index] = reader.Float64();
        value.@bActualSW = new bool[3];
        for(int index = 0; index < value.@bActualSW.Length; ++index)
            value.@bActualSW[index] = ReadBool(reader);
        value.@bActualSI = new bool[2];
        for(int index = 0; index < value.@bActualSI.Length; ++index)
            value.@bActualSI[index] = ReadBool(reader);
        value.@iActualAT = new sbyte[2];
        for(int index = 0; index < value.@iActualAT.Length; ++index)
            value.@iActualAT[index] = unchecked((sbyte)reader.Unsigned(1));
        value.@fTargetAO = new double[2];
        for(int index = 0; index < value.@fTargetAO.Length; ++index)
            value.@fTargetAO[index] = reader.Float64();
        value.@iTargetAT = new sbyte[2];
        for(int index = 0; index < value.@iTargetAT.Length; ++index)
            value.@iTargetAT[index] = unchecked((sbyte)reader.Unsigned(1));
        value.@bActualES = new bool[2];
        for(int index = 0; index < value.@bActualES.Length; ++index)
            value.@bActualES[index] = ReadBool(reader);
        value.@iActualED = new sbyte[2];
        for(int index = 0; index < value.@iActualED.Length; ++index)
            value.@iActualED[index] = unchecked((sbyte)reader.Unsigned(1));
        value.@bActualER = new bool[2];
        for(int index = 0; index < value.@bActualER.Length; ++index)
            value.@bActualER[index] = ReadBool(reader);
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

    public sealed class _Ros1Dsr_msgsServoJRTStream
    {
        public double[] @pos = new double[6];
        public double[] @vel = new double[6];
        public double[] @acc = new double[6];
        public double @time = 0;

        public _Ros1Dsr_msgsServoJRTStream()
        {
        }
    }

    public sealed class Ros1Dsr_msgsServoJRTStreamCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsServoJRTStream>
    {
        public static readonly Ros1Dsr_msgsServoJRTStreamCodec Instance = new Ros1Dsr_msgsServoJRTStreamCodec();

        private Ros1Dsr_msgsServoJRTStreamCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/ServoJRTStream";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_f401a85a9e6940e11cdc58f5f7390456553ff73bc298d0f9c089a1f5e9921677";
        public const int MIN_WIRE_BYTES = 152, MAX_WIRE_BYTES = 152;

        public byte[] Encode(_Ros1Dsr_msgsServoJRTStream value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsServoJRTStream(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsServoJRTStream Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsServoJRTStream value = ReadRos1Dsr_msgsServoJRTStream(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsServoJRTStream(_Codecs.Writer writer, _Ros1Dsr_msgsServoJRTStream value)
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
        if(part1 == null || part1.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part1.Length; ++index)
        {
            double element = part1[index];
            writer.Float64(element);
        }
        double[] part2 = value.@acc;
        if(part2 == null || part2.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part2.Length; ++index)
        {
            double element = part2[index];
            writer.Float64(element);
        }
        double part3 = value.@time;
        writer.Float64(part3);
    }

    private static _Ros1Dsr_msgsServoJRTStream ReadRos1Dsr_msgsServoJRTStream(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsServoJRTStream();
        value.@pos = new double[6];
        for(int index = 0; index < value.@pos.Length; ++index)
            value.@pos[index] = reader.Float64();
        value.@vel = new double[6];
        for(int index = 0; index < value.@vel.Length; ++index)
            value.@vel[index] = reader.Float64();
        value.@acc = new double[6];
        for(int index = 0; index < value.@acc.Length; ++index)
            value.@acc[index] = reader.Float64();
        value.@time = reader.Float64();
        return value;
    }

    public sealed class _Ros1Dsr_msgsServoJStream
    {
        public double[] @pos = new double[6];
        public double[] @vel = new double[6];
        public double[] @acc = new double[6];
        public double @time = 0;

        public _Ros1Dsr_msgsServoJStream()
        {
        }
    }

    public sealed class Ros1Dsr_msgsServoJStreamCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsServoJStream>
    {
        public static readonly Ros1Dsr_msgsServoJStreamCodec Instance = new Ros1Dsr_msgsServoJStreamCodec();

        private Ros1Dsr_msgsServoJStreamCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/ServoJStream";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_2f7e730c7f7d0c29ffc15f345a9352822e94cc98e298235e57397ea46f90db8b";
        public const int MIN_WIRE_BYTES = 152, MAX_WIRE_BYTES = 152;

        public byte[] Encode(_Ros1Dsr_msgsServoJStream value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsServoJStream(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsServoJStream Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsServoJStream value = ReadRos1Dsr_msgsServoJStream(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsServoJStream(_Codecs.Writer writer, _Ros1Dsr_msgsServoJStream value)
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
        if(part1 == null || part1.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part1.Length; ++index)
        {
            double element = part1[index];
            writer.Float64(element);
        }
        double[] part2 = value.@acc;
        if(part2 == null || part2.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part2.Length; ++index)
        {
            double element = part2[index];
            writer.Float64(element);
        }
        double part3 = value.@time;
        writer.Float64(part3);
    }

    private static _Ros1Dsr_msgsServoJStream ReadRos1Dsr_msgsServoJStream(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsServoJStream();
        value.@pos = new double[6];
        for(int index = 0; index < value.@pos.Length; ++index)
            value.@pos[index] = reader.Float64();
        value.@vel = new double[6];
        for(int index = 0; index < value.@vel.Length; ++index)
            value.@vel[index] = reader.Float64();
        value.@acc = new double[6];
        for(int index = 0; index < value.@acc.Length; ++index)
            value.@acc[index] = reader.Float64();
        value.@time = reader.Float64();
        return value;
    }

    public sealed class _Ros1Dsr_msgsServoLRTStream
    {
        public double[] @pos = new double[6];
        public double[] @vel = new double[6];
        public double[] @acc = new double[6];
        public double @time = 0;

        public _Ros1Dsr_msgsServoLRTStream()
        {
        }
    }

    public sealed class Ros1Dsr_msgsServoLRTStreamCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsServoLRTStream>
    {
        public static readonly Ros1Dsr_msgsServoLRTStreamCodec Instance = new Ros1Dsr_msgsServoLRTStreamCodec();

        private Ros1Dsr_msgsServoLRTStreamCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/ServoLRTStream";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_858f4172a6511013eabff068457b05ce5a0cfc507b86a5817d55a5d274763b4d";
        public const int MIN_WIRE_BYTES = 152, MAX_WIRE_BYTES = 152;

        public byte[] Encode(_Ros1Dsr_msgsServoLRTStream value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsServoLRTStream(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsServoLRTStream Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsServoLRTStream value = ReadRos1Dsr_msgsServoLRTStream(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsServoLRTStream(_Codecs.Writer writer, _Ros1Dsr_msgsServoLRTStream value)
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
        if(part1 == null || part1.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part1.Length; ++index)
        {
            double element = part1[index];
            writer.Float64(element);
        }
        double[] part2 = value.@acc;
        if(part2 == null || part2.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part2.Length; ++index)
        {
            double element = part2[index];
            writer.Float64(element);
        }
        double part3 = value.@time;
        writer.Float64(part3);
    }

    private static _Ros1Dsr_msgsServoLRTStream ReadRos1Dsr_msgsServoLRTStream(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsServoLRTStream();
        value.@pos = new double[6];
        for(int index = 0; index < value.@pos.Length; ++index)
            value.@pos[index] = reader.Float64();
        value.@vel = new double[6];
        for(int index = 0; index < value.@vel.Length; ++index)
            value.@vel[index] = reader.Float64();
        value.@acc = new double[6];
        for(int index = 0; index < value.@acc.Length; ++index)
            value.@acc[index] = reader.Float64();
        value.@time = reader.Float64();
        return value;
    }

    public sealed class _Ros1Dsr_msgsServoLStream
    {
        public double[] @pos = new double[6];
        public double[] @vel = new double[2];
        public double[] @acc = new double[2];
        public double @time = 0;

        public _Ros1Dsr_msgsServoLStream()
        {
        }
    }

    public sealed class Ros1Dsr_msgsServoLStreamCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsServoLStream>
    {
        public static readonly Ros1Dsr_msgsServoLStreamCodec Instance = new Ros1Dsr_msgsServoLStreamCodec();

        private Ros1Dsr_msgsServoLStreamCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/ServoLStream";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_b6be06412820c88909f37961227679a9ccbc8176ad662efc7f41f35a797035e8";
        public const int MIN_WIRE_BYTES = 88, MAX_WIRE_BYTES = 88;

        public byte[] Encode(_Ros1Dsr_msgsServoLStream value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsServoLStream(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsServoLStream Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsServoLStream value = ReadRos1Dsr_msgsServoLStream(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsServoLStream(_Codecs.Writer writer, _Ros1Dsr_msgsServoLStream value)
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
    }

    private static _Ros1Dsr_msgsServoLStream ReadRos1Dsr_msgsServoLStream(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsServoLStream();
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
        return value;
    }

    public sealed class _Ros1Dsr_msgsSetAccJRTRequest
    {
        public double[] @acc = new double[6];

        public _Ros1Dsr_msgsSetAccJRTRequest()
        {
        }
    }

    public sealed class Ros1Dsr_msgsSetAccJRTRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsSetAccJRTRequest>
    {
        public static readonly Ros1Dsr_msgsSetAccJRTRequestCodec Instance = new Ros1Dsr_msgsSetAccJRTRequestCodec();

        private Ros1Dsr_msgsSetAccJRTRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/SetAccJRTRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_867345ecf0c7fa3e84375c009d3bd9d2ee2c52a011158215ddae3ff7de977d35";
        public const int MIN_WIRE_BYTES = 48, MAX_WIRE_BYTES = 48;

        public byte[] Encode(_Ros1Dsr_msgsSetAccJRTRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsSetAccJRTRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsSetAccJRTRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsSetAccJRTRequest value = ReadRos1Dsr_msgsSetAccJRTRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsSetAccJRTRequest(_Codecs.Writer writer, _Ros1Dsr_msgsSetAccJRTRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        double[] part0 = value.@acc;
        if(part0 == null || part0.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part0.Length; ++index)
        {
            double element = part0[index];
            writer.Float64(element);
        }
    }

    private static _Ros1Dsr_msgsSetAccJRTRequest ReadRos1Dsr_msgsSetAccJRTRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsSetAccJRTRequest();
        value.@acc = new double[6];
        for(int index = 0; index < value.@acc.Length; ++index)
            value.@acc[index] = reader.Float64();
        return value;
    }

    public sealed class _Ros1Dsr_msgsSetAccJRTResponse
    {
        public bool @success = false;

        public _Ros1Dsr_msgsSetAccJRTResponse()
        {
        }
    }

    public sealed class Ros1Dsr_msgsSetAccJRTResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsSetAccJRTResponse>
    {
        public static readonly Ros1Dsr_msgsSetAccJRTResponseCodec Instance = new Ros1Dsr_msgsSetAccJRTResponseCodec();

        private Ros1Dsr_msgsSetAccJRTResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/SetAccJRTResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_1bc5cb7aafef1ab3cfcde7fda9108670bc96f2298f3921ca832cab01b7670e00";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros1Dsr_msgsSetAccJRTResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsSetAccJRTResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsSetAccJRTResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsSetAccJRTResponse value = ReadRos1Dsr_msgsSetAccJRTResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsSetAccJRTResponse(_Codecs.Writer writer, _Ros1Dsr_msgsSetAccJRTResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros1Dsr_msgsSetAccJRTResponse ReadRos1Dsr_msgsSetAccJRTResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsSetAccJRTResponse();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros1Dsr_msgsSetAccXRTRequest
    {
        public double @trans = 0;
        public double @rotation = 0;

        public _Ros1Dsr_msgsSetAccXRTRequest()
        {
        }
    }

    public sealed class Ros1Dsr_msgsSetAccXRTRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsSetAccXRTRequest>
    {
        public static readonly Ros1Dsr_msgsSetAccXRTRequestCodec Instance = new Ros1Dsr_msgsSetAccXRTRequestCodec();

        private Ros1Dsr_msgsSetAccXRTRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/SetAccXRTRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_1fa5e2a32de2e4a212702aa6cb1cbfa7d451c51a0f6cb871fc337cd09b166cb6";
        public const int MIN_WIRE_BYTES = 16, MAX_WIRE_BYTES = 16;

        public byte[] Encode(_Ros1Dsr_msgsSetAccXRTRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsSetAccXRTRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsSetAccXRTRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsSetAccXRTRequest value = ReadRos1Dsr_msgsSetAccXRTRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsSetAccXRTRequest(_Codecs.Writer writer, _Ros1Dsr_msgsSetAccXRTRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        double part0 = value.@trans;
        writer.Float64(part0);
        double part1 = value.@rotation;
        writer.Float64(part1);
    }

    private static _Ros1Dsr_msgsSetAccXRTRequest ReadRos1Dsr_msgsSetAccXRTRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsSetAccXRTRequest();
        value.@trans = reader.Float64();
        value.@rotation = reader.Float64();
        return value;
    }

    public sealed class _Ros1Dsr_msgsSetAccXRTResponse
    {
        public bool @success = false;

        public _Ros1Dsr_msgsSetAccXRTResponse()
        {
        }
    }

    public sealed class Ros1Dsr_msgsSetAccXRTResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsSetAccXRTResponse>
    {
        public static readonly Ros1Dsr_msgsSetAccXRTResponseCodec Instance = new Ros1Dsr_msgsSetAccXRTResponseCodec();

        private Ros1Dsr_msgsSetAccXRTResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/SetAccXRTResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_7a42293efa247633f5e72a20749342b0530795a4e963f3c47248c2e703ae7c65";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros1Dsr_msgsSetAccXRTResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsSetAccXRTResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsSetAccXRTResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsSetAccXRTResponse value = ReadRos1Dsr_msgsSetAccXRTResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsSetAccXRTResponse(_Codecs.Writer writer, _Ros1Dsr_msgsSetAccXRTResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros1Dsr_msgsSetAccXRTResponse ReadRos1Dsr_msgsSetAccXRTResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsSetAccXRTResponse();
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

    public sealed class _Ros1Dsr_msgsSetDesiredForceRequest
    {
        public double[] @fd = new double[6];
        public sbyte[] @dir = new sbyte[6];
        public sbyte @ref = 0;
        public double @time = 0;
        public sbyte @mod = 0;

        public _Ros1Dsr_msgsSetDesiredForceRequest()
        {
        }
    }

    public sealed class Ros1Dsr_msgsSetDesiredForceRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsSetDesiredForceRequest>
    {
        public static readonly Ros1Dsr_msgsSetDesiredForceRequestCodec Instance = new Ros1Dsr_msgsSetDesiredForceRequestCodec();

        private Ros1Dsr_msgsSetDesiredForceRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/SetDesiredForceRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_1020073d308553e7eb01e3fdd76a8a29cd169131d95516ae8c07a54b29f01b1a";
        public const int MIN_WIRE_BYTES = 64, MAX_WIRE_BYTES = 64;

        public byte[] Encode(_Ros1Dsr_msgsSetDesiredForceRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsSetDesiredForceRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsSetDesiredForceRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsSetDesiredForceRequest value = ReadRos1Dsr_msgsSetDesiredForceRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsSetDesiredForceRequest(_Codecs.Writer writer, _Ros1Dsr_msgsSetDesiredForceRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        double[] part0 = value.@fd;
        if(part0 == null || part0.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part0.Length; ++index)
        {
            double element = part0[index];
            writer.Float64(element);
        }
        sbyte[] part1 = value.@dir;
        if(part1 == null || part1.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part1.Length; ++index)
        {
            sbyte element = part1[index];
            writer.Unsigned(unchecked((byte)element), 1);
        }
        sbyte part2 = value.@ref;
        writer.Unsigned(unchecked((byte)part2), 1);
        double part3 = value.@time;
        writer.Float64(part3);
        sbyte part4 = value.@mod;
        writer.Unsigned(unchecked((byte)part4), 1);
    }

    private static _Ros1Dsr_msgsSetDesiredForceRequest ReadRos1Dsr_msgsSetDesiredForceRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsSetDesiredForceRequest();
        value.@fd = new double[6];
        for(int index = 0; index < value.@fd.Length; ++index)
            value.@fd[index] = reader.Float64();
        value.@dir = new sbyte[6];
        for(int index = 0; index < value.@dir.Length; ++index)
            value.@dir[index] = unchecked((sbyte)reader.Unsigned(1));
        value.@ref = unchecked((sbyte)reader.Unsigned(1));
        value.@time = reader.Float64();
        value.@mod = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    public sealed class _Ros1Dsr_msgsSetDesiredForceResponse
    {
        public bool @success = false;

        public _Ros1Dsr_msgsSetDesiredForceResponse()
        {
        }
    }

    public sealed class Ros1Dsr_msgsSetDesiredForceResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsSetDesiredForceResponse>
    {
        public static readonly Ros1Dsr_msgsSetDesiredForceResponseCodec Instance = new Ros1Dsr_msgsSetDesiredForceResponseCodec();

        private Ros1Dsr_msgsSetDesiredForceResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/SetDesiredForceResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_fb07701ce7c215300e155c1d46e345f6467fe43bba3fc71bed94943459ce1928";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros1Dsr_msgsSetDesiredForceResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsSetDesiredForceResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsSetDesiredForceResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsSetDesiredForceResponse value = ReadRos1Dsr_msgsSetDesiredForceResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsSetDesiredForceResponse(_Codecs.Writer writer, _Ros1Dsr_msgsSetDesiredForceResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros1Dsr_msgsSetDesiredForceResponse ReadRos1Dsr_msgsSetDesiredForceResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsSetDesiredForceResponse();
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

    public sealed class _Ros1Dsr_msgsSetRTControlInputRequest
    {
        public string @version = "";
        public double @period = 0;
        public int @loss = 0;

        public _Ros1Dsr_msgsSetRTControlInputRequest()
        {
        }
    }

    public sealed class Ros1Dsr_msgsSetRTControlInputRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsSetRTControlInputRequest>
    {
        public static readonly Ros1Dsr_msgsSetRTControlInputRequestCodec Instance = new Ros1Dsr_msgsSetRTControlInputRequestCodec();

        private Ros1Dsr_msgsSetRTControlInputRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/SetRTControlInputRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_83562a6a3191e48ab47af1e2d35775048bf146a8175985b356a416882e5374cd";
        public const int MIN_WIRE_BYTES = 16, MAX_WIRE_BYTES = 272;

        public byte[] Encode(_Ros1Dsr_msgsSetRTControlInputRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsSetRTControlInputRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsSetRTControlInputRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsSetRTControlInputRequest value = ReadRos1Dsr_msgsSetRTControlInputRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsSetRTControlInputRequest(_Codecs.Writer writer, _Ros1Dsr_msgsSetRTControlInputRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        string part0 = value.@version;
        WriteText(writer, part0, 256);
        double part1 = value.@period;
        writer.Float64(part1);
        int part2 = value.@loss;
        writer.Unsigned(unchecked((uint)part2), 4);
    }

    private static _Ros1Dsr_msgsSetRTControlInputRequest ReadRos1Dsr_msgsSetRTControlInputRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsSetRTControlInputRequest();
        value.@version = ReadText(reader, 256);
        value.@period = reader.Float64();
        value.@loss = unchecked((int)reader.Unsigned(4));
        return value;
    }

    public sealed class _Ros1Dsr_msgsSetRTControlInputResponse
    {
        public bool @success = false;

        public _Ros1Dsr_msgsSetRTControlInputResponse()
        {
        }
    }

    public sealed class Ros1Dsr_msgsSetRTControlInputResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsSetRTControlInputResponse>
    {
        public static readonly Ros1Dsr_msgsSetRTControlInputResponseCodec Instance = new Ros1Dsr_msgsSetRTControlInputResponseCodec();

        private Ros1Dsr_msgsSetRTControlInputResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/SetRTControlInputResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_8fef3733c6f17fcbc1e0eaa2633321d63b78d63d0156802417e87c8a5330008f";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros1Dsr_msgsSetRTControlInputResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsSetRTControlInputResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsSetRTControlInputResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsSetRTControlInputResponse value = ReadRos1Dsr_msgsSetRTControlInputResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsSetRTControlInputResponse(_Codecs.Writer writer, _Ros1Dsr_msgsSetRTControlInputResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros1Dsr_msgsSetRTControlInputResponse ReadRos1Dsr_msgsSetRTControlInputResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsSetRTControlInputResponse();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros1Dsr_msgsSetRTControlOutputRequest
    {
        public string @version = "";
        public double @period = 0;
        public int @loss = 0;

        public _Ros1Dsr_msgsSetRTControlOutputRequest()
        {
        }
    }

    public sealed class Ros1Dsr_msgsSetRTControlOutputRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsSetRTControlOutputRequest>
    {
        public static readonly Ros1Dsr_msgsSetRTControlOutputRequestCodec Instance = new Ros1Dsr_msgsSetRTControlOutputRequestCodec();

        private Ros1Dsr_msgsSetRTControlOutputRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/SetRTControlOutputRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_83976c84f752fbfb1bf6e84a3816ab069e5d4f454dac4a602753f9d2049050c6";
        public const int MIN_WIRE_BYTES = 16, MAX_WIRE_BYTES = 272;

        public byte[] Encode(_Ros1Dsr_msgsSetRTControlOutputRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsSetRTControlOutputRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsSetRTControlOutputRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsSetRTControlOutputRequest value = ReadRos1Dsr_msgsSetRTControlOutputRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsSetRTControlOutputRequest(_Codecs.Writer writer, _Ros1Dsr_msgsSetRTControlOutputRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        string part0 = value.@version;
        WriteText(writer, part0, 256);
        double part1 = value.@period;
        writer.Float64(part1);
        int part2 = value.@loss;
        writer.Unsigned(unchecked((uint)part2), 4);
    }

    private static _Ros1Dsr_msgsSetRTControlOutputRequest ReadRos1Dsr_msgsSetRTControlOutputRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsSetRTControlOutputRequest();
        value.@version = ReadText(reader, 256);
        value.@period = reader.Float64();
        value.@loss = unchecked((int)reader.Unsigned(4));
        return value;
    }

    public sealed class _Ros1Dsr_msgsSetRTControlOutputResponse
    {
        public bool @success = false;

        public _Ros1Dsr_msgsSetRTControlOutputResponse()
        {
        }
    }

    public sealed class Ros1Dsr_msgsSetRTControlOutputResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsSetRTControlOutputResponse>
    {
        public static readonly Ros1Dsr_msgsSetRTControlOutputResponseCodec Instance = new Ros1Dsr_msgsSetRTControlOutputResponseCodec();

        private Ros1Dsr_msgsSetRTControlOutputResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/SetRTControlOutputResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_ac2888098d0b18d9188b116877ade53eb4481ca4e5a7c20bff64511bd5ad9ba9";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros1Dsr_msgsSetRTControlOutputResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsSetRTControlOutputResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsSetRTControlOutputResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsSetRTControlOutputResponse value = ReadRos1Dsr_msgsSetRTControlOutputResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsSetRTControlOutputResponse(_Codecs.Writer writer, _Ros1Dsr_msgsSetRTControlOutputResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros1Dsr_msgsSetRTControlOutputResponse ReadRos1Dsr_msgsSetRTControlOutputResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsSetRTControlOutputResponse();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros1Dsr_msgsSetRefCoordRequest
    {
        public sbyte @coord = 0;

        public _Ros1Dsr_msgsSetRefCoordRequest()
        {
        }
    }

    public sealed class Ros1Dsr_msgsSetRefCoordRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsSetRefCoordRequest>
    {
        public static readonly Ros1Dsr_msgsSetRefCoordRequestCodec Instance = new Ros1Dsr_msgsSetRefCoordRequestCodec();

        private Ros1Dsr_msgsSetRefCoordRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/SetRefCoordRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_269accc3ced8dd5c86b93c8a412301e47f0084be7f5294d19866868eb5858144";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros1Dsr_msgsSetRefCoordRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsSetRefCoordRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsSetRefCoordRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsSetRefCoordRequest value = ReadRos1Dsr_msgsSetRefCoordRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsSetRefCoordRequest(_Codecs.Writer writer, _Ros1Dsr_msgsSetRefCoordRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        sbyte part0 = value.@coord;
        writer.Unsigned(unchecked((byte)part0), 1);
    }

    private static _Ros1Dsr_msgsSetRefCoordRequest ReadRos1Dsr_msgsSetRefCoordRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsSetRefCoordRequest();
        value.@coord = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    public sealed class _Ros1Dsr_msgsSetRefCoordResponse
    {
        public bool @success = false;

        public _Ros1Dsr_msgsSetRefCoordResponse()
        {
        }
    }

    public sealed class Ros1Dsr_msgsSetRefCoordResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsSetRefCoordResponse>
    {
        public static readonly Ros1Dsr_msgsSetRefCoordResponseCodec Instance = new Ros1Dsr_msgsSetRefCoordResponseCodec();

        private Ros1Dsr_msgsSetRefCoordResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/SetRefCoordResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_d33d88ff3985821ce2b9773f2d80ebf3394d89647e760dea55b9303c9e3b3562";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros1Dsr_msgsSetRefCoordResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsSetRefCoordResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsSetRefCoordResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsSetRefCoordResponse value = ReadRos1Dsr_msgsSetRefCoordResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsSetRefCoordResponse(_Codecs.Writer writer, _Ros1Dsr_msgsSetRefCoordResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros1Dsr_msgsSetRefCoordResponse ReadRos1Dsr_msgsSetRefCoordResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsSetRefCoordResponse();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros1Dsr_msgsSetRobotControlRequest
    {
        public sbyte @robot_control = 0;

        public _Ros1Dsr_msgsSetRobotControlRequest()
        {
        }
    }

    public sealed class Ros1Dsr_msgsSetRobotControlRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsSetRobotControlRequest>
    {
        public static readonly Ros1Dsr_msgsSetRobotControlRequestCodec Instance = new Ros1Dsr_msgsSetRobotControlRequestCodec();

        private Ros1Dsr_msgsSetRobotControlRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/SetRobotControlRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_d84763896b47427acc4d2c4cd75972c2c4f07c2f87dd1df781c8d7ef9e43c919";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros1Dsr_msgsSetRobotControlRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsSetRobotControlRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsSetRobotControlRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsSetRobotControlRequest value = ReadRos1Dsr_msgsSetRobotControlRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsSetRobotControlRequest(_Codecs.Writer writer, _Ros1Dsr_msgsSetRobotControlRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        sbyte part0 = value.@robot_control;
        writer.Unsigned(unchecked((byte)part0), 1);
    }

    private static _Ros1Dsr_msgsSetRobotControlRequest ReadRos1Dsr_msgsSetRobotControlRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsSetRobotControlRequest();
        value.@robot_control = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    public sealed class _Ros1Dsr_msgsSetRobotControlResponse
    {
        public bool @success = false;

        public _Ros1Dsr_msgsSetRobotControlResponse()
        {
        }
    }

    public sealed class Ros1Dsr_msgsSetRobotControlResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsSetRobotControlResponse>
    {
        public static readonly Ros1Dsr_msgsSetRobotControlResponseCodec Instance = new Ros1Dsr_msgsSetRobotControlResponseCodec();

        private Ros1Dsr_msgsSetRobotControlResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/SetRobotControlResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_6f6a9dd616a340ad9a733b3f19c61a07b3101fc519f26f9c7d6e80af868663ee";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros1Dsr_msgsSetRobotControlResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsSetRobotControlResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsSetRobotControlResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsSetRobotControlResponse value = ReadRos1Dsr_msgsSetRobotControlResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsSetRobotControlResponse(_Codecs.Writer writer, _Ros1Dsr_msgsSetRobotControlResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros1Dsr_msgsSetRobotControlResponse ReadRos1Dsr_msgsSetRobotControlResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsSetRobotControlResponse();
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

    public sealed class _Ros1Dsr_msgsSetSafetyModeRequest
    {
        public sbyte @safety_mode = 0;
        public sbyte @safety_mode_event = 0;

        public _Ros1Dsr_msgsSetSafetyModeRequest()
        {
        }
    }

    public sealed class Ros1Dsr_msgsSetSafetyModeRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsSetSafetyModeRequest>
    {
        public static readonly Ros1Dsr_msgsSetSafetyModeRequestCodec Instance = new Ros1Dsr_msgsSetSafetyModeRequestCodec();

        private Ros1Dsr_msgsSetSafetyModeRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/SetSafetyModeRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_e3e42b2be7c9f0974cb0f4a4192128c06a8df4a09eecb471358e41744d85d811";
        public const int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;

        public byte[] Encode(_Ros1Dsr_msgsSetSafetyModeRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsSetSafetyModeRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsSetSafetyModeRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsSetSafetyModeRequest value = ReadRos1Dsr_msgsSetSafetyModeRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsSetSafetyModeRequest(_Codecs.Writer writer, _Ros1Dsr_msgsSetSafetyModeRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        sbyte part0 = value.@safety_mode;
        writer.Unsigned(unchecked((byte)part0), 1);
        sbyte part1 = value.@safety_mode_event;
        writer.Unsigned(unchecked((byte)part1), 1);
    }

    private static _Ros1Dsr_msgsSetSafetyModeRequest ReadRos1Dsr_msgsSetSafetyModeRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsSetSafetyModeRequest();
        value.@safety_mode = unchecked((sbyte)reader.Unsigned(1));
        value.@safety_mode_event = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    public sealed class _Ros1Dsr_msgsSetSafetyModeResponse
    {
        public bool @success = false;

        public _Ros1Dsr_msgsSetSafetyModeResponse()
        {
        }
    }

    public sealed class Ros1Dsr_msgsSetSafetyModeResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsSetSafetyModeResponse>
    {
        public static readonly Ros1Dsr_msgsSetSafetyModeResponseCodec Instance = new Ros1Dsr_msgsSetSafetyModeResponseCodec();

        private Ros1Dsr_msgsSetSafetyModeResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/SetSafetyModeResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_107e9a75ba6b7fa85f2a92b4595f0b55e451b2cbabb2f0035d16b6d35be69320";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros1Dsr_msgsSetSafetyModeResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsSetSafetyModeResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsSetSafetyModeResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsSetSafetyModeResponse value = ReadRos1Dsr_msgsSetSafetyModeResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsSetSafetyModeResponse(_Codecs.Writer writer, _Ros1Dsr_msgsSetSafetyModeResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros1Dsr_msgsSetSafetyModeResponse ReadRos1Dsr_msgsSetSafetyModeResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsSetSafetyModeResponse();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros1Dsr_msgsSetSingularityHandlingRequest
    {
        public sbyte @mode = 0;

        public _Ros1Dsr_msgsSetSingularityHandlingRequest()
        {
        }
    }

    public sealed class Ros1Dsr_msgsSetSingularityHandlingRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsSetSingularityHandlingRequest>
    {
        public static readonly Ros1Dsr_msgsSetSingularityHandlingRequestCodec Instance = new Ros1Dsr_msgsSetSingularityHandlingRequestCodec();

        private Ros1Dsr_msgsSetSingularityHandlingRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/SetSingularityHandlingRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_44dd4695620a3cf3f95504b73ad6978c9073ab3703f73f4a6449c7763f31cb7b";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros1Dsr_msgsSetSingularityHandlingRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsSetSingularityHandlingRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsSetSingularityHandlingRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsSetSingularityHandlingRequest value = ReadRos1Dsr_msgsSetSingularityHandlingRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsSetSingularityHandlingRequest(_Codecs.Writer writer, _Ros1Dsr_msgsSetSingularityHandlingRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        sbyte part0 = value.@mode;
        writer.Unsigned(unchecked((byte)part0), 1);
    }

    private static _Ros1Dsr_msgsSetSingularityHandlingRequest ReadRos1Dsr_msgsSetSingularityHandlingRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsSetSingularityHandlingRequest();
        value.@mode = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    public sealed class _Ros1Dsr_msgsSetSingularityHandlingResponse
    {
        public bool @success = false;

        public _Ros1Dsr_msgsSetSingularityHandlingResponse()
        {
        }
    }

    public sealed class Ros1Dsr_msgsSetSingularityHandlingResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsSetSingularityHandlingResponse>
    {
        public static readonly Ros1Dsr_msgsSetSingularityHandlingResponseCodec Instance = new Ros1Dsr_msgsSetSingularityHandlingResponseCodec();

        private Ros1Dsr_msgsSetSingularityHandlingResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/SetSingularityHandlingResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_a022bf9d809ac39a4dfe0487fdbc83f3b4ef81f179a6b3dd7d8fb1854aba1aa2";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros1Dsr_msgsSetSingularityHandlingResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsSetSingularityHandlingResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsSetSingularityHandlingResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsSetSingularityHandlingResponse value = ReadRos1Dsr_msgsSetSingularityHandlingResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsSetSingularityHandlingResponse(_Codecs.Writer writer, _Ros1Dsr_msgsSetSingularityHandlingResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros1Dsr_msgsSetSingularityHandlingResponse ReadRos1Dsr_msgsSetSingularityHandlingResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsSetSingularityHandlingResponse();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros1Dsr_msgsSetStiffnessxRequest
    {
        public double[] @stx = new double[6];
        public sbyte @ref = 0;
        public double @time = 0;

        public _Ros1Dsr_msgsSetStiffnessxRequest()
        {
        }
    }

    public sealed class Ros1Dsr_msgsSetStiffnessxRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsSetStiffnessxRequest>
    {
        public static readonly Ros1Dsr_msgsSetStiffnessxRequestCodec Instance = new Ros1Dsr_msgsSetStiffnessxRequestCodec();

        private Ros1Dsr_msgsSetStiffnessxRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/SetStiffnessxRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_7cf0721d0f9cd45422a4277a63834f75572ead2833ca4100752d51abc2b4e3d3";
        public const int MIN_WIRE_BYTES = 57, MAX_WIRE_BYTES = 57;

        public byte[] Encode(_Ros1Dsr_msgsSetStiffnessxRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsSetStiffnessxRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsSetStiffnessxRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsSetStiffnessxRequest value = ReadRos1Dsr_msgsSetStiffnessxRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsSetStiffnessxRequest(_Codecs.Writer writer, _Ros1Dsr_msgsSetStiffnessxRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        double[] part0 = value.@stx;
        if(part0 == null || part0.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part0.Length; ++index)
        {
            double element = part0[index];
            writer.Float64(element);
        }
        sbyte part1 = value.@ref;
        writer.Unsigned(unchecked((byte)part1), 1);
        double part2 = value.@time;
        writer.Float64(part2);
    }

    private static _Ros1Dsr_msgsSetStiffnessxRequest ReadRos1Dsr_msgsSetStiffnessxRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsSetStiffnessxRequest();
        value.@stx = new double[6];
        for(int index = 0; index < value.@stx.Length; ++index)
            value.@stx[index] = reader.Float64();
        value.@ref = unchecked((sbyte)reader.Unsigned(1));
        value.@time = reader.Float64();
        return value;
    }

    public sealed class _Ros1Dsr_msgsSetStiffnessxResponse
    {
        public bool @success = false;

        public _Ros1Dsr_msgsSetStiffnessxResponse()
        {
        }
    }

    public sealed class Ros1Dsr_msgsSetStiffnessxResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsSetStiffnessxResponse>
    {
        public static readonly Ros1Dsr_msgsSetStiffnessxResponseCodec Instance = new Ros1Dsr_msgsSetStiffnessxResponseCodec();

        private Ros1Dsr_msgsSetStiffnessxResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/SetStiffnessxResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_41ae59cb41184a6c167db14ac58ef80966c500fb31417b21900e42d1cb9a4549";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros1Dsr_msgsSetStiffnessxResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsSetStiffnessxResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsSetStiffnessxResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsSetStiffnessxResponse value = ReadRos1Dsr_msgsSetStiffnessxResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsSetStiffnessxResponse(_Codecs.Writer writer, _Ros1Dsr_msgsSetStiffnessxResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros1Dsr_msgsSetStiffnessxResponse ReadRos1Dsr_msgsSetStiffnessxResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsSetStiffnessxResponse();
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

    public sealed class _Ros1Dsr_msgsSetToolShapeRequest
    {
        public string @name = "";

        public _Ros1Dsr_msgsSetToolShapeRequest()
        {
        }
    }

    public sealed class Ros1Dsr_msgsSetToolShapeRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsSetToolShapeRequest>
    {
        public static readonly Ros1Dsr_msgsSetToolShapeRequestCodec Instance = new Ros1Dsr_msgsSetToolShapeRequestCodec();

        private Ros1Dsr_msgsSetToolShapeRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/SetToolShapeRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_1eb4f1d4e9fea4e9f5324fc50acd744365940912055fbc359ecc4748b1ddeeea";
        public const int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 260;

        public byte[] Encode(_Ros1Dsr_msgsSetToolShapeRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsSetToolShapeRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsSetToolShapeRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsSetToolShapeRequest value = ReadRos1Dsr_msgsSetToolShapeRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsSetToolShapeRequest(_Codecs.Writer writer, _Ros1Dsr_msgsSetToolShapeRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        string part0 = value.@name;
        WriteText(writer, part0, 256);
    }

    private static _Ros1Dsr_msgsSetToolShapeRequest ReadRos1Dsr_msgsSetToolShapeRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsSetToolShapeRequest();
        value.@name = ReadText(reader, 256);
        return value;
    }

    public sealed class _Ros1Dsr_msgsSetToolShapeResponse
    {
        public bool @success = false;

        public _Ros1Dsr_msgsSetToolShapeResponse()
        {
        }
    }

    public sealed class Ros1Dsr_msgsSetToolShapeResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsSetToolShapeResponse>
    {
        public static readonly Ros1Dsr_msgsSetToolShapeResponseCodec Instance = new Ros1Dsr_msgsSetToolShapeResponseCodec();

        private Ros1Dsr_msgsSetToolShapeResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/SetToolShapeResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_7d18f475fd4230c7f15ddc10401373d296cfaef1d525a26e983cda4c8b2b5e70";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros1Dsr_msgsSetToolShapeResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsSetToolShapeResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsSetToolShapeResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsSetToolShapeResponse value = ReadRos1Dsr_msgsSetToolShapeResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsSetToolShapeResponse(_Codecs.Writer writer, _Ros1Dsr_msgsSetToolShapeResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros1Dsr_msgsSetToolShapeResponse ReadRos1Dsr_msgsSetToolShapeResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsSetToolShapeResponse();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros1Dsr_msgsSetUserCartCoord1Request
    {
        public double[] @pos = new double[6];
        public sbyte @ref = 0;

        public _Ros1Dsr_msgsSetUserCartCoord1Request()
        {
        }
    }

    public sealed class Ros1Dsr_msgsSetUserCartCoord1RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsSetUserCartCoord1Request>
    {
        public static readonly Ros1Dsr_msgsSetUserCartCoord1RequestCodec Instance = new Ros1Dsr_msgsSetUserCartCoord1RequestCodec();

        private Ros1Dsr_msgsSetUserCartCoord1RequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/SetUserCartCoord1Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_f54a10c9fd4687670111ba2b3d0a6bceea638fc71da62d59b81a01c59dd457b3";
        public const int MIN_WIRE_BYTES = 49, MAX_WIRE_BYTES = 49;

        public byte[] Encode(_Ros1Dsr_msgsSetUserCartCoord1Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsSetUserCartCoord1Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsSetUserCartCoord1Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsSetUserCartCoord1Request value = ReadRos1Dsr_msgsSetUserCartCoord1Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsSetUserCartCoord1Request(_Codecs.Writer writer, _Ros1Dsr_msgsSetUserCartCoord1Request value)
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
        sbyte part1 = value.@ref;
        writer.Unsigned(unchecked((byte)part1), 1);
    }

    private static _Ros1Dsr_msgsSetUserCartCoord1Request ReadRos1Dsr_msgsSetUserCartCoord1Request(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsSetUserCartCoord1Request();
        value.@pos = new double[6];
        for(int index = 0; index < value.@pos.Length; ++index)
            value.@pos[index] = reader.Float64();
        value.@ref = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    public sealed class _Ros1Dsr_msgsSetUserCartCoord1Response
    {
        public sbyte @id = 0;
        public bool @success = false;

        public _Ros1Dsr_msgsSetUserCartCoord1Response()
        {
        }
    }

    public sealed class Ros1Dsr_msgsSetUserCartCoord1ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsSetUserCartCoord1Response>
    {
        public static readonly Ros1Dsr_msgsSetUserCartCoord1ResponseCodec Instance = new Ros1Dsr_msgsSetUserCartCoord1ResponseCodec();

        private Ros1Dsr_msgsSetUserCartCoord1ResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/SetUserCartCoord1Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_c8749fa152e4396e977e110a901dfc791a26b54d1f282752039a20c0c4531f53";
        public const int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;

        public byte[] Encode(_Ros1Dsr_msgsSetUserCartCoord1Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsSetUserCartCoord1Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsSetUserCartCoord1Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsSetUserCartCoord1Response value = ReadRos1Dsr_msgsSetUserCartCoord1Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsSetUserCartCoord1Response(_Codecs.Writer writer, _Ros1Dsr_msgsSetUserCartCoord1Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        sbyte part0 = value.@id;
        writer.Unsigned(unchecked((byte)part0), 1);
        bool part1 = value.@success;
        writer.Unsigned(part1 ? 1UL : 0UL, 1);
    }

    private static _Ros1Dsr_msgsSetUserCartCoord1Response ReadRos1Dsr_msgsSetUserCartCoord1Response(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsSetUserCartCoord1Response();
        value.@id = unchecked((sbyte)reader.Unsigned(1));
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros1Dsr_msgsSetUserCartCoord2Request
    {
        public double[] @x1 = new double[6];
        public double[] @x2 = new double[6];
        public double[] @x3 = new double[6];
        public double[] @pos = new double[6];
        public sbyte @ref = 0;

        public _Ros1Dsr_msgsSetUserCartCoord2Request()
        {
        }
    }

    public sealed class Ros1Dsr_msgsSetUserCartCoord2RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsSetUserCartCoord2Request>
    {
        public static readonly Ros1Dsr_msgsSetUserCartCoord2RequestCodec Instance = new Ros1Dsr_msgsSetUserCartCoord2RequestCodec();

        private Ros1Dsr_msgsSetUserCartCoord2RequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/SetUserCartCoord2Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_581a8164d6593be7422364300fabd854bc3b438726a3182cd388be5c629dc235";
        public const int MIN_WIRE_BYTES = 193, MAX_WIRE_BYTES = 193;

        public byte[] Encode(_Ros1Dsr_msgsSetUserCartCoord2Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsSetUserCartCoord2Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsSetUserCartCoord2Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsSetUserCartCoord2Request value = ReadRos1Dsr_msgsSetUserCartCoord2Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsSetUserCartCoord2Request(_Codecs.Writer writer, _Ros1Dsr_msgsSetUserCartCoord2Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        double[] part0 = value.@x1;
        if(part0 == null || part0.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part0.Length; ++index)
        {
            double element = part0[index];
            writer.Float64(element);
        }
        double[] part1 = value.@x2;
        if(part1 == null || part1.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part1.Length; ++index)
        {
            double element = part1[index];
            writer.Float64(element);
        }
        double[] part2 = value.@x3;
        if(part2 == null || part2.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part2.Length; ++index)
        {
            double element = part2[index];
            writer.Float64(element);
        }
        double[] part3 = value.@pos;
        if(part3 == null || part3.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part3.Length; ++index)
        {
            double element = part3[index];
            writer.Float64(element);
        }
        sbyte part4 = value.@ref;
        writer.Unsigned(unchecked((byte)part4), 1);
    }

    private static _Ros1Dsr_msgsSetUserCartCoord2Request ReadRos1Dsr_msgsSetUserCartCoord2Request(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsSetUserCartCoord2Request();
        value.@x1 = new double[6];
        for(int index = 0; index < value.@x1.Length; ++index)
            value.@x1[index] = reader.Float64();
        value.@x2 = new double[6];
        for(int index = 0; index < value.@x2.Length; ++index)
            value.@x2[index] = reader.Float64();
        value.@x3 = new double[6];
        for(int index = 0; index < value.@x3.Length; ++index)
            value.@x3[index] = reader.Float64();
        value.@pos = new double[6];
        for(int index = 0; index < value.@pos.Length; ++index)
            value.@pos[index] = reader.Float64();
        value.@ref = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    public sealed class _Ros1Dsr_msgsSetUserCartCoord2Response
    {
        public sbyte @id = 0;
        public bool @success = false;

        public _Ros1Dsr_msgsSetUserCartCoord2Response()
        {
        }
    }

    public sealed class Ros1Dsr_msgsSetUserCartCoord2ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsSetUserCartCoord2Response>
    {
        public static readonly Ros1Dsr_msgsSetUserCartCoord2ResponseCodec Instance = new Ros1Dsr_msgsSetUserCartCoord2ResponseCodec();

        private Ros1Dsr_msgsSetUserCartCoord2ResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/SetUserCartCoord2Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_01ce185d3b4585bfdb9187c7b3cf628874da91fdd8c289a5b72d7bcb0e84880d";
        public const int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;

        public byte[] Encode(_Ros1Dsr_msgsSetUserCartCoord2Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsSetUserCartCoord2Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsSetUserCartCoord2Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsSetUserCartCoord2Response value = ReadRos1Dsr_msgsSetUserCartCoord2Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsSetUserCartCoord2Response(_Codecs.Writer writer, _Ros1Dsr_msgsSetUserCartCoord2Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        sbyte part0 = value.@id;
        writer.Unsigned(unchecked((byte)part0), 1);
        bool part1 = value.@success;
        writer.Unsigned(part1 ? 1UL : 0UL, 1);
    }

    private static _Ros1Dsr_msgsSetUserCartCoord2Response ReadRos1Dsr_msgsSetUserCartCoord2Response(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsSetUserCartCoord2Response();
        value.@id = unchecked((sbyte)reader.Unsigned(1));
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros1Dsr_msgsSetUserCartCoord3Request
    {
        public double[] @u1 = new double[3];
        public double[] @v1 = new double[3];
        public double[] @pos = new double[6];
        public sbyte @ref = 0;

        public _Ros1Dsr_msgsSetUserCartCoord3Request()
        {
        }
    }

    public sealed class Ros1Dsr_msgsSetUserCartCoord3RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsSetUserCartCoord3Request>
    {
        public static readonly Ros1Dsr_msgsSetUserCartCoord3RequestCodec Instance = new Ros1Dsr_msgsSetUserCartCoord3RequestCodec();

        private Ros1Dsr_msgsSetUserCartCoord3RequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/SetUserCartCoord3Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_a8a9aa12ff690f1a26223248b0c84537b7fe23ffa0af33be0ef0c99092f78c3c";
        public const int MIN_WIRE_BYTES = 97, MAX_WIRE_BYTES = 97;

        public byte[] Encode(_Ros1Dsr_msgsSetUserCartCoord3Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsSetUserCartCoord3Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsSetUserCartCoord3Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsSetUserCartCoord3Request value = ReadRos1Dsr_msgsSetUserCartCoord3Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsSetUserCartCoord3Request(_Codecs.Writer writer, _Ros1Dsr_msgsSetUserCartCoord3Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        double[] part0 = value.@u1;
        if(part0 == null || part0.Length != 3)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part0.Length; ++index)
        {
            double element = part0[index];
            writer.Float64(element);
        }
        double[] part1 = value.@v1;
        if(part1 == null || part1.Length != 3)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part1.Length; ++index)
        {
            double element = part1[index];
            writer.Float64(element);
        }
        double[] part2 = value.@pos;
        if(part2 == null || part2.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part2.Length; ++index)
        {
            double element = part2[index];
            writer.Float64(element);
        }
        sbyte part3 = value.@ref;
        writer.Unsigned(unchecked((byte)part3), 1);
    }

    private static _Ros1Dsr_msgsSetUserCartCoord3Request ReadRos1Dsr_msgsSetUserCartCoord3Request(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsSetUserCartCoord3Request();
        value.@u1 = new double[3];
        for(int index = 0; index < value.@u1.Length; ++index)
            value.@u1[index] = reader.Float64();
        value.@v1 = new double[3];
        for(int index = 0; index < value.@v1.Length; ++index)
            value.@v1[index] = reader.Float64();
        value.@pos = new double[6];
        for(int index = 0; index < value.@pos.Length; ++index)
            value.@pos[index] = reader.Float64();
        value.@ref = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    public sealed class _Ros1Dsr_msgsSetUserCartCoord3Response
    {
        public sbyte @id = 0;
        public bool @success = false;

        public _Ros1Dsr_msgsSetUserCartCoord3Response()
        {
        }
    }

    public sealed class Ros1Dsr_msgsSetUserCartCoord3ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsSetUserCartCoord3Response>
    {
        public static readonly Ros1Dsr_msgsSetUserCartCoord3ResponseCodec Instance = new Ros1Dsr_msgsSetUserCartCoord3ResponseCodec();

        private Ros1Dsr_msgsSetUserCartCoord3ResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/SetUserCartCoord3Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_9409ea43f5b28fc6aa7c1089c69e828edda3440a50e1c35b5f8b8ca600d11fd1";
        public const int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;

        public byte[] Encode(_Ros1Dsr_msgsSetUserCartCoord3Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsSetUserCartCoord3Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsSetUserCartCoord3Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsSetUserCartCoord3Response value = ReadRos1Dsr_msgsSetUserCartCoord3Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsSetUserCartCoord3Response(_Codecs.Writer writer, _Ros1Dsr_msgsSetUserCartCoord3Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        sbyte part0 = value.@id;
        writer.Unsigned(unchecked((byte)part0), 1);
        bool part1 = value.@success;
        writer.Unsigned(part1 ? 1UL : 0UL, 1);
    }

    private static _Ros1Dsr_msgsSetUserCartCoord3Response ReadRos1Dsr_msgsSetUserCartCoord3Response(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsSetUserCartCoord3Response();
        value.@id = unchecked((sbyte)reader.Unsigned(1));
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros1Dsr_msgsSetVelJRTRequest
    {
        public double[] @vel = new double[6];

        public _Ros1Dsr_msgsSetVelJRTRequest()
        {
        }
    }

    public sealed class Ros1Dsr_msgsSetVelJRTRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsSetVelJRTRequest>
    {
        public static readonly Ros1Dsr_msgsSetVelJRTRequestCodec Instance = new Ros1Dsr_msgsSetVelJRTRequestCodec();

        private Ros1Dsr_msgsSetVelJRTRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/SetVelJRTRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_bde411c75906468cfbbd4a3da157be4c66755a4e2c73e5db0c87eb5414a40768";
        public const int MIN_WIRE_BYTES = 48, MAX_WIRE_BYTES = 48;

        public byte[] Encode(_Ros1Dsr_msgsSetVelJRTRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsSetVelJRTRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsSetVelJRTRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsSetVelJRTRequest value = ReadRos1Dsr_msgsSetVelJRTRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsSetVelJRTRequest(_Codecs.Writer writer, _Ros1Dsr_msgsSetVelJRTRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        double[] part0 = value.@vel;
        if(part0 == null || part0.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part0.Length; ++index)
        {
            double element = part0[index];
            writer.Float64(element);
        }
    }

    private static _Ros1Dsr_msgsSetVelJRTRequest ReadRos1Dsr_msgsSetVelJRTRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsSetVelJRTRequest();
        value.@vel = new double[6];
        for(int index = 0; index < value.@vel.Length; ++index)
            value.@vel[index] = reader.Float64();
        return value;
    }

    public sealed class _Ros1Dsr_msgsSetVelJRTResponse
    {
        public bool @success = false;

        public _Ros1Dsr_msgsSetVelJRTResponse()
        {
        }
    }

    public sealed class Ros1Dsr_msgsSetVelJRTResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsSetVelJRTResponse>
    {
        public static readonly Ros1Dsr_msgsSetVelJRTResponseCodec Instance = new Ros1Dsr_msgsSetVelJRTResponseCodec();

        private Ros1Dsr_msgsSetVelJRTResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/SetVelJRTResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_2e671f1ce71584ee764eb88431dc883a1759312126cc722e6abb91718eb4cd3f";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros1Dsr_msgsSetVelJRTResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsSetVelJRTResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsSetVelJRTResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsSetVelJRTResponse value = ReadRos1Dsr_msgsSetVelJRTResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsSetVelJRTResponse(_Codecs.Writer writer, _Ros1Dsr_msgsSetVelJRTResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros1Dsr_msgsSetVelJRTResponse ReadRos1Dsr_msgsSetVelJRTResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsSetVelJRTResponse();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros1Dsr_msgsSetVelXRTRequest
    {
        public double @trans = 0;
        public double @rotation = 0;

        public _Ros1Dsr_msgsSetVelXRTRequest()
        {
        }
    }

    public sealed class Ros1Dsr_msgsSetVelXRTRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsSetVelXRTRequest>
    {
        public static readonly Ros1Dsr_msgsSetVelXRTRequestCodec Instance = new Ros1Dsr_msgsSetVelXRTRequestCodec();

        private Ros1Dsr_msgsSetVelXRTRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/SetVelXRTRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_62043248325fe8c561c26c914c702a17469c3e020542760f40dab518190a29e8";
        public const int MIN_WIRE_BYTES = 16, MAX_WIRE_BYTES = 16;

        public byte[] Encode(_Ros1Dsr_msgsSetVelXRTRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsSetVelXRTRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsSetVelXRTRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsSetVelXRTRequest value = ReadRos1Dsr_msgsSetVelXRTRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsSetVelXRTRequest(_Codecs.Writer writer, _Ros1Dsr_msgsSetVelXRTRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        double part0 = value.@trans;
        writer.Float64(part0);
        double part1 = value.@rotation;
        writer.Float64(part1);
    }

    private static _Ros1Dsr_msgsSetVelXRTRequest ReadRos1Dsr_msgsSetVelXRTRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsSetVelXRTRequest();
        value.@trans = reader.Float64();
        value.@rotation = reader.Float64();
        return value;
    }

    public sealed class _Ros1Dsr_msgsSetVelXRTResponse
    {
        public bool @success = false;

        public _Ros1Dsr_msgsSetVelXRTResponse()
        {
        }
    }

    public sealed class Ros1Dsr_msgsSetVelXRTResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsSetVelXRTResponse>
    {
        public static readonly Ros1Dsr_msgsSetVelXRTResponseCodec Instance = new Ros1Dsr_msgsSetVelXRTResponseCodec();

        private Ros1Dsr_msgsSetVelXRTResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/SetVelXRTResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_88fa186a19c4591d69e31ae18a8121fa28beec749c78c6c3ad92885d95947119";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros1Dsr_msgsSetVelXRTResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsSetVelXRTResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsSetVelXRTResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsSetVelXRTResponse value = ReadRos1Dsr_msgsSetVelXRTResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsSetVelXRTResponse(_Codecs.Writer writer, _Ros1Dsr_msgsSetVelXRTResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros1Dsr_msgsSetVelXRTResponse ReadRos1Dsr_msgsSetVelXRTResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsSetVelXRTResponse();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros1Dsr_msgsSpeedJRTStream
    {
        public double[] @vel = new double[6];
        public double[] @acc = new double[6];
        public double @time = 0;

        public _Ros1Dsr_msgsSpeedJRTStream()
        {
        }
    }

    public sealed class Ros1Dsr_msgsSpeedJRTStreamCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsSpeedJRTStream>
    {
        public static readonly Ros1Dsr_msgsSpeedJRTStreamCodec Instance = new Ros1Dsr_msgsSpeedJRTStreamCodec();

        private Ros1Dsr_msgsSpeedJRTStreamCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/SpeedJRTStream";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_c99c5b844f12da3d0a2b4d1f44e88dbedc66be70a4576def8bb59593d4c3a780";
        public const int MIN_WIRE_BYTES = 104, MAX_WIRE_BYTES = 104;

        public byte[] Encode(_Ros1Dsr_msgsSpeedJRTStream value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsSpeedJRTStream(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsSpeedJRTStream Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsSpeedJRTStream value = ReadRos1Dsr_msgsSpeedJRTStream(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsSpeedJRTStream(_Codecs.Writer writer, _Ros1Dsr_msgsSpeedJRTStream value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        double[] part0 = value.@vel;
        if(part0 == null || part0.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part0.Length; ++index)
        {
            double element = part0[index];
            writer.Float64(element);
        }
        double[] part1 = value.@acc;
        if(part1 == null || part1.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part1.Length; ++index)
        {
            double element = part1[index];
            writer.Float64(element);
        }
        double part2 = value.@time;
        writer.Float64(part2);
    }

    private static _Ros1Dsr_msgsSpeedJRTStream ReadRos1Dsr_msgsSpeedJRTStream(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsSpeedJRTStream();
        value.@vel = new double[6];
        for(int index = 0; index < value.@vel.Length; ++index)
            value.@vel[index] = reader.Float64();
        value.@acc = new double[6];
        for(int index = 0; index < value.@acc.Length; ++index)
            value.@acc[index] = reader.Float64();
        value.@time = reader.Float64();
        return value;
    }

    public sealed class _Ros1Dsr_msgsSpeedJStream
    {
        public double[] @vel = new double[6];
        public double[] @acc = new double[6];
        public double @time = 0;

        public _Ros1Dsr_msgsSpeedJStream()
        {
        }
    }

    public sealed class Ros1Dsr_msgsSpeedJStreamCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsSpeedJStream>
    {
        public static readonly Ros1Dsr_msgsSpeedJStreamCodec Instance = new Ros1Dsr_msgsSpeedJStreamCodec();

        private Ros1Dsr_msgsSpeedJStreamCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/SpeedJStream";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_7042ec2c204507e699747702d4e22a4eb704b9ca077ec270311196f779d2532f";
        public const int MIN_WIRE_BYTES = 104, MAX_WIRE_BYTES = 104;

        public byte[] Encode(_Ros1Dsr_msgsSpeedJStream value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsSpeedJStream(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsSpeedJStream Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsSpeedJStream value = ReadRos1Dsr_msgsSpeedJStream(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsSpeedJStream(_Codecs.Writer writer, _Ros1Dsr_msgsSpeedJStream value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        double[] part0 = value.@vel;
        if(part0 == null || part0.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part0.Length; ++index)
        {
            double element = part0[index];
            writer.Float64(element);
        }
        double[] part1 = value.@acc;
        if(part1 == null || part1.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part1.Length; ++index)
        {
            double element = part1[index];
            writer.Float64(element);
        }
        double part2 = value.@time;
        writer.Float64(part2);
    }

    private static _Ros1Dsr_msgsSpeedJStream ReadRos1Dsr_msgsSpeedJStream(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsSpeedJStream();
        value.@vel = new double[6];
        for(int index = 0; index < value.@vel.Length; ++index)
            value.@vel[index] = reader.Float64();
        value.@acc = new double[6];
        for(int index = 0; index < value.@acc.Length; ++index)
            value.@acc[index] = reader.Float64();
        value.@time = reader.Float64();
        return value;
    }

    public sealed class _Ros1Dsr_msgsSpeedLRTStream
    {
        public double[] @vel = new double[6];
        public double[] @acc = new double[6];
        public double @time = 0;

        public _Ros1Dsr_msgsSpeedLRTStream()
        {
        }
    }

    public sealed class Ros1Dsr_msgsSpeedLRTStreamCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsSpeedLRTStream>
    {
        public static readonly Ros1Dsr_msgsSpeedLRTStreamCodec Instance = new Ros1Dsr_msgsSpeedLRTStreamCodec();

        private Ros1Dsr_msgsSpeedLRTStreamCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/SpeedLRTStream";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_2f95bdb3b90ca295355faa1667221774ba1932dd50fa9e87d05cc16168a664cc";
        public const int MIN_WIRE_BYTES = 104, MAX_WIRE_BYTES = 104;

        public byte[] Encode(_Ros1Dsr_msgsSpeedLRTStream value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsSpeedLRTStream(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsSpeedLRTStream Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsSpeedLRTStream value = ReadRos1Dsr_msgsSpeedLRTStream(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsSpeedLRTStream(_Codecs.Writer writer, _Ros1Dsr_msgsSpeedLRTStream value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        double[] part0 = value.@vel;
        if(part0 == null || part0.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part0.Length; ++index)
        {
            double element = part0[index];
            writer.Float64(element);
        }
        double[] part1 = value.@acc;
        if(part1 == null || part1.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part1.Length; ++index)
        {
            double element = part1[index];
            writer.Float64(element);
        }
        double part2 = value.@time;
        writer.Float64(part2);
    }

    private static _Ros1Dsr_msgsSpeedLRTStream ReadRos1Dsr_msgsSpeedLRTStream(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsSpeedLRTStream();
        value.@vel = new double[6];
        for(int index = 0; index < value.@vel.Length; ++index)
            value.@vel[index] = reader.Float64();
        value.@acc = new double[6];
        for(int index = 0; index < value.@acc.Length; ++index)
            value.@acc[index] = reader.Float64();
        value.@time = reader.Float64();
        return value;
    }

    public sealed class _Ros1Dsr_msgsSpeedLStream
    {
        public double[] @vel = new double[6];
        public double[] @acc = new double[2];
        public double @time = 0;

        public _Ros1Dsr_msgsSpeedLStream()
        {
        }
    }

    public sealed class Ros1Dsr_msgsSpeedLStreamCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsSpeedLStream>
    {
        public static readonly Ros1Dsr_msgsSpeedLStreamCodec Instance = new Ros1Dsr_msgsSpeedLStreamCodec();

        private Ros1Dsr_msgsSpeedLStreamCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/SpeedLStream";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_9f6f75583bddd6dc3e6bb3b79fbe66db3a1076c58a48e887ebcf88e8587058eb";
        public const int MIN_WIRE_BYTES = 72, MAX_WIRE_BYTES = 72;

        public byte[] Encode(_Ros1Dsr_msgsSpeedLStream value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsSpeedLStream(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsSpeedLStream Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsSpeedLStream value = ReadRos1Dsr_msgsSpeedLStream(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsSpeedLStream(_Codecs.Writer writer, _Ros1Dsr_msgsSpeedLStream value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        double[] part0 = value.@vel;
        if(part0 == null || part0.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part0.Length; ++index)
        {
            double element = part0[index];
            writer.Float64(element);
        }
        double[] part1 = value.@acc;
        if(part1 == null || part1.Length != 2)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part1.Length; ++index)
        {
            double element = part1[index];
            writer.Float64(element);
        }
        double part2 = value.@time;
        writer.Float64(part2);
    }

    private static _Ros1Dsr_msgsSpeedLStream ReadRos1Dsr_msgsSpeedLStream(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsSpeedLStream();
        value.@vel = new double[6];
        for(int index = 0; index < value.@vel.Length; ++index)
            value.@vel[index] = reader.Float64();
        value.@acc = new double[2];
        for(int index = 0; index < value.@acc.Length; ++index)
            value.@acc[index] = reader.Float64();
        value.@time = reader.Float64();
        return value;
    }

    public sealed class _Ros1Dsr_msgsStartRTControlRequest
    {
        public _Ros1Dsr_msgsStartRTControlRequest()
        {
        }
    }

    public sealed class Ros1Dsr_msgsStartRTControlRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsStartRTControlRequest>
    {
        public static readonly Ros1Dsr_msgsStartRTControlRequestCodec Instance = new Ros1Dsr_msgsStartRTControlRequestCodec();

        private Ros1Dsr_msgsStartRTControlRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/StartRTControlRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_37b1255c34ebbba47ef2cca802168237a90aa2b52032fea64efa4517332a85ac";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public byte[] Encode(_Ros1Dsr_msgsStartRTControlRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsStartRTControlRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsStartRTControlRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsStartRTControlRequest value = ReadRos1Dsr_msgsStartRTControlRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsStartRTControlRequest(_Codecs.Writer writer, _Ros1Dsr_msgsStartRTControlRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    private static _Ros1Dsr_msgsStartRTControlRequest ReadRos1Dsr_msgsStartRTControlRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsStartRTControlRequest();
        return value;
    }

    public sealed class _Ros1Dsr_msgsStartRTControlResponse
    {
        public bool @success = false;

        public _Ros1Dsr_msgsStartRTControlResponse()
        {
        }
    }

    public sealed class Ros1Dsr_msgsStartRTControlResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsStartRTControlResponse>
    {
        public static readonly Ros1Dsr_msgsStartRTControlResponseCodec Instance = new Ros1Dsr_msgsStartRTControlResponseCodec();

        private Ros1Dsr_msgsStartRTControlResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/StartRTControlResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_0f2be11b260cd9286c55ac65dc7f675701ba130eb2d81c2c8fba592c605216de";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros1Dsr_msgsStartRTControlResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsStartRTControlResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsStartRTControlResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsStartRTControlResponse value = ReadRos1Dsr_msgsStartRTControlResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsStartRTControlResponse(_Codecs.Writer writer, _Ros1Dsr_msgsStartRTControlResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros1Dsr_msgsStartRTControlResponse ReadRos1Dsr_msgsStartRTControlResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsStartRTControlResponse();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros1Dsr_msgsStopRTControlRequest
    {
        public _Ros1Dsr_msgsStopRTControlRequest()
        {
        }
    }

    public sealed class Ros1Dsr_msgsStopRTControlRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsStopRTControlRequest>
    {
        public static readonly Ros1Dsr_msgsStopRTControlRequestCodec Instance = new Ros1Dsr_msgsStopRTControlRequestCodec();

        private Ros1Dsr_msgsStopRTControlRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/StopRTControlRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_1163e97603c5de79aed634642587128d6ca9d0a64d5eef1e73502c4479e1c6ce";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public byte[] Encode(_Ros1Dsr_msgsStopRTControlRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsStopRTControlRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsStopRTControlRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsStopRTControlRequest value = ReadRos1Dsr_msgsStopRTControlRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsStopRTControlRequest(_Codecs.Writer writer, _Ros1Dsr_msgsStopRTControlRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    private static _Ros1Dsr_msgsStopRTControlRequest ReadRos1Dsr_msgsStopRTControlRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsStopRTControlRequest();
        return value;
    }

    public sealed class _Ros1Dsr_msgsStopRTControlResponse
    {
        public bool @success = false;

        public _Ros1Dsr_msgsStopRTControlResponse()
        {
        }
    }

    public sealed class Ros1Dsr_msgsStopRTControlResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsStopRTControlResponse>
    {
        public static readonly Ros1Dsr_msgsStopRTControlResponseCodec Instance = new Ros1Dsr_msgsStopRTControlResponseCodec();

        private Ros1Dsr_msgsStopRTControlResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/StopRTControlResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_49ed2b792c0872d3fce723e09b2bb01fad52370f7674f438d2c0fc99422ffe62";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros1Dsr_msgsStopRTControlResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsStopRTControlResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsStopRTControlResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsStopRTControlResponse value = ReadRos1Dsr_msgsStopRTControlResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsStopRTControlResponse(_Codecs.Writer writer, _Ros1Dsr_msgsStopRTControlResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros1Dsr_msgsStopRTControlResponse ReadRos1Dsr_msgsStopRTControlResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsStopRTControlResponse();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros1Dsr_msgsTaskComplianceCtrlRequest
    {
        public double[] @stx = new double[6];
        public sbyte @ref = 0;
        public double @time = 0;

        public _Ros1Dsr_msgsTaskComplianceCtrlRequest()
        {
        }
    }

    public sealed class Ros1Dsr_msgsTaskComplianceCtrlRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsTaskComplianceCtrlRequest>
    {
        public static readonly Ros1Dsr_msgsTaskComplianceCtrlRequestCodec Instance = new Ros1Dsr_msgsTaskComplianceCtrlRequestCodec();

        private Ros1Dsr_msgsTaskComplianceCtrlRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/TaskComplianceCtrlRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_05fa479a787001504e982b77fd61e6a3e6bb2a7cbc34ff900fa12634d8842671";
        public const int MIN_WIRE_BYTES = 57, MAX_WIRE_BYTES = 57;

        public byte[] Encode(_Ros1Dsr_msgsTaskComplianceCtrlRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsTaskComplianceCtrlRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsTaskComplianceCtrlRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsTaskComplianceCtrlRequest value = ReadRos1Dsr_msgsTaskComplianceCtrlRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsTaskComplianceCtrlRequest(_Codecs.Writer writer, _Ros1Dsr_msgsTaskComplianceCtrlRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        double[] part0 = value.@stx;
        if(part0 == null || part0.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part0.Length; ++index)
        {
            double element = part0[index];
            writer.Float64(element);
        }
        sbyte part1 = value.@ref;
        writer.Unsigned(unchecked((byte)part1), 1);
        double part2 = value.@time;
        writer.Float64(part2);
    }

    private static _Ros1Dsr_msgsTaskComplianceCtrlRequest ReadRos1Dsr_msgsTaskComplianceCtrlRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsTaskComplianceCtrlRequest();
        value.@stx = new double[6];
        for(int index = 0; index < value.@stx.Length; ++index)
            value.@stx[index] = reader.Float64();
        value.@ref = unchecked((sbyte)reader.Unsigned(1));
        value.@time = reader.Float64();
        return value;
    }

    public sealed class _Ros1Dsr_msgsTaskComplianceCtrlResponse
    {
        public bool @success = false;

        public _Ros1Dsr_msgsTaskComplianceCtrlResponse()
        {
        }
    }

    public sealed class Ros1Dsr_msgsTaskComplianceCtrlResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsTaskComplianceCtrlResponse>
    {
        public static readonly Ros1Dsr_msgsTaskComplianceCtrlResponseCodec Instance = new Ros1Dsr_msgsTaskComplianceCtrlResponseCodec();

        private Ros1Dsr_msgsTaskComplianceCtrlResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/TaskComplianceCtrlResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_29c513521ec8c6ac5c39bf1cb12d8db19a025a2036fb0398633b544d53c39625";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros1Dsr_msgsTaskComplianceCtrlResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsTaskComplianceCtrlResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsTaskComplianceCtrlResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsTaskComplianceCtrlResponse value = ReadRos1Dsr_msgsTaskComplianceCtrlResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsTaskComplianceCtrlResponse(_Codecs.Writer writer, _Ros1Dsr_msgsTaskComplianceCtrlResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros1Dsr_msgsTaskComplianceCtrlResponse ReadRos1Dsr_msgsTaskComplianceCtrlResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsTaskComplianceCtrlResponse();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros1Dsr_msgsTorqueRTStream
    {
        public double[] @tor = new double[6];
        public double @time = 0;

        public _Ros1Dsr_msgsTorqueRTStream()
        {
        }
    }

    public sealed class Ros1Dsr_msgsTorqueRTStreamCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsTorqueRTStream>
    {
        public static readonly Ros1Dsr_msgsTorqueRTStreamCodec Instance = new Ros1Dsr_msgsTorqueRTStreamCodec();

        private Ros1Dsr_msgsTorqueRTStreamCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/TorqueRTStream";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_6c6f5462dec4f5990ef5cd6d64ffde89f092d590498dc97cf347caa06635d545";
        public const int MIN_WIRE_BYTES = 56, MAX_WIRE_BYTES = 56;

        public byte[] Encode(_Ros1Dsr_msgsTorqueRTStream value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsTorqueRTStream(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsTorqueRTStream Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsTorqueRTStream value = ReadRos1Dsr_msgsTorqueRTStream(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsTorqueRTStream(_Codecs.Writer writer, _Ros1Dsr_msgsTorqueRTStream value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        double[] part0 = value.@tor;
        if(part0 == null || part0.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part0.Length; ++index)
        {
            double element = part0[index];
            writer.Float64(element);
        }
        double part1 = value.@time;
        writer.Float64(part1);
    }

    private static _Ros1Dsr_msgsTorqueRTStream ReadRos1Dsr_msgsTorqueRTStream(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsTorqueRTStream();
        value.@tor = new double[6];
        for(int index = 0; index < value.@tor.Length; ++index)
            value.@tor[index] = reader.Float64();
        value.@time = reader.Float64();
        return value;
    }

    public sealed class _Ros1Dsr_msgsTransRequest
    {
        public double[] @pos = new double[6];
        public double[] @delta = new double[6];
        public sbyte @ref = 0;
        public sbyte @ref_out = 0;

        public _Ros1Dsr_msgsTransRequest()
        {
        }
    }

    public sealed class Ros1Dsr_msgsTransRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsTransRequest>
    {
        public static readonly Ros1Dsr_msgsTransRequestCodec Instance = new Ros1Dsr_msgsTransRequestCodec();

        private Ros1Dsr_msgsTransRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/TransRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_6724ac7a62b77d6d6e52145306c4ac5a0e05221a636fb5cd0048e185ddcee273";
        public const int MIN_WIRE_BYTES = 98, MAX_WIRE_BYTES = 98;

        public byte[] Encode(_Ros1Dsr_msgsTransRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsTransRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsTransRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsTransRequest value = ReadRos1Dsr_msgsTransRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsTransRequest(_Codecs.Writer writer, _Ros1Dsr_msgsTransRequest value)
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
        double[] part1 = value.@delta;
        if(part1 == null || part1.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part1.Length; ++index)
        {
            double element = part1[index];
            writer.Float64(element);
        }
        sbyte part2 = value.@ref;
        writer.Unsigned(unchecked((byte)part2), 1);
        sbyte part3 = value.@ref_out;
        writer.Unsigned(unchecked((byte)part3), 1);
    }

    private static _Ros1Dsr_msgsTransRequest ReadRos1Dsr_msgsTransRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsTransRequest();
        value.@pos = new double[6];
        for(int index = 0; index < value.@pos.Length; ++index)
            value.@pos[index] = reader.Float64();
        value.@delta = new double[6];
        for(int index = 0; index < value.@delta.Length; ++index)
            value.@delta[index] = reader.Float64();
        value.@ref = unchecked((sbyte)reader.Unsigned(1));
        value.@ref_out = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    public sealed class _Ros1Dsr_msgsTransResponse
    {
        public double[] @trans_pos = new double[6];
        public bool @success = false;

        public _Ros1Dsr_msgsTransResponse()
        {
        }
    }

    public sealed class Ros1Dsr_msgsTransResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsTransResponse>
    {
        public static readonly Ros1Dsr_msgsTransResponseCodec Instance = new Ros1Dsr_msgsTransResponseCodec();

        private Ros1Dsr_msgsTransResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/TransResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_a36593de3d68fc991b3cf230f98c28f1f1d9fa0fc72e3160a5f005d9cb6105e5";
        public const int MIN_WIRE_BYTES = 49, MAX_WIRE_BYTES = 49;

        public byte[] Encode(_Ros1Dsr_msgsTransResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsTransResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsTransResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsTransResponse value = ReadRos1Dsr_msgsTransResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsTransResponse(_Codecs.Writer writer, _Ros1Dsr_msgsTransResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        double[] part0 = value.@trans_pos;
        if(part0 == null || part0.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part0.Length; ++index)
        {
            double element = part0[index];
            writer.Float64(element);
        }
        bool part1 = value.@success;
        writer.Unsigned(part1 ? 1UL : 0UL, 1);
    }

    private static _Ros1Dsr_msgsTransResponse ReadRos1Dsr_msgsTransResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsTransResponse();
        value.@trans_pos = new double[6];
        for(int index = 0; index < value.@trans_pos.Length; ++index)
            value.@trans_pos[index] = reader.Float64();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros1Dsr_msgsWriteDataRTRequest
    {
        public double[] @external_force_torque = new double[6];
        public int @external_digital_input = 0;
        public int @external_digital_output = 0;
        public double[] @external_analog_input = new double[6];
        public double[] @external_analog_output = new double[6];

        public _Ros1Dsr_msgsWriteDataRTRequest()
        {
        }
    }

    public sealed class Ros1Dsr_msgsWriteDataRTRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsWriteDataRTRequest>
    {
        public static readonly Ros1Dsr_msgsWriteDataRTRequestCodec Instance = new Ros1Dsr_msgsWriteDataRTRequestCodec();

        private Ros1Dsr_msgsWriteDataRTRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/WriteDataRTRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_300128a7619804166443a58c387f127d670f91724c8f642fd5b0884c317db73e";
        public const int MIN_WIRE_BYTES = 152, MAX_WIRE_BYTES = 152;

        public byte[] Encode(_Ros1Dsr_msgsWriteDataRTRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsWriteDataRTRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsWriteDataRTRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsWriteDataRTRequest value = ReadRos1Dsr_msgsWriteDataRTRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsWriteDataRTRequest(_Codecs.Writer writer, _Ros1Dsr_msgsWriteDataRTRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        double[] part0 = value.@external_force_torque;
        if(part0 == null || part0.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part0.Length; ++index)
        {
            double element = part0[index];
            writer.Float64(element);
        }
        int part1 = value.@external_digital_input;
        writer.Unsigned(unchecked((uint)part1), 4);
        int part2 = value.@external_digital_output;
        writer.Unsigned(unchecked((uint)part2), 4);
        double[] part3 = value.@external_analog_input;
        if(part3 == null || part3.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part3.Length; ++index)
        {
            double element = part3[index];
            writer.Float64(element);
        }
        double[] part4 = value.@external_analog_output;
        if(part4 == null || part4.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part4.Length; ++index)
        {
            double element = part4[index];
            writer.Float64(element);
        }
    }

    private static _Ros1Dsr_msgsWriteDataRTRequest ReadRos1Dsr_msgsWriteDataRTRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsWriteDataRTRequest();
        value.@external_force_torque = new double[6];
        for(int index = 0; index < value.@external_force_torque.Length; ++index)
            value.@external_force_torque[index] = reader.Float64();
        value.@external_digital_input = unchecked((int)reader.Unsigned(4));
        value.@external_digital_output = unchecked((int)reader.Unsigned(4));
        value.@external_analog_input = new double[6];
        for(int index = 0; index < value.@external_analog_input.Length; ++index)
            value.@external_analog_input[index] = reader.Float64();
        value.@external_analog_output = new double[6];
        for(int index = 0; index < value.@external_analog_output.Length; ++index)
            value.@external_analog_output[index] = reader.Float64();
        return value;
    }

    public sealed class _Ros1Dsr_msgsWriteDataRTResponse
    {
        public bool @success = false;

        public _Ros1Dsr_msgsWriteDataRTResponse()
        {
        }
    }

    public sealed class Ros1Dsr_msgsWriteDataRTResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Dsr_msgsWriteDataRTResponse>
    {
        public static readonly Ros1Dsr_msgsWriteDataRTResponseCodec Instance = new Ros1Dsr_msgsWriteDataRTResponseCodec();

        private Ros1Dsr_msgsWriteDataRTResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "dsr_msgs/WriteDataRTResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_f1d97ee43375db129025b3c587979ca7ffacb06c66d54d829c5590c7c8943d5c";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros1Dsr_msgsWriteDataRTResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Dsr_msgsWriteDataRTResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Dsr_msgsWriteDataRTResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Dsr_msgsWriteDataRTResponse value = ReadRos1Dsr_msgsWriteDataRTResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Dsr_msgsWriteDataRTResponse(_Codecs.Writer writer, _Ros1Dsr_msgsWriteDataRTResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros1Dsr_msgsWriteDataRTResponse ReadRos1Dsr_msgsWriteDataRTResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Dsr_msgsWriteDataRTResponse();
        value.@success = ReadBool(reader);
        return value;
    }
}
