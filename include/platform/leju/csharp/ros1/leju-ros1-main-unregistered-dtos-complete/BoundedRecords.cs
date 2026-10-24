/**
 * @file BoundedRecords.cs
 * @brief Full leju csharp codecs and original record metadata.
 * @details Complete leju ros1_main_unregistered_dtos values in csharp. 2 original records retain 5 fields and 2
 * interface descriptions. Scalar widths, bounds, units, defaults and identities follow the pinned native
 * definitions. Encoding is local; compiler, guest and native ROS acceptance require separate receipts. See the
 * profile API manual under document/platform/leju/en_US/catalog/.
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

    public sealed class _Ros1Kuavo_sdkQv
    {
        public double[] @value = new double[0];

        public _Ros1Kuavo_sdkQv()
        {
        }
    }

    public sealed class Ros1Kuavo_sdkQvCodec : global::Uwvm.RosWasm.ICodec<_Ros1Kuavo_sdkQv>
    {
        public static readonly Ros1Kuavo_sdkQvCodec Instance = new Ros1Kuavo_sdkQvCodec();

        private Ros1Kuavo_sdkQvCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "kuavo_sdk/qv";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_99d76f2c912c99d52786d5e2aa42bb256e1a6c997d3cf9daa2a6918697563e32";
        public const int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 132;

        public byte[] Encode(_Ros1Kuavo_sdkQv value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Kuavo_sdkQv(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Kuavo_sdkQv Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Kuavo_sdkQv value = ReadRos1Kuavo_sdkQv(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Kuavo_sdkQv(_Codecs.Writer writer, _Ros1Kuavo_sdkQv value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        double[] part0 = value.@value;
        if(part0 == null || part0.Length > 16)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part0.Length, 4);
        for(int index = 0; index < part0.Length; ++index)
        {
            double element = part0[index];
            writer.Float64(element);
        }
    }

    private static _Ros1Kuavo_sdkQv ReadRos1Kuavo_sdkQv(_Codecs.Reader reader)
    {
        var value = new _Ros1Kuavo_sdkQv();
        value.@value = new double[ReadCount(reader, 16, 8)];
        for(int index = 0; index < value.@value.Length; ++index)
            value.@value[index] = reader.Float64();
        return value;
    }

    public sealed class _Ros1Kuavo_sdkFullBodyTargetTrajectories
    {
        public double[] @timeTrajectory = new double[0];
        public int[] @footIndexTrajectory = new int[0];
        public _Ros1Kuavo_sdkQv[] @fullBodyQTrajectory = new _Ros1Kuavo_sdkQv[0];
        public _Ros1Kuavo_sdkQv[] @fullBodyVTrajectory = new _Ros1Kuavo_sdkQv[0];

        public _Ros1Kuavo_sdkFullBodyTargetTrajectories()
        {
        }
    }

    public sealed class Ros1Kuavo_sdkFullBodyTargetTrajectoriesCodec : global::Uwvm.RosWasm.ICodec<_Ros1Kuavo_sdkFullBodyTargetTrajectories>
    {
        public static readonly Ros1Kuavo_sdkFullBodyTargetTrajectoriesCodec Instance = new Ros1Kuavo_sdkFullBodyTargetTrajectoriesCodec();

        private Ros1Kuavo_sdkFullBodyTargetTrajectoriesCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "kuavo_sdk/fullBodyTargetTrajectories";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_670fdba890f7bf41db3f446366ef88d583de4966c54a58646b74ebdd07bbfb32";
        public const int MIN_WIRE_BYTES = 16, MAX_WIRE_BYTES = 2320;

        public byte[] Encode(_Ros1Kuavo_sdkFullBodyTargetTrajectories value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Kuavo_sdkFullBodyTargetTrajectories(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Kuavo_sdkFullBodyTargetTrajectories Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Kuavo_sdkFullBodyTargetTrajectories value = ReadRos1Kuavo_sdkFullBodyTargetTrajectories(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Kuavo_sdkFullBodyTargetTrajectories(_Codecs.Writer writer, _Ros1Kuavo_sdkFullBodyTargetTrajectories value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        double[] part0 = value.@timeTrajectory;
        if(part0 == null || part0.Length > 16)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part0.Length, 4);
        for(int index = 0; index < part0.Length; ++index)
        {
            double element = part0[index];
            writer.Float64(element);
        }
        int[] part1 = value.@footIndexTrajectory;
        if(part1 == null || part1.Length > 16)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part1.Length, 4);
        for(int index = 0; index < part1.Length; ++index)
        {
            int element = part1[index];
            writer.Unsigned(unchecked((uint)element), 4);
        }
        _Ros1Kuavo_sdkQv[] part2 = value.@fullBodyQTrajectory;
        if(part2 == null || part2.Length > 8)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part2.Length, 4);
        for(int index = 0; index < part2.Length; ++index)
        {
            _Ros1Kuavo_sdkQv element = part2[index];
            WriteRos1Kuavo_sdkQv(writer, element);
        }
        _Ros1Kuavo_sdkQv[] part3 = value.@fullBodyVTrajectory;
        if(part3 == null || part3.Length > 8)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part3.Length, 4);
        for(int index = 0; index < part3.Length; ++index)
        {
            _Ros1Kuavo_sdkQv element = part3[index];
            WriteRos1Kuavo_sdkQv(writer, element);
        }
    }

    private static _Ros1Kuavo_sdkFullBodyTargetTrajectories ReadRos1Kuavo_sdkFullBodyTargetTrajectories(_Codecs.Reader reader)
    {
        var value = new _Ros1Kuavo_sdkFullBodyTargetTrajectories();
        value.@timeTrajectory = new double[ReadCount(reader, 16, 8)];
        for(int index = 0; index < value.@timeTrajectory.Length; ++index)
            value.@timeTrajectory[index] = reader.Float64();
        value.@footIndexTrajectory = new int[ReadCount(reader, 16, 4)];
        for(int index = 0; index < value.@footIndexTrajectory.Length; ++index)
            value.@footIndexTrajectory[index] = unchecked((int)reader.Unsigned(4));
        value.@fullBodyQTrajectory = new _Ros1Kuavo_sdkQv[ReadCount(reader, 8, 4)];
        for(int index = 0; index < value.@fullBodyQTrajectory.Length; ++index)
            value.@fullBodyQTrajectory[index] = ReadRos1Kuavo_sdkQv(reader);
        value.@fullBodyVTrajectory = new _Ros1Kuavo_sdkQv[ReadCount(reader, 8, 4)];
        for(int index = 0; index < value.@fullBodyVTrajectory.Length; ++index)
            value.@fullBodyVTrajectory[index] = ReadRos1Kuavo_sdkQv(reader);
        return value;
    }
}
