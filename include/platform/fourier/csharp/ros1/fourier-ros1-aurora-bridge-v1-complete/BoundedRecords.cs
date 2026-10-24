/**
 * @file BoundedRecords.cs
 * @brief Full fourier csharp codecs and original record metadata.
 * @details Complete fourier ros1_aurora_bridge_v1 values in csharp. 51 original records retain 138 fields and 28
 * interface descriptions. Scalar widths, bounds, units, defaults and identities follow the pinned native
 * definitions. Encoding is local; compiler, guest and native ROS acceptance require separate receipts. See the
 * profile API manual under document/platform/fourier/en_US/catalog/.
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

    public sealed class _Ros1Uwvm_fourier_bridgeMotionRecipe
    {
        public byte @move_type = 0;
        public string @group = "";
        public double[] @position = new double[0];
        public bool @has_velocity = false;
        public double[] @velocity = new double[0];
        public int @expected_velocity = 0;

        public _Ros1Uwvm_fourier_bridgeMotionRecipe()
        {
        }
    }

    public sealed class Ros1Uwvm_fourier_bridgeMotionRecipeCodec : global::Uwvm.RosWasm.ICodec<_Ros1Uwvm_fourier_bridgeMotionRecipe>
    {
        public static readonly Ros1Uwvm_fourier_bridgeMotionRecipeCodec Instance = new Ros1Uwvm_fourier_bridgeMotionRecipeCodec();

        private Ros1Uwvm_fourier_bridgeMotionRecipeCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "uwvm_fourier_bridge/MotionRecipe";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_f154f5af7297a77af5c7ab98bc78c54cb0163760dfe7b1eadedb02318cfbfd8a";
        public const int MIN_WIRE_BYTES = 18, MAX_WIRE_BYTES = 1170;

        public byte[] Encode(_Ros1Uwvm_fourier_bridgeMotionRecipe value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Uwvm_fourier_bridgeMotionRecipe(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Uwvm_fourier_bridgeMotionRecipe Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Uwvm_fourier_bridgeMotionRecipe value = ReadRos1Uwvm_fourier_bridgeMotionRecipe(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Uwvm_fourier_bridgeMotionRecipe(_Codecs.Writer writer, _Ros1Uwvm_fourier_bridgeMotionRecipe value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        byte part0 = value.@move_type;
        writer.Unsigned(part0, 1);
        string part1 = value.@group;
        WriteText(writer, part1, 128);
        double[] part2 = value.@position;
        if(part2 == null || part2.Length > 64)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part2.Length, 4);
        for(int index = 0; index < part2.Length; ++index)
        {
            double element = part2[index];
            writer.Float64(element);
        }
        bool part3 = value.@has_velocity;
        writer.Unsigned(part3 ? 1UL : 0UL, 1);
        double[] part4 = value.@velocity;
        if(part4 == null || part4.Length > 64)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part4.Length, 4);
        for(int index = 0; index < part4.Length; ++index)
        {
            double element = part4[index];
            writer.Float64(element);
        }
        int part5 = value.@expected_velocity;
        writer.Unsigned(unchecked((uint)part5), 4);
    }

    private static _Ros1Uwvm_fourier_bridgeMotionRecipe ReadRos1Uwvm_fourier_bridgeMotionRecipe(_Codecs.Reader reader)
    {
        var value = new _Ros1Uwvm_fourier_bridgeMotionRecipe();
        value.@move_type = unchecked((byte)reader.Unsigned(1));
        value.@group = ReadText(reader, 128);
        value.@position = new double[ReadCount(reader, 64, 8)];
        for(int index = 0; index < value.@position.Length; ++index)
            value.@position[index] = reader.Float64();
        value.@has_velocity = ReadBool(reader);
        value.@velocity = new double[ReadCount(reader, 64, 8)];
        for(int index = 0; index < value.@velocity.Length; ++index)
            value.@velocity[index] = reader.Float64();
        value.@expected_velocity = unchecked((int)reader.Unsigned(4));
        return value;
    }

    public sealed class _Ros1Uwvm_fourier_bridgeExecuteMoveRequest
    {
        public ulong @sequence = 0;
        public _Ros1Uwvm_fourier_bridgeMotionRecipe[] @moves = new _Ros1Uwvm_fourier_bridgeMotionRecipe[0];

        public _Ros1Uwvm_fourier_bridgeExecuteMoveRequest()
        {
        }
    }

    public sealed class Ros1Uwvm_fourier_bridgeExecuteMoveRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Uwvm_fourier_bridgeExecuteMoveRequest>
    {
        public static readonly Ros1Uwvm_fourier_bridgeExecuteMoveRequestCodec Instance = new Ros1Uwvm_fourier_bridgeExecuteMoveRequestCodec();

        private Ros1Uwvm_fourier_bridgeExecuteMoveRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "uwvm_fourier_bridge/ExecuteMoveRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_25e369f6b32bdc9983664fd4d857000a6a664364cb8bd0ff3d123cbc3c87e61b";
        public const int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 9372;

        public byte[] Encode(_Ros1Uwvm_fourier_bridgeExecuteMoveRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Uwvm_fourier_bridgeExecuteMoveRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Uwvm_fourier_bridgeExecuteMoveRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Uwvm_fourier_bridgeExecuteMoveRequest value = ReadRos1Uwvm_fourier_bridgeExecuteMoveRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Uwvm_fourier_bridgeExecuteMoveRequest(_Codecs.Writer writer, _Ros1Uwvm_fourier_bridgeExecuteMoveRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        ulong part0 = value.@sequence;
        writer.Unsigned(part0, 8);
        _Ros1Uwvm_fourier_bridgeMotionRecipe[] part1 = value.@moves;
        if(part1 == null || part1.Length > 8)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part1.Length, 4);
        for(int index = 0; index < part1.Length; ++index)
        {
            _Ros1Uwvm_fourier_bridgeMotionRecipe element = part1[index];
            WriteRos1Uwvm_fourier_bridgeMotionRecipe(writer, element);
        }
    }

    private static _Ros1Uwvm_fourier_bridgeExecuteMoveRequest ReadRos1Uwvm_fourier_bridgeExecuteMoveRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Uwvm_fourier_bridgeExecuteMoveRequest();
        value.@sequence = unchecked((ulong)reader.Unsigned(8));
        value.@moves = new _Ros1Uwvm_fourier_bridgeMotionRecipe[ReadCount(reader, 8, 18)];
        for(int index = 0; index < value.@moves.Length; ++index)
            value.@moves[index] = ReadRos1Uwvm_fourier_bridgeMotionRecipe(reader);
        return value;
    }

    public sealed class _Ros1Uwvm_fourier_bridgeExecuteMoveResponse
    {
        public uint @status = 0;
        public string @error = "";

        public _Ros1Uwvm_fourier_bridgeExecuteMoveResponse()
        {
        }
    }

    public sealed class Ros1Uwvm_fourier_bridgeExecuteMoveResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Uwvm_fourier_bridgeExecuteMoveResponse>
    {
        public static readonly Ros1Uwvm_fourier_bridgeExecuteMoveResponseCodec Instance = new Ros1Uwvm_fourier_bridgeExecuteMoveResponseCodec();

        private Ros1Uwvm_fourier_bridgeExecuteMoveResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "uwvm_fourier_bridge/ExecuteMoveResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_9a801e77130d12c30d67a874cb1e8c5a7cc912a2968af304d1cfd263e6242115";
        public const int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 136;

        public byte[] Encode(_Ros1Uwvm_fourier_bridgeExecuteMoveResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Uwvm_fourier_bridgeExecuteMoveResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Uwvm_fourier_bridgeExecuteMoveResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Uwvm_fourier_bridgeExecuteMoveResponse value = ReadRos1Uwvm_fourier_bridgeExecuteMoveResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Uwvm_fourier_bridgeExecuteMoveResponse(_Codecs.Writer writer, _Ros1Uwvm_fourier_bridgeExecuteMoveResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        uint part0 = value.@status;
        writer.Unsigned(part0, 4);
        string part1 = value.@error;
        WriteText(writer, part1, 128);
    }

    private static _Ros1Uwvm_fourier_bridgeExecuteMoveResponse ReadRos1Uwvm_fourier_bridgeExecuteMoveResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Uwvm_fourier_bridgeExecuteMoveResponse();
        value.@status = unchecked((uint)reader.Unsigned(4));
        value.@error = ReadText(reader, 128);
        return value;
    }

    public sealed class _Ros1Uwvm_fourier_bridgeGetBaseDataRequest
    {
        public ulong @sequence = 0;
        public string @key = "";

        public _Ros1Uwvm_fourier_bridgeGetBaseDataRequest()
        {
        }
    }

    public sealed class Ros1Uwvm_fourier_bridgeGetBaseDataRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Uwvm_fourier_bridgeGetBaseDataRequest>
    {
        public static readonly Ros1Uwvm_fourier_bridgeGetBaseDataRequestCodec Instance = new Ros1Uwvm_fourier_bridgeGetBaseDataRequestCodec();

        private Ros1Uwvm_fourier_bridgeGetBaseDataRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "uwvm_fourier_bridge/GetBaseDataRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_17883b19f1dcc3d68263b6196eb5ec7afb8c902b8ab4f9b7eb66a58ef5e78528";
        public const int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 140;

        public byte[] Encode(_Ros1Uwvm_fourier_bridgeGetBaseDataRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Uwvm_fourier_bridgeGetBaseDataRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Uwvm_fourier_bridgeGetBaseDataRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Uwvm_fourier_bridgeGetBaseDataRequest value = ReadRos1Uwvm_fourier_bridgeGetBaseDataRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Uwvm_fourier_bridgeGetBaseDataRequest(_Codecs.Writer writer, _Ros1Uwvm_fourier_bridgeGetBaseDataRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        ulong part0 = value.@sequence;
        writer.Unsigned(part0, 8);
        string part1 = value.@key;
        WriteText(writer, part1, 128);
    }

    private static _Ros1Uwvm_fourier_bridgeGetBaseDataRequest ReadRos1Uwvm_fourier_bridgeGetBaseDataRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Uwvm_fourier_bridgeGetBaseDataRequest();
        value.@sequence = unchecked((ulong)reader.Unsigned(8));
        value.@key = ReadText(reader, 128);
        return value;
    }

    public sealed class _Ros1Uwvm_fourier_bridgeGetBaseDataResponse
    {
        public uint @status = 0;
        public string @error = "";
        public double[] @values = new double[0];

        public _Ros1Uwvm_fourier_bridgeGetBaseDataResponse()
        {
        }
    }

    public sealed class Ros1Uwvm_fourier_bridgeGetBaseDataResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Uwvm_fourier_bridgeGetBaseDataResponse>
    {
        public static readonly Ros1Uwvm_fourier_bridgeGetBaseDataResponseCodec Instance = new Ros1Uwvm_fourier_bridgeGetBaseDataResponseCodec();

        private Ros1Uwvm_fourier_bridgeGetBaseDataResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "uwvm_fourier_bridge/GetBaseDataResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_e8928e07d6dd18cfa8a7031e0a947fa6b2f36bb608f5d2178ec01b92bb78b79a";
        public const int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 652;

        public byte[] Encode(_Ros1Uwvm_fourier_bridgeGetBaseDataResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Uwvm_fourier_bridgeGetBaseDataResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Uwvm_fourier_bridgeGetBaseDataResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Uwvm_fourier_bridgeGetBaseDataResponse value = ReadRos1Uwvm_fourier_bridgeGetBaseDataResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Uwvm_fourier_bridgeGetBaseDataResponse(_Codecs.Writer writer, _Ros1Uwvm_fourier_bridgeGetBaseDataResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        uint part0 = value.@status;
        writer.Unsigned(part0, 4);
        string part1 = value.@error;
        WriteText(writer, part1, 128);
        double[] part2 = value.@values;
        if(part2 == null || part2.Length > 64)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part2.Length, 4);
        for(int index = 0; index < part2.Length; ++index)
        {
            double element = part2[index];
            writer.Float64(element);
        }
    }

    private static _Ros1Uwvm_fourier_bridgeGetBaseDataResponse ReadRos1Uwvm_fourier_bridgeGetBaseDataResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Uwvm_fourier_bridgeGetBaseDataResponse();
        value.@status = unchecked((uint)reader.Unsigned(4));
        value.@error = ReadText(reader, 128);
        value.@values = new double[ReadCount(reader, 64, 8)];
        for(int index = 0; index < value.@values.Length; ++index)
            value.@values[index] = reader.Float64();
        return value;
    }

    public sealed class _Ros1Uwvm_fourier_bridgeGetCartesianStateRequest
    {
        public ulong @sequence = 0;
        public string @group = "";
        public string @key = "";

        public _Ros1Uwvm_fourier_bridgeGetCartesianStateRequest()
        {
        }
    }

    public sealed class Ros1Uwvm_fourier_bridgeGetCartesianStateRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Uwvm_fourier_bridgeGetCartesianStateRequest>
    {
        public static readonly Ros1Uwvm_fourier_bridgeGetCartesianStateRequestCodec Instance = new Ros1Uwvm_fourier_bridgeGetCartesianStateRequestCodec();

        private Ros1Uwvm_fourier_bridgeGetCartesianStateRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "uwvm_fourier_bridge/GetCartesianStateRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_658626f7fbd0f788149208230f03cef299bcb2a6ca4cf96d4e3af807d9b336ae";
        public const int MIN_WIRE_BYTES = 16, MAX_WIRE_BYTES = 272;

        public byte[] Encode(_Ros1Uwvm_fourier_bridgeGetCartesianStateRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Uwvm_fourier_bridgeGetCartesianStateRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Uwvm_fourier_bridgeGetCartesianStateRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Uwvm_fourier_bridgeGetCartesianStateRequest value = ReadRos1Uwvm_fourier_bridgeGetCartesianStateRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Uwvm_fourier_bridgeGetCartesianStateRequest(_Codecs.Writer writer, _Ros1Uwvm_fourier_bridgeGetCartesianStateRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        ulong part0 = value.@sequence;
        writer.Unsigned(part0, 8);
        string part1 = value.@group;
        WriteText(writer, part1, 128);
        string part2 = value.@key;
        WriteText(writer, part2, 128);
    }

    private static _Ros1Uwvm_fourier_bridgeGetCartesianStateRequest ReadRos1Uwvm_fourier_bridgeGetCartesianStateRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Uwvm_fourier_bridgeGetCartesianStateRequest();
        value.@sequence = unchecked((ulong)reader.Unsigned(8));
        value.@group = ReadText(reader, 128);
        value.@key = ReadText(reader, 128);
        return value;
    }

    public sealed class _Ros1Uwvm_fourier_bridgeGetCartesianStateResponse
    {
        public uint @status = 0;
        public string @error = "";
        public double[] @values = new double[0];

        public _Ros1Uwvm_fourier_bridgeGetCartesianStateResponse()
        {
        }
    }

    public sealed class Ros1Uwvm_fourier_bridgeGetCartesianStateResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Uwvm_fourier_bridgeGetCartesianStateResponse>
    {
        public static readonly Ros1Uwvm_fourier_bridgeGetCartesianStateResponseCodec Instance = new Ros1Uwvm_fourier_bridgeGetCartesianStateResponseCodec();

        private Ros1Uwvm_fourier_bridgeGetCartesianStateResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "uwvm_fourier_bridge/GetCartesianStateResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_a4fcd5f01a992b9aed4089b2c77ecda4656fe9aeb11c40777603805af964f671";
        public const int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 652;

        public byte[] Encode(_Ros1Uwvm_fourier_bridgeGetCartesianStateResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Uwvm_fourier_bridgeGetCartesianStateResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Uwvm_fourier_bridgeGetCartesianStateResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Uwvm_fourier_bridgeGetCartesianStateResponse value = ReadRos1Uwvm_fourier_bridgeGetCartesianStateResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Uwvm_fourier_bridgeGetCartesianStateResponse(_Codecs.Writer writer, _Ros1Uwvm_fourier_bridgeGetCartesianStateResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        uint part0 = value.@status;
        writer.Unsigned(part0, 4);
        string part1 = value.@error;
        WriteText(writer, part1, 128);
        double[] part2 = value.@values;
        if(part2 == null || part2.Length > 64)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part2.Length, 4);
        for(int index = 0; index < part2.Length; ++index)
        {
            double element = part2[index];
            writer.Float64(element);
        }
    }

    private static _Ros1Uwvm_fourier_bridgeGetCartesianStateResponse ReadRos1Uwvm_fourier_bridgeGetCartesianStateResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Uwvm_fourier_bridgeGetCartesianStateResponse();
        value.@status = unchecked((uint)reader.Unsigned(4));
        value.@error = ReadText(reader, 128);
        value.@values = new double[ReadCount(reader, 64, 8)];
        for(int index = 0; index < value.@values.Length; ++index)
            value.@values[index] = reader.Float64();
        return value;
    }

    public sealed class _Ros1Uwvm_fourier_bridgeGetContactDataRequest
    {
        public ulong @sequence = 0;
        public string @key = "";

        public _Ros1Uwvm_fourier_bridgeGetContactDataRequest()
        {
        }
    }

    public sealed class Ros1Uwvm_fourier_bridgeGetContactDataRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Uwvm_fourier_bridgeGetContactDataRequest>
    {
        public static readonly Ros1Uwvm_fourier_bridgeGetContactDataRequestCodec Instance = new Ros1Uwvm_fourier_bridgeGetContactDataRequestCodec();

        private Ros1Uwvm_fourier_bridgeGetContactDataRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "uwvm_fourier_bridge/GetContactDataRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_38d1fa3409948748e19fdff39259fbb51503a98e03e996addb560cb404931787";
        public const int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 140;

        public byte[] Encode(_Ros1Uwvm_fourier_bridgeGetContactDataRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Uwvm_fourier_bridgeGetContactDataRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Uwvm_fourier_bridgeGetContactDataRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Uwvm_fourier_bridgeGetContactDataRequest value = ReadRos1Uwvm_fourier_bridgeGetContactDataRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Uwvm_fourier_bridgeGetContactDataRequest(_Codecs.Writer writer, _Ros1Uwvm_fourier_bridgeGetContactDataRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        ulong part0 = value.@sequence;
        writer.Unsigned(part0, 8);
        string part1 = value.@key;
        WriteText(writer, part1, 128);
    }

    private static _Ros1Uwvm_fourier_bridgeGetContactDataRequest ReadRos1Uwvm_fourier_bridgeGetContactDataRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Uwvm_fourier_bridgeGetContactDataRequest();
        value.@sequence = unchecked((ulong)reader.Unsigned(8));
        value.@key = ReadText(reader, 128);
        return value;
    }

    public sealed class _Ros1Uwvm_fourier_bridgeGetContactDataResponse
    {
        public uint @status = 0;
        public string @error = "";
        public double[] @values = new double[0];

        public _Ros1Uwvm_fourier_bridgeGetContactDataResponse()
        {
        }
    }

    public sealed class Ros1Uwvm_fourier_bridgeGetContactDataResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Uwvm_fourier_bridgeGetContactDataResponse>
    {
        public static readonly Ros1Uwvm_fourier_bridgeGetContactDataResponseCodec Instance = new Ros1Uwvm_fourier_bridgeGetContactDataResponseCodec();

        private Ros1Uwvm_fourier_bridgeGetContactDataResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "uwvm_fourier_bridge/GetContactDataResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_c4381d31ad73640e2f4302bd200d4507cd5a1a4ca4ee180ad009589864f3f293";
        public const int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 652;

        public byte[] Encode(_Ros1Uwvm_fourier_bridgeGetContactDataResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Uwvm_fourier_bridgeGetContactDataResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Uwvm_fourier_bridgeGetContactDataResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Uwvm_fourier_bridgeGetContactDataResponse value = ReadRos1Uwvm_fourier_bridgeGetContactDataResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Uwvm_fourier_bridgeGetContactDataResponse(_Codecs.Writer writer, _Ros1Uwvm_fourier_bridgeGetContactDataResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        uint part0 = value.@status;
        writer.Unsigned(part0, 4);
        string part1 = value.@error;
        WriteText(writer, part1, 128);
        double[] part2 = value.@values;
        if(part2 == null || part2.Length > 64)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part2.Length, 4);
        for(int index = 0; index < part2.Length; ++index)
        {
            double element = part2[index];
            writer.Float64(element);
        }
    }

    private static _Ros1Uwvm_fourier_bridgeGetContactDataResponse ReadRos1Uwvm_fourier_bridgeGetContactDataResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Uwvm_fourier_bridgeGetContactDataResponse();
        value.@status = unchecked((uint)reader.Unsigned(4));
        value.@error = ReadText(reader, 128);
        value.@values = new double[ReadCount(reader, 64, 8)];
        for(int index = 0; index < value.@values.Length; ++index)
            value.@values[index] = reader.Float64();
        return value;
    }

    public sealed class _Ros1Uwvm_fourier_bridgeGetFsmNameRequest
    {
        public ulong @sequence = 0;

        public _Ros1Uwvm_fourier_bridgeGetFsmNameRequest()
        {
        }
    }

    public sealed class Ros1Uwvm_fourier_bridgeGetFsmNameRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Uwvm_fourier_bridgeGetFsmNameRequest>
    {
        public static readonly Ros1Uwvm_fourier_bridgeGetFsmNameRequestCodec Instance = new Ros1Uwvm_fourier_bridgeGetFsmNameRequestCodec();

        private Ros1Uwvm_fourier_bridgeGetFsmNameRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "uwvm_fourier_bridge/GetFsmNameRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_4257279fd241dee60ef24d1d5ebdcadbc84701b2e8709a6e269d2259b9293b33";
        public const int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 8;

        public byte[] Encode(_Ros1Uwvm_fourier_bridgeGetFsmNameRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Uwvm_fourier_bridgeGetFsmNameRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Uwvm_fourier_bridgeGetFsmNameRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Uwvm_fourier_bridgeGetFsmNameRequest value = ReadRos1Uwvm_fourier_bridgeGetFsmNameRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Uwvm_fourier_bridgeGetFsmNameRequest(_Codecs.Writer writer, _Ros1Uwvm_fourier_bridgeGetFsmNameRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        ulong part0 = value.@sequence;
        writer.Unsigned(part0, 8);
    }

    private static _Ros1Uwvm_fourier_bridgeGetFsmNameRequest ReadRos1Uwvm_fourier_bridgeGetFsmNameRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Uwvm_fourier_bridgeGetFsmNameRequest();
        value.@sequence = unchecked((ulong)reader.Unsigned(8));
        return value;
    }

    public sealed class _Ros1Uwvm_fourier_bridgeGetFsmNameResponse
    {
        public uint @status = 0;
        public string @error = "";
        public string @value = "";

        public _Ros1Uwvm_fourier_bridgeGetFsmNameResponse()
        {
        }
    }

    public sealed class Ros1Uwvm_fourier_bridgeGetFsmNameResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Uwvm_fourier_bridgeGetFsmNameResponse>
    {
        public static readonly Ros1Uwvm_fourier_bridgeGetFsmNameResponseCodec Instance = new Ros1Uwvm_fourier_bridgeGetFsmNameResponseCodec();

        private Ros1Uwvm_fourier_bridgeGetFsmNameResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "uwvm_fourier_bridge/GetFsmNameResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_9016d706e2afed027dd150f1534e615e551c3f26d581313bb3d36a279e1d7c55";
        public const int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 268;

        public byte[] Encode(_Ros1Uwvm_fourier_bridgeGetFsmNameResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Uwvm_fourier_bridgeGetFsmNameResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Uwvm_fourier_bridgeGetFsmNameResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Uwvm_fourier_bridgeGetFsmNameResponse value = ReadRos1Uwvm_fourier_bridgeGetFsmNameResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Uwvm_fourier_bridgeGetFsmNameResponse(_Codecs.Writer writer, _Ros1Uwvm_fourier_bridgeGetFsmNameResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        uint part0 = value.@status;
        writer.Unsigned(part0, 4);
        string part1 = value.@error;
        WriteText(writer, part1, 128);
        string part2 = value.@value;
        WriteText(writer, part2, 128);
    }

    private static _Ros1Uwvm_fourier_bridgeGetFsmNameResponse ReadRos1Uwvm_fourier_bridgeGetFsmNameResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Uwvm_fourier_bridgeGetFsmNameResponse();
        value.@status = unchecked((uint)reader.Unsigned(4));
        value.@error = ReadText(reader, 128);
        value.@value = ReadText(reader, 128);
        return value;
    }

    public sealed class _Ros1Uwvm_fourier_bridgeGetFsmStateRequest
    {
        public ulong @sequence = 0;

        public _Ros1Uwvm_fourier_bridgeGetFsmStateRequest()
        {
        }
    }

    public sealed class Ros1Uwvm_fourier_bridgeGetFsmStateRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Uwvm_fourier_bridgeGetFsmStateRequest>
    {
        public static readonly Ros1Uwvm_fourier_bridgeGetFsmStateRequestCodec Instance = new Ros1Uwvm_fourier_bridgeGetFsmStateRequestCodec();

        private Ros1Uwvm_fourier_bridgeGetFsmStateRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "uwvm_fourier_bridge/GetFsmStateRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_573f497168578dce3680e1d423f64993e9fccf7774cc2fc0db38ccce8286ee3e";
        public const int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 8;

        public byte[] Encode(_Ros1Uwvm_fourier_bridgeGetFsmStateRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Uwvm_fourier_bridgeGetFsmStateRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Uwvm_fourier_bridgeGetFsmStateRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Uwvm_fourier_bridgeGetFsmStateRequest value = ReadRos1Uwvm_fourier_bridgeGetFsmStateRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Uwvm_fourier_bridgeGetFsmStateRequest(_Codecs.Writer writer, _Ros1Uwvm_fourier_bridgeGetFsmStateRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        ulong part0 = value.@sequence;
        writer.Unsigned(part0, 8);
    }

    private static _Ros1Uwvm_fourier_bridgeGetFsmStateRequest ReadRos1Uwvm_fourier_bridgeGetFsmStateRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Uwvm_fourier_bridgeGetFsmStateRequest();
        value.@sequence = unchecked((ulong)reader.Unsigned(8));
        return value;
    }

    public sealed class _Ros1Uwvm_fourier_bridgeGetFsmStateResponse
    {
        public uint @status = 0;
        public string @error = "";
        public int @value = 0;

        public _Ros1Uwvm_fourier_bridgeGetFsmStateResponse()
        {
        }
    }

    public sealed class Ros1Uwvm_fourier_bridgeGetFsmStateResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Uwvm_fourier_bridgeGetFsmStateResponse>
    {
        public static readonly Ros1Uwvm_fourier_bridgeGetFsmStateResponseCodec Instance = new Ros1Uwvm_fourier_bridgeGetFsmStateResponseCodec();

        private Ros1Uwvm_fourier_bridgeGetFsmStateResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "uwvm_fourier_bridge/GetFsmStateResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_1d25f46d335312a766f3c0a7f410a45f283515396c8c6bfc4a49bcf6bc37a812";
        public const int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 140;

        public byte[] Encode(_Ros1Uwvm_fourier_bridgeGetFsmStateResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Uwvm_fourier_bridgeGetFsmStateResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Uwvm_fourier_bridgeGetFsmStateResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Uwvm_fourier_bridgeGetFsmStateResponse value = ReadRos1Uwvm_fourier_bridgeGetFsmStateResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Uwvm_fourier_bridgeGetFsmStateResponse(_Codecs.Writer writer, _Ros1Uwvm_fourier_bridgeGetFsmStateResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        uint part0 = value.@status;
        writer.Unsigned(part0, 4);
        string part1 = value.@error;
        WriteText(writer, part1, 128);
        int part2 = value.@value;
        writer.Unsigned(unchecked((uint)part2), 4);
    }

    private static _Ros1Uwvm_fourier_bridgeGetFsmStateResponse ReadRos1Uwvm_fourier_bridgeGetFsmStateResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Uwvm_fourier_bridgeGetFsmStateResponse();
        value.@status = unchecked((uint)reader.Unsigned(4));
        value.@error = ReadText(reader, 128);
        value.@value = unchecked((int)reader.Unsigned(4));
        return value;
    }

    public sealed class _Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest
    {
        public ulong @sequence = 0;
        public string @group = "";

        public _Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest()
        {
        }
    }

    public sealed class Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest>
    {
        public static readonly Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequestCodec Instance = new Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequestCodec();

        private Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "uwvm_fourier_bridge/GetGroupMotionStateRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_a2b6c77c903d5d4dc5ca20805e1ed2fa7dfa0852bc3f590638a577cec9d7248f";
        public const int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 140;

        public byte[] Encode(_Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Uwvm_fourier_bridgeGetGroupMotionStateRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest value = ReadRos1Uwvm_fourier_bridgeGetGroupMotionStateRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Uwvm_fourier_bridgeGetGroupMotionStateRequest(_Codecs.Writer writer, _Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        ulong part0 = value.@sequence;
        writer.Unsigned(part0, 8);
        string part1 = value.@group;
        WriteText(writer, part1, 128);
    }

    private static _Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest ReadRos1Uwvm_fourier_bridgeGetGroupMotionStateRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest();
        value.@sequence = unchecked((ulong)reader.Unsigned(8));
        value.@group = ReadText(reader, 128);
        return value;
    }

    public sealed class _Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse
    {
        public uint @status = 0;
        public string @error = "";
        public int @value = 0;

        public _Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse()
        {
        }
    }

    public sealed class Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponseCodec :
        global::Uwvm.RosWasm.ICodec<_Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse>
    {
        public static readonly Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponseCodec Instance = new Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponseCodec();

        private Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "uwvm_fourier_bridge/GetGroupMotionStateResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_e41b911990c306e8f264f1f9d961b822fb6669ad1ca5ee8f81609ba13a0fc8a2";
        public const int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 140;

        public byte[] Encode(_Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Uwvm_fourier_bridgeGetGroupMotionStateResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse value = ReadRos1Uwvm_fourier_bridgeGetGroupMotionStateResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Uwvm_fourier_bridgeGetGroupMotionStateResponse(_Codecs.Writer writer,
                                                                                _Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        uint part0 = value.@status;
        writer.Unsigned(part0, 4);
        string part1 = value.@error;
        WriteText(writer, part1, 128);
        int part2 = value.@value;
        writer.Unsigned(unchecked((uint)part2), 4);
    }

    private static _Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse ReadRos1Uwvm_fourier_bridgeGetGroupMotionStateResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse();
        value.@status = unchecked((uint)reader.Unsigned(4));
        value.@error = ReadText(reader, 128);
        value.@value = unchecked((int)reader.Unsigned(4));
        return value;
    }

    public sealed class _Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest
    {
        public ulong @sequence = 0;
        public string @group = "";
        public string @key = "";

        public _Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest()
        {
        }
    }

    public sealed class Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest>
    {
        public static readonly Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequestCodec Instance = new Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequestCodec();

        private Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "uwvm_fourier_bridge/GetGroupMotorCfgRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_bbcfb5561a970d7d086aa5a3a832dfbd8c3e2c2a9b4c5e9bea8224c6c7fc0576";
        public const int MIN_WIRE_BYTES = 16, MAX_WIRE_BYTES = 272;

        public byte[] Encode(_Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Uwvm_fourier_bridgeGetGroupMotorCfgRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest value = ReadRos1Uwvm_fourier_bridgeGetGroupMotorCfgRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Uwvm_fourier_bridgeGetGroupMotorCfgRequest(_Codecs.Writer writer, _Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        ulong part0 = value.@sequence;
        writer.Unsigned(part0, 8);
        string part1 = value.@group;
        WriteText(writer, part1, 128);
        string part2 = value.@key;
        WriteText(writer, part2, 128);
    }

    private static _Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest ReadRos1Uwvm_fourier_bridgeGetGroupMotorCfgRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest();
        value.@sequence = unchecked((ulong)reader.Unsigned(8));
        value.@group = ReadText(reader, 128);
        value.@key = ReadText(reader, 128);
        return value;
    }

    public sealed class _Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse
    {
        public uint @status = 0;
        public string @error = "";
        public double[] @values = new double[0];

        public _Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse()
        {
        }
    }

    public sealed class Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse>
    {
        public static readonly Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponseCodec Instance = new Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponseCodec();

        private Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "uwvm_fourier_bridge/GetGroupMotorCfgResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_cf7f2a81246842d851104edb7d422ff5342fc65dc56e573d552b10d02c81ad72";
        public const int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 652;

        public byte[] Encode(_Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Uwvm_fourier_bridgeGetGroupMotorCfgResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse value = ReadRos1Uwvm_fourier_bridgeGetGroupMotorCfgResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Uwvm_fourier_bridgeGetGroupMotorCfgResponse(_Codecs.Writer writer, _Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        uint part0 = value.@status;
        writer.Unsigned(part0, 4);
        string part1 = value.@error;
        WriteText(writer, part1, 128);
        double[] part2 = value.@values;
        if(part2 == null || part2.Length > 64)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part2.Length, 4);
        for(int index = 0; index < part2.Length; ++index)
        {
            double element = part2[index];
            writer.Float64(element);
        }
    }

    private static _Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse ReadRos1Uwvm_fourier_bridgeGetGroupMotorCfgResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse();
        value.@status = unchecked((uint)reader.Unsigned(4));
        value.@error = ReadText(reader, 128);
        value.@values = new double[ReadCount(reader, 64, 8)];
        for(int index = 0; index < value.@values.Length; ++index)
            value.@values[index] = reader.Float64();
        return value;
    }

    public sealed class _Ros1Uwvm_fourier_bridgeGetGroupStateRequest
    {
        public ulong @sequence = 0;
        public string @group = "";
        public string @key = "";

        public _Ros1Uwvm_fourier_bridgeGetGroupStateRequest()
        {
        }
    }

    public sealed class Ros1Uwvm_fourier_bridgeGetGroupStateRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Uwvm_fourier_bridgeGetGroupStateRequest>
    {
        public static readonly Ros1Uwvm_fourier_bridgeGetGroupStateRequestCodec Instance = new Ros1Uwvm_fourier_bridgeGetGroupStateRequestCodec();

        private Ros1Uwvm_fourier_bridgeGetGroupStateRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "uwvm_fourier_bridge/GetGroupStateRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_d24ebea89b1c6e7963c8058109704033c9e1f1f74673732093412c5ac453b8fc";
        public const int MIN_WIRE_BYTES = 16, MAX_WIRE_BYTES = 272;

        public byte[] Encode(_Ros1Uwvm_fourier_bridgeGetGroupStateRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Uwvm_fourier_bridgeGetGroupStateRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Uwvm_fourier_bridgeGetGroupStateRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Uwvm_fourier_bridgeGetGroupStateRequest value = ReadRos1Uwvm_fourier_bridgeGetGroupStateRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Uwvm_fourier_bridgeGetGroupStateRequest(_Codecs.Writer writer, _Ros1Uwvm_fourier_bridgeGetGroupStateRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        ulong part0 = value.@sequence;
        writer.Unsigned(part0, 8);
        string part1 = value.@group;
        WriteText(writer, part1, 128);
        string part2 = value.@key;
        WriteText(writer, part2, 128);
    }

    private static _Ros1Uwvm_fourier_bridgeGetGroupStateRequest ReadRos1Uwvm_fourier_bridgeGetGroupStateRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Uwvm_fourier_bridgeGetGroupStateRequest();
        value.@sequence = unchecked((ulong)reader.Unsigned(8));
        value.@group = ReadText(reader, 128);
        value.@key = ReadText(reader, 128);
        return value;
    }

    public sealed class _Ros1Uwvm_fourier_bridgeGetGroupStateResponse
    {
        public uint @status = 0;
        public string @error = "";
        public double[] @values = new double[0];

        public _Ros1Uwvm_fourier_bridgeGetGroupStateResponse()
        {
        }
    }

    public sealed class Ros1Uwvm_fourier_bridgeGetGroupStateResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Uwvm_fourier_bridgeGetGroupStateResponse>
    {
        public static readonly Ros1Uwvm_fourier_bridgeGetGroupStateResponseCodec Instance = new Ros1Uwvm_fourier_bridgeGetGroupStateResponseCodec();

        private Ros1Uwvm_fourier_bridgeGetGroupStateResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "uwvm_fourier_bridge/GetGroupStateResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_e21f17f91821b5a3154e108d0bcdb027a320b948d32e5637d20745c85edb0acb";
        public const int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 652;

        public byte[] Encode(_Ros1Uwvm_fourier_bridgeGetGroupStateResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Uwvm_fourier_bridgeGetGroupStateResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Uwvm_fourier_bridgeGetGroupStateResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Uwvm_fourier_bridgeGetGroupStateResponse value = ReadRos1Uwvm_fourier_bridgeGetGroupStateResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Uwvm_fourier_bridgeGetGroupStateResponse(_Codecs.Writer writer, _Ros1Uwvm_fourier_bridgeGetGroupStateResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        uint part0 = value.@status;
        writer.Unsigned(part0, 4);
        string part1 = value.@error;
        WriteText(writer, part1, 128);
        double[] part2 = value.@values;
        if(part2 == null || part2.Length > 64)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part2.Length, 4);
        for(int index = 0; index < part2.Length; ++index)
        {
            double element = part2[index];
            writer.Float64(element);
        }
    }

    private static _Ros1Uwvm_fourier_bridgeGetGroupStateResponse ReadRos1Uwvm_fourier_bridgeGetGroupStateResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Uwvm_fourier_bridgeGetGroupStateResponse();
        value.@status = unchecked((uint)reader.Unsigned(4));
        value.@error = ReadText(reader, 128);
        value.@values = new double[ReadCount(reader, 64, 8)];
        for(int index = 0; index < value.@values.Length; ++index)
            value.@values[index] = reader.Float64();
        return value;
    }

    public sealed class _Ros1Uwvm_fourier_bridgeGetSnapshotRequest
    {
        public ulong @sequence = 0;

        public _Ros1Uwvm_fourier_bridgeGetSnapshotRequest()
        {
        }
    }

    public sealed class Ros1Uwvm_fourier_bridgeGetSnapshotRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Uwvm_fourier_bridgeGetSnapshotRequest>
    {
        public static readonly Ros1Uwvm_fourier_bridgeGetSnapshotRequestCodec Instance = new Ros1Uwvm_fourier_bridgeGetSnapshotRequestCodec();

        private Ros1Uwvm_fourier_bridgeGetSnapshotRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "uwvm_fourier_bridge/GetSnapshotRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_384b9be938d41321afe3ef0765bdd442baa4f0c10049efd656c52d5ac1c89d4c";
        public const int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 8;

        public byte[] Encode(_Ros1Uwvm_fourier_bridgeGetSnapshotRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Uwvm_fourier_bridgeGetSnapshotRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Uwvm_fourier_bridgeGetSnapshotRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Uwvm_fourier_bridgeGetSnapshotRequest value = ReadRos1Uwvm_fourier_bridgeGetSnapshotRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Uwvm_fourier_bridgeGetSnapshotRequest(_Codecs.Writer writer, _Ros1Uwvm_fourier_bridgeGetSnapshotRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        ulong part0 = value.@sequence;
        writer.Unsigned(part0, 8);
    }

    private static _Ros1Uwvm_fourier_bridgeGetSnapshotRequest ReadRos1Uwvm_fourier_bridgeGetSnapshotRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Uwvm_fourier_bridgeGetSnapshotRequest();
        value.@sequence = unchecked((ulong)reader.Unsigned(8));
        return value;
    }

    public sealed class _Ros1Uwvm_fourier_bridgeGroupState
    {
        public string @group = "";
        public double[] @position = new double[0];
        public double[] @velocity = new double[0];
        public double[] @effort = new double[0];
        public int @motion_state = 0;

        public _Ros1Uwvm_fourier_bridgeGroupState()
        {
        }
    }

    public sealed class Ros1Uwvm_fourier_bridgeGroupStateCodec : global::Uwvm.RosWasm.ICodec<_Ros1Uwvm_fourier_bridgeGroupState>
    {
        public static readonly Ros1Uwvm_fourier_bridgeGroupStateCodec Instance = new Ros1Uwvm_fourier_bridgeGroupStateCodec();

        private Ros1Uwvm_fourier_bridgeGroupStateCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "uwvm_fourier_bridge/GroupState";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_473838de7c48b3719be265fd7c7554bb35a8a1a111e2e9290953d6a660650855";
        public const int MIN_WIRE_BYTES = 20, MAX_WIRE_BYTES = 1684;

        public byte[] Encode(_Ros1Uwvm_fourier_bridgeGroupState value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Uwvm_fourier_bridgeGroupState(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Uwvm_fourier_bridgeGroupState Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Uwvm_fourier_bridgeGroupState value = ReadRos1Uwvm_fourier_bridgeGroupState(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Uwvm_fourier_bridgeGroupState(_Codecs.Writer writer, _Ros1Uwvm_fourier_bridgeGroupState value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        string part0 = value.@group;
        WriteText(writer, part0, 128);
        double[] part1 = value.@position;
        if(part1 == null || part1.Length > 64)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part1.Length, 4);
        for(int index = 0; index < part1.Length; ++index)
        {
            double element = part1[index];
            writer.Float64(element);
        }
        double[] part2 = value.@velocity;
        if(part2 == null || part2.Length > 64)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part2.Length, 4);
        for(int index = 0; index < part2.Length; ++index)
        {
            double element = part2[index];
            writer.Float64(element);
        }
        double[] part3 = value.@effort;
        if(part3 == null || part3.Length > 64)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part3.Length, 4);
        for(int index = 0; index < part3.Length; ++index)
        {
            double element = part3[index];
            writer.Float64(element);
        }
        int part4 = value.@motion_state;
        writer.Unsigned(unchecked((uint)part4), 4);
    }

    private static _Ros1Uwvm_fourier_bridgeGroupState ReadRos1Uwvm_fourier_bridgeGroupState(_Codecs.Reader reader)
    {
        var value = new _Ros1Uwvm_fourier_bridgeGroupState();
        value.@group = ReadText(reader, 128);
        value.@position = new double[ReadCount(reader, 64, 8)];
        for(int index = 0; index < value.@position.Length; ++index)
            value.@position[index] = reader.Float64();
        value.@velocity = new double[ReadCount(reader, 64, 8)];
        for(int index = 0; index < value.@velocity.Length; ++index)
            value.@velocity[index] = reader.Float64();
        value.@effort = new double[ReadCount(reader, 64, 8)];
        for(int index = 0; index < value.@effort.Length; ++index)
            value.@effort[index] = reader.Float64();
        value.@motion_state = unchecked((int)reader.Unsigned(4));
        return value;
    }

    public sealed class _Ros1Uwvm_fourier_bridgeStatus
    {
        public int @fsm_state = 0;
        public string @fsm_name = "";
        public int @upper_fsm_state = 0;
        public string @upper_fsm_name = "";
        public int @velocity_source = 0;
        public string @velocity_source_name = "";
        public double[] @stand_pose = new double[0];
        public _Ros1Uwvm_fourier_bridgeGroupState[] @groups = new _Ros1Uwvm_fourier_bridgeGroupState[0];

        public _Ros1Uwvm_fourier_bridgeStatus()
        {
        }
    }

    public sealed class Ros1Uwvm_fourier_bridgeStatusCodec : global::Uwvm.RosWasm.ICodec<_Ros1Uwvm_fourier_bridgeStatus>
    {
        public static readonly Ros1Uwvm_fourier_bridgeStatusCodec Instance = new Ros1Uwvm_fourier_bridgeStatusCodec();

        private Ros1Uwvm_fourier_bridgeStatusCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "uwvm_fourier_bridge/Status";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_b08737c90dd86078c8ef968fc86b5b77562148b569cd8c271195c7b758190e3e";
        public const int MIN_WIRE_BYTES = 32, MAX_WIRE_BYTES = 14400;

        public byte[] Encode(_Ros1Uwvm_fourier_bridgeStatus value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Uwvm_fourier_bridgeStatus(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Uwvm_fourier_bridgeStatus Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Uwvm_fourier_bridgeStatus value = ReadRos1Uwvm_fourier_bridgeStatus(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Uwvm_fourier_bridgeStatus(_Codecs.Writer writer, _Ros1Uwvm_fourier_bridgeStatus value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        int part0 = value.@fsm_state;
        writer.Unsigned(unchecked((uint)part0), 4);
        string part1 = value.@fsm_name;
        WriteText(writer, part1, 128);
        int part2 = value.@upper_fsm_state;
        writer.Unsigned(unchecked((uint)part2), 4);
        string part3 = value.@upper_fsm_name;
        WriteText(writer, part3, 128);
        int part4 = value.@velocity_source;
        writer.Unsigned(unchecked((uint)part4), 4);
        string part5 = value.@velocity_source_name;
        WriteText(writer, part5, 128);
        double[] part6 = value.@stand_pose;
        if(part6 == null || part6.Length > 64)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part6.Length, 4);
        for(int index = 0; index < part6.Length; ++index)
        {
            double element = part6[index];
            writer.Float64(element);
        }
        _Ros1Uwvm_fourier_bridgeGroupState[] part7 = value.@groups;
        if(part7 == null || part7.Length > 8)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part7.Length, 4);
        for(int index = 0; index < part7.Length; ++index)
        {
            _Ros1Uwvm_fourier_bridgeGroupState element = part7[index];
            WriteRos1Uwvm_fourier_bridgeGroupState(writer, element);
        }
    }

    private static _Ros1Uwvm_fourier_bridgeStatus ReadRos1Uwvm_fourier_bridgeStatus(_Codecs.Reader reader)
    {
        var value = new _Ros1Uwvm_fourier_bridgeStatus();
        value.@fsm_state = unchecked((int)reader.Unsigned(4));
        value.@fsm_name = ReadText(reader, 128);
        value.@upper_fsm_state = unchecked((int)reader.Unsigned(4));
        value.@upper_fsm_name = ReadText(reader, 128);
        value.@velocity_source = unchecked((int)reader.Unsigned(4));
        value.@velocity_source_name = ReadText(reader, 128);
        value.@stand_pose = new double[ReadCount(reader, 64, 8)];
        for(int index = 0; index < value.@stand_pose.Length; ++index)
            value.@stand_pose[index] = reader.Float64();
        value.@groups = new _Ros1Uwvm_fourier_bridgeGroupState[ReadCount(reader, 8, 20)];
        for(int index = 0; index < value.@groups.Length; ++index)
            value.@groups[index] = ReadRos1Uwvm_fourier_bridgeGroupState(reader);
        return value;
    }

    public sealed class _Ros1Uwvm_fourier_bridgeGetSnapshotResponse
    {
        public uint @status = 0;
        public string @error = "";
        public _Ros1Uwvm_fourier_bridgeStatus @value = new _Ros1Uwvm_fourier_bridgeStatus();

        public _Ros1Uwvm_fourier_bridgeGetSnapshotResponse()
        {
        }
    }

    public sealed class Ros1Uwvm_fourier_bridgeGetSnapshotResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Uwvm_fourier_bridgeGetSnapshotResponse>
    {
        public static readonly Ros1Uwvm_fourier_bridgeGetSnapshotResponseCodec Instance = new Ros1Uwvm_fourier_bridgeGetSnapshotResponseCodec();

        private Ros1Uwvm_fourier_bridgeGetSnapshotResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "uwvm_fourier_bridge/GetSnapshotResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_3b8b79195d53d3e0d22ac318e8f0898cb774cfaed35bebbc5210288273137c6a";
        public const int MIN_WIRE_BYTES = 40, MAX_WIRE_BYTES = 14536;

        public byte[] Encode(_Ros1Uwvm_fourier_bridgeGetSnapshotResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Uwvm_fourier_bridgeGetSnapshotResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Uwvm_fourier_bridgeGetSnapshotResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Uwvm_fourier_bridgeGetSnapshotResponse value = ReadRos1Uwvm_fourier_bridgeGetSnapshotResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Uwvm_fourier_bridgeGetSnapshotResponse(_Codecs.Writer writer, _Ros1Uwvm_fourier_bridgeGetSnapshotResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        uint part0 = value.@status;
        writer.Unsigned(part0, 4);
        string part1 = value.@error;
        WriteText(writer, part1, 128);
        _Ros1Uwvm_fourier_bridgeStatus part2 = value.@value;
        WriteRos1Uwvm_fourier_bridgeStatus(writer, part2);
    }

    private static _Ros1Uwvm_fourier_bridgeGetSnapshotResponse ReadRos1Uwvm_fourier_bridgeGetSnapshotResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Uwvm_fourier_bridgeGetSnapshotResponse();
        value.@status = unchecked((uint)reader.Unsigned(4));
        value.@error = ReadText(reader, 128);
        value.@value = ReadRos1Uwvm_fourier_bridgeStatus(reader);
        return value;
    }

    public sealed class _Ros1Uwvm_fourier_bridgeGetStandPoseRequest
    {
        public ulong @sequence = 0;

        public _Ros1Uwvm_fourier_bridgeGetStandPoseRequest()
        {
        }
    }

    public sealed class Ros1Uwvm_fourier_bridgeGetStandPoseRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Uwvm_fourier_bridgeGetStandPoseRequest>
    {
        public static readonly Ros1Uwvm_fourier_bridgeGetStandPoseRequestCodec Instance = new Ros1Uwvm_fourier_bridgeGetStandPoseRequestCodec();

        private Ros1Uwvm_fourier_bridgeGetStandPoseRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "uwvm_fourier_bridge/GetStandPoseRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_5c3b18c383a9a9a162bf3b656007f56e791c26125e0dc59fd8dc87bd3ef54738";
        public const int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 8;

        public byte[] Encode(_Ros1Uwvm_fourier_bridgeGetStandPoseRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Uwvm_fourier_bridgeGetStandPoseRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Uwvm_fourier_bridgeGetStandPoseRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Uwvm_fourier_bridgeGetStandPoseRequest value = ReadRos1Uwvm_fourier_bridgeGetStandPoseRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Uwvm_fourier_bridgeGetStandPoseRequest(_Codecs.Writer writer, _Ros1Uwvm_fourier_bridgeGetStandPoseRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        ulong part0 = value.@sequence;
        writer.Unsigned(part0, 8);
    }

    private static _Ros1Uwvm_fourier_bridgeGetStandPoseRequest ReadRos1Uwvm_fourier_bridgeGetStandPoseRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Uwvm_fourier_bridgeGetStandPoseRequest();
        value.@sequence = unchecked((ulong)reader.Unsigned(8));
        return value;
    }

    public sealed class _Ros1Uwvm_fourier_bridgeGetStandPoseResponse
    {
        public uint @status = 0;
        public string @error = "";
        public double[] @values = new double[0];

        public _Ros1Uwvm_fourier_bridgeGetStandPoseResponse()
        {
        }
    }

    public sealed class Ros1Uwvm_fourier_bridgeGetStandPoseResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Uwvm_fourier_bridgeGetStandPoseResponse>
    {
        public static readonly Ros1Uwvm_fourier_bridgeGetStandPoseResponseCodec Instance = new Ros1Uwvm_fourier_bridgeGetStandPoseResponseCodec();

        private Ros1Uwvm_fourier_bridgeGetStandPoseResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "uwvm_fourier_bridge/GetStandPoseResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_302692ae2e86c23efb3edf132e0b7a6e48fc2072a34bb941039db459f99cd15d";
        public const int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 652;

        public byte[] Encode(_Ros1Uwvm_fourier_bridgeGetStandPoseResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Uwvm_fourier_bridgeGetStandPoseResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Uwvm_fourier_bridgeGetStandPoseResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Uwvm_fourier_bridgeGetStandPoseResponse value = ReadRos1Uwvm_fourier_bridgeGetStandPoseResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Uwvm_fourier_bridgeGetStandPoseResponse(_Codecs.Writer writer, _Ros1Uwvm_fourier_bridgeGetStandPoseResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        uint part0 = value.@status;
        writer.Unsigned(part0, 4);
        string part1 = value.@error;
        WriteText(writer, part1, 128);
        double[] part2 = value.@values;
        if(part2 == null || part2.Length > 64)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part2.Length, 4);
        for(int index = 0; index < part2.Length; ++index)
        {
            double element = part2[index];
            writer.Float64(element);
        }
    }

    private static _Ros1Uwvm_fourier_bridgeGetStandPoseResponse ReadRos1Uwvm_fourier_bridgeGetStandPoseResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Uwvm_fourier_bridgeGetStandPoseResponse();
        value.@status = unchecked((uint)reader.Unsigned(4));
        value.@error = ReadText(reader, 128);
        value.@values = new double[ReadCount(reader, 64, 8)];
        for(int index = 0; index < value.@values.Length; ++index)
            value.@values[index] = reader.Float64();
        return value;
    }

    public sealed class _Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest
    {
        public ulong @sequence = 0;

        public _Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest()
        {
        }
    }

    public sealed class Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest>
    {
        public static readonly Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequestCodec Instance = new Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequestCodec();

        private Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "uwvm_fourier_bridge/GetUpperFsmNameRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_57fbba93abe5e136ae1522ad47155377e8a55ddaa3f02793e8a605e3b596115a";
        public const int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 8;

        public byte[] Encode(_Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Uwvm_fourier_bridgeGetUpperFsmNameRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest value = ReadRos1Uwvm_fourier_bridgeGetUpperFsmNameRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Uwvm_fourier_bridgeGetUpperFsmNameRequest(_Codecs.Writer writer, _Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        ulong part0 = value.@sequence;
        writer.Unsigned(part0, 8);
    }

    private static _Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest ReadRos1Uwvm_fourier_bridgeGetUpperFsmNameRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest();
        value.@sequence = unchecked((ulong)reader.Unsigned(8));
        return value;
    }

    public sealed class _Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse
    {
        public uint @status = 0;
        public string @error = "";
        public string @value = "";

        public _Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse()
        {
        }
    }

    public sealed class Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse>
    {
        public static readonly Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponseCodec Instance = new Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponseCodec();

        private Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "uwvm_fourier_bridge/GetUpperFsmNameResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_e98befbd1c290a3cb2c99facb33334ac0d908db39247d869d0715c024e75c7fe";
        public const int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 268;

        public byte[] Encode(_Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Uwvm_fourier_bridgeGetUpperFsmNameResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse value = ReadRos1Uwvm_fourier_bridgeGetUpperFsmNameResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Uwvm_fourier_bridgeGetUpperFsmNameResponse(_Codecs.Writer writer, _Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        uint part0 = value.@status;
        writer.Unsigned(part0, 4);
        string part1 = value.@error;
        WriteText(writer, part1, 128);
        string part2 = value.@value;
        WriteText(writer, part2, 128);
    }

    private static _Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse ReadRos1Uwvm_fourier_bridgeGetUpperFsmNameResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse();
        value.@status = unchecked((uint)reader.Unsigned(4));
        value.@error = ReadText(reader, 128);
        value.@value = ReadText(reader, 128);
        return value;
    }

    public sealed class _Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest
    {
        public ulong @sequence = 0;

        public _Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest()
        {
        }
    }

    public sealed class Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest>
    {
        public static readonly Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequestCodec Instance = new Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequestCodec();

        private Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "uwvm_fourier_bridge/GetUpperFsmStateRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_d38f791d76cec09de5bfa0b32d88d987ec3b077408682519f4c23940c4af0d12";
        public const int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 8;

        public byte[] Encode(_Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Uwvm_fourier_bridgeGetUpperFsmStateRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest value = ReadRos1Uwvm_fourier_bridgeGetUpperFsmStateRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Uwvm_fourier_bridgeGetUpperFsmStateRequest(_Codecs.Writer writer, _Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        ulong part0 = value.@sequence;
        writer.Unsigned(part0, 8);
    }

    private static _Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest ReadRos1Uwvm_fourier_bridgeGetUpperFsmStateRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest();
        value.@sequence = unchecked((ulong)reader.Unsigned(8));
        return value;
    }

    public sealed class _Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse
    {
        public uint @status = 0;
        public string @error = "";
        public int @value = 0;

        public _Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse()
        {
        }
    }

    public sealed class Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse>
    {
        public static readonly Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponseCodec Instance = new Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponseCodec();

        private Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "uwvm_fourier_bridge/GetUpperFsmStateResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_3864ff479fa6b85dffd39e772e3260f9e5094cf8179f98c2184a09971d577e71";
        public const int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 140;

        public byte[] Encode(_Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Uwvm_fourier_bridgeGetUpperFsmStateResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse value = ReadRos1Uwvm_fourier_bridgeGetUpperFsmStateResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Uwvm_fourier_bridgeGetUpperFsmStateResponse(_Codecs.Writer writer, _Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        uint part0 = value.@status;
        writer.Unsigned(part0, 4);
        string part1 = value.@error;
        WriteText(writer, part1, 128);
        int part2 = value.@value;
        writer.Unsigned(unchecked((uint)part2), 4);
    }

    private static _Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse ReadRos1Uwvm_fourier_bridgeGetUpperFsmStateResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse();
        value.@status = unchecked((uint)reader.Unsigned(4));
        value.@error = ReadText(reader, 128);
        value.@value = unchecked((int)reader.Unsigned(4));
        return value;
    }

    public sealed class _Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest
    {
        public ulong @sequence = 0;

        public _Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest()
        {
        }
    }

    public sealed class Ros1Uwvm_fourier_bridgeGetVelocitySourceRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest>
    {
        public static readonly Ros1Uwvm_fourier_bridgeGetVelocitySourceRequestCodec Instance = new Ros1Uwvm_fourier_bridgeGetVelocitySourceRequestCodec();

        private Ros1Uwvm_fourier_bridgeGetVelocitySourceRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "uwvm_fourier_bridge/GetVelocitySourceRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_e38af8b3fc5b65c6f364f5949b42d694d7012d32d900f55e08b87d08bcf83042";
        public const int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 8;

        public byte[] Encode(_Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Uwvm_fourier_bridgeGetVelocitySourceRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest value = ReadRos1Uwvm_fourier_bridgeGetVelocitySourceRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Uwvm_fourier_bridgeGetVelocitySourceRequest(_Codecs.Writer writer, _Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        ulong part0 = value.@sequence;
        writer.Unsigned(part0, 8);
    }

    private static _Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest ReadRos1Uwvm_fourier_bridgeGetVelocitySourceRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest();
        value.@sequence = unchecked((ulong)reader.Unsigned(8));
        return value;
    }

    public sealed class _Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse
    {
        public uint @status = 0;
        public string @error = "";
        public int @value = 0;

        public _Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse()
        {
        }
    }

    public sealed class Ros1Uwvm_fourier_bridgeGetVelocitySourceResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse>
    {
        public static readonly Ros1Uwvm_fourier_bridgeGetVelocitySourceResponseCodec Instance = new Ros1Uwvm_fourier_bridgeGetVelocitySourceResponseCodec();

        private Ros1Uwvm_fourier_bridgeGetVelocitySourceResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "uwvm_fourier_bridge/GetVelocitySourceResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_5bf809b889573acff549030cda017455303b009379d495aa7c3ab4399c862f60";
        public const int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 140;

        public byte[] Encode(_Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Uwvm_fourier_bridgeGetVelocitySourceResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse value = ReadRos1Uwvm_fourier_bridgeGetVelocitySourceResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Uwvm_fourier_bridgeGetVelocitySourceResponse(_Codecs.Writer writer, _Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        uint part0 = value.@status;
        writer.Unsigned(part0, 4);
        string part1 = value.@error;
        WriteText(writer, part1, 128);
        int part2 = value.@value;
        writer.Unsigned(unchecked((uint)part2), 4);
    }

    private static _Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse ReadRos1Uwvm_fourier_bridgeGetVelocitySourceResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse();
        value.@status = unchecked((uint)reader.Unsigned(4));
        value.@error = ReadText(reader, 128);
        value.@value = unchecked((int)reader.Unsigned(4));
        return value;
    }

    public sealed class _Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest
    {
        public ulong @sequence = 0;

        public _Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest()
        {
        }
    }

    public sealed class Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequestCodec :
        global::Uwvm.RosWasm.ICodec<_Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest>
    {
        public static readonly Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequestCodec Instance =
            new Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequestCodec();

        private Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "uwvm_fourier_bridge/GetVelocitySourceNameRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_a880cea6f506d0670df709e9e86726272e242bd969b5917a9698efa2f6dd897b";
        public const int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 8;

        public byte[] Encode(_Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Uwvm_fourier_bridgeGetVelocitySourceNameRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest value = ReadRos1Uwvm_fourier_bridgeGetVelocitySourceNameRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Uwvm_fourier_bridgeGetVelocitySourceNameRequest(_Codecs.Writer writer,
                                                                                 _Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        ulong part0 = value.@sequence;
        writer.Unsigned(part0, 8);
    }

    private static _Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest ReadRos1Uwvm_fourier_bridgeGetVelocitySourceNameRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest();
        value.@sequence = unchecked((ulong)reader.Unsigned(8));
        return value;
    }

    public sealed class _Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse
    {
        public uint @status = 0;
        public string @error = "";
        public string @value = "";

        public _Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse()
        {
        }
    }

    public sealed class Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponseCodec :
        global::Uwvm.RosWasm.ICodec<_Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse>
    {
        public static readonly Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponseCodec Instance =
            new Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponseCodec();

        private Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "uwvm_fourier_bridge/GetVelocitySourceNameResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_4b746944429d7c07719da06a13b9a396dff3b51167894309e8cf46f64f049a9b";
        public const int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 268;

        public byte[] Encode(_Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Uwvm_fourier_bridgeGetVelocitySourceNameResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse value = ReadRos1Uwvm_fourier_bridgeGetVelocitySourceNameResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Uwvm_fourier_bridgeGetVelocitySourceNameResponse(_Codecs.Writer writer,
                                                                                  _Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        uint part0 = value.@status;
        writer.Unsigned(part0, 4);
        string part1 = value.@error;
        WriteText(writer, part1, 128);
        string part2 = value.@value;
        WriteText(writer, part2, 128);
    }

    private static _Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse ReadRos1Uwvm_fourier_bridgeGetVelocitySourceNameResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse();
        value.@status = unchecked((uint)reader.Unsigned(4));
        value.@error = ReadText(reader, 128);
        value.@value = ReadText(reader, 128);
        return value;
    }

    public sealed class _Ros1Uwvm_fourier_bridgeGroupValues
    {
        public string @group = "";
        public double[] @values = new double[0];

        public _Ros1Uwvm_fourier_bridgeGroupValues()
        {
        }
    }

    public sealed class Ros1Uwvm_fourier_bridgeGroupValuesCodec : global::Uwvm.RosWasm.ICodec<_Ros1Uwvm_fourier_bridgeGroupValues>
    {
        public static readonly Ros1Uwvm_fourier_bridgeGroupValuesCodec Instance = new Ros1Uwvm_fourier_bridgeGroupValuesCodec();

        private Ros1Uwvm_fourier_bridgeGroupValuesCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "uwvm_fourier_bridge/GroupValues";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_899fb75506245b34c004d1ad1392f79434612d04c73d80a3329f27ec8ff5244c";
        public const int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 648;

        public byte[] Encode(_Ros1Uwvm_fourier_bridgeGroupValues value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Uwvm_fourier_bridgeGroupValues(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Uwvm_fourier_bridgeGroupValues Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Uwvm_fourier_bridgeGroupValues value = ReadRos1Uwvm_fourier_bridgeGroupValues(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Uwvm_fourier_bridgeGroupValues(_Codecs.Writer writer, _Ros1Uwvm_fourier_bridgeGroupValues value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        string part0 = value.@group;
        WriteText(writer, part0, 128);
        double[] part1 = value.@values;
        if(part1 == null || part1.Length > 64)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part1.Length, 4);
        for(int index = 0; index < part1.Length; ++index)
        {
            double element = part1[index];
            writer.Float64(element);
        }
    }

    private static _Ros1Uwvm_fourier_bridgeGroupValues ReadRos1Uwvm_fourier_bridgeGroupValues(_Codecs.Reader reader)
    {
        var value = new _Ros1Uwvm_fourier_bridgeGroupValues();
        value.@group = ReadText(reader, 128);
        value.@values = new double[ReadCount(reader, 64, 8)];
        for(int index = 0; index < value.@values.Length; ++index)
            value.@values[index] = reader.Float64();
        return value;
    }

    public sealed class _Ros1Uwvm_fourier_bridgeSetFsmStateRequest
    {
        public ulong @sequence = 0;
        public int @state = 0;

        public _Ros1Uwvm_fourier_bridgeSetFsmStateRequest()
        {
        }
    }

    public sealed class Ros1Uwvm_fourier_bridgeSetFsmStateRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Uwvm_fourier_bridgeSetFsmStateRequest>
    {
        public static readonly Ros1Uwvm_fourier_bridgeSetFsmStateRequestCodec Instance = new Ros1Uwvm_fourier_bridgeSetFsmStateRequestCodec();

        private Ros1Uwvm_fourier_bridgeSetFsmStateRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "uwvm_fourier_bridge/SetFsmStateRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_303406629d56a2b60a273488cd1e12081e7541374653bac04e2ca073d8c20885";
        public const int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 12;

        public byte[] Encode(_Ros1Uwvm_fourier_bridgeSetFsmStateRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Uwvm_fourier_bridgeSetFsmStateRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Uwvm_fourier_bridgeSetFsmStateRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Uwvm_fourier_bridgeSetFsmStateRequest value = ReadRos1Uwvm_fourier_bridgeSetFsmStateRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Uwvm_fourier_bridgeSetFsmStateRequest(_Codecs.Writer writer, _Ros1Uwvm_fourier_bridgeSetFsmStateRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        ulong part0 = value.@sequence;
        writer.Unsigned(part0, 8);
        int part1 = value.@state;
        writer.Unsigned(unchecked((uint)part1), 4);
    }

    private static _Ros1Uwvm_fourier_bridgeSetFsmStateRequest ReadRos1Uwvm_fourier_bridgeSetFsmStateRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Uwvm_fourier_bridgeSetFsmStateRequest();
        value.@sequence = unchecked((ulong)reader.Unsigned(8));
        value.@state = unchecked((int)reader.Unsigned(4));
        return value;
    }

    public sealed class _Ros1Uwvm_fourier_bridgeSetFsmStateResponse
    {
        public uint @status = 0;
        public string @error = "";

        public _Ros1Uwvm_fourier_bridgeSetFsmStateResponse()
        {
        }
    }

    public sealed class Ros1Uwvm_fourier_bridgeSetFsmStateResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Uwvm_fourier_bridgeSetFsmStateResponse>
    {
        public static readonly Ros1Uwvm_fourier_bridgeSetFsmStateResponseCodec Instance = new Ros1Uwvm_fourier_bridgeSetFsmStateResponseCodec();

        private Ros1Uwvm_fourier_bridgeSetFsmStateResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "uwvm_fourier_bridge/SetFsmStateResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_cffc820dc64a954aa94912941d3678a59a839b3dde4a6ebafdaf7d4367c22bd1";
        public const int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 136;

        public byte[] Encode(_Ros1Uwvm_fourier_bridgeSetFsmStateResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Uwvm_fourier_bridgeSetFsmStateResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Uwvm_fourier_bridgeSetFsmStateResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Uwvm_fourier_bridgeSetFsmStateResponse value = ReadRos1Uwvm_fourier_bridgeSetFsmStateResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Uwvm_fourier_bridgeSetFsmStateResponse(_Codecs.Writer writer, _Ros1Uwvm_fourier_bridgeSetFsmStateResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        uint part0 = value.@status;
        writer.Unsigned(part0, 4);
        string part1 = value.@error;
        WriteText(writer, part1, 128);
    }

    private static _Ros1Uwvm_fourier_bridgeSetFsmStateResponse ReadRos1Uwvm_fourier_bridgeSetFsmStateResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Uwvm_fourier_bridgeSetFsmStateResponse();
        value.@status = unchecked((uint)reader.Unsigned(4));
        value.@error = ReadText(reader, 128);
        return value;
    }

    public sealed class _Ros1Uwvm_fourier_bridgeSetGroupCommandRequest
    {
        public ulong @sequence = 0;
        public _Ros1Uwvm_fourier_bridgeGroupValues[] @position = new _Ros1Uwvm_fourier_bridgeGroupValues[0];
        public _Ros1Uwvm_fourier_bridgeGroupValues[] @velocity = new _Ros1Uwvm_fourier_bridgeGroupValues[0];
        public _Ros1Uwvm_fourier_bridgeGroupValues[] @torque = new _Ros1Uwvm_fourier_bridgeGroupValues[0];

        public _Ros1Uwvm_fourier_bridgeSetGroupCommandRequest()
        {
        }
    }

    public sealed class Ros1Uwvm_fourier_bridgeSetGroupCommandRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Uwvm_fourier_bridgeSetGroupCommandRequest>
    {
        public static readonly Ros1Uwvm_fourier_bridgeSetGroupCommandRequestCodec Instance = new Ros1Uwvm_fourier_bridgeSetGroupCommandRequestCodec();

        private Ros1Uwvm_fourier_bridgeSetGroupCommandRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "uwvm_fourier_bridge/SetGroupCommandRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_b313435600ece44507300ad1ea5e375244387cde33301484ffda0390ca523220";
        public const int MIN_WIRE_BYTES = 20, MAX_WIRE_BYTES = 15572;

        public byte[] Encode(_Ros1Uwvm_fourier_bridgeSetGroupCommandRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Uwvm_fourier_bridgeSetGroupCommandRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Uwvm_fourier_bridgeSetGroupCommandRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Uwvm_fourier_bridgeSetGroupCommandRequest value = ReadRos1Uwvm_fourier_bridgeSetGroupCommandRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Uwvm_fourier_bridgeSetGroupCommandRequest(_Codecs.Writer writer, _Ros1Uwvm_fourier_bridgeSetGroupCommandRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        ulong part0 = value.@sequence;
        writer.Unsigned(part0, 8);
        _Ros1Uwvm_fourier_bridgeGroupValues[] part1 = value.@position;
        if(part1 == null || part1.Length > 8)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part1.Length, 4);
        for(int index = 0; index < part1.Length; ++index)
        {
            _Ros1Uwvm_fourier_bridgeGroupValues element = part1[index];
            WriteRos1Uwvm_fourier_bridgeGroupValues(writer, element);
        }
        _Ros1Uwvm_fourier_bridgeGroupValues[] part2 = value.@velocity;
        if(part2 == null || part2.Length > 8)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part2.Length, 4);
        for(int index = 0; index < part2.Length; ++index)
        {
            _Ros1Uwvm_fourier_bridgeGroupValues element = part2[index];
            WriteRos1Uwvm_fourier_bridgeGroupValues(writer, element);
        }
        _Ros1Uwvm_fourier_bridgeGroupValues[] part3 = value.@torque;
        if(part3 == null || part3.Length > 8)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part3.Length, 4);
        for(int index = 0; index < part3.Length; ++index)
        {
            _Ros1Uwvm_fourier_bridgeGroupValues element = part3[index];
            WriteRos1Uwvm_fourier_bridgeGroupValues(writer, element);
        }
    }

    private static _Ros1Uwvm_fourier_bridgeSetGroupCommandRequest ReadRos1Uwvm_fourier_bridgeSetGroupCommandRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Uwvm_fourier_bridgeSetGroupCommandRequest();
        value.@sequence = unchecked((ulong)reader.Unsigned(8));
        value.@position = new _Ros1Uwvm_fourier_bridgeGroupValues[ReadCount(reader, 8, 8)];
        for(int index = 0; index < value.@position.Length; ++index)
            value.@position[index] = ReadRos1Uwvm_fourier_bridgeGroupValues(reader);
        value.@velocity = new _Ros1Uwvm_fourier_bridgeGroupValues[ReadCount(reader, 8, 8)];
        for(int index = 0; index < value.@velocity.Length; ++index)
            value.@velocity[index] = ReadRos1Uwvm_fourier_bridgeGroupValues(reader);
        value.@torque = new _Ros1Uwvm_fourier_bridgeGroupValues[ReadCount(reader, 8, 8)];
        for(int index = 0; index < value.@torque.Length; ++index)
            value.@torque[index] = ReadRos1Uwvm_fourier_bridgeGroupValues(reader);
        return value;
    }

    public sealed class _Ros1Uwvm_fourier_bridgeSetGroupCommandResponse
    {
        public uint @status = 0;
        public string @error = "";

        public _Ros1Uwvm_fourier_bridgeSetGroupCommandResponse()
        {
        }
    }

    public sealed class Ros1Uwvm_fourier_bridgeSetGroupCommandResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Uwvm_fourier_bridgeSetGroupCommandResponse>
    {
        public static readonly Ros1Uwvm_fourier_bridgeSetGroupCommandResponseCodec Instance = new Ros1Uwvm_fourier_bridgeSetGroupCommandResponseCodec();

        private Ros1Uwvm_fourier_bridgeSetGroupCommandResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "uwvm_fourier_bridge/SetGroupCommandResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_d4c199515080deccf6a7bbd7101c84f45d7b280a7ed618c2165231343aae558b";
        public const int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 136;

        public byte[] Encode(_Ros1Uwvm_fourier_bridgeSetGroupCommandResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Uwvm_fourier_bridgeSetGroupCommandResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Uwvm_fourier_bridgeSetGroupCommandResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Uwvm_fourier_bridgeSetGroupCommandResponse value = ReadRos1Uwvm_fourier_bridgeSetGroupCommandResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Uwvm_fourier_bridgeSetGroupCommandResponse(_Codecs.Writer writer, _Ros1Uwvm_fourier_bridgeSetGroupCommandResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        uint part0 = value.@status;
        writer.Unsigned(part0, 4);
        string part1 = value.@error;
        WriteText(writer, part1, 128);
    }

    private static _Ros1Uwvm_fourier_bridgeSetGroupCommandResponse ReadRos1Uwvm_fourier_bridgeSetGroupCommandResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Uwvm_fourier_bridgeSetGroupCommandResponse();
        value.@status = unchecked((uint)reader.Unsigned(4));
        value.@error = ReadText(reader, 128);
        return value;
    }

    public sealed class _Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest
    {
        public ulong @sequence = 0;
        public _Ros1Uwvm_fourier_bridgeGroupValues[] @kp = new _Ros1Uwvm_fourier_bridgeGroupValues[0];
        public _Ros1Uwvm_fourier_bridgeGroupValues[] @kd = new _Ros1Uwvm_fourier_bridgeGroupValues[0];

        public _Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest()
        {
        }
    }

    public sealed class Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest>
    {
        public static readonly Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequestCodec Instance = new Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequestCodec();

        private Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "uwvm_fourier_bridge/SetMotorCfgPdRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_b6dc93532397dc9016b751bf29f651e5cbb0823b5a03a3f8473823bb234bc51d";
        public const int MIN_WIRE_BYTES = 16, MAX_WIRE_BYTES = 10384;

        public byte[] Encode(_Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Uwvm_fourier_bridgeSetMotorCfgPdRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest value = ReadRos1Uwvm_fourier_bridgeSetMotorCfgPdRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Uwvm_fourier_bridgeSetMotorCfgPdRequest(_Codecs.Writer writer, _Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        ulong part0 = value.@sequence;
        writer.Unsigned(part0, 8);
        _Ros1Uwvm_fourier_bridgeGroupValues[] part1 = value.@kp;
        if(part1 == null || part1.Length > 8)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part1.Length, 4);
        for(int index = 0; index < part1.Length; ++index)
        {
            _Ros1Uwvm_fourier_bridgeGroupValues element = part1[index];
            WriteRos1Uwvm_fourier_bridgeGroupValues(writer, element);
        }
        _Ros1Uwvm_fourier_bridgeGroupValues[] part2 = value.@kd;
        if(part2 == null || part2.Length > 8)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part2.Length, 4);
        for(int index = 0; index < part2.Length; ++index)
        {
            _Ros1Uwvm_fourier_bridgeGroupValues element = part2[index];
            WriteRos1Uwvm_fourier_bridgeGroupValues(writer, element);
        }
    }

    private static _Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest ReadRos1Uwvm_fourier_bridgeSetMotorCfgPdRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest();
        value.@sequence = unchecked((ulong)reader.Unsigned(8));
        value.@kp = new _Ros1Uwvm_fourier_bridgeGroupValues[ReadCount(reader, 8, 8)];
        for(int index = 0; index < value.@kp.Length; ++index)
            value.@kp[index] = ReadRos1Uwvm_fourier_bridgeGroupValues(reader);
        value.@kd = new _Ros1Uwvm_fourier_bridgeGroupValues[ReadCount(reader, 8, 8)];
        for(int index = 0; index < value.@kd.Length; ++index)
            value.@kd[index] = ReadRos1Uwvm_fourier_bridgeGroupValues(reader);
        return value;
    }

    public sealed class _Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse
    {
        public uint @status = 0;
        public string @error = "";

        public _Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse()
        {
        }
    }

    public sealed class Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse>
    {
        public static readonly Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponseCodec Instance = new Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponseCodec();

        private Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "uwvm_fourier_bridge/SetMotorCfgPdResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_c1a69a2c03c6cee9b43484b29a800a5f82be4b9188e3b199eb2db8babd205bdc";
        public const int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 136;

        public byte[] Encode(_Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Uwvm_fourier_bridgeSetMotorCfgPdResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse value = ReadRos1Uwvm_fourier_bridgeSetMotorCfgPdResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Uwvm_fourier_bridgeSetMotorCfgPdResponse(_Codecs.Writer writer, _Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        uint part0 = value.@status;
        writer.Unsigned(part0, 4);
        string part1 = value.@error;
        WriteText(writer, part1, 128);
    }

    private static _Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse ReadRos1Uwvm_fourier_bridgeSetMotorCfgPdResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse();
        value.@status = unchecked((uint)reader.Unsigned(4));
        value.@error = ReadText(reader, 128);
        return value;
    }

    public sealed class _Ros1Uwvm_fourier_bridgeSetStandPoseRequest
    {
        public ulong @sequence = 0;
        public double @delta_z = 0;
        public double @delta_pitch = 0;
        public double @delta_yaw = 0;

        public _Ros1Uwvm_fourier_bridgeSetStandPoseRequest()
        {
        }
    }

    public sealed class Ros1Uwvm_fourier_bridgeSetStandPoseRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Uwvm_fourier_bridgeSetStandPoseRequest>
    {
        public static readonly Ros1Uwvm_fourier_bridgeSetStandPoseRequestCodec Instance = new Ros1Uwvm_fourier_bridgeSetStandPoseRequestCodec();

        private Ros1Uwvm_fourier_bridgeSetStandPoseRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "uwvm_fourier_bridge/SetStandPoseRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_75a21fe3986a90ff45b9e7ef023a93be9852d1174b5724b77b82b87e002492ed";
        public const int MIN_WIRE_BYTES = 32, MAX_WIRE_BYTES = 32;

        public byte[] Encode(_Ros1Uwvm_fourier_bridgeSetStandPoseRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Uwvm_fourier_bridgeSetStandPoseRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Uwvm_fourier_bridgeSetStandPoseRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Uwvm_fourier_bridgeSetStandPoseRequest value = ReadRos1Uwvm_fourier_bridgeSetStandPoseRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Uwvm_fourier_bridgeSetStandPoseRequest(_Codecs.Writer writer, _Ros1Uwvm_fourier_bridgeSetStandPoseRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        ulong part0 = value.@sequence;
        writer.Unsigned(part0, 8);
        double part1 = value.@delta_z;
        writer.Float64(part1);
        double part2 = value.@delta_pitch;
        writer.Float64(part2);
        double part3 = value.@delta_yaw;
        writer.Float64(part3);
    }

    private static _Ros1Uwvm_fourier_bridgeSetStandPoseRequest ReadRos1Uwvm_fourier_bridgeSetStandPoseRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Uwvm_fourier_bridgeSetStandPoseRequest();
        value.@sequence = unchecked((ulong)reader.Unsigned(8));
        value.@delta_z = reader.Float64();
        value.@delta_pitch = reader.Float64();
        value.@delta_yaw = reader.Float64();
        return value;
    }

    public sealed class _Ros1Uwvm_fourier_bridgeSetStandPoseResponse
    {
        public uint @status = 0;
        public string @error = "";

        public _Ros1Uwvm_fourier_bridgeSetStandPoseResponse()
        {
        }
    }

    public sealed class Ros1Uwvm_fourier_bridgeSetStandPoseResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Uwvm_fourier_bridgeSetStandPoseResponse>
    {
        public static readonly Ros1Uwvm_fourier_bridgeSetStandPoseResponseCodec Instance = new Ros1Uwvm_fourier_bridgeSetStandPoseResponseCodec();

        private Ros1Uwvm_fourier_bridgeSetStandPoseResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "uwvm_fourier_bridge/SetStandPoseResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_257da5b52ebfca54b067ced2acfab01e3aa3187c77751a5f82f9fda25885fe7e";
        public const int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 136;

        public byte[] Encode(_Ros1Uwvm_fourier_bridgeSetStandPoseResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Uwvm_fourier_bridgeSetStandPoseResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Uwvm_fourier_bridgeSetStandPoseResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Uwvm_fourier_bridgeSetStandPoseResponse value = ReadRos1Uwvm_fourier_bridgeSetStandPoseResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Uwvm_fourier_bridgeSetStandPoseResponse(_Codecs.Writer writer, _Ros1Uwvm_fourier_bridgeSetStandPoseResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        uint part0 = value.@status;
        writer.Unsigned(part0, 4);
        string part1 = value.@error;
        WriteText(writer, part1, 128);
    }

    private static _Ros1Uwvm_fourier_bridgeSetStandPoseResponse ReadRos1Uwvm_fourier_bridgeSetStandPoseResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Uwvm_fourier_bridgeSetStandPoseResponse();
        value.@status = unchecked((uint)reader.Unsigned(4));
        value.@error = ReadText(reader, 128);
        return value;
    }

    public sealed class _Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest
    {
        public ulong @sequence = 0;
        public int @state = 0;

        public _Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest()
        {
        }
    }

    public sealed class Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest>
    {
        public static readonly Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequestCodec Instance = new Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequestCodec();

        private Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "uwvm_fourier_bridge/SetUpperFsmStateRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_cc12b01c002d9e3662f16595a55df6abebdea2fe06e350b7e81f33bee0d47758";
        public const int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 12;

        public byte[] Encode(_Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Uwvm_fourier_bridgeSetUpperFsmStateRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest value = ReadRos1Uwvm_fourier_bridgeSetUpperFsmStateRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Uwvm_fourier_bridgeSetUpperFsmStateRequest(_Codecs.Writer writer, _Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        ulong part0 = value.@sequence;
        writer.Unsigned(part0, 8);
        int part1 = value.@state;
        writer.Unsigned(unchecked((uint)part1), 4);
    }

    private static _Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest ReadRos1Uwvm_fourier_bridgeSetUpperFsmStateRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest();
        value.@sequence = unchecked((ulong)reader.Unsigned(8));
        value.@state = unchecked((int)reader.Unsigned(4));
        return value;
    }

    public sealed class _Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse
    {
        public uint @status = 0;
        public string @error = "";

        public _Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse()
        {
        }
    }

    public sealed class Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse>
    {
        public static readonly Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponseCodec Instance = new Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponseCodec();

        private Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "uwvm_fourier_bridge/SetUpperFsmStateResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_27ee9830ebf52c3cfcdd8691bf1be9a1a63f7cd12c43cd30531b73501cd423c1";
        public const int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 136;

        public byte[] Encode(_Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Uwvm_fourier_bridgeSetUpperFsmStateResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse value = ReadRos1Uwvm_fourier_bridgeSetUpperFsmStateResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Uwvm_fourier_bridgeSetUpperFsmStateResponse(_Codecs.Writer writer, _Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        uint part0 = value.@status;
        writer.Unsigned(part0, 4);
        string part1 = value.@error;
        WriteText(writer, part1, 128);
    }

    private static _Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse ReadRos1Uwvm_fourier_bridgeSetUpperFsmStateResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse();
        value.@status = unchecked((uint)reader.Unsigned(4));
        value.@error = ReadText(reader, 128);
        return value;
    }

    public sealed class _Ros1Uwvm_fourier_bridgeSetVelocityRequest
    {
        public ulong @sequence = 0;
        public double @vx = 0;
        public double @vy = 0;
        public double @yaw = 0;
        public double @duration = 0;

        public _Ros1Uwvm_fourier_bridgeSetVelocityRequest()
        {
        }
    }

    public sealed class Ros1Uwvm_fourier_bridgeSetVelocityRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Uwvm_fourier_bridgeSetVelocityRequest>
    {
        public static readonly Ros1Uwvm_fourier_bridgeSetVelocityRequestCodec Instance = new Ros1Uwvm_fourier_bridgeSetVelocityRequestCodec();

        private Ros1Uwvm_fourier_bridgeSetVelocityRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "uwvm_fourier_bridge/SetVelocityRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_33eb9021c19ed28c9aabc0076b8e5cc9f36b1fcaebbb93ebfa3dc38e9691ed2d";
        public const int MIN_WIRE_BYTES = 40, MAX_WIRE_BYTES = 40;

        public byte[] Encode(_Ros1Uwvm_fourier_bridgeSetVelocityRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Uwvm_fourier_bridgeSetVelocityRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Uwvm_fourier_bridgeSetVelocityRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Uwvm_fourier_bridgeSetVelocityRequest value = ReadRos1Uwvm_fourier_bridgeSetVelocityRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Uwvm_fourier_bridgeSetVelocityRequest(_Codecs.Writer writer, _Ros1Uwvm_fourier_bridgeSetVelocityRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        ulong part0 = value.@sequence;
        writer.Unsigned(part0, 8);
        double part1 = value.@vx;
        writer.Float64(part1);
        double part2 = value.@vy;
        writer.Float64(part2);
        double part3 = value.@yaw;
        writer.Float64(part3);
        double part4 = value.@duration;
        writer.Float64(part4);
    }

    private static _Ros1Uwvm_fourier_bridgeSetVelocityRequest ReadRos1Uwvm_fourier_bridgeSetVelocityRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Uwvm_fourier_bridgeSetVelocityRequest();
        value.@sequence = unchecked((ulong)reader.Unsigned(8));
        value.@vx = reader.Float64();
        value.@vy = reader.Float64();
        value.@yaw = reader.Float64();
        value.@duration = reader.Float64();
        return value;
    }

    public sealed class _Ros1Uwvm_fourier_bridgeSetVelocityResponse
    {
        public uint @status = 0;
        public string @error = "";

        public _Ros1Uwvm_fourier_bridgeSetVelocityResponse()
        {
        }
    }

    public sealed class Ros1Uwvm_fourier_bridgeSetVelocityResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Uwvm_fourier_bridgeSetVelocityResponse>
    {
        public static readonly Ros1Uwvm_fourier_bridgeSetVelocityResponseCodec Instance = new Ros1Uwvm_fourier_bridgeSetVelocityResponseCodec();

        private Ros1Uwvm_fourier_bridgeSetVelocityResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "uwvm_fourier_bridge/SetVelocityResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_3325d6b620d3481b6976cd4579f197ed19d6a5074618f700273ca89e0eba762a";
        public const int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 136;

        public byte[] Encode(_Ros1Uwvm_fourier_bridgeSetVelocityResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Uwvm_fourier_bridgeSetVelocityResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Uwvm_fourier_bridgeSetVelocityResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Uwvm_fourier_bridgeSetVelocityResponse value = ReadRos1Uwvm_fourier_bridgeSetVelocityResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Uwvm_fourier_bridgeSetVelocityResponse(_Codecs.Writer writer, _Ros1Uwvm_fourier_bridgeSetVelocityResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        uint part0 = value.@status;
        writer.Unsigned(part0, 4);
        string part1 = value.@error;
        WriteText(writer, part1, 128);
    }

    private static _Ros1Uwvm_fourier_bridgeSetVelocityResponse ReadRos1Uwvm_fourier_bridgeSetVelocityResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Uwvm_fourier_bridgeSetVelocityResponse();
        value.@status = unchecked((uint)reader.Unsigned(4));
        value.@error = ReadText(reader, 128);
        return value;
    }

    public sealed class _Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest
    {
        public ulong @sequence = 0;
        public int @source = 0;

        public _Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest()
        {
        }
    }

    public sealed class Ros1Uwvm_fourier_bridgeSetVelocitySourceRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest>
    {
        public static readonly Ros1Uwvm_fourier_bridgeSetVelocitySourceRequestCodec Instance = new Ros1Uwvm_fourier_bridgeSetVelocitySourceRequestCodec();

        private Ros1Uwvm_fourier_bridgeSetVelocitySourceRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "uwvm_fourier_bridge/SetVelocitySourceRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_769c68344260812d775718b441b2a0e5e26422995c946031b919707994e295eb";
        public const int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 12;

        public byte[] Encode(_Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Uwvm_fourier_bridgeSetVelocitySourceRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest value = ReadRos1Uwvm_fourier_bridgeSetVelocitySourceRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Uwvm_fourier_bridgeSetVelocitySourceRequest(_Codecs.Writer writer, _Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        ulong part0 = value.@sequence;
        writer.Unsigned(part0, 8);
        int part1 = value.@source;
        writer.Unsigned(unchecked((uint)part1), 4);
    }

    private static _Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest ReadRos1Uwvm_fourier_bridgeSetVelocitySourceRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest();
        value.@sequence = unchecked((ulong)reader.Unsigned(8));
        value.@source = unchecked((int)reader.Unsigned(4));
        return value;
    }

    public sealed class _Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse
    {
        public uint @status = 0;
        public string @error = "";

        public _Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse()
        {
        }
    }

    public sealed class Ros1Uwvm_fourier_bridgeSetVelocitySourceResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse>
    {
        public static readonly Ros1Uwvm_fourier_bridgeSetVelocitySourceResponseCodec Instance = new Ros1Uwvm_fourier_bridgeSetVelocitySourceResponseCodec();

        private Ros1Uwvm_fourier_bridgeSetVelocitySourceResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "uwvm_fourier_bridge/SetVelocitySourceResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_d791bd1ff7d8219a98a9ad475cdf0274fa87638452ce0359de57abc05ff0c3be";
        public const int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 136;

        public byte[] Encode(_Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Uwvm_fourier_bridgeSetVelocitySourceResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse value = ReadRos1Uwvm_fourier_bridgeSetVelocitySourceResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Uwvm_fourier_bridgeSetVelocitySourceResponse(_Codecs.Writer writer, _Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        uint part0 = value.@status;
        writer.Unsigned(part0, 4);
        string part1 = value.@error;
        WriteText(writer, part1, 128);
    }

    private static _Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse ReadRos1Uwvm_fourier_bridgeSetVelocitySourceResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse();
        value.@status = unchecked((uint)reader.Unsigned(4));
        value.@error = ReadText(reader, 128);
        return value;
    }

    public sealed class _Ros1Uwvm_fourier_bridgeVelocityCommand
    {
        public ulong @sequence = 0;
        public double @vx = 0;
        public double @vy = 0;
        public double @yaw = 0;
        public double @duration = 0;

        public _Ros1Uwvm_fourier_bridgeVelocityCommand()
        {
        }
    }

    public sealed class Ros1Uwvm_fourier_bridgeVelocityCommandCodec : global::Uwvm.RosWasm.ICodec<_Ros1Uwvm_fourier_bridgeVelocityCommand>
    {
        public static readonly Ros1Uwvm_fourier_bridgeVelocityCommandCodec Instance = new Ros1Uwvm_fourier_bridgeVelocityCommandCodec();

        private Ros1Uwvm_fourier_bridgeVelocityCommandCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "uwvm_fourier_bridge/VelocityCommand";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_befc41dabd1a7359d32aa3dd4a0197e607fa84346f14fd79f8bc04d328b6ad54";
        public const int MIN_WIRE_BYTES = 40, MAX_WIRE_BYTES = 40;

        public byte[] Encode(_Ros1Uwvm_fourier_bridgeVelocityCommand value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Uwvm_fourier_bridgeVelocityCommand(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Uwvm_fourier_bridgeVelocityCommand Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Uwvm_fourier_bridgeVelocityCommand value = ReadRos1Uwvm_fourier_bridgeVelocityCommand(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Uwvm_fourier_bridgeVelocityCommand(_Codecs.Writer writer, _Ros1Uwvm_fourier_bridgeVelocityCommand value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        ulong part0 = value.@sequence;
        writer.Unsigned(part0, 8);
        double part1 = value.@vx;
        writer.Float64(part1);
        double part2 = value.@vy;
        writer.Float64(part2);
        double part3 = value.@yaw;
        writer.Float64(part3);
        double part4 = value.@duration;
        writer.Float64(part4);
    }

    private static _Ros1Uwvm_fourier_bridgeVelocityCommand ReadRos1Uwvm_fourier_bridgeVelocityCommand(_Codecs.Reader reader)
    {
        var value = new _Ros1Uwvm_fourier_bridgeVelocityCommand();
        value.@sequence = unchecked((ulong)reader.Unsigned(8));
        value.@vx = reader.Float64();
        value.@vy = reader.Float64();
        value.@yaw = reader.Float64();
        value.@duration = reader.Float64();
        return value;
    }

    public sealed class _Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest
    {
        public ulong @sequence = 0;
        public string[] @groups = new string[0];
        public double @timeout_seconds = 0;
        public double @poll_seconds = 0;

        public _Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest()
        {
        }
    }

    public sealed class Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequestCodec :
        global::Uwvm.RosWasm.ICodec<_Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest>
    {
        public static readonly Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequestCodec Instance =
            new Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequestCodec();

        private Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "uwvm_fourier_bridge/WaitGroupsMotionCompleteRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_27bdd6aa7689099eb40b3bdf96a1c3939677b016c685bd6fb6a275233b933b33";
        public const int MIN_WIRE_BYTES = 28, MAX_WIRE_BYTES = 1084;

        public byte[] Encode(_Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest value = ReadRos1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest(_Codecs.Writer writer,
                                                                                    _Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        ulong part0 = value.@sequence;
        writer.Unsigned(part0, 8);
        string[] part1 = value.@groups;
        if(part1 == null || part1.Length > 8)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part1.Length, 4);
        for(int index = 0; index < part1.Length; ++index)
        {
            string element = part1[index];
            WriteText(writer, element, 128);
        }
        double part2 = value.@timeout_seconds;
        writer.Float64(part2);
        double part3 = value.@poll_seconds;
        writer.Float64(part3);
    }

    private static _Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest ReadRos1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest();
        value.@sequence = unchecked((ulong)reader.Unsigned(8));
        value.@groups = new string[ReadCount(reader, 8, 4)];
        for(int index = 0; index < value.@groups.Length; ++index)
            value.@groups[index] = ReadText(reader, 128);
        value.@timeout_seconds = reader.Float64();
        value.@poll_seconds = reader.Float64();
        return value;
    }

    public sealed class _Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse
    {
        public uint @status = 0;
        public string @error = "";
        public bool @complete = false;

        public _Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse()
        {
        }
    }

    public sealed class Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponseCodec :
        global::Uwvm.RosWasm.ICodec<_Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse>
    {
        public static readonly Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponseCodec Instance =
            new Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponseCodec();

        private Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "uwvm_fourier_bridge/WaitGroupsMotionCompleteResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_7d0a1faabf2934ec1a75981a5ed4251017a666975174efca8be48c152a15fee8";
        public const int MIN_WIRE_BYTES = 9, MAX_WIRE_BYTES = 137;

        public byte[] Encode(_Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse value = ReadRos1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse(_Codecs.Writer writer,
                                                                                     _Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        uint part0 = value.@status;
        writer.Unsigned(part0, 4);
        string part1 = value.@error;
        WriteText(writer, part1, 128);
        bool part2 = value.@complete;
        writer.Unsigned(part2 ? 1UL : 0UL, 1);
    }

    private static _Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse ReadRos1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse();
        value.@status = unchecked((uint)reader.Unsigned(4));
        value.@error = ReadText(reader, 128);
        value.@complete = ReadBool(reader);
        return value;
    }
}
