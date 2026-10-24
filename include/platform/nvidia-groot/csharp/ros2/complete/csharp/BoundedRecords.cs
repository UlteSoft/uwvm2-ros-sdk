// @file BoundedRecords.cs
// @brief Represent complete typed values and their bounded wire layout for nvidia-groot.
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

    public sealed class _Ros2Uwvm_groot_bridgeMsgRGBFrame
    {
        public string @key = "";
        public uint[] @shape = new uint[5];
        public byte[] @pixels = new byte[0];

        public _Ros2Uwvm_groot_bridgeMsgRGBFrame()
        {
        }
    }

    public sealed class Ros2Uwvm_groot_bridgeMsgRGBFrameCodec : global::Uwvm.RosWasm.ICodec<_Ros2Uwvm_groot_bridgeMsgRGBFrame>
    {
        public static readonly Ros2Uwvm_groot_bridgeMsgRGBFrameCodec Instance = new Ros2Uwvm_groot_bridgeMsgRGBFrameCodec();

        private Ros2Uwvm_groot_bridgeMsgRGBFrameCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "uwvm_groot_bridge/msg/RGBFrame";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_db7172fe7a7f0672c907f31ca0b1cb6286b804246d62e0414ac4313ae1096364";
        public const int MIN_WIRE_BYTES = 28, MAX_WIRE_BYTES = 860;

        public byte[] Encode(_Ros2Uwvm_groot_bridgeMsgRGBFrame value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Uwvm_groot_bridgeMsgRGBFrame(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Uwvm_groot_bridgeMsgRGBFrame Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Uwvm_groot_bridgeMsgRGBFrame value = ReadRos2Uwvm_groot_bridgeMsgRGBFrame(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Uwvm_groot_bridgeMsgRGBFrame(_Codecs.Writer writer, _Ros2Uwvm_groot_bridgeMsgRGBFrame value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        string part0 = value.@key;
        WriteText(writer, part0, 64);
        uint[] part1 = value.@shape;
        if(part1 == null || part1.Length != 5)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part1.Length; ++index)
        {
            uint element = part1[index];
            writer.Unsigned(element, 4);
        }
        byte[] part2 = value.@pixels;
        if(part2 == null || part2.Length > 768)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part2.Length, 4);
        for(int index = 0; index < part2.Length; ++index)
        {
            byte element = part2[index];
            writer.Unsigned(element, 1);
        }
    }

    private static _Ros2Uwvm_groot_bridgeMsgRGBFrame ReadRos2Uwvm_groot_bridgeMsgRGBFrame(_Codecs.Reader reader)
    {
        var value = new _Ros2Uwvm_groot_bridgeMsgRGBFrame();
        value.@key = ReadText(reader, 64);
        value.@shape = new uint[5];
        for(int index = 0; index < value.@shape.Length; ++index)
            value.@shape[index] = unchecked((uint)reader.Unsigned(4));
        value.@pixels = new byte[ReadCount(reader, 768, 1)];
        for(int index = 0; index < value.@pixels.Length; ++index)
            value.@pixels[index] = unchecked((byte)reader.Unsigned(1));
        return value;
    }

    public sealed class _Ros2Uwvm_groot_bridgeMsgFloatTensor
    {
        public string @key = "";
        public uint[] @shape = new uint[3];
        public float[] @values = new float[0];

        public _Ros2Uwvm_groot_bridgeMsgFloatTensor()
        {
        }
    }

    public sealed class Ros2Uwvm_groot_bridgeMsgFloatTensorCodec : global::Uwvm.RosWasm.ICodec<_Ros2Uwvm_groot_bridgeMsgFloatTensor>
    {
        public static readonly Ros2Uwvm_groot_bridgeMsgFloatTensorCodec Instance = new Ros2Uwvm_groot_bridgeMsgFloatTensorCodec();

        private Ros2Uwvm_groot_bridgeMsgFloatTensorCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "uwvm_groot_bridge/msg/FloatTensor";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_a091d322ab737d2a9415f889fb78a18df7aec6ce74cfab0dcd5bb2a61ae3abae";
        public const int MIN_WIRE_BYTES = 20, MAX_WIRE_BYTES = 1364;

        public byte[] Encode(_Ros2Uwvm_groot_bridgeMsgFloatTensor value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Uwvm_groot_bridgeMsgFloatTensor(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Uwvm_groot_bridgeMsgFloatTensor Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Uwvm_groot_bridgeMsgFloatTensor value = ReadRos2Uwvm_groot_bridgeMsgFloatTensor(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Uwvm_groot_bridgeMsgFloatTensor(_Codecs.Writer writer, _Ros2Uwvm_groot_bridgeMsgFloatTensor value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        string part0 = value.@key;
        WriteText(writer, part0, 64);
        uint[] part1 = value.@shape;
        if(part1 == null || part1.Length != 3)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part1.Length; ++index)
        {
            uint element = part1[index];
            writer.Unsigned(element, 4);
        }
        float[] part2 = value.@values;
        if(part2 == null || part2.Length > 320)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part2.Length, 4);
        for(int index = 0; index < part2.Length; ++index)
        {
            float element = part2[index];
            WriteFloat32(writer, element);
        }
    }

    private static _Ros2Uwvm_groot_bridgeMsgFloatTensor ReadRos2Uwvm_groot_bridgeMsgFloatTensor(_Codecs.Reader reader)
    {
        var value = new _Ros2Uwvm_groot_bridgeMsgFloatTensor();
        value.@key = ReadText(reader, 64);
        value.@shape = new uint[3];
        for(int index = 0; index < value.@shape.Length; ++index)
            value.@shape[index] = unchecked((uint)reader.Unsigned(4));
        value.@values = new float[ReadCount(reader, 320, 4)];
        for(int index = 0; index < value.@values.Length; ++index)
            value.@values[index] = ReadFloat32(reader);
        return value;
    }

    public sealed class _Ros2Uwvm_groot_bridgeMsgTextSequence
    {
        public string @key = "";
        public uint[] @shape = new uint[2];
        public string[] @texts = new string[0];

        public _Ros2Uwvm_groot_bridgeMsgTextSequence()
        {
        }
    }

    public sealed class Ros2Uwvm_groot_bridgeMsgTextSequenceCodec : global::Uwvm.RosWasm.ICodec<_Ros2Uwvm_groot_bridgeMsgTextSequence>
    {
        public static readonly Ros2Uwvm_groot_bridgeMsgTextSequenceCodec Instance = new Ros2Uwvm_groot_bridgeMsgTextSequenceCodec();

        private Ros2Uwvm_groot_bridgeMsgTextSequenceCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "uwvm_groot_bridge/msg/TextSequence";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_895be974f2560f0afff7614f5400ff7205e013cda269825a8443628621c8e80d";
        public const int MIN_WIRE_BYTES = 16, MAX_WIRE_BYTES = 1120;

        public byte[] Encode(_Ros2Uwvm_groot_bridgeMsgTextSequence value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Uwvm_groot_bridgeMsgTextSequence(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Uwvm_groot_bridgeMsgTextSequence Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Uwvm_groot_bridgeMsgTextSequence value = ReadRos2Uwvm_groot_bridgeMsgTextSequence(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Uwvm_groot_bridgeMsgTextSequence(_Codecs.Writer writer, _Ros2Uwvm_groot_bridgeMsgTextSequence value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        string part0 = value.@key;
        WriteText(writer, part0, 64);
        uint[] part1 = value.@shape;
        if(part1 == null || part1.Length != 2)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part1.Length; ++index)
        {
            uint element = part1[index];
            writer.Unsigned(element, 4);
        }
        string[] part2 = value.@texts;
        if(part2 == null || part2.Length > 4)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part2.Length, 4);
        for(int index = 0; index < part2.Length; ++index)
        {
            string element = part2[index];
            WriteText(writer, element, 256);
        }
    }

    private static _Ros2Uwvm_groot_bridgeMsgTextSequence ReadRos2Uwvm_groot_bridgeMsgTextSequence(_Codecs.Reader reader)
    {
        var value = new _Ros2Uwvm_groot_bridgeMsgTextSequence();
        value.@key = ReadText(reader, 64);
        value.@shape = new uint[2];
        for(int index = 0; index < value.@shape.Length; ++index)
            value.@shape[index] = unchecked((uint)reader.Unsigned(4));
        value.@texts = new string[ReadCount(reader, 4, 4)];
        for(int index = 0; index < value.@texts.Length; ++index)
            value.@texts[index] = ReadText(reader, 256);
        return value;
    }

    public sealed class _Ros2Uwvm_groot_bridgeSrvInferAction_Request
    {
        public ulong @application_nonce = 0;
        public _Ros2Uwvm_groot_bridgeMsgRGBFrame[] @video = new _Ros2Uwvm_groot_bridgeMsgRGBFrame[0];
        public _Ros2Uwvm_groot_bridgeMsgFloatTensor[] @state = new _Ros2Uwvm_groot_bridgeMsgFloatTensor[0];
        public _Ros2Uwvm_groot_bridgeMsgTextSequence[] @language = new _Ros2Uwvm_groot_bridgeMsgTextSequence[0];

        public _Ros2Uwvm_groot_bridgeSrvInferAction_Request()
        {
        }
    }

    public sealed class Ros2Uwvm_groot_bridgeSrvInferAction_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Uwvm_groot_bridgeSrvInferAction_Request>
    {
        public static readonly Ros2Uwvm_groot_bridgeSrvInferAction_RequestCodec Instance = new Ros2Uwvm_groot_bridgeSrvInferAction_RequestCodec();

        private Ros2Uwvm_groot_bridgeSrvInferAction_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "uwvm_groot_bridge/srv/InferAction_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_78f85929fb8646e9a92f17cafa3e8296fde42aaf49a56b271531ebad869a0fa6";
        public const int MIN_WIRE_BYTES = 20, MAX_WIRE_BYTES = 10296;

        public byte[] Encode(_Ros2Uwvm_groot_bridgeSrvInferAction_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Uwvm_groot_bridgeSrvInferAction_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Uwvm_groot_bridgeSrvInferAction_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Uwvm_groot_bridgeSrvInferAction_Request value = ReadRos2Uwvm_groot_bridgeSrvInferAction_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Uwvm_groot_bridgeSrvInferAction_Request(_Codecs.Writer writer, _Ros2Uwvm_groot_bridgeSrvInferAction_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        ulong part0 = value.@application_nonce;
        writer.Unsigned(part0, 8);
        _Ros2Uwvm_groot_bridgeMsgRGBFrame[] part1 = value.@video;
        if(part1 == null || part1.Length > 3)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part1.Length, 4);
        for(int index = 0; index < part1.Length; ++index)
        {
            _Ros2Uwvm_groot_bridgeMsgRGBFrame element = part1[index];
            WriteRos2Uwvm_groot_bridgeMsgRGBFrame(writer, element);
        }
        _Ros2Uwvm_groot_bridgeMsgFloatTensor[] part2 = value.@state;
        if(part2 == null || part2.Length > 4)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part2.Length, 4);
        for(int index = 0; index < part2.Length; ++index)
        {
            _Ros2Uwvm_groot_bridgeMsgFloatTensor element = part2[index];
            WriteRos2Uwvm_groot_bridgeMsgFloatTensor(writer, element);
        }
        _Ros2Uwvm_groot_bridgeMsgTextSequence[] part3 = value.@language;
        if(part3 == null || part3.Length > 2)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part3.Length, 4);
        for(int index = 0; index < part3.Length; ++index)
        {
            _Ros2Uwvm_groot_bridgeMsgTextSequence element = part3[index];
            WriteRos2Uwvm_groot_bridgeMsgTextSequence(writer, element);
        }
    }

    private static _Ros2Uwvm_groot_bridgeSrvInferAction_Request ReadRos2Uwvm_groot_bridgeSrvInferAction_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Uwvm_groot_bridgeSrvInferAction_Request();
        value.@application_nonce = unchecked((ulong)reader.Unsigned(8));
        value.@video = new _Ros2Uwvm_groot_bridgeMsgRGBFrame[ReadCount(reader, 3, 28)];
        for(int index = 0; index < value.@video.Length; ++index)
            value.@video[index] = ReadRos2Uwvm_groot_bridgeMsgRGBFrame(reader);
        value.@state = new _Ros2Uwvm_groot_bridgeMsgFloatTensor[ReadCount(reader, 4, 20)];
        for(int index = 0; index < value.@state.Length; ++index)
            value.@state[index] = ReadRos2Uwvm_groot_bridgeMsgFloatTensor(reader);
        value.@language = new _Ros2Uwvm_groot_bridgeMsgTextSequence[ReadCount(reader, 2, 16)];
        for(int index = 0; index < value.@language.Length; ++index)
            value.@language[index] = ReadRos2Uwvm_groot_bridgeMsgTextSequence(reader);
        return value;
    }

    public sealed class _Ros2Uwvm_groot_bridgeSrvInferAction_Response
    {
        public uint @status = 0;
        public ulong @application_nonce = 0;
        public _Ros2Uwvm_groot_bridgeMsgFloatTensor[] @action = new _Ros2Uwvm_groot_bridgeMsgFloatTensor[0];
        public bool @info_is_empty = false;

        public _Ros2Uwvm_groot_bridgeSrvInferAction_Response()
        {
        }
    }

    public sealed class Ros2Uwvm_groot_bridgeSrvInferAction_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Uwvm_groot_bridgeSrvInferAction_Response>
    {
        public static readonly Ros2Uwvm_groot_bridgeSrvInferAction_ResponseCodec Instance = new Ros2Uwvm_groot_bridgeSrvInferAction_ResponseCodec();

        private Ros2Uwvm_groot_bridgeSrvInferAction_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "uwvm_groot_bridge/srv/InferAction_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_787281a2adea187ae43ff951a414dd7563b3e08318414e5199e1950b8143a3ce";
        public const int MIN_WIRE_BYTES = 17, MAX_WIRE_BYTES = 10929;

        public byte[] Encode(_Ros2Uwvm_groot_bridgeSrvInferAction_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Uwvm_groot_bridgeSrvInferAction_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Uwvm_groot_bridgeSrvInferAction_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Uwvm_groot_bridgeSrvInferAction_Response value = ReadRos2Uwvm_groot_bridgeSrvInferAction_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Uwvm_groot_bridgeSrvInferAction_Response(_Codecs.Writer writer, _Ros2Uwvm_groot_bridgeSrvInferAction_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        uint part0 = value.@status;
        writer.Unsigned(part0, 4);
        ulong part1 = value.@application_nonce;
        writer.Unsigned(part1, 8);
        _Ros2Uwvm_groot_bridgeMsgFloatTensor[] part2 = value.@action;
        if(part2 == null || part2.Length > 8)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part2.Length, 4);
        for(int index = 0; index < part2.Length; ++index)
        {
            _Ros2Uwvm_groot_bridgeMsgFloatTensor element = part2[index];
            WriteRos2Uwvm_groot_bridgeMsgFloatTensor(writer, element);
        }
        bool part3 = value.@info_is_empty;
        writer.Unsigned(part3 ? 1UL : 0UL, 1);
    }

    private static _Ros2Uwvm_groot_bridgeSrvInferAction_Response ReadRos2Uwvm_groot_bridgeSrvInferAction_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Uwvm_groot_bridgeSrvInferAction_Response();
        value.@status = unchecked((uint)reader.Unsigned(4));
        value.@application_nonce = unchecked((ulong)reader.Unsigned(8));
        value.@action = new _Ros2Uwvm_groot_bridgeMsgFloatTensor[ReadCount(reader, 8, 20)];
        for(int index = 0; index < value.@action.Length; ++index)
            value.@action[index] = ReadRos2Uwvm_groot_bridgeMsgFloatTensor(reader);
        value.@info_is_empty = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Uwvm_groot_bridgeMsgRGBDescriptor
    {
        public string @key = "";
        public uint[] @shape = new uint[5];

        public _Ros2Uwvm_groot_bridgeMsgRGBDescriptor()
        {
        }
    }

    public sealed class Ros2Uwvm_groot_bridgeMsgRGBDescriptorCodec : global::Uwvm.RosWasm.ICodec<_Ros2Uwvm_groot_bridgeMsgRGBDescriptor>
    {
        public static readonly Ros2Uwvm_groot_bridgeMsgRGBDescriptorCodec Instance = new Ros2Uwvm_groot_bridgeMsgRGBDescriptorCodec();

        private Ros2Uwvm_groot_bridgeMsgRGBDescriptorCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "uwvm_groot_bridge/msg/RGBDescriptor";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_6daaa392f15643aa3afe5c101c6b649dc2e63f38b61d0332309a280fa9b48e40";
        public const int MIN_WIRE_BYTES = 24, MAX_WIRE_BYTES = 88;

        public byte[] Encode(_Ros2Uwvm_groot_bridgeMsgRGBDescriptor value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Uwvm_groot_bridgeMsgRGBDescriptor(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Uwvm_groot_bridgeMsgRGBDescriptor Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Uwvm_groot_bridgeMsgRGBDescriptor value = ReadRos2Uwvm_groot_bridgeMsgRGBDescriptor(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Uwvm_groot_bridgeMsgRGBDescriptor(_Codecs.Writer writer, _Ros2Uwvm_groot_bridgeMsgRGBDescriptor value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        string part0 = value.@key;
        WriteText(writer, part0, 64);
        uint[] part1 = value.@shape;
        if(part1 == null || part1.Length != 5)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part1.Length; ++index)
        {
            uint element = part1[index];
            writer.Unsigned(element, 4);
        }
    }

    private static _Ros2Uwvm_groot_bridgeMsgRGBDescriptor ReadRos2Uwvm_groot_bridgeMsgRGBDescriptor(_Codecs.Reader reader)
    {
        var value = new _Ros2Uwvm_groot_bridgeMsgRGBDescriptor();
        value.@key = ReadText(reader, 64);
        value.@shape = new uint[5];
        for(int index = 0; index < value.@shape.Length; ++index)
            value.@shape[index] = unchecked((uint)reader.Unsigned(4));
        return value;
    }

    public sealed class _Ros2Uwvm_groot_bridgeSrvBeginObservation_Request
    {
        public ulong @observation_nonce = 0;
        public _Ros2Uwvm_groot_bridgeMsgRGBDescriptor[] @video = new _Ros2Uwvm_groot_bridgeMsgRGBDescriptor[0];

        public _Ros2Uwvm_groot_bridgeSrvBeginObservation_Request()
        {
        }
    }

    public sealed class Ros2Uwvm_groot_bridgeSrvBeginObservation_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Uwvm_groot_bridgeSrvBeginObservation_Request>
    {
        public static readonly Ros2Uwvm_groot_bridgeSrvBeginObservation_RequestCodec Instance = new Ros2Uwvm_groot_bridgeSrvBeginObservation_RequestCodec();

        private Ros2Uwvm_groot_bridgeSrvBeginObservation_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "uwvm_groot_bridge/srv/BeginObservation_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_76a3b103328e39f46ea2c1cf47dcc417c110771c2253c4defad577906d6d7ba2";
        public const int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 276;

        public byte[] Encode(_Ros2Uwvm_groot_bridgeSrvBeginObservation_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Uwvm_groot_bridgeSrvBeginObservation_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Uwvm_groot_bridgeSrvBeginObservation_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Uwvm_groot_bridgeSrvBeginObservation_Request value = ReadRos2Uwvm_groot_bridgeSrvBeginObservation_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Uwvm_groot_bridgeSrvBeginObservation_Request(_Codecs.Writer writer, _Ros2Uwvm_groot_bridgeSrvBeginObservation_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        ulong part0 = value.@observation_nonce;
        writer.Unsigned(part0, 8);
        _Ros2Uwvm_groot_bridgeMsgRGBDescriptor[] part1 = value.@video;
        if(part1 == null || part1.Length > 3)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part1.Length, 4);
        for(int index = 0; index < part1.Length; ++index)
        {
            _Ros2Uwvm_groot_bridgeMsgRGBDescriptor element = part1[index];
            WriteRos2Uwvm_groot_bridgeMsgRGBDescriptor(writer, element);
        }
    }

    private static _Ros2Uwvm_groot_bridgeSrvBeginObservation_Request ReadRos2Uwvm_groot_bridgeSrvBeginObservation_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Uwvm_groot_bridgeSrvBeginObservation_Request();
        value.@observation_nonce = unchecked((ulong)reader.Unsigned(8));
        value.@video = new _Ros2Uwvm_groot_bridgeMsgRGBDescriptor[ReadCount(reader, 3, 24)];
        for(int index = 0; index < value.@video.Length; ++index)
            value.@video[index] = ReadRos2Uwvm_groot_bridgeMsgRGBDescriptor(reader);
        return value;
    }

    public sealed class _Ros2Uwvm_groot_bridgeSrvBeginObservation_Response
    {
        public uint @status = 0;
        public ulong @observation_nonce = 0;

        public _Ros2Uwvm_groot_bridgeSrvBeginObservation_Response()
        {
        }
    }

    public sealed class Ros2Uwvm_groot_bridgeSrvBeginObservation_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Uwvm_groot_bridgeSrvBeginObservation_Response>
    {
        public static readonly Ros2Uwvm_groot_bridgeSrvBeginObservation_ResponseCodec Instance = new Ros2Uwvm_groot_bridgeSrvBeginObservation_ResponseCodec();

        private Ros2Uwvm_groot_bridgeSrvBeginObservation_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "uwvm_groot_bridge/srv/BeginObservation_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_53141471de18d5d46601139c6ef67c2381f4274030bb05559354f2aa07def049";
        public const int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 12;

        public byte[] Encode(_Ros2Uwvm_groot_bridgeSrvBeginObservation_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Uwvm_groot_bridgeSrvBeginObservation_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Uwvm_groot_bridgeSrvBeginObservation_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Uwvm_groot_bridgeSrvBeginObservation_Response value = ReadRos2Uwvm_groot_bridgeSrvBeginObservation_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Uwvm_groot_bridgeSrvBeginObservation_Response(_Codecs.Writer writer, _Ros2Uwvm_groot_bridgeSrvBeginObservation_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        uint part0 = value.@status;
        writer.Unsigned(part0, 4);
        ulong part1 = value.@observation_nonce;
        writer.Unsigned(part1, 8);
    }

    private static _Ros2Uwvm_groot_bridgeSrvBeginObservation_Response ReadRos2Uwvm_groot_bridgeSrvBeginObservation_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Uwvm_groot_bridgeSrvBeginObservation_Response();
        value.@status = unchecked((uint)reader.Unsigned(4));
        value.@observation_nonce = unchecked((ulong)reader.Unsigned(8));
        return value;
    }

    public sealed class _Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request
    {
        public ulong @observation_nonce = 0;
        public string @key = "";
        public uint @offset = 0;
        public byte[] @pixels = new byte[0];

        public _Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request()
        {
        }
    }

    public sealed class Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request>
    {
        public static readonly Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_RequestCodec Instance = new Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_RequestCodec();

        private Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "uwvm_groot_bridge/srv/WriteRGBChunk_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_c7fe45f5da3c73a4d556ad72e0ce5c40d70c531714f0ac841a791404b1048f2c";
        public const int MIN_WIRE_BYTES = 20, MAX_WIRE_BYTES = 852;

        public byte[] Encode(_Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Uwvm_groot_bridgeSrvWriteRGBChunk_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request value = ReadRos2Uwvm_groot_bridgeSrvWriteRGBChunk_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Uwvm_groot_bridgeSrvWriteRGBChunk_Request(_Codecs.Writer writer, _Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        ulong part0 = value.@observation_nonce;
        writer.Unsigned(part0, 8);
        string part1 = value.@key;
        WriteText(writer, part1, 64);
        uint part2 = value.@offset;
        writer.Unsigned(part2, 4);
        byte[] part3 = value.@pixels;
        if(part3 == null || part3.Length > 768)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part3.Length, 4);
        for(int index = 0; index < part3.Length; ++index)
        {
            byte element = part3[index];
            writer.Unsigned(element, 1);
        }
    }

    private static _Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request ReadRos2Uwvm_groot_bridgeSrvWriteRGBChunk_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request();
        value.@observation_nonce = unchecked((ulong)reader.Unsigned(8));
        value.@key = ReadText(reader, 64);
        value.@offset = unchecked((uint)reader.Unsigned(4));
        value.@pixels = new byte[ReadCount(reader, 768, 1)];
        for(int index = 0; index < value.@pixels.Length; ++index)
            value.@pixels[index] = unchecked((byte)reader.Unsigned(1));
        return value;
    }

    public sealed class _Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response
    {
        public uint @status = 0;
        public ulong @observation_nonce = 0;
        public uint @accepted_bytes = 0;

        public _Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response()
        {
        }
    }

    public sealed class Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response>
    {
        public static readonly Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_ResponseCodec Instance = new Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_ResponseCodec();

        private Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "uwvm_groot_bridge/srv/WriteRGBChunk_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_4c279e0701b59c05f0eb185c1990b4e6a0bb1550ca638b04b60b31143e11efba";
        public const int MIN_WIRE_BYTES = 16, MAX_WIRE_BYTES = 16;

        public byte[] Encode(_Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Uwvm_groot_bridgeSrvWriteRGBChunk_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response value = ReadRos2Uwvm_groot_bridgeSrvWriteRGBChunk_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Uwvm_groot_bridgeSrvWriteRGBChunk_Response(_Codecs.Writer writer, _Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        uint part0 = value.@status;
        writer.Unsigned(part0, 4);
        ulong part1 = value.@observation_nonce;
        writer.Unsigned(part1, 8);
        uint part2 = value.@accepted_bytes;
        writer.Unsigned(part2, 4);
    }

    private static _Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response ReadRos2Uwvm_groot_bridgeSrvWriteRGBChunk_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response();
        value.@status = unchecked((uint)reader.Unsigned(4));
        value.@observation_nonce = unchecked((ulong)reader.Unsigned(8));
        value.@accepted_bytes = unchecked((uint)reader.Unsigned(4));
        return value;
    }

    public sealed class _Ros2Uwvm_groot_bridgeSrvReleaseObservation_Request
    {
        public ulong @observation_nonce = 0;

        public _Ros2Uwvm_groot_bridgeSrvReleaseObservation_Request()
        {
        }
    }

    public sealed class Ros2Uwvm_groot_bridgeSrvReleaseObservation_RequestCodec :
        global::Uwvm.RosWasm.ICodec<_Ros2Uwvm_groot_bridgeSrvReleaseObservation_Request>
    {
        public static readonly Ros2Uwvm_groot_bridgeSrvReleaseObservation_RequestCodec Instance = new Ros2Uwvm_groot_bridgeSrvReleaseObservation_RequestCodec();

        private Ros2Uwvm_groot_bridgeSrvReleaseObservation_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "uwvm_groot_bridge/srv/ReleaseObservation_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_dae7e73133b73414ed9d85bf3bf3bbc699f84976dbce9b12f68a5d710b3190c5";
        public const int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 8;

        public byte[] Encode(_Ros2Uwvm_groot_bridgeSrvReleaseObservation_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Uwvm_groot_bridgeSrvReleaseObservation_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Uwvm_groot_bridgeSrvReleaseObservation_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Uwvm_groot_bridgeSrvReleaseObservation_Request value = ReadRos2Uwvm_groot_bridgeSrvReleaseObservation_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Uwvm_groot_bridgeSrvReleaseObservation_Request(_Codecs.Writer writer,
                                                                                _Ros2Uwvm_groot_bridgeSrvReleaseObservation_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        ulong part0 = value.@observation_nonce;
        writer.Unsigned(part0, 8);
    }

    private static _Ros2Uwvm_groot_bridgeSrvReleaseObservation_Request ReadRos2Uwvm_groot_bridgeSrvReleaseObservation_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Uwvm_groot_bridgeSrvReleaseObservation_Request();
        value.@observation_nonce = unchecked((ulong)reader.Unsigned(8));
        return value;
    }

    public sealed class _Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response
    {
        public uint @status = 0;
        public ulong @observation_nonce = 0;

        public _Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response()
        {
        }
    }

    public sealed class Ros2Uwvm_groot_bridgeSrvReleaseObservation_ResponseCodec :
        global::Uwvm.RosWasm.ICodec<_Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response>
    {
        public static readonly Ros2Uwvm_groot_bridgeSrvReleaseObservation_ResponseCodec Instance =
            new Ros2Uwvm_groot_bridgeSrvReleaseObservation_ResponseCodec();

        private Ros2Uwvm_groot_bridgeSrvReleaseObservation_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "uwvm_groot_bridge/srv/ReleaseObservation_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_776da57c3952c647fc2c3f18855cb889747d84d6824222c3b8be267db1688d69";
        public const int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 12;

        public byte[] Encode(_Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Uwvm_groot_bridgeSrvReleaseObservation_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response value = ReadRos2Uwvm_groot_bridgeSrvReleaseObservation_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Uwvm_groot_bridgeSrvReleaseObservation_Response(_Codecs.Writer writer,
                                                                                 _Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        uint part0 = value.@status;
        writer.Unsigned(part0, 4);
        ulong part1 = value.@observation_nonce;
        writer.Unsigned(part1, 8);
    }

    private static _Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response ReadRos2Uwvm_groot_bridgeSrvReleaseObservation_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response();
        value.@status = unchecked((uint)reader.Unsigned(4));
        value.@observation_nonce = unchecked((ulong)reader.Unsigned(8));
        return value;
    }

    public sealed class _Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request
    {
        public ulong @application_nonce = 0;
        public ulong @observation_nonce = 0;
        public _Ros2Uwvm_groot_bridgeMsgFloatTensor[] @state = new _Ros2Uwvm_groot_bridgeMsgFloatTensor[0];
        public _Ros2Uwvm_groot_bridgeMsgTextSequence[] @language = new _Ros2Uwvm_groot_bridgeMsgTextSequence[0];

        public _Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request()
        {
        }
    }

    public sealed class Ros2Uwvm_groot_bridgeSrvInferUploadedAction_RequestCodec :
        global::Uwvm.RosWasm.ICodec<_Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request>
    {
        public static readonly Ros2Uwvm_groot_bridgeSrvInferUploadedAction_RequestCodec Instance =
            new Ros2Uwvm_groot_bridgeSrvInferUploadedAction_RequestCodec();

        private Ros2Uwvm_groot_bridgeSrvInferUploadedAction_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "uwvm_groot_bridge/srv/InferUploadedAction_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_fab202af4445441157f6ac5249ed0eeb3035f5c88c467fb363a2ef024a5c524d";
        public const int MIN_WIRE_BYTES = 24, MAX_WIRE_BYTES = 7720;

        public byte[] Encode(_Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Uwvm_groot_bridgeSrvInferUploadedAction_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request value = ReadRos2Uwvm_groot_bridgeSrvInferUploadedAction_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Uwvm_groot_bridgeSrvInferUploadedAction_Request(_Codecs.Writer writer,
                                                                                 _Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        ulong part0 = value.@application_nonce;
        writer.Unsigned(part0, 8);
        ulong part1 = value.@observation_nonce;
        writer.Unsigned(part1, 8);
        _Ros2Uwvm_groot_bridgeMsgFloatTensor[] part2 = value.@state;
        if(part2 == null || part2.Length > 4)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part2.Length, 4);
        for(int index = 0; index < part2.Length; ++index)
        {
            _Ros2Uwvm_groot_bridgeMsgFloatTensor element = part2[index];
            WriteRos2Uwvm_groot_bridgeMsgFloatTensor(writer, element);
        }
        _Ros2Uwvm_groot_bridgeMsgTextSequence[] part3 = value.@language;
        if(part3 == null || part3.Length > 2)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part3.Length, 4);
        for(int index = 0; index < part3.Length; ++index)
        {
            _Ros2Uwvm_groot_bridgeMsgTextSequence element = part3[index];
            WriteRos2Uwvm_groot_bridgeMsgTextSequence(writer, element);
        }
    }

    private static _Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request ReadRos2Uwvm_groot_bridgeSrvInferUploadedAction_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request();
        value.@application_nonce = unchecked((ulong)reader.Unsigned(8));
        value.@observation_nonce = unchecked((ulong)reader.Unsigned(8));
        value.@state = new _Ros2Uwvm_groot_bridgeMsgFloatTensor[ReadCount(reader, 4, 20)];
        for(int index = 0; index < value.@state.Length; ++index)
            value.@state[index] = ReadRos2Uwvm_groot_bridgeMsgFloatTensor(reader);
        value.@language = new _Ros2Uwvm_groot_bridgeMsgTextSequence[ReadCount(reader, 2, 16)];
        for(int index = 0; index < value.@language.Length; ++index)
            value.@language[index] = ReadRos2Uwvm_groot_bridgeMsgTextSequence(reader);
        return value;
    }

    public sealed class _Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response
    {
        public uint @status = 0;
        public ulong @application_nonce = 0;
        public _Ros2Uwvm_groot_bridgeMsgFloatTensor[] @action = new _Ros2Uwvm_groot_bridgeMsgFloatTensor[0];
        public bool @info_is_empty = false;

        public _Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response()
        {
        }
    }

    public sealed class Ros2Uwvm_groot_bridgeSrvInferUploadedAction_ResponseCodec :
        global::Uwvm.RosWasm.ICodec<_Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response>
    {
        public static readonly Ros2Uwvm_groot_bridgeSrvInferUploadedAction_ResponseCodec Instance =
            new Ros2Uwvm_groot_bridgeSrvInferUploadedAction_ResponseCodec();

        private Ros2Uwvm_groot_bridgeSrvInferUploadedAction_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "uwvm_groot_bridge/srv/InferUploadedAction_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_b8ae8113a9cd0e2d51ffc78d81f45e047cc03282bb9e4b82dd3a2571be29d93e";
        public const int MIN_WIRE_BYTES = 17, MAX_WIRE_BYTES = 10929;

        public byte[] Encode(_Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Uwvm_groot_bridgeSrvInferUploadedAction_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response value = ReadRos2Uwvm_groot_bridgeSrvInferUploadedAction_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Uwvm_groot_bridgeSrvInferUploadedAction_Response(_Codecs.Writer writer,
                                                                                  _Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        uint part0 = value.@status;
        writer.Unsigned(part0, 4);
        ulong part1 = value.@application_nonce;
        writer.Unsigned(part1, 8);
        _Ros2Uwvm_groot_bridgeMsgFloatTensor[] part2 = value.@action;
        if(part2 == null || part2.Length > 8)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part2.Length, 4);
        for(int index = 0; index < part2.Length; ++index)
        {
            _Ros2Uwvm_groot_bridgeMsgFloatTensor element = part2[index];
            WriteRos2Uwvm_groot_bridgeMsgFloatTensor(writer, element);
        }
        bool part3 = value.@info_is_empty;
        writer.Unsigned(part3 ? 1UL : 0UL, 1);
    }

    private static _Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response ReadRos2Uwvm_groot_bridgeSrvInferUploadedAction_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response();
        value.@status = unchecked((uint)reader.Unsigned(4));
        value.@application_nonce = unchecked((ulong)reader.Unsigned(8));
        value.@action = new _Ros2Uwvm_groot_bridgeMsgFloatTensor[ReadCount(reader, 8, 20)];
        for(int index = 0; index < value.@action.Length; ++index)
            value.@action[index] = ReadRos2Uwvm_groot_bridgeMsgFloatTensor(reader);
        value.@info_is_empty = ReadBool(reader);
        return value;
    }
}
