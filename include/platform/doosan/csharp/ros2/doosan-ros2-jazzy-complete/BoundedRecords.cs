/**
 * @file BoundedRecords.cs
 * @brief Complete doosan values and adapters for the selected original interface catalog.
 * @details Retain original field order, scalar widths, array capacities, string bounds, constants and declared
 * defaults. Pure value access and canonical codecs create no native ROS allocation or resource grant. Transport
 * roles require the separately admitted SDK owner.
 * @see share/platform/doosan/domains/doosan-ros2-jazzy-complete.ir.json
 * @see document/platform/doosan/en_US/README.md
 */

// Generated complete canonical records; no native ABI, CDR or ROS grant.
#nullable enable
using System;
using _Codecs = global::Uwvm.RosWasm.Codecs;
namespace Uwvm.DoosanDoosanRos2JazzyComplete.Models;

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

    public sealed class _Ros2Dsr_msgs2ActionJogH2r_Goal
    {
        public sbyte @jog_axis = 0;
        public sbyte @move_reference = 0;
        public double @velocity = 0;

        public _Ros2Dsr_msgs2ActionJogH2r_Goal()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2ActionJogH2r_GoalCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2ActionJogH2r_Goal>
    {
        public static readonly Ros2Dsr_msgs2ActionJogH2r_GoalCodec Instance = new Ros2Dsr_msgs2ActionJogH2r_GoalCodec();

        private Ros2Dsr_msgs2ActionJogH2r_GoalCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/action/JogH2r_Goal";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_06245e203e3de9eab0c11ee37506291cbdfc285518b044d9874412a55a948031";
        public const int MIN_WIRE_BYTES = 10, MAX_WIRE_BYTES = 10;

        public byte[] Encode(_Ros2Dsr_msgs2ActionJogH2r_Goal value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2ActionJogH2r_Goal(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2ActionJogH2r_Goal Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2ActionJogH2r_Goal value = ReadRos2Dsr_msgs2ActionJogH2r_Goal(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2ActionJogH2r_Goal(_Codecs.Writer writer, _Ros2Dsr_msgs2ActionJogH2r_Goal value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        sbyte part0 = value.@jog_axis;
        writer.Unsigned(unchecked((byte)part0), 1);
        sbyte part1 = value.@move_reference;
        writer.Unsigned(unchecked((byte)part1), 1);
        double part2 = value.@velocity;
        writer.Float64(part2);
    }

    private static _Ros2Dsr_msgs2ActionJogH2r_Goal ReadRos2Dsr_msgs2ActionJogH2r_Goal(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2ActionJogH2r_Goal();
        value.@jog_axis = unchecked((sbyte)reader.Unsigned(1));
        value.@move_reference = unchecked((sbyte)reader.Unsigned(1));
        value.@velocity = reader.Float64();
        return value;
    }

    public sealed class _Ros2Dsr_msgs2ActionJogH2r_Result
    {
        public bool @success = false;

        public _Ros2Dsr_msgs2ActionJogH2r_Result()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2ActionJogH2r_ResultCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2ActionJogH2r_Result>
    {
        public static readonly Ros2Dsr_msgs2ActionJogH2r_ResultCodec Instance = new Ros2Dsr_msgs2ActionJogH2r_ResultCodec();

        private Ros2Dsr_msgs2ActionJogH2r_ResultCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/action/JogH2r_Result";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_79b337d3246b2761333d4d9538c137e41a9b795b9ae0fcf8a3a95f9919cd9f32";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros2Dsr_msgs2ActionJogH2r_Result value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2ActionJogH2r_Result(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2ActionJogH2r_Result Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2ActionJogH2r_Result value = ReadRos2Dsr_msgs2ActionJogH2r_Result(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2ActionJogH2r_Result(_Codecs.Writer writer, _Ros2Dsr_msgs2ActionJogH2r_Result value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros2Dsr_msgs2ActionJogH2r_Result ReadRos2Dsr_msgs2ActionJogH2r_Result(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2ActionJogH2r_Result();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Dsr_msgs2ActionJogH2r_Feedback
    {
        public double[] @pos = new double[6];

        public _Ros2Dsr_msgs2ActionJogH2r_Feedback()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2ActionJogH2r_FeedbackCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2ActionJogH2r_Feedback>
    {
        public static readonly Ros2Dsr_msgs2ActionJogH2r_FeedbackCodec Instance = new Ros2Dsr_msgs2ActionJogH2r_FeedbackCodec();

        private Ros2Dsr_msgs2ActionJogH2r_FeedbackCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/action/JogH2r_Feedback";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_ec4a775b8e986378d1064390512a267cc4ee1a43489b64ab3faed57a88184c8b";
        public const int MIN_WIRE_BYTES = 48, MAX_WIRE_BYTES = 48;

        public byte[] Encode(_Ros2Dsr_msgs2ActionJogH2r_Feedback value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2ActionJogH2r_Feedback(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2ActionJogH2r_Feedback Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2ActionJogH2r_Feedback value = ReadRos2Dsr_msgs2ActionJogH2r_Feedback(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2ActionJogH2r_Feedback(_Codecs.Writer writer, _Ros2Dsr_msgs2ActionJogH2r_Feedback value)
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

    private static _Ros2Dsr_msgs2ActionJogH2r_Feedback ReadRos2Dsr_msgs2ActionJogH2r_Feedback(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2ActionJogH2r_Feedback();
        value.@pos = new double[6];
        for(int index = 0; index < value.@pos.Length; ++index)
            value.@pos[index] = reader.Float64();
        return value;
    }

    public sealed class _Ros2Dsr_msgs2ActionMovejH2r_Goal
    {
        public double[] @target_pos = new double[6];
        public double[] @target_vel = new double[6];
        public double[] @target_acc = new double[6];

        public _Ros2Dsr_msgs2ActionMovejH2r_Goal()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2ActionMovejH2r_GoalCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2ActionMovejH2r_Goal>
    {
        public static readonly Ros2Dsr_msgs2ActionMovejH2r_GoalCodec Instance = new Ros2Dsr_msgs2ActionMovejH2r_GoalCodec();

        private Ros2Dsr_msgs2ActionMovejH2r_GoalCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/action/MovejH2r_Goal";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_1f500b1d55e67e54b564236307f6761a74d79887ab35c4733cd741f480d7d0dc";
        public const int MIN_WIRE_BYTES = 144, MAX_WIRE_BYTES = 144;

        public byte[] Encode(_Ros2Dsr_msgs2ActionMovejH2r_Goal value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2ActionMovejH2r_Goal(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2ActionMovejH2r_Goal Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2ActionMovejH2r_Goal value = ReadRos2Dsr_msgs2ActionMovejH2r_Goal(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2ActionMovejH2r_Goal(_Codecs.Writer writer, _Ros2Dsr_msgs2ActionMovejH2r_Goal value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        double[] part0 = value.@target_pos;
        if(part0 == null || part0.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part0.Length; ++index)
        {
            double element = part0[index];
            writer.Float64(element);
        }
        double[] part1 = value.@target_vel;
        if(part1 == null || part1.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part1.Length; ++index)
        {
            double element = part1[index];
            writer.Float64(element);
        }
        double[] part2 = value.@target_acc;
        if(part2 == null || part2.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part2.Length; ++index)
        {
            double element = part2[index];
            writer.Float64(element);
        }
    }

    private static _Ros2Dsr_msgs2ActionMovejH2r_Goal ReadRos2Dsr_msgs2ActionMovejH2r_Goal(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2ActionMovejH2r_Goal();
        value.@target_pos = new double[6];
        for(int index = 0; index < value.@target_pos.Length; ++index)
            value.@target_pos[index] = reader.Float64();
        value.@target_vel = new double[6];
        for(int index = 0; index < value.@target_vel.Length; ++index)
            value.@target_vel[index] = reader.Float64();
        value.@target_acc = new double[6];
        for(int index = 0; index < value.@target_acc.Length; ++index)
            value.@target_acc[index] = reader.Float64();
        return value;
    }

    public sealed class _Ros2Dsr_msgs2ActionMovejH2r_Result
    {
        public bool @success = false;

        public _Ros2Dsr_msgs2ActionMovejH2r_Result()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2ActionMovejH2r_ResultCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2ActionMovejH2r_Result>
    {
        public static readonly Ros2Dsr_msgs2ActionMovejH2r_ResultCodec Instance = new Ros2Dsr_msgs2ActionMovejH2r_ResultCodec();

        private Ros2Dsr_msgs2ActionMovejH2r_ResultCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/action/MovejH2r_Result";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_9055b94a2148571ab9cf3edd50625e2c49697bcab7827d3d6520281e3af3fc51";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros2Dsr_msgs2ActionMovejH2r_Result value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2ActionMovejH2r_Result(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2ActionMovejH2r_Result Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2ActionMovejH2r_Result value = ReadRos2Dsr_msgs2ActionMovejH2r_Result(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2ActionMovejH2r_Result(_Codecs.Writer writer, _Ros2Dsr_msgs2ActionMovejH2r_Result value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros2Dsr_msgs2ActionMovejH2r_Result ReadRos2Dsr_msgs2ActionMovejH2r_Result(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2ActionMovejH2r_Result();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Dsr_msgs2ActionMovejH2r_Feedback
    {
        public double[] @pos = new double[6];

        public _Ros2Dsr_msgs2ActionMovejH2r_Feedback()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2ActionMovejH2r_FeedbackCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2ActionMovejH2r_Feedback>
    {
        public static readonly Ros2Dsr_msgs2ActionMovejH2r_FeedbackCodec Instance = new Ros2Dsr_msgs2ActionMovejH2r_FeedbackCodec();

        private Ros2Dsr_msgs2ActionMovejH2r_FeedbackCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/action/MovejH2r_Feedback";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_a300a02e724a0d402966787cd8ce0fc3bef26d8d2e53157d2a29cad55406fd9e";
        public const int MIN_WIRE_BYTES = 48, MAX_WIRE_BYTES = 48;

        public byte[] Encode(_Ros2Dsr_msgs2ActionMovejH2r_Feedback value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2ActionMovejH2r_Feedback(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2ActionMovejH2r_Feedback Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2ActionMovejH2r_Feedback value = ReadRos2Dsr_msgs2ActionMovejH2r_Feedback(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2ActionMovejH2r_Feedback(_Codecs.Writer writer, _Ros2Dsr_msgs2ActionMovejH2r_Feedback value)
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

    private static _Ros2Dsr_msgs2ActionMovejH2r_Feedback ReadRos2Dsr_msgs2ActionMovejH2r_Feedback(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2ActionMovejH2r_Feedback();
        value.@pos = new double[6];
        for(int index = 0; index < value.@pos.Length; ++index)
            value.@pos[index] = reader.Float64();
        return value;
    }

    public sealed class _Ros2Dsr_msgs2ActionMovelH2r_Goal
    {
        public double[] @target_pos = new double[6];
        public double[] @target_vel = new double[2];
        public double[] @target_acc = new double[2];

        public _Ros2Dsr_msgs2ActionMovelH2r_Goal()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2ActionMovelH2r_GoalCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2ActionMovelH2r_Goal>
    {
        public static readonly Ros2Dsr_msgs2ActionMovelH2r_GoalCodec Instance = new Ros2Dsr_msgs2ActionMovelH2r_GoalCodec();

        private Ros2Dsr_msgs2ActionMovelH2r_GoalCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/action/MovelH2r_Goal";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_e1e2a6cd46247b347002d41f062949ab869c6bd84c305cd951cb5fb32ffe7d9c";
        public const int MIN_WIRE_BYTES = 80, MAX_WIRE_BYTES = 80;

        public byte[] Encode(_Ros2Dsr_msgs2ActionMovelH2r_Goal value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2ActionMovelH2r_Goal(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2ActionMovelH2r_Goal Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2ActionMovelH2r_Goal value = ReadRos2Dsr_msgs2ActionMovelH2r_Goal(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2ActionMovelH2r_Goal(_Codecs.Writer writer, _Ros2Dsr_msgs2ActionMovelH2r_Goal value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        double[] part0 = value.@target_pos;
        if(part0 == null || part0.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part0.Length; ++index)
        {
            double element = part0[index];
            writer.Float64(element);
        }
        double[] part1 = value.@target_vel;
        if(part1 == null || part1.Length != 2)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part1.Length; ++index)
        {
            double element = part1[index];
            writer.Float64(element);
        }
        double[] part2 = value.@target_acc;
        if(part2 == null || part2.Length != 2)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part2.Length; ++index)
        {
            double element = part2[index];
            writer.Float64(element);
        }
    }

    private static _Ros2Dsr_msgs2ActionMovelH2r_Goal ReadRos2Dsr_msgs2ActionMovelH2r_Goal(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2ActionMovelH2r_Goal();
        value.@target_pos = new double[6];
        for(int index = 0; index < value.@target_pos.Length; ++index)
            value.@target_pos[index] = reader.Float64();
        value.@target_vel = new double[2];
        for(int index = 0; index < value.@target_vel.Length; ++index)
            value.@target_vel[index] = reader.Float64();
        value.@target_acc = new double[2];
        for(int index = 0; index < value.@target_acc.Length; ++index)
            value.@target_acc[index] = reader.Float64();
        return value;
    }

    public sealed class _Ros2Dsr_msgs2ActionMovelH2r_Result
    {
        public bool @success = false;

        public _Ros2Dsr_msgs2ActionMovelH2r_Result()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2ActionMovelH2r_ResultCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2ActionMovelH2r_Result>
    {
        public static readonly Ros2Dsr_msgs2ActionMovelH2r_ResultCodec Instance = new Ros2Dsr_msgs2ActionMovelH2r_ResultCodec();

        private Ros2Dsr_msgs2ActionMovelH2r_ResultCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/action/MovelH2r_Result";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_0daf4123fb4d7b06d11b3d47f1b5881357aa840e37e2adc84e46dd97d2c062dd";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros2Dsr_msgs2ActionMovelH2r_Result value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2ActionMovelH2r_Result(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2ActionMovelH2r_Result Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2ActionMovelH2r_Result value = ReadRos2Dsr_msgs2ActionMovelH2r_Result(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2ActionMovelH2r_Result(_Codecs.Writer writer, _Ros2Dsr_msgs2ActionMovelH2r_Result value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros2Dsr_msgs2ActionMovelH2r_Result ReadRos2Dsr_msgs2ActionMovelH2r_Result(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2ActionMovelH2r_Result();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Dsr_msgs2ActionMovelH2r_Feedback
    {
        public double[] @pos = new double[6];

        public _Ros2Dsr_msgs2ActionMovelH2r_Feedback()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2ActionMovelH2r_FeedbackCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2ActionMovelH2r_Feedback>
    {
        public static readonly Ros2Dsr_msgs2ActionMovelH2r_FeedbackCodec Instance = new Ros2Dsr_msgs2ActionMovelH2r_FeedbackCodec();

        private Ros2Dsr_msgs2ActionMovelH2r_FeedbackCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/action/MovelH2r_Feedback";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_e67cb580a7c20e9f69813a44eeb8cce45cffc8292dbd895c210b3a46937e745a";
        public const int MIN_WIRE_BYTES = 48, MAX_WIRE_BYTES = 48;

        public byte[] Encode(_Ros2Dsr_msgs2ActionMovelH2r_Feedback value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2ActionMovelH2r_Feedback(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2ActionMovelH2r_Feedback Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2ActionMovelH2r_Feedback value = ReadRos2Dsr_msgs2ActionMovelH2r_Feedback(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2ActionMovelH2r_Feedback(_Codecs.Writer writer, _Ros2Dsr_msgs2ActionMovelH2r_Feedback value)
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

    private static _Ros2Dsr_msgs2ActionMovelH2r_Feedback ReadRos2Dsr_msgs2ActionMovelH2r_Feedback(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2ActionMovelH2r_Feedback();
        value.@pos = new double[6];
        for(int index = 0; index < value.@pos.Length; ++index)
            value.@pos[index] = reader.Float64();
        return value;
    }

    public sealed class _Ros2Dsr_msgs2MsgAlterMotionStream
    {
        public double[] @pos = new double[6];

        public _Ros2Dsr_msgs2MsgAlterMotionStream()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2MsgAlterMotionStreamCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2MsgAlterMotionStream>
    {
        public static readonly Ros2Dsr_msgs2MsgAlterMotionStreamCodec Instance = new Ros2Dsr_msgs2MsgAlterMotionStreamCodec();

        private Ros2Dsr_msgs2MsgAlterMotionStreamCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/msg/AlterMotionStream";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_42cda028849d2f3c24dddf69907122eeaccc19ab595150b0c4bfa9a6c4b37200";
        public const int MIN_WIRE_BYTES = 48, MAX_WIRE_BYTES = 48;

        public byte[] Encode(_Ros2Dsr_msgs2MsgAlterMotionStream value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2MsgAlterMotionStream(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2MsgAlterMotionStream Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2MsgAlterMotionStream value = ReadRos2Dsr_msgs2MsgAlterMotionStream(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2MsgAlterMotionStream(_Codecs.Writer writer, _Ros2Dsr_msgs2MsgAlterMotionStream value)
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

    private static _Ros2Dsr_msgs2MsgAlterMotionStream ReadRos2Dsr_msgs2MsgAlterMotionStream(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2MsgAlterMotionStream();
        value.@pos = new double[6];
        for(int index = 0; index < value.@pos.Length; ++index)
            value.@pos[index] = reader.Float64();
        return value;
    }

    public sealed class _Ros2Dsr_msgs2MsgJogMultiAxis
    {
        public double[] @jog_axis = new double[6];
        public sbyte @move_reference = 0;
        public double @speed = 0;

        public _Ros2Dsr_msgs2MsgJogMultiAxis()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2MsgJogMultiAxisCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2MsgJogMultiAxis>
    {
        public static readonly Ros2Dsr_msgs2MsgJogMultiAxisCodec Instance = new Ros2Dsr_msgs2MsgJogMultiAxisCodec();

        private Ros2Dsr_msgs2MsgJogMultiAxisCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/msg/JogMultiAxis";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_1abbca14f7ca912b0d1a3ff2eac2414268b78e10380d8eac9e231f79f26ce07e";
        public const int MIN_WIRE_BYTES = 57, MAX_WIRE_BYTES = 57;

        public byte[] Encode(_Ros2Dsr_msgs2MsgJogMultiAxis value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2MsgJogMultiAxis(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2MsgJogMultiAxis Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2MsgJogMultiAxis value = ReadRos2Dsr_msgs2MsgJogMultiAxis(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2MsgJogMultiAxis(_Codecs.Writer writer, _Ros2Dsr_msgs2MsgJogMultiAxis value)
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

    private static _Ros2Dsr_msgs2MsgJogMultiAxis ReadRos2Dsr_msgs2MsgJogMultiAxis(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2MsgJogMultiAxis();
        value.@jog_axis = new double[6];
        for(int index = 0; index < value.@jog_axis.Length; ++index)
            value.@jog_axis[index] = reader.Float64();
        value.@move_reference = unchecked((sbyte)reader.Unsigned(1));
        value.@speed = reader.Float64();
        return value;
    }

    public sealed class _Ros2Dsr_msgs2MsgLogAlarm
    {
        public int @level = 0;
        public int @group = 0;
        public int @index = 0;
        public string[] @param = new string[3];

        public _Ros2Dsr_msgs2MsgLogAlarm()
        {
            for(int index = 0; index < 3; ++index)
                this.@param[index] = "";
        }
    }

    public sealed class Ros2Dsr_msgs2MsgLogAlarmCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2MsgLogAlarm>
    {
        public static readonly Ros2Dsr_msgs2MsgLogAlarmCodec Instance = new Ros2Dsr_msgs2MsgLogAlarmCodec();

        private Ros2Dsr_msgs2MsgLogAlarmCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/msg/LogAlarm";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_d35d6f6098edff03d2568f14471db88ea998873ba4a04794750f7134825e2bfe";
        public const int MIN_WIRE_BYTES = 24, MAX_WIRE_BYTES = 792;

        public byte[] Encode(_Ros2Dsr_msgs2MsgLogAlarm value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2MsgLogAlarm(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2MsgLogAlarm Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2MsgLogAlarm value = ReadRos2Dsr_msgs2MsgLogAlarm(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2MsgLogAlarm(_Codecs.Writer writer, _Ros2Dsr_msgs2MsgLogAlarm value)
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

    private static _Ros2Dsr_msgs2MsgLogAlarm ReadRos2Dsr_msgs2MsgLogAlarm(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2MsgLogAlarm();
        value.@level = unchecked((int)reader.Unsigned(4));
        value.@group = unchecked((int)reader.Unsigned(4));
        value.@index = unchecked((int)reader.Unsigned(4));
        value.@param = new string[3];
        for(int index = 0; index < value.@param.Length; ++index)
            value.@param[index] = ReadText(reader, 256);
        return value;
    }

    public sealed class _Ros2Dsr_msgs2MsgModbusState
    {
        public string @modbus_symbol = "";
        public int @modbus_value = 0;

        public _Ros2Dsr_msgs2MsgModbusState()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2MsgModbusStateCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2MsgModbusState>
    {
        public static readonly Ros2Dsr_msgs2MsgModbusStateCodec Instance = new Ros2Dsr_msgs2MsgModbusStateCodec();

        private Ros2Dsr_msgs2MsgModbusStateCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/msg/ModbusState";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_b5648e70b313800a6b18e809d0950f53c538d2647ff67fd3884cce728f3be765";
        public const int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 264;

        public byte[] Encode(_Ros2Dsr_msgs2MsgModbusState value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2MsgModbusState(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2MsgModbusState Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2MsgModbusState value = ReadRos2Dsr_msgs2MsgModbusState(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2MsgModbusState(_Codecs.Writer writer, _Ros2Dsr_msgs2MsgModbusState value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        string part0 = value.@modbus_symbol;
        WriteText(writer, part0, 256);
        int part1 = value.@modbus_value;
        writer.Unsigned(unchecked((uint)part1), 4);
    }

    private static _Ros2Dsr_msgs2MsgModbusState ReadRos2Dsr_msgs2MsgModbusState(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2MsgModbusState();
        value.@modbus_symbol = ReadText(reader, 256);
        value.@modbus_value = unchecked((int)reader.Unsigned(4));
        return value;
    }

    public sealed class _Ros2Dsr_msgs2MsgRobotDisconnection
    {
        public _Ros2Dsr_msgs2MsgRobotDisconnection()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2MsgRobotDisconnectionCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2MsgRobotDisconnection>
    {
        public static readonly Ros2Dsr_msgs2MsgRobotDisconnectionCodec Instance = new Ros2Dsr_msgs2MsgRobotDisconnectionCodec();

        private Ros2Dsr_msgs2MsgRobotDisconnectionCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/msg/RobotDisconnection";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_d686889739e672509dee7fc8538cddd634e536f392709b7bdcc0572c755c65c4";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public byte[] Encode(_Ros2Dsr_msgs2MsgRobotDisconnection value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2MsgRobotDisconnection(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2MsgRobotDisconnection Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2MsgRobotDisconnection value = ReadRos2Dsr_msgs2MsgRobotDisconnection(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2MsgRobotDisconnection(_Codecs.Writer writer, _Ros2Dsr_msgs2MsgRobotDisconnection value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    private static _Ros2Dsr_msgs2MsgRobotDisconnection ReadRos2Dsr_msgs2MsgRobotDisconnection(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2MsgRobotDisconnection();
        return value;
    }

    public sealed class _Ros2Dsr_msgs2MsgRobotError
    {
        public int @level = 0;
        public int @group = 0;
        public int @code = 0;
        public string @msg1 = "";
        public string @msg2 = "";
        public string @msg3 = "";

        public _Ros2Dsr_msgs2MsgRobotError()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2MsgRobotErrorCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2MsgRobotError>
    {
        public static readonly Ros2Dsr_msgs2MsgRobotErrorCodec Instance = new Ros2Dsr_msgs2MsgRobotErrorCodec();

        private Ros2Dsr_msgs2MsgRobotErrorCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/msg/RobotError";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_5c628814ad82c181ce0eae34fe89fb384169bfecbdeed07bddb2318a4e3c5a67";
        public const int MIN_WIRE_BYTES = 24, MAX_WIRE_BYTES = 792;

        public byte[] Encode(_Ros2Dsr_msgs2MsgRobotError value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2MsgRobotError(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2MsgRobotError Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2MsgRobotError value = ReadRos2Dsr_msgs2MsgRobotError(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2MsgRobotError(_Codecs.Writer writer, _Ros2Dsr_msgs2MsgRobotError value)
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

    private static _Ros2Dsr_msgs2MsgRobotError ReadRos2Dsr_msgs2MsgRobotError(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2MsgRobotError();
        value.@level = unchecked((int)reader.Unsigned(4));
        value.@group = unchecked((int)reader.Unsigned(4));
        value.@code = unchecked((int)reader.Unsigned(4));
        value.@msg1 = ReadText(reader, 256);
        value.@msg2 = ReadText(reader, 256);
        value.@msg3 = ReadText(reader, 256);
        return value;
    }

    public sealed class _Ros2Std_msgsMsgMultiArrayDimension
    {
        public string @label = "";
        public uint @size = 0;
        public uint @stride = 0;

        public _Ros2Std_msgsMsgMultiArrayDimension()
        {
        }
    }

    public sealed class Ros2Std_msgsMsgMultiArrayDimensionCodec : global::Uwvm.RosWasm.ICodec<_Ros2Std_msgsMsgMultiArrayDimension>
    {
        public static readonly Ros2Std_msgsMsgMultiArrayDimensionCodec Instance = new Ros2Std_msgsMsgMultiArrayDimensionCodec();

        private Ros2Std_msgsMsgMultiArrayDimensionCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "std_msgs/msg/MultiArrayDimension";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_be0694d8fef4d71a5afd7072b14b9f246464e4c3a8dbbfb21ef22c32296c2f73";
        public const int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 76;

        public byte[] Encode(_Ros2Std_msgsMsgMultiArrayDimension value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Std_msgsMsgMultiArrayDimension(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Std_msgsMsgMultiArrayDimension Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Std_msgsMsgMultiArrayDimension value = ReadRos2Std_msgsMsgMultiArrayDimension(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Std_msgsMsgMultiArrayDimension(_Codecs.Writer writer, _Ros2Std_msgsMsgMultiArrayDimension value)
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

    private static _Ros2Std_msgsMsgMultiArrayDimension ReadRos2Std_msgsMsgMultiArrayDimension(_Codecs.Reader reader)
    {
        var value = new _Ros2Std_msgsMsgMultiArrayDimension();
        value.@label = ReadText(reader, 64);
        value.@size = unchecked((uint)reader.Unsigned(4));
        value.@stride = unchecked((uint)reader.Unsigned(4));
        return value;
    }

    public sealed class _Ros2Std_msgsMsgMultiArrayLayout
    {
        public _Ros2Std_msgsMsgMultiArrayDimension[] @dim = new _Ros2Std_msgsMsgMultiArrayDimension[0];
        public uint @data_offset = 0;

        public _Ros2Std_msgsMsgMultiArrayLayout()
        {
        }
    }

    public sealed class Ros2Std_msgsMsgMultiArrayLayoutCodec : global::Uwvm.RosWasm.ICodec<_Ros2Std_msgsMsgMultiArrayLayout>
    {
        public static readonly Ros2Std_msgsMsgMultiArrayLayoutCodec Instance = new Ros2Std_msgsMsgMultiArrayLayoutCodec();

        private Ros2Std_msgsMsgMultiArrayLayoutCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "std_msgs/msg/MultiArrayLayout";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_d1b6f03846800e7c6672b48f3585ad43cbccb4f2d892a4bc986e2df00667b392";
        public const int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 236;

        public byte[] Encode(_Ros2Std_msgsMsgMultiArrayLayout value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Std_msgsMsgMultiArrayLayout(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Std_msgsMsgMultiArrayLayout Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Std_msgsMsgMultiArrayLayout value = ReadRos2Std_msgsMsgMultiArrayLayout(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Std_msgsMsgMultiArrayLayout(_Codecs.Writer writer, _Ros2Std_msgsMsgMultiArrayLayout value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Std_msgsMsgMultiArrayDimension[] part0 = value.@dim;
        if(part0 == null || part0.Length > 3)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part0.Length, 4);
        for(int index = 0; index < part0.Length; ++index)
        {
            _Ros2Std_msgsMsgMultiArrayDimension element = part0[index];
            WriteRos2Std_msgsMsgMultiArrayDimension(writer, element);
        }
        uint part1 = value.@data_offset;
        writer.Unsigned(part1, 4);
    }

    private static _Ros2Std_msgsMsgMultiArrayLayout ReadRos2Std_msgsMsgMultiArrayLayout(_Codecs.Reader reader)
    {
        var value = new _Ros2Std_msgsMsgMultiArrayLayout();
        value.@dim = new _Ros2Std_msgsMsgMultiArrayDimension[ReadCount(reader, 3, 12)];
        for(int index = 0; index < value.@dim.Length; ++index)
            value.@dim[index] = ReadRos2Std_msgsMsgMultiArrayDimension(reader);
        value.@data_offset = unchecked((uint)reader.Unsigned(4));
        return value;
    }

    public sealed class _Ros2Std_msgsMsgFloat64MultiArray
    {
        public _Ros2Std_msgsMsgMultiArrayLayout @layout = new _Ros2Std_msgsMsgMultiArrayLayout();
        public double[] @data = new double[0];

        public _Ros2Std_msgsMsgFloat64MultiArray()
        {
        }
    }

    public sealed class Ros2Std_msgsMsgFloat64MultiArrayCodec : global::Uwvm.RosWasm.ICodec<_Ros2Std_msgsMsgFloat64MultiArray>
    {
        public static readonly Ros2Std_msgsMsgFloat64MultiArrayCodec Instance = new Ros2Std_msgsMsgFloat64MultiArrayCodec();

        private Ros2Std_msgsMsgFloat64MultiArrayCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "std_msgs/msg/Float64MultiArray";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_9a214c31604613d6d1ebba644301f686ad3dff1a7a6c1005540ae0062d924f95";
        public const int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 368;

        public byte[] Encode(_Ros2Std_msgsMsgFloat64MultiArray value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Std_msgsMsgFloat64MultiArray(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Std_msgsMsgFloat64MultiArray Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Std_msgsMsgFloat64MultiArray value = ReadRos2Std_msgsMsgFloat64MultiArray(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Std_msgsMsgFloat64MultiArray(_Codecs.Writer writer, _Ros2Std_msgsMsgFloat64MultiArray value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Std_msgsMsgMultiArrayLayout part0 = value.@layout;
        WriteRos2Std_msgsMsgMultiArrayLayout(writer, part0);
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

    private static _Ros2Std_msgsMsgFloat64MultiArray ReadRos2Std_msgsMsgFloat64MultiArray(_Codecs.Reader reader)
    {
        var value = new _Ros2Std_msgsMsgFloat64MultiArray();
        value.@layout = ReadRos2Std_msgsMsgMultiArrayLayout(reader);
        value.@data = new double[ReadCount(reader, 16, 8)];
        for(int index = 0; index < value.@data.Length; ++index)
            value.@data[index] = reader.Float64();
        return value;
    }

    public sealed class _Ros2Dsr_msgs2MsgRobotState
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
        public _Ros2Std_msgsMsgFloat64MultiArray[] @rotation_matrix = new _Ros2Std_msgsMsgFloat64MultiArray[0];
        public sbyte[] @ctrlbox_digital_input = new sbyte[16];
        public sbyte[] @ctrlbox_digital_output = new sbyte[16];
        public sbyte[] @flange_digital_input = new sbyte[6];
        public sbyte[] @flange_digital_output = new sbyte[6];
        public _Ros2Dsr_msgs2MsgModbusState[] @modbus_state = new _Ros2Dsr_msgs2MsgModbusState[0];
        public int @access_control = 0;
        public bool @homming_completed = false;
        public bool @tp_initialized = false;
        public sbyte @mastering_need = 0;
        public bool @drl_stopped = false;
        public bool @disconnected = false;
        public double[] @f_actual_w2b = new double[6];
        public _Ros2Std_msgsMsgFloat64MultiArray[] @f_current_pos_world = new _Ros2Std_msgsMsgFloat64MultiArray[0];
        public double[] @f_current_vel_world = new double[6];
        public double[] @f_world_ext_target_torque = new double[6];
        public double[] @f_target_pos_world = new double[6];
        public double[] @f_target_vel_world = new double[6];
        public _Ros2Std_msgsMsgFloat64MultiArray[] @f_rotation_matrix_world = new _Ros2Std_msgsMsgFloat64MultiArray[0];
        public sbyte @i_actual_user_coord_num = 0;
        public sbyte @i_coord_ref = 0;
        public _Ros2Std_msgsMsgFloat64MultiArray[] @f_current_pos_user = new _Ros2Std_msgsMsgFloat64MultiArray[0];
        public double[] @f_current_vel_user = new double[6];
        public double[] @f_user_ext_task_torque = new double[6];
        public double[] @f_target_pos_user = new double[6];
        public double[] @f_target_vel_user = new double[6];
        public _Ros2Std_msgsMsgFloat64MultiArray[] @f_rotation_matrix_user = new _Ros2Std_msgsMsgFloat64MultiArray[0];
        public double[] @f_actual_analog_input = new double[6];
        public bool[] @b_actual_switch_input = new bool[3];
        public bool[] @b_actual_safety_input = new bool[2];
        public sbyte[] @i_actual_analog_input_type = new sbyte[2];
        public double[] @f_target_analog_output = new double[2];
        public sbyte[] @i_target_analog_output_type = new sbyte[2];
        public bool[] @b_actual_encorder_strove_signal = new bool[2];
        public sbyte[] @i_actual_encorder_raw_data = new sbyte[2];
        public bool[] @b_actual_encorder_reset_signal = new bool[2];

        public _Ros2Dsr_msgs2MsgRobotState()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2MsgRobotStateCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2MsgRobotState>
    {
        public static readonly Ros2Dsr_msgs2MsgRobotStateCodec Instance = new Ros2Dsr_msgs2MsgRobotStateCodec();

        private Ros2Dsr_msgs2MsgRobotStateCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/msg/RobotState";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_e705618c8be95896187c604e77324a4e8373df20b89819a7f94abf995eb93942";
        public const int MIN_WIRE_BYTES = 1484, MAX_WIRE_BYTES = 17004;

        public byte[] Encode(_Ros2Dsr_msgs2MsgRobotState value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2MsgRobotState(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2MsgRobotState Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2MsgRobotState value = ReadRos2Dsr_msgs2MsgRobotState(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2MsgRobotState(_Codecs.Writer writer, _Ros2Dsr_msgs2MsgRobotState value)
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
        _Ros2Std_msgsMsgFloat64MultiArray[] part26 = value.@rotation_matrix;
        if(part26 == null || part26.Length > 6)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part26.Length, 4);
        for(int index = 0; index < part26.Length; ++index)
        {
            _Ros2Std_msgsMsgFloat64MultiArray element = part26[index];
            WriteRos2Std_msgsMsgFloat64MultiArray(writer, element);
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
        _Ros2Dsr_msgs2MsgModbusState[] part31 = value.@modbus_state;
        if(part31 == null || part31.Length > 16)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part31.Length, 4);
        for(int index = 0; index < part31.Length; ++index)
        {
            _Ros2Dsr_msgs2MsgModbusState element = part31[index];
            WriteRos2Dsr_msgs2MsgModbusState(writer, element);
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
        double[] part38 = value.@f_actual_w2b;
        if(part38 == null || part38.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part38.Length; ++index)
        {
            double element = part38[index];
            writer.Float64(element);
        }
        _Ros2Std_msgsMsgFloat64MultiArray[] part39 = value.@f_current_pos_world;
        if(part39 == null || part39.Length > 6)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part39.Length, 4);
        for(int index = 0; index < part39.Length; ++index)
        {
            _Ros2Std_msgsMsgFloat64MultiArray element = part39[index];
            WriteRos2Std_msgsMsgFloat64MultiArray(writer, element);
        }
        double[] part40 = value.@f_current_vel_world;
        if(part40 == null || part40.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part40.Length; ++index)
        {
            double element = part40[index];
            writer.Float64(element);
        }
        double[] part41 = value.@f_world_ext_target_torque;
        if(part41 == null || part41.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part41.Length; ++index)
        {
            double element = part41[index];
            writer.Float64(element);
        }
        double[] part42 = value.@f_target_pos_world;
        if(part42 == null || part42.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part42.Length; ++index)
        {
            double element = part42[index];
            writer.Float64(element);
        }
        double[] part43 = value.@f_target_vel_world;
        if(part43 == null || part43.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part43.Length; ++index)
        {
            double element = part43[index];
            writer.Float64(element);
        }
        _Ros2Std_msgsMsgFloat64MultiArray[] part44 = value.@f_rotation_matrix_world;
        if(part44 == null || part44.Length > 6)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part44.Length, 4);
        for(int index = 0; index < part44.Length; ++index)
        {
            _Ros2Std_msgsMsgFloat64MultiArray element = part44[index];
            WriteRos2Std_msgsMsgFloat64MultiArray(writer, element);
        }
        sbyte part45 = value.@i_actual_user_coord_num;
        writer.Unsigned(unchecked((byte)part45), 1);
        sbyte part46 = value.@i_coord_ref;
        writer.Unsigned(unchecked((byte)part46), 1);
        _Ros2Std_msgsMsgFloat64MultiArray[] part47 = value.@f_current_pos_user;
        if(part47 == null || part47.Length > 6)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part47.Length, 4);
        for(int index = 0; index < part47.Length; ++index)
        {
            _Ros2Std_msgsMsgFloat64MultiArray element = part47[index];
            WriteRos2Std_msgsMsgFloat64MultiArray(writer, element);
        }
        double[] part48 = value.@f_current_vel_user;
        if(part48 == null || part48.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part48.Length; ++index)
        {
            double element = part48[index];
            writer.Float64(element);
        }
        double[] part49 = value.@f_user_ext_task_torque;
        if(part49 == null || part49.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part49.Length; ++index)
        {
            double element = part49[index];
            writer.Float64(element);
        }
        double[] part50 = value.@f_target_pos_user;
        if(part50 == null || part50.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part50.Length; ++index)
        {
            double element = part50[index];
            writer.Float64(element);
        }
        double[] part51 = value.@f_target_vel_user;
        if(part51 == null || part51.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part51.Length; ++index)
        {
            double element = part51[index];
            writer.Float64(element);
        }
        _Ros2Std_msgsMsgFloat64MultiArray[] part52 = value.@f_rotation_matrix_user;
        if(part52 == null || part52.Length > 6)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part52.Length, 4);
        for(int index = 0; index < part52.Length; ++index)
        {
            _Ros2Std_msgsMsgFloat64MultiArray element = part52[index];
            WriteRos2Std_msgsMsgFloat64MultiArray(writer, element);
        }
        double[] part53 = value.@f_actual_analog_input;
        if(part53 == null || part53.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part53.Length; ++index)
        {
            double element = part53[index];
            writer.Float64(element);
        }
        bool[] part54 = value.@b_actual_switch_input;
        if(part54 == null || part54.Length != 3)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part54.Length; ++index)
        {
            bool element = part54[index];
            writer.Unsigned(element ? 1UL : 0UL, 1);
        }
        bool[] part55 = value.@b_actual_safety_input;
        if(part55 == null || part55.Length != 2)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part55.Length; ++index)
        {
            bool element = part55[index];
            writer.Unsigned(element ? 1UL : 0UL, 1);
        }
        sbyte[] part56 = value.@i_actual_analog_input_type;
        if(part56 == null || part56.Length != 2)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part56.Length; ++index)
        {
            sbyte element = part56[index];
            writer.Unsigned(unchecked((byte)element), 1);
        }
        double[] part57 = value.@f_target_analog_output;
        if(part57 == null || part57.Length != 2)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part57.Length; ++index)
        {
            double element = part57[index];
            writer.Float64(element);
        }
        sbyte[] part58 = value.@i_target_analog_output_type;
        if(part58 == null || part58.Length != 2)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part58.Length; ++index)
        {
            sbyte element = part58[index];
            writer.Unsigned(unchecked((byte)element), 1);
        }
        bool[] part59 = value.@b_actual_encorder_strove_signal;
        if(part59 == null || part59.Length != 2)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part59.Length; ++index)
        {
            bool element = part59[index];
            writer.Unsigned(element ? 1UL : 0UL, 1);
        }
        sbyte[] part60 = value.@i_actual_encorder_raw_data;
        if(part60 == null || part60.Length != 2)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part60.Length; ++index)
        {
            sbyte element = part60[index];
            writer.Unsigned(unchecked((byte)element), 1);
        }
        bool[] part61 = value.@b_actual_encorder_reset_signal;
        if(part61 == null || part61.Length != 2)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part61.Length; ++index)
        {
            bool element = part61[index];
            writer.Unsigned(element ? 1UL : 0UL, 1);
        }
    }

    private static _Ros2Dsr_msgs2MsgRobotState ReadRos2Dsr_msgs2MsgRobotState(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2MsgRobotState();
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
        value.@rotation_matrix = new _Ros2Std_msgsMsgFloat64MultiArray[ReadCount(reader, 6, 12)];
        for(int index = 0; index < value.@rotation_matrix.Length; ++index)
            value.@rotation_matrix[index] = ReadRos2Std_msgsMsgFloat64MultiArray(reader);
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
        value.@modbus_state = new _Ros2Dsr_msgs2MsgModbusState[ReadCount(reader, 16, 8)];
        for(int index = 0; index < value.@modbus_state.Length; ++index)
            value.@modbus_state[index] = ReadRos2Dsr_msgs2MsgModbusState(reader);
        value.@access_control = unchecked((int)reader.Unsigned(4));
        value.@homming_completed = ReadBool(reader);
        value.@tp_initialized = ReadBool(reader);
        value.@mastering_need = unchecked((sbyte)reader.Unsigned(1));
        value.@drl_stopped = ReadBool(reader);
        value.@disconnected = ReadBool(reader);
        value.@f_actual_w2b = new double[6];
        for(int index = 0; index < value.@f_actual_w2b.Length; ++index)
            value.@f_actual_w2b[index] = reader.Float64();
        value.@f_current_pos_world = new _Ros2Std_msgsMsgFloat64MultiArray[ReadCount(reader, 6, 12)];
        for(int index = 0; index < value.@f_current_pos_world.Length; ++index)
            value.@f_current_pos_world[index] = ReadRos2Std_msgsMsgFloat64MultiArray(reader);
        value.@f_current_vel_world = new double[6];
        for(int index = 0; index < value.@f_current_vel_world.Length; ++index)
            value.@f_current_vel_world[index] = reader.Float64();
        value.@f_world_ext_target_torque = new double[6];
        for(int index = 0; index < value.@f_world_ext_target_torque.Length; ++index)
            value.@f_world_ext_target_torque[index] = reader.Float64();
        value.@f_target_pos_world = new double[6];
        for(int index = 0; index < value.@f_target_pos_world.Length; ++index)
            value.@f_target_pos_world[index] = reader.Float64();
        value.@f_target_vel_world = new double[6];
        for(int index = 0; index < value.@f_target_vel_world.Length; ++index)
            value.@f_target_vel_world[index] = reader.Float64();
        value.@f_rotation_matrix_world = new _Ros2Std_msgsMsgFloat64MultiArray[ReadCount(reader, 6, 12)];
        for(int index = 0; index < value.@f_rotation_matrix_world.Length; ++index)
            value.@f_rotation_matrix_world[index] = ReadRos2Std_msgsMsgFloat64MultiArray(reader);
        value.@i_actual_user_coord_num = unchecked((sbyte)reader.Unsigned(1));
        value.@i_coord_ref = unchecked((sbyte)reader.Unsigned(1));
        value.@f_current_pos_user = new _Ros2Std_msgsMsgFloat64MultiArray[ReadCount(reader, 6, 12)];
        for(int index = 0; index < value.@f_current_pos_user.Length; ++index)
            value.@f_current_pos_user[index] = ReadRos2Std_msgsMsgFloat64MultiArray(reader);
        value.@f_current_vel_user = new double[6];
        for(int index = 0; index < value.@f_current_vel_user.Length; ++index)
            value.@f_current_vel_user[index] = reader.Float64();
        value.@f_user_ext_task_torque = new double[6];
        for(int index = 0; index < value.@f_user_ext_task_torque.Length; ++index)
            value.@f_user_ext_task_torque[index] = reader.Float64();
        value.@f_target_pos_user = new double[6];
        for(int index = 0; index < value.@f_target_pos_user.Length; ++index)
            value.@f_target_pos_user[index] = reader.Float64();
        value.@f_target_vel_user = new double[6];
        for(int index = 0; index < value.@f_target_vel_user.Length; ++index)
            value.@f_target_vel_user[index] = reader.Float64();
        value.@f_rotation_matrix_user = new _Ros2Std_msgsMsgFloat64MultiArray[ReadCount(reader, 6, 12)];
        for(int index = 0; index < value.@f_rotation_matrix_user.Length; ++index)
            value.@f_rotation_matrix_user[index] = ReadRos2Std_msgsMsgFloat64MultiArray(reader);
        value.@f_actual_analog_input = new double[6];
        for(int index = 0; index < value.@f_actual_analog_input.Length; ++index)
            value.@f_actual_analog_input[index] = reader.Float64();
        value.@b_actual_switch_input = new bool[3];
        for(int index = 0; index < value.@b_actual_switch_input.Length; ++index)
            value.@b_actual_switch_input[index] = ReadBool(reader);
        value.@b_actual_safety_input = new bool[2];
        for(int index = 0; index < value.@b_actual_safety_input.Length; ++index)
            value.@b_actual_safety_input[index] = ReadBool(reader);
        value.@i_actual_analog_input_type = new sbyte[2];
        for(int index = 0; index < value.@i_actual_analog_input_type.Length; ++index)
            value.@i_actual_analog_input_type[index] = unchecked((sbyte)reader.Unsigned(1));
        value.@f_target_analog_output = new double[2];
        for(int index = 0; index < value.@f_target_analog_output.Length; ++index)
            value.@f_target_analog_output[index] = reader.Float64();
        value.@i_target_analog_output_type = new sbyte[2];
        for(int index = 0; index < value.@i_target_analog_output_type.Length; ++index)
            value.@i_target_analog_output_type[index] = unchecked((sbyte)reader.Unsigned(1));
        value.@b_actual_encorder_strove_signal = new bool[2];
        for(int index = 0; index < value.@b_actual_encorder_strove_signal.Length; ++index)
            value.@b_actual_encorder_strove_signal[index] = ReadBool(reader);
        value.@i_actual_encorder_raw_data = new sbyte[2];
        for(int index = 0; index < value.@i_actual_encorder_raw_data.Length; ++index)
            value.@i_actual_encorder_raw_data[index] = unchecked((sbyte)reader.Unsigned(1));
        value.@b_actual_encorder_reset_signal = new bool[2];
        for(int index = 0; index < value.@b_actual_encorder_reset_signal.Length; ++index)
            value.@b_actual_encorder_reset_signal[index] = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Dsr_msgs2MsgRobotStateRt
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
        public _Ros2Std_msgsMsgFloat64MultiArray[] @jacobian_matrix = new _Ros2Std_msgsMsgFloat64MultiArray[0];
        public double[] @gravity_torque = new double[6];
        public _Ros2Std_msgsMsgFloat64MultiArray[] @coriolis_matrix = new _Ros2Std_msgsMsgFloat64MultiArray[0];
        public _Ros2Std_msgsMsgFloat64MultiArray[] @mass_matrix = new _Ros2Std_msgsMsgFloat64MultiArray[0];
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

        public _Ros2Dsr_msgs2MsgRobotStateRt()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2MsgRobotStateRtCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2MsgRobotStateRt>
    {
        public static readonly Ros2Dsr_msgs2MsgRobotStateRtCodec Instance = new Ros2Dsr_msgs2MsgRobotStateRtCodec();

        private Ros2Dsr_msgs2MsgRobotStateRtCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/msg/RobotStateRt";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_13d507971439fe6ba5458b55545edfcf1ead10ce7e603365cffa5f894657be93";
        public const int MIN_WIRE_BYTES = 1530, MAX_WIRE_BYTES = 8154;

        public byte[] Encode(_Ros2Dsr_msgs2MsgRobotStateRt value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2MsgRobotStateRt(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2MsgRobotStateRt Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2MsgRobotStateRt value = ReadRos2Dsr_msgs2MsgRobotStateRt(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2MsgRobotStateRt(_Codecs.Writer writer, _Ros2Dsr_msgs2MsgRobotStateRt value)
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
        _Ros2Std_msgsMsgFloat64MultiArray[] part21 = value.@jacobian_matrix;
        if(part21 == null || part21.Length > 6)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part21.Length, 4);
        for(int index = 0; index < part21.Length; ++index)
        {
            _Ros2Std_msgsMsgFloat64MultiArray element = part21[index];
            WriteRos2Std_msgsMsgFloat64MultiArray(writer, element);
        }
        double[] part22 = value.@gravity_torque;
        if(part22 == null || part22.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part22.Length; ++index)
        {
            double element = part22[index];
            writer.Float64(element);
        }
        _Ros2Std_msgsMsgFloat64MultiArray[] part23 = value.@coriolis_matrix;
        if(part23 == null || part23.Length > 6)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part23.Length, 4);
        for(int index = 0; index < part23.Length; ++index)
        {
            _Ros2Std_msgsMsgFloat64MultiArray element = part23[index];
            WriteRos2Std_msgsMsgFloat64MultiArray(writer, element);
        }
        _Ros2Std_msgsMsgFloat64MultiArray[] part24 = value.@mass_matrix;
        if(part24 == null || part24.Length > 6)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part24.Length, 4);
        for(int index = 0; index < part24.Length; ++index)
        {
            _Ros2Std_msgsMsgFloat64MultiArray element = part24[index];
            WriteRos2Std_msgsMsgFloat64MultiArray(writer, element);
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

    private static _Ros2Dsr_msgs2MsgRobotStateRt ReadRos2Dsr_msgs2MsgRobotStateRt(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2MsgRobotStateRt();
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
        value.@jacobian_matrix = new _Ros2Std_msgsMsgFloat64MultiArray[ReadCount(reader, 6, 12)];
        for(int index = 0; index < value.@jacobian_matrix.Length; ++index)
            value.@jacobian_matrix[index] = ReadRos2Std_msgsMsgFloat64MultiArray(reader);
        value.@gravity_torque = new double[6];
        for(int index = 0; index < value.@gravity_torque.Length; ++index)
            value.@gravity_torque[index] = reader.Float64();
        value.@coriolis_matrix = new _Ros2Std_msgsMsgFloat64MultiArray[ReadCount(reader, 6, 12)];
        for(int index = 0; index < value.@coriolis_matrix.Length; ++index)
            value.@coriolis_matrix[index] = ReadRos2Std_msgsMsgFloat64MultiArray(reader);
        value.@mass_matrix = new _Ros2Std_msgsMsgFloat64MultiArray[ReadCount(reader, 6, 12)];
        for(int index = 0; index < value.@mass_matrix.Length; ++index)
            value.@mass_matrix[index] = ReadRos2Std_msgsMsgFloat64MultiArray(reader);
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

    public sealed class _Ros2Dsr_msgs2MsgRobotStop
    {
        public int @stop_mode = 0;

        public _Ros2Dsr_msgs2MsgRobotStop()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2MsgRobotStopCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2MsgRobotStop>
    {
        public static readonly Ros2Dsr_msgs2MsgRobotStopCodec Instance = new Ros2Dsr_msgs2MsgRobotStopCodec();

        private Ros2Dsr_msgs2MsgRobotStopCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/msg/RobotStop";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_f3307dbbe0c0c842659c2db436d1c3d6f032157979c5b6178103319bb5eeda37";
        public const int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 4;

        public byte[] Encode(_Ros2Dsr_msgs2MsgRobotStop value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2MsgRobotStop(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2MsgRobotStop Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2MsgRobotStop value = ReadRos2Dsr_msgs2MsgRobotStop(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2MsgRobotStop(_Codecs.Writer writer, _Ros2Dsr_msgs2MsgRobotStop value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        int part0 = value.@stop_mode;
        writer.Unsigned(unchecked((uint)part0), 4);
    }

    private static _Ros2Dsr_msgs2MsgRobotStop ReadRos2Dsr_msgs2MsgRobotStop(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2MsgRobotStop();
        value.@stop_mode = unchecked((int)reader.Unsigned(4));
        return value;
    }

    public sealed class _Ros2Dsr_msgs2MsgServojRtStream
    {
        public double[] @pos = new double[6];
        public double[] @vel = new double[6];
        public double[] @acc = new double[6];
        public double @time = 0;

        public _Ros2Dsr_msgs2MsgServojRtStream()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2MsgServojRtStreamCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2MsgServojRtStream>
    {
        public static readonly Ros2Dsr_msgs2MsgServojRtStreamCodec Instance = new Ros2Dsr_msgs2MsgServojRtStreamCodec();

        private Ros2Dsr_msgs2MsgServojRtStreamCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/msg/ServojRtStream";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_4321e707fa63a57b66eb3754deca45fe0c108c52565a0e0f62749deae95726a9";
        public const int MIN_WIRE_BYTES = 152, MAX_WIRE_BYTES = 152;

        public byte[] Encode(_Ros2Dsr_msgs2MsgServojRtStream value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2MsgServojRtStream(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2MsgServojRtStream Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2MsgServojRtStream value = ReadRos2Dsr_msgs2MsgServojRtStream(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2MsgServojRtStream(_Codecs.Writer writer, _Ros2Dsr_msgs2MsgServojRtStream value)
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

    private static _Ros2Dsr_msgs2MsgServojRtStream ReadRos2Dsr_msgs2MsgServojRtStream(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2MsgServojRtStream();
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

    public sealed class _Ros2Dsr_msgs2MsgServojStream
    {
        public double[] @pos = new double[6];
        public double[] @vel = new double[6];
        public double[] @acc = new double[6];
        public double @time = 0;
        public sbyte @mode = 0;

        public _Ros2Dsr_msgs2MsgServojStream()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2MsgServojStreamCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2MsgServojStream>
    {
        public static readonly Ros2Dsr_msgs2MsgServojStreamCodec Instance = new Ros2Dsr_msgs2MsgServojStreamCodec();

        private Ros2Dsr_msgs2MsgServojStreamCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/msg/ServojStream";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_bbd465cf407d444db1d536bf464b3e3939b18aa904c4ce99aac2fb2d918259a9";
        public const int MIN_WIRE_BYTES = 153, MAX_WIRE_BYTES = 153;

        public byte[] Encode(_Ros2Dsr_msgs2MsgServojStream value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2MsgServojStream(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2MsgServojStream Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2MsgServojStream value = ReadRos2Dsr_msgs2MsgServojStream(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2MsgServojStream(_Codecs.Writer writer, _Ros2Dsr_msgs2MsgServojStream value)
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
        sbyte part4 = value.@mode;
        writer.Unsigned(unchecked((byte)part4), 1);
    }

    private static _Ros2Dsr_msgs2MsgServojStream ReadRos2Dsr_msgs2MsgServojStream(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2MsgServojStream();
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
        value.@mode = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    public sealed class _Ros2Dsr_msgs2MsgServolRtStream
    {
        public double[] @pos = new double[6];
        public double[] @vel = new double[6];
        public double[] @acc = new double[6];
        public double @time = 0;

        public _Ros2Dsr_msgs2MsgServolRtStream()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2MsgServolRtStreamCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2MsgServolRtStream>
    {
        public static readonly Ros2Dsr_msgs2MsgServolRtStreamCodec Instance = new Ros2Dsr_msgs2MsgServolRtStreamCodec();

        private Ros2Dsr_msgs2MsgServolRtStreamCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/msg/ServolRtStream";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_052d62a9865376150ca907ac85216a91f19dd81ed7bbe943ed53e74b6e511763";
        public const int MIN_WIRE_BYTES = 152, MAX_WIRE_BYTES = 152;

        public byte[] Encode(_Ros2Dsr_msgs2MsgServolRtStream value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2MsgServolRtStream(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2MsgServolRtStream Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2MsgServolRtStream value = ReadRos2Dsr_msgs2MsgServolRtStream(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2MsgServolRtStream(_Codecs.Writer writer, _Ros2Dsr_msgs2MsgServolRtStream value)
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

    private static _Ros2Dsr_msgs2MsgServolRtStream ReadRos2Dsr_msgs2MsgServolRtStream(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2MsgServolRtStream();
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

    public sealed class _Ros2Dsr_msgs2MsgServolStream
    {
        public double[] @pos = new double[6];
        public double[] @vel = new double[2];
        public double[] @acc = new double[2];
        public double @time = 0;

        public _Ros2Dsr_msgs2MsgServolStream()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2MsgServolStreamCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2MsgServolStream>
    {
        public static readonly Ros2Dsr_msgs2MsgServolStreamCodec Instance = new Ros2Dsr_msgs2MsgServolStreamCodec();

        private Ros2Dsr_msgs2MsgServolStreamCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/msg/ServolStream";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_7d3d948e15e7dcc96f21f17d0c6a1981859ea8002234ea93877919fa961c2a96";
        public const int MIN_WIRE_BYTES = 88, MAX_WIRE_BYTES = 88;

        public byte[] Encode(_Ros2Dsr_msgs2MsgServolStream value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2MsgServolStream(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2MsgServolStream Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2MsgServolStream value = ReadRos2Dsr_msgs2MsgServolStream(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2MsgServolStream(_Codecs.Writer writer, _Ros2Dsr_msgs2MsgServolStream value)
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

    private static _Ros2Dsr_msgs2MsgServolStream ReadRos2Dsr_msgs2MsgServolStream(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2MsgServolStream();
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

    public sealed class _Ros2Dsr_msgs2MsgSpeedjRtStream
    {
        public double[] @vel = new double[6];
        public double[] @acc = new double[6];
        public double @time = 0;

        public _Ros2Dsr_msgs2MsgSpeedjRtStream()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2MsgSpeedjRtStreamCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2MsgSpeedjRtStream>
    {
        public static readonly Ros2Dsr_msgs2MsgSpeedjRtStreamCodec Instance = new Ros2Dsr_msgs2MsgSpeedjRtStreamCodec();

        private Ros2Dsr_msgs2MsgSpeedjRtStreamCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/msg/SpeedjRtStream";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_d6f75878c6dd397b261ede489ca0b3c2e7f26c44908a16d809303a77ca4791aa";
        public const int MIN_WIRE_BYTES = 104, MAX_WIRE_BYTES = 104;

        public byte[] Encode(_Ros2Dsr_msgs2MsgSpeedjRtStream value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2MsgSpeedjRtStream(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2MsgSpeedjRtStream Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2MsgSpeedjRtStream value = ReadRos2Dsr_msgs2MsgSpeedjRtStream(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2MsgSpeedjRtStream(_Codecs.Writer writer, _Ros2Dsr_msgs2MsgSpeedjRtStream value)
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

    private static _Ros2Dsr_msgs2MsgSpeedjRtStream ReadRos2Dsr_msgs2MsgSpeedjRtStream(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2MsgSpeedjRtStream();
        value.@vel = new double[6];
        for(int index = 0; index < value.@vel.Length; ++index)
            value.@vel[index] = reader.Float64();
        value.@acc = new double[6];
        for(int index = 0; index < value.@acc.Length; ++index)
            value.@acc[index] = reader.Float64();
        value.@time = reader.Float64();
        return value;
    }

    public sealed class _Ros2Dsr_msgs2MsgSpeedjStream
    {
        public double[] @vel = new double[6];
        public double[] @acc = new double[6];
        public double @time = 0;

        public _Ros2Dsr_msgs2MsgSpeedjStream()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2MsgSpeedjStreamCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2MsgSpeedjStream>
    {
        public static readonly Ros2Dsr_msgs2MsgSpeedjStreamCodec Instance = new Ros2Dsr_msgs2MsgSpeedjStreamCodec();

        private Ros2Dsr_msgs2MsgSpeedjStreamCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/msg/SpeedjStream";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_c37473b30f0e49db847342eb9b0e27606010710a43de7b94c8589707bceacbf5";
        public const int MIN_WIRE_BYTES = 104, MAX_WIRE_BYTES = 104;

        public byte[] Encode(_Ros2Dsr_msgs2MsgSpeedjStream value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2MsgSpeedjStream(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2MsgSpeedjStream Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2MsgSpeedjStream value = ReadRos2Dsr_msgs2MsgSpeedjStream(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2MsgSpeedjStream(_Codecs.Writer writer, _Ros2Dsr_msgs2MsgSpeedjStream value)
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

    private static _Ros2Dsr_msgs2MsgSpeedjStream ReadRos2Dsr_msgs2MsgSpeedjStream(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2MsgSpeedjStream();
        value.@vel = new double[6];
        for(int index = 0; index < value.@vel.Length; ++index)
            value.@vel[index] = reader.Float64();
        value.@acc = new double[6];
        for(int index = 0; index < value.@acc.Length; ++index)
            value.@acc[index] = reader.Float64();
        value.@time = reader.Float64();
        return value;
    }

    public sealed class _Ros2Dsr_msgs2MsgSpeedlRtStream
    {
        public double[] @vel = new double[6];
        public double[] @acc = new double[6];
        public double @time = 0;

        public _Ros2Dsr_msgs2MsgSpeedlRtStream()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2MsgSpeedlRtStreamCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2MsgSpeedlRtStream>
    {
        public static readonly Ros2Dsr_msgs2MsgSpeedlRtStreamCodec Instance = new Ros2Dsr_msgs2MsgSpeedlRtStreamCodec();

        private Ros2Dsr_msgs2MsgSpeedlRtStreamCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/msg/SpeedlRtStream";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_0e85422a682aef2c639f5e8a44b883e7c9b3491c95bf352c34ba23e9fb789b92";
        public const int MIN_WIRE_BYTES = 104, MAX_WIRE_BYTES = 104;

        public byte[] Encode(_Ros2Dsr_msgs2MsgSpeedlRtStream value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2MsgSpeedlRtStream(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2MsgSpeedlRtStream Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2MsgSpeedlRtStream value = ReadRos2Dsr_msgs2MsgSpeedlRtStream(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2MsgSpeedlRtStream(_Codecs.Writer writer, _Ros2Dsr_msgs2MsgSpeedlRtStream value)
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

    private static _Ros2Dsr_msgs2MsgSpeedlRtStream ReadRos2Dsr_msgs2MsgSpeedlRtStream(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2MsgSpeedlRtStream();
        value.@vel = new double[6];
        for(int index = 0; index < value.@vel.Length; ++index)
            value.@vel[index] = reader.Float64();
        value.@acc = new double[6];
        for(int index = 0; index < value.@acc.Length; ++index)
            value.@acc[index] = reader.Float64();
        value.@time = reader.Float64();
        return value;
    }

    public sealed class _Ros2Dsr_msgs2MsgSpeedlStream
    {
        public double[] @vel = new double[6];
        public double[] @acc = new double[2];
        public double @time = 0;

        public _Ros2Dsr_msgs2MsgSpeedlStream()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2MsgSpeedlStreamCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2MsgSpeedlStream>
    {
        public static readonly Ros2Dsr_msgs2MsgSpeedlStreamCodec Instance = new Ros2Dsr_msgs2MsgSpeedlStreamCodec();

        private Ros2Dsr_msgs2MsgSpeedlStreamCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/msg/SpeedlStream";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_8ae5704395fff21a33153589b6a32a41e8687cee0607a7085156c42a2f087ef2";
        public const int MIN_WIRE_BYTES = 72, MAX_WIRE_BYTES = 72;

        public byte[] Encode(_Ros2Dsr_msgs2MsgSpeedlStream value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2MsgSpeedlStream(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2MsgSpeedlStream Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2MsgSpeedlStream value = ReadRos2Dsr_msgs2MsgSpeedlStream(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2MsgSpeedlStream(_Codecs.Writer writer, _Ros2Dsr_msgs2MsgSpeedlStream value)
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

    private static _Ros2Dsr_msgs2MsgSpeedlStream ReadRos2Dsr_msgs2MsgSpeedlStream(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2MsgSpeedlStream();
        value.@vel = new double[6];
        for(int index = 0; index < value.@vel.Length; ++index)
            value.@vel[index] = reader.Float64();
        value.@acc = new double[2];
        for(int index = 0; index < value.@acc.Length; ++index)
            value.@acc[index] = reader.Float64();
        value.@time = reader.Float64();
        return value;
    }

    public sealed class _Ros2Dsr_msgs2MsgTorqueRtStream
    {
        public double[] @tor = new double[6];
        public double @time = 0;

        public _Ros2Dsr_msgs2MsgTorqueRtStream()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2MsgTorqueRtStreamCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2MsgTorqueRtStream>
    {
        public static readonly Ros2Dsr_msgs2MsgTorqueRtStreamCodec Instance = new Ros2Dsr_msgs2MsgTorqueRtStreamCodec();

        private Ros2Dsr_msgs2MsgTorqueRtStreamCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/msg/TorqueRtStream";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_81cb4c6d445c6869b94baca87ce997c96964b7e189598b0adfdcc227a295fd73";
        public const int MIN_WIRE_BYTES = 56, MAX_WIRE_BYTES = 56;

        public byte[] Encode(_Ros2Dsr_msgs2MsgTorqueRtStream value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2MsgTorqueRtStream(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2MsgTorqueRtStream Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2MsgTorqueRtStream value = ReadRos2Dsr_msgs2MsgTorqueRtStream(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2MsgTorqueRtStream(_Codecs.Writer writer, _Ros2Dsr_msgs2MsgTorqueRtStream value)
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

    private static _Ros2Dsr_msgs2MsgTorqueRtStream ReadRos2Dsr_msgs2MsgTorqueRtStream(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2MsgTorqueRtStream();
        value.@tor = new double[6];
        for(int index = 0; index < value.@tor.Length; ++index)
            value.@tor[index] = reader.Float64();
        value.@time = reader.Float64();
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvAlignAxis1_Request
    {
        public double[] @x1 = new double[6];
        public double[] @x2 = new double[6];
        public double[] @x3 = new double[6];
        public double[] @source_vect = new double[3];
        public sbyte @axis = 0;
        public sbyte @ref = 0;

        public _Ros2Dsr_msgs2SrvAlignAxis1_Request()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvAlignAxis1_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvAlignAxis1_Request>
    {
        public static readonly Ros2Dsr_msgs2SrvAlignAxis1_RequestCodec Instance = new Ros2Dsr_msgs2SrvAlignAxis1_RequestCodec();

        private Ros2Dsr_msgs2SrvAlignAxis1_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/AlignAxis1_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_1ddf70ffd434db95044523b5778f518ec204aed4e315293ecb474e1ec1b1267d";
        public const int MIN_WIRE_BYTES = 170, MAX_WIRE_BYTES = 170;

        public byte[] Encode(_Ros2Dsr_msgs2SrvAlignAxis1_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvAlignAxis1_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvAlignAxis1_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvAlignAxis1_Request value = ReadRos2Dsr_msgs2SrvAlignAxis1_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvAlignAxis1_Request(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvAlignAxis1_Request value)
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

    private static _Ros2Dsr_msgs2SrvAlignAxis1_Request ReadRos2Dsr_msgs2SrvAlignAxis1_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvAlignAxis1_Request();
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

    public sealed class _Ros2Dsr_msgs2SrvAlignAxis1_Response
    {
        public bool @success = false;

        public _Ros2Dsr_msgs2SrvAlignAxis1_Response()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvAlignAxis1_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvAlignAxis1_Response>
    {
        public static readonly Ros2Dsr_msgs2SrvAlignAxis1_ResponseCodec Instance = new Ros2Dsr_msgs2SrvAlignAxis1_ResponseCodec();

        private Ros2Dsr_msgs2SrvAlignAxis1_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/AlignAxis1_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_f767cbca9c94fc07d10cff7cdbc4125f6d657f4362335ce968dcbd560a75a537";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros2Dsr_msgs2SrvAlignAxis1_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvAlignAxis1_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvAlignAxis1_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvAlignAxis1_Response value = ReadRos2Dsr_msgs2SrvAlignAxis1_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvAlignAxis1_Response(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvAlignAxis1_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros2Dsr_msgs2SrvAlignAxis1_Response ReadRos2Dsr_msgs2SrvAlignAxis1_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvAlignAxis1_Response();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvAlignAxis2_Request
    {
        public double[] @target_vect = new double[3];
        public double[] @source_vect = new double[3];
        public sbyte @axis = 0;
        public sbyte @ref = 0;

        public _Ros2Dsr_msgs2SrvAlignAxis2_Request()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvAlignAxis2_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvAlignAxis2_Request>
    {
        public static readonly Ros2Dsr_msgs2SrvAlignAxis2_RequestCodec Instance = new Ros2Dsr_msgs2SrvAlignAxis2_RequestCodec();

        private Ros2Dsr_msgs2SrvAlignAxis2_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/AlignAxis2_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_102ba03a00114a9c5314e5f947050c88791c1abffcff3d9b3163f06557c9d1ca";
        public const int MIN_WIRE_BYTES = 50, MAX_WIRE_BYTES = 50;

        public byte[] Encode(_Ros2Dsr_msgs2SrvAlignAxis2_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvAlignAxis2_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvAlignAxis2_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvAlignAxis2_Request value = ReadRos2Dsr_msgs2SrvAlignAxis2_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvAlignAxis2_Request(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvAlignAxis2_Request value)
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

    private static _Ros2Dsr_msgs2SrvAlignAxis2_Request ReadRos2Dsr_msgs2SrvAlignAxis2_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvAlignAxis2_Request();
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

    public sealed class _Ros2Dsr_msgs2SrvAlignAxis2_Response
    {
        public bool @success = false;

        public _Ros2Dsr_msgs2SrvAlignAxis2_Response()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvAlignAxis2_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvAlignAxis2_Response>
    {
        public static readonly Ros2Dsr_msgs2SrvAlignAxis2_ResponseCodec Instance = new Ros2Dsr_msgs2SrvAlignAxis2_ResponseCodec();

        private Ros2Dsr_msgs2SrvAlignAxis2_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/AlignAxis2_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_59a69f0d266c31bbd9ab278249d358fb0edb0cc2c5f57a684069653548b88400";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros2Dsr_msgs2SrvAlignAxis2_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvAlignAxis2_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvAlignAxis2_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvAlignAxis2_Response value = ReadRos2Dsr_msgs2SrvAlignAxis2_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvAlignAxis2_Response(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvAlignAxis2_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros2Dsr_msgs2SrvAlignAxis2_Response ReadRos2Dsr_msgs2SrvAlignAxis2_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvAlignAxis2_Response();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvAlterMotion_Request
    {
        public double[] @pos = new double[6];

        public _Ros2Dsr_msgs2SrvAlterMotion_Request()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvAlterMotion_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvAlterMotion_Request>
    {
        public static readonly Ros2Dsr_msgs2SrvAlterMotion_RequestCodec Instance = new Ros2Dsr_msgs2SrvAlterMotion_RequestCodec();

        private Ros2Dsr_msgs2SrvAlterMotion_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/AlterMotion_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_ede1eb26161bfe42b29411347ef4752a6454baf86ba04afc5f2f11149895b000";
        public const int MIN_WIRE_BYTES = 48, MAX_WIRE_BYTES = 48;

        public byte[] Encode(_Ros2Dsr_msgs2SrvAlterMotion_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvAlterMotion_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvAlterMotion_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvAlterMotion_Request value = ReadRos2Dsr_msgs2SrvAlterMotion_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvAlterMotion_Request(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvAlterMotion_Request value)
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

    private static _Ros2Dsr_msgs2SrvAlterMotion_Request ReadRos2Dsr_msgs2SrvAlterMotion_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvAlterMotion_Request();
        value.@pos = new double[6];
        for(int index = 0; index < value.@pos.Length; ++index)
            value.@pos[index] = reader.Float64();
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvAlterMotion_Response
    {
        public bool @success = false;

        public _Ros2Dsr_msgs2SrvAlterMotion_Response()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvAlterMotion_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvAlterMotion_Response>
    {
        public static readonly Ros2Dsr_msgs2SrvAlterMotion_ResponseCodec Instance = new Ros2Dsr_msgs2SrvAlterMotion_ResponseCodec();

        private Ros2Dsr_msgs2SrvAlterMotion_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/AlterMotion_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_edd6fac42f9f148dc508948ebf7b7bfe09fda09ab6ba66df3a56505b10829557";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros2Dsr_msgs2SrvAlterMotion_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvAlterMotion_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvAlterMotion_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvAlterMotion_Response value = ReadRos2Dsr_msgs2SrvAlterMotion_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvAlterMotion_Response(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvAlterMotion_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros2Dsr_msgs2SrvAlterMotion_Response ReadRos2Dsr_msgs2SrvAlterMotion_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvAlterMotion_Response();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvCalcCoord_Request
    {
        public sbyte @input_pos_cnt = 0;
        public double[] @x1 = new double[6];
        public double[] @x2 = new double[6];
        public double[] @x3 = new double[6];
        public double[] @x4 = new double[6];
        public sbyte @ref = 0;
        public sbyte @mod = 0;

        public _Ros2Dsr_msgs2SrvCalcCoord_Request()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvCalcCoord_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvCalcCoord_Request>
    {
        public static readonly Ros2Dsr_msgs2SrvCalcCoord_RequestCodec Instance = new Ros2Dsr_msgs2SrvCalcCoord_RequestCodec();

        private Ros2Dsr_msgs2SrvCalcCoord_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/CalcCoord_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_7fda8163d3f25429c387f6456df77bbfcf30c1aee93bb08ac27d50950a56ac7f";
        public const int MIN_WIRE_BYTES = 195, MAX_WIRE_BYTES = 195;

        public byte[] Encode(_Ros2Dsr_msgs2SrvCalcCoord_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvCalcCoord_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvCalcCoord_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvCalcCoord_Request value = ReadRos2Dsr_msgs2SrvCalcCoord_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvCalcCoord_Request(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvCalcCoord_Request value)
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

    private static _Ros2Dsr_msgs2SrvCalcCoord_Request ReadRos2Dsr_msgs2SrvCalcCoord_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvCalcCoord_Request();
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

    public sealed class _Ros2Dsr_msgs2SrvCalcCoord_Response
    {
        public double[] @conv_posx = new double[6];
        public bool @success = false;

        public _Ros2Dsr_msgs2SrvCalcCoord_Response()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvCalcCoord_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvCalcCoord_Response>
    {
        public static readonly Ros2Dsr_msgs2SrvCalcCoord_ResponseCodec Instance = new Ros2Dsr_msgs2SrvCalcCoord_ResponseCodec();

        private Ros2Dsr_msgs2SrvCalcCoord_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/CalcCoord_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_d5d79d4593bf040421c1b8570c86d021db50de736ab114ec13623e4982168371";
        public const int MIN_WIRE_BYTES = 49, MAX_WIRE_BYTES = 49;

        public byte[] Encode(_Ros2Dsr_msgs2SrvCalcCoord_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvCalcCoord_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvCalcCoord_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvCalcCoord_Response value = ReadRos2Dsr_msgs2SrvCalcCoord_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvCalcCoord_Response(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvCalcCoord_Response value)
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

    private static _Ros2Dsr_msgs2SrvCalcCoord_Response ReadRos2Dsr_msgs2SrvCalcCoord_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvCalcCoord_Response();
        value.@conv_posx = new double[6];
        for(int index = 0; index < value.@conv_posx.Length; ++index)
            value.@conv_posx[index] = reader.Float64();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvChangeCollisionSensitivity_Request
    {
        public sbyte @sensitivity = 0;

        public _Ros2Dsr_msgs2SrvChangeCollisionSensitivity_Request()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvChangeCollisionSensitivity_RequestCodec :
        global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvChangeCollisionSensitivity_Request>
    {
        public static readonly Ros2Dsr_msgs2SrvChangeCollisionSensitivity_RequestCodec Instance = new Ros2Dsr_msgs2SrvChangeCollisionSensitivity_RequestCodec();

        private Ros2Dsr_msgs2SrvChangeCollisionSensitivity_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/ChangeCollisionSensitivity_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_69c9183fb3a1a5e619cb2537da31e73aa9c490b2022db5281931d353676efc7f";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros2Dsr_msgs2SrvChangeCollisionSensitivity_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvChangeCollisionSensitivity_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvChangeCollisionSensitivity_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvChangeCollisionSensitivity_Request value = ReadRos2Dsr_msgs2SrvChangeCollisionSensitivity_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvChangeCollisionSensitivity_Request(_Codecs.Writer writer,
                                                                                _Ros2Dsr_msgs2SrvChangeCollisionSensitivity_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        sbyte part0 = value.@sensitivity;
        writer.Unsigned(unchecked((byte)part0), 1);
    }

    private static _Ros2Dsr_msgs2SrvChangeCollisionSensitivity_Request ReadRos2Dsr_msgs2SrvChangeCollisionSensitivity_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvChangeCollisionSensitivity_Request();
        value.@sensitivity = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvChangeCollisionSensitivity_Response
    {
        public bool @success = false;

        public _Ros2Dsr_msgs2SrvChangeCollisionSensitivity_Response()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvChangeCollisionSensitivity_ResponseCodec :
        global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvChangeCollisionSensitivity_Response>
    {
        public static readonly Ros2Dsr_msgs2SrvChangeCollisionSensitivity_ResponseCodec Instance =
            new Ros2Dsr_msgs2SrvChangeCollisionSensitivity_ResponseCodec();

        private Ros2Dsr_msgs2SrvChangeCollisionSensitivity_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/ChangeCollisionSensitivity_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_d0660dd8ed26aba09d9aaa3444daae0abca31e415b24a39ab05c012fb9909aa0";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros2Dsr_msgs2SrvChangeCollisionSensitivity_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvChangeCollisionSensitivity_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvChangeCollisionSensitivity_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvChangeCollisionSensitivity_Response value = ReadRos2Dsr_msgs2SrvChangeCollisionSensitivity_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvChangeCollisionSensitivity_Response(_Codecs.Writer writer,
                                                                                 _Ros2Dsr_msgs2SrvChangeCollisionSensitivity_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros2Dsr_msgs2SrvChangeCollisionSensitivity_Response ReadRos2Dsr_msgs2SrvChangeCollisionSensitivity_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvChangeCollisionSensitivity_Response();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvChangeOperationSpeed_Request
    {
        public sbyte @speed = 0;

        public _Ros2Dsr_msgs2SrvChangeOperationSpeed_Request()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvChangeOperationSpeed_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvChangeOperationSpeed_Request>
    {
        public static readonly Ros2Dsr_msgs2SrvChangeOperationSpeed_RequestCodec Instance = new Ros2Dsr_msgs2SrvChangeOperationSpeed_RequestCodec();

        private Ros2Dsr_msgs2SrvChangeOperationSpeed_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/ChangeOperationSpeed_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_63eed536f4862ee6571ea76f40342def3598466057cc09aa45b0ea159c9a4fa7";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros2Dsr_msgs2SrvChangeOperationSpeed_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvChangeOperationSpeed_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvChangeOperationSpeed_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvChangeOperationSpeed_Request value = ReadRos2Dsr_msgs2SrvChangeOperationSpeed_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvChangeOperationSpeed_Request(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvChangeOperationSpeed_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        sbyte part0 = value.@speed;
        writer.Unsigned(unchecked((byte)part0), 1);
    }

    private static _Ros2Dsr_msgs2SrvChangeOperationSpeed_Request ReadRos2Dsr_msgs2SrvChangeOperationSpeed_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvChangeOperationSpeed_Request();
        value.@speed = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvChangeOperationSpeed_Response
    {
        public bool @success = false;

        public _Ros2Dsr_msgs2SrvChangeOperationSpeed_Response()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvChangeOperationSpeed_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvChangeOperationSpeed_Response>
    {
        public static readonly Ros2Dsr_msgs2SrvChangeOperationSpeed_ResponseCodec Instance = new Ros2Dsr_msgs2SrvChangeOperationSpeed_ResponseCodec();

        private Ros2Dsr_msgs2SrvChangeOperationSpeed_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/ChangeOperationSpeed_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_6514284e5a0739b16cd9df8dab9939c8e3aa9b47567741389bcc3fe54e9f0cbf";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros2Dsr_msgs2SrvChangeOperationSpeed_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvChangeOperationSpeed_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvChangeOperationSpeed_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvChangeOperationSpeed_Response value = ReadRos2Dsr_msgs2SrvChangeOperationSpeed_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvChangeOperationSpeed_Response(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvChangeOperationSpeed_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros2Dsr_msgs2SrvChangeOperationSpeed_Response ReadRos2Dsr_msgs2SrvChangeOperationSpeed_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvChangeOperationSpeed_Response();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvCheckForceCondition_Request
    {
        public sbyte @axis = 0;
        public double @min = 0;
        public double @max = 0;
        public sbyte @ref = 0;

        public _Ros2Dsr_msgs2SrvCheckForceCondition_Request()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvCheckForceCondition_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvCheckForceCondition_Request>
    {
        public static readonly Ros2Dsr_msgs2SrvCheckForceCondition_RequestCodec Instance = new Ros2Dsr_msgs2SrvCheckForceCondition_RequestCodec();

        private Ros2Dsr_msgs2SrvCheckForceCondition_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/CheckForceCondition_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_e996cea9f24a1967a4591fdb072ccb87fe1e684dfe19cdcbb5cf65afa22cd0e4";
        public const int MIN_WIRE_BYTES = 18, MAX_WIRE_BYTES = 18;

        public byte[] Encode(_Ros2Dsr_msgs2SrvCheckForceCondition_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvCheckForceCondition_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvCheckForceCondition_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvCheckForceCondition_Request value = ReadRos2Dsr_msgs2SrvCheckForceCondition_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvCheckForceCondition_Request(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvCheckForceCondition_Request value)
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

    private static _Ros2Dsr_msgs2SrvCheckForceCondition_Request ReadRos2Dsr_msgs2SrvCheckForceCondition_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvCheckForceCondition_Request();
        value.@axis = unchecked((sbyte)reader.Unsigned(1));
        value.@min = reader.Float64();
        value.@max = reader.Float64();
        value.@ref = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvCheckForceCondition_Response
    {
        public bool @success = false;

        public _Ros2Dsr_msgs2SrvCheckForceCondition_Response()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvCheckForceCondition_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvCheckForceCondition_Response>
    {
        public static readonly Ros2Dsr_msgs2SrvCheckForceCondition_ResponseCodec Instance = new Ros2Dsr_msgs2SrvCheckForceCondition_ResponseCodec();

        private Ros2Dsr_msgs2SrvCheckForceCondition_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/CheckForceCondition_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_ed5a27b7b1daf8a668998d4da7f7ac5d1f7a71caea35a37c51db07058a373343";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros2Dsr_msgs2SrvCheckForceCondition_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvCheckForceCondition_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvCheckForceCondition_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvCheckForceCondition_Response value = ReadRos2Dsr_msgs2SrvCheckForceCondition_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvCheckForceCondition_Response(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvCheckForceCondition_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros2Dsr_msgs2SrvCheckForceCondition_Response ReadRos2Dsr_msgs2SrvCheckForceCondition_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvCheckForceCondition_Response();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvCheckMotion_Request
    {
        public _Ros2Dsr_msgs2SrvCheckMotion_Request()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvCheckMotion_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvCheckMotion_Request>
    {
        public static readonly Ros2Dsr_msgs2SrvCheckMotion_RequestCodec Instance = new Ros2Dsr_msgs2SrvCheckMotion_RequestCodec();

        private Ros2Dsr_msgs2SrvCheckMotion_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/CheckMotion_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_64c44932b5afc38a3bd1cfb306c018616656793b0c6e5bf0e04f557a0b5f48a5";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public byte[] Encode(_Ros2Dsr_msgs2SrvCheckMotion_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvCheckMotion_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvCheckMotion_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvCheckMotion_Request value = ReadRos2Dsr_msgs2SrvCheckMotion_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvCheckMotion_Request(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvCheckMotion_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    private static _Ros2Dsr_msgs2SrvCheckMotion_Request ReadRos2Dsr_msgs2SrvCheckMotion_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvCheckMotion_Request();
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvCheckMotion_Response
    {
        public sbyte @status = 0;
        public bool @success = false;

        public _Ros2Dsr_msgs2SrvCheckMotion_Response()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvCheckMotion_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvCheckMotion_Response>
    {
        public static readonly Ros2Dsr_msgs2SrvCheckMotion_ResponseCodec Instance = new Ros2Dsr_msgs2SrvCheckMotion_ResponseCodec();

        private Ros2Dsr_msgs2SrvCheckMotion_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/CheckMotion_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_9c8ac8ada140000e2bd6588a92871d699a924ce9b1011d3e98dec98e0aa84379";
        public const int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;

        public byte[] Encode(_Ros2Dsr_msgs2SrvCheckMotion_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvCheckMotion_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvCheckMotion_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvCheckMotion_Response value = ReadRos2Dsr_msgs2SrvCheckMotion_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvCheckMotion_Response(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvCheckMotion_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        sbyte part0 = value.@status;
        writer.Unsigned(unchecked((byte)part0), 1);
        bool part1 = value.@success;
        writer.Unsigned(part1 ? 1UL : 0UL, 1);
    }

    private static _Ros2Dsr_msgs2SrvCheckMotion_Response ReadRos2Dsr_msgs2SrvCheckMotion_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvCheckMotion_Response();
        value.@status = unchecked((sbyte)reader.Unsigned(1));
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvCheckOrientationCondition1_Request
    {
        public sbyte @axis = 0;
        public double[] @min = new double[6];
        public double[] @max = new double[6];
        public sbyte @ref = 0;
        public sbyte @mode = 0;

        public _Ros2Dsr_msgs2SrvCheckOrientationCondition1_Request()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvCheckOrientationCondition1_RequestCodec :
        global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvCheckOrientationCondition1_Request>
    {
        public static readonly Ros2Dsr_msgs2SrvCheckOrientationCondition1_RequestCodec Instance = new Ros2Dsr_msgs2SrvCheckOrientationCondition1_RequestCodec();

        private Ros2Dsr_msgs2SrvCheckOrientationCondition1_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/CheckOrientationCondition1_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_b70860c0e9fe5ae7904923bbf2ad9077a5009ae37a644118d5b8f4dc3383c1ef";
        public const int MIN_WIRE_BYTES = 99, MAX_WIRE_BYTES = 99;

        public byte[] Encode(_Ros2Dsr_msgs2SrvCheckOrientationCondition1_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvCheckOrientationCondition1_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvCheckOrientationCondition1_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvCheckOrientationCondition1_Request value = ReadRos2Dsr_msgs2SrvCheckOrientationCondition1_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvCheckOrientationCondition1_Request(_Codecs.Writer writer,
                                                                                _Ros2Dsr_msgs2SrvCheckOrientationCondition1_Request value)
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

    private static _Ros2Dsr_msgs2SrvCheckOrientationCondition1_Request ReadRos2Dsr_msgs2SrvCheckOrientationCondition1_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvCheckOrientationCondition1_Request();
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

    public sealed class _Ros2Dsr_msgs2SrvCheckOrientationCondition1_Response
    {
        public bool @success = false;

        public _Ros2Dsr_msgs2SrvCheckOrientationCondition1_Response()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvCheckOrientationCondition1_ResponseCodec :
        global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvCheckOrientationCondition1_Response>
    {
        public static readonly Ros2Dsr_msgs2SrvCheckOrientationCondition1_ResponseCodec Instance =
            new Ros2Dsr_msgs2SrvCheckOrientationCondition1_ResponseCodec();

        private Ros2Dsr_msgs2SrvCheckOrientationCondition1_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/CheckOrientationCondition1_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_eff9abfb058f98ef8addce0c226a0c35bfc84f24d96b611cd151be384be24ee4";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros2Dsr_msgs2SrvCheckOrientationCondition1_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvCheckOrientationCondition1_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvCheckOrientationCondition1_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvCheckOrientationCondition1_Response value = ReadRos2Dsr_msgs2SrvCheckOrientationCondition1_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvCheckOrientationCondition1_Response(_Codecs.Writer writer,
                                                                                 _Ros2Dsr_msgs2SrvCheckOrientationCondition1_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros2Dsr_msgs2SrvCheckOrientationCondition1_Response ReadRos2Dsr_msgs2SrvCheckOrientationCondition1_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvCheckOrientationCondition1_Response();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvCheckOrientationCondition2_Request
    {
        public sbyte @axis = 0;
        public double @min = 0;
        public double @max = 0;
        public sbyte @ref = 0;
        public sbyte @mode = 0;
        public double[] @pos = new double[6];

        public _Ros2Dsr_msgs2SrvCheckOrientationCondition2_Request()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvCheckOrientationCondition2_RequestCodec :
        global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvCheckOrientationCondition2_Request>
    {
        public static readonly Ros2Dsr_msgs2SrvCheckOrientationCondition2_RequestCodec Instance = new Ros2Dsr_msgs2SrvCheckOrientationCondition2_RequestCodec();

        private Ros2Dsr_msgs2SrvCheckOrientationCondition2_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/CheckOrientationCondition2_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_af9ed5881dde0e06efb1c97e8c9571dd2de85b35188cbdcbed5a902ca30d5ddb";
        public const int MIN_WIRE_BYTES = 67, MAX_WIRE_BYTES = 67;

        public byte[] Encode(_Ros2Dsr_msgs2SrvCheckOrientationCondition2_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvCheckOrientationCondition2_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvCheckOrientationCondition2_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvCheckOrientationCondition2_Request value = ReadRos2Dsr_msgs2SrvCheckOrientationCondition2_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvCheckOrientationCondition2_Request(_Codecs.Writer writer,
                                                                                _Ros2Dsr_msgs2SrvCheckOrientationCondition2_Request value)
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

    private static _Ros2Dsr_msgs2SrvCheckOrientationCondition2_Request ReadRos2Dsr_msgs2SrvCheckOrientationCondition2_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvCheckOrientationCondition2_Request();
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

    public sealed class _Ros2Dsr_msgs2SrvCheckOrientationCondition2_Response
    {
        public bool @success = false;

        public _Ros2Dsr_msgs2SrvCheckOrientationCondition2_Response()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvCheckOrientationCondition2_ResponseCodec :
        global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvCheckOrientationCondition2_Response>
    {
        public static readonly Ros2Dsr_msgs2SrvCheckOrientationCondition2_ResponseCodec Instance =
            new Ros2Dsr_msgs2SrvCheckOrientationCondition2_ResponseCodec();

        private Ros2Dsr_msgs2SrvCheckOrientationCondition2_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/CheckOrientationCondition2_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_23b06042946d1e27459ce70b73d265a7fda95dc1bf688091c14b5330c76d6e90";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros2Dsr_msgs2SrvCheckOrientationCondition2_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvCheckOrientationCondition2_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvCheckOrientationCondition2_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvCheckOrientationCondition2_Response value = ReadRos2Dsr_msgs2SrvCheckOrientationCondition2_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvCheckOrientationCondition2_Response(_Codecs.Writer writer,
                                                                                 _Ros2Dsr_msgs2SrvCheckOrientationCondition2_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros2Dsr_msgs2SrvCheckOrientationCondition2_Response ReadRos2Dsr_msgs2SrvCheckOrientationCondition2_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvCheckOrientationCondition2_Response();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvCheckPositionCondition_Request
    {
        public sbyte @axis = 0;
        public double @min = 0;
        public double @max = 0;
        public sbyte @ref = 0;
        public sbyte @mode = 0;
        public double[] @pos = new double[6];

        public _Ros2Dsr_msgs2SrvCheckPositionCondition_Request()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvCheckPositionCondition_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvCheckPositionCondition_Request>
    {
        public static readonly Ros2Dsr_msgs2SrvCheckPositionCondition_RequestCodec Instance = new Ros2Dsr_msgs2SrvCheckPositionCondition_RequestCodec();

        private Ros2Dsr_msgs2SrvCheckPositionCondition_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/CheckPositionCondition_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_3844a1011d8c4dfcbe048e683d0b3c747ce2984c937c477c868b1d7d53a7b0cc";
        public const int MIN_WIRE_BYTES = 67, MAX_WIRE_BYTES = 67;

        public byte[] Encode(_Ros2Dsr_msgs2SrvCheckPositionCondition_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvCheckPositionCondition_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvCheckPositionCondition_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvCheckPositionCondition_Request value = ReadRos2Dsr_msgs2SrvCheckPositionCondition_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvCheckPositionCondition_Request(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvCheckPositionCondition_Request value)
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

    private static _Ros2Dsr_msgs2SrvCheckPositionCondition_Request ReadRos2Dsr_msgs2SrvCheckPositionCondition_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvCheckPositionCondition_Request();
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

    public sealed class _Ros2Dsr_msgs2SrvCheckPositionCondition_Response
    {
        public bool @success = false;

        public _Ros2Dsr_msgs2SrvCheckPositionCondition_Response()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvCheckPositionCondition_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvCheckPositionCondition_Response>
    {
        public static readonly Ros2Dsr_msgs2SrvCheckPositionCondition_ResponseCodec Instance = new Ros2Dsr_msgs2SrvCheckPositionCondition_ResponseCodec();

        private Ros2Dsr_msgs2SrvCheckPositionCondition_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/CheckPositionCondition_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_aeac1f373359103389fae072461c92f810252c8abf63f31522582b7724d33334";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros2Dsr_msgs2SrvCheckPositionCondition_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvCheckPositionCondition_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvCheckPositionCondition_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvCheckPositionCondition_Response value = ReadRos2Dsr_msgs2SrvCheckPositionCondition_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvCheckPositionCondition_Response(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvCheckPositionCondition_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros2Dsr_msgs2SrvCheckPositionCondition_Response ReadRos2Dsr_msgs2SrvCheckPositionCondition_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvCheckPositionCondition_Response();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvConfigCreateModbus_Request
    {
        public string @name = "";
        public string @ip = "";
        public int @port = 0;
        public sbyte @reg_type = 0;
        public sbyte @index = 0;
        public sbyte @value = 0;
        public int @slave_id = 0;

        public _Ros2Dsr_msgs2SrvConfigCreateModbus_Request()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvConfigCreateModbus_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvConfigCreateModbus_Request>
    {
        public static readonly Ros2Dsr_msgs2SrvConfigCreateModbus_RequestCodec Instance = new Ros2Dsr_msgs2SrvConfigCreateModbus_RequestCodec();

        private Ros2Dsr_msgs2SrvConfigCreateModbus_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/ConfigCreateModbus_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_fa23c864844a6d81712b1c28261505a4dfce7e679a25e621bf80cef0a75ff1f5";
        public const int MIN_WIRE_BYTES = 19, MAX_WIRE_BYTES = 531;

        public byte[] Encode(_Ros2Dsr_msgs2SrvConfigCreateModbus_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvConfigCreateModbus_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvConfigCreateModbus_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvConfigCreateModbus_Request value = ReadRos2Dsr_msgs2SrvConfigCreateModbus_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvConfigCreateModbus_Request(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvConfigCreateModbus_Request value)
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

    private static _Ros2Dsr_msgs2SrvConfigCreateModbus_Request ReadRos2Dsr_msgs2SrvConfigCreateModbus_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvConfigCreateModbus_Request();
        value.@name = ReadText(reader, 256);
        value.@ip = ReadText(reader, 256);
        value.@port = unchecked((int)reader.Unsigned(4));
        value.@reg_type = unchecked((sbyte)reader.Unsigned(1));
        value.@index = unchecked((sbyte)reader.Unsigned(1));
        value.@value = unchecked((sbyte)reader.Unsigned(1));
        value.@slave_id = unchecked((int)reader.Unsigned(4));
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvConfigCreateModbus_Response
    {
        public bool @success = false;

        public _Ros2Dsr_msgs2SrvConfigCreateModbus_Response()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvConfigCreateModbus_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvConfigCreateModbus_Response>
    {
        public static readonly Ros2Dsr_msgs2SrvConfigCreateModbus_ResponseCodec Instance = new Ros2Dsr_msgs2SrvConfigCreateModbus_ResponseCodec();

        private Ros2Dsr_msgs2SrvConfigCreateModbus_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/ConfigCreateModbus_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_e3316b3da7d0c79293173a37fe9830de831cf1d4152999f56f7f5f01ff63215c";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros2Dsr_msgs2SrvConfigCreateModbus_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvConfigCreateModbus_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvConfigCreateModbus_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvConfigCreateModbus_Response value = ReadRos2Dsr_msgs2SrvConfigCreateModbus_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvConfigCreateModbus_Response(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvConfigCreateModbus_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros2Dsr_msgs2SrvConfigCreateModbus_Response ReadRos2Dsr_msgs2SrvConfigCreateModbus_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvConfigCreateModbus_Response();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvConfigCreateTcp_Request
    {
        public string @name = "";
        public double[] @pos = new double[6];

        public _Ros2Dsr_msgs2SrvConfigCreateTcp_Request()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvConfigCreateTcp_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvConfigCreateTcp_Request>
    {
        public static readonly Ros2Dsr_msgs2SrvConfigCreateTcp_RequestCodec Instance = new Ros2Dsr_msgs2SrvConfigCreateTcp_RequestCodec();

        private Ros2Dsr_msgs2SrvConfigCreateTcp_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/ConfigCreateTcp_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_e45840cd5a1966ba8cf7a7bf660ab0a467132b03cd69f00fb62043afb9b30c49";
        public const int MIN_WIRE_BYTES = 52, MAX_WIRE_BYTES = 308;

        public byte[] Encode(_Ros2Dsr_msgs2SrvConfigCreateTcp_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvConfigCreateTcp_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvConfigCreateTcp_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvConfigCreateTcp_Request value = ReadRos2Dsr_msgs2SrvConfigCreateTcp_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvConfigCreateTcp_Request(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvConfigCreateTcp_Request value)
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

    private static _Ros2Dsr_msgs2SrvConfigCreateTcp_Request ReadRos2Dsr_msgs2SrvConfigCreateTcp_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvConfigCreateTcp_Request();
        value.@name = ReadText(reader, 256);
        value.@pos = new double[6];
        for(int index = 0; index < value.@pos.Length; ++index)
            value.@pos[index] = reader.Float64();
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvConfigCreateTcp_Response
    {
        public bool @success = false;

        public _Ros2Dsr_msgs2SrvConfigCreateTcp_Response()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvConfigCreateTcp_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvConfigCreateTcp_Response>
    {
        public static readonly Ros2Dsr_msgs2SrvConfigCreateTcp_ResponseCodec Instance = new Ros2Dsr_msgs2SrvConfigCreateTcp_ResponseCodec();

        private Ros2Dsr_msgs2SrvConfigCreateTcp_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/ConfigCreateTcp_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_3091184aefaedc2fb8fd9b4f3c87769e8f87ebba4f14623355ef09fce4932f3b";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros2Dsr_msgs2SrvConfigCreateTcp_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvConfigCreateTcp_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvConfigCreateTcp_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvConfigCreateTcp_Response value = ReadRos2Dsr_msgs2SrvConfigCreateTcp_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvConfigCreateTcp_Response(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvConfigCreateTcp_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros2Dsr_msgs2SrvConfigCreateTcp_Response ReadRos2Dsr_msgs2SrvConfigCreateTcp_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvConfigCreateTcp_Response();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvConfigCreateTool_Request
    {
        public string @name = "";
        public double @weight = 0;
        public double[] @cog = new double[3];
        public double[] @inertia = new double[6];

        public _Ros2Dsr_msgs2SrvConfigCreateTool_Request()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvConfigCreateTool_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvConfigCreateTool_Request>
    {
        public static readonly Ros2Dsr_msgs2SrvConfigCreateTool_RequestCodec Instance = new Ros2Dsr_msgs2SrvConfigCreateTool_RequestCodec();

        private Ros2Dsr_msgs2SrvConfigCreateTool_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/ConfigCreateTool_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_ca28549f6644d735882d0400c2635380dde1139d17c17818d49d023ec73566e2";
        public const int MIN_WIRE_BYTES = 84, MAX_WIRE_BYTES = 340;

        public byte[] Encode(_Ros2Dsr_msgs2SrvConfigCreateTool_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvConfigCreateTool_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvConfigCreateTool_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvConfigCreateTool_Request value = ReadRos2Dsr_msgs2SrvConfigCreateTool_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvConfigCreateTool_Request(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvConfigCreateTool_Request value)
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

    private static _Ros2Dsr_msgs2SrvConfigCreateTool_Request ReadRos2Dsr_msgs2SrvConfigCreateTool_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvConfigCreateTool_Request();
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

    public sealed class _Ros2Dsr_msgs2SrvConfigCreateTool_Response
    {
        public bool @success = false;

        public _Ros2Dsr_msgs2SrvConfigCreateTool_Response()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvConfigCreateTool_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvConfigCreateTool_Response>
    {
        public static readonly Ros2Dsr_msgs2SrvConfigCreateTool_ResponseCodec Instance = new Ros2Dsr_msgs2SrvConfigCreateTool_ResponseCodec();

        private Ros2Dsr_msgs2SrvConfigCreateTool_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/ConfigCreateTool_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_105629d8e968ac2511b73b3fe21ed9529b1dab9365d992281a02d72e1b4a90d0";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros2Dsr_msgs2SrvConfigCreateTool_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvConfigCreateTool_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvConfigCreateTool_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvConfigCreateTool_Response value = ReadRos2Dsr_msgs2SrvConfigCreateTool_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvConfigCreateTool_Response(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvConfigCreateTool_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros2Dsr_msgs2SrvConfigCreateTool_Response ReadRos2Dsr_msgs2SrvConfigCreateTool_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvConfigCreateTool_Response();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvConfigDeleteModbus_Request
    {
        public string @name = "";

        public _Ros2Dsr_msgs2SrvConfigDeleteModbus_Request()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvConfigDeleteModbus_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvConfigDeleteModbus_Request>
    {
        public static readonly Ros2Dsr_msgs2SrvConfigDeleteModbus_RequestCodec Instance = new Ros2Dsr_msgs2SrvConfigDeleteModbus_RequestCodec();

        private Ros2Dsr_msgs2SrvConfigDeleteModbus_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/ConfigDeleteModbus_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_f16519f6118316f20a9ab9e76dc37704e0d464632d31ed383a8bb55af6b25369";
        public const int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 260;

        public byte[] Encode(_Ros2Dsr_msgs2SrvConfigDeleteModbus_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvConfigDeleteModbus_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvConfigDeleteModbus_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvConfigDeleteModbus_Request value = ReadRos2Dsr_msgs2SrvConfigDeleteModbus_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvConfigDeleteModbus_Request(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvConfigDeleteModbus_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        string part0 = value.@name;
        WriteText(writer, part0, 256);
    }

    private static _Ros2Dsr_msgs2SrvConfigDeleteModbus_Request ReadRos2Dsr_msgs2SrvConfigDeleteModbus_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvConfigDeleteModbus_Request();
        value.@name = ReadText(reader, 256);
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvConfigDeleteModbus_Response
    {
        public bool @success = false;

        public _Ros2Dsr_msgs2SrvConfigDeleteModbus_Response()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvConfigDeleteModbus_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvConfigDeleteModbus_Response>
    {
        public static readonly Ros2Dsr_msgs2SrvConfigDeleteModbus_ResponseCodec Instance = new Ros2Dsr_msgs2SrvConfigDeleteModbus_ResponseCodec();

        private Ros2Dsr_msgs2SrvConfigDeleteModbus_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/ConfigDeleteModbus_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_a0a28657707c302b7dbb87039a36951cc97a5335cb473523002884453125829f";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros2Dsr_msgs2SrvConfigDeleteModbus_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvConfigDeleteModbus_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvConfigDeleteModbus_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvConfigDeleteModbus_Response value = ReadRos2Dsr_msgs2SrvConfigDeleteModbus_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvConfigDeleteModbus_Response(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvConfigDeleteModbus_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros2Dsr_msgs2SrvConfigDeleteModbus_Response ReadRos2Dsr_msgs2SrvConfigDeleteModbus_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvConfigDeleteModbus_Response();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvConfigDeleteTcp_Request
    {
        public string @name = "";

        public _Ros2Dsr_msgs2SrvConfigDeleteTcp_Request()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvConfigDeleteTcp_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvConfigDeleteTcp_Request>
    {
        public static readonly Ros2Dsr_msgs2SrvConfigDeleteTcp_RequestCodec Instance = new Ros2Dsr_msgs2SrvConfigDeleteTcp_RequestCodec();

        private Ros2Dsr_msgs2SrvConfigDeleteTcp_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/ConfigDeleteTcp_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_a865fbd071a0e1717d54ab3523a5dd637f22745724ed41483991c2f58aa85abf";
        public const int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 260;

        public byte[] Encode(_Ros2Dsr_msgs2SrvConfigDeleteTcp_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvConfigDeleteTcp_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvConfigDeleteTcp_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvConfigDeleteTcp_Request value = ReadRos2Dsr_msgs2SrvConfigDeleteTcp_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvConfigDeleteTcp_Request(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvConfigDeleteTcp_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        string part0 = value.@name;
        WriteText(writer, part0, 256);
    }

    private static _Ros2Dsr_msgs2SrvConfigDeleteTcp_Request ReadRos2Dsr_msgs2SrvConfigDeleteTcp_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvConfigDeleteTcp_Request();
        value.@name = ReadText(reader, 256);
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvConfigDeleteTcp_Response
    {
        public bool @success = false;

        public _Ros2Dsr_msgs2SrvConfigDeleteTcp_Response()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvConfigDeleteTcp_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvConfigDeleteTcp_Response>
    {
        public static readonly Ros2Dsr_msgs2SrvConfigDeleteTcp_ResponseCodec Instance = new Ros2Dsr_msgs2SrvConfigDeleteTcp_ResponseCodec();

        private Ros2Dsr_msgs2SrvConfigDeleteTcp_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/ConfigDeleteTcp_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_c8285c592d6839812e366d8271a9020f2e6213f7d3194896306f55bf69bb83d2";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros2Dsr_msgs2SrvConfigDeleteTcp_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvConfigDeleteTcp_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvConfigDeleteTcp_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvConfigDeleteTcp_Response value = ReadRos2Dsr_msgs2SrvConfigDeleteTcp_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvConfigDeleteTcp_Response(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvConfigDeleteTcp_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros2Dsr_msgs2SrvConfigDeleteTcp_Response ReadRos2Dsr_msgs2SrvConfigDeleteTcp_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvConfigDeleteTcp_Response();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvConfigDeleteTool_Request
    {
        public string @name = "";

        public _Ros2Dsr_msgs2SrvConfigDeleteTool_Request()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvConfigDeleteTool_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvConfigDeleteTool_Request>
    {
        public static readonly Ros2Dsr_msgs2SrvConfigDeleteTool_RequestCodec Instance = new Ros2Dsr_msgs2SrvConfigDeleteTool_RequestCodec();

        private Ros2Dsr_msgs2SrvConfigDeleteTool_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/ConfigDeleteTool_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_7d6b749f7151dfc84e52fc39f3a32c88d5570efb2fb721c234c2d91405d9a37b";
        public const int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 260;

        public byte[] Encode(_Ros2Dsr_msgs2SrvConfigDeleteTool_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvConfigDeleteTool_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvConfigDeleteTool_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvConfigDeleteTool_Request value = ReadRos2Dsr_msgs2SrvConfigDeleteTool_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvConfigDeleteTool_Request(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvConfigDeleteTool_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        string part0 = value.@name;
        WriteText(writer, part0, 256);
    }

    private static _Ros2Dsr_msgs2SrvConfigDeleteTool_Request ReadRos2Dsr_msgs2SrvConfigDeleteTool_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvConfigDeleteTool_Request();
        value.@name = ReadText(reader, 256);
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvConfigDeleteTool_Response
    {
        public bool @success = false;

        public _Ros2Dsr_msgs2SrvConfigDeleteTool_Response()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvConfigDeleteTool_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvConfigDeleteTool_Response>
    {
        public static readonly Ros2Dsr_msgs2SrvConfigDeleteTool_ResponseCodec Instance = new Ros2Dsr_msgs2SrvConfigDeleteTool_ResponseCodec();

        private Ros2Dsr_msgs2SrvConfigDeleteTool_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/ConfigDeleteTool_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_2618f58ba0b4e9f585b2635de087a5d203b019e3732ab579e94fcb44e2ee9a6e";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros2Dsr_msgs2SrvConfigDeleteTool_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvConfigDeleteTool_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvConfigDeleteTool_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvConfigDeleteTool_Response value = ReadRos2Dsr_msgs2SrvConfigDeleteTool_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvConfigDeleteTool_Response(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvConfigDeleteTool_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros2Dsr_msgs2SrvConfigDeleteTool_Response ReadRos2Dsr_msgs2SrvConfigDeleteTool_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvConfigDeleteTool_Response();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvConnectRtControl_Request
    {
        public string @ip_address = "";
        public uint @port = 0;

        public _Ros2Dsr_msgs2SrvConnectRtControl_Request()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvConnectRtControl_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvConnectRtControl_Request>
    {
        public static readonly Ros2Dsr_msgs2SrvConnectRtControl_RequestCodec Instance = new Ros2Dsr_msgs2SrvConnectRtControl_RequestCodec();

        private Ros2Dsr_msgs2SrvConnectRtControl_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/ConnectRtControl_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_a207438503e0a6769dbdc07c87487b0435066ba9773c19f2874241c8c1b4d761";
        public const int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 264;

        public byte[] Encode(_Ros2Dsr_msgs2SrvConnectRtControl_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvConnectRtControl_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvConnectRtControl_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvConnectRtControl_Request value = ReadRos2Dsr_msgs2SrvConnectRtControl_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvConnectRtControl_Request(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvConnectRtControl_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        string part0 = value.@ip_address;
        WriteText(writer, part0, 256);
        uint part1 = value.@port;
        writer.Unsigned(part1, 4);
    }

    private static _Ros2Dsr_msgs2SrvConnectRtControl_Request ReadRos2Dsr_msgs2SrvConnectRtControl_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvConnectRtControl_Request();
        value.@ip_address = ReadText(reader, 256);
        value.@port = unchecked((uint)reader.Unsigned(4));
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvConnectRtControl_Response
    {
        public bool @success = false;

        public _Ros2Dsr_msgs2SrvConnectRtControl_Response()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvConnectRtControl_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvConnectRtControl_Response>
    {
        public static readonly Ros2Dsr_msgs2SrvConnectRtControl_ResponseCodec Instance = new Ros2Dsr_msgs2SrvConnectRtControl_ResponseCodec();

        private Ros2Dsr_msgs2SrvConnectRtControl_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/ConnectRtControl_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_6a7cce9aae60cdadc75425b22f7a8b429b95bc607e969605ab477c2eb1461815";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros2Dsr_msgs2SrvConnectRtControl_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvConnectRtControl_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvConnectRtControl_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvConnectRtControl_Response value = ReadRos2Dsr_msgs2SrvConnectRtControl_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvConnectRtControl_Response(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvConnectRtControl_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros2Dsr_msgs2SrvConnectRtControl_Response ReadRos2Dsr_msgs2SrvConnectRtControl_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvConnectRtControl_Response();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvCoordTransform_Request
    {
        public double[] @pos_in = new double[6];
        public sbyte @ref_in = 0;
        public sbyte @ref_out = 0;

        public _Ros2Dsr_msgs2SrvCoordTransform_Request()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvCoordTransform_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvCoordTransform_Request>
    {
        public static readonly Ros2Dsr_msgs2SrvCoordTransform_RequestCodec Instance = new Ros2Dsr_msgs2SrvCoordTransform_RequestCodec();

        private Ros2Dsr_msgs2SrvCoordTransform_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/CoordTransform_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_a3996948d541acf82a920927a76293455965c48d4a2f1c3307854193104b2223";
        public const int MIN_WIRE_BYTES = 50, MAX_WIRE_BYTES = 50;

        public byte[] Encode(_Ros2Dsr_msgs2SrvCoordTransform_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvCoordTransform_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvCoordTransform_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvCoordTransform_Request value = ReadRos2Dsr_msgs2SrvCoordTransform_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvCoordTransform_Request(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvCoordTransform_Request value)
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

    private static _Ros2Dsr_msgs2SrvCoordTransform_Request ReadRos2Dsr_msgs2SrvCoordTransform_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvCoordTransform_Request();
        value.@pos_in = new double[6];
        for(int index = 0; index < value.@pos_in.Length; ++index)
            value.@pos_in[index] = reader.Float64();
        value.@ref_in = unchecked((sbyte)reader.Unsigned(1));
        value.@ref_out = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvCoordTransform_Response
    {
        public double[] @conv_posx = new double[6];
        public bool @success = false;

        public _Ros2Dsr_msgs2SrvCoordTransform_Response()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvCoordTransform_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvCoordTransform_Response>
    {
        public static readonly Ros2Dsr_msgs2SrvCoordTransform_ResponseCodec Instance = new Ros2Dsr_msgs2SrvCoordTransform_ResponseCodec();

        private Ros2Dsr_msgs2SrvCoordTransform_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/CoordTransform_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_8ab16c946ef4cce7da6ccb8b0d3b4940195d0b29841007de569d1ea503b6cc72";
        public const int MIN_WIRE_BYTES = 49, MAX_WIRE_BYTES = 49;

        public byte[] Encode(_Ros2Dsr_msgs2SrvCoordTransform_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvCoordTransform_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvCoordTransform_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvCoordTransform_Response value = ReadRos2Dsr_msgs2SrvCoordTransform_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvCoordTransform_Response(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvCoordTransform_Response value)
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

    private static _Ros2Dsr_msgs2SrvCoordTransform_Response ReadRos2Dsr_msgs2SrvCoordTransform_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvCoordTransform_Response();
        value.@conv_posx = new double[6];
        for(int index = 0; index < value.@conv_posx.Length; ++index)
            value.@conv_posx[index] = reader.Float64();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvDisableAlterMotion_Request
    {
        public _Ros2Dsr_msgs2SrvDisableAlterMotion_Request()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvDisableAlterMotion_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvDisableAlterMotion_Request>
    {
        public static readonly Ros2Dsr_msgs2SrvDisableAlterMotion_RequestCodec Instance = new Ros2Dsr_msgs2SrvDisableAlterMotion_RequestCodec();

        private Ros2Dsr_msgs2SrvDisableAlterMotion_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/DisableAlterMotion_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_dc5d3ed630e183152040506dfe7dd28e5ff236a79ac75ec2d48d824446e97152";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public byte[] Encode(_Ros2Dsr_msgs2SrvDisableAlterMotion_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvDisableAlterMotion_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvDisableAlterMotion_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvDisableAlterMotion_Request value = ReadRos2Dsr_msgs2SrvDisableAlterMotion_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvDisableAlterMotion_Request(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvDisableAlterMotion_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    private static _Ros2Dsr_msgs2SrvDisableAlterMotion_Request ReadRos2Dsr_msgs2SrvDisableAlterMotion_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvDisableAlterMotion_Request();
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvDisableAlterMotion_Response
    {
        public bool @success = false;

        public _Ros2Dsr_msgs2SrvDisableAlterMotion_Response()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvDisableAlterMotion_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvDisableAlterMotion_Response>
    {
        public static readonly Ros2Dsr_msgs2SrvDisableAlterMotion_ResponseCodec Instance = new Ros2Dsr_msgs2SrvDisableAlterMotion_ResponseCodec();

        private Ros2Dsr_msgs2SrvDisableAlterMotion_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/DisableAlterMotion_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_1bc0f75aa3e09ead2882ae862e0af520dd291c5d9f96414f98fa4a07f48a16e5";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros2Dsr_msgs2SrvDisableAlterMotion_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvDisableAlterMotion_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvDisableAlterMotion_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvDisableAlterMotion_Response value = ReadRos2Dsr_msgs2SrvDisableAlterMotion_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvDisableAlterMotion_Response(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvDisableAlterMotion_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros2Dsr_msgs2SrvDisableAlterMotion_Response ReadRos2Dsr_msgs2SrvDisableAlterMotion_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvDisableAlterMotion_Response();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvDisconnectRtControl_Request
    {
        public _Ros2Dsr_msgs2SrvDisconnectRtControl_Request()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvDisconnectRtControl_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvDisconnectRtControl_Request>
    {
        public static readonly Ros2Dsr_msgs2SrvDisconnectRtControl_RequestCodec Instance = new Ros2Dsr_msgs2SrvDisconnectRtControl_RequestCodec();

        private Ros2Dsr_msgs2SrvDisconnectRtControl_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/DisconnectRtControl_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_7745a5c8acbb39607c2eb275e9257608d928fb98a7a5a72c0a64d03980ba5524";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public byte[] Encode(_Ros2Dsr_msgs2SrvDisconnectRtControl_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvDisconnectRtControl_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvDisconnectRtControl_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvDisconnectRtControl_Request value = ReadRos2Dsr_msgs2SrvDisconnectRtControl_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvDisconnectRtControl_Request(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvDisconnectRtControl_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    private static _Ros2Dsr_msgs2SrvDisconnectRtControl_Request ReadRos2Dsr_msgs2SrvDisconnectRtControl_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvDisconnectRtControl_Request();
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvDisconnectRtControl_Response
    {
        public bool @success = false;

        public _Ros2Dsr_msgs2SrvDisconnectRtControl_Response()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvDisconnectRtControl_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvDisconnectRtControl_Response>
    {
        public static readonly Ros2Dsr_msgs2SrvDisconnectRtControl_ResponseCodec Instance = new Ros2Dsr_msgs2SrvDisconnectRtControl_ResponseCodec();

        private Ros2Dsr_msgs2SrvDisconnectRtControl_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/DisconnectRtControl_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_e57ab63199570ab8d114a9f778cb307cedf0775f6ce96ae1edeade39f9a259a5";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros2Dsr_msgs2SrvDisconnectRtControl_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvDisconnectRtControl_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvDisconnectRtControl_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvDisconnectRtControl_Response value = ReadRos2Dsr_msgs2SrvDisconnectRtControl_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvDisconnectRtControl_Response(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvDisconnectRtControl_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros2Dsr_msgs2SrvDisconnectRtControl_Response ReadRos2Dsr_msgs2SrvDisconnectRtControl_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvDisconnectRtControl_Response();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvDrlPause_Request
    {
        public _Ros2Dsr_msgs2SrvDrlPause_Request()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvDrlPause_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvDrlPause_Request>
    {
        public static readonly Ros2Dsr_msgs2SrvDrlPause_RequestCodec Instance = new Ros2Dsr_msgs2SrvDrlPause_RequestCodec();

        private Ros2Dsr_msgs2SrvDrlPause_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/DrlPause_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_d3a522d19d07bf80ce8b3722d43c382b8d55693b9364d995f968b952335d35a6";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public byte[] Encode(_Ros2Dsr_msgs2SrvDrlPause_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvDrlPause_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvDrlPause_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvDrlPause_Request value = ReadRos2Dsr_msgs2SrvDrlPause_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvDrlPause_Request(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvDrlPause_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    private static _Ros2Dsr_msgs2SrvDrlPause_Request ReadRos2Dsr_msgs2SrvDrlPause_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvDrlPause_Request();
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvDrlPause_Response
    {
        public bool @success = false;

        public _Ros2Dsr_msgs2SrvDrlPause_Response()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvDrlPause_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvDrlPause_Response>
    {
        public static readonly Ros2Dsr_msgs2SrvDrlPause_ResponseCodec Instance = new Ros2Dsr_msgs2SrvDrlPause_ResponseCodec();

        private Ros2Dsr_msgs2SrvDrlPause_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/DrlPause_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_43cc42f101181691ed6046767d35f623fd8c3b7ca2fff5244a2b832cd1906ab7";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros2Dsr_msgs2SrvDrlPause_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvDrlPause_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvDrlPause_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvDrlPause_Response value = ReadRos2Dsr_msgs2SrvDrlPause_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvDrlPause_Response(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvDrlPause_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros2Dsr_msgs2SrvDrlPause_Response ReadRos2Dsr_msgs2SrvDrlPause_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvDrlPause_Response();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvDrlResume_Request
    {
        public _Ros2Dsr_msgs2SrvDrlResume_Request()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvDrlResume_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvDrlResume_Request>
    {
        public static readonly Ros2Dsr_msgs2SrvDrlResume_RequestCodec Instance = new Ros2Dsr_msgs2SrvDrlResume_RequestCodec();

        private Ros2Dsr_msgs2SrvDrlResume_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/DrlResume_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_19bfb89dfedd6470fd3e2054556e20cdd15f430c93a563557d6240c81243eb05";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public byte[] Encode(_Ros2Dsr_msgs2SrvDrlResume_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvDrlResume_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvDrlResume_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvDrlResume_Request value = ReadRos2Dsr_msgs2SrvDrlResume_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvDrlResume_Request(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvDrlResume_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    private static _Ros2Dsr_msgs2SrvDrlResume_Request ReadRos2Dsr_msgs2SrvDrlResume_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvDrlResume_Request();
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvDrlResume_Response
    {
        public bool @success = false;

        public _Ros2Dsr_msgs2SrvDrlResume_Response()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvDrlResume_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvDrlResume_Response>
    {
        public static readonly Ros2Dsr_msgs2SrvDrlResume_ResponseCodec Instance = new Ros2Dsr_msgs2SrvDrlResume_ResponseCodec();

        private Ros2Dsr_msgs2SrvDrlResume_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/DrlResume_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_a0447aaaaab43fe0287ff4aa85cc6d182320a036cf49f75e6552b9cf997de5ca";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros2Dsr_msgs2SrvDrlResume_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvDrlResume_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvDrlResume_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvDrlResume_Response value = ReadRos2Dsr_msgs2SrvDrlResume_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvDrlResume_Response(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvDrlResume_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros2Dsr_msgs2SrvDrlResume_Response ReadRos2Dsr_msgs2SrvDrlResume_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvDrlResume_Response();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvDrlStart_Request
    {
        public sbyte @robot_system = 0;
        public string @code = "";

        public _Ros2Dsr_msgs2SrvDrlStart_Request()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvDrlStart_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvDrlStart_Request>
    {
        public static readonly Ros2Dsr_msgs2SrvDrlStart_RequestCodec Instance = new Ros2Dsr_msgs2SrvDrlStart_RequestCodec();

        private Ros2Dsr_msgs2SrvDrlStart_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/DrlStart_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_0bcd9b44a5bc387dd9fa6257a42d2cbdc0c0d5cc373e56abd50345520304395d";
        public const int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 261;

        public byte[] Encode(_Ros2Dsr_msgs2SrvDrlStart_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvDrlStart_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvDrlStart_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvDrlStart_Request value = ReadRos2Dsr_msgs2SrvDrlStart_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvDrlStart_Request(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvDrlStart_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        sbyte part0 = value.@robot_system;
        writer.Unsigned(unchecked((byte)part0), 1);
        string part1 = value.@code;
        WriteText(writer, part1, 256);
    }

    private static _Ros2Dsr_msgs2SrvDrlStart_Request ReadRos2Dsr_msgs2SrvDrlStart_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvDrlStart_Request();
        value.@robot_system = unchecked((sbyte)reader.Unsigned(1));
        value.@code = ReadText(reader, 256);
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvDrlStart_Response
    {
        public bool @success = false;

        public _Ros2Dsr_msgs2SrvDrlStart_Response()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvDrlStart_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvDrlStart_Response>
    {
        public static readonly Ros2Dsr_msgs2SrvDrlStart_ResponseCodec Instance = new Ros2Dsr_msgs2SrvDrlStart_ResponseCodec();

        private Ros2Dsr_msgs2SrvDrlStart_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/DrlStart_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_c693ddb4d3cb430442fd669f4506d751a58c2f6aacd84b5f547bb498140f306f";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros2Dsr_msgs2SrvDrlStart_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvDrlStart_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvDrlStart_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvDrlStart_Response value = ReadRos2Dsr_msgs2SrvDrlStart_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvDrlStart_Response(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvDrlStart_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros2Dsr_msgs2SrvDrlStart_Response ReadRos2Dsr_msgs2SrvDrlStart_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvDrlStart_Response();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvDrlStop_Request
    {
        public sbyte @stop_mode = 0;

        public _Ros2Dsr_msgs2SrvDrlStop_Request()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvDrlStop_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvDrlStop_Request>
    {
        public static readonly Ros2Dsr_msgs2SrvDrlStop_RequestCodec Instance = new Ros2Dsr_msgs2SrvDrlStop_RequestCodec();

        private Ros2Dsr_msgs2SrvDrlStop_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/DrlStop_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_a0b7682dc86c427b9b16a40a6d4e358bb3be307190bd02ae41d9e88af40ec6cd";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros2Dsr_msgs2SrvDrlStop_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvDrlStop_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvDrlStop_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvDrlStop_Request value = ReadRos2Dsr_msgs2SrvDrlStop_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvDrlStop_Request(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvDrlStop_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        sbyte part0 = value.@stop_mode;
        writer.Unsigned(unchecked((byte)part0), 1);
    }

    private static _Ros2Dsr_msgs2SrvDrlStop_Request ReadRos2Dsr_msgs2SrvDrlStop_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvDrlStop_Request();
        value.@stop_mode = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvDrlStop_Response
    {
        public bool @success = false;

        public _Ros2Dsr_msgs2SrvDrlStop_Response()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvDrlStop_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvDrlStop_Response>
    {
        public static readonly Ros2Dsr_msgs2SrvDrlStop_ResponseCodec Instance = new Ros2Dsr_msgs2SrvDrlStop_ResponseCodec();

        private Ros2Dsr_msgs2SrvDrlStop_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/DrlStop_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_156eed5dd85047a2830dcfdeba5327f1836606bda78d45f379f6ec0542ff1c24";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros2Dsr_msgs2SrvDrlStop_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvDrlStop_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvDrlStop_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvDrlStop_Response value = ReadRos2Dsr_msgs2SrvDrlStop_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvDrlStop_Response(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvDrlStop_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros2Dsr_msgs2SrvDrlStop_Response ReadRos2Dsr_msgs2SrvDrlStop_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvDrlStop_Response();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvEnableAlterMotion_Request
    {
        public int @n = 0;
        public sbyte @mode = 0;
        public sbyte @ref = 0;
        public double[] @limit_dpos = new double[2];
        public double[] @limit_dpos_per = new double[2];

        public _Ros2Dsr_msgs2SrvEnableAlterMotion_Request()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvEnableAlterMotion_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvEnableAlterMotion_Request>
    {
        public static readonly Ros2Dsr_msgs2SrvEnableAlterMotion_RequestCodec Instance = new Ros2Dsr_msgs2SrvEnableAlterMotion_RequestCodec();

        private Ros2Dsr_msgs2SrvEnableAlterMotion_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/EnableAlterMotion_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_7615d1d9c40d8a6aed080f6185b80a7c6124db6aa979d7f670e81019c7633ffc";
        public const int MIN_WIRE_BYTES = 38, MAX_WIRE_BYTES = 38;

        public byte[] Encode(_Ros2Dsr_msgs2SrvEnableAlterMotion_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvEnableAlterMotion_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvEnableAlterMotion_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvEnableAlterMotion_Request value = ReadRos2Dsr_msgs2SrvEnableAlterMotion_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvEnableAlterMotion_Request(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvEnableAlterMotion_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        int part0 = value.@n;
        writer.Unsigned(unchecked((uint)part0), 4);
        sbyte part1 = value.@mode;
        writer.Unsigned(unchecked((byte)part1), 1);
        sbyte part2 = value.@ref;
        writer.Unsigned(unchecked((byte)part2), 1);
        double[] part3 = value.@limit_dpos;
        if(part3 == null || part3.Length != 2)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part3.Length; ++index)
        {
            double element = part3[index];
            writer.Float64(element);
        }
        double[] part4 = value.@limit_dpos_per;
        if(part4 == null || part4.Length != 2)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part4.Length; ++index)
        {
            double element = part4[index];
            writer.Float64(element);
        }
    }

    private static _Ros2Dsr_msgs2SrvEnableAlterMotion_Request ReadRos2Dsr_msgs2SrvEnableAlterMotion_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvEnableAlterMotion_Request();
        value.@n = unchecked((int)reader.Unsigned(4));
        value.@mode = unchecked((sbyte)reader.Unsigned(1));
        value.@ref = unchecked((sbyte)reader.Unsigned(1));
        value.@limit_dpos = new double[2];
        for(int index = 0; index < value.@limit_dpos.Length; ++index)
            value.@limit_dpos[index] = reader.Float64();
        value.@limit_dpos_per = new double[2];
        for(int index = 0; index < value.@limit_dpos_per.Length; ++index)
            value.@limit_dpos_per[index] = reader.Float64();
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvEnableAlterMotion_Response
    {
        public bool @success = false;

        public _Ros2Dsr_msgs2SrvEnableAlterMotion_Response()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvEnableAlterMotion_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvEnableAlterMotion_Response>
    {
        public static readonly Ros2Dsr_msgs2SrvEnableAlterMotion_ResponseCodec Instance = new Ros2Dsr_msgs2SrvEnableAlterMotion_ResponseCodec();

        private Ros2Dsr_msgs2SrvEnableAlterMotion_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/EnableAlterMotion_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_5378b5727bd63d42483a26d7bf5df1aaad836ed6d0456806c7d6cb1f851e8f7f";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros2Dsr_msgs2SrvEnableAlterMotion_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvEnableAlterMotion_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvEnableAlterMotion_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvEnableAlterMotion_Response value = ReadRos2Dsr_msgs2SrvEnableAlterMotion_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvEnableAlterMotion_Response(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvEnableAlterMotion_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros2Dsr_msgs2SrvEnableAlterMotion_Response ReadRos2Dsr_msgs2SrvEnableAlterMotion_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvEnableAlterMotion_Response();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvFkin_Request
    {
        public double[] @pos = new double[6];
        public sbyte @ref = 0;

        public _Ros2Dsr_msgs2SrvFkin_Request()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvFkin_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvFkin_Request>
    {
        public static readonly Ros2Dsr_msgs2SrvFkin_RequestCodec Instance = new Ros2Dsr_msgs2SrvFkin_RequestCodec();

        private Ros2Dsr_msgs2SrvFkin_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/Fkin_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_f068464c2b4970811378456c7d036a2697c43d38736447fbbdbf4b1fafe2625f";
        public const int MIN_WIRE_BYTES = 49, MAX_WIRE_BYTES = 49;

        public byte[] Encode(_Ros2Dsr_msgs2SrvFkin_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvFkin_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvFkin_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvFkin_Request value = ReadRos2Dsr_msgs2SrvFkin_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvFkin_Request(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvFkin_Request value)
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

    private static _Ros2Dsr_msgs2SrvFkin_Request ReadRos2Dsr_msgs2SrvFkin_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvFkin_Request();
        value.@pos = new double[6];
        for(int index = 0; index < value.@pos.Length; ++index)
            value.@pos[index] = reader.Float64();
        value.@ref = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvFkin_Response
    {
        public double[] @conv_posx = new double[6];
        public bool @success = false;

        public _Ros2Dsr_msgs2SrvFkin_Response()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvFkin_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvFkin_Response>
    {
        public static readonly Ros2Dsr_msgs2SrvFkin_ResponseCodec Instance = new Ros2Dsr_msgs2SrvFkin_ResponseCodec();

        private Ros2Dsr_msgs2SrvFkin_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/Fkin_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_b373f093b247590ca30d22f0cc8bd5104267b03ac14301795a5aa8796b5e7d1b";
        public const int MIN_WIRE_BYTES = 49, MAX_WIRE_BYTES = 49;

        public byte[] Encode(_Ros2Dsr_msgs2SrvFkin_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvFkin_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvFkin_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvFkin_Response value = ReadRos2Dsr_msgs2SrvFkin_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvFkin_Response(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvFkin_Response value)
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

    private static _Ros2Dsr_msgs2SrvFkin_Response ReadRos2Dsr_msgs2SrvFkin_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvFkin_Response();
        value.@conv_posx = new double[6];
        for(int index = 0; index < value.@conv_posx.Length; ++index)
            value.@conv_posx[index] = reader.Float64();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvGetControlMode_Request
    {
        public _Ros2Dsr_msgs2SrvGetControlMode_Request()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvGetControlMode_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvGetControlMode_Request>
    {
        public static readonly Ros2Dsr_msgs2SrvGetControlMode_RequestCodec Instance = new Ros2Dsr_msgs2SrvGetControlMode_RequestCodec();

        private Ros2Dsr_msgs2SrvGetControlMode_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/GetControlMode_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_d80c98c4bc5b2426b9842f3dc9e9d282449cffd222efaacdc23a09205c3c69ea";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public byte[] Encode(_Ros2Dsr_msgs2SrvGetControlMode_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvGetControlMode_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvGetControlMode_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvGetControlMode_Request value = ReadRos2Dsr_msgs2SrvGetControlMode_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvGetControlMode_Request(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvGetControlMode_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    private static _Ros2Dsr_msgs2SrvGetControlMode_Request ReadRos2Dsr_msgs2SrvGetControlMode_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvGetControlMode_Request();
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvGetControlMode_Response
    {
        public sbyte @control_mode = 0;
        public bool @success = false;

        public _Ros2Dsr_msgs2SrvGetControlMode_Response()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvGetControlMode_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvGetControlMode_Response>
    {
        public static readonly Ros2Dsr_msgs2SrvGetControlMode_ResponseCodec Instance = new Ros2Dsr_msgs2SrvGetControlMode_ResponseCodec();

        private Ros2Dsr_msgs2SrvGetControlMode_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/GetControlMode_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_56a3a864dffea1761165081f90a8303246177905522e84e0f30a12526117e824";
        public const int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;

        public byte[] Encode(_Ros2Dsr_msgs2SrvGetControlMode_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvGetControlMode_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvGetControlMode_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvGetControlMode_Response value = ReadRos2Dsr_msgs2SrvGetControlMode_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvGetControlMode_Response(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvGetControlMode_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        sbyte part0 = value.@control_mode;
        writer.Unsigned(unchecked((byte)part0), 1);
        bool part1 = value.@success;
        writer.Unsigned(part1 ? 1UL : 0UL, 1);
    }

    private static _Ros2Dsr_msgs2SrvGetControlMode_Response ReadRos2Dsr_msgs2SrvGetControlMode_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvGetControlMode_Response();
        value.@control_mode = unchecked((sbyte)reader.Unsigned(1));
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvGetControlSpace_Request
    {
        public _Ros2Dsr_msgs2SrvGetControlSpace_Request()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvGetControlSpace_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvGetControlSpace_Request>
    {
        public static readonly Ros2Dsr_msgs2SrvGetControlSpace_RequestCodec Instance = new Ros2Dsr_msgs2SrvGetControlSpace_RequestCodec();

        private Ros2Dsr_msgs2SrvGetControlSpace_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/GetControlSpace_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_ea6654e3794c2b36c3d10311e407b6d4e12bca59b9a9b763880917e762e6dfaa";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public byte[] Encode(_Ros2Dsr_msgs2SrvGetControlSpace_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvGetControlSpace_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvGetControlSpace_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvGetControlSpace_Request value = ReadRos2Dsr_msgs2SrvGetControlSpace_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvGetControlSpace_Request(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvGetControlSpace_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    private static _Ros2Dsr_msgs2SrvGetControlSpace_Request ReadRos2Dsr_msgs2SrvGetControlSpace_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvGetControlSpace_Request();
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvGetControlSpace_Response
    {
        public sbyte @space = 0;
        public bool @success = false;

        public _Ros2Dsr_msgs2SrvGetControlSpace_Response()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvGetControlSpace_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvGetControlSpace_Response>
    {
        public static readonly Ros2Dsr_msgs2SrvGetControlSpace_ResponseCodec Instance = new Ros2Dsr_msgs2SrvGetControlSpace_ResponseCodec();

        private Ros2Dsr_msgs2SrvGetControlSpace_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/GetControlSpace_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_546ae346425d48252237f4b3f129145e5190dda43e29bf4080bc17a489deef41";
        public const int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;

        public byte[] Encode(_Ros2Dsr_msgs2SrvGetControlSpace_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvGetControlSpace_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvGetControlSpace_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvGetControlSpace_Response value = ReadRos2Dsr_msgs2SrvGetControlSpace_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvGetControlSpace_Response(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvGetControlSpace_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        sbyte part0 = value.@space;
        writer.Unsigned(unchecked((byte)part0), 1);
        bool part1 = value.@success;
        writer.Unsigned(part1 ? 1UL : 0UL, 1);
    }

    private static _Ros2Dsr_msgs2SrvGetControlSpace_Response ReadRos2Dsr_msgs2SrvGetControlSpace_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvGetControlSpace_Response();
        value.@space = unchecked((sbyte)reader.Unsigned(1));
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvGetCtrlBoxAnalogInput_Request
    {
        public sbyte @channel = 0;

        public _Ros2Dsr_msgs2SrvGetCtrlBoxAnalogInput_Request()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvGetCtrlBoxAnalogInput_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvGetCtrlBoxAnalogInput_Request>
    {
        public static readonly Ros2Dsr_msgs2SrvGetCtrlBoxAnalogInput_RequestCodec Instance = new Ros2Dsr_msgs2SrvGetCtrlBoxAnalogInput_RequestCodec();

        private Ros2Dsr_msgs2SrvGetCtrlBoxAnalogInput_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/GetCtrlBoxAnalogInput_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_08335af395bc5602dfc0ed599a45d1a0e315a404729bc430fcf1e2c8f7b815e7";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros2Dsr_msgs2SrvGetCtrlBoxAnalogInput_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvGetCtrlBoxAnalogInput_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvGetCtrlBoxAnalogInput_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvGetCtrlBoxAnalogInput_Request value = ReadRos2Dsr_msgs2SrvGetCtrlBoxAnalogInput_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvGetCtrlBoxAnalogInput_Request(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvGetCtrlBoxAnalogInput_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        sbyte part0 = value.@channel;
        writer.Unsigned(unchecked((byte)part0), 1);
    }

    private static _Ros2Dsr_msgs2SrvGetCtrlBoxAnalogInput_Request ReadRos2Dsr_msgs2SrvGetCtrlBoxAnalogInput_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvGetCtrlBoxAnalogInput_Request();
        value.@channel = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvGetCtrlBoxAnalogInput_Response
    {
        public double @value = 0;
        public bool @success = false;

        public _Ros2Dsr_msgs2SrvGetCtrlBoxAnalogInput_Response()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvGetCtrlBoxAnalogInput_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvGetCtrlBoxAnalogInput_Response>
    {
        public static readonly Ros2Dsr_msgs2SrvGetCtrlBoxAnalogInput_ResponseCodec Instance = new Ros2Dsr_msgs2SrvGetCtrlBoxAnalogInput_ResponseCodec();

        private Ros2Dsr_msgs2SrvGetCtrlBoxAnalogInput_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/GetCtrlBoxAnalogInput_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_e6980a35668e6e96dc588b8e47aa0b5b33235f1e7f36aa9503378749ce707d09";
        public const int MIN_WIRE_BYTES = 9, MAX_WIRE_BYTES = 9;

        public byte[] Encode(_Ros2Dsr_msgs2SrvGetCtrlBoxAnalogInput_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvGetCtrlBoxAnalogInput_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvGetCtrlBoxAnalogInput_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvGetCtrlBoxAnalogInput_Response value = ReadRos2Dsr_msgs2SrvGetCtrlBoxAnalogInput_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvGetCtrlBoxAnalogInput_Response(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvGetCtrlBoxAnalogInput_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        double part0 = value.@value;
        writer.Float64(part0);
        bool part1 = value.@success;
        writer.Unsigned(part1 ? 1UL : 0UL, 1);
    }

    private static _Ros2Dsr_msgs2SrvGetCtrlBoxAnalogInput_Response ReadRos2Dsr_msgs2SrvGetCtrlBoxAnalogInput_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvGetCtrlBoxAnalogInput_Response();
        value.@value = reader.Float64();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvGetCtrlBoxDigitalInput_Request
    {
        public sbyte @index = 0;

        public _Ros2Dsr_msgs2SrvGetCtrlBoxDigitalInput_Request()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvGetCtrlBoxDigitalInput_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvGetCtrlBoxDigitalInput_Request>
    {
        public static readonly Ros2Dsr_msgs2SrvGetCtrlBoxDigitalInput_RequestCodec Instance = new Ros2Dsr_msgs2SrvGetCtrlBoxDigitalInput_RequestCodec();

        private Ros2Dsr_msgs2SrvGetCtrlBoxDigitalInput_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/GetCtrlBoxDigitalInput_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_d4a390f79cd4ec51ae40899d9f2253f49a9d589029a03625f4078e7c5d511e4e";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros2Dsr_msgs2SrvGetCtrlBoxDigitalInput_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvGetCtrlBoxDigitalInput_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvGetCtrlBoxDigitalInput_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvGetCtrlBoxDigitalInput_Request value = ReadRos2Dsr_msgs2SrvGetCtrlBoxDigitalInput_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvGetCtrlBoxDigitalInput_Request(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvGetCtrlBoxDigitalInput_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        sbyte part0 = value.@index;
        writer.Unsigned(unchecked((byte)part0), 1);
    }

    private static _Ros2Dsr_msgs2SrvGetCtrlBoxDigitalInput_Request ReadRos2Dsr_msgs2SrvGetCtrlBoxDigitalInput_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvGetCtrlBoxDigitalInput_Request();
        value.@index = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvGetCtrlBoxDigitalInput_Response
    {
        public sbyte @value = 0;
        public bool @success = false;

        public _Ros2Dsr_msgs2SrvGetCtrlBoxDigitalInput_Response()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvGetCtrlBoxDigitalInput_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvGetCtrlBoxDigitalInput_Response>
    {
        public static readonly Ros2Dsr_msgs2SrvGetCtrlBoxDigitalInput_ResponseCodec Instance = new Ros2Dsr_msgs2SrvGetCtrlBoxDigitalInput_ResponseCodec();

        private Ros2Dsr_msgs2SrvGetCtrlBoxDigitalInput_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/GetCtrlBoxDigitalInput_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_1ff53e438120200e50511d0ddbae9498084bb690292d45a46701e9efe915e03d";
        public const int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;

        public byte[] Encode(_Ros2Dsr_msgs2SrvGetCtrlBoxDigitalInput_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvGetCtrlBoxDigitalInput_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvGetCtrlBoxDigitalInput_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvGetCtrlBoxDigitalInput_Response value = ReadRos2Dsr_msgs2SrvGetCtrlBoxDigitalInput_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvGetCtrlBoxDigitalInput_Response(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvGetCtrlBoxDigitalInput_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        sbyte part0 = value.@value;
        writer.Unsigned(unchecked((byte)part0), 1);
        bool part1 = value.@success;
        writer.Unsigned(part1 ? 1UL : 0UL, 1);
    }

    private static _Ros2Dsr_msgs2SrvGetCtrlBoxDigitalInput_Response ReadRos2Dsr_msgs2SrvGetCtrlBoxDigitalInput_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvGetCtrlBoxDigitalInput_Response();
        value.@value = unchecked((sbyte)reader.Unsigned(1));
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvGetCtrlBoxDigitalOutput_Request
    {
        public sbyte @index = 0;

        public _Ros2Dsr_msgs2SrvGetCtrlBoxDigitalOutput_Request()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvGetCtrlBoxDigitalOutput_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvGetCtrlBoxDigitalOutput_Request>
    {
        public static readonly Ros2Dsr_msgs2SrvGetCtrlBoxDigitalOutput_RequestCodec Instance = new Ros2Dsr_msgs2SrvGetCtrlBoxDigitalOutput_RequestCodec();

        private Ros2Dsr_msgs2SrvGetCtrlBoxDigitalOutput_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/GetCtrlBoxDigitalOutput_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_ef4e865a9b5c7402332ec14ed19177cdb88503352a0a53b2746045dadac02e55";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros2Dsr_msgs2SrvGetCtrlBoxDigitalOutput_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvGetCtrlBoxDigitalOutput_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvGetCtrlBoxDigitalOutput_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvGetCtrlBoxDigitalOutput_Request value = ReadRos2Dsr_msgs2SrvGetCtrlBoxDigitalOutput_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvGetCtrlBoxDigitalOutput_Request(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvGetCtrlBoxDigitalOutput_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        sbyte part0 = value.@index;
        writer.Unsigned(unchecked((byte)part0), 1);
    }

    private static _Ros2Dsr_msgs2SrvGetCtrlBoxDigitalOutput_Request ReadRos2Dsr_msgs2SrvGetCtrlBoxDigitalOutput_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvGetCtrlBoxDigitalOutput_Request();
        value.@index = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvGetCtrlBoxDigitalOutput_Response
    {
        public sbyte @value = 0;
        public bool @success = false;

        public _Ros2Dsr_msgs2SrvGetCtrlBoxDigitalOutput_Response()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvGetCtrlBoxDigitalOutput_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvGetCtrlBoxDigitalOutput_Response>
    {
        public static readonly Ros2Dsr_msgs2SrvGetCtrlBoxDigitalOutput_ResponseCodec Instance = new Ros2Dsr_msgs2SrvGetCtrlBoxDigitalOutput_ResponseCodec();

        private Ros2Dsr_msgs2SrvGetCtrlBoxDigitalOutput_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/GetCtrlBoxDigitalOutput_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_d5048e8f272eda1d8c034f65d357ff49b5a0407f7ec0c6255b4919c7e41dce02";
        public const int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;

        public byte[] Encode(_Ros2Dsr_msgs2SrvGetCtrlBoxDigitalOutput_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvGetCtrlBoxDigitalOutput_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvGetCtrlBoxDigitalOutput_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvGetCtrlBoxDigitalOutput_Response value = ReadRos2Dsr_msgs2SrvGetCtrlBoxDigitalOutput_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvGetCtrlBoxDigitalOutput_Response(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvGetCtrlBoxDigitalOutput_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        sbyte part0 = value.@value;
        writer.Unsigned(unchecked((byte)part0), 1);
        bool part1 = value.@success;
        writer.Unsigned(part1 ? 1UL : 0UL, 1);
    }

    private static _Ros2Dsr_msgs2SrvGetCtrlBoxDigitalOutput_Response ReadRos2Dsr_msgs2SrvGetCtrlBoxDigitalOutput_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvGetCtrlBoxDigitalOutput_Response();
        value.@value = unchecked((sbyte)reader.Unsigned(1));
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvGetCurrentPose_Request
    {
        public sbyte @space_type = 0;

        public _Ros2Dsr_msgs2SrvGetCurrentPose_Request()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvGetCurrentPose_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvGetCurrentPose_Request>
    {
        public static readonly Ros2Dsr_msgs2SrvGetCurrentPose_RequestCodec Instance = new Ros2Dsr_msgs2SrvGetCurrentPose_RequestCodec();

        private Ros2Dsr_msgs2SrvGetCurrentPose_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/GetCurrentPose_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_d5b0aeb2f72918c086d24e32685fb17be635849416d2dc9a440dd51b409af06c";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros2Dsr_msgs2SrvGetCurrentPose_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvGetCurrentPose_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvGetCurrentPose_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvGetCurrentPose_Request value = ReadRos2Dsr_msgs2SrvGetCurrentPose_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvGetCurrentPose_Request(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvGetCurrentPose_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        sbyte part0 = value.@space_type;
        writer.Unsigned(unchecked((byte)part0), 1);
    }

    private static _Ros2Dsr_msgs2SrvGetCurrentPose_Request ReadRos2Dsr_msgs2SrvGetCurrentPose_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvGetCurrentPose_Request();
        value.@space_type = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvGetCurrentPose_Response
    {
        public double[] @pos = new double[6];
        public bool @success = false;

        public _Ros2Dsr_msgs2SrvGetCurrentPose_Response()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvGetCurrentPose_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvGetCurrentPose_Response>
    {
        public static readonly Ros2Dsr_msgs2SrvGetCurrentPose_ResponseCodec Instance = new Ros2Dsr_msgs2SrvGetCurrentPose_ResponseCodec();

        private Ros2Dsr_msgs2SrvGetCurrentPose_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/GetCurrentPose_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_296fc33e4b04d2c770600842339bd545bbe72b8ba700a2236c3983c80124dcf1";
        public const int MIN_WIRE_BYTES = 49, MAX_WIRE_BYTES = 49;

        public byte[] Encode(_Ros2Dsr_msgs2SrvGetCurrentPose_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvGetCurrentPose_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvGetCurrentPose_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvGetCurrentPose_Response value = ReadRos2Dsr_msgs2SrvGetCurrentPose_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvGetCurrentPose_Response(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvGetCurrentPose_Response value)
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

    private static _Ros2Dsr_msgs2SrvGetCurrentPose_Response ReadRos2Dsr_msgs2SrvGetCurrentPose_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvGetCurrentPose_Response();
        value.@pos = new double[6];
        for(int index = 0; index < value.@pos.Length; ++index)
            value.@pos[index] = reader.Float64();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvGetCurrentPosj_Request
    {
        public _Ros2Dsr_msgs2SrvGetCurrentPosj_Request()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvGetCurrentPosj_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvGetCurrentPosj_Request>
    {
        public static readonly Ros2Dsr_msgs2SrvGetCurrentPosj_RequestCodec Instance = new Ros2Dsr_msgs2SrvGetCurrentPosj_RequestCodec();

        private Ros2Dsr_msgs2SrvGetCurrentPosj_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/GetCurrentPosj_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_1cf038d6627d1a5ddcf3ffbce7cfd1416e9d3e8c63dc13c38dfa139050544f44";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public byte[] Encode(_Ros2Dsr_msgs2SrvGetCurrentPosj_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvGetCurrentPosj_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvGetCurrentPosj_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvGetCurrentPosj_Request value = ReadRos2Dsr_msgs2SrvGetCurrentPosj_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvGetCurrentPosj_Request(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvGetCurrentPosj_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    private static _Ros2Dsr_msgs2SrvGetCurrentPosj_Request ReadRos2Dsr_msgs2SrvGetCurrentPosj_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvGetCurrentPosj_Request();
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvGetCurrentPosj_Response
    {
        public double[] @pos = new double[6];
        public bool @success = false;

        public _Ros2Dsr_msgs2SrvGetCurrentPosj_Response()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvGetCurrentPosj_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvGetCurrentPosj_Response>
    {
        public static readonly Ros2Dsr_msgs2SrvGetCurrentPosj_ResponseCodec Instance = new Ros2Dsr_msgs2SrvGetCurrentPosj_ResponseCodec();

        private Ros2Dsr_msgs2SrvGetCurrentPosj_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/GetCurrentPosj_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_f1b5d0285e81567ee77f3b688de5f6eb3c1340e2e99f6d5030d0ac77b7088e13";
        public const int MIN_WIRE_BYTES = 49, MAX_WIRE_BYTES = 49;

        public byte[] Encode(_Ros2Dsr_msgs2SrvGetCurrentPosj_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvGetCurrentPosj_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvGetCurrentPosj_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvGetCurrentPosj_Response value = ReadRos2Dsr_msgs2SrvGetCurrentPosj_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvGetCurrentPosj_Response(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvGetCurrentPosj_Response value)
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

    private static _Ros2Dsr_msgs2SrvGetCurrentPosj_Response ReadRos2Dsr_msgs2SrvGetCurrentPosj_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvGetCurrentPosj_Response();
        value.@pos = new double[6];
        for(int index = 0; index < value.@pos.Length; ++index)
            value.@pos[index] = reader.Float64();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvGetCurrentPosx_Request
    {
        public sbyte @ref = 0;

        public _Ros2Dsr_msgs2SrvGetCurrentPosx_Request()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvGetCurrentPosx_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvGetCurrentPosx_Request>
    {
        public static readonly Ros2Dsr_msgs2SrvGetCurrentPosx_RequestCodec Instance = new Ros2Dsr_msgs2SrvGetCurrentPosx_RequestCodec();

        private Ros2Dsr_msgs2SrvGetCurrentPosx_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/GetCurrentPosx_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_57fc5ddeafbed4d32ed4ba322abf43b4ffbe73c3b737f0529b3e60ef01ce9943";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros2Dsr_msgs2SrvGetCurrentPosx_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvGetCurrentPosx_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvGetCurrentPosx_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvGetCurrentPosx_Request value = ReadRos2Dsr_msgs2SrvGetCurrentPosx_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvGetCurrentPosx_Request(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvGetCurrentPosx_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        sbyte part0 = value.@ref;
        writer.Unsigned(unchecked((byte)part0), 1);
    }

    private static _Ros2Dsr_msgs2SrvGetCurrentPosx_Request ReadRos2Dsr_msgs2SrvGetCurrentPosx_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvGetCurrentPosx_Request();
        value.@ref = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvGetCurrentPosx_Response
    {
        public _Ros2Std_msgsMsgFloat64MultiArray[] @task_pos_info = new _Ros2Std_msgsMsgFloat64MultiArray[0];
        public bool @success = false;

        public _Ros2Dsr_msgs2SrvGetCurrentPosx_Response()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvGetCurrentPosx_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvGetCurrentPosx_Response>
    {
        public static readonly Ros2Dsr_msgs2SrvGetCurrentPosx_ResponseCodec Instance = new Ros2Dsr_msgs2SrvGetCurrentPosx_ResponseCodec();

        private Ros2Dsr_msgs2SrvGetCurrentPosx_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/GetCurrentPosx_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_cb48d05f4193cfb0a70d674a2f4845edca145c1ec2df8f76e3776a75fa0254a8";
        public const int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 2213;

        public byte[] Encode(_Ros2Dsr_msgs2SrvGetCurrentPosx_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvGetCurrentPosx_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvGetCurrentPosx_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvGetCurrentPosx_Response value = ReadRos2Dsr_msgs2SrvGetCurrentPosx_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvGetCurrentPosx_Response(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvGetCurrentPosx_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Std_msgsMsgFloat64MultiArray[] part0 = value.@task_pos_info;
        if(part0 == null || part0.Length > 6)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part0.Length, 4);
        for(int index = 0; index < part0.Length; ++index)
        {
            _Ros2Std_msgsMsgFloat64MultiArray element = part0[index];
            WriteRos2Std_msgsMsgFloat64MultiArray(writer, element);
        }
        bool part1 = value.@success;
        writer.Unsigned(part1 ? 1UL : 0UL, 1);
    }

    private static _Ros2Dsr_msgs2SrvGetCurrentPosx_Response ReadRos2Dsr_msgs2SrvGetCurrentPosx_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvGetCurrentPosx_Response();
        value.@task_pos_info = new _Ros2Std_msgsMsgFloat64MultiArray[ReadCount(reader, 6, 12)];
        for(int index = 0; index < value.@task_pos_info.Length; ++index)
            value.@task_pos_info[index] = ReadRos2Std_msgsMsgFloat64MultiArray(reader);
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvGetCurrentRotm_Request
    {
        public sbyte @ref = 0;

        public _Ros2Dsr_msgs2SrvGetCurrentRotm_Request()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvGetCurrentRotm_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvGetCurrentRotm_Request>
    {
        public static readonly Ros2Dsr_msgs2SrvGetCurrentRotm_RequestCodec Instance = new Ros2Dsr_msgs2SrvGetCurrentRotm_RequestCodec();

        private Ros2Dsr_msgs2SrvGetCurrentRotm_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/GetCurrentRotm_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_c691d82e22924caeb734c965ee15cf46ea206aabd4621b14bde07833b661971c";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros2Dsr_msgs2SrvGetCurrentRotm_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvGetCurrentRotm_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvGetCurrentRotm_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvGetCurrentRotm_Request value = ReadRos2Dsr_msgs2SrvGetCurrentRotm_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvGetCurrentRotm_Request(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvGetCurrentRotm_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        sbyte part0 = value.@ref;
        writer.Unsigned(unchecked((byte)part0), 1);
    }

    private static _Ros2Dsr_msgs2SrvGetCurrentRotm_Request ReadRos2Dsr_msgs2SrvGetCurrentRotm_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvGetCurrentRotm_Request();
        value.@ref = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvGetCurrentRotm_Response
    {
        public _Ros2Std_msgsMsgFloat64MultiArray[] @rot_matrix = new _Ros2Std_msgsMsgFloat64MultiArray[0];
        public bool @success = false;

        public _Ros2Dsr_msgs2SrvGetCurrentRotm_Response()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvGetCurrentRotm_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvGetCurrentRotm_Response>
    {
        public static readonly Ros2Dsr_msgs2SrvGetCurrentRotm_ResponseCodec Instance = new Ros2Dsr_msgs2SrvGetCurrentRotm_ResponseCodec();

        private Ros2Dsr_msgs2SrvGetCurrentRotm_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/GetCurrentRotm_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_07665bca70c62297a983ff28a353b8dc3e25a55b938d1e8a7d00f7b99fe659ca";
        public const int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 2213;

        public byte[] Encode(_Ros2Dsr_msgs2SrvGetCurrentRotm_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvGetCurrentRotm_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvGetCurrentRotm_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvGetCurrentRotm_Response value = ReadRos2Dsr_msgs2SrvGetCurrentRotm_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvGetCurrentRotm_Response(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvGetCurrentRotm_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Std_msgsMsgFloat64MultiArray[] part0 = value.@rot_matrix;
        if(part0 == null || part0.Length > 6)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part0.Length, 4);
        for(int index = 0; index < part0.Length; ++index)
        {
            _Ros2Std_msgsMsgFloat64MultiArray element = part0[index];
            WriteRos2Std_msgsMsgFloat64MultiArray(writer, element);
        }
        bool part1 = value.@success;
        writer.Unsigned(part1 ? 1UL : 0UL, 1);
    }

    private static _Ros2Dsr_msgs2SrvGetCurrentRotm_Response ReadRos2Dsr_msgs2SrvGetCurrentRotm_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvGetCurrentRotm_Response();
        value.@rot_matrix = new _Ros2Std_msgsMsgFloat64MultiArray[ReadCount(reader, 6, 12)];
        for(int index = 0; index < value.@rot_matrix.Length; ++index)
            value.@rot_matrix[index] = ReadRos2Std_msgsMsgFloat64MultiArray(reader);
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvGetCurrentSolutionSpace_Request
    {
        public _Ros2Dsr_msgs2SrvGetCurrentSolutionSpace_Request()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvGetCurrentSolutionSpace_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvGetCurrentSolutionSpace_Request>
    {
        public static readonly Ros2Dsr_msgs2SrvGetCurrentSolutionSpace_RequestCodec Instance = new Ros2Dsr_msgs2SrvGetCurrentSolutionSpace_RequestCodec();

        private Ros2Dsr_msgs2SrvGetCurrentSolutionSpace_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/GetCurrentSolutionSpace_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_7cd7c65658f1063c1ef9af93d72f1414d547179bd00310cb70301e6f93029a96";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public byte[] Encode(_Ros2Dsr_msgs2SrvGetCurrentSolutionSpace_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvGetCurrentSolutionSpace_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvGetCurrentSolutionSpace_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvGetCurrentSolutionSpace_Request value = ReadRos2Dsr_msgs2SrvGetCurrentSolutionSpace_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvGetCurrentSolutionSpace_Request(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvGetCurrentSolutionSpace_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    private static _Ros2Dsr_msgs2SrvGetCurrentSolutionSpace_Request ReadRos2Dsr_msgs2SrvGetCurrentSolutionSpace_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvGetCurrentSolutionSpace_Request();
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvGetCurrentSolutionSpace_Response
    {
        public sbyte @sol_space = 0;
        public bool @success = false;

        public _Ros2Dsr_msgs2SrvGetCurrentSolutionSpace_Response()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvGetCurrentSolutionSpace_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvGetCurrentSolutionSpace_Response>
    {
        public static readonly Ros2Dsr_msgs2SrvGetCurrentSolutionSpace_ResponseCodec Instance = new Ros2Dsr_msgs2SrvGetCurrentSolutionSpace_ResponseCodec();

        private Ros2Dsr_msgs2SrvGetCurrentSolutionSpace_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/GetCurrentSolutionSpace_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_f414cb291de9891680fd80e6173f5026cc105fb4d0a84781a65a44f8104fa34a";
        public const int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;

        public byte[] Encode(_Ros2Dsr_msgs2SrvGetCurrentSolutionSpace_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvGetCurrentSolutionSpace_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvGetCurrentSolutionSpace_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvGetCurrentSolutionSpace_Response value = ReadRos2Dsr_msgs2SrvGetCurrentSolutionSpace_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvGetCurrentSolutionSpace_Response(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvGetCurrentSolutionSpace_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        sbyte part0 = value.@sol_space;
        writer.Unsigned(unchecked((byte)part0), 1);
        bool part1 = value.@success;
        writer.Unsigned(part1 ? 1UL : 0UL, 1);
    }

    private static _Ros2Dsr_msgs2SrvGetCurrentSolutionSpace_Response ReadRos2Dsr_msgs2SrvGetCurrentSolutionSpace_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvGetCurrentSolutionSpace_Response();
        value.@sol_space = unchecked((sbyte)reader.Unsigned(1));
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvGetCurrentTcp_Request
    {
        public _Ros2Dsr_msgs2SrvGetCurrentTcp_Request()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvGetCurrentTcp_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvGetCurrentTcp_Request>
    {
        public static readonly Ros2Dsr_msgs2SrvGetCurrentTcp_RequestCodec Instance = new Ros2Dsr_msgs2SrvGetCurrentTcp_RequestCodec();

        private Ros2Dsr_msgs2SrvGetCurrentTcp_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/GetCurrentTcp_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_4324587d3246a8127cd50048c55cd3c472eed6d4c3af4aefa3216a8936a06ee4";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public byte[] Encode(_Ros2Dsr_msgs2SrvGetCurrentTcp_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvGetCurrentTcp_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvGetCurrentTcp_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvGetCurrentTcp_Request value = ReadRos2Dsr_msgs2SrvGetCurrentTcp_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvGetCurrentTcp_Request(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvGetCurrentTcp_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    private static _Ros2Dsr_msgs2SrvGetCurrentTcp_Request ReadRos2Dsr_msgs2SrvGetCurrentTcp_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvGetCurrentTcp_Request();
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvGetCurrentTcp_Response
    {
        public string @info = "";
        public bool @success = false;

        public _Ros2Dsr_msgs2SrvGetCurrentTcp_Response()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvGetCurrentTcp_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvGetCurrentTcp_Response>
    {
        public static readonly Ros2Dsr_msgs2SrvGetCurrentTcp_ResponseCodec Instance = new Ros2Dsr_msgs2SrvGetCurrentTcp_ResponseCodec();

        private Ros2Dsr_msgs2SrvGetCurrentTcp_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/GetCurrentTcp_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_f1cf522c9008d5c97f5fa8616d2baef9aef355350189c2ca77a22189a235c596";
        public const int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 261;

        public byte[] Encode(_Ros2Dsr_msgs2SrvGetCurrentTcp_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvGetCurrentTcp_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvGetCurrentTcp_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvGetCurrentTcp_Response value = ReadRos2Dsr_msgs2SrvGetCurrentTcp_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvGetCurrentTcp_Response(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvGetCurrentTcp_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        string part0 = value.@info;
        WriteText(writer, part0, 256);
        bool part1 = value.@success;
        writer.Unsigned(part1 ? 1UL : 0UL, 1);
    }

    private static _Ros2Dsr_msgs2SrvGetCurrentTcp_Response ReadRos2Dsr_msgs2SrvGetCurrentTcp_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvGetCurrentTcp_Response();
        value.@info = ReadText(reader, 256);
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvGetCurrentTool_Request
    {
        public _Ros2Dsr_msgs2SrvGetCurrentTool_Request()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvGetCurrentTool_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvGetCurrentTool_Request>
    {
        public static readonly Ros2Dsr_msgs2SrvGetCurrentTool_RequestCodec Instance = new Ros2Dsr_msgs2SrvGetCurrentTool_RequestCodec();

        private Ros2Dsr_msgs2SrvGetCurrentTool_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/GetCurrentTool_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_59737c01f8da615dc929190326bddd2d2e65b813f2407770c04b8d7afc915351";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public byte[] Encode(_Ros2Dsr_msgs2SrvGetCurrentTool_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvGetCurrentTool_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvGetCurrentTool_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvGetCurrentTool_Request value = ReadRos2Dsr_msgs2SrvGetCurrentTool_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvGetCurrentTool_Request(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvGetCurrentTool_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    private static _Ros2Dsr_msgs2SrvGetCurrentTool_Request ReadRos2Dsr_msgs2SrvGetCurrentTool_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvGetCurrentTool_Request();
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvGetCurrentTool_Response
    {
        public string @info = "";
        public bool @success = false;

        public _Ros2Dsr_msgs2SrvGetCurrentTool_Response()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvGetCurrentTool_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvGetCurrentTool_Response>
    {
        public static readonly Ros2Dsr_msgs2SrvGetCurrentTool_ResponseCodec Instance = new Ros2Dsr_msgs2SrvGetCurrentTool_ResponseCodec();

        private Ros2Dsr_msgs2SrvGetCurrentTool_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/GetCurrentTool_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_6be3858c1b239a883173227e0b498af9123c7e23f76db6024275dbc7e1b5aa5b";
        public const int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 261;

        public byte[] Encode(_Ros2Dsr_msgs2SrvGetCurrentTool_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvGetCurrentTool_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvGetCurrentTool_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvGetCurrentTool_Response value = ReadRos2Dsr_msgs2SrvGetCurrentTool_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvGetCurrentTool_Response(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvGetCurrentTool_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        string part0 = value.@info;
        WriteText(writer, part0, 256);
        bool part1 = value.@success;
        writer.Unsigned(part1 ? 1UL : 0UL, 1);
    }

    private static _Ros2Dsr_msgs2SrvGetCurrentTool_Response ReadRos2Dsr_msgs2SrvGetCurrentTool_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvGetCurrentTool_Response();
        value.@info = ReadText(reader, 256);
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvGetCurrentToolFlangePosx_Request
    {
        public sbyte @ref = 0;

        public _Ros2Dsr_msgs2SrvGetCurrentToolFlangePosx_Request()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvGetCurrentToolFlangePosx_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvGetCurrentToolFlangePosx_Request>
    {
        public static readonly Ros2Dsr_msgs2SrvGetCurrentToolFlangePosx_RequestCodec Instance = new Ros2Dsr_msgs2SrvGetCurrentToolFlangePosx_RequestCodec();

        private Ros2Dsr_msgs2SrvGetCurrentToolFlangePosx_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/GetCurrentToolFlangePosx_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_e029ff9167245532d66a76380ba9ab1753d56b402ab1242ac13a91ede1350d02";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros2Dsr_msgs2SrvGetCurrentToolFlangePosx_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvGetCurrentToolFlangePosx_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvGetCurrentToolFlangePosx_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvGetCurrentToolFlangePosx_Request value = ReadRos2Dsr_msgs2SrvGetCurrentToolFlangePosx_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvGetCurrentToolFlangePosx_Request(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvGetCurrentToolFlangePosx_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        sbyte part0 = value.@ref;
        writer.Unsigned(unchecked((byte)part0), 1);
    }

    private static _Ros2Dsr_msgs2SrvGetCurrentToolFlangePosx_Request ReadRos2Dsr_msgs2SrvGetCurrentToolFlangePosx_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvGetCurrentToolFlangePosx_Request();
        value.@ref = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvGetCurrentToolFlangePosx_Response
    {
        public double[] @pos = new double[6];
        public bool @success = false;

        public _Ros2Dsr_msgs2SrvGetCurrentToolFlangePosx_Response()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvGetCurrentToolFlangePosx_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvGetCurrentToolFlangePosx_Response>
    {
        public static readonly Ros2Dsr_msgs2SrvGetCurrentToolFlangePosx_ResponseCodec Instance = new Ros2Dsr_msgs2SrvGetCurrentToolFlangePosx_ResponseCodec();

        private Ros2Dsr_msgs2SrvGetCurrentToolFlangePosx_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/GetCurrentToolFlangePosx_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_be24b0c65aa81bdfa3b349ca08b207b8cbb9f8622dd97559c160c92ce93e16c6";
        public const int MIN_WIRE_BYTES = 49, MAX_WIRE_BYTES = 49;

        public byte[] Encode(_Ros2Dsr_msgs2SrvGetCurrentToolFlangePosx_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvGetCurrentToolFlangePosx_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvGetCurrentToolFlangePosx_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvGetCurrentToolFlangePosx_Response value = ReadRos2Dsr_msgs2SrvGetCurrentToolFlangePosx_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvGetCurrentToolFlangePosx_Response(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvGetCurrentToolFlangePosx_Response value)
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

    private static _Ros2Dsr_msgs2SrvGetCurrentToolFlangePosx_Response ReadRos2Dsr_msgs2SrvGetCurrentToolFlangePosx_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvGetCurrentToolFlangePosx_Response();
        value.@pos = new double[6];
        for(int index = 0; index < value.@pos.Length; ++index)
            value.@pos[index] = reader.Float64();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvGetCurrentVelj_Request
    {
        public _Ros2Dsr_msgs2SrvGetCurrentVelj_Request()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvGetCurrentVelj_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvGetCurrentVelj_Request>
    {
        public static readonly Ros2Dsr_msgs2SrvGetCurrentVelj_RequestCodec Instance = new Ros2Dsr_msgs2SrvGetCurrentVelj_RequestCodec();

        private Ros2Dsr_msgs2SrvGetCurrentVelj_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/GetCurrentVelj_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_d4bef08af9d4ed3e0b44b015c85c70f8c687871846818a46b97db4351b8ad876";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public byte[] Encode(_Ros2Dsr_msgs2SrvGetCurrentVelj_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvGetCurrentVelj_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvGetCurrentVelj_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvGetCurrentVelj_Request value = ReadRos2Dsr_msgs2SrvGetCurrentVelj_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvGetCurrentVelj_Request(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvGetCurrentVelj_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    private static _Ros2Dsr_msgs2SrvGetCurrentVelj_Request ReadRos2Dsr_msgs2SrvGetCurrentVelj_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvGetCurrentVelj_Request();
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvGetCurrentVelj_Response
    {
        public double[] @joint_speed = new double[6];
        public bool @success = false;

        public _Ros2Dsr_msgs2SrvGetCurrentVelj_Response()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvGetCurrentVelj_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvGetCurrentVelj_Response>
    {
        public static readonly Ros2Dsr_msgs2SrvGetCurrentVelj_ResponseCodec Instance = new Ros2Dsr_msgs2SrvGetCurrentVelj_ResponseCodec();

        private Ros2Dsr_msgs2SrvGetCurrentVelj_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/GetCurrentVelj_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_d07a760d106d768184e69426ef5e23d6ffd7569a0ae6c30fdc7e627ecdba494d";
        public const int MIN_WIRE_BYTES = 49, MAX_WIRE_BYTES = 49;

        public byte[] Encode(_Ros2Dsr_msgs2SrvGetCurrentVelj_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvGetCurrentVelj_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvGetCurrentVelj_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvGetCurrentVelj_Response value = ReadRos2Dsr_msgs2SrvGetCurrentVelj_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvGetCurrentVelj_Response(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvGetCurrentVelj_Response value)
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

    private static _Ros2Dsr_msgs2SrvGetCurrentVelj_Response ReadRos2Dsr_msgs2SrvGetCurrentVelj_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvGetCurrentVelj_Response();
        value.@joint_speed = new double[6];
        for(int index = 0; index < value.@joint_speed.Length; ++index)
            value.@joint_speed[index] = reader.Float64();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvGetCurrentVelx_Request
    {
        public sbyte @ref = 0;

        public _Ros2Dsr_msgs2SrvGetCurrentVelx_Request()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvGetCurrentVelx_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvGetCurrentVelx_Request>
    {
        public static readonly Ros2Dsr_msgs2SrvGetCurrentVelx_RequestCodec Instance = new Ros2Dsr_msgs2SrvGetCurrentVelx_RequestCodec();

        private Ros2Dsr_msgs2SrvGetCurrentVelx_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/GetCurrentVelx_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_f14760f7a2387ae587c28c05ec130e4728e85c38961813d9932adf037c353e83";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros2Dsr_msgs2SrvGetCurrentVelx_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvGetCurrentVelx_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvGetCurrentVelx_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvGetCurrentVelx_Request value = ReadRos2Dsr_msgs2SrvGetCurrentVelx_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvGetCurrentVelx_Request(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvGetCurrentVelx_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        sbyte part0 = value.@ref;
        writer.Unsigned(unchecked((byte)part0), 1);
    }

    private static _Ros2Dsr_msgs2SrvGetCurrentVelx_Request ReadRos2Dsr_msgs2SrvGetCurrentVelx_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvGetCurrentVelx_Request();
        value.@ref = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvGetCurrentVelx_Response
    {
        public double[] @vel = new double[6];
        public bool @success = false;

        public _Ros2Dsr_msgs2SrvGetCurrentVelx_Response()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvGetCurrentVelx_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvGetCurrentVelx_Response>
    {
        public static readonly Ros2Dsr_msgs2SrvGetCurrentVelx_ResponseCodec Instance = new Ros2Dsr_msgs2SrvGetCurrentVelx_ResponseCodec();

        private Ros2Dsr_msgs2SrvGetCurrentVelx_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/GetCurrentVelx_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_2f9645de7b8fec40b7dbcf9d572404009d9ff7f96ef3692ca7bc8fbfc5188aef";
        public const int MIN_WIRE_BYTES = 49, MAX_WIRE_BYTES = 49;

        public byte[] Encode(_Ros2Dsr_msgs2SrvGetCurrentVelx_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvGetCurrentVelx_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvGetCurrentVelx_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvGetCurrentVelx_Response value = ReadRos2Dsr_msgs2SrvGetCurrentVelx_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvGetCurrentVelx_Response(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvGetCurrentVelx_Response value)
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

    private static _Ros2Dsr_msgs2SrvGetCurrentVelx_Response ReadRos2Dsr_msgs2SrvGetCurrentVelx_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvGetCurrentVelx_Response();
        value.@vel = new double[6];
        for(int index = 0; index < value.@vel.Length; ++index)
            value.@vel[index] = reader.Float64();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvGetDesiredPosj_Request
    {
        public _Ros2Dsr_msgs2SrvGetDesiredPosj_Request()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvGetDesiredPosj_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvGetDesiredPosj_Request>
    {
        public static readonly Ros2Dsr_msgs2SrvGetDesiredPosj_RequestCodec Instance = new Ros2Dsr_msgs2SrvGetDesiredPosj_RequestCodec();

        private Ros2Dsr_msgs2SrvGetDesiredPosj_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/GetDesiredPosj_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_9c8b229eb0bd52e826fdc03e6826b532897aae952e841e35b31c866edf0b3cd5";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public byte[] Encode(_Ros2Dsr_msgs2SrvGetDesiredPosj_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvGetDesiredPosj_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvGetDesiredPosj_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvGetDesiredPosj_Request value = ReadRos2Dsr_msgs2SrvGetDesiredPosj_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvGetDesiredPosj_Request(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvGetDesiredPosj_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    private static _Ros2Dsr_msgs2SrvGetDesiredPosj_Request ReadRos2Dsr_msgs2SrvGetDesiredPosj_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvGetDesiredPosj_Request();
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvGetDesiredPosj_Response
    {
        public double[] @pos = new double[6];
        public bool @success = false;

        public _Ros2Dsr_msgs2SrvGetDesiredPosj_Response()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvGetDesiredPosj_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvGetDesiredPosj_Response>
    {
        public static readonly Ros2Dsr_msgs2SrvGetDesiredPosj_ResponseCodec Instance = new Ros2Dsr_msgs2SrvGetDesiredPosj_ResponseCodec();

        private Ros2Dsr_msgs2SrvGetDesiredPosj_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/GetDesiredPosj_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_0a725b8def984030fb01a2847d7e792b77e7d49007bd996b990671ceaa5facc0";
        public const int MIN_WIRE_BYTES = 49, MAX_WIRE_BYTES = 49;

        public byte[] Encode(_Ros2Dsr_msgs2SrvGetDesiredPosj_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvGetDesiredPosj_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvGetDesiredPosj_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvGetDesiredPosj_Response value = ReadRos2Dsr_msgs2SrvGetDesiredPosj_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvGetDesiredPosj_Response(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvGetDesiredPosj_Response value)
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

    private static _Ros2Dsr_msgs2SrvGetDesiredPosj_Response ReadRos2Dsr_msgs2SrvGetDesiredPosj_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvGetDesiredPosj_Response();
        value.@pos = new double[6];
        for(int index = 0; index < value.@pos.Length; ++index)
            value.@pos[index] = reader.Float64();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvGetDesiredPosx_Request
    {
        public sbyte @ref = 0;

        public _Ros2Dsr_msgs2SrvGetDesiredPosx_Request()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvGetDesiredPosx_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvGetDesiredPosx_Request>
    {
        public static readonly Ros2Dsr_msgs2SrvGetDesiredPosx_RequestCodec Instance = new Ros2Dsr_msgs2SrvGetDesiredPosx_RequestCodec();

        private Ros2Dsr_msgs2SrvGetDesiredPosx_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/GetDesiredPosx_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_6f9016a247e3c8c489ffbf4fc16c4c457e21220294e6859496ec3015441dc069";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros2Dsr_msgs2SrvGetDesiredPosx_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvGetDesiredPosx_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvGetDesiredPosx_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvGetDesiredPosx_Request value = ReadRos2Dsr_msgs2SrvGetDesiredPosx_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvGetDesiredPosx_Request(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvGetDesiredPosx_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        sbyte part0 = value.@ref;
        writer.Unsigned(unchecked((byte)part0), 1);
    }

    private static _Ros2Dsr_msgs2SrvGetDesiredPosx_Request ReadRos2Dsr_msgs2SrvGetDesiredPosx_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvGetDesiredPosx_Request();
        value.@ref = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvGetDesiredPosx_Response
    {
        public double[] @pos = new double[6];
        public bool @success = false;

        public _Ros2Dsr_msgs2SrvGetDesiredPosx_Response()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvGetDesiredPosx_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvGetDesiredPosx_Response>
    {
        public static readonly Ros2Dsr_msgs2SrvGetDesiredPosx_ResponseCodec Instance = new Ros2Dsr_msgs2SrvGetDesiredPosx_ResponseCodec();

        private Ros2Dsr_msgs2SrvGetDesiredPosx_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/GetDesiredPosx_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_cc1f5ad8fd61a77b2c0dbdb1f9e0c7b899b1bdfdbf535308bbd160d001ad1c09";
        public const int MIN_WIRE_BYTES = 49, MAX_WIRE_BYTES = 49;

        public byte[] Encode(_Ros2Dsr_msgs2SrvGetDesiredPosx_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvGetDesiredPosx_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvGetDesiredPosx_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvGetDesiredPosx_Response value = ReadRos2Dsr_msgs2SrvGetDesiredPosx_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvGetDesiredPosx_Response(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvGetDesiredPosx_Response value)
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

    private static _Ros2Dsr_msgs2SrvGetDesiredPosx_Response ReadRos2Dsr_msgs2SrvGetDesiredPosx_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvGetDesiredPosx_Response();
        value.@pos = new double[6];
        for(int index = 0; index < value.@pos.Length; ++index)
            value.@pos[index] = reader.Float64();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvGetDesiredVelj_Request
    {
        public _Ros2Dsr_msgs2SrvGetDesiredVelj_Request()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvGetDesiredVelj_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvGetDesiredVelj_Request>
    {
        public static readonly Ros2Dsr_msgs2SrvGetDesiredVelj_RequestCodec Instance = new Ros2Dsr_msgs2SrvGetDesiredVelj_RequestCodec();

        private Ros2Dsr_msgs2SrvGetDesiredVelj_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/GetDesiredVelj_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_56535748a42f6d003d24c5e176ca34bb960e9d112f209080178a55450e52d281";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public byte[] Encode(_Ros2Dsr_msgs2SrvGetDesiredVelj_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvGetDesiredVelj_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvGetDesiredVelj_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvGetDesiredVelj_Request value = ReadRos2Dsr_msgs2SrvGetDesiredVelj_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvGetDesiredVelj_Request(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvGetDesiredVelj_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    private static _Ros2Dsr_msgs2SrvGetDesiredVelj_Request ReadRos2Dsr_msgs2SrvGetDesiredVelj_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvGetDesiredVelj_Request();
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvGetDesiredVelj_Response
    {
        public double[] @joint_vel = new double[6];
        public bool @success = false;

        public _Ros2Dsr_msgs2SrvGetDesiredVelj_Response()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvGetDesiredVelj_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvGetDesiredVelj_Response>
    {
        public static readonly Ros2Dsr_msgs2SrvGetDesiredVelj_ResponseCodec Instance = new Ros2Dsr_msgs2SrvGetDesiredVelj_ResponseCodec();

        private Ros2Dsr_msgs2SrvGetDesiredVelj_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/GetDesiredVelj_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_709f364917c007a6561766e576cdfb7c1e39e72b1852f83c9bec61721dd3b936";
        public const int MIN_WIRE_BYTES = 49, MAX_WIRE_BYTES = 49;

        public byte[] Encode(_Ros2Dsr_msgs2SrvGetDesiredVelj_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvGetDesiredVelj_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvGetDesiredVelj_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvGetDesiredVelj_Response value = ReadRos2Dsr_msgs2SrvGetDesiredVelj_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvGetDesiredVelj_Response(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvGetDesiredVelj_Response value)
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

    private static _Ros2Dsr_msgs2SrvGetDesiredVelj_Response ReadRos2Dsr_msgs2SrvGetDesiredVelj_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvGetDesiredVelj_Response();
        value.@joint_vel = new double[6];
        for(int index = 0; index < value.@joint_vel.Length; ++index)
            value.@joint_vel[index] = reader.Float64();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvGetDesiredVelx_Request
    {
        public sbyte @ref = 0;

        public _Ros2Dsr_msgs2SrvGetDesiredVelx_Request()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvGetDesiredVelx_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvGetDesiredVelx_Request>
    {
        public static readonly Ros2Dsr_msgs2SrvGetDesiredVelx_RequestCodec Instance = new Ros2Dsr_msgs2SrvGetDesiredVelx_RequestCodec();

        private Ros2Dsr_msgs2SrvGetDesiredVelx_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/GetDesiredVelx_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_754325c879930a58938d2acd7433605cc148cf57341fe9b0ef1870653a9fae12";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros2Dsr_msgs2SrvGetDesiredVelx_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvGetDesiredVelx_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvGetDesiredVelx_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvGetDesiredVelx_Request value = ReadRos2Dsr_msgs2SrvGetDesiredVelx_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvGetDesiredVelx_Request(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvGetDesiredVelx_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        sbyte part0 = value.@ref;
        writer.Unsigned(unchecked((byte)part0), 1);
    }

    private static _Ros2Dsr_msgs2SrvGetDesiredVelx_Request ReadRos2Dsr_msgs2SrvGetDesiredVelx_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvGetDesiredVelx_Request();
        value.@ref = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvGetDesiredVelx_Response
    {
        public double[] @vel = new double[6];
        public bool @success = false;

        public _Ros2Dsr_msgs2SrvGetDesiredVelx_Response()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvGetDesiredVelx_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvGetDesiredVelx_Response>
    {
        public static readonly Ros2Dsr_msgs2SrvGetDesiredVelx_ResponseCodec Instance = new Ros2Dsr_msgs2SrvGetDesiredVelx_ResponseCodec();

        private Ros2Dsr_msgs2SrvGetDesiredVelx_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/GetDesiredVelx_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_55addb1448eb568ef90aa85cdeeee8044d9b37544a7ca4d208e91ba3aefe16bc";
        public const int MIN_WIRE_BYTES = 49, MAX_WIRE_BYTES = 49;

        public byte[] Encode(_Ros2Dsr_msgs2SrvGetDesiredVelx_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvGetDesiredVelx_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvGetDesiredVelx_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvGetDesiredVelx_Response value = ReadRos2Dsr_msgs2SrvGetDesiredVelx_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvGetDesiredVelx_Response(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvGetDesiredVelx_Response value)
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

    private static _Ros2Dsr_msgs2SrvGetDesiredVelx_Response ReadRos2Dsr_msgs2SrvGetDesiredVelx_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvGetDesiredVelx_Response();
        value.@vel = new double[6];
        for(int index = 0; index < value.@vel.Length; ++index)
            value.@vel[index] = reader.Float64();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvGetDrlState_Request
    {
        public _Ros2Dsr_msgs2SrvGetDrlState_Request()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvGetDrlState_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvGetDrlState_Request>
    {
        public static readonly Ros2Dsr_msgs2SrvGetDrlState_RequestCodec Instance = new Ros2Dsr_msgs2SrvGetDrlState_RequestCodec();

        private Ros2Dsr_msgs2SrvGetDrlState_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/GetDrlState_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_19a78a7cf9b010009bc481194271904a47cad587fa2e46fcc01e9e3f94c65e3e";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public byte[] Encode(_Ros2Dsr_msgs2SrvGetDrlState_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvGetDrlState_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvGetDrlState_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvGetDrlState_Request value = ReadRos2Dsr_msgs2SrvGetDrlState_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvGetDrlState_Request(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvGetDrlState_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    private static _Ros2Dsr_msgs2SrvGetDrlState_Request ReadRos2Dsr_msgs2SrvGetDrlState_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvGetDrlState_Request();
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvGetDrlState_Response
    {
        public sbyte @drl_state = 0;
        public bool @success = false;

        public _Ros2Dsr_msgs2SrvGetDrlState_Response()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvGetDrlState_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvGetDrlState_Response>
    {
        public static readonly Ros2Dsr_msgs2SrvGetDrlState_ResponseCodec Instance = new Ros2Dsr_msgs2SrvGetDrlState_ResponseCodec();

        private Ros2Dsr_msgs2SrvGetDrlState_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/GetDrlState_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_58b6574dd8d3006509e0e7c98a4d64f32fc1a3fa5e8a8efcb567e9c34b102699";
        public const int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;

        public byte[] Encode(_Ros2Dsr_msgs2SrvGetDrlState_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvGetDrlState_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvGetDrlState_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvGetDrlState_Response value = ReadRos2Dsr_msgs2SrvGetDrlState_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvGetDrlState_Response(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvGetDrlState_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        sbyte part0 = value.@drl_state;
        writer.Unsigned(unchecked((byte)part0), 1);
        bool part1 = value.@success;
        writer.Unsigned(part1 ? 1UL : 0UL, 1);
    }

    private static _Ros2Dsr_msgs2SrvGetDrlState_Response ReadRos2Dsr_msgs2SrvGetDrlState_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvGetDrlState_Response();
        value.@drl_state = unchecked((sbyte)reader.Unsigned(1));
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvGetExternalTorque_Request
    {
        public _Ros2Dsr_msgs2SrvGetExternalTorque_Request()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvGetExternalTorque_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvGetExternalTorque_Request>
    {
        public static readonly Ros2Dsr_msgs2SrvGetExternalTorque_RequestCodec Instance = new Ros2Dsr_msgs2SrvGetExternalTorque_RequestCodec();

        private Ros2Dsr_msgs2SrvGetExternalTorque_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/GetExternalTorque_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_90ea09af03677cd42016abf4e88e4ef73e7aad43c5bf37804c7f50918ad71f3a";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public byte[] Encode(_Ros2Dsr_msgs2SrvGetExternalTorque_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvGetExternalTorque_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvGetExternalTorque_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvGetExternalTorque_Request value = ReadRos2Dsr_msgs2SrvGetExternalTorque_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvGetExternalTorque_Request(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvGetExternalTorque_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    private static _Ros2Dsr_msgs2SrvGetExternalTorque_Request ReadRos2Dsr_msgs2SrvGetExternalTorque_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvGetExternalTorque_Request();
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvGetExternalTorque_Response
    {
        public double[] @ext_torque = new double[6];
        public bool @success = false;

        public _Ros2Dsr_msgs2SrvGetExternalTorque_Response()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvGetExternalTorque_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvGetExternalTorque_Response>
    {
        public static readonly Ros2Dsr_msgs2SrvGetExternalTorque_ResponseCodec Instance = new Ros2Dsr_msgs2SrvGetExternalTorque_ResponseCodec();

        private Ros2Dsr_msgs2SrvGetExternalTorque_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/GetExternalTorque_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_617665ff9f0817f3426b8fb61409061d5f7cde6603c61993e1aec013b3021f6d";
        public const int MIN_WIRE_BYTES = 49, MAX_WIRE_BYTES = 49;

        public byte[] Encode(_Ros2Dsr_msgs2SrvGetExternalTorque_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvGetExternalTorque_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvGetExternalTorque_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvGetExternalTorque_Response value = ReadRos2Dsr_msgs2SrvGetExternalTorque_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvGetExternalTorque_Response(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvGetExternalTorque_Response value)
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

    private static _Ros2Dsr_msgs2SrvGetExternalTorque_Response ReadRos2Dsr_msgs2SrvGetExternalTorque_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvGetExternalTorque_Response();
        value.@ext_torque = new double[6];
        for(int index = 0; index < value.@ext_torque.Length; ++index)
            value.@ext_torque[index] = reader.Float64();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvGetInputRegisterBit_Request
    {
        public ushort @address = 0;
        public uint @timeout_ms = 0;

        public _Ros2Dsr_msgs2SrvGetInputRegisterBit_Request()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvGetInputRegisterBit_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvGetInputRegisterBit_Request>
    {
        public static readonly Ros2Dsr_msgs2SrvGetInputRegisterBit_RequestCodec Instance = new Ros2Dsr_msgs2SrvGetInputRegisterBit_RequestCodec();

        private Ros2Dsr_msgs2SrvGetInputRegisterBit_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/GetInputRegisterBit_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_357c348741cb21e92bd0e4962361dd84ed11db8f6868d84e4cdfd535fc215cae";
        public const int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 6;

        public byte[] Encode(_Ros2Dsr_msgs2SrvGetInputRegisterBit_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvGetInputRegisterBit_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvGetInputRegisterBit_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvGetInputRegisterBit_Request value = ReadRos2Dsr_msgs2SrvGetInputRegisterBit_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvGetInputRegisterBit_Request(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvGetInputRegisterBit_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        ushort part0 = value.@address;
        writer.Unsigned(part0, 2);
        uint part1 = value.@timeout_ms;
        writer.Unsigned(part1, 4);
    }

    private static _Ros2Dsr_msgs2SrvGetInputRegisterBit_Request ReadRos2Dsr_msgs2SrvGetInputRegisterBit_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvGetInputRegisterBit_Request();
        value.@address = unchecked((ushort)reader.Unsigned(2));
        value.@timeout_ms = unchecked((uint)reader.Unsigned(4));
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvGetInputRegisterBit_Response
    {
        public bool @success = false;
        public int @value = 0;

        public _Ros2Dsr_msgs2SrvGetInputRegisterBit_Response()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvGetInputRegisterBit_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvGetInputRegisterBit_Response>
    {
        public static readonly Ros2Dsr_msgs2SrvGetInputRegisterBit_ResponseCodec Instance = new Ros2Dsr_msgs2SrvGetInputRegisterBit_ResponseCodec();

        private Ros2Dsr_msgs2SrvGetInputRegisterBit_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/GetInputRegisterBit_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_a47c01d50519e552cfedf4ecaf6d52febaa0a4eb846ebc73256fe88219b647aa";
        public const int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 5;

        public byte[] Encode(_Ros2Dsr_msgs2SrvGetInputRegisterBit_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvGetInputRegisterBit_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvGetInputRegisterBit_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvGetInputRegisterBit_Response value = ReadRos2Dsr_msgs2SrvGetInputRegisterBit_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvGetInputRegisterBit_Response(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvGetInputRegisterBit_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
        int part1 = value.@value;
        writer.Unsigned(unchecked((uint)part1), 4);
    }

    private static _Ros2Dsr_msgs2SrvGetInputRegisterBit_Response ReadRos2Dsr_msgs2SrvGetInputRegisterBit_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvGetInputRegisterBit_Response();
        value.@success = ReadBool(reader);
        value.@value = unchecked((int)reader.Unsigned(4));
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvGetInputRegisterFloat_Request
    {
        public ushort @address = 0;
        public uint @timeout_ms = 0;

        public _Ros2Dsr_msgs2SrvGetInputRegisterFloat_Request()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvGetInputRegisterFloat_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvGetInputRegisterFloat_Request>
    {
        public static readonly Ros2Dsr_msgs2SrvGetInputRegisterFloat_RequestCodec Instance = new Ros2Dsr_msgs2SrvGetInputRegisterFloat_RequestCodec();

        private Ros2Dsr_msgs2SrvGetInputRegisterFloat_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/GetInputRegisterFloat_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_88a6866efcf1e3620b98a77d2bc65cbf2dc9e3fb6e00b3e06fdc84ee8b5a2f3b";
        public const int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 6;

        public byte[] Encode(_Ros2Dsr_msgs2SrvGetInputRegisterFloat_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvGetInputRegisterFloat_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvGetInputRegisterFloat_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvGetInputRegisterFloat_Request value = ReadRos2Dsr_msgs2SrvGetInputRegisterFloat_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvGetInputRegisterFloat_Request(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvGetInputRegisterFloat_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        ushort part0 = value.@address;
        writer.Unsigned(part0, 2);
        uint part1 = value.@timeout_ms;
        writer.Unsigned(part1, 4);
    }

    private static _Ros2Dsr_msgs2SrvGetInputRegisterFloat_Request ReadRos2Dsr_msgs2SrvGetInputRegisterFloat_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvGetInputRegisterFloat_Request();
        value.@address = unchecked((ushort)reader.Unsigned(2));
        value.@timeout_ms = unchecked((uint)reader.Unsigned(4));
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvGetInputRegisterFloat_Response
    {
        public bool @success = false;
        public double @value = 0;

        public _Ros2Dsr_msgs2SrvGetInputRegisterFloat_Response()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvGetInputRegisterFloat_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvGetInputRegisterFloat_Response>
    {
        public static readonly Ros2Dsr_msgs2SrvGetInputRegisterFloat_ResponseCodec Instance = new Ros2Dsr_msgs2SrvGetInputRegisterFloat_ResponseCodec();

        private Ros2Dsr_msgs2SrvGetInputRegisterFloat_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/GetInputRegisterFloat_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_db86cc9f47469a5d595a6df3b10e546d227dca5dbad7a381ed600acc33e5d769";
        public const int MIN_WIRE_BYTES = 9, MAX_WIRE_BYTES = 9;

        public byte[] Encode(_Ros2Dsr_msgs2SrvGetInputRegisterFloat_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvGetInputRegisterFloat_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvGetInputRegisterFloat_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvGetInputRegisterFloat_Response value = ReadRos2Dsr_msgs2SrvGetInputRegisterFloat_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvGetInputRegisterFloat_Response(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvGetInputRegisterFloat_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
        double part1 = value.@value;
        writer.Float64(part1);
    }

    private static _Ros2Dsr_msgs2SrvGetInputRegisterFloat_Response ReadRos2Dsr_msgs2SrvGetInputRegisterFloat_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvGetInputRegisterFloat_Response();
        value.@success = ReadBool(reader);
        value.@value = reader.Float64();
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvGetInputRegisterInt_Request
    {
        public ushort @address = 0;
        public uint @timeout_ms = 0;

        public _Ros2Dsr_msgs2SrvGetInputRegisterInt_Request()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvGetInputRegisterInt_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvGetInputRegisterInt_Request>
    {
        public static readonly Ros2Dsr_msgs2SrvGetInputRegisterInt_RequestCodec Instance = new Ros2Dsr_msgs2SrvGetInputRegisterInt_RequestCodec();

        private Ros2Dsr_msgs2SrvGetInputRegisterInt_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/GetInputRegisterInt_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_6fd37a43a6ff9f007ab73847710554a1a594bc14722c9d3223dbaae55a4c073e";
        public const int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 6;

        public byte[] Encode(_Ros2Dsr_msgs2SrvGetInputRegisterInt_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvGetInputRegisterInt_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvGetInputRegisterInt_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvGetInputRegisterInt_Request value = ReadRos2Dsr_msgs2SrvGetInputRegisterInt_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvGetInputRegisterInt_Request(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvGetInputRegisterInt_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        ushort part0 = value.@address;
        writer.Unsigned(part0, 2);
        uint part1 = value.@timeout_ms;
        writer.Unsigned(part1, 4);
    }

    private static _Ros2Dsr_msgs2SrvGetInputRegisterInt_Request ReadRos2Dsr_msgs2SrvGetInputRegisterInt_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvGetInputRegisterInt_Request();
        value.@address = unchecked((ushort)reader.Unsigned(2));
        value.@timeout_ms = unchecked((uint)reader.Unsigned(4));
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvGetInputRegisterInt_Response
    {
        public bool @success = false;
        public int @value = 0;

        public _Ros2Dsr_msgs2SrvGetInputRegisterInt_Response()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvGetInputRegisterInt_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvGetInputRegisterInt_Response>
    {
        public static readonly Ros2Dsr_msgs2SrvGetInputRegisterInt_ResponseCodec Instance = new Ros2Dsr_msgs2SrvGetInputRegisterInt_ResponseCodec();

        private Ros2Dsr_msgs2SrvGetInputRegisterInt_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/GetInputRegisterInt_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_4a10e84cb1cc84e780ea1bf19a94fcf1e09e45da33805f631fa0e455447587f0";
        public const int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 5;

        public byte[] Encode(_Ros2Dsr_msgs2SrvGetInputRegisterInt_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvGetInputRegisterInt_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvGetInputRegisterInt_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvGetInputRegisterInt_Response value = ReadRos2Dsr_msgs2SrvGetInputRegisterInt_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvGetInputRegisterInt_Response(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvGetInputRegisterInt_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
        int part1 = value.@value;
        writer.Unsigned(unchecked((uint)part1), 4);
    }

    private static _Ros2Dsr_msgs2SrvGetInputRegisterInt_Response ReadRos2Dsr_msgs2SrvGetInputRegisterInt_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvGetInputRegisterInt_Response();
        value.@success = ReadBool(reader);
        value.@value = unchecked((int)reader.Unsigned(4));
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvGetJointTorque_Request
    {
        public _Ros2Dsr_msgs2SrvGetJointTorque_Request()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvGetJointTorque_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvGetJointTorque_Request>
    {
        public static readonly Ros2Dsr_msgs2SrvGetJointTorque_RequestCodec Instance = new Ros2Dsr_msgs2SrvGetJointTorque_RequestCodec();

        private Ros2Dsr_msgs2SrvGetJointTorque_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/GetJointTorque_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_a64a36840ca8a9251b84fed17cea36d2f1ce027543af9ed22e05231e2765957a";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public byte[] Encode(_Ros2Dsr_msgs2SrvGetJointTorque_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvGetJointTorque_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvGetJointTorque_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvGetJointTorque_Request value = ReadRos2Dsr_msgs2SrvGetJointTorque_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvGetJointTorque_Request(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvGetJointTorque_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    private static _Ros2Dsr_msgs2SrvGetJointTorque_Request ReadRos2Dsr_msgs2SrvGetJointTorque_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvGetJointTorque_Request();
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvGetJointTorque_Response
    {
        public double[] @jts = new double[6];
        public bool @success = false;

        public _Ros2Dsr_msgs2SrvGetJointTorque_Response()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvGetJointTorque_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvGetJointTorque_Response>
    {
        public static readonly Ros2Dsr_msgs2SrvGetJointTorque_ResponseCodec Instance = new Ros2Dsr_msgs2SrvGetJointTorque_ResponseCodec();

        private Ros2Dsr_msgs2SrvGetJointTorque_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/GetJointTorque_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_7d229e0af82b76fe9f92601976226517ee3a47fd36bf251f6190527ec2e2dc2a";
        public const int MIN_WIRE_BYTES = 49, MAX_WIRE_BYTES = 49;

        public byte[] Encode(_Ros2Dsr_msgs2SrvGetJointTorque_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvGetJointTorque_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvGetJointTorque_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvGetJointTorque_Response value = ReadRos2Dsr_msgs2SrvGetJointTorque_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvGetJointTorque_Response(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvGetJointTorque_Response value)
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

    private static _Ros2Dsr_msgs2SrvGetJointTorque_Response ReadRos2Dsr_msgs2SrvGetJointTorque_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvGetJointTorque_Response();
        value.@jts = new double[6];
        for(int index = 0; index < value.@jts.Length; ++index)
            value.@jts[index] = reader.Float64();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvGetLastAlarm_Request
    {
        public _Ros2Dsr_msgs2SrvGetLastAlarm_Request()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvGetLastAlarm_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvGetLastAlarm_Request>
    {
        public static readonly Ros2Dsr_msgs2SrvGetLastAlarm_RequestCodec Instance = new Ros2Dsr_msgs2SrvGetLastAlarm_RequestCodec();

        private Ros2Dsr_msgs2SrvGetLastAlarm_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/GetLastAlarm_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_6569afb5dceb62e7ee95948c1140bdf5d9dcfe8532b75922722be2b02f016fcf";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public byte[] Encode(_Ros2Dsr_msgs2SrvGetLastAlarm_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvGetLastAlarm_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvGetLastAlarm_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvGetLastAlarm_Request value = ReadRos2Dsr_msgs2SrvGetLastAlarm_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvGetLastAlarm_Request(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvGetLastAlarm_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    private static _Ros2Dsr_msgs2SrvGetLastAlarm_Request ReadRos2Dsr_msgs2SrvGetLastAlarm_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvGetLastAlarm_Request();
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvGetLastAlarm_Response
    {
        public _Ros2Dsr_msgs2MsgLogAlarm @log_alarm = new _Ros2Dsr_msgs2MsgLogAlarm();
        public bool @success = false;

        public _Ros2Dsr_msgs2SrvGetLastAlarm_Response()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvGetLastAlarm_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvGetLastAlarm_Response>
    {
        public static readonly Ros2Dsr_msgs2SrvGetLastAlarm_ResponseCodec Instance = new Ros2Dsr_msgs2SrvGetLastAlarm_ResponseCodec();

        private Ros2Dsr_msgs2SrvGetLastAlarm_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/GetLastAlarm_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_fa52a4735e3553d57e209a9307e120bd1731375d7b6864bf9b0415241527ee75";
        public const int MIN_WIRE_BYTES = 25, MAX_WIRE_BYTES = 793;

        public byte[] Encode(_Ros2Dsr_msgs2SrvGetLastAlarm_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvGetLastAlarm_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvGetLastAlarm_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvGetLastAlarm_Response value = ReadRos2Dsr_msgs2SrvGetLastAlarm_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvGetLastAlarm_Response(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvGetLastAlarm_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Dsr_msgs2MsgLogAlarm part0 = value.@log_alarm;
        WriteRos2Dsr_msgs2MsgLogAlarm(writer, part0);
        bool part1 = value.@success;
        writer.Unsigned(part1 ? 1UL : 0UL, 1);
    }

    private static _Ros2Dsr_msgs2SrvGetLastAlarm_Response ReadRos2Dsr_msgs2SrvGetLastAlarm_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvGetLastAlarm_Response();
        value.@log_alarm = ReadRos2Dsr_msgs2MsgLogAlarm(reader);
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvGetModbusInput_Request
    {
        public string @name = "";

        public _Ros2Dsr_msgs2SrvGetModbusInput_Request()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvGetModbusInput_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvGetModbusInput_Request>
    {
        public static readonly Ros2Dsr_msgs2SrvGetModbusInput_RequestCodec Instance = new Ros2Dsr_msgs2SrvGetModbusInput_RequestCodec();

        private Ros2Dsr_msgs2SrvGetModbusInput_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/GetModbusInput_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_d2d8933898289af4b6c70b9ed412b435e3cbcfe3d2dd7675ff743a8f122fb32d";
        public const int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 260;

        public byte[] Encode(_Ros2Dsr_msgs2SrvGetModbusInput_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvGetModbusInput_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvGetModbusInput_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvGetModbusInput_Request value = ReadRos2Dsr_msgs2SrvGetModbusInput_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvGetModbusInput_Request(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvGetModbusInput_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        string part0 = value.@name;
        WriteText(writer, part0, 256);
    }

    private static _Ros2Dsr_msgs2SrvGetModbusInput_Request ReadRos2Dsr_msgs2SrvGetModbusInput_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvGetModbusInput_Request();
        value.@name = ReadText(reader, 256);
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvGetModbusInput_Response
    {
        public int @value = 0;
        public bool @success = false;

        public _Ros2Dsr_msgs2SrvGetModbusInput_Response()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvGetModbusInput_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvGetModbusInput_Response>
    {
        public static readonly Ros2Dsr_msgs2SrvGetModbusInput_ResponseCodec Instance = new Ros2Dsr_msgs2SrvGetModbusInput_ResponseCodec();

        private Ros2Dsr_msgs2SrvGetModbusInput_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/GetModbusInput_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_de8c061ac9312f7d708a3419b0f191d2e11f1727c777b0eecf9b2c3d36253c4f";
        public const int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 5;

        public byte[] Encode(_Ros2Dsr_msgs2SrvGetModbusInput_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvGetModbusInput_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvGetModbusInput_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvGetModbusInput_Response value = ReadRos2Dsr_msgs2SrvGetModbusInput_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvGetModbusInput_Response(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvGetModbusInput_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        int part0 = value.@value;
        writer.Unsigned(unchecked((uint)part0), 4);
        bool part1 = value.@success;
        writer.Unsigned(part1 ? 1UL : 0UL, 1);
    }

    private static _Ros2Dsr_msgs2SrvGetModbusInput_Response ReadRos2Dsr_msgs2SrvGetModbusInput_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvGetModbusInput_Response();
        value.@value = unchecked((int)reader.Unsigned(4));
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvGetOrientationError_Request
    {
        public double[] @xd = new double[6];
        public double[] @xc = new double[6];
        public sbyte @axis = 0;

        public _Ros2Dsr_msgs2SrvGetOrientationError_Request()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvGetOrientationError_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvGetOrientationError_Request>
    {
        public static readonly Ros2Dsr_msgs2SrvGetOrientationError_RequestCodec Instance = new Ros2Dsr_msgs2SrvGetOrientationError_RequestCodec();

        private Ros2Dsr_msgs2SrvGetOrientationError_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/GetOrientationError_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_ed52ab6a577110781d73a51700a5617cf94898921e5bab39cb64e66b84a6781f";
        public const int MIN_WIRE_BYTES = 97, MAX_WIRE_BYTES = 97;

        public byte[] Encode(_Ros2Dsr_msgs2SrvGetOrientationError_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvGetOrientationError_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvGetOrientationError_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvGetOrientationError_Request value = ReadRos2Dsr_msgs2SrvGetOrientationError_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvGetOrientationError_Request(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvGetOrientationError_Request value)
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

    private static _Ros2Dsr_msgs2SrvGetOrientationError_Request ReadRos2Dsr_msgs2SrvGetOrientationError_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvGetOrientationError_Request();
        value.@xd = new double[6];
        for(int index = 0; index < value.@xd.Length; ++index)
            value.@xd[index] = reader.Float64();
        value.@xc = new double[6];
        for(int index = 0; index < value.@xc.Length; ++index)
            value.@xc[index] = reader.Float64();
        value.@axis = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvGetOrientationError_Response
    {
        public float @ori_error = 0;
        public bool @success = false;

        public _Ros2Dsr_msgs2SrvGetOrientationError_Response()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvGetOrientationError_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvGetOrientationError_Response>
    {
        public static readonly Ros2Dsr_msgs2SrvGetOrientationError_ResponseCodec Instance = new Ros2Dsr_msgs2SrvGetOrientationError_ResponseCodec();

        private Ros2Dsr_msgs2SrvGetOrientationError_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/GetOrientationError_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_ac13995c7c96b9dd8bc2c3ccc6eabfa4347c9e78872c16a6e6388f18d36c6983";
        public const int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 5;

        public byte[] Encode(_Ros2Dsr_msgs2SrvGetOrientationError_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvGetOrientationError_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvGetOrientationError_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvGetOrientationError_Response value = ReadRos2Dsr_msgs2SrvGetOrientationError_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvGetOrientationError_Response(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvGetOrientationError_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        float part0 = value.@ori_error;
        WriteFloat32(writer, part0);
        bool part1 = value.@success;
        writer.Unsigned(part1 ? 1UL : 0UL, 1);
    }

    private static _Ros2Dsr_msgs2SrvGetOrientationError_Response ReadRos2Dsr_msgs2SrvGetOrientationError_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvGetOrientationError_Response();
        value.@ori_error = ReadFloat32(reader);
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvGetOutputRegisterBit_Request
    {
        public ushort @address = 0;
        public uint @timeout_ms = 0;

        public _Ros2Dsr_msgs2SrvGetOutputRegisterBit_Request()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvGetOutputRegisterBit_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvGetOutputRegisterBit_Request>
    {
        public static readonly Ros2Dsr_msgs2SrvGetOutputRegisterBit_RequestCodec Instance = new Ros2Dsr_msgs2SrvGetOutputRegisterBit_RequestCodec();

        private Ros2Dsr_msgs2SrvGetOutputRegisterBit_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/GetOutputRegisterBit_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_6cd40872bca1d3fa7d7b84ead3e343ca62d7a5b60cdbf963e77f6078d8c98083";
        public const int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 6;

        public byte[] Encode(_Ros2Dsr_msgs2SrvGetOutputRegisterBit_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvGetOutputRegisterBit_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvGetOutputRegisterBit_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvGetOutputRegisterBit_Request value = ReadRos2Dsr_msgs2SrvGetOutputRegisterBit_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvGetOutputRegisterBit_Request(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvGetOutputRegisterBit_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        ushort part0 = value.@address;
        writer.Unsigned(part0, 2);
        uint part1 = value.@timeout_ms;
        writer.Unsigned(part1, 4);
    }

    private static _Ros2Dsr_msgs2SrvGetOutputRegisterBit_Request ReadRos2Dsr_msgs2SrvGetOutputRegisterBit_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvGetOutputRegisterBit_Request();
        value.@address = unchecked((ushort)reader.Unsigned(2));
        value.@timeout_ms = unchecked((uint)reader.Unsigned(4));
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvGetOutputRegisterBit_Response
    {
        public bool @success = false;
        public int @value = 0;

        public _Ros2Dsr_msgs2SrvGetOutputRegisterBit_Response()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvGetOutputRegisterBit_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvGetOutputRegisterBit_Response>
    {
        public static readonly Ros2Dsr_msgs2SrvGetOutputRegisterBit_ResponseCodec Instance = new Ros2Dsr_msgs2SrvGetOutputRegisterBit_ResponseCodec();

        private Ros2Dsr_msgs2SrvGetOutputRegisterBit_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/GetOutputRegisterBit_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_b877098bff97ac0e198a657581e4a76da6c2f2eeb46969fcd26ad447f1e19efa";
        public const int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 5;

        public byte[] Encode(_Ros2Dsr_msgs2SrvGetOutputRegisterBit_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvGetOutputRegisterBit_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvGetOutputRegisterBit_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvGetOutputRegisterBit_Response value = ReadRos2Dsr_msgs2SrvGetOutputRegisterBit_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvGetOutputRegisterBit_Response(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvGetOutputRegisterBit_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
        int part1 = value.@value;
        writer.Unsigned(unchecked((uint)part1), 4);
    }

    private static _Ros2Dsr_msgs2SrvGetOutputRegisterBit_Response ReadRos2Dsr_msgs2SrvGetOutputRegisterBit_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvGetOutputRegisterBit_Response();
        value.@success = ReadBool(reader);
        value.@value = unchecked((int)reader.Unsigned(4));
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvGetOutputRegisterFloat_Request
    {
        public ushort @address = 0;
        public uint @timeout_ms = 0;

        public _Ros2Dsr_msgs2SrvGetOutputRegisterFloat_Request()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvGetOutputRegisterFloat_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvGetOutputRegisterFloat_Request>
    {
        public static readonly Ros2Dsr_msgs2SrvGetOutputRegisterFloat_RequestCodec Instance = new Ros2Dsr_msgs2SrvGetOutputRegisterFloat_RequestCodec();

        private Ros2Dsr_msgs2SrvGetOutputRegisterFloat_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/GetOutputRegisterFloat_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_3f94d068d679b118d2b59fa33f60f189341c0ecd92bf11425d87807b2fde96d6";
        public const int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 6;

        public byte[] Encode(_Ros2Dsr_msgs2SrvGetOutputRegisterFloat_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvGetOutputRegisterFloat_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvGetOutputRegisterFloat_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvGetOutputRegisterFloat_Request value = ReadRos2Dsr_msgs2SrvGetOutputRegisterFloat_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvGetOutputRegisterFloat_Request(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvGetOutputRegisterFloat_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        ushort part0 = value.@address;
        writer.Unsigned(part0, 2);
        uint part1 = value.@timeout_ms;
        writer.Unsigned(part1, 4);
    }

    private static _Ros2Dsr_msgs2SrvGetOutputRegisterFloat_Request ReadRos2Dsr_msgs2SrvGetOutputRegisterFloat_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvGetOutputRegisterFloat_Request();
        value.@address = unchecked((ushort)reader.Unsigned(2));
        value.@timeout_ms = unchecked((uint)reader.Unsigned(4));
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvGetOutputRegisterFloat_Response
    {
        public bool @success = false;
        public double @value = 0;

        public _Ros2Dsr_msgs2SrvGetOutputRegisterFloat_Response()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvGetOutputRegisterFloat_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvGetOutputRegisterFloat_Response>
    {
        public static readonly Ros2Dsr_msgs2SrvGetOutputRegisterFloat_ResponseCodec Instance = new Ros2Dsr_msgs2SrvGetOutputRegisterFloat_ResponseCodec();

        private Ros2Dsr_msgs2SrvGetOutputRegisterFloat_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/GetOutputRegisterFloat_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_3000a283d591bd17a2303bdf11aea290c034c1fd7117988e66c88f592e721e68";
        public const int MIN_WIRE_BYTES = 9, MAX_WIRE_BYTES = 9;

        public byte[] Encode(_Ros2Dsr_msgs2SrvGetOutputRegisterFloat_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvGetOutputRegisterFloat_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvGetOutputRegisterFloat_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvGetOutputRegisterFloat_Response value = ReadRos2Dsr_msgs2SrvGetOutputRegisterFloat_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvGetOutputRegisterFloat_Response(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvGetOutputRegisterFloat_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
        double part1 = value.@value;
        writer.Float64(part1);
    }

    private static _Ros2Dsr_msgs2SrvGetOutputRegisterFloat_Response ReadRos2Dsr_msgs2SrvGetOutputRegisterFloat_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvGetOutputRegisterFloat_Response();
        value.@success = ReadBool(reader);
        value.@value = reader.Float64();
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvGetOutputRegisterInt_Request
    {
        public ushort @address = 0;
        public uint @timeout_ms = 0;

        public _Ros2Dsr_msgs2SrvGetOutputRegisterInt_Request()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvGetOutputRegisterInt_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvGetOutputRegisterInt_Request>
    {
        public static readonly Ros2Dsr_msgs2SrvGetOutputRegisterInt_RequestCodec Instance = new Ros2Dsr_msgs2SrvGetOutputRegisterInt_RequestCodec();

        private Ros2Dsr_msgs2SrvGetOutputRegisterInt_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/GetOutputRegisterInt_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_4607112e6d1de21f44ba61b1af7d51446414259a2ef365abdd37d4ff3bdff7f6";
        public const int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 6;

        public byte[] Encode(_Ros2Dsr_msgs2SrvGetOutputRegisterInt_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvGetOutputRegisterInt_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvGetOutputRegisterInt_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvGetOutputRegisterInt_Request value = ReadRos2Dsr_msgs2SrvGetOutputRegisterInt_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvGetOutputRegisterInt_Request(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvGetOutputRegisterInt_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        ushort part0 = value.@address;
        writer.Unsigned(part0, 2);
        uint part1 = value.@timeout_ms;
        writer.Unsigned(part1, 4);
    }

    private static _Ros2Dsr_msgs2SrvGetOutputRegisterInt_Request ReadRos2Dsr_msgs2SrvGetOutputRegisterInt_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvGetOutputRegisterInt_Request();
        value.@address = unchecked((ushort)reader.Unsigned(2));
        value.@timeout_ms = unchecked((uint)reader.Unsigned(4));
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvGetOutputRegisterInt_Response
    {
        public bool @success = false;
        public int @value = 0;

        public _Ros2Dsr_msgs2SrvGetOutputRegisterInt_Response()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvGetOutputRegisterInt_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvGetOutputRegisterInt_Response>
    {
        public static readonly Ros2Dsr_msgs2SrvGetOutputRegisterInt_ResponseCodec Instance = new Ros2Dsr_msgs2SrvGetOutputRegisterInt_ResponseCodec();

        private Ros2Dsr_msgs2SrvGetOutputRegisterInt_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/GetOutputRegisterInt_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_4d2643dccba189da62bfaf4103f670af774170b1c18e28a2ae112312df6ad691";
        public const int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 5;

        public byte[] Encode(_Ros2Dsr_msgs2SrvGetOutputRegisterInt_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvGetOutputRegisterInt_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvGetOutputRegisterInt_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvGetOutputRegisterInt_Response value = ReadRos2Dsr_msgs2SrvGetOutputRegisterInt_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvGetOutputRegisterInt_Response(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvGetOutputRegisterInt_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
        int part1 = value.@value;
        writer.Unsigned(unchecked((uint)part1), 4);
    }

    private static _Ros2Dsr_msgs2SrvGetOutputRegisterInt_Response ReadRos2Dsr_msgs2SrvGetOutputRegisterInt_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvGetOutputRegisterInt_Response();
        value.@success = ReadBool(reader);
        value.@value = unchecked((int)reader.Unsigned(4));
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvGetRobotLinkInfo_Request
    {
        public _Ros2Dsr_msgs2SrvGetRobotLinkInfo_Request()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvGetRobotLinkInfo_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvGetRobotLinkInfo_Request>
    {
        public static readonly Ros2Dsr_msgs2SrvGetRobotLinkInfo_RequestCodec Instance = new Ros2Dsr_msgs2SrvGetRobotLinkInfo_RequestCodec();

        private Ros2Dsr_msgs2SrvGetRobotLinkInfo_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/GetRobotLinkInfo_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_50bc4a4885829a821fa2a5bd1ad8b223f7b595344448fbdbb2fddf5ee75e17e1";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public byte[] Encode(_Ros2Dsr_msgs2SrvGetRobotLinkInfo_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvGetRobotLinkInfo_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvGetRobotLinkInfo_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvGetRobotLinkInfo_Request value = ReadRos2Dsr_msgs2SrvGetRobotLinkInfo_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvGetRobotLinkInfo_Request(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvGetRobotLinkInfo_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    private static _Ros2Dsr_msgs2SrvGetRobotLinkInfo_Request ReadRos2Dsr_msgs2SrvGetRobotLinkInfo_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvGetRobotLinkInfo_Request();
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvGetRobotLinkInfo_Response
    {
        public float[] @d = new float[6];
        public float[] @a = new float[6];
        public float[] @alpha = new float[6];
        public float[] @theta = new float[6];
        public float[] @offset = new float[6];
        public float @gradient = 0;
        public float @rotation = 0;
        public bool @success = false;

        public _Ros2Dsr_msgs2SrvGetRobotLinkInfo_Response()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvGetRobotLinkInfo_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvGetRobotLinkInfo_Response>
    {
        public static readonly Ros2Dsr_msgs2SrvGetRobotLinkInfo_ResponseCodec Instance = new Ros2Dsr_msgs2SrvGetRobotLinkInfo_ResponseCodec();

        private Ros2Dsr_msgs2SrvGetRobotLinkInfo_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/GetRobotLinkInfo_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_aaf1a964ea2e5d6a049a074bd4b01538ef0b43b234da9de6b034a67524087641";
        public const int MIN_WIRE_BYTES = 129, MAX_WIRE_BYTES = 129;

        public byte[] Encode(_Ros2Dsr_msgs2SrvGetRobotLinkInfo_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvGetRobotLinkInfo_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvGetRobotLinkInfo_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvGetRobotLinkInfo_Response value = ReadRos2Dsr_msgs2SrvGetRobotLinkInfo_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvGetRobotLinkInfo_Response(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvGetRobotLinkInfo_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        float[] part0 = value.@d;
        if(part0 == null || part0.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part0.Length; ++index)
        {
            float element = part0[index];
            WriteFloat32(writer, element);
        }
        float[] part1 = value.@a;
        if(part1 == null || part1.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part1.Length; ++index)
        {
            float element = part1[index];
            WriteFloat32(writer, element);
        }
        float[] part2 = value.@alpha;
        if(part2 == null || part2.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part2.Length; ++index)
        {
            float element = part2[index];
            WriteFloat32(writer, element);
        }
        float[] part3 = value.@theta;
        if(part3 == null || part3.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part3.Length; ++index)
        {
            float element = part3[index];
            WriteFloat32(writer, element);
        }
        float[] part4 = value.@offset;
        if(part4 == null || part4.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part4.Length; ++index)
        {
            float element = part4[index];
            WriteFloat32(writer, element);
        }
        float part5 = value.@gradient;
        WriteFloat32(writer, part5);
        float part6 = value.@rotation;
        WriteFloat32(writer, part6);
        bool part7 = value.@success;
        writer.Unsigned(part7 ? 1UL : 0UL, 1);
    }

    private static _Ros2Dsr_msgs2SrvGetRobotLinkInfo_Response ReadRos2Dsr_msgs2SrvGetRobotLinkInfo_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvGetRobotLinkInfo_Response();
        value.@d = new float[6];
        for(int index = 0; index < value.@d.Length; ++index)
            value.@d[index] = ReadFloat32(reader);
        value.@a = new float[6];
        for(int index = 0; index < value.@a.Length; ++index)
            value.@a[index] = ReadFloat32(reader);
        value.@alpha = new float[6];
        for(int index = 0; index < value.@alpha.Length; ++index)
            value.@alpha[index] = ReadFloat32(reader);
        value.@theta = new float[6];
        for(int index = 0; index < value.@theta.Length; ++index)
            value.@theta[index] = ReadFloat32(reader);
        value.@offset = new float[6];
        for(int index = 0; index < value.@offset.Length; ++index)
            value.@offset[index] = ReadFloat32(reader);
        value.@gradient = ReadFloat32(reader);
        value.@rotation = ReadFloat32(reader);
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvGetRobotMode_Request
    {
        public _Ros2Dsr_msgs2SrvGetRobotMode_Request()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvGetRobotMode_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvGetRobotMode_Request>
    {
        public static readonly Ros2Dsr_msgs2SrvGetRobotMode_RequestCodec Instance = new Ros2Dsr_msgs2SrvGetRobotMode_RequestCodec();

        private Ros2Dsr_msgs2SrvGetRobotMode_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/GetRobotMode_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_945dc18b9de1cec15d388179c6a4abf95a653770164dcac30828f15912ea0136";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public byte[] Encode(_Ros2Dsr_msgs2SrvGetRobotMode_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvGetRobotMode_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvGetRobotMode_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvGetRobotMode_Request value = ReadRos2Dsr_msgs2SrvGetRobotMode_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvGetRobotMode_Request(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvGetRobotMode_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    private static _Ros2Dsr_msgs2SrvGetRobotMode_Request ReadRos2Dsr_msgs2SrvGetRobotMode_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvGetRobotMode_Request();
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvGetRobotMode_Response
    {
        public sbyte @robot_mode = 0;
        public bool @success = false;

        public _Ros2Dsr_msgs2SrvGetRobotMode_Response()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvGetRobotMode_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvGetRobotMode_Response>
    {
        public static readonly Ros2Dsr_msgs2SrvGetRobotMode_ResponseCodec Instance = new Ros2Dsr_msgs2SrvGetRobotMode_ResponseCodec();

        private Ros2Dsr_msgs2SrvGetRobotMode_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/GetRobotMode_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_91dc6499a4e962f46b46fea554ae304a47ecb4095b47c6d480c866059850aa26";
        public const int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;

        public byte[] Encode(_Ros2Dsr_msgs2SrvGetRobotMode_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvGetRobotMode_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvGetRobotMode_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvGetRobotMode_Response value = ReadRos2Dsr_msgs2SrvGetRobotMode_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvGetRobotMode_Response(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvGetRobotMode_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        sbyte part0 = value.@robot_mode;
        writer.Unsigned(unchecked((byte)part0), 1);
        bool part1 = value.@success;
        writer.Unsigned(part1 ? 1UL : 0UL, 1);
    }

    private static _Ros2Dsr_msgs2SrvGetRobotMode_Response ReadRos2Dsr_msgs2SrvGetRobotMode_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvGetRobotMode_Response();
        value.@robot_mode = unchecked((sbyte)reader.Unsigned(1));
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvGetRobotSpeedMode_Request
    {
        public _Ros2Dsr_msgs2SrvGetRobotSpeedMode_Request()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvGetRobotSpeedMode_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvGetRobotSpeedMode_Request>
    {
        public static readonly Ros2Dsr_msgs2SrvGetRobotSpeedMode_RequestCodec Instance = new Ros2Dsr_msgs2SrvGetRobotSpeedMode_RequestCodec();

        private Ros2Dsr_msgs2SrvGetRobotSpeedMode_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/GetRobotSpeedMode_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_1b6760ed64ce308e6189122e754bab03208f5e19a6e4704acf21952abdf37e7e";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public byte[] Encode(_Ros2Dsr_msgs2SrvGetRobotSpeedMode_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvGetRobotSpeedMode_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvGetRobotSpeedMode_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvGetRobotSpeedMode_Request value = ReadRos2Dsr_msgs2SrvGetRobotSpeedMode_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvGetRobotSpeedMode_Request(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvGetRobotSpeedMode_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    private static _Ros2Dsr_msgs2SrvGetRobotSpeedMode_Request ReadRos2Dsr_msgs2SrvGetRobotSpeedMode_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvGetRobotSpeedMode_Request();
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvGetRobotSpeedMode_Response
    {
        public sbyte @speed_mode = 0;
        public bool @success = false;

        public _Ros2Dsr_msgs2SrvGetRobotSpeedMode_Response()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvGetRobotSpeedMode_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvGetRobotSpeedMode_Response>
    {
        public static readonly Ros2Dsr_msgs2SrvGetRobotSpeedMode_ResponseCodec Instance = new Ros2Dsr_msgs2SrvGetRobotSpeedMode_ResponseCodec();

        private Ros2Dsr_msgs2SrvGetRobotSpeedMode_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/GetRobotSpeedMode_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_6eff9e2138055e3845f351abdba3189c47452903dadeaf6760f781a071543947";
        public const int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;

        public byte[] Encode(_Ros2Dsr_msgs2SrvGetRobotSpeedMode_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvGetRobotSpeedMode_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvGetRobotSpeedMode_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvGetRobotSpeedMode_Response value = ReadRos2Dsr_msgs2SrvGetRobotSpeedMode_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvGetRobotSpeedMode_Response(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvGetRobotSpeedMode_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        sbyte part0 = value.@speed_mode;
        writer.Unsigned(unchecked((byte)part0), 1);
        bool part1 = value.@success;
        writer.Unsigned(part1 ? 1UL : 0UL, 1);
    }

    private static _Ros2Dsr_msgs2SrvGetRobotSpeedMode_Response ReadRos2Dsr_msgs2SrvGetRobotSpeedMode_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvGetRobotSpeedMode_Response();
        value.@speed_mode = unchecked((sbyte)reader.Unsigned(1));
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvGetRobotState_Request
    {
        public _Ros2Dsr_msgs2SrvGetRobotState_Request()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvGetRobotState_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvGetRobotState_Request>
    {
        public static readonly Ros2Dsr_msgs2SrvGetRobotState_RequestCodec Instance = new Ros2Dsr_msgs2SrvGetRobotState_RequestCodec();

        private Ros2Dsr_msgs2SrvGetRobotState_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/GetRobotState_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_b4e5f89f15b92b48be3a1282f4002b7abafeb141658eac1c0b804c9232062b50";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public byte[] Encode(_Ros2Dsr_msgs2SrvGetRobotState_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvGetRobotState_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvGetRobotState_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvGetRobotState_Request value = ReadRos2Dsr_msgs2SrvGetRobotState_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvGetRobotState_Request(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvGetRobotState_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    private static _Ros2Dsr_msgs2SrvGetRobotState_Request ReadRos2Dsr_msgs2SrvGetRobotState_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvGetRobotState_Request();
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvGetRobotState_Response
    {
        public sbyte @robot_state = 0;
        public bool @success = false;

        public _Ros2Dsr_msgs2SrvGetRobotState_Response()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvGetRobotState_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvGetRobotState_Response>
    {
        public static readonly Ros2Dsr_msgs2SrvGetRobotState_ResponseCodec Instance = new Ros2Dsr_msgs2SrvGetRobotState_ResponseCodec();

        private Ros2Dsr_msgs2SrvGetRobotState_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/GetRobotState_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_d5bf5bb656a0ac4a621e7e50f40b6fb41ae89cbb4d5b04bc1275815bbb0ab257";
        public const int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;

        public byte[] Encode(_Ros2Dsr_msgs2SrvGetRobotState_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvGetRobotState_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvGetRobotState_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvGetRobotState_Response value = ReadRos2Dsr_msgs2SrvGetRobotState_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvGetRobotState_Response(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvGetRobotState_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        sbyte part0 = value.@robot_state;
        writer.Unsigned(unchecked((byte)part0), 1);
        bool part1 = value.@success;
        writer.Unsigned(part1 ? 1UL : 0UL, 1);
    }

    private static _Ros2Dsr_msgs2SrvGetRobotState_Response ReadRos2Dsr_msgs2SrvGetRobotState_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvGetRobotState_Response();
        value.@robot_state = unchecked((sbyte)reader.Unsigned(1));
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvGetRobotSystem_Request
    {
        public _Ros2Dsr_msgs2SrvGetRobotSystem_Request()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvGetRobotSystem_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvGetRobotSystem_Request>
    {
        public static readonly Ros2Dsr_msgs2SrvGetRobotSystem_RequestCodec Instance = new Ros2Dsr_msgs2SrvGetRobotSystem_RequestCodec();

        private Ros2Dsr_msgs2SrvGetRobotSystem_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/GetRobotSystem_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_6d6d5428b67062be616f12385ede2568624ac78d83a1b6e430763dc2f0710829";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public byte[] Encode(_Ros2Dsr_msgs2SrvGetRobotSystem_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvGetRobotSystem_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvGetRobotSystem_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvGetRobotSystem_Request value = ReadRos2Dsr_msgs2SrvGetRobotSystem_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvGetRobotSystem_Request(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvGetRobotSystem_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    private static _Ros2Dsr_msgs2SrvGetRobotSystem_Request ReadRos2Dsr_msgs2SrvGetRobotSystem_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvGetRobotSystem_Request();
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvGetRobotSystem_Response
    {
        public sbyte @robot_system = 0;
        public bool @success = false;

        public _Ros2Dsr_msgs2SrvGetRobotSystem_Response()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvGetRobotSystem_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvGetRobotSystem_Response>
    {
        public static readonly Ros2Dsr_msgs2SrvGetRobotSystem_ResponseCodec Instance = new Ros2Dsr_msgs2SrvGetRobotSystem_ResponseCodec();

        private Ros2Dsr_msgs2SrvGetRobotSystem_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/GetRobotSystem_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_faf6022901539dd3edd6b53d4a0c6d3eea0a210f2c795bf46a67e0243a0d8dd0";
        public const int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;

        public byte[] Encode(_Ros2Dsr_msgs2SrvGetRobotSystem_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvGetRobotSystem_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvGetRobotSystem_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvGetRobotSystem_Response value = ReadRos2Dsr_msgs2SrvGetRobotSystem_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvGetRobotSystem_Response(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvGetRobotSystem_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        sbyte part0 = value.@robot_system;
        writer.Unsigned(unchecked((byte)part0), 1);
        bool part1 = value.@success;
        writer.Unsigned(part1 ? 1UL : 0UL, 1);
    }

    private static _Ros2Dsr_msgs2SrvGetRobotSystem_Response ReadRos2Dsr_msgs2SrvGetRobotSystem_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvGetRobotSystem_Response();
        value.@robot_system = unchecked((sbyte)reader.Unsigned(1));
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvGetRtControlInputDataList_Request
    {
        public string @version = "";

        public _Ros2Dsr_msgs2SrvGetRtControlInputDataList_Request()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvGetRtControlInputDataList_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvGetRtControlInputDataList_Request>
    {
        public static readonly Ros2Dsr_msgs2SrvGetRtControlInputDataList_RequestCodec Instance = new Ros2Dsr_msgs2SrvGetRtControlInputDataList_RequestCodec();

        private Ros2Dsr_msgs2SrvGetRtControlInputDataList_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/GetRtControlInputDataList_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_016df21af56e6e0e76c5f9f24c851caee712b5af235bda04adde82eef33f6a60";
        public const int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 260;

        public byte[] Encode(_Ros2Dsr_msgs2SrvGetRtControlInputDataList_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvGetRtControlInputDataList_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvGetRtControlInputDataList_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvGetRtControlInputDataList_Request value = ReadRos2Dsr_msgs2SrvGetRtControlInputDataList_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvGetRtControlInputDataList_Request(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvGetRtControlInputDataList_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        string part0 = value.@version;
        WriteText(writer, part0, 256);
    }

    private static _Ros2Dsr_msgs2SrvGetRtControlInputDataList_Request ReadRos2Dsr_msgs2SrvGetRtControlInputDataList_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvGetRtControlInputDataList_Request();
        value.@version = ReadText(reader, 256);
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvGetRtControlInputDataList_Response
    {
        public bool @success = false;
        public string @data = "";

        public _Ros2Dsr_msgs2SrvGetRtControlInputDataList_Response()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvGetRtControlInputDataList_ResponseCodec :
        global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvGetRtControlInputDataList_Response>
    {
        public static readonly Ros2Dsr_msgs2SrvGetRtControlInputDataList_ResponseCodec Instance = new Ros2Dsr_msgs2SrvGetRtControlInputDataList_ResponseCodec();

        private Ros2Dsr_msgs2SrvGetRtControlInputDataList_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/GetRtControlInputDataList_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_dad3b9ec5d048ea97669bd52fa94e60abd794f44150599c3b38179e7f3425831";
        public const int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 261;

        public byte[] Encode(_Ros2Dsr_msgs2SrvGetRtControlInputDataList_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvGetRtControlInputDataList_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvGetRtControlInputDataList_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvGetRtControlInputDataList_Response value = ReadRos2Dsr_msgs2SrvGetRtControlInputDataList_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvGetRtControlInputDataList_Response(_Codecs.Writer writer,
                                                                                _Ros2Dsr_msgs2SrvGetRtControlInputDataList_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
        string part1 = value.@data;
        WriteText(writer, part1, 256);
    }

    private static _Ros2Dsr_msgs2SrvGetRtControlInputDataList_Response ReadRos2Dsr_msgs2SrvGetRtControlInputDataList_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvGetRtControlInputDataList_Response();
        value.@success = ReadBool(reader);
        value.@data = ReadText(reader, 256);
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvGetRtControlInputVersionList_Request
    {
        public _Ros2Dsr_msgs2SrvGetRtControlInputVersionList_Request()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvGetRtControlInputVersionList_RequestCodec :
        global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvGetRtControlInputVersionList_Request>
    {
        public static readonly Ros2Dsr_msgs2SrvGetRtControlInputVersionList_RequestCodec Instance =
            new Ros2Dsr_msgs2SrvGetRtControlInputVersionList_RequestCodec();

        private Ros2Dsr_msgs2SrvGetRtControlInputVersionList_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/GetRtControlInputVersionList_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_e25f15b810ebadb6eceb8e90bd8aedc9f47b177f5ccd16a6d824cac69e612a96";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public byte[] Encode(_Ros2Dsr_msgs2SrvGetRtControlInputVersionList_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvGetRtControlInputVersionList_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvGetRtControlInputVersionList_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvGetRtControlInputVersionList_Request value = ReadRos2Dsr_msgs2SrvGetRtControlInputVersionList_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvGetRtControlInputVersionList_Request(_Codecs.Writer writer,
                                                                                  _Ros2Dsr_msgs2SrvGetRtControlInputVersionList_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    private static _Ros2Dsr_msgs2SrvGetRtControlInputVersionList_Request ReadRos2Dsr_msgs2SrvGetRtControlInputVersionList_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvGetRtControlInputVersionList_Request();
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvGetRtControlInputVersionList_Response
    {
        public bool @success = false;
        public string @version = "";

        public _Ros2Dsr_msgs2SrvGetRtControlInputVersionList_Response()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvGetRtControlInputVersionList_ResponseCodec :
        global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvGetRtControlInputVersionList_Response>
    {
        public static readonly Ros2Dsr_msgs2SrvGetRtControlInputVersionList_ResponseCodec Instance =
            new Ros2Dsr_msgs2SrvGetRtControlInputVersionList_ResponseCodec();

        private Ros2Dsr_msgs2SrvGetRtControlInputVersionList_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/GetRtControlInputVersionList_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_39f873a075b2571286ea652cbbc47696b8636138362ba898ce1f06c8fa0a368b";
        public const int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 261;

        public byte[] Encode(_Ros2Dsr_msgs2SrvGetRtControlInputVersionList_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvGetRtControlInputVersionList_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvGetRtControlInputVersionList_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvGetRtControlInputVersionList_Response value = ReadRos2Dsr_msgs2SrvGetRtControlInputVersionList_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvGetRtControlInputVersionList_Response(_Codecs.Writer writer,
                                                                                   _Ros2Dsr_msgs2SrvGetRtControlInputVersionList_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
        string part1 = value.@version;
        WriteText(writer, part1, 256);
    }

    private static _Ros2Dsr_msgs2SrvGetRtControlInputVersionList_Response ReadRos2Dsr_msgs2SrvGetRtControlInputVersionList_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvGetRtControlInputVersionList_Response();
        value.@success = ReadBool(reader);
        value.@version = ReadText(reader, 256);
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvGetRtControlOutputDataList_Request
    {
        public string @version = "";

        public _Ros2Dsr_msgs2SrvGetRtControlOutputDataList_Request()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvGetRtControlOutputDataList_RequestCodec :
        global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvGetRtControlOutputDataList_Request>
    {
        public static readonly Ros2Dsr_msgs2SrvGetRtControlOutputDataList_RequestCodec Instance = new Ros2Dsr_msgs2SrvGetRtControlOutputDataList_RequestCodec();

        private Ros2Dsr_msgs2SrvGetRtControlOutputDataList_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/GetRtControlOutputDataList_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_b7d3952dd7afa1da9b2a17959d25d20c570eb6195eab0fa4f181fd087555869c";
        public const int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 260;

        public byte[] Encode(_Ros2Dsr_msgs2SrvGetRtControlOutputDataList_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvGetRtControlOutputDataList_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvGetRtControlOutputDataList_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvGetRtControlOutputDataList_Request value = ReadRos2Dsr_msgs2SrvGetRtControlOutputDataList_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvGetRtControlOutputDataList_Request(_Codecs.Writer writer,
                                                                                _Ros2Dsr_msgs2SrvGetRtControlOutputDataList_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        string part0 = value.@version;
        WriteText(writer, part0, 256);
    }

    private static _Ros2Dsr_msgs2SrvGetRtControlOutputDataList_Request ReadRos2Dsr_msgs2SrvGetRtControlOutputDataList_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvGetRtControlOutputDataList_Request();
        value.@version = ReadText(reader, 256);
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvGetRtControlOutputDataList_Response
    {
        public bool @success = false;
        public string @data = "";

        public _Ros2Dsr_msgs2SrvGetRtControlOutputDataList_Response()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvGetRtControlOutputDataList_ResponseCodec :
        global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvGetRtControlOutputDataList_Response>
    {
        public static readonly Ros2Dsr_msgs2SrvGetRtControlOutputDataList_ResponseCodec Instance =
            new Ros2Dsr_msgs2SrvGetRtControlOutputDataList_ResponseCodec();

        private Ros2Dsr_msgs2SrvGetRtControlOutputDataList_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/GetRtControlOutputDataList_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_a8663675cd68ff265c06580f16d46a9adaf36be969639c9df85110183eb7a14d";
        public const int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 261;

        public byte[] Encode(_Ros2Dsr_msgs2SrvGetRtControlOutputDataList_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvGetRtControlOutputDataList_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvGetRtControlOutputDataList_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvGetRtControlOutputDataList_Response value = ReadRos2Dsr_msgs2SrvGetRtControlOutputDataList_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvGetRtControlOutputDataList_Response(_Codecs.Writer writer,
                                                                                 _Ros2Dsr_msgs2SrvGetRtControlOutputDataList_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
        string part1 = value.@data;
        WriteText(writer, part1, 256);
    }

    private static _Ros2Dsr_msgs2SrvGetRtControlOutputDataList_Response ReadRos2Dsr_msgs2SrvGetRtControlOutputDataList_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvGetRtControlOutputDataList_Response();
        value.@success = ReadBool(reader);
        value.@data = ReadText(reader, 256);
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvGetRtControlOutputVersionList_Request
    {
        public _Ros2Dsr_msgs2SrvGetRtControlOutputVersionList_Request()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvGetRtControlOutputVersionList_RequestCodec :
        global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvGetRtControlOutputVersionList_Request>
    {
        public static readonly Ros2Dsr_msgs2SrvGetRtControlOutputVersionList_RequestCodec Instance =
            new Ros2Dsr_msgs2SrvGetRtControlOutputVersionList_RequestCodec();

        private Ros2Dsr_msgs2SrvGetRtControlOutputVersionList_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/GetRtControlOutputVersionList_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_401ad45a4fa41515c9aef3432ec08cb280885d54582e8c1c81f9f079352cb5e6";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public byte[] Encode(_Ros2Dsr_msgs2SrvGetRtControlOutputVersionList_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvGetRtControlOutputVersionList_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvGetRtControlOutputVersionList_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvGetRtControlOutputVersionList_Request value = ReadRos2Dsr_msgs2SrvGetRtControlOutputVersionList_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvGetRtControlOutputVersionList_Request(_Codecs.Writer writer,
                                                                                   _Ros2Dsr_msgs2SrvGetRtControlOutputVersionList_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    private static _Ros2Dsr_msgs2SrvGetRtControlOutputVersionList_Request ReadRos2Dsr_msgs2SrvGetRtControlOutputVersionList_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvGetRtControlOutputVersionList_Request();
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvGetRtControlOutputVersionList_Response
    {
        public bool @success = false;
        public string @version = "";

        public _Ros2Dsr_msgs2SrvGetRtControlOutputVersionList_Response()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvGetRtControlOutputVersionList_ResponseCodec :
        global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvGetRtControlOutputVersionList_Response>
    {
        public static readonly Ros2Dsr_msgs2SrvGetRtControlOutputVersionList_ResponseCodec Instance =
            new Ros2Dsr_msgs2SrvGetRtControlOutputVersionList_ResponseCodec();

        private Ros2Dsr_msgs2SrvGetRtControlOutputVersionList_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/GetRtControlOutputVersionList_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_a87c62fbcee2779427d535be08b8b30ebeaecc4450ee18208def8c19fbdd42b8";
        public const int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 261;

        public byte[] Encode(_Ros2Dsr_msgs2SrvGetRtControlOutputVersionList_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvGetRtControlOutputVersionList_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvGetRtControlOutputVersionList_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvGetRtControlOutputVersionList_Response value = ReadRos2Dsr_msgs2SrvGetRtControlOutputVersionList_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvGetRtControlOutputVersionList_Response(_Codecs.Writer writer,
                                                                                    _Ros2Dsr_msgs2SrvGetRtControlOutputVersionList_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
        string part1 = value.@version;
        WriteText(writer, part1, 256);
    }

    private static _Ros2Dsr_msgs2SrvGetRtControlOutputVersionList_Response ReadRos2Dsr_msgs2SrvGetRtControlOutputVersionList_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvGetRtControlOutputVersionList_Response();
        value.@success = ReadBool(reader);
        value.@version = ReadText(reader, 256);
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvGetSolutionSpace_Request
    {
        public double[] @pos = new double[6];

        public _Ros2Dsr_msgs2SrvGetSolutionSpace_Request()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvGetSolutionSpace_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvGetSolutionSpace_Request>
    {
        public static readonly Ros2Dsr_msgs2SrvGetSolutionSpace_RequestCodec Instance = new Ros2Dsr_msgs2SrvGetSolutionSpace_RequestCodec();

        private Ros2Dsr_msgs2SrvGetSolutionSpace_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/GetSolutionSpace_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_7893e38212d85c4a6f9937711ca0209c069691b09616e08462b60253a0c75ef3";
        public const int MIN_WIRE_BYTES = 48, MAX_WIRE_BYTES = 48;

        public byte[] Encode(_Ros2Dsr_msgs2SrvGetSolutionSpace_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvGetSolutionSpace_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvGetSolutionSpace_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvGetSolutionSpace_Request value = ReadRos2Dsr_msgs2SrvGetSolutionSpace_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvGetSolutionSpace_Request(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvGetSolutionSpace_Request value)
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

    private static _Ros2Dsr_msgs2SrvGetSolutionSpace_Request ReadRos2Dsr_msgs2SrvGetSolutionSpace_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvGetSolutionSpace_Request();
        value.@pos = new double[6];
        for(int index = 0; index < value.@pos.Length; ++index)
            value.@pos[index] = reader.Float64();
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvGetSolutionSpace_Response
    {
        public sbyte @sol_space = 0;
        public bool @success = false;

        public _Ros2Dsr_msgs2SrvGetSolutionSpace_Response()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvGetSolutionSpace_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvGetSolutionSpace_Response>
    {
        public static readonly Ros2Dsr_msgs2SrvGetSolutionSpace_ResponseCodec Instance = new Ros2Dsr_msgs2SrvGetSolutionSpace_ResponseCodec();

        private Ros2Dsr_msgs2SrvGetSolutionSpace_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/GetSolutionSpace_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_b112e71516effa144d0c8857a21a18fa0355208ea4980f8b941190c070c0243a";
        public const int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;

        public byte[] Encode(_Ros2Dsr_msgs2SrvGetSolutionSpace_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvGetSolutionSpace_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvGetSolutionSpace_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvGetSolutionSpace_Response value = ReadRos2Dsr_msgs2SrvGetSolutionSpace_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvGetSolutionSpace_Response(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvGetSolutionSpace_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        sbyte part0 = value.@sol_space;
        writer.Unsigned(unchecked((byte)part0), 1);
        bool part1 = value.@success;
        writer.Unsigned(part1 ? 1UL : 0UL, 1);
    }

    private static _Ros2Dsr_msgs2SrvGetSolutionSpace_Response ReadRos2Dsr_msgs2SrvGetSolutionSpace_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvGetSolutionSpace_Response();
        value.@sol_space = unchecked((sbyte)reader.Unsigned(1));
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvGetToolDigitalInput_Request
    {
        public sbyte @index = 0;

        public _Ros2Dsr_msgs2SrvGetToolDigitalInput_Request()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvGetToolDigitalInput_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvGetToolDigitalInput_Request>
    {
        public static readonly Ros2Dsr_msgs2SrvGetToolDigitalInput_RequestCodec Instance = new Ros2Dsr_msgs2SrvGetToolDigitalInput_RequestCodec();

        private Ros2Dsr_msgs2SrvGetToolDigitalInput_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/GetToolDigitalInput_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_13280849feec7050bd6edcf5a966a42315524727ff31694af91fa240a9224603";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros2Dsr_msgs2SrvGetToolDigitalInput_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvGetToolDigitalInput_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvGetToolDigitalInput_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvGetToolDigitalInput_Request value = ReadRos2Dsr_msgs2SrvGetToolDigitalInput_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvGetToolDigitalInput_Request(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvGetToolDigitalInput_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        sbyte part0 = value.@index;
        writer.Unsigned(unchecked((byte)part0), 1);
    }

    private static _Ros2Dsr_msgs2SrvGetToolDigitalInput_Request ReadRos2Dsr_msgs2SrvGetToolDigitalInput_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvGetToolDigitalInput_Request();
        value.@index = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvGetToolDigitalInput_Response
    {
        public sbyte @value = 0;
        public bool @success = false;

        public _Ros2Dsr_msgs2SrvGetToolDigitalInput_Response()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvGetToolDigitalInput_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvGetToolDigitalInput_Response>
    {
        public static readonly Ros2Dsr_msgs2SrvGetToolDigitalInput_ResponseCodec Instance = new Ros2Dsr_msgs2SrvGetToolDigitalInput_ResponseCodec();

        private Ros2Dsr_msgs2SrvGetToolDigitalInput_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/GetToolDigitalInput_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_109edb5c9f363f7ca1558958cde4c402e30ba4875d2845db5ae1f5c2b2c5356e";
        public const int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;

        public byte[] Encode(_Ros2Dsr_msgs2SrvGetToolDigitalInput_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvGetToolDigitalInput_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvGetToolDigitalInput_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvGetToolDigitalInput_Response value = ReadRos2Dsr_msgs2SrvGetToolDigitalInput_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvGetToolDigitalInput_Response(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvGetToolDigitalInput_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        sbyte part0 = value.@value;
        writer.Unsigned(unchecked((byte)part0), 1);
        bool part1 = value.@success;
        writer.Unsigned(part1 ? 1UL : 0UL, 1);
    }

    private static _Ros2Dsr_msgs2SrvGetToolDigitalInput_Response ReadRos2Dsr_msgs2SrvGetToolDigitalInput_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvGetToolDigitalInput_Response();
        value.@value = unchecked((sbyte)reader.Unsigned(1));
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvGetToolDigitalOutput_Request
    {
        public sbyte @index = 0;

        public _Ros2Dsr_msgs2SrvGetToolDigitalOutput_Request()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvGetToolDigitalOutput_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvGetToolDigitalOutput_Request>
    {
        public static readonly Ros2Dsr_msgs2SrvGetToolDigitalOutput_RequestCodec Instance = new Ros2Dsr_msgs2SrvGetToolDigitalOutput_RequestCodec();

        private Ros2Dsr_msgs2SrvGetToolDigitalOutput_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/GetToolDigitalOutput_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_62cc891eb1bc8b7657996a2a9c5ff11a20a53bb1d38c83080936d0ec0a41c641";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros2Dsr_msgs2SrvGetToolDigitalOutput_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvGetToolDigitalOutput_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvGetToolDigitalOutput_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvGetToolDigitalOutput_Request value = ReadRos2Dsr_msgs2SrvGetToolDigitalOutput_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvGetToolDigitalOutput_Request(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvGetToolDigitalOutput_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        sbyte part0 = value.@index;
        writer.Unsigned(unchecked((byte)part0), 1);
    }

    private static _Ros2Dsr_msgs2SrvGetToolDigitalOutput_Request ReadRos2Dsr_msgs2SrvGetToolDigitalOutput_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvGetToolDigitalOutput_Request();
        value.@index = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvGetToolDigitalOutput_Response
    {
        public sbyte @value = 0;
        public bool @success = false;

        public _Ros2Dsr_msgs2SrvGetToolDigitalOutput_Response()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvGetToolDigitalOutput_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvGetToolDigitalOutput_Response>
    {
        public static readonly Ros2Dsr_msgs2SrvGetToolDigitalOutput_ResponseCodec Instance = new Ros2Dsr_msgs2SrvGetToolDigitalOutput_ResponseCodec();

        private Ros2Dsr_msgs2SrvGetToolDigitalOutput_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/GetToolDigitalOutput_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_7178715d835fca1f2f77ffed810b4f85ecd661168704df869a9ce4dffeb9c1a8";
        public const int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;

        public byte[] Encode(_Ros2Dsr_msgs2SrvGetToolDigitalOutput_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvGetToolDigitalOutput_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvGetToolDigitalOutput_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvGetToolDigitalOutput_Response value = ReadRos2Dsr_msgs2SrvGetToolDigitalOutput_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvGetToolDigitalOutput_Response(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvGetToolDigitalOutput_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        sbyte part0 = value.@value;
        writer.Unsigned(unchecked((byte)part0), 1);
        bool part1 = value.@success;
        writer.Unsigned(part1 ? 1UL : 0UL, 1);
    }

    private static _Ros2Dsr_msgs2SrvGetToolDigitalOutput_Response ReadRos2Dsr_msgs2SrvGetToolDigitalOutput_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvGetToolDigitalOutput_Response();
        value.@value = unchecked((sbyte)reader.Unsigned(1));
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvGetToolForce_Request
    {
        public sbyte @ref = 0;

        public _Ros2Dsr_msgs2SrvGetToolForce_Request()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvGetToolForce_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvGetToolForce_Request>
    {
        public static readonly Ros2Dsr_msgs2SrvGetToolForce_RequestCodec Instance = new Ros2Dsr_msgs2SrvGetToolForce_RequestCodec();

        private Ros2Dsr_msgs2SrvGetToolForce_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/GetToolForce_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_278119e0f7e346752ee4ccc233b133a9700cf8d2e2454c72c876cf4415dccd30";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros2Dsr_msgs2SrvGetToolForce_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvGetToolForce_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvGetToolForce_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvGetToolForce_Request value = ReadRos2Dsr_msgs2SrvGetToolForce_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvGetToolForce_Request(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvGetToolForce_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        sbyte part0 = value.@ref;
        writer.Unsigned(unchecked((byte)part0), 1);
    }

    private static _Ros2Dsr_msgs2SrvGetToolForce_Request ReadRos2Dsr_msgs2SrvGetToolForce_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvGetToolForce_Request();
        value.@ref = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvGetToolForce_Response
    {
        public double[] @tool_force = new double[6];
        public bool @success = false;

        public _Ros2Dsr_msgs2SrvGetToolForce_Response()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvGetToolForce_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvGetToolForce_Response>
    {
        public static readonly Ros2Dsr_msgs2SrvGetToolForce_ResponseCodec Instance = new Ros2Dsr_msgs2SrvGetToolForce_ResponseCodec();

        private Ros2Dsr_msgs2SrvGetToolForce_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/GetToolForce_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_d8bb3201f41aa221981e773657e8fa4d02b37a0d9d7f6da557aa6027ffeec41e";
        public const int MIN_WIRE_BYTES = 49, MAX_WIRE_BYTES = 49;

        public byte[] Encode(_Ros2Dsr_msgs2SrvGetToolForce_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvGetToolForce_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvGetToolForce_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvGetToolForce_Response value = ReadRos2Dsr_msgs2SrvGetToolForce_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvGetToolForce_Response(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvGetToolForce_Response value)
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

    private static _Ros2Dsr_msgs2SrvGetToolForce_Response ReadRos2Dsr_msgs2SrvGetToolForce_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvGetToolForce_Response();
        value.@tool_force = new double[6];
        for(int index = 0; index < value.@tool_force.Length; ++index)
            value.@tool_force[index] = reader.Float64();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvGetUserCartCoord_Request
    {
        public sbyte @id = 0;

        public _Ros2Dsr_msgs2SrvGetUserCartCoord_Request()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvGetUserCartCoord_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvGetUserCartCoord_Request>
    {
        public static readonly Ros2Dsr_msgs2SrvGetUserCartCoord_RequestCodec Instance = new Ros2Dsr_msgs2SrvGetUserCartCoord_RequestCodec();

        private Ros2Dsr_msgs2SrvGetUserCartCoord_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/GetUserCartCoord_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_ab137f363d6067680f0f9e60e436eb9c104c2aa1d3b0f2b4db423303944fea9b";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros2Dsr_msgs2SrvGetUserCartCoord_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvGetUserCartCoord_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvGetUserCartCoord_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvGetUserCartCoord_Request value = ReadRos2Dsr_msgs2SrvGetUserCartCoord_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvGetUserCartCoord_Request(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvGetUserCartCoord_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        sbyte part0 = value.@id;
        writer.Unsigned(unchecked((byte)part0), 1);
    }

    private static _Ros2Dsr_msgs2SrvGetUserCartCoord_Request ReadRos2Dsr_msgs2SrvGetUserCartCoord_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvGetUserCartCoord_Request();
        value.@id = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvGetUserCartCoord_Response
    {
        public double[] @conv_posx = new double[6];
        public sbyte @ref = 0;
        public bool @success = false;

        public _Ros2Dsr_msgs2SrvGetUserCartCoord_Response()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvGetUserCartCoord_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvGetUserCartCoord_Response>
    {
        public static readonly Ros2Dsr_msgs2SrvGetUserCartCoord_ResponseCodec Instance = new Ros2Dsr_msgs2SrvGetUserCartCoord_ResponseCodec();

        private Ros2Dsr_msgs2SrvGetUserCartCoord_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/GetUserCartCoord_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_41c0a3cb26e9456c439813e957d3ea539dddf492f00c601c101cf86f0589d6e0";
        public const int MIN_WIRE_BYTES = 50, MAX_WIRE_BYTES = 50;

        public byte[] Encode(_Ros2Dsr_msgs2SrvGetUserCartCoord_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvGetUserCartCoord_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvGetUserCartCoord_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvGetUserCartCoord_Response value = ReadRos2Dsr_msgs2SrvGetUserCartCoord_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvGetUserCartCoord_Response(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvGetUserCartCoord_Response value)
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

    private static _Ros2Dsr_msgs2SrvGetUserCartCoord_Response ReadRos2Dsr_msgs2SrvGetUserCartCoord_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvGetUserCartCoord_Response();
        value.@conv_posx = new double[6];
        for(int index = 0; index < value.@conv_posx.Length; ++index)
            value.@conv_posx[index] = reader.Float64();
        value.@ref = unchecked((sbyte)reader.Unsigned(1));
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvGetWorkpieceWeight_Request
    {
        public _Ros2Dsr_msgs2SrvGetWorkpieceWeight_Request()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvGetWorkpieceWeight_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvGetWorkpieceWeight_Request>
    {
        public static readonly Ros2Dsr_msgs2SrvGetWorkpieceWeight_RequestCodec Instance = new Ros2Dsr_msgs2SrvGetWorkpieceWeight_RequestCodec();

        private Ros2Dsr_msgs2SrvGetWorkpieceWeight_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/GetWorkpieceWeight_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_e333d0d31ad7dd33a4eaf20b891e1c6a949e8518ca689b6aef5b14fbc050fde7";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public byte[] Encode(_Ros2Dsr_msgs2SrvGetWorkpieceWeight_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvGetWorkpieceWeight_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvGetWorkpieceWeight_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvGetWorkpieceWeight_Request value = ReadRos2Dsr_msgs2SrvGetWorkpieceWeight_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvGetWorkpieceWeight_Request(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvGetWorkpieceWeight_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    private static _Ros2Dsr_msgs2SrvGetWorkpieceWeight_Request ReadRos2Dsr_msgs2SrvGetWorkpieceWeight_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvGetWorkpieceWeight_Request();
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvGetWorkpieceWeight_Response
    {
        public float @weight = 0;
        public bool @success = false;

        public _Ros2Dsr_msgs2SrvGetWorkpieceWeight_Response()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvGetWorkpieceWeight_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvGetWorkpieceWeight_Response>
    {
        public static readonly Ros2Dsr_msgs2SrvGetWorkpieceWeight_ResponseCodec Instance = new Ros2Dsr_msgs2SrvGetWorkpieceWeight_ResponseCodec();

        private Ros2Dsr_msgs2SrvGetWorkpieceWeight_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/GetWorkpieceWeight_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_c7c33e15041c362b692a24f6462fd1838c92cb8a74410ab62eb0593290f2da15";
        public const int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 5;

        public byte[] Encode(_Ros2Dsr_msgs2SrvGetWorkpieceWeight_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvGetWorkpieceWeight_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvGetWorkpieceWeight_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvGetWorkpieceWeight_Response value = ReadRos2Dsr_msgs2SrvGetWorkpieceWeight_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvGetWorkpieceWeight_Response(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvGetWorkpieceWeight_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        float part0 = value.@weight;
        WriteFloat32(writer, part0);
        bool part1 = value.@success;
        writer.Unsigned(part1 ? 1UL : 0UL, 1);
    }

    private static _Ros2Dsr_msgs2SrvGetWorkpieceWeight_Response ReadRos2Dsr_msgs2SrvGetWorkpieceWeight_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvGetWorkpieceWeight_Response();
        value.@weight = ReadFloat32(reader);
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvIkin_Request
    {
        public double[] @pos = new double[6];
        public sbyte @sol_space = 0;
        public sbyte @ref = 0;

        public _Ros2Dsr_msgs2SrvIkin_Request()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvIkin_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvIkin_Request>
    {
        public static readonly Ros2Dsr_msgs2SrvIkin_RequestCodec Instance = new Ros2Dsr_msgs2SrvIkin_RequestCodec();

        private Ros2Dsr_msgs2SrvIkin_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/Ikin_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_a088cb4739b4e871d281ffd7ca30d2a6afcb7a2cd2ed536fe959ba3efc01a558";
        public const int MIN_WIRE_BYTES = 50, MAX_WIRE_BYTES = 50;

        public byte[] Encode(_Ros2Dsr_msgs2SrvIkin_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvIkin_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvIkin_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvIkin_Request value = ReadRos2Dsr_msgs2SrvIkin_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvIkin_Request(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvIkin_Request value)
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

    private static _Ros2Dsr_msgs2SrvIkin_Request ReadRos2Dsr_msgs2SrvIkin_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvIkin_Request();
        value.@pos = new double[6];
        for(int index = 0; index < value.@pos.Length; ++index)
            value.@pos[index] = reader.Float64();
        value.@sol_space = unchecked((sbyte)reader.Unsigned(1));
        value.@ref = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvIkin_Response
    {
        public double[] @conv_posj = new double[6];
        public bool @success = false;

        public _Ros2Dsr_msgs2SrvIkin_Response()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvIkin_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvIkin_Response>
    {
        public static readonly Ros2Dsr_msgs2SrvIkin_ResponseCodec Instance = new Ros2Dsr_msgs2SrvIkin_ResponseCodec();

        private Ros2Dsr_msgs2SrvIkin_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/Ikin_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_fec5d910aaa9200c82c11887901062077572ce9d23f9e69114cbf395e469be6f";
        public const int MIN_WIRE_BYTES = 49, MAX_WIRE_BYTES = 49;

        public byte[] Encode(_Ros2Dsr_msgs2SrvIkin_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvIkin_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvIkin_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvIkin_Response value = ReadRos2Dsr_msgs2SrvIkin_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvIkin_Response(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvIkin_Response value)
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

    private static _Ros2Dsr_msgs2SrvIkin_Response ReadRos2Dsr_msgs2SrvIkin_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvIkin_Response();
        value.@conv_posj = new double[6];
        for(int index = 0; index < value.@conv_posj.Length; ++index)
            value.@conv_posj[index] = reader.Float64();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvIsDoneBoltTightening_Request
    {
        public double @m = 0;
        public double @timeout = 0;
        public sbyte @axis = 0;

        public _Ros2Dsr_msgs2SrvIsDoneBoltTightening_Request()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvIsDoneBoltTightening_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvIsDoneBoltTightening_Request>
    {
        public static readonly Ros2Dsr_msgs2SrvIsDoneBoltTightening_RequestCodec Instance = new Ros2Dsr_msgs2SrvIsDoneBoltTightening_RequestCodec();

        private Ros2Dsr_msgs2SrvIsDoneBoltTightening_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/IsDoneBoltTightening_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_021ebebd272f07623b139347486e9577a92febeec9ba2822ea42be99379365dc";
        public const int MIN_WIRE_BYTES = 17, MAX_WIRE_BYTES = 17;

        public byte[] Encode(_Ros2Dsr_msgs2SrvIsDoneBoltTightening_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvIsDoneBoltTightening_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvIsDoneBoltTightening_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvIsDoneBoltTightening_Request value = ReadRos2Dsr_msgs2SrvIsDoneBoltTightening_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvIsDoneBoltTightening_Request(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvIsDoneBoltTightening_Request value)
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

    private static _Ros2Dsr_msgs2SrvIsDoneBoltTightening_Request ReadRos2Dsr_msgs2SrvIsDoneBoltTightening_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvIsDoneBoltTightening_Request();
        value.@m = reader.Float64();
        value.@timeout = reader.Float64();
        value.@axis = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvIsDoneBoltTightening_Response
    {
        public bool @success = false;

        public _Ros2Dsr_msgs2SrvIsDoneBoltTightening_Response()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvIsDoneBoltTightening_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvIsDoneBoltTightening_Response>
    {
        public static readonly Ros2Dsr_msgs2SrvIsDoneBoltTightening_ResponseCodec Instance = new Ros2Dsr_msgs2SrvIsDoneBoltTightening_ResponseCodec();

        private Ros2Dsr_msgs2SrvIsDoneBoltTightening_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/IsDoneBoltTightening_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_facd1f150c53d2fa30991435796a03f28027ca54b1da367b259a3e9226c56d2d";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros2Dsr_msgs2SrvIsDoneBoltTightening_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvIsDoneBoltTightening_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvIsDoneBoltTightening_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvIsDoneBoltTightening_Response value = ReadRos2Dsr_msgs2SrvIsDoneBoltTightening_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvIsDoneBoltTightening_Response(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvIsDoneBoltTightening_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros2Dsr_msgs2SrvIsDoneBoltTightening_Response ReadRos2Dsr_msgs2SrvIsDoneBoltTightening_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvIsDoneBoltTightening_Response();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvJog_Request
    {
        public sbyte @jog_axis = 0;
        public sbyte @move_reference = 0;
        public double @speed = 0;

        public _Ros2Dsr_msgs2SrvJog_Request()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvJog_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvJog_Request>
    {
        public static readonly Ros2Dsr_msgs2SrvJog_RequestCodec Instance = new Ros2Dsr_msgs2SrvJog_RequestCodec();

        private Ros2Dsr_msgs2SrvJog_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/Jog_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_c8c738720a1def086dcb2bf4364e43b0bbeadf0bd104760ca4ddd629ec9faa72";
        public const int MIN_WIRE_BYTES = 10, MAX_WIRE_BYTES = 10;

        public byte[] Encode(_Ros2Dsr_msgs2SrvJog_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvJog_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvJog_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvJog_Request value = ReadRos2Dsr_msgs2SrvJog_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvJog_Request(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvJog_Request value)
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

    private static _Ros2Dsr_msgs2SrvJog_Request ReadRos2Dsr_msgs2SrvJog_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvJog_Request();
        value.@jog_axis = unchecked((sbyte)reader.Unsigned(1));
        value.@move_reference = unchecked((sbyte)reader.Unsigned(1));
        value.@speed = reader.Float64();
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvJog_Response
    {
        public bool @success = false;

        public _Ros2Dsr_msgs2SrvJog_Response()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvJog_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvJog_Response>
    {
        public static readonly Ros2Dsr_msgs2SrvJog_ResponseCodec Instance = new Ros2Dsr_msgs2SrvJog_ResponseCodec();

        private Ros2Dsr_msgs2SrvJog_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/Jog_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_feb4da140ea11a715abe3f3ee635bdc384cd12105c397c1fb0ce2cfdf631542c";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros2Dsr_msgs2SrvJog_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvJog_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvJog_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvJog_Response value = ReadRos2Dsr_msgs2SrvJog_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvJog_Response(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvJog_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros2Dsr_msgs2SrvJog_Response ReadRos2Dsr_msgs2SrvJog_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvJog_Response();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvJogMulti_Request
    {
        public double[] @jog_axis = new double[6];
        public sbyte @move_reference = 0;
        public double @speed = 0;

        public _Ros2Dsr_msgs2SrvJogMulti_Request()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvJogMulti_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvJogMulti_Request>
    {
        public static readonly Ros2Dsr_msgs2SrvJogMulti_RequestCodec Instance = new Ros2Dsr_msgs2SrvJogMulti_RequestCodec();

        private Ros2Dsr_msgs2SrvJogMulti_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/JogMulti_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_df4ba03cc80e22e4f9e384c38cd1994750a8c875798dc4887019745a26ee2f29";
        public const int MIN_WIRE_BYTES = 57, MAX_WIRE_BYTES = 57;

        public byte[] Encode(_Ros2Dsr_msgs2SrvJogMulti_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvJogMulti_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvJogMulti_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvJogMulti_Request value = ReadRos2Dsr_msgs2SrvJogMulti_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvJogMulti_Request(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvJogMulti_Request value)
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

    private static _Ros2Dsr_msgs2SrvJogMulti_Request ReadRos2Dsr_msgs2SrvJogMulti_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvJogMulti_Request();
        value.@jog_axis = new double[6];
        for(int index = 0; index < value.@jog_axis.Length; ++index)
            value.@jog_axis[index] = reader.Float64();
        value.@move_reference = unchecked((sbyte)reader.Unsigned(1));
        value.@speed = reader.Float64();
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvJogMulti_Response
    {
        public bool @success = false;

        public _Ros2Dsr_msgs2SrvJogMulti_Response()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvJogMulti_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvJogMulti_Response>
    {
        public static readonly Ros2Dsr_msgs2SrvJogMulti_ResponseCodec Instance = new Ros2Dsr_msgs2SrvJogMulti_ResponseCodec();

        private Ros2Dsr_msgs2SrvJogMulti_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/JogMulti_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_9cf76f60dbb1d7330297d5bacad15e29810ef7088ae83c3ad82c561c4e277d1a";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros2Dsr_msgs2SrvJogMulti_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvJogMulti_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvJogMulti_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvJogMulti_Response value = ReadRos2Dsr_msgs2SrvJogMulti_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvJogMulti_Response(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvJogMulti_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros2Dsr_msgs2SrvJogMulti_Response ReadRos2Dsr_msgs2SrvJogMulti_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvJogMulti_Response();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvMoveBlending_Request
    {
        public _Ros2Std_msgsMsgFloat64MultiArray[] @segment = new _Ros2Std_msgsMsgFloat64MultiArray[0];
        public sbyte @pos_cnt = 0;
        public double[] @vel = new double[2];
        public double[] @acc = new double[2];
        public double @time = 0;
        public sbyte @ref = 0;
        public sbyte @mode = 0;
        public sbyte @sync_type = 0;

        public _Ros2Dsr_msgs2SrvMoveBlending_Request()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvMoveBlending_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvMoveBlending_Request>
    {
        public static readonly Ros2Dsr_msgs2SrvMoveBlending_RequestCodec Instance = new Ros2Dsr_msgs2SrvMoveBlending_RequestCodec();

        private Ros2Dsr_msgs2SrvMoveBlending_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/MoveBlending_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_74b4ab52745fa3028c9154c373850897fac7ecdaf986822e5dc2698580de1f20";
        public const int MIN_WIRE_BYTES = 48, MAX_WIRE_BYTES = 2256;

        public byte[] Encode(_Ros2Dsr_msgs2SrvMoveBlending_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvMoveBlending_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvMoveBlending_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvMoveBlending_Request value = ReadRos2Dsr_msgs2SrvMoveBlending_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvMoveBlending_Request(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvMoveBlending_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Std_msgsMsgFloat64MultiArray[] part0 = value.@segment;
        if(part0 == null || part0.Length > 6)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part0.Length, 4);
        for(int index = 0; index < part0.Length; ++index)
        {
            _Ros2Std_msgsMsgFloat64MultiArray element = part0[index];
            WriteRos2Std_msgsMsgFloat64MultiArray(writer, element);
        }
        sbyte part1 = value.@pos_cnt;
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
        sbyte part7 = value.@sync_type;
        writer.Unsigned(unchecked((byte)part7), 1);
    }

    private static _Ros2Dsr_msgs2SrvMoveBlending_Request ReadRos2Dsr_msgs2SrvMoveBlending_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvMoveBlending_Request();
        value.@segment = new _Ros2Std_msgsMsgFloat64MultiArray[ReadCount(reader, 6, 12)];
        for(int index = 0; index < value.@segment.Length; ++index)
            value.@segment[index] = ReadRos2Std_msgsMsgFloat64MultiArray(reader);
        value.@pos_cnt = unchecked((sbyte)reader.Unsigned(1));
        value.@vel = new double[2];
        for(int index = 0; index < value.@vel.Length; ++index)
            value.@vel[index] = reader.Float64();
        value.@acc = new double[2];
        for(int index = 0; index < value.@acc.Length; ++index)
            value.@acc[index] = reader.Float64();
        value.@time = reader.Float64();
        value.@ref = unchecked((sbyte)reader.Unsigned(1));
        value.@mode = unchecked((sbyte)reader.Unsigned(1));
        value.@sync_type = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvMoveBlending_Response
    {
        public bool @success = false;

        public _Ros2Dsr_msgs2SrvMoveBlending_Response()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvMoveBlending_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvMoveBlending_Response>
    {
        public static readonly Ros2Dsr_msgs2SrvMoveBlending_ResponseCodec Instance = new Ros2Dsr_msgs2SrvMoveBlending_ResponseCodec();

        private Ros2Dsr_msgs2SrvMoveBlending_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/MoveBlending_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_2c09a8f39ab887063b890f935bc4319f4c0566fc2ccb5f612e696728a2ea3805";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros2Dsr_msgs2SrvMoveBlending_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvMoveBlending_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvMoveBlending_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvMoveBlending_Response value = ReadRos2Dsr_msgs2SrvMoveBlending_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvMoveBlending_Response(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvMoveBlending_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros2Dsr_msgs2SrvMoveBlending_Response ReadRos2Dsr_msgs2SrvMoveBlending_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvMoveBlending_Response();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvMoveCircle_Request
    {
        public _Ros2Std_msgsMsgFloat64MultiArray[] @pos = new _Ros2Std_msgsMsgFloat64MultiArray[0];
        public double[] @vel = new double[2];
        public double[] @acc = new double[2];
        public double @time = 0;
        public double @radius = 0;
        public sbyte @ref = 0;
        public sbyte @mode = 0;
        public double @angle1 = 0;
        public double @angle2 = 0;
        public sbyte @blend_type = 0;
        public sbyte @sync_type = 0;

        public _Ros2Dsr_msgs2SrvMoveCircle_Request()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvMoveCircle_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvMoveCircle_Request>
    {
        public static readonly Ros2Dsr_msgs2SrvMoveCircle_RequestCodec Instance = new Ros2Dsr_msgs2SrvMoveCircle_RequestCodec();

        private Ros2Dsr_msgs2SrvMoveCircle_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/MoveCircle_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_27ebd12c2a2c30f8e20b505923344b00f2d2ad097e04ee533093144dbc58a09e";
        public const int MIN_WIRE_BYTES = 72, MAX_WIRE_BYTES = 2280;

        public byte[] Encode(_Ros2Dsr_msgs2SrvMoveCircle_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvMoveCircle_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvMoveCircle_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvMoveCircle_Request value = ReadRos2Dsr_msgs2SrvMoveCircle_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvMoveCircle_Request(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvMoveCircle_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Std_msgsMsgFloat64MultiArray[] part0 = value.@pos;
        if(part0 == null || part0.Length > 6)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part0.Length, 4);
        for(int index = 0; index < part0.Length; ++index)
        {
            _Ros2Std_msgsMsgFloat64MultiArray element = part0[index];
            WriteRos2Std_msgsMsgFloat64MultiArray(writer, element);
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
        sbyte part9 = value.@blend_type;
        writer.Unsigned(unchecked((byte)part9), 1);
        sbyte part10 = value.@sync_type;
        writer.Unsigned(unchecked((byte)part10), 1);
    }

    private static _Ros2Dsr_msgs2SrvMoveCircle_Request ReadRos2Dsr_msgs2SrvMoveCircle_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvMoveCircle_Request();
        value.@pos = new _Ros2Std_msgsMsgFloat64MultiArray[ReadCount(reader, 6, 12)];
        for(int index = 0; index < value.@pos.Length; ++index)
            value.@pos[index] = ReadRos2Std_msgsMsgFloat64MultiArray(reader);
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
        value.@blend_type = unchecked((sbyte)reader.Unsigned(1));
        value.@sync_type = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvMoveCircle_Response
    {
        public bool @success = false;

        public _Ros2Dsr_msgs2SrvMoveCircle_Response()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvMoveCircle_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvMoveCircle_Response>
    {
        public static readonly Ros2Dsr_msgs2SrvMoveCircle_ResponseCodec Instance = new Ros2Dsr_msgs2SrvMoveCircle_ResponseCodec();

        private Ros2Dsr_msgs2SrvMoveCircle_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/MoveCircle_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_4df4f4552161320d2b939e096b5ff54c102c668cab1efa1e59a8f12757ebe307";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros2Dsr_msgs2SrvMoveCircle_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvMoveCircle_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvMoveCircle_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvMoveCircle_Response value = ReadRos2Dsr_msgs2SrvMoveCircle_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvMoveCircle_Response(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvMoveCircle_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros2Dsr_msgs2SrvMoveCircle_Response ReadRos2Dsr_msgs2SrvMoveCircle_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvMoveCircle_Response();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvMoveHome_Request
    {
        public sbyte @target = 0;

        public _Ros2Dsr_msgs2SrvMoveHome_Request()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvMoveHome_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvMoveHome_Request>
    {
        public static readonly Ros2Dsr_msgs2SrvMoveHome_RequestCodec Instance = new Ros2Dsr_msgs2SrvMoveHome_RequestCodec();

        private Ros2Dsr_msgs2SrvMoveHome_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/MoveHome_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_9f36ef8e03e895db2b8c588ad52dcc370ce37532974879c3280da68202643a67";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros2Dsr_msgs2SrvMoveHome_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvMoveHome_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvMoveHome_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvMoveHome_Request value = ReadRos2Dsr_msgs2SrvMoveHome_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvMoveHome_Request(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvMoveHome_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        sbyte part0 = value.@target;
        writer.Unsigned(unchecked((byte)part0), 1);
    }

    private static _Ros2Dsr_msgs2SrvMoveHome_Request ReadRos2Dsr_msgs2SrvMoveHome_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvMoveHome_Request();
        value.@target = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvMoveHome_Response
    {
        public sbyte @res = 0;
        public bool @success = false;

        public _Ros2Dsr_msgs2SrvMoveHome_Response()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvMoveHome_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvMoveHome_Response>
    {
        public static readonly Ros2Dsr_msgs2SrvMoveHome_ResponseCodec Instance = new Ros2Dsr_msgs2SrvMoveHome_ResponseCodec();

        private Ros2Dsr_msgs2SrvMoveHome_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/MoveHome_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_d28c2d8d4dc2c97fbab5e531b235830d68fc46754fd7921993e05c8d33df0edf";
        public const int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;

        public byte[] Encode(_Ros2Dsr_msgs2SrvMoveHome_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvMoveHome_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvMoveHome_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvMoveHome_Response value = ReadRos2Dsr_msgs2SrvMoveHome_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvMoveHome_Response(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvMoveHome_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        sbyte part0 = value.@res;
        writer.Unsigned(unchecked((byte)part0), 1);
        bool part1 = value.@success;
        writer.Unsigned(part1 ? 1UL : 0UL, 1);
    }

    private static _Ros2Dsr_msgs2SrvMoveHome_Response ReadRos2Dsr_msgs2SrvMoveHome_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvMoveHome_Response();
        value.@res = unchecked((sbyte)reader.Unsigned(1));
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvMoveJoint_Request
    {
        public double[] @pos = new double[6];
        public double @vel = 0;
        public double @acc = 0;
        public double @time = 0;
        public double @radius = 0;
        public sbyte @mode = 0;
        public sbyte @blend_type = 0;
        public sbyte @sync_type = 0;

        public _Ros2Dsr_msgs2SrvMoveJoint_Request()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvMoveJoint_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvMoveJoint_Request>
    {
        public static readonly Ros2Dsr_msgs2SrvMoveJoint_RequestCodec Instance = new Ros2Dsr_msgs2SrvMoveJoint_RequestCodec();

        private Ros2Dsr_msgs2SrvMoveJoint_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/MoveJoint_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_80e0a74b2781d091fc847f5f2d4a0a56bdd974e62f9a80cc7382118f5d6e4952";
        public const int MIN_WIRE_BYTES = 83, MAX_WIRE_BYTES = 83;

        public byte[] Encode(_Ros2Dsr_msgs2SrvMoveJoint_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvMoveJoint_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvMoveJoint_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvMoveJoint_Request value = ReadRos2Dsr_msgs2SrvMoveJoint_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvMoveJoint_Request(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvMoveJoint_Request value)
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
        sbyte part6 = value.@blend_type;
        writer.Unsigned(unchecked((byte)part6), 1);
        sbyte part7 = value.@sync_type;
        writer.Unsigned(unchecked((byte)part7), 1);
    }

    private static _Ros2Dsr_msgs2SrvMoveJoint_Request ReadRos2Dsr_msgs2SrvMoveJoint_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvMoveJoint_Request();
        value.@pos = new double[6];
        for(int index = 0; index < value.@pos.Length; ++index)
            value.@pos[index] = reader.Float64();
        value.@vel = reader.Float64();
        value.@acc = reader.Float64();
        value.@time = reader.Float64();
        value.@radius = reader.Float64();
        value.@mode = unchecked((sbyte)reader.Unsigned(1));
        value.@blend_type = unchecked((sbyte)reader.Unsigned(1));
        value.@sync_type = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvMoveJoint_Response
    {
        public bool @success = false;

        public _Ros2Dsr_msgs2SrvMoveJoint_Response()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvMoveJoint_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvMoveJoint_Response>
    {
        public static readonly Ros2Dsr_msgs2SrvMoveJoint_ResponseCodec Instance = new Ros2Dsr_msgs2SrvMoveJoint_ResponseCodec();

        private Ros2Dsr_msgs2SrvMoveJoint_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/MoveJoint_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_57c54f467487b7b7f0966a484e6777b4cb48fedd5790ec8f0e3c88979ce4c238";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros2Dsr_msgs2SrvMoveJoint_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvMoveJoint_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvMoveJoint_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvMoveJoint_Response value = ReadRos2Dsr_msgs2SrvMoveJoint_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvMoveJoint_Response(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvMoveJoint_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros2Dsr_msgs2SrvMoveJoint_Response ReadRos2Dsr_msgs2SrvMoveJoint_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvMoveJoint_Response();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvMoveJointx_Request
    {
        public double[] @pos = new double[6];
        public double @vel = 0;
        public double @acc = 0;
        public double @time = 0;
        public double @radius = 0;
        public sbyte @ref = 0;
        public sbyte @mode = 0;
        public sbyte @blend_type = 0;
        public sbyte @sol = 0;
        public sbyte @sync_type = 0;

        public _Ros2Dsr_msgs2SrvMoveJointx_Request()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvMoveJointx_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvMoveJointx_Request>
    {
        public static readonly Ros2Dsr_msgs2SrvMoveJointx_RequestCodec Instance = new Ros2Dsr_msgs2SrvMoveJointx_RequestCodec();

        private Ros2Dsr_msgs2SrvMoveJointx_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/MoveJointx_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_c63a6822f6b03a2380d740995b12b4889e38d46a48fa8f74a85c2eccde1712be";
        public const int MIN_WIRE_BYTES = 85, MAX_WIRE_BYTES = 85;

        public byte[] Encode(_Ros2Dsr_msgs2SrvMoveJointx_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvMoveJointx_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvMoveJointx_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvMoveJointx_Request value = ReadRos2Dsr_msgs2SrvMoveJointx_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvMoveJointx_Request(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvMoveJointx_Request value)
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
        sbyte part7 = value.@blend_type;
        writer.Unsigned(unchecked((byte)part7), 1);
        sbyte part8 = value.@sol;
        writer.Unsigned(unchecked((byte)part8), 1);
        sbyte part9 = value.@sync_type;
        writer.Unsigned(unchecked((byte)part9), 1);
    }

    private static _Ros2Dsr_msgs2SrvMoveJointx_Request ReadRos2Dsr_msgs2SrvMoveJointx_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvMoveJointx_Request();
        value.@pos = new double[6];
        for(int index = 0; index < value.@pos.Length; ++index)
            value.@pos[index] = reader.Float64();
        value.@vel = reader.Float64();
        value.@acc = reader.Float64();
        value.@time = reader.Float64();
        value.@radius = reader.Float64();
        value.@ref = unchecked((sbyte)reader.Unsigned(1));
        value.@mode = unchecked((sbyte)reader.Unsigned(1));
        value.@blend_type = unchecked((sbyte)reader.Unsigned(1));
        value.@sol = unchecked((sbyte)reader.Unsigned(1));
        value.@sync_type = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvMoveJointx_Response
    {
        public bool @success = false;

        public _Ros2Dsr_msgs2SrvMoveJointx_Response()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvMoveJointx_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvMoveJointx_Response>
    {
        public static readonly Ros2Dsr_msgs2SrvMoveJointx_ResponseCodec Instance = new Ros2Dsr_msgs2SrvMoveJointx_ResponseCodec();

        private Ros2Dsr_msgs2SrvMoveJointx_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/MoveJointx_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_4b04129715b754766e2971a38b170681e1055cc121bf56d7b542594ac9986d0a";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros2Dsr_msgs2SrvMoveJointx_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvMoveJointx_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvMoveJointx_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvMoveJointx_Response value = ReadRos2Dsr_msgs2SrvMoveJointx_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvMoveJointx_Response(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvMoveJointx_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros2Dsr_msgs2SrvMoveJointx_Response ReadRos2Dsr_msgs2SrvMoveJointx_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvMoveJointx_Response();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvMoveLine_Request
    {
        public double[] @pos = new double[6];
        public double[] @vel = new double[2];
        public double[] @acc = new double[2];
        public double @time = 0;
        public double @radius = 0;
        public sbyte @ref = 0;
        public sbyte @mode = 0;
        public sbyte @blend_type = 0;
        public sbyte @sync_type = 0;

        public _Ros2Dsr_msgs2SrvMoveLine_Request()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvMoveLine_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvMoveLine_Request>
    {
        public static readonly Ros2Dsr_msgs2SrvMoveLine_RequestCodec Instance = new Ros2Dsr_msgs2SrvMoveLine_RequestCodec();

        private Ros2Dsr_msgs2SrvMoveLine_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/MoveLine_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_104cb9b617f4f5f9596aa648cd5d1cd55bad832e0709e46c2e19be17d94f384a";
        public const int MIN_WIRE_BYTES = 100, MAX_WIRE_BYTES = 100;

        public byte[] Encode(_Ros2Dsr_msgs2SrvMoveLine_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvMoveLine_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvMoveLine_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvMoveLine_Request value = ReadRos2Dsr_msgs2SrvMoveLine_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvMoveLine_Request(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvMoveLine_Request value)
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
        sbyte part7 = value.@blend_type;
        writer.Unsigned(unchecked((byte)part7), 1);
        sbyte part8 = value.@sync_type;
        writer.Unsigned(unchecked((byte)part8), 1);
    }

    private static _Ros2Dsr_msgs2SrvMoveLine_Request ReadRos2Dsr_msgs2SrvMoveLine_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvMoveLine_Request();
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
        value.@blend_type = unchecked((sbyte)reader.Unsigned(1));
        value.@sync_type = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvMoveLine_Response
    {
        public bool @success = false;

        public _Ros2Dsr_msgs2SrvMoveLine_Response()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvMoveLine_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvMoveLine_Response>
    {
        public static readonly Ros2Dsr_msgs2SrvMoveLine_ResponseCodec Instance = new Ros2Dsr_msgs2SrvMoveLine_ResponseCodec();

        private Ros2Dsr_msgs2SrvMoveLine_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/MoveLine_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_6c0632d3a0aa1476b0cfc9adeb8eb5ef5e3b718eccdbb3f24d942315bd287ef6";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros2Dsr_msgs2SrvMoveLine_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvMoveLine_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvMoveLine_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvMoveLine_Response value = ReadRos2Dsr_msgs2SrvMoveLine_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvMoveLine_Response(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvMoveLine_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros2Dsr_msgs2SrvMoveLine_Response ReadRos2Dsr_msgs2SrvMoveLine_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvMoveLine_Response();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvMovePause_Request
    {
        public _Ros2Dsr_msgs2SrvMovePause_Request()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvMovePause_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvMovePause_Request>
    {
        public static readonly Ros2Dsr_msgs2SrvMovePause_RequestCodec Instance = new Ros2Dsr_msgs2SrvMovePause_RequestCodec();

        private Ros2Dsr_msgs2SrvMovePause_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/MovePause_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_89602d9445236b0796a0628a3eecd1d57cd298135759330f7c1927d451beac80";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public byte[] Encode(_Ros2Dsr_msgs2SrvMovePause_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvMovePause_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvMovePause_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvMovePause_Request value = ReadRos2Dsr_msgs2SrvMovePause_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvMovePause_Request(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvMovePause_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    private static _Ros2Dsr_msgs2SrvMovePause_Request ReadRos2Dsr_msgs2SrvMovePause_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvMovePause_Request();
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvMovePause_Response
    {
        public bool @success = false;

        public _Ros2Dsr_msgs2SrvMovePause_Response()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvMovePause_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvMovePause_Response>
    {
        public static readonly Ros2Dsr_msgs2SrvMovePause_ResponseCodec Instance = new Ros2Dsr_msgs2SrvMovePause_ResponseCodec();

        private Ros2Dsr_msgs2SrvMovePause_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/MovePause_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_9d8e0eabfff65e2d80132a9586cffd61f9989e2b39842cc3af2f7b77b01a0dd2";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros2Dsr_msgs2SrvMovePause_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvMovePause_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvMovePause_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvMovePause_Response value = ReadRos2Dsr_msgs2SrvMovePause_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvMovePause_Response(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvMovePause_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros2Dsr_msgs2SrvMovePause_Response ReadRos2Dsr_msgs2SrvMovePause_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvMovePause_Response();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvMovePeriodic_Request
    {
        public double[] @amp = new double[6];
        public double[] @periodic = new double[6];
        public double @acc = 0;
        public sbyte @repeat = 0;
        public sbyte @ref = 0;
        public sbyte @sync_type = 0;

        public _Ros2Dsr_msgs2SrvMovePeriodic_Request()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvMovePeriodic_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvMovePeriodic_Request>
    {
        public static readonly Ros2Dsr_msgs2SrvMovePeriodic_RequestCodec Instance = new Ros2Dsr_msgs2SrvMovePeriodic_RequestCodec();

        private Ros2Dsr_msgs2SrvMovePeriodic_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/MovePeriodic_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_f05e9629ebcf086ef97e02f28c9b97f4604d53e15b348e76556dc9eef7791f41";
        public const int MIN_WIRE_BYTES = 107, MAX_WIRE_BYTES = 107;

        public byte[] Encode(_Ros2Dsr_msgs2SrvMovePeriodic_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvMovePeriodic_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvMovePeriodic_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvMovePeriodic_Request value = ReadRos2Dsr_msgs2SrvMovePeriodic_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvMovePeriodic_Request(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvMovePeriodic_Request value)
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
        sbyte part5 = value.@sync_type;
        writer.Unsigned(unchecked((byte)part5), 1);
    }

    private static _Ros2Dsr_msgs2SrvMovePeriodic_Request ReadRos2Dsr_msgs2SrvMovePeriodic_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvMovePeriodic_Request();
        value.@amp = new double[6];
        for(int index = 0; index < value.@amp.Length; ++index)
            value.@amp[index] = reader.Float64();
        value.@periodic = new double[6];
        for(int index = 0; index < value.@periodic.Length; ++index)
            value.@periodic[index] = reader.Float64();
        value.@acc = reader.Float64();
        value.@repeat = unchecked((sbyte)reader.Unsigned(1));
        value.@ref = unchecked((sbyte)reader.Unsigned(1));
        value.@sync_type = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvMovePeriodic_Response
    {
        public bool @success = false;

        public _Ros2Dsr_msgs2SrvMovePeriodic_Response()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvMovePeriodic_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvMovePeriodic_Response>
    {
        public static readonly Ros2Dsr_msgs2SrvMovePeriodic_ResponseCodec Instance = new Ros2Dsr_msgs2SrvMovePeriodic_ResponseCodec();

        private Ros2Dsr_msgs2SrvMovePeriodic_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/MovePeriodic_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_99a58c09b66846d82e1e50451c7663fc2f8bfb6564181a737c37a0296a8bf022";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros2Dsr_msgs2SrvMovePeriodic_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvMovePeriodic_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvMovePeriodic_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvMovePeriodic_Response value = ReadRos2Dsr_msgs2SrvMovePeriodic_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvMovePeriodic_Response(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvMovePeriodic_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros2Dsr_msgs2SrvMovePeriodic_Response ReadRos2Dsr_msgs2SrvMovePeriodic_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvMovePeriodic_Response();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvMoveResume_Request
    {
        public _Ros2Dsr_msgs2SrvMoveResume_Request()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvMoveResume_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvMoveResume_Request>
    {
        public static readonly Ros2Dsr_msgs2SrvMoveResume_RequestCodec Instance = new Ros2Dsr_msgs2SrvMoveResume_RequestCodec();

        private Ros2Dsr_msgs2SrvMoveResume_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/MoveResume_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_7cb93befc32b7fb62279f8be0e6aa9f0075274375304afa5a438dea13588879e";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public byte[] Encode(_Ros2Dsr_msgs2SrvMoveResume_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvMoveResume_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvMoveResume_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvMoveResume_Request value = ReadRos2Dsr_msgs2SrvMoveResume_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvMoveResume_Request(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvMoveResume_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    private static _Ros2Dsr_msgs2SrvMoveResume_Request ReadRos2Dsr_msgs2SrvMoveResume_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvMoveResume_Request();
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvMoveResume_Response
    {
        public bool @success = false;

        public _Ros2Dsr_msgs2SrvMoveResume_Response()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvMoveResume_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvMoveResume_Response>
    {
        public static readonly Ros2Dsr_msgs2SrvMoveResume_ResponseCodec Instance = new Ros2Dsr_msgs2SrvMoveResume_ResponseCodec();

        private Ros2Dsr_msgs2SrvMoveResume_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/MoveResume_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_1b8d38ecbb26dc9311cd7dbc35e397eabae2f8fc308f7f3ada8afaeee15ec956";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros2Dsr_msgs2SrvMoveResume_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvMoveResume_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvMoveResume_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvMoveResume_Response value = ReadRos2Dsr_msgs2SrvMoveResume_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvMoveResume_Response(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvMoveResume_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros2Dsr_msgs2SrvMoveResume_Response ReadRos2Dsr_msgs2SrvMoveResume_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvMoveResume_Response();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvMoveSpiral_Request
    {
        public double @revolution = 0;
        public double @max_radius = 0;
        public double @max_length = 0;
        public double[] @target_pos = new double[3];
        public double[] @vel = new double[2];
        public double[] @acc = new double[2];
        public double @time = 0;
        public sbyte @task_axis = 0;
        public sbyte @ref = 0;
        public sbyte @mode = 0;
        public sbyte @spiral_dir = 0;
        public sbyte @rot_dir = 0;
        public sbyte @sync_type = 0;

        public _Ros2Dsr_msgs2SrvMoveSpiral_Request()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvMoveSpiral_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvMoveSpiral_Request>
    {
        public static readonly Ros2Dsr_msgs2SrvMoveSpiral_RequestCodec Instance = new Ros2Dsr_msgs2SrvMoveSpiral_RequestCodec();

        private Ros2Dsr_msgs2SrvMoveSpiral_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/MoveSpiral_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_4720da9e9607f7a2df71d51cbc568ca08e85f9cf8b335f5ed3128844b3ab66a1";
        public const int MIN_WIRE_BYTES = 94, MAX_WIRE_BYTES = 94;

        public byte[] Encode(_Ros2Dsr_msgs2SrvMoveSpiral_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvMoveSpiral_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvMoveSpiral_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvMoveSpiral_Request value = ReadRos2Dsr_msgs2SrvMoveSpiral_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvMoveSpiral_Request(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvMoveSpiral_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        double part0 = value.@revolution;
        writer.Float64(part0);
        double part1 = value.@max_radius;
        writer.Float64(part1);
        double part2 = value.@max_length;
        writer.Float64(part2);
        double[] part3 = value.@target_pos;
        if(part3 == null || part3.Length != 3)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part3.Length; ++index)
        {
            double element = part3[index];
            writer.Float64(element);
        }
        double[] part4 = value.@vel;
        if(part4 == null || part4.Length != 2)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part4.Length; ++index)
        {
            double element = part4[index];
            writer.Float64(element);
        }
        double[] part5 = value.@acc;
        if(part5 == null || part5.Length != 2)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part5.Length; ++index)
        {
            double element = part5[index];
            writer.Float64(element);
        }
        double part6 = value.@time;
        writer.Float64(part6);
        sbyte part7 = value.@task_axis;
        writer.Unsigned(unchecked((byte)part7), 1);
        sbyte part8 = value.@ref;
        writer.Unsigned(unchecked((byte)part8), 1);
        sbyte part9 = value.@mode;
        writer.Unsigned(unchecked((byte)part9), 1);
        sbyte part10 = value.@spiral_dir;
        writer.Unsigned(unchecked((byte)part10), 1);
        sbyte part11 = value.@rot_dir;
        writer.Unsigned(unchecked((byte)part11), 1);
        sbyte part12 = value.@sync_type;
        writer.Unsigned(unchecked((byte)part12), 1);
    }

    private static _Ros2Dsr_msgs2SrvMoveSpiral_Request ReadRos2Dsr_msgs2SrvMoveSpiral_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvMoveSpiral_Request();
        value.@revolution = reader.Float64();
        value.@max_radius = reader.Float64();
        value.@max_length = reader.Float64();
        value.@target_pos = new double[3];
        for(int index = 0; index < value.@target_pos.Length; ++index)
            value.@target_pos[index] = reader.Float64();
        value.@vel = new double[2];
        for(int index = 0; index < value.@vel.Length; ++index)
            value.@vel[index] = reader.Float64();
        value.@acc = new double[2];
        for(int index = 0; index < value.@acc.Length; ++index)
            value.@acc[index] = reader.Float64();
        value.@time = reader.Float64();
        value.@task_axis = unchecked((sbyte)reader.Unsigned(1));
        value.@ref = unchecked((sbyte)reader.Unsigned(1));
        value.@mode = unchecked((sbyte)reader.Unsigned(1));
        value.@spiral_dir = unchecked((sbyte)reader.Unsigned(1));
        value.@rot_dir = unchecked((sbyte)reader.Unsigned(1));
        value.@sync_type = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvMoveSpiral_Response
    {
        public bool @success = false;

        public _Ros2Dsr_msgs2SrvMoveSpiral_Response()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvMoveSpiral_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvMoveSpiral_Response>
    {
        public static readonly Ros2Dsr_msgs2SrvMoveSpiral_ResponseCodec Instance = new Ros2Dsr_msgs2SrvMoveSpiral_ResponseCodec();

        private Ros2Dsr_msgs2SrvMoveSpiral_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/MoveSpiral_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_8f8f8c5ebb9288d4414bd64ac2bbcaac7c459dd187c149a2424d2ca426dd51fc";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros2Dsr_msgs2SrvMoveSpiral_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvMoveSpiral_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvMoveSpiral_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvMoveSpiral_Response value = ReadRos2Dsr_msgs2SrvMoveSpiral_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvMoveSpiral_Response(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvMoveSpiral_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros2Dsr_msgs2SrvMoveSpiral_Response ReadRos2Dsr_msgs2SrvMoveSpiral_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvMoveSpiral_Response();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvMoveSplineJoint_Request
    {
        public _Ros2Std_msgsMsgFloat64MultiArray[] @pos = new _Ros2Std_msgsMsgFloat64MultiArray[0];
        public sbyte @pos_cnt = 0;
        public double[] @vel = new double[6];
        public double[] @acc = new double[6];
        public double @time = 0;
        public sbyte @mode = 0;
        public sbyte @sync_type = 0;

        public _Ros2Dsr_msgs2SrvMoveSplineJoint_Request()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvMoveSplineJoint_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvMoveSplineJoint_Request>
    {
        public static readonly Ros2Dsr_msgs2SrvMoveSplineJoint_RequestCodec Instance = new Ros2Dsr_msgs2SrvMoveSplineJoint_RequestCodec();

        private Ros2Dsr_msgs2SrvMoveSplineJoint_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/MoveSplineJoint_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_3e37f3aa8318b9dffd0d72754d6f8f6db4c6af7fed79a20cba019e6dd3535fe2";
        public const int MIN_WIRE_BYTES = 111, MAX_WIRE_BYTES = 2319;

        public byte[] Encode(_Ros2Dsr_msgs2SrvMoveSplineJoint_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvMoveSplineJoint_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvMoveSplineJoint_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvMoveSplineJoint_Request value = ReadRos2Dsr_msgs2SrvMoveSplineJoint_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvMoveSplineJoint_Request(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvMoveSplineJoint_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Std_msgsMsgFloat64MultiArray[] part0 = value.@pos;
        if(part0 == null || part0.Length > 6)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part0.Length, 4);
        for(int index = 0; index < part0.Length; ++index)
        {
            _Ros2Std_msgsMsgFloat64MultiArray element = part0[index];
            WriteRos2Std_msgsMsgFloat64MultiArray(writer, element);
        }
        sbyte part1 = value.@pos_cnt;
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
        sbyte part6 = value.@sync_type;
        writer.Unsigned(unchecked((byte)part6), 1);
    }

    private static _Ros2Dsr_msgs2SrvMoveSplineJoint_Request ReadRos2Dsr_msgs2SrvMoveSplineJoint_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvMoveSplineJoint_Request();
        value.@pos = new _Ros2Std_msgsMsgFloat64MultiArray[ReadCount(reader, 6, 12)];
        for(int index = 0; index < value.@pos.Length; ++index)
            value.@pos[index] = ReadRos2Std_msgsMsgFloat64MultiArray(reader);
        value.@pos_cnt = unchecked((sbyte)reader.Unsigned(1));
        value.@vel = new double[6];
        for(int index = 0; index < value.@vel.Length; ++index)
            value.@vel[index] = reader.Float64();
        value.@acc = new double[6];
        for(int index = 0; index < value.@acc.Length; ++index)
            value.@acc[index] = reader.Float64();
        value.@time = reader.Float64();
        value.@mode = unchecked((sbyte)reader.Unsigned(1));
        value.@sync_type = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvMoveSplineJoint_Response
    {
        public bool @success = false;

        public _Ros2Dsr_msgs2SrvMoveSplineJoint_Response()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvMoveSplineJoint_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvMoveSplineJoint_Response>
    {
        public static readonly Ros2Dsr_msgs2SrvMoveSplineJoint_ResponseCodec Instance = new Ros2Dsr_msgs2SrvMoveSplineJoint_ResponseCodec();

        private Ros2Dsr_msgs2SrvMoveSplineJoint_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/MoveSplineJoint_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_90acb8d4656b1cd6c5be0eb0693e2718e1ad96d10cf8cbb53738a7efd2898444";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros2Dsr_msgs2SrvMoveSplineJoint_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvMoveSplineJoint_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvMoveSplineJoint_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvMoveSplineJoint_Response value = ReadRos2Dsr_msgs2SrvMoveSplineJoint_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvMoveSplineJoint_Response(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvMoveSplineJoint_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros2Dsr_msgs2SrvMoveSplineJoint_Response ReadRos2Dsr_msgs2SrvMoveSplineJoint_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvMoveSplineJoint_Response();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvMoveSplineTask_Request
    {
        public _Ros2Std_msgsMsgFloat64MultiArray[] @pos = new _Ros2Std_msgsMsgFloat64MultiArray[0];
        public sbyte @pos_cnt = 0;
        public double[] @vel = new double[2];
        public double[] @acc = new double[2];
        public double @time = 0;
        public sbyte @ref = 0;
        public sbyte @mode = 0;
        public sbyte @opt = 0;
        public sbyte @sync_type = 0;

        public _Ros2Dsr_msgs2SrvMoveSplineTask_Request()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvMoveSplineTask_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvMoveSplineTask_Request>
    {
        public static readonly Ros2Dsr_msgs2SrvMoveSplineTask_RequestCodec Instance = new Ros2Dsr_msgs2SrvMoveSplineTask_RequestCodec();

        private Ros2Dsr_msgs2SrvMoveSplineTask_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/MoveSplineTask_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_9ec113186666b39b1c4a27b1a0f9e8c9a8d5e18e0d0d773103b37811d5c613ff";
        public const int MIN_WIRE_BYTES = 49, MAX_WIRE_BYTES = 2257;

        public byte[] Encode(_Ros2Dsr_msgs2SrvMoveSplineTask_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvMoveSplineTask_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvMoveSplineTask_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvMoveSplineTask_Request value = ReadRos2Dsr_msgs2SrvMoveSplineTask_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvMoveSplineTask_Request(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvMoveSplineTask_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Std_msgsMsgFloat64MultiArray[] part0 = value.@pos;
        if(part0 == null || part0.Length > 6)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part0.Length, 4);
        for(int index = 0; index < part0.Length; ++index)
        {
            _Ros2Std_msgsMsgFloat64MultiArray element = part0[index];
            WriteRos2Std_msgsMsgFloat64MultiArray(writer, element);
        }
        sbyte part1 = value.@pos_cnt;
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
        sbyte part8 = value.@sync_type;
        writer.Unsigned(unchecked((byte)part8), 1);
    }

    private static _Ros2Dsr_msgs2SrvMoveSplineTask_Request ReadRos2Dsr_msgs2SrvMoveSplineTask_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvMoveSplineTask_Request();
        value.@pos = new _Ros2Std_msgsMsgFloat64MultiArray[ReadCount(reader, 6, 12)];
        for(int index = 0; index < value.@pos.Length; ++index)
            value.@pos[index] = ReadRos2Std_msgsMsgFloat64MultiArray(reader);
        value.@pos_cnt = unchecked((sbyte)reader.Unsigned(1));
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
        value.@sync_type = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvMoveSplineTask_Response
    {
        public bool @success = false;

        public _Ros2Dsr_msgs2SrvMoveSplineTask_Response()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvMoveSplineTask_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvMoveSplineTask_Response>
    {
        public static readonly Ros2Dsr_msgs2SrvMoveSplineTask_ResponseCodec Instance = new Ros2Dsr_msgs2SrvMoveSplineTask_ResponseCodec();

        private Ros2Dsr_msgs2SrvMoveSplineTask_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/MoveSplineTask_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_e1991eb0d0b76ea783f3a410df208c432b09dd0bb5dc595c9aad74e5da147fb5";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros2Dsr_msgs2SrvMoveSplineTask_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvMoveSplineTask_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvMoveSplineTask_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvMoveSplineTask_Response value = ReadRos2Dsr_msgs2SrvMoveSplineTask_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvMoveSplineTask_Response(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvMoveSplineTask_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros2Dsr_msgs2SrvMoveSplineTask_Response ReadRos2Dsr_msgs2SrvMoveSplineTask_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvMoveSplineTask_Response();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvMoveStop_Request
    {
        public int @stop_mode = 0;

        public _Ros2Dsr_msgs2SrvMoveStop_Request()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvMoveStop_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvMoveStop_Request>
    {
        public static readonly Ros2Dsr_msgs2SrvMoveStop_RequestCodec Instance = new Ros2Dsr_msgs2SrvMoveStop_RequestCodec();

        private Ros2Dsr_msgs2SrvMoveStop_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/MoveStop_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_51bb66de3739f7fc873f36d78fc6b3fe70f28e788f4b5b4359768491074d1efd";
        public const int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 4;

        public byte[] Encode(_Ros2Dsr_msgs2SrvMoveStop_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvMoveStop_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvMoveStop_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvMoveStop_Request value = ReadRos2Dsr_msgs2SrvMoveStop_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvMoveStop_Request(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvMoveStop_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        int part0 = value.@stop_mode;
        writer.Unsigned(unchecked((uint)part0), 4);
    }

    private static _Ros2Dsr_msgs2SrvMoveStop_Request ReadRos2Dsr_msgs2SrvMoveStop_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvMoveStop_Request();
        value.@stop_mode = unchecked((int)reader.Unsigned(4));
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvMoveStop_Response
    {
        public bool @success = false;

        public _Ros2Dsr_msgs2SrvMoveStop_Response()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvMoveStop_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvMoveStop_Response>
    {
        public static readonly Ros2Dsr_msgs2SrvMoveStop_ResponseCodec Instance = new Ros2Dsr_msgs2SrvMoveStop_ResponseCodec();

        private Ros2Dsr_msgs2SrvMoveStop_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/MoveStop_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_ce670f48f010badbcafa3e96d05af25a02a018b41e75544a6d183fe89ceafbeb";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros2Dsr_msgs2SrvMoveStop_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvMoveStop_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvMoveStop_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvMoveStop_Response value = ReadRos2Dsr_msgs2SrvMoveStop_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvMoveStop_Response(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvMoveStop_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros2Dsr_msgs2SrvMoveStop_Response ReadRos2Dsr_msgs2SrvMoveStop_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvMoveStop_Response();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvMoveWait_Request
    {
        public _Ros2Dsr_msgs2SrvMoveWait_Request()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvMoveWait_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvMoveWait_Request>
    {
        public static readonly Ros2Dsr_msgs2SrvMoveWait_RequestCodec Instance = new Ros2Dsr_msgs2SrvMoveWait_RequestCodec();

        private Ros2Dsr_msgs2SrvMoveWait_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/MoveWait_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_7c0de129d63ef3142044c481392ba437362245e6643ba1bd0f87f90b9b377d61";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public byte[] Encode(_Ros2Dsr_msgs2SrvMoveWait_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvMoveWait_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvMoveWait_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvMoveWait_Request value = ReadRos2Dsr_msgs2SrvMoveWait_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvMoveWait_Request(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvMoveWait_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    private static _Ros2Dsr_msgs2SrvMoveWait_Request ReadRos2Dsr_msgs2SrvMoveWait_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvMoveWait_Request();
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvMoveWait_Response
    {
        public bool @success = false;

        public _Ros2Dsr_msgs2SrvMoveWait_Response()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvMoveWait_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvMoveWait_Response>
    {
        public static readonly Ros2Dsr_msgs2SrvMoveWait_ResponseCodec Instance = new Ros2Dsr_msgs2SrvMoveWait_ResponseCodec();

        private Ros2Dsr_msgs2SrvMoveWait_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/MoveWait_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_1e235c22c0e493e309e8f53be1043ce1b425c52910358c7b34496c1291d61486";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros2Dsr_msgs2SrvMoveWait_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvMoveWait_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvMoveWait_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvMoveWait_Response value = ReadRos2Dsr_msgs2SrvMoveWait_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvMoveWait_Response(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvMoveWait_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros2Dsr_msgs2SrvMoveWait_Response ReadRos2Dsr_msgs2SrvMoveWait_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvMoveWait_Response();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvOverwriteUserCartCoord_Request
    {
        public sbyte @id = 0;
        public double[] @pos = new double[6];
        public sbyte @ref = 0;

        public _Ros2Dsr_msgs2SrvOverwriteUserCartCoord_Request()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvOverwriteUserCartCoord_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvOverwriteUserCartCoord_Request>
    {
        public static readonly Ros2Dsr_msgs2SrvOverwriteUserCartCoord_RequestCodec Instance = new Ros2Dsr_msgs2SrvOverwriteUserCartCoord_RequestCodec();

        private Ros2Dsr_msgs2SrvOverwriteUserCartCoord_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/OverwriteUserCartCoord_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_772207f58ed8dc8dbef23f5ab3161a4289f378eed9ae9b960e15e380c5efcb8d";
        public const int MIN_WIRE_BYTES = 50, MAX_WIRE_BYTES = 50;

        public byte[] Encode(_Ros2Dsr_msgs2SrvOverwriteUserCartCoord_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvOverwriteUserCartCoord_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvOverwriteUserCartCoord_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvOverwriteUserCartCoord_Request value = ReadRos2Dsr_msgs2SrvOverwriteUserCartCoord_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvOverwriteUserCartCoord_Request(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvOverwriteUserCartCoord_Request value)
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

    private static _Ros2Dsr_msgs2SrvOverwriteUserCartCoord_Request ReadRos2Dsr_msgs2SrvOverwriteUserCartCoord_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvOverwriteUserCartCoord_Request();
        value.@id = unchecked((sbyte)reader.Unsigned(1));
        value.@pos = new double[6];
        for(int index = 0; index < value.@pos.Length; ++index)
            value.@pos[index] = reader.Float64();
        value.@ref = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvOverwriteUserCartCoord_Response
    {
        public sbyte @id = 0;
        public bool @success = false;

        public _Ros2Dsr_msgs2SrvOverwriteUserCartCoord_Response()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvOverwriteUserCartCoord_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvOverwriteUserCartCoord_Response>
    {
        public static readonly Ros2Dsr_msgs2SrvOverwriteUserCartCoord_ResponseCodec Instance = new Ros2Dsr_msgs2SrvOverwriteUserCartCoord_ResponseCodec();

        private Ros2Dsr_msgs2SrvOverwriteUserCartCoord_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/OverwriteUserCartCoord_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_93cc941737dc373f7b97a044a9b675cf220a511bbbde19b6d98fb9ac8f33dc05";
        public const int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;

        public byte[] Encode(_Ros2Dsr_msgs2SrvOverwriteUserCartCoord_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvOverwriteUserCartCoord_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvOverwriteUserCartCoord_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvOverwriteUserCartCoord_Response value = ReadRos2Dsr_msgs2SrvOverwriteUserCartCoord_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvOverwriteUserCartCoord_Response(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvOverwriteUserCartCoord_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        sbyte part0 = value.@id;
        writer.Unsigned(unchecked((byte)part0), 1);
        bool part1 = value.@success;
        writer.Unsigned(part1 ? 1UL : 0UL, 1);
    }

    private static _Ros2Dsr_msgs2SrvOverwriteUserCartCoord_Response ReadRos2Dsr_msgs2SrvOverwriteUserCartCoord_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvOverwriteUserCartCoord_Response();
        value.@id = unchecked((sbyte)reader.Unsigned(1));
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvParallelAxis1_Request
    {
        public double[] @x1 = new double[6];
        public double[] @x2 = new double[6];
        public double[] @x3 = new double[6];
        public sbyte @axis = 0;
        public sbyte @ref = 0;

        public _Ros2Dsr_msgs2SrvParallelAxis1_Request()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvParallelAxis1_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvParallelAxis1_Request>
    {
        public static readonly Ros2Dsr_msgs2SrvParallelAxis1_RequestCodec Instance = new Ros2Dsr_msgs2SrvParallelAxis1_RequestCodec();

        private Ros2Dsr_msgs2SrvParallelAxis1_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/ParallelAxis1_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_97ed9f4649879d56a9bdabbb2040b1779be4ac7156292b27f6ca04a82290e1fd";
        public const int MIN_WIRE_BYTES = 146, MAX_WIRE_BYTES = 146;

        public byte[] Encode(_Ros2Dsr_msgs2SrvParallelAxis1_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvParallelAxis1_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvParallelAxis1_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvParallelAxis1_Request value = ReadRos2Dsr_msgs2SrvParallelAxis1_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvParallelAxis1_Request(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvParallelAxis1_Request value)
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

    private static _Ros2Dsr_msgs2SrvParallelAxis1_Request ReadRos2Dsr_msgs2SrvParallelAxis1_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvParallelAxis1_Request();
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

    public sealed class _Ros2Dsr_msgs2SrvParallelAxis1_Response
    {
        public bool @success = false;

        public _Ros2Dsr_msgs2SrvParallelAxis1_Response()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvParallelAxis1_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvParallelAxis1_Response>
    {
        public static readonly Ros2Dsr_msgs2SrvParallelAxis1_ResponseCodec Instance = new Ros2Dsr_msgs2SrvParallelAxis1_ResponseCodec();

        private Ros2Dsr_msgs2SrvParallelAxis1_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/ParallelAxis1_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_f748471d4492dbd0db21a6417a12eedbbc1d23920abe712af5ac3099a1b4a37c";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros2Dsr_msgs2SrvParallelAxis1_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvParallelAxis1_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvParallelAxis1_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvParallelAxis1_Response value = ReadRos2Dsr_msgs2SrvParallelAxis1_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvParallelAxis1_Response(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvParallelAxis1_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros2Dsr_msgs2SrvParallelAxis1_Response ReadRos2Dsr_msgs2SrvParallelAxis1_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvParallelAxis1_Response();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvParallelAxis2_Request
    {
        public double[] @vect = new double[3];
        public sbyte @axis = 0;
        public sbyte @ref = 0;

        public _Ros2Dsr_msgs2SrvParallelAxis2_Request()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvParallelAxis2_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvParallelAxis2_Request>
    {
        public static readonly Ros2Dsr_msgs2SrvParallelAxis2_RequestCodec Instance = new Ros2Dsr_msgs2SrvParallelAxis2_RequestCodec();

        private Ros2Dsr_msgs2SrvParallelAxis2_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/ParallelAxis2_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_742f664642630b1c2fa965d9ff442791edc7c1aa90c9238fc370d1fb8baf1450";
        public const int MIN_WIRE_BYTES = 26, MAX_WIRE_BYTES = 26;

        public byte[] Encode(_Ros2Dsr_msgs2SrvParallelAxis2_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvParallelAxis2_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvParallelAxis2_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvParallelAxis2_Request value = ReadRos2Dsr_msgs2SrvParallelAxis2_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvParallelAxis2_Request(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvParallelAxis2_Request value)
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

    private static _Ros2Dsr_msgs2SrvParallelAxis2_Request ReadRos2Dsr_msgs2SrvParallelAxis2_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvParallelAxis2_Request();
        value.@vect = new double[3];
        for(int index = 0; index < value.@vect.Length; ++index)
            value.@vect[index] = reader.Float64();
        value.@axis = unchecked((sbyte)reader.Unsigned(1));
        value.@ref = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvParallelAxis2_Response
    {
        public bool @success = false;

        public _Ros2Dsr_msgs2SrvParallelAxis2_Response()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvParallelAxis2_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvParallelAxis2_Response>
    {
        public static readonly Ros2Dsr_msgs2SrvParallelAxis2_ResponseCodec Instance = new Ros2Dsr_msgs2SrvParallelAxis2_ResponseCodec();

        private Ros2Dsr_msgs2SrvParallelAxis2_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/ParallelAxis2_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_7a2659d61e6a13d1f17986c311441ecc4bb72146978f209c976f218817fd146b";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros2Dsr_msgs2SrvParallelAxis2_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvParallelAxis2_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvParallelAxis2_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvParallelAxis2_Response value = ReadRos2Dsr_msgs2SrvParallelAxis2_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvParallelAxis2_Response(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvParallelAxis2_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros2Dsr_msgs2SrvParallelAxis2_Response ReadRos2Dsr_msgs2SrvParallelAxis2_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvParallelAxis2_Response();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvReadDataRt_Request
    {
        public _Ros2Dsr_msgs2SrvReadDataRt_Request()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvReadDataRt_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvReadDataRt_Request>
    {
        public static readonly Ros2Dsr_msgs2SrvReadDataRt_RequestCodec Instance = new Ros2Dsr_msgs2SrvReadDataRt_RequestCodec();

        private Ros2Dsr_msgs2SrvReadDataRt_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/ReadDataRt_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_9c21179a2561779bfcd2e6bc011ab9eb183517cc93de8dc6349f016bc7f3a418";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public byte[] Encode(_Ros2Dsr_msgs2SrvReadDataRt_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvReadDataRt_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvReadDataRt_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvReadDataRt_Request value = ReadRos2Dsr_msgs2SrvReadDataRt_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvReadDataRt_Request(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvReadDataRt_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    private static _Ros2Dsr_msgs2SrvReadDataRt_Request ReadRos2Dsr_msgs2SrvReadDataRt_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvReadDataRt_Request();
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvReadDataRt_Response
    {
        public _Ros2Dsr_msgs2MsgRobotStateRt @data = new _Ros2Dsr_msgs2MsgRobotStateRt();

        public _Ros2Dsr_msgs2SrvReadDataRt_Response()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvReadDataRt_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvReadDataRt_Response>
    {
        public static readonly Ros2Dsr_msgs2SrvReadDataRt_ResponseCodec Instance = new Ros2Dsr_msgs2SrvReadDataRt_ResponseCodec();

        private Ros2Dsr_msgs2SrvReadDataRt_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/ReadDataRt_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_4055ed8c5ea1414a21bb32aad8cd37a9d2317619840a7a5de1f563b512395093";
        public const int MIN_WIRE_BYTES = 1530, MAX_WIRE_BYTES = 8154;

        public byte[] Encode(_Ros2Dsr_msgs2SrvReadDataRt_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvReadDataRt_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvReadDataRt_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvReadDataRt_Response value = ReadRos2Dsr_msgs2SrvReadDataRt_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvReadDataRt_Response(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvReadDataRt_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Dsr_msgs2MsgRobotStateRt part0 = value.@data;
        WriteRos2Dsr_msgs2MsgRobotStateRt(writer, part0);
    }

    private static _Ros2Dsr_msgs2SrvReadDataRt_Response ReadRos2Dsr_msgs2SrvReadDataRt_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvReadDataRt_Response();
        value.@data = ReadRos2Dsr_msgs2MsgRobotStateRt(reader);
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvReleaseComplianceCtrl_Request
    {
        public _Ros2Dsr_msgs2SrvReleaseComplianceCtrl_Request()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvReleaseComplianceCtrl_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvReleaseComplianceCtrl_Request>
    {
        public static readonly Ros2Dsr_msgs2SrvReleaseComplianceCtrl_RequestCodec Instance = new Ros2Dsr_msgs2SrvReleaseComplianceCtrl_RequestCodec();

        private Ros2Dsr_msgs2SrvReleaseComplianceCtrl_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/ReleaseComplianceCtrl_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_1b3e5187b8a5753f0703abb97a653bcbcd62f19dc912f0a70dd1cf3d0fab59df";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public byte[] Encode(_Ros2Dsr_msgs2SrvReleaseComplianceCtrl_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvReleaseComplianceCtrl_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvReleaseComplianceCtrl_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvReleaseComplianceCtrl_Request value = ReadRos2Dsr_msgs2SrvReleaseComplianceCtrl_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvReleaseComplianceCtrl_Request(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvReleaseComplianceCtrl_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    private static _Ros2Dsr_msgs2SrvReleaseComplianceCtrl_Request ReadRos2Dsr_msgs2SrvReleaseComplianceCtrl_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvReleaseComplianceCtrl_Request();
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvReleaseComplianceCtrl_Response
    {
        public bool @success = false;

        public _Ros2Dsr_msgs2SrvReleaseComplianceCtrl_Response()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvReleaseComplianceCtrl_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvReleaseComplianceCtrl_Response>
    {
        public static readonly Ros2Dsr_msgs2SrvReleaseComplianceCtrl_ResponseCodec Instance = new Ros2Dsr_msgs2SrvReleaseComplianceCtrl_ResponseCodec();

        private Ros2Dsr_msgs2SrvReleaseComplianceCtrl_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/ReleaseComplianceCtrl_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_d63a68f67aa608599d4a33a7081d157eafcf52928388b0bfb1dd5faf51a4fa40";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros2Dsr_msgs2SrvReleaseComplianceCtrl_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvReleaseComplianceCtrl_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvReleaseComplianceCtrl_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvReleaseComplianceCtrl_Response value = ReadRos2Dsr_msgs2SrvReleaseComplianceCtrl_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvReleaseComplianceCtrl_Response(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvReleaseComplianceCtrl_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros2Dsr_msgs2SrvReleaseComplianceCtrl_Response ReadRos2Dsr_msgs2SrvReleaseComplianceCtrl_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvReleaseComplianceCtrl_Response();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvReleaseForce_Request
    {
        public double @time = 0;

        public _Ros2Dsr_msgs2SrvReleaseForce_Request()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvReleaseForce_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvReleaseForce_Request>
    {
        public static readonly Ros2Dsr_msgs2SrvReleaseForce_RequestCodec Instance = new Ros2Dsr_msgs2SrvReleaseForce_RequestCodec();

        private Ros2Dsr_msgs2SrvReleaseForce_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/ReleaseForce_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_5346f6a634c61acc8d296e83cf96e007fe369765d291698063d80c5fa2e18a91";
        public const int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 8;

        public byte[] Encode(_Ros2Dsr_msgs2SrvReleaseForce_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvReleaseForce_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvReleaseForce_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvReleaseForce_Request value = ReadRos2Dsr_msgs2SrvReleaseForce_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvReleaseForce_Request(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvReleaseForce_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        double part0 = value.@time;
        writer.Float64(part0);
    }

    private static _Ros2Dsr_msgs2SrvReleaseForce_Request ReadRos2Dsr_msgs2SrvReleaseForce_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvReleaseForce_Request();
        value.@time = reader.Float64();
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvReleaseForce_Response
    {
        public bool @success = false;

        public _Ros2Dsr_msgs2SrvReleaseForce_Response()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvReleaseForce_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvReleaseForce_Response>
    {
        public static readonly Ros2Dsr_msgs2SrvReleaseForce_ResponseCodec Instance = new Ros2Dsr_msgs2SrvReleaseForce_ResponseCodec();

        private Ros2Dsr_msgs2SrvReleaseForce_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/ReleaseForce_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_4d74f7c2ca2f7b97f8222bc31ccef0450c045b2424efa6f9d6d550c6a824149c";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros2Dsr_msgs2SrvReleaseForce_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvReleaseForce_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvReleaseForce_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvReleaseForce_Response value = ReadRos2Dsr_msgs2SrvReleaseForce_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvReleaseForce_Response(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvReleaseForce_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros2Dsr_msgs2SrvReleaseForce_Response ReadRos2Dsr_msgs2SrvReleaseForce_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvReleaseForce_Response();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvResetWorkpieceWeight_Request
    {
        public _Ros2Dsr_msgs2SrvResetWorkpieceWeight_Request()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvResetWorkpieceWeight_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvResetWorkpieceWeight_Request>
    {
        public static readonly Ros2Dsr_msgs2SrvResetWorkpieceWeight_RequestCodec Instance = new Ros2Dsr_msgs2SrvResetWorkpieceWeight_RequestCodec();

        private Ros2Dsr_msgs2SrvResetWorkpieceWeight_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/ResetWorkpieceWeight_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_53ac7a846a49f8200358455dbbe63580e90309b3c3166ad48ed87ea33c364179";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public byte[] Encode(_Ros2Dsr_msgs2SrvResetWorkpieceWeight_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvResetWorkpieceWeight_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvResetWorkpieceWeight_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvResetWorkpieceWeight_Request value = ReadRos2Dsr_msgs2SrvResetWorkpieceWeight_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvResetWorkpieceWeight_Request(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvResetWorkpieceWeight_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    private static _Ros2Dsr_msgs2SrvResetWorkpieceWeight_Request ReadRos2Dsr_msgs2SrvResetWorkpieceWeight_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvResetWorkpieceWeight_Request();
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvResetWorkpieceWeight_Response
    {
        public bool @success = false;

        public _Ros2Dsr_msgs2SrvResetWorkpieceWeight_Response()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvResetWorkpieceWeight_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvResetWorkpieceWeight_Response>
    {
        public static readonly Ros2Dsr_msgs2SrvResetWorkpieceWeight_ResponseCodec Instance = new Ros2Dsr_msgs2SrvResetWorkpieceWeight_ResponseCodec();

        private Ros2Dsr_msgs2SrvResetWorkpieceWeight_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/ResetWorkpieceWeight_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_29d28e032dffe750b93e8207660af315687f3c2241a8a53f29fa7da7570b4abd";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros2Dsr_msgs2SrvResetWorkpieceWeight_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvResetWorkpieceWeight_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvResetWorkpieceWeight_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvResetWorkpieceWeight_Response value = ReadRos2Dsr_msgs2SrvResetWorkpieceWeight_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvResetWorkpieceWeight_Response(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvResetWorkpieceWeight_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros2Dsr_msgs2SrvResetWorkpieceWeight_Response ReadRos2Dsr_msgs2SrvResetWorkpieceWeight_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvResetWorkpieceWeight_Response();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvRobotiq2FClose_Request
    {
        public _Ros2Dsr_msgs2SrvRobotiq2FClose_Request()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvRobotiq2FClose_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvRobotiq2FClose_Request>
    {
        public static readonly Ros2Dsr_msgs2SrvRobotiq2FClose_RequestCodec Instance = new Ros2Dsr_msgs2SrvRobotiq2FClose_RequestCodec();

        private Ros2Dsr_msgs2SrvRobotiq2FClose_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/Robotiq2FClose_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_1bb8c6794458b545e6a117418c52ede9ba301787dcc80c346cdbeadb7072d974";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public byte[] Encode(_Ros2Dsr_msgs2SrvRobotiq2FClose_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvRobotiq2FClose_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvRobotiq2FClose_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvRobotiq2FClose_Request value = ReadRos2Dsr_msgs2SrvRobotiq2FClose_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvRobotiq2FClose_Request(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvRobotiq2FClose_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    private static _Ros2Dsr_msgs2SrvRobotiq2FClose_Request ReadRos2Dsr_msgs2SrvRobotiq2FClose_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvRobotiq2FClose_Request();
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvRobotiq2FClose_Response
    {
        public bool @success = false;

        public _Ros2Dsr_msgs2SrvRobotiq2FClose_Response()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvRobotiq2FClose_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvRobotiq2FClose_Response>
    {
        public static readonly Ros2Dsr_msgs2SrvRobotiq2FClose_ResponseCodec Instance = new Ros2Dsr_msgs2SrvRobotiq2FClose_ResponseCodec();

        private Ros2Dsr_msgs2SrvRobotiq2FClose_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/Robotiq2FClose_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_93b3a91aedebf08ae74a53857c898ddda0493662d02df100bde32652042f593e";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros2Dsr_msgs2SrvRobotiq2FClose_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvRobotiq2FClose_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvRobotiq2FClose_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvRobotiq2FClose_Response value = ReadRos2Dsr_msgs2SrvRobotiq2FClose_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvRobotiq2FClose_Response(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvRobotiq2FClose_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros2Dsr_msgs2SrvRobotiq2FClose_Response ReadRos2Dsr_msgs2SrvRobotiq2FClose_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvRobotiq2FClose_Response();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvRobotiq2FMove_Request
    {
        public double @width = 0;

        public _Ros2Dsr_msgs2SrvRobotiq2FMove_Request()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvRobotiq2FMove_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvRobotiq2FMove_Request>
    {
        public static readonly Ros2Dsr_msgs2SrvRobotiq2FMove_RequestCodec Instance = new Ros2Dsr_msgs2SrvRobotiq2FMove_RequestCodec();

        private Ros2Dsr_msgs2SrvRobotiq2FMove_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/Robotiq2FMove_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_d9125f3ed3a008a9796249b2759ff3e1fb9b8cc206ae89165fd20f382e0407f2";
        public const int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 8;

        public byte[] Encode(_Ros2Dsr_msgs2SrvRobotiq2FMove_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvRobotiq2FMove_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvRobotiq2FMove_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvRobotiq2FMove_Request value = ReadRos2Dsr_msgs2SrvRobotiq2FMove_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvRobotiq2FMove_Request(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvRobotiq2FMove_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        double part0 = value.@width;
        writer.Float64(part0);
    }

    private static _Ros2Dsr_msgs2SrvRobotiq2FMove_Request ReadRos2Dsr_msgs2SrvRobotiq2FMove_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvRobotiq2FMove_Request();
        value.@width = reader.Float64();
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvRobotiq2FMove_Response
    {
        public bool @success = false;

        public _Ros2Dsr_msgs2SrvRobotiq2FMove_Response()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvRobotiq2FMove_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvRobotiq2FMove_Response>
    {
        public static readonly Ros2Dsr_msgs2SrvRobotiq2FMove_ResponseCodec Instance = new Ros2Dsr_msgs2SrvRobotiq2FMove_ResponseCodec();

        private Ros2Dsr_msgs2SrvRobotiq2FMove_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/Robotiq2FMove_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_c7365e9517f2da81712616281451882cfedbe5cd0c771fbc93d3d155598fa41d";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros2Dsr_msgs2SrvRobotiq2FMove_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvRobotiq2FMove_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvRobotiq2FMove_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvRobotiq2FMove_Response value = ReadRos2Dsr_msgs2SrvRobotiq2FMove_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvRobotiq2FMove_Response(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvRobotiq2FMove_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros2Dsr_msgs2SrvRobotiq2FMove_Response ReadRos2Dsr_msgs2SrvRobotiq2FMove_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvRobotiq2FMove_Response();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvRobotiq2FOpen_Request
    {
        public _Ros2Dsr_msgs2SrvRobotiq2FOpen_Request()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvRobotiq2FOpen_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvRobotiq2FOpen_Request>
    {
        public static readonly Ros2Dsr_msgs2SrvRobotiq2FOpen_RequestCodec Instance = new Ros2Dsr_msgs2SrvRobotiq2FOpen_RequestCodec();

        private Ros2Dsr_msgs2SrvRobotiq2FOpen_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/Robotiq2FOpen_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_0d94a65ab5ad917af12e961dfddc1c3d722d0f9bf703a20f7c4e1b86d646889a";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public byte[] Encode(_Ros2Dsr_msgs2SrvRobotiq2FOpen_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvRobotiq2FOpen_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvRobotiq2FOpen_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvRobotiq2FOpen_Request value = ReadRos2Dsr_msgs2SrvRobotiq2FOpen_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvRobotiq2FOpen_Request(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvRobotiq2FOpen_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    private static _Ros2Dsr_msgs2SrvRobotiq2FOpen_Request ReadRos2Dsr_msgs2SrvRobotiq2FOpen_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvRobotiq2FOpen_Request();
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvRobotiq2FOpen_Response
    {
        public bool @success = false;

        public _Ros2Dsr_msgs2SrvRobotiq2FOpen_Response()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvRobotiq2FOpen_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvRobotiq2FOpen_Response>
    {
        public static readonly Ros2Dsr_msgs2SrvRobotiq2FOpen_ResponseCodec Instance = new Ros2Dsr_msgs2SrvRobotiq2FOpen_ResponseCodec();

        private Ros2Dsr_msgs2SrvRobotiq2FOpen_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/Robotiq2FOpen_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_0d7392466b804afe346333e6eab855aa2ac2d66c96ab417e7d96ec6917ec4f2c";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros2Dsr_msgs2SrvRobotiq2FOpen_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvRobotiq2FOpen_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvRobotiq2FOpen_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvRobotiq2FOpen_Response value = ReadRos2Dsr_msgs2SrvRobotiq2FOpen_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvRobotiq2FOpen_Response(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvRobotiq2FOpen_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros2Dsr_msgs2SrvRobotiq2FOpen_Response ReadRos2Dsr_msgs2SrvRobotiq2FOpen_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvRobotiq2FOpen_Response();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvSerialSendData_Request
    {
        public string @data = "";

        public _Ros2Dsr_msgs2SrvSerialSendData_Request()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvSerialSendData_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvSerialSendData_Request>
    {
        public static readonly Ros2Dsr_msgs2SrvSerialSendData_RequestCodec Instance = new Ros2Dsr_msgs2SrvSerialSendData_RequestCodec();

        private Ros2Dsr_msgs2SrvSerialSendData_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/SerialSendData_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_6a1da84ea13b36d9722b9c7779baa295bf13ee1e85266226659f5f077fb67ce8";
        public const int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 260;

        public byte[] Encode(_Ros2Dsr_msgs2SrvSerialSendData_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvSerialSendData_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvSerialSendData_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvSerialSendData_Request value = ReadRos2Dsr_msgs2SrvSerialSendData_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvSerialSendData_Request(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvSerialSendData_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        string part0 = value.@data;
        WriteText(writer, part0, 256);
    }

    private static _Ros2Dsr_msgs2SrvSerialSendData_Request ReadRos2Dsr_msgs2SrvSerialSendData_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvSerialSendData_Request();
        value.@data = ReadText(reader, 256);
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvSerialSendData_Response
    {
        public bool @success = false;

        public _Ros2Dsr_msgs2SrvSerialSendData_Response()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvSerialSendData_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvSerialSendData_Response>
    {
        public static readonly Ros2Dsr_msgs2SrvSerialSendData_ResponseCodec Instance = new Ros2Dsr_msgs2SrvSerialSendData_ResponseCodec();

        private Ros2Dsr_msgs2SrvSerialSendData_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/SerialSendData_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_a28dd2160987b004eb5ee91cc2e0e6a3fbdb54777e33df0044131811da1ac278";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros2Dsr_msgs2SrvSerialSendData_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvSerialSendData_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvSerialSendData_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvSerialSendData_Response value = ReadRos2Dsr_msgs2SrvSerialSendData_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvSerialSendData_Response(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvSerialSendData_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros2Dsr_msgs2SrvSerialSendData_Response ReadRos2Dsr_msgs2SrvSerialSendData_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvSerialSendData_Response();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvServoOff_Request
    {
        public sbyte @stop_type = 0;

        public _Ros2Dsr_msgs2SrvServoOff_Request()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvServoOff_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvServoOff_Request>
    {
        public static readonly Ros2Dsr_msgs2SrvServoOff_RequestCodec Instance = new Ros2Dsr_msgs2SrvServoOff_RequestCodec();

        private Ros2Dsr_msgs2SrvServoOff_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/ServoOff_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_f7445b77379d9197bd64162af81c79f19b8eccfd65bb35a1c7ec1c6c90b0956c";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros2Dsr_msgs2SrvServoOff_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvServoOff_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvServoOff_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvServoOff_Request value = ReadRos2Dsr_msgs2SrvServoOff_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvServoOff_Request(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvServoOff_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        sbyte part0 = value.@stop_type;
        writer.Unsigned(unchecked((byte)part0), 1);
    }

    private static _Ros2Dsr_msgs2SrvServoOff_Request ReadRos2Dsr_msgs2SrvServoOff_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvServoOff_Request();
        value.@stop_type = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvServoOff_Response
    {
        public bool @success = false;

        public _Ros2Dsr_msgs2SrvServoOff_Response()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvServoOff_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvServoOff_Response>
    {
        public static readonly Ros2Dsr_msgs2SrvServoOff_ResponseCodec Instance = new Ros2Dsr_msgs2SrvServoOff_ResponseCodec();

        private Ros2Dsr_msgs2SrvServoOff_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/ServoOff_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_da341e498342ad932e3f5f9a037252ccd53402609abfaf5a20e0b2f452ac74db";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros2Dsr_msgs2SrvServoOff_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvServoOff_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvServoOff_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvServoOff_Response value = ReadRos2Dsr_msgs2SrvServoOff_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvServoOff_Response(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvServoOff_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros2Dsr_msgs2SrvServoOff_Response ReadRos2Dsr_msgs2SrvServoOff_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvServoOff_Response();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvSetAccjRt_Request
    {
        public double[] @acc = new double[6];

        public _Ros2Dsr_msgs2SrvSetAccjRt_Request()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvSetAccjRt_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvSetAccjRt_Request>
    {
        public static readonly Ros2Dsr_msgs2SrvSetAccjRt_RequestCodec Instance = new Ros2Dsr_msgs2SrvSetAccjRt_RequestCodec();

        private Ros2Dsr_msgs2SrvSetAccjRt_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/SetAccjRt_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_73ff05ee72605c8e3bec72ea56f962475a50db8afed07ca299a1b47e5a16f66f";
        public const int MIN_WIRE_BYTES = 48, MAX_WIRE_BYTES = 48;

        public byte[] Encode(_Ros2Dsr_msgs2SrvSetAccjRt_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvSetAccjRt_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvSetAccjRt_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvSetAccjRt_Request value = ReadRos2Dsr_msgs2SrvSetAccjRt_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvSetAccjRt_Request(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvSetAccjRt_Request value)
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

    private static _Ros2Dsr_msgs2SrvSetAccjRt_Request ReadRos2Dsr_msgs2SrvSetAccjRt_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvSetAccjRt_Request();
        value.@acc = new double[6];
        for(int index = 0; index < value.@acc.Length; ++index)
            value.@acc[index] = reader.Float64();
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvSetAccjRt_Response
    {
        public bool @success = false;

        public _Ros2Dsr_msgs2SrvSetAccjRt_Response()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvSetAccjRt_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvSetAccjRt_Response>
    {
        public static readonly Ros2Dsr_msgs2SrvSetAccjRt_ResponseCodec Instance = new Ros2Dsr_msgs2SrvSetAccjRt_ResponseCodec();

        private Ros2Dsr_msgs2SrvSetAccjRt_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/SetAccjRt_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_a25cd5180e9812a012ce3337665b7a20a97e13ad99c9ca8accdcbbd644eb539c";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros2Dsr_msgs2SrvSetAccjRt_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvSetAccjRt_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvSetAccjRt_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvSetAccjRt_Response value = ReadRos2Dsr_msgs2SrvSetAccjRt_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvSetAccjRt_Response(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvSetAccjRt_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros2Dsr_msgs2SrvSetAccjRt_Response ReadRos2Dsr_msgs2SrvSetAccjRt_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvSetAccjRt_Response();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvSetAccxRt_Request
    {
        public double @trans = 0;
        public double @rotation = 0;

        public _Ros2Dsr_msgs2SrvSetAccxRt_Request()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvSetAccxRt_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvSetAccxRt_Request>
    {
        public static readonly Ros2Dsr_msgs2SrvSetAccxRt_RequestCodec Instance = new Ros2Dsr_msgs2SrvSetAccxRt_RequestCodec();

        private Ros2Dsr_msgs2SrvSetAccxRt_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/SetAccxRt_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_55addee739e16839a0bedd135930ea3b9e1a09f80776346f7c71c1d4e64e5111";
        public const int MIN_WIRE_BYTES = 16, MAX_WIRE_BYTES = 16;

        public byte[] Encode(_Ros2Dsr_msgs2SrvSetAccxRt_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvSetAccxRt_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvSetAccxRt_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvSetAccxRt_Request value = ReadRos2Dsr_msgs2SrvSetAccxRt_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvSetAccxRt_Request(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvSetAccxRt_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        double part0 = value.@trans;
        writer.Float64(part0);
        double part1 = value.@rotation;
        writer.Float64(part1);
    }

    private static _Ros2Dsr_msgs2SrvSetAccxRt_Request ReadRos2Dsr_msgs2SrvSetAccxRt_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvSetAccxRt_Request();
        value.@trans = reader.Float64();
        value.@rotation = reader.Float64();
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvSetAccxRt_Response
    {
        public bool @success = false;

        public _Ros2Dsr_msgs2SrvSetAccxRt_Response()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvSetAccxRt_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvSetAccxRt_Response>
    {
        public static readonly Ros2Dsr_msgs2SrvSetAccxRt_ResponseCodec Instance = new Ros2Dsr_msgs2SrvSetAccxRt_ResponseCodec();

        private Ros2Dsr_msgs2SrvSetAccxRt_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/SetAccxRt_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_1277c73c96a872595079bdb1fbff9b99b4f2f7f62ad50339d7402a864610434c";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros2Dsr_msgs2SrvSetAccxRt_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvSetAccxRt_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvSetAccxRt_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvSetAccxRt_Response value = ReadRos2Dsr_msgs2SrvSetAccxRt_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvSetAccxRt_Response(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvSetAccxRt_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros2Dsr_msgs2SrvSetAccxRt_Response ReadRos2Dsr_msgs2SrvSetAccxRt_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvSetAccxRt_Response();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvSetCtrlBoxAnalogInputType_Request
    {
        public sbyte @channel = 0;
        public sbyte @mode = 0;

        public _Ros2Dsr_msgs2SrvSetCtrlBoxAnalogInputType_Request()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvSetCtrlBoxAnalogInputType_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvSetCtrlBoxAnalogInputType_Request>
    {
        public static readonly Ros2Dsr_msgs2SrvSetCtrlBoxAnalogInputType_RequestCodec Instance = new Ros2Dsr_msgs2SrvSetCtrlBoxAnalogInputType_RequestCodec();

        private Ros2Dsr_msgs2SrvSetCtrlBoxAnalogInputType_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/SetCtrlBoxAnalogInputType_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_56cd6d0829be3eac45dfd15bd9693f53b72705481bb905c16dc0ab19843fc7d0";
        public const int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;

        public byte[] Encode(_Ros2Dsr_msgs2SrvSetCtrlBoxAnalogInputType_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvSetCtrlBoxAnalogInputType_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvSetCtrlBoxAnalogInputType_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvSetCtrlBoxAnalogInputType_Request value = ReadRos2Dsr_msgs2SrvSetCtrlBoxAnalogInputType_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvSetCtrlBoxAnalogInputType_Request(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvSetCtrlBoxAnalogInputType_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        sbyte part0 = value.@channel;
        writer.Unsigned(unchecked((byte)part0), 1);
        sbyte part1 = value.@mode;
        writer.Unsigned(unchecked((byte)part1), 1);
    }

    private static _Ros2Dsr_msgs2SrvSetCtrlBoxAnalogInputType_Request ReadRos2Dsr_msgs2SrvSetCtrlBoxAnalogInputType_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvSetCtrlBoxAnalogInputType_Request();
        value.@channel = unchecked((sbyte)reader.Unsigned(1));
        value.@mode = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvSetCtrlBoxAnalogInputType_Response
    {
        public bool @success = false;

        public _Ros2Dsr_msgs2SrvSetCtrlBoxAnalogInputType_Response()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvSetCtrlBoxAnalogInputType_ResponseCodec :
        global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvSetCtrlBoxAnalogInputType_Response>
    {
        public static readonly Ros2Dsr_msgs2SrvSetCtrlBoxAnalogInputType_ResponseCodec Instance = new Ros2Dsr_msgs2SrvSetCtrlBoxAnalogInputType_ResponseCodec();

        private Ros2Dsr_msgs2SrvSetCtrlBoxAnalogInputType_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/SetCtrlBoxAnalogInputType_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_dcbd1b140dca6119d2be2b2eea11efc394969f0bf16926c5758bd384e764eaf0";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros2Dsr_msgs2SrvSetCtrlBoxAnalogInputType_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvSetCtrlBoxAnalogInputType_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvSetCtrlBoxAnalogInputType_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvSetCtrlBoxAnalogInputType_Response value = ReadRos2Dsr_msgs2SrvSetCtrlBoxAnalogInputType_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvSetCtrlBoxAnalogInputType_Response(_Codecs.Writer writer,
                                                                                _Ros2Dsr_msgs2SrvSetCtrlBoxAnalogInputType_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros2Dsr_msgs2SrvSetCtrlBoxAnalogInputType_Response ReadRos2Dsr_msgs2SrvSetCtrlBoxAnalogInputType_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvSetCtrlBoxAnalogInputType_Response();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutput_Request
    {
        public sbyte @channel = 0;
        public double @value = 0;

        public _Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutput_Request()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutput_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutput_Request>
    {
        public static readonly Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutput_RequestCodec Instance = new Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutput_RequestCodec();

        private Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutput_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/SetCtrlBoxAnalogOutput_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_6da2558f6e5259eaf4573144414fd8e6a917a9a43d11b7a0036187158e97f34a";
        public const int MIN_WIRE_BYTES = 9, MAX_WIRE_BYTES = 9;

        public byte[] Encode(_Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutput_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvSetCtrlBoxAnalogOutput_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutput_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutput_Request value = ReadRos2Dsr_msgs2SrvSetCtrlBoxAnalogOutput_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvSetCtrlBoxAnalogOutput_Request(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutput_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        sbyte part0 = value.@channel;
        writer.Unsigned(unchecked((byte)part0), 1);
        double part1 = value.@value;
        writer.Float64(part1);
    }

    private static _Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutput_Request ReadRos2Dsr_msgs2SrvSetCtrlBoxAnalogOutput_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutput_Request();
        value.@channel = unchecked((sbyte)reader.Unsigned(1));
        value.@value = reader.Float64();
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutput_Response
    {
        public bool @success = false;

        public _Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutput_Response()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutput_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutput_Response>
    {
        public static readonly Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutput_ResponseCodec Instance = new Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutput_ResponseCodec();

        private Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutput_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/SetCtrlBoxAnalogOutput_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_258f0495c9eeacec7cf7221018fab5a99939f153c6a5cddb6f653ca71859e1e1";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutput_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvSetCtrlBoxAnalogOutput_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutput_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutput_Response value = ReadRos2Dsr_msgs2SrvSetCtrlBoxAnalogOutput_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvSetCtrlBoxAnalogOutput_Response(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutput_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutput_Response ReadRos2Dsr_msgs2SrvSetCtrlBoxAnalogOutput_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutput_Response();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutputType_Request
    {
        public sbyte @channel = 0;
        public sbyte @mode = 0;

        public _Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutputType_Request()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutputType_RequestCodec :
        global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutputType_Request>
    {
        public static readonly Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutputType_RequestCodec Instance = new Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutputType_RequestCodec();

        private Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutputType_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/SetCtrlBoxAnalogOutputType_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_ee2b262d71056945ef50cd2cfd645f63220c63071ed28531e79740539b0b15f9";
        public const int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;

        public byte[] Encode(_Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutputType_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvSetCtrlBoxAnalogOutputType_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutputType_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutputType_Request value = ReadRos2Dsr_msgs2SrvSetCtrlBoxAnalogOutputType_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvSetCtrlBoxAnalogOutputType_Request(_Codecs.Writer writer,
                                                                                _Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutputType_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        sbyte part0 = value.@channel;
        writer.Unsigned(unchecked((byte)part0), 1);
        sbyte part1 = value.@mode;
        writer.Unsigned(unchecked((byte)part1), 1);
    }

    private static _Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutputType_Request ReadRos2Dsr_msgs2SrvSetCtrlBoxAnalogOutputType_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutputType_Request();
        value.@channel = unchecked((sbyte)reader.Unsigned(1));
        value.@mode = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutputType_Response
    {
        public bool @success = false;

        public _Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutputType_Response()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutputType_ResponseCodec :
        global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutputType_Response>
    {
        public static readonly Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutputType_ResponseCodec Instance =
            new Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutputType_ResponseCodec();

        private Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutputType_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/SetCtrlBoxAnalogOutputType_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_47900b504bce4fd7546759c836a78d02e873630ecc79cfa989e3473a9f490359";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutputType_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvSetCtrlBoxAnalogOutputType_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutputType_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutputType_Response value = ReadRos2Dsr_msgs2SrvSetCtrlBoxAnalogOutputType_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvSetCtrlBoxAnalogOutputType_Response(_Codecs.Writer writer,
                                                                                 _Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutputType_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutputType_Response ReadRos2Dsr_msgs2SrvSetCtrlBoxAnalogOutputType_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutputType_Response();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvSetCtrlBoxDigitalOutput_Request
    {
        public sbyte @index = 0;
        public sbyte @value = 0;

        public _Ros2Dsr_msgs2SrvSetCtrlBoxDigitalOutput_Request()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvSetCtrlBoxDigitalOutput_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvSetCtrlBoxDigitalOutput_Request>
    {
        public static readonly Ros2Dsr_msgs2SrvSetCtrlBoxDigitalOutput_RequestCodec Instance = new Ros2Dsr_msgs2SrvSetCtrlBoxDigitalOutput_RequestCodec();

        private Ros2Dsr_msgs2SrvSetCtrlBoxDigitalOutput_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/SetCtrlBoxDigitalOutput_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_ce45009eaf9382aa3bccc48526aa9e5a040847ad08deb9a37d574dd69a34258d";
        public const int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;

        public byte[] Encode(_Ros2Dsr_msgs2SrvSetCtrlBoxDigitalOutput_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvSetCtrlBoxDigitalOutput_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvSetCtrlBoxDigitalOutput_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvSetCtrlBoxDigitalOutput_Request value = ReadRos2Dsr_msgs2SrvSetCtrlBoxDigitalOutput_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvSetCtrlBoxDigitalOutput_Request(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvSetCtrlBoxDigitalOutput_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        sbyte part0 = value.@index;
        writer.Unsigned(unchecked((byte)part0), 1);
        sbyte part1 = value.@value;
        writer.Unsigned(unchecked((byte)part1), 1);
    }

    private static _Ros2Dsr_msgs2SrvSetCtrlBoxDigitalOutput_Request ReadRos2Dsr_msgs2SrvSetCtrlBoxDigitalOutput_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvSetCtrlBoxDigitalOutput_Request();
        value.@index = unchecked((sbyte)reader.Unsigned(1));
        value.@value = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvSetCtrlBoxDigitalOutput_Response
    {
        public bool @success = false;

        public _Ros2Dsr_msgs2SrvSetCtrlBoxDigitalOutput_Response()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvSetCtrlBoxDigitalOutput_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvSetCtrlBoxDigitalOutput_Response>
    {
        public static readonly Ros2Dsr_msgs2SrvSetCtrlBoxDigitalOutput_ResponseCodec Instance = new Ros2Dsr_msgs2SrvSetCtrlBoxDigitalOutput_ResponseCodec();

        private Ros2Dsr_msgs2SrvSetCtrlBoxDigitalOutput_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/SetCtrlBoxDigitalOutput_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_fd9da818a998c786665a6849417511722de21391c4aaa92422eb7db061bb9330";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros2Dsr_msgs2SrvSetCtrlBoxDigitalOutput_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvSetCtrlBoxDigitalOutput_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvSetCtrlBoxDigitalOutput_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvSetCtrlBoxDigitalOutput_Response value = ReadRos2Dsr_msgs2SrvSetCtrlBoxDigitalOutput_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvSetCtrlBoxDigitalOutput_Response(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvSetCtrlBoxDigitalOutput_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros2Dsr_msgs2SrvSetCtrlBoxDigitalOutput_Response ReadRos2Dsr_msgs2SrvSetCtrlBoxDigitalOutput_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvSetCtrlBoxDigitalOutput_Response();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvSetCurrentTcp_Request
    {
        public string @name = "";

        public _Ros2Dsr_msgs2SrvSetCurrentTcp_Request()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvSetCurrentTcp_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvSetCurrentTcp_Request>
    {
        public static readonly Ros2Dsr_msgs2SrvSetCurrentTcp_RequestCodec Instance = new Ros2Dsr_msgs2SrvSetCurrentTcp_RequestCodec();

        private Ros2Dsr_msgs2SrvSetCurrentTcp_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/SetCurrentTcp_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_1b9f1bd57a2dd82cc52ec59acc9967aea8948613ec68dd26e0a9a9897088d002";
        public const int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 260;

        public byte[] Encode(_Ros2Dsr_msgs2SrvSetCurrentTcp_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvSetCurrentTcp_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvSetCurrentTcp_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvSetCurrentTcp_Request value = ReadRos2Dsr_msgs2SrvSetCurrentTcp_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvSetCurrentTcp_Request(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvSetCurrentTcp_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        string part0 = value.@name;
        WriteText(writer, part0, 256);
    }

    private static _Ros2Dsr_msgs2SrvSetCurrentTcp_Request ReadRos2Dsr_msgs2SrvSetCurrentTcp_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvSetCurrentTcp_Request();
        value.@name = ReadText(reader, 256);
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvSetCurrentTcp_Response
    {
        public bool @success = false;

        public _Ros2Dsr_msgs2SrvSetCurrentTcp_Response()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvSetCurrentTcp_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvSetCurrentTcp_Response>
    {
        public static readonly Ros2Dsr_msgs2SrvSetCurrentTcp_ResponseCodec Instance = new Ros2Dsr_msgs2SrvSetCurrentTcp_ResponseCodec();

        private Ros2Dsr_msgs2SrvSetCurrentTcp_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/SetCurrentTcp_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_9c66924cfd4931bae242c3d11dd0a9293b337defc82501719b179b622d9f342a";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros2Dsr_msgs2SrvSetCurrentTcp_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvSetCurrentTcp_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvSetCurrentTcp_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvSetCurrentTcp_Response value = ReadRos2Dsr_msgs2SrvSetCurrentTcp_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvSetCurrentTcp_Response(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvSetCurrentTcp_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros2Dsr_msgs2SrvSetCurrentTcp_Response ReadRos2Dsr_msgs2SrvSetCurrentTcp_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvSetCurrentTcp_Response();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvSetCurrentTool_Request
    {
        public string @name = "";

        public _Ros2Dsr_msgs2SrvSetCurrentTool_Request()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvSetCurrentTool_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvSetCurrentTool_Request>
    {
        public static readonly Ros2Dsr_msgs2SrvSetCurrentTool_RequestCodec Instance = new Ros2Dsr_msgs2SrvSetCurrentTool_RequestCodec();

        private Ros2Dsr_msgs2SrvSetCurrentTool_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/SetCurrentTool_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_8d1254ad637afaeca980e00cb89c1a3219cea13e93a0c83641fcf3f7c8afd440";
        public const int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 260;

        public byte[] Encode(_Ros2Dsr_msgs2SrvSetCurrentTool_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvSetCurrentTool_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvSetCurrentTool_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvSetCurrentTool_Request value = ReadRos2Dsr_msgs2SrvSetCurrentTool_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvSetCurrentTool_Request(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvSetCurrentTool_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        string part0 = value.@name;
        WriteText(writer, part0, 256);
    }

    private static _Ros2Dsr_msgs2SrvSetCurrentTool_Request ReadRos2Dsr_msgs2SrvSetCurrentTool_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvSetCurrentTool_Request();
        value.@name = ReadText(reader, 256);
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvSetCurrentTool_Response
    {
        public bool @success = false;

        public _Ros2Dsr_msgs2SrvSetCurrentTool_Response()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvSetCurrentTool_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvSetCurrentTool_Response>
    {
        public static readonly Ros2Dsr_msgs2SrvSetCurrentTool_ResponseCodec Instance = new Ros2Dsr_msgs2SrvSetCurrentTool_ResponseCodec();

        private Ros2Dsr_msgs2SrvSetCurrentTool_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/SetCurrentTool_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_964448078ed08bb742a8077370c02f6b88d702244df67e4eb7d67828abfae932";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros2Dsr_msgs2SrvSetCurrentTool_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvSetCurrentTool_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvSetCurrentTool_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvSetCurrentTool_Response value = ReadRos2Dsr_msgs2SrvSetCurrentTool_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvSetCurrentTool_Response(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvSetCurrentTool_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros2Dsr_msgs2SrvSetCurrentTool_Response ReadRos2Dsr_msgs2SrvSetCurrentTool_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvSetCurrentTool_Response();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvSetDesiredForce_Request
    {
        public double[] @fd = new double[6];
        public sbyte[] @dir = new sbyte[6];
        public sbyte @ref = 0;
        public double @time = 0;
        public sbyte @mod = 0;

        public _Ros2Dsr_msgs2SrvSetDesiredForce_Request()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvSetDesiredForce_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvSetDesiredForce_Request>
    {
        public static readonly Ros2Dsr_msgs2SrvSetDesiredForce_RequestCodec Instance = new Ros2Dsr_msgs2SrvSetDesiredForce_RequestCodec();

        private Ros2Dsr_msgs2SrvSetDesiredForce_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/SetDesiredForce_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_a49831bf62f8a697addd5be7521f861a307940be45d4a59d9777580801ba4b1a";
        public const int MIN_WIRE_BYTES = 64, MAX_WIRE_BYTES = 64;

        public byte[] Encode(_Ros2Dsr_msgs2SrvSetDesiredForce_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvSetDesiredForce_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvSetDesiredForce_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvSetDesiredForce_Request value = ReadRos2Dsr_msgs2SrvSetDesiredForce_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvSetDesiredForce_Request(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvSetDesiredForce_Request value)
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

    private static _Ros2Dsr_msgs2SrvSetDesiredForce_Request ReadRos2Dsr_msgs2SrvSetDesiredForce_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvSetDesiredForce_Request();
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

    public sealed class _Ros2Dsr_msgs2SrvSetDesiredForce_Response
    {
        public bool @success = false;

        public _Ros2Dsr_msgs2SrvSetDesiredForce_Response()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvSetDesiredForce_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvSetDesiredForce_Response>
    {
        public static readonly Ros2Dsr_msgs2SrvSetDesiredForce_ResponseCodec Instance = new Ros2Dsr_msgs2SrvSetDesiredForce_ResponseCodec();

        private Ros2Dsr_msgs2SrvSetDesiredForce_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/SetDesiredForce_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_53ba3b5b57cca8d039ad6c148c20f0cff1e6c93ba4fe170bc7ccc5d0d3c056f9";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros2Dsr_msgs2SrvSetDesiredForce_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvSetDesiredForce_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvSetDesiredForce_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvSetDesiredForce_Response value = ReadRos2Dsr_msgs2SrvSetDesiredForce_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvSetDesiredForce_Response(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvSetDesiredForce_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros2Dsr_msgs2SrvSetDesiredForce_Response ReadRos2Dsr_msgs2SrvSetDesiredForce_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvSetDesiredForce_Response();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvSetModbusOutput_Request
    {
        public string @name = "";
        public int @value = 0;

        public _Ros2Dsr_msgs2SrvSetModbusOutput_Request()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvSetModbusOutput_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvSetModbusOutput_Request>
    {
        public static readonly Ros2Dsr_msgs2SrvSetModbusOutput_RequestCodec Instance = new Ros2Dsr_msgs2SrvSetModbusOutput_RequestCodec();

        private Ros2Dsr_msgs2SrvSetModbusOutput_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/SetModbusOutput_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_0653027d5adf9f01bda734d110232c55849f4b19ddaee78dd20b4aecf79096aa";
        public const int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 264;

        public byte[] Encode(_Ros2Dsr_msgs2SrvSetModbusOutput_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvSetModbusOutput_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvSetModbusOutput_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvSetModbusOutput_Request value = ReadRos2Dsr_msgs2SrvSetModbusOutput_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvSetModbusOutput_Request(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvSetModbusOutput_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        string part0 = value.@name;
        WriteText(writer, part0, 256);
        int part1 = value.@value;
        writer.Unsigned(unchecked((uint)part1), 4);
    }

    private static _Ros2Dsr_msgs2SrvSetModbusOutput_Request ReadRos2Dsr_msgs2SrvSetModbusOutput_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvSetModbusOutput_Request();
        value.@name = ReadText(reader, 256);
        value.@value = unchecked((int)reader.Unsigned(4));
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvSetModbusOutput_Response
    {
        public bool @success = false;

        public _Ros2Dsr_msgs2SrvSetModbusOutput_Response()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvSetModbusOutput_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvSetModbusOutput_Response>
    {
        public static readonly Ros2Dsr_msgs2SrvSetModbusOutput_ResponseCodec Instance = new Ros2Dsr_msgs2SrvSetModbusOutput_ResponseCodec();

        private Ros2Dsr_msgs2SrvSetModbusOutput_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/SetModbusOutput_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_8a8f0f0da4dc7a3235882cc2aef013d1722f17020535a4ddad5dceec5c533262";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros2Dsr_msgs2SrvSetModbusOutput_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvSetModbusOutput_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvSetModbusOutput_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvSetModbusOutput_Response value = ReadRos2Dsr_msgs2SrvSetModbusOutput_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvSetModbusOutput_Response(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvSetModbusOutput_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros2Dsr_msgs2SrvSetModbusOutput_Response ReadRos2Dsr_msgs2SrvSetModbusOutput_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvSetModbusOutput_Response();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvSetOutputRegisterBit_Request
    {
        public ushort @address = 0;
        public int @value = 0;

        public _Ros2Dsr_msgs2SrvSetOutputRegisterBit_Request()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvSetOutputRegisterBit_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvSetOutputRegisterBit_Request>
    {
        public static readonly Ros2Dsr_msgs2SrvSetOutputRegisterBit_RequestCodec Instance = new Ros2Dsr_msgs2SrvSetOutputRegisterBit_RequestCodec();

        private Ros2Dsr_msgs2SrvSetOutputRegisterBit_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/SetOutputRegisterBit_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_309eebb54f359760a9c52635c1989d966c7b3998e34444dfccc4023ed43c1f88";
        public const int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 6;

        public byte[] Encode(_Ros2Dsr_msgs2SrvSetOutputRegisterBit_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvSetOutputRegisterBit_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvSetOutputRegisterBit_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvSetOutputRegisterBit_Request value = ReadRos2Dsr_msgs2SrvSetOutputRegisterBit_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvSetOutputRegisterBit_Request(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvSetOutputRegisterBit_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        ushort part0 = value.@address;
        writer.Unsigned(part0, 2);
        int part1 = value.@value;
        writer.Unsigned(unchecked((uint)part1), 4);
    }

    private static _Ros2Dsr_msgs2SrvSetOutputRegisterBit_Request ReadRos2Dsr_msgs2SrvSetOutputRegisterBit_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvSetOutputRegisterBit_Request();
        value.@address = unchecked((ushort)reader.Unsigned(2));
        value.@value = unchecked((int)reader.Unsigned(4));
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvSetOutputRegisterBit_Response
    {
        public bool @success = false;

        public _Ros2Dsr_msgs2SrvSetOutputRegisterBit_Response()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvSetOutputRegisterBit_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvSetOutputRegisterBit_Response>
    {
        public static readonly Ros2Dsr_msgs2SrvSetOutputRegisterBit_ResponseCodec Instance = new Ros2Dsr_msgs2SrvSetOutputRegisterBit_ResponseCodec();

        private Ros2Dsr_msgs2SrvSetOutputRegisterBit_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/SetOutputRegisterBit_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_3358f20e8d47bdafe4406208878d8c28c320f9e53844eaacfaadfb1255f8a6e8";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros2Dsr_msgs2SrvSetOutputRegisterBit_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvSetOutputRegisterBit_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvSetOutputRegisterBit_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvSetOutputRegisterBit_Response value = ReadRos2Dsr_msgs2SrvSetOutputRegisterBit_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvSetOutputRegisterBit_Response(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvSetOutputRegisterBit_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros2Dsr_msgs2SrvSetOutputRegisterBit_Response ReadRos2Dsr_msgs2SrvSetOutputRegisterBit_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvSetOutputRegisterBit_Response();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvSetOutputRegisterFloat_Request
    {
        public ushort @address = 0;
        public double @value = 0;

        public _Ros2Dsr_msgs2SrvSetOutputRegisterFloat_Request()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvSetOutputRegisterFloat_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvSetOutputRegisterFloat_Request>
    {
        public static readonly Ros2Dsr_msgs2SrvSetOutputRegisterFloat_RequestCodec Instance = new Ros2Dsr_msgs2SrvSetOutputRegisterFloat_RequestCodec();

        private Ros2Dsr_msgs2SrvSetOutputRegisterFloat_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/SetOutputRegisterFloat_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_7f0c5c355381aa45700641c3ba99b227fe6bbb5394f1e2cb01c4f2b899918c61";
        public const int MIN_WIRE_BYTES = 10, MAX_WIRE_BYTES = 10;

        public byte[] Encode(_Ros2Dsr_msgs2SrvSetOutputRegisterFloat_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvSetOutputRegisterFloat_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvSetOutputRegisterFloat_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvSetOutputRegisterFloat_Request value = ReadRos2Dsr_msgs2SrvSetOutputRegisterFloat_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvSetOutputRegisterFloat_Request(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvSetOutputRegisterFloat_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        ushort part0 = value.@address;
        writer.Unsigned(part0, 2);
        double part1 = value.@value;
        writer.Float64(part1);
    }

    private static _Ros2Dsr_msgs2SrvSetOutputRegisterFloat_Request ReadRos2Dsr_msgs2SrvSetOutputRegisterFloat_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvSetOutputRegisterFloat_Request();
        value.@address = unchecked((ushort)reader.Unsigned(2));
        value.@value = reader.Float64();
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvSetOutputRegisterFloat_Response
    {
        public bool @success = false;

        public _Ros2Dsr_msgs2SrvSetOutputRegisterFloat_Response()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvSetOutputRegisterFloat_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvSetOutputRegisterFloat_Response>
    {
        public static readonly Ros2Dsr_msgs2SrvSetOutputRegisterFloat_ResponseCodec Instance = new Ros2Dsr_msgs2SrvSetOutputRegisterFloat_ResponseCodec();

        private Ros2Dsr_msgs2SrvSetOutputRegisterFloat_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/SetOutputRegisterFloat_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_9c3d3799cc5622c88b54926353e730bf362a75c4a23e95c9543820d489f1b27f";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros2Dsr_msgs2SrvSetOutputRegisterFloat_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvSetOutputRegisterFloat_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvSetOutputRegisterFloat_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvSetOutputRegisterFloat_Response value = ReadRos2Dsr_msgs2SrvSetOutputRegisterFloat_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvSetOutputRegisterFloat_Response(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvSetOutputRegisterFloat_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros2Dsr_msgs2SrvSetOutputRegisterFloat_Response ReadRos2Dsr_msgs2SrvSetOutputRegisterFloat_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvSetOutputRegisterFloat_Response();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvSetOutputRegisterInt_Request
    {
        public ushort @address = 0;
        public int @value = 0;

        public _Ros2Dsr_msgs2SrvSetOutputRegisterInt_Request()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvSetOutputRegisterInt_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvSetOutputRegisterInt_Request>
    {
        public static readonly Ros2Dsr_msgs2SrvSetOutputRegisterInt_RequestCodec Instance = new Ros2Dsr_msgs2SrvSetOutputRegisterInt_RequestCodec();

        private Ros2Dsr_msgs2SrvSetOutputRegisterInt_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/SetOutputRegisterInt_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_1d250e3cfd00550fc55b69ac120c384e90573636d7a2adc8a5e8b122ec678364";
        public const int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 6;

        public byte[] Encode(_Ros2Dsr_msgs2SrvSetOutputRegisterInt_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvSetOutputRegisterInt_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvSetOutputRegisterInt_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvSetOutputRegisterInt_Request value = ReadRos2Dsr_msgs2SrvSetOutputRegisterInt_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvSetOutputRegisterInt_Request(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvSetOutputRegisterInt_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        ushort part0 = value.@address;
        writer.Unsigned(part0, 2);
        int part1 = value.@value;
        writer.Unsigned(unchecked((uint)part1), 4);
    }

    private static _Ros2Dsr_msgs2SrvSetOutputRegisterInt_Request ReadRos2Dsr_msgs2SrvSetOutputRegisterInt_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvSetOutputRegisterInt_Request();
        value.@address = unchecked((ushort)reader.Unsigned(2));
        value.@value = unchecked((int)reader.Unsigned(4));
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvSetOutputRegisterInt_Response
    {
        public bool @success = false;

        public _Ros2Dsr_msgs2SrvSetOutputRegisterInt_Response()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvSetOutputRegisterInt_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvSetOutputRegisterInt_Response>
    {
        public static readonly Ros2Dsr_msgs2SrvSetOutputRegisterInt_ResponseCodec Instance = new Ros2Dsr_msgs2SrvSetOutputRegisterInt_ResponseCodec();

        private Ros2Dsr_msgs2SrvSetOutputRegisterInt_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/SetOutputRegisterInt_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_ec70602507eebbdca44703e487375d482510aaa684aa2dd93a5bdcd0ba8275f7";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros2Dsr_msgs2SrvSetOutputRegisterInt_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvSetOutputRegisterInt_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvSetOutputRegisterInt_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvSetOutputRegisterInt_Response value = ReadRos2Dsr_msgs2SrvSetOutputRegisterInt_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvSetOutputRegisterInt_Response(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvSetOutputRegisterInt_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros2Dsr_msgs2SrvSetOutputRegisterInt_Response ReadRos2Dsr_msgs2SrvSetOutputRegisterInt_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvSetOutputRegisterInt_Response();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvSetRefCoord_Request
    {
        public sbyte @coord = 0;

        public _Ros2Dsr_msgs2SrvSetRefCoord_Request()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvSetRefCoord_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvSetRefCoord_Request>
    {
        public static readonly Ros2Dsr_msgs2SrvSetRefCoord_RequestCodec Instance = new Ros2Dsr_msgs2SrvSetRefCoord_RequestCodec();

        private Ros2Dsr_msgs2SrvSetRefCoord_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/SetRefCoord_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_801f3fdd878bd7661db70ef37a8146e9c02f539c65d91a60a7589a1009bc9be5";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros2Dsr_msgs2SrvSetRefCoord_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvSetRefCoord_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvSetRefCoord_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvSetRefCoord_Request value = ReadRos2Dsr_msgs2SrvSetRefCoord_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvSetRefCoord_Request(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvSetRefCoord_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        sbyte part0 = value.@coord;
        writer.Unsigned(unchecked((byte)part0), 1);
    }

    private static _Ros2Dsr_msgs2SrvSetRefCoord_Request ReadRos2Dsr_msgs2SrvSetRefCoord_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvSetRefCoord_Request();
        value.@coord = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvSetRefCoord_Response
    {
        public bool @success = false;

        public _Ros2Dsr_msgs2SrvSetRefCoord_Response()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvSetRefCoord_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvSetRefCoord_Response>
    {
        public static readonly Ros2Dsr_msgs2SrvSetRefCoord_ResponseCodec Instance = new Ros2Dsr_msgs2SrvSetRefCoord_ResponseCodec();

        private Ros2Dsr_msgs2SrvSetRefCoord_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/SetRefCoord_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_733bfb338aa280d2475a6398264e26cf76e873c92e20e9e8496898c38f990bae";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros2Dsr_msgs2SrvSetRefCoord_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvSetRefCoord_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvSetRefCoord_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvSetRefCoord_Response value = ReadRos2Dsr_msgs2SrvSetRefCoord_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvSetRefCoord_Response(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvSetRefCoord_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros2Dsr_msgs2SrvSetRefCoord_Response ReadRos2Dsr_msgs2SrvSetRefCoord_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvSetRefCoord_Response();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvSetRobotControl_Request
    {
        public sbyte @robot_control = 0;

        public _Ros2Dsr_msgs2SrvSetRobotControl_Request()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvSetRobotControl_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvSetRobotControl_Request>
    {
        public static readonly Ros2Dsr_msgs2SrvSetRobotControl_RequestCodec Instance = new Ros2Dsr_msgs2SrvSetRobotControl_RequestCodec();

        private Ros2Dsr_msgs2SrvSetRobotControl_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/SetRobotControl_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_d39305d9d913933542cc89eba2c9b5abd68e25574c9f8096ad4bb16cebb2c97f";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros2Dsr_msgs2SrvSetRobotControl_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvSetRobotControl_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvSetRobotControl_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvSetRobotControl_Request value = ReadRos2Dsr_msgs2SrvSetRobotControl_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvSetRobotControl_Request(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvSetRobotControl_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        sbyte part0 = value.@robot_control;
        writer.Unsigned(unchecked((byte)part0), 1);
    }

    private static _Ros2Dsr_msgs2SrvSetRobotControl_Request ReadRos2Dsr_msgs2SrvSetRobotControl_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvSetRobotControl_Request();
        value.@robot_control = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvSetRobotControl_Response
    {
        public bool @success = false;

        public _Ros2Dsr_msgs2SrvSetRobotControl_Response()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvSetRobotControl_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvSetRobotControl_Response>
    {
        public static readonly Ros2Dsr_msgs2SrvSetRobotControl_ResponseCodec Instance = new Ros2Dsr_msgs2SrvSetRobotControl_ResponseCodec();

        private Ros2Dsr_msgs2SrvSetRobotControl_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/SetRobotControl_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_e4aad49231edc73256306d46bd537ffb24d61956146265a7f04d1eb1aafc684c";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros2Dsr_msgs2SrvSetRobotControl_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvSetRobotControl_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvSetRobotControl_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvSetRobotControl_Response value = ReadRos2Dsr_msgs2SrvSetRobotControl_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvSetRobotControl_Response(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvSetRobotControl_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros2Dsr_msgs2SrvSetRobotControl_Response ReadRos2Dsr_msgs2SrvSetRobotControl_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvSetRobotControl_Response();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvSetRobotMode_Request
    {
        public sbyte @robot_mode = 0;

        public _Ros2Dsr_msgs2SrvSetRobotMode_Request()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvSetRobotMode_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvSetRobotMode_Request>
    {
        public static readonly Ros2Dsr_msgs2SrvSetRobotMode_RequestCodec Instance = new Ros2Dsr_msgs2SrvSetRobotMode_RequestCodec();

        private Ros2Dsr_msgs2SrvSetRobotMode_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/SetRobotMode_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_59506bb1284a069b41db932d11fcef986befe63b2d365b16ff6a09d1d4227a9b";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros2Dsr_msgs2SrvSetRobotMode_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvSetRobotMode_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvSetRobotMode_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvSetRobotMode_Request value = ReadRos2Dsr_msgs2SrvSetRobotMode_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvSetRobotMode_Request(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvSetRobotMode_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        sbyte part0 = value.@robot_mode;
        writer.Unsigned(unchecked((byte)part0), 1);
    }

    private static _Ros2Dsr_msgs2SrvSetRobotMode_Request ReadRos2Dsr_msgs2SrvSetRobotMode_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvSetRobotMode_Request();
        value.@robot_mode = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvSetRobotMode_Response
    {
        public bool @success = false;

        public _Ros2Dsr_msgs2SrvSetRobotMode_Response()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvSetRobotMode_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvSetRobotMode_Response>
    {
        public static readonly Ros2Dsr_msgs2SrvSetRobotMode_ResponseCodec Instance = new Ros2Dsr_msgs2SrvSetRobotMode_ResponseCodec();

        private Ros2Dsr_msgs2SrvSetRobotMode_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/SetRobotMode_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_f1d0dad948e4a24471c406e08b79640f3846f0d96aaf63d84763066b54963dee";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros2Dsr_msgs2SrvSetRobotMode_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvSetRobotMode_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvSetRobotMode_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvSetRobotMode_Response value = ReadRos2Dsr_msgs2SrvSetRobotMode_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvSetRobotMode_Response(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvSetRobotMode_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros2Dsr_msgs2SrvSetRobotMode_Response ReadRos2Dsr_msgs2SrvSetRobotMode_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvSetRobotMode_Response();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvSetRobotSpeedMode_Request
    {
        public sbyte @speed_mode = 0;

        public _Ros2Dsr_msgs2SrvSetRobotSpeedMode_Request()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvSetRobotSpeedMode_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvSetRobotSpeedMode_Request>
    {
        public static readonly Ros2Dsr_msgs2SrvSetRobotSpeedMode_RequestCodec Instance = new Ros2Dsr_msgs2SrvSetRobotSpeedMode_RequestCodec();

        private Ros2Dsr_msgs2SrvSetRobotSpeedMode_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/SetRobotSpeedMode_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_74f6d0c7e148619aa43ad375b529155bce79ff06295ca5612dee8b17c8f7399b";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros2Dsr_msgs2SrvSetRobotSpeedMode_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvSetRobotSpeedMode_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvSetRobotSpeedMode_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvSetRobotSpeedMode_Request value = ReadRos2Dsr_msgs2SrvSetRobotSpeedMode_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvSetRobotSpeedMode_Request(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvSetRobotSpeedMode_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        sbyte part0 = value.@speed_mode;
        writer.Unsigned(unchecked((byte)part0), 1);
    }

    private static _Ros2Dsr_msgs2SrvSetRobotSpeedMode_Request ReadRos2Dsr_msgs2SrvSetRobotSpeedMode_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvSetRobotSpeedMode_Request();
        value.@speed_mode = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvSetRobotSpeedMode_Response
    {
        public bool @success = false;

        public _Ros2Dsr_msgs2SrvSetRobotSpeedMode_Response()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvSetRobotSpeedMode_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvSetRobotSpeedMode_Response>
    {
        public static readonly Ros2Dsr_msgs2SrvSetRobotSpeedMode_ResponseCodec Instance = new Ros2Dsr_msgs2SrvSetRobotSpeedMode_ResponseCodec();

        private Ros2Dsr_msgs2SrvSetRobotSpeedMode_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/SetRobotSpeedMode_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_f2b86ce2bbd498677537e77b069fda28c0c48c73d1d3b4a8b4f6d41460a2dde2";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros2Dsr_msgs2SrvSetRobotSpeedMode_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvSetRobotSpeedMode_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvSetRobotSpeedMode_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvSetRobotSpeedMode_Response value = ReadRos2Dsr_msgs2SrvSetRobotSpeedMode_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvSetRobotSpeedMode_Response(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvSetRobotSpeedMode_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros2Dsr_msgs2SrvSetRobotSpeedMode_Response ReadRos2Dsr_msgs2SrvSetRobotSpeedMode_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvSetRobotSpeedMode_Response();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvSetRobotSystem_Request
    {
        public sbyte @robot_system = 0;

        public _Ros2Dsr_msgs2SrvSetRobotSystem_Request()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvSetRobotSystem_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvSetRobotSystem_Request>
    {
        public static readonly Ros2Dsr_msgs2SrvSetRobotSystem_RequestCodec Instance = new Ros2Dsr_msgs2SrvSetRobotSystem_RequestCodec();

        private Ros2Dsr_msgs2SrvSetRobotSystem_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/SetRobotSystem_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_2cbe8cfcd2fbe89acc3310ec43e904bdad6e246bbda7c7225357d9478e591030";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros2Dsr_msgs2SrvSetRobotSystem_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvSetRobotSystem_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvSetRobotSystem_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvSetRobotSystem_Request value = ReadRos2Dsr_msgs2SrvSetRobotSystem_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvSetRobotSystem_Request(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvSetRobotSystem_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        sbyte part0 = value.@robot_system;
        writer.Unsigned(unchecked((byte)part0), 1);
    }

    private static _Ros2Dsr_msgs2SrvSetRobotSystem_Request ReadRos2Dsr_msgs2SrvSetRobotSystem_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvSetRobotSystem_Request();
        value.@robot_system = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvSetRobotSystem_Response
    {
        public bool @success = false;

        public _Ros2Dsr_msgs2SrvSetRobotSystem_Response()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvSetRobotSystem_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvSetRobotSystem_Response>
    {
        public static readonly Ros2Dsr_msgs2SrvSetRobotSystem_ResponseCodec Instance = new Ros2Dsr_msgs2SrvSetRobotSystem_ResponseCodec();

        private Ros2Dsr_msgs2SrvSetRobotSystem_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/SetRobotSystem_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_93e95c1c768694abbfaa89bca4357085b9e6b67b031cedaf3ae064a0e5545872";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros2Dsr_msgs2SrvSetRobotSystem_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvSetRobotSystem_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvSetRobotSystem_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvSetRobotSystem_Response value = ReadRos2Dsr_msgs2SrvSetRobotSystem_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvSetRobotSystem_Response(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvSetRobotSystem_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros2Dsr_msgs2SrvSetRobotSystem_Response ReadRos2Dsr_msgs2SrvSetRobotSystem_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvSetRobotSystem_Response();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvSetRtControlInput_Request
    {
        public string @version = "";
        public double @period = 0;
        public int @loss = 0;

        public _Ros2Dsr_msgs2SrvSetRtControlInput_Request()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvSetRtControlInput_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvSetRtControlInput_Request>
    {
        public static readonly Ros2Dsr_msgs2SrvSetRtControlInput_RequestCodec Instance = new Ros2Dsr_msgs2SrvSetRtControlInput_RequestCodec();

        private Ros2Dsr_msgs2SrvSetRtControlInput_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/SetRtControlInput_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_5d0d581d5874bb92ea5c67281c4414d4dcf2799ebeb13b12b60b58408b3854c7";
        public const int MIN_WIRE_BYTES = 16, MAX_WIRE_BYTES = 272;

        public byte[] Encode(_Ros2Dsr_msgs2SrvSetRtControlInput_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvSetRtControlInput_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvSetRtControlInput_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvSetRtControlInput_Request value = ReadRos2Dsr_msgs2SrvSetRtControlInput_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvSetRtControlInput_Request(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvSetRtControlInput_Request value)
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

    private static _Ros2Dsr_msgs2SrvSetRtControlInput_Request ReadRos2Dsr_msgs2SrvSetRtControlInput_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvSetRtControlInput_Request();
        value.@version = ReadText(reader, 256);
        value.@period = reader.Float64();
        value.@loss = unchecked((int)reader.Unsigned(4));
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvSetRtControlInput_Response
    {
        public bool @success = false;

        public _Ros2Dsr_msgs2SrvSetRtControlInput_Response()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvSetRtControlInput_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvSetRtControlInput_Response>
    {
        public static readonly Ros2Dsr_msgs2SrvSetRtControlInput_ResponseCodec Instance = new Ros2Dsr_msgs2SrvSetRtControlInput_ResponseCodec();

        private Ros2Dsr_msgs2SrvSetRtControlInput_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/SetRtControlInput_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_d4a506d56199fac9bd3decbdadce3a728df404854dfceea3f1365e25a031c2a8";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros2Dsr_msgs2SrvSetRtControlInput_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvSetRtControlInput_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvSetRtControlInput_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvSetRtControlInput_Response value = ReadRos2Dsr_msgs2SrvSetRtControlInput_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvSetRtControlInput_Response(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvSetRtControlInput_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros2Dsr_msgs2SrvSetRtControlInput_Response ReadRos2Dsr_msgs2SrvSetRtControlInput_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvSetRtControlInput_Response();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvSetRtControlOutput_Request
    {
        public string @version = "";
        public double @period = 0;
        public int @loss = 0;

        public _Ros2Dsr_msgs2SrvSetRtControlOutput_Request()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvSetRtControlOutput_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvSetRtControlOutput_Request>
    {
        public static readonly Ros2Dsr_msgs2SrvSetRtControlOutput_RequestCodec Instance = new Ros2Dsr_msgs2SrvSetRtControlOutput_RequestCodec();

        private Ros2Dsr_msgs2SrvSetRtControlOutput_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/SetRtControlOutput_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_12dac5a038aa91a74240656b3d088e1fbee381de935a8b8aae7fb2a152bcaa47";
        public const int MIN_WIRE_BYTES = 16, MAX_WIRE_BYTES = 272;

        public byte[] Encode(_Ros2Dsr_msgs2SrvSetRtControlOutput_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvSetRtControlOutput_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvSetRtControlOutput_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvSetRtControlOutput_Request value = ReadRos2Dsr_msgs2SrvSetRtControlOutput_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvSetRtControlOutput_Request(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvSetRtControlOutput_Request value)
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

    private static _Ros2Dsr_msgs2SrvSetRtControlOutput_Request ReadRos2Dsr_msgs2SrvSetRtControlOutput_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvSetRtControlOutput_Request();
        value.@version = ReadText(reader, 256);
        value.@period = reader.Float64();
        value.@loss = unchecked((int)reader.Unsigned(4));
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvSetRtControlOutput_Response
    {
        public bool @success = false;

        public _Ros2Dsr_msgs2SrvSetRtControlOutput_Response()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvSetRtControlOutput_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvSetRtControlOutput_Response>
    {
        public static readonly Ros2Dsr_msgs2SrvSetRtControlOutput_ResponseCodec Instance = new Ros2Dsr_msgs2SrvSetRtControlOutput_ResponseCodec();

        private Ros2Dsr_msgs2SrvSetRtControlOutput_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/SetRtControlOutput_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_25049366402ac5e192f2190b80e4576126929d8375fd1efefdc50154f473305b";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros2Dsr_msgs2SrvSetRtControlOutput_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvSetRtControlOutput_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvSetRtControlOutput_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvSetRtControlOutput_Response value = ReadRos2Dsr_msgs2SrvSetRtControlOutput_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvSetRtControlOutput_Response(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvSetRtControlOutput_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros2Dsr_msgs2SrvSetRtControlOutput_Response ReadRos2Dsr_msgs2SrvSetRtControlOutput_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvSetRtControlOutput_Response();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvSetSafeStopResetType_Request
    {
        public sbyte @reset_type = 0;

        public _Ros2Dsr_msgs2SrvSetSafeStopResetType_Request()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvSetSafeStopResetType_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvSetSafeStopResetType_Request>
    {
        public static readonly Ros2Dsr_msgs2SrvSetSafeStopResetType_RequestCodec Instance = new Ros2Dsr_msgs2SrvSetSafeStopResetType_RequestCodec();

        private Ros2Dsr_msgs2SrvSetSafeStopResetType_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/SetSafeStopResetType_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_4ab1dff4c9864a2e66d6c4ebd64032504098ca191284d027bc8021668412e7f3";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros2Dsr_msgs2SrvSetSafeStopResetType_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvSetSafeStopResetType_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvSetSafeStopResetType_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvSetSafeStopResetType_Request value = ReadRos2Dsr_msgs2SrvSetSafeStopResetType_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvSetSafeStopResetType_Request(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvSetSafeStopResetType_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        sbyte part0 = value.@reset_type;
        writer.Unsigned(unchecked((byte)part0), 1);
    }

    private static _Ros2Dsr_msgs2SrvSetSafeStopResetType_Request ReadRos2Dsr_msgs2SrvSetSafeStopResetType_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvSetSafeStopResetType_Request();
        value.@reset_type = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvSetSafeStopResetType_Response
    {
        public bool @success = false;

        public _Ros2Dsr_msgs2SrvSetSafeStopResetType_Response()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvSetSafeStopResetType_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvSetSafeStopResetType_Response>
    {
        public static readonly Ros2Dsr_msgs2SrvSetSafeStopResetType_ResponseCodec Instance = new Ros2Dsr_msgs2SrvSetSafeStopResetType_ResponseCodec();

        private Ros2Dsr_msgs2SrvSetSafeStopResetType_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/SetSafeStopResetType_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_d1b868c2e694688a6bad4d4a93ae4032a650a0f99ae3cffeac1bfed3336762ae";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros2Dsr_msgs2SrvSetSafeStopResetType_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvSetSafeStopResetType_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvSetSafeStopResetType_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvSetSafeStopResetType_Response value = ReadRos2Dsr_msgs2SrvSetSafeStopResetType_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvSetSafeStopResetType_Response(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvSetSafeStopResetType_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros2Dsr_msgs2SrvSetSafeStopResetType_Response ReadRos2Dsr_msgs2SrvSetSafeStopResetType_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvSetSafeStopResetType_Response();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvSetSafetyMode_Request
    {
        public sbyte @safety_mode = 0;
        public sbyte @safety_event = 0;

        public _Ros2Dsr_msgs2SrvSetSafetyMode_Request()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvSetSafetyMode_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvSetSafetyMode_Request>
    {
        public static readonly Ros2Dsr_msgs2SrvSetSafetyMode_RequestCodec Instance = new Ros2Dsr_msgs2SrvSetSafetyMode_RequestCodec();

        private Ros2Dsr_msgs2SrvSetSafetyMode_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/SetSafetyMode_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_ea5c506bc7bcd868d8547643b82f902a595954f7487216e57b47491998e80713";
        public const int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;

        public byte[] Encode(_Ros2Dsr_msgs2SrvSetSafetyMode_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvSetSafetyMode_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvSetSafetyMode_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvSetSafetyMode_Request value = ReadRos2Dsr_msgs2SrvSetSafetyMode_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvSetSafetyMode_Request(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvSetSafetyMode_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        sbyte part0 = value.@safety_mode;
        writer.Unsigned(unchecked((byte)part0), 1);
        sbyte part1 = value.@safety_event;
        writer.Unsigned(unchecked((byte)part1), 1);
    }

    private static _Ros2Dsr_msgs2SrvSetSafetyMode_Request ReadRos2Dsr_msgs2SrvSetSafetyMode_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvSetSafetyMode_Request();
        value.@safety_mode = unchecked((sbyte)reader.Unsigned(1));
        value.@safety_event = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvSetSafetyMode_Response
    {
        public bool @success = false;

        public _Ros2Dsr_msgs2SrvSetSafetyMode_Response()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvSetSafetyMode_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvSetSafetyMode_Response>
    {
        public static readonly Ros2Dsr_msgs2SrvSetSafetyMode_ResponseCodec Instance = new Ros2Dsr_msgs2SrvSetSafetyMode_ResponseCodec();

        private Ros2Dsr_msgs2SrvSetSafetyMode_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/SetSafetyMode_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_d7ce2c604f4a7abeccbf4514a05fe8abbcbdddcc047f4838d0fcc792bb5414b6";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros2Dsr_msgs2SrvSetSafetyMode_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvSetSafetyMode_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvSetSafetyMode_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvSetSafetyMode_Response value = ReadRos2Dsr_msgs2SrvSetSafetyMode_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvSetSafetyMode_Response(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvSetSafetyMode_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros2Dsr_msgs2SrvSetSafetyMode_Response ReadRos2Dsr_msgs2SrvSetSafetyMode_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvSetSafetyMode_Response();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvSetSingularHandlingForce_Request
    {
        public sbyte @mode = 0;

        public _Ros2Dsr_msgs2SrvSetSingularHandlingForce_Request()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvSetSingularHandlingForce_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvSetSingularHandlingForce_Request>
    {
        public static readonly Ros2Dsr_msgs2SrvSetSingularHandlingForce_RequestCodec Instance = new Ros2Dsr_msgs2SrvSetSingularHandlingForce_RequestCodec();

        private Ros2Dsr_msgs2SrvSetSingularHandlingForce_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/SetSingularHandlingForce_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_785b7a837bf13aa7f6f7178818d470b970253761b389d2e5526a77090c765d17";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros2Dsr_msgs2SrvSetSingularHandlingForce_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvSetSingularHandlingForce_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvSetSingularHandlingForce_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvSetSingularHandlingForce_Request value = ReadRos2Dsr_msgs2SrvSetSingularHandlingForce_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvSetSingularHandlingForce_Request(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvSetSingularHandlingForce_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        sbyte part0 = value.@mode;
        writer.Unsigned(unchecked((byte)part0), 1);
    }

    private static _Ros2Dsr_msgs2SrvSetSingularHandlingForce_Request ReadRos2Dsr_msgs2SrvSetSingularHandlingForce_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvSetSingularHandlingForce_Request();
        value.@mode = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvSetSingularHandlingForce_Response
    {
        public bool @success = false;

        public _Ros2Dsr_msgs2SrvSetSingularHandlingForce_Response()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvSetSingularHandlingForce_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvSetSingularHandlingForce_Response>
    {
        public static readonly Ros2Dsr_msgs2SrvSetSingularHandlingForce_ResponseCodec Instance = new Ros2Dsr_msgs2SrvSetSingularHandlingForce_ResponseCodec();

        private Ros2Dsr_msgs2SrvSetSingularHandlingForce_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/SetSingularHandlingForce_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_5d0197a02dc22035522bdde1791a6e06ce31be284cb75d8d1edcbd97d382aa04";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros2Dsr_msgs2SrvSetSingularHandlingForce_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvSetSingularHandlingForce_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvSetSingularHandlingForce_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvSetSingularHandlingForce_Response value = ReadRos2Dsr_msgs2SrvSetSingularHandlingForce_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvSetSingularHandlingForce_Response(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvSetSingularHandlingForce_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros2Dsr_msgs2SrvSetSingularHandlingForce_Response ReadRos2Dsr_msgs2SrvSetSingularHandlingForce_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvSetSingularHandlingForce_Response();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvSetSingularityHandling_Request
    {
        public sbyte @mode = 0;

        public _Ros2Dsr_msgs2SrvSetSingularityHandling_Request()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvSetSingularityHandling_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvSetSingularityHandling_Request>
    {
        public static readonly Ros2Dsr_msgs2SrvSetSingularityHandling_RequestCodec Instance = new Ros2Dsr_msgs2SrvSetSingularityHandling_RequestCodec();

        private Ros2Dsr_msgs2SrvSetSingularityHandling_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/SetSingularityHandling_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_714198c67734535e609af75c076ccc5eaef14996ab2f6dc41fac5da7af168f10";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros2Dsr_msgs2SrvSetSingularityHandling_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvSetSingularityHandling_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvSetSingularityHandling_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvSetSingularityHandling_Request value = ReadRos2Dsr_msgs2SrvSetSingularityHandling_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvSetSingularityHandling_Request(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvSetSingularityHandling_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        sbyte part0 = value.@mode;
        writer.Unsigned(unchecked((byte)part0), 1);
    }

    private static _Ros2Dsr_msgs2SrvSetSingularityHandling_Request ReadRos2Dsr_msgs2SrvSetSingularityHandling_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvSetSingularityHandling_Request();
        value.@mode = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvSetSingularityHandling_Response
    {
        public bool @success = false;

        public _Ros2Dsr_msgs2SrvSetSingularityHandling_Response()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvSetSingularityHandling_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvSetSingularityHandling_Response>
    {
        public static readonly Ros2Dsr_msgs2SrvSetSingularityHandling_ResponseCodec Instance = new Ros2Dsr_msgs2SrvSetSingularityHandling_ResponseCodec();

        private Ros2Dsr_msgs2SrvSetSingularityHandling_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/SetSingularityHandling_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_2c1eb60c47dedf7a166dc51366a9748e21d2a64603591c9698a5c75bcfa0fd6b";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros2Dsr_msgs2SrvSetSingularityHandling_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvSetSingularityHandling_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvSetSingularityHandling_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvSetSingularityHandling_Response value = ReadRos2Dsr_msgs2SrvSetSingularityHandling_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvSetSingularityHandling_Response(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvSetSingularityHandling_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros2Dsr_msgs2SrvSetSingularityHandling_Response ReadRos2Dsr_msgs2SrvSetSingularityHandling_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvSetSingularityHandling_Response();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvSetStiffnessx_Request
    {
        public double[] @stx = new double[6];
        public sbyte @ref = 0;
        public double @time = 0;

        public _Ros2Dsr_msgs2SrvSetStiffnessx_Request()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvSetStiffnessx_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvSetStiffnessx_Request>
    {
        public static readonly Ros2Dsr_msgs2SrvSetStiffnessx_RequestCodec Instance = new Ros2Dsr_msgs2SrvSetStiffnessx_RequestCodec();

        private Ros2Dsr_msgs2SrvSetStiffnessx_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/SetStiffnessx_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_e173ca626019669404706278ab035396e77f684b17181b7e181a8a73e7ec5101";
        public const int MIN_WIRE_BYTES = 57, MAX_WIRE_BYTES = 57;

        public byte[] Encode(_Ros2Dsr_msgs2SrvSetStiffnessx_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvSetStiffnessx_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvSetStiffnessx_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvSetStiffnessx_Request value = ReadRos2Dsr_msgs2SrvSetStiffnessx_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvSetStiffnessx_Request(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvSetStiffnessx_Request value)
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

    private static _Ros2Dsr_msgs2SrvSetStiffnessx_Request ReadRos2Dsr_msgs2SrvSetStiffnessx_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvSetStiffnessx_Request();
        value.@stx = new double[6];
        for(int index = 0; index < value.@stx.Length; ++index)
            value.@stx[index] = reader.Float64();
        value.@ref = unchecked((sbyte)reader.Unsigned(1));
        value.@time = reader.Float64();
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvSetStiffnessx_Response
    {
        public bool @success = false;

        public _Ros2Dsr_msgs2SrvSetStiffnessx_Response()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvSetStiffnessx_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvSetStiffnessx_Response>
    {
        public static readonly Ros2Dsr_msgs2SrvSetStiffnessx_ResponseCodec Instance = new Ros2Dsr_msgs2SrvSetStiffnessx_ResponseCodec();

        private Ros2Dsr_msgs2SrvSetStiffnessx_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/SetStiffnessx_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_9f7b37d22a5d4cfd34e92df02aa3ef3bdd78e965877b30889cdbd85ad81b1f63";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros2Dsr_msgs2SrvSetStiffnessx_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvSetStiffnessx_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvSetStiffnessx_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvSetStiffnessx_Response value = ReadRos2Dsr_msgs2SrvSetStiffnessx_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvSetStiffnessx_Response(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvSetStiffnessx_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros2Dsr_msgs2SrvSetStiffnessx_Response ReadRos2Dsr_msgs2SrvSetStiffnessx_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvSetStiffnessx_Response();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvSetToolDigitalOutput_Request
    {
        public sbyte @index = 0;
        public sbyte @value = 0;

        public _Ros2Dsr_msgs2SrvSetToolDigitalOutput_Request()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvSetToolDigitalOutput_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvSetToolDigitalOutput_Request>
    {
        public static readonly Ros2Dsr_msgs2SrvSetToolDigitalOutput_RequestCodec Instance = new Ros2Dsr_msgs2SrvSetToolDigitalOutput_RequestCodec();

        private Ros2Dsr_msgs2SrvSetToolDigitalOutput_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/SetToolDigitalOutput_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_fdc298f88b15ff1e7f9b99425f8909e584ffec665f5fdf49d0559aa4f1923675";
        public const int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;

        public byte[] Encode(_Ros2Dsr_msgs2SrvSetToolDigitalOutput_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvSetToolDigitalOutput_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvSetToolDigitalOutput_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvSetToolDigitalOutput_Request value = ReadRos2Dsr_msgs2SrvSetToolDigitalOutput_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvSetToolDigitalOutput_Request(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvSetToolDigitalOutput_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        sbyte part0 = value.@index;
        writer.Unsigned(unchecked((byte)part0), 1);
        sbyte part1 = value.@value;
        writer.Unsigned(unchecked((byte)part1), 1);
    }

    private static _Ros2Dsr_msgs2SrvSetToolDigitalOutput_Request ReadRos2Dsr_msgs2SrvSetToolDigitalOutput_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvSetToolDigitalOutput_Request();
        value.@index = unchecked((sbyte)reader.Unsigned(1));
        value.@value = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvSetToolDigitalOutput_Response
    {
        public bool @success = false;

        public _Ros2Dsr_msgs2SrvSetToolDigitalOutput_Response()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvSetToolDigitalOutput_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvSetToolDigitalOutput_Response>
    {
        public static readonly Ros2Dsr_msgs2SrvSetToolDigitalOutput_ResponseCodec Instance = new Ros2Dsr_msgs2SrvSetToolDigitalOutput_ResponseCodec();

        private Ros2Dsr_msgs2SrvSetToolDigitalOutput_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/SetToolDigitalOutput_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_6dd380084f46879e224a01e8cb135cfa7909d7dd29c0f953fce3533115e0fb5c";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros2Dsr_msgs2SrvSetToolDigitalOutput_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvSetToolDigitalOutput_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvSetToolDigitalOutput_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvSetToolDigitalOutput_Response value = ReadRos2Dsr_msgs2SrvSetToolDigitalOutput_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvSetToolDigitalOutput_Response(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvSetToolDigitalOutput_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros2Dsr_msgs2SrvSetToolDigitalOutput_Response ReadRos2Dsr_msgs2SrvSetToolDigitalOutput_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvSetToolDigitalOutput_Response();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvSetToolShape_Request
    {
        public string @name = "";

        public _Ros2Dsr_msgs2SrvSetToolShape_Request()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvSetToolShape_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvSetToolShape_Request>
    {
        public static readonly Ros2Dsr_msgs2SrvSetToolShape_RequestCodec Instance = new Ros2Dsr_msgs2SrvSetToolShape_RequestCodec();

        private Ros2Dsr_msgs2SrvSetToolShape_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/SetToolShape_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_18dece524fe8fe008a1ce848629aabcc4a91bb33f0c0b75a50c77464da886679";
        public const int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 260;

        public byte[] Encode(_Ros2Dsr_msgs2SrvSetToolShape_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvSetToolShape_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvSetToolShape_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvSetToolShape_Request value = ReadRos2Dsr_msgs2SrvSetToolShape_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvSetToolShape_Request(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvSetToolShape_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        string part0 = value.@name;
        WriteText(writer, part0, 256);
    }

    private static _Ros2Dsr_msgs2SrvSetToolShape_Request ReadRos2Dsr_msgs2SrvSetToolShape_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvSetToolShape_Request();
        value.@name = ReadText(reader, 256);
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvSetToolShape_Response
    {
        public bool @success = false;

        public _Ros2Dsr_msgs2SrvSetToolShape_Response()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvSetToolShape_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvSetToolShape_Response>
    {
        public static readonly Ros2Dsr_msgs2SrvSetToolShape_ResponseCodec Instance = new Ros2Dsr_msgs2SrvSetToolShape_ResponseCodec();

        private Ros2Dsr_msgs2SrvSetToolShape_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/SetToolShape_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_0cc4521218ab5151885efd7d818d63c3a80e792552282a776d9595ea3e220739";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros2Dsr_msgs2SrvSetToolShape_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvSetToolShape_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvSetToolShape_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvSetToolShape_Response value = ReadRos2Dsr_msgs2SrvSetToolShape_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvSetToolShape_Response(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvSetToolShape_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros2Dsr_msgs2SrvSetToolShape_Response ReadRos2Dsr_msgs2SrvSetToolShape_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvSetToolShape_Response();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvSetUserCartCoord1_Request
    {
        public double[] @pos = new double[6];
        public sbyte @ref = 0;

        public _Ros2Dsr_msgs2SrvSetUserCartCoord1_Request()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvSetUserCartCoord1_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvSetUserCartCoord1_Request>
    {
        public static readonly Ros2Dsr_msgs2SrvSetUserCartCoord1_RequestCodec Instance = new Ros2Dsr_msgs2SrvSetUserCartCoord1_RequestCodec();

        private Ros2Dsr_msgs2SrvSetUserCartCoord1_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/SetUserCartCoord1_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_497558c7b91c9f6a79afc784b1026e28a632e8234b178b96754eaebcfa4d01f2";
        public const int MIN_WIRE_BYTES = 49, MAX_WIRE_BYTES = 49;

        public byte[] Encode(_Ros2Dsr_msgs2SrvSetUserCartCoord1_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvSetUserCartCoord1_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvSetUserCartCoord1_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvSetUserCartCoord1_Request value = ReadRos2Dsr_msgs2SrvSetUserCartCoord1_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvSetUserCartCoord1_Request(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvSetUserCartCoord1_Request value)
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

    private static _Ros2Dsr_msgs2SrvSetUserCartCoord1_Request ReadRos2Dsr_msgs2SrvSetUserCartCoord1_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvSetUserCartCoord1_Request();
        value.@pos = new double[6];
        for(int index = 0; index < value.@pos.Length; ++index)
            value.@pos[index] = reader.Float64();
        value.@ref = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvSetUserCartCoord1_Response
    {
        public sbyte @id = 0;
        public bool @success = false;

        public _Ros2Dsr_msgs2SrvSetUserCartCoord1_Response()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvSetUserCartCoord1_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvSetUserCartCoord1_Response>
    {
        public static readonly Ros2Dsr_msgs2SrvSetUserCartCoord1_ResponseCodec Instance = new Ros2Dsr_msgs2SrvSetUserCartCoord1_ResponseCodec();

        private Ros2Dsr_msgs2SrvSetUserCartCoord1_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/SetUserCartCoord1_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_6ccfd1c14bc6f8be1efa6fae4c6b33373fab3dc76976891e07e2340bc984c4cf";
        public const int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;

        public byte[] Encode(_Ros2Dsr_msgs2SrvSetUserCartCoord1_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvSetUserCartCoord1_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvSetUserCartCoord1_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvSetUserCartCoord1_Response value = ReadRos2Dsr_msgs2SrvSetUserCartCoord1_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvSetUserCartCoord1_Response(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvSetUserCartCoord1_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        sbyte part0 = value.@id;
        writer.Unsigned(unchecked((byte)part0), 1);
        bool part1 = value.@success;
        writer.Unsigned(part1 ? 1UL : 0UL, 1);
    }

    private static _Ros2Dsr_msgs2SrvSetUserCartCoord1_Response ReadRos2Dsr_msgs2SrvSetUserCartCoord1_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvSetUserCartCoord1_Response();
        value.@id = unchecked((sbyte)reader.Unsigned(1));
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvSetUserCartCoord2_Request
    {
        public double[] @x1 = new double[6];
        public double[] @x2 = new double[6];
        public double[] @x3 = new double[6];
        public double[] @pos = new double[6];
        public sbyte @ref = 0;

        public _Ros2Dsr_msgs2SrvSetUserCartCoord2_Request()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvSetUserCartCoord2_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvSetUserCartCoord2_Request>
    {
        public static readonly Ros2Dsr_msgs2SrvSetUserCartCoord2_RequestCodec Instance = new Ros2Dsr_msgs2SrvSetUserCartCoord2_RequestCodec();

        private Ros2Dsr_msgs2SrvSetUserCartCoord2_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/SetUserCartCoord2_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_8ebe04baec0078b4f501712b9777f2f25f71cdb668e45aaadac9fd1f08c4d817";
        public const int MIN_WIRE_BYTES = 193, MAX_WIRE_BYTES = 193;

        public byte[] Encode(_Ros2Dsr_msgs2SrvSetUserCartCoord2_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvSetUserCartCoord2_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvSetUserCartCoord2_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvSetUserCartCoord2_Request value = ReadRos2Dsr_msgs2SrvSetUserCartCoord2_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvSetUserCartCoord2_Request(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvSetUserCartCoord2_Request value)
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

    private static _Ros2Dsr_msgs2SrvSetUserCartCoord2_Request ReadRos2Dsr_msgs2SrvSetUserCartCoord2_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvSetUserCartCoord2_Request();
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

    public sealed class _Ros2Dsr_msgs2SrvSetUserCartCoord2_Response
    {
        public sbyte @id = 0;
        public bool @success = false;

        public _Ros2Dsr_msgs2SrvSetUserCartCoord2_Response()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvSetUserCartCoord2_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvSetUserCartCoord2_Response>
    {
        public static readonly Ros2Dsr_msgs2SrvSetUserCartCoord2_ResponseCodec Instance = new Ros2Dsr_msgs2SrvSetUserCartCoord2_ResponseCodec();

        private Ros2Dsr_msgs2SrvSetUserCartCoord2_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/SetUserCartCoord2_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_a607f151e7acf622b233805382b69ea22ab0b4c86067c06bcc2673e1f2a58b8f";
        public const int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;

        public byte[] Encode(_Ros2Dsr_msgs2SrvSetUserCartCoord2_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvSetUserCartCoord2_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvSetUserCartCoord2_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvSetUserCartCoord2_Response value = ReadRos2Dsr_msgs2SrvSetUserCartCoord2_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvSetUserCartCoord2_Response(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvSetUserCartCoord2_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        sbyte part0 = value.@id;
        writer.Unsigned(unchecked((byte)part0), 1);
        bool part1 = value.@success;
        writer.Unsigned(part1 ? 1UL : 0UL, 1);
    }

    private static _Ros2Dsr_msgs2SrvSetUserCartCoord2_Response ReadRos2Dsr_msgs2SrvSetUserCartCoord2_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvSetUserCartCoord2_Response();
        value.@id = unchecked((sbyte)reader.Unsigned(1));
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvSetUserCartCoord3_Request
    {
        public double[] @u1 = new double[3];
        public double[] @v1 = new double[3];
        public double[] @pos = new double[6];
        public sbyte @ref = 0;

        public _Ros2Dsr_msgs2SrvSetUserCartCoord3_Request()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvSetUserCartCoord3_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvSetUserCartCoord3_Request>
    {
        public static readonly Ros2Dsr_msgs2SrvSetUserCartCoord3_RequestCodec Instance = new Ros2Dsr_msgs2SrvSetUserCartCoord3_RequestCodec();

        private Ros2Dsr_msgs2SrvSetUserCartCoord3_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/SetUserCartCoord3_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_251d326c5d179d4324c7e178e44a5857335efcbef19c0ede3a38e6b35bd03504";
        public const int MIN_WIRE_BYTES = 97, MAX_WIRE_BYTES = 97;

        public byte[] Encode(_Ros2Dsr_msgs2SrvSetUserCartCoord3_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvSetUserCartCoord3_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvSetUserCartCoord3_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvSetUserCartCoord3_Request value = ReadRos2Dsr_msgs2SrvSetUserCartCoord3_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvSetUserCartCoord3_Request(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvSetUserCartCoord3_Request value)
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

    private static _Ros2Dsr_msgs2SrvSetUserCartCoord3_Request ReadRos2Dsr_msgs2SrvSetUserCartCoord3_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvSetUserCartCoord3_Request();
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

    public sealed class _Ros2Dsr_msgs2SrvSetUserCartCoord3_Response
    {
        public sbyte @id = 0;
        public bool @success = false;

        public _Ros2Dsr_msgs2SrvSetUserCartCoord3_Response()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvSetUserCartCoord3_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvSetUserCartCoord3_Response>
    {
        public static readonly Ros2Dsr_msgs2SrvSetUserCartCoord3_ResponseCodec Instance = new Ros2Dsr_msgs2SrvSetUserCartCoord3_ResponseCodec();

        private Ros2Dsr_msgs2SrvSetUserCartCoord3_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/SetUserCartCoord3_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_a4c23d5c3c9e3b8101991250879779acbbe592d2b9bb62b8b8629230eebfdd39";
        public const int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;

        public byte[] Encode(_Ros2Dsr_msgs2SrvSetUserCartCoord3_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvSetUserCartCoord3_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvSetUserCartCoord3_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvSetUserCartCoord3_Response value = ReadRos2Dsr_msgs2SrvSetUserCartCoord3_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvSetUserCartCoord3_Response(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvSetUserCartCoord3_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        sbyte part0 = value.@id;
        writer.Unsigned(unchecked((byte)part0), 1);
        bool part1 = value.@success;
        writer.Unsigned(part1 ? 1UL : 0UL, 1);
    }

    private static _Ros2Dsr_msgs2SrvSetUserCartCoord3_Response ReadRos2Dsr_msgs2SrvSetUserCartCoord3_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvSetUserCartCoord3_Response();
        value.@id = unchecked((sbyte)reader.Unsigned(1));
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvSetVeljRt_Request
    {
        public double[] @vel = new double[6];

        public _Ros2Dsr_msgs2SrvSetVeljRt_Request()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvSetVeljRt_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvSetVeljRt_Request>
    {
        public static readonly Ros2Dsr_msgs2SrvSetVeljRt_RequestCodec Instance = new Ros2Dsr_msgs2SrvSetVeljRt_RequestCodec();

        private Ros2Dsr_msgs2SrvSetVeljRt_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/SetVeljRt_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_8e666417ee1ca845dc12a0c18e5a538070717ca943fe982b42af7eb66f801cf3";
        public const int MIN_WIRE_BYTES = 48, MAX_WIRE_BYTES = 48;

        public byte[] Encode(_Ros2Dsr_msgs2SrvSetVeljRt_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvSetVeljRt_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvSetVeljRt_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvSetVeljRt_Request value = ReadRos2Dsr_msgs2SrvSetVeljRt_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvSetVeljRt_Request(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvSetVeljRt_Request value)
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

    private static _Ros2Dsr_msgs2SrvSetVeljRt_Request ReadRos2Dsr_msgs2SrvSetVeljRt_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvSetVeljRt_Request();
        value.@vel = new double[6];
        for(int index = 0; index < value.@vel.Length; ++index)
            value.@vel[index] = reader.Float64();
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvSetVeljRt_Response
    {
        public bool @success = false;

        public _Ros2Dsr_msgs2SrvSetVeljRt_Response()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvSetVeljRt_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvSetVeljRt_Response>
    {
        public static readonly Ros2Dsr_msgs2SrvSetVeljRt_ResponseCodec Instance = new Ros2Dsr_msgs2SrvSetVeljRt_ResponseCodec();

        private Ros2Dsr_msgs2SrvSetVeljRt_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/SetVeljRt_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_6b678e677badd0a4723fd1608058a72548fc7c446f48809552bccc9e890ec6bd";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros2Dsr_msgs2SrvSetVeljRt_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvSetVeljRt_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvSetVeljRt_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvSetVeljRt_Response value = ReadRos2Dsr_msgs2SrvSetVeljRt_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvSetVeljRt_Response(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvSetVeljRt_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros2Dsr_msgs2SrvSetVeljRt_Response ReadRos2Dsr_msgs2SrvSetVeljRt_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvSetVeljRt_Response();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvSetVelxRt_Request
    {
        public double @trans = 0;
        public double @rotation = 0;

        public _Ros2Dsr_msgs2SrvSetVelxRt_Request()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvSetVelxRt_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvSetVelxRt_Request>
    {
        public static readonly Ros2Dsr_msgs2SrvSetVelxRt_RequestCodec Instance = new Ros2Dsr_msgs2SrvSetVelxRt_RequestCodec();

        private Ros2Dsr_msgs2SrvSetVelxRt_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/SetVelxRt_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_f9b3017cd73796a71ea9bacd871af523b391d9e5b06f1b050cfbeab163c83b9e";
        public const int MIN_WIRE_BYTES = 16, MAX_WIRE_BYTES = 16;

        public byte[] Encode(_Ros2Dsr_msgs2SrvSetVelxRt_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvSetVelxRt_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvSetVelxRt_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvSetVelxRt_Request value = ReadRos2Dsr_msgs2SrvSetVelxRt_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvSetVelxRt_Request(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvSetVelxRt_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        double part0 = value.@trans;
        writer.Float64(part0);
        double part1 = value.@rotation;
        writer.Float64(part1);
    }

    private static _Ros2Dsr_msgs2SrvSetVelxRt_Request ReadRos2Dsr_msgs2SrvSetVelxRt_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvSetVelxRt_Request();
        value.@trans = reader.Float64();
        value.@rotation = reader.Float64();
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvSetVelxRt_Response
    {
        public bool @success = false;

        public _Ros2Dsr_msgs2SrvSetVelxRt_Response()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvSetVelxRt_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvSetVelxRt_Response>
    {
        public static readonly Ros2Dsr_msgs2SrvSetVelxRt_ResponseCodec Instance = new Ros2Dsr_msgs2SrvSetVelxRt_ResponseCodec();

        private Ros2Dsr_msgs2SrvSetVelxRt_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/SetVelxRt_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_973acd53cbb327287c306ec5a54b7b756e031a6fb8acfc836852fdf19dc31f9d";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros2Dsr_msgs2SrvSetVelxRt_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvSetVelxRt_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvSetVelxRt_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvSetVelxRt_Response value = ReadRos2Dsr_msgs2SrvSetVelxRt_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvSetVelxRt_Response(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvSetVelxRt_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros2Dsr_msgs2SrvSetVelxRt_Response ReadRos2Dsr_msgs2SrvSetVelxRt_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvSetVelxRt_Response();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvStartRtControl_Request
    {
        public _Ros2Dsr_msgs2SrvStartRtControl_Request()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvStartRtControl_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvStartRtControl_Request>
    {
        public static readonly Ros2Dsr_msgs2SrvStartRtControl_RequestCodec Instance = new Ros2Dsr_msgs2SrvStartRtControl_RequestCodec();

        private Ros2Dsr_msgs2SrvStartRtControl_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/StartRtControl_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_a828a2ecc839bec2c3521779ed7927db6c7c47b48aa99d9ad6328e741a85e5b1";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public byte[] Encode(_Ros2Dsr_msgs2SrvStartRtControl_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvStartRtControl_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvStartRtControl_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvStartRtControl_Request value = ReadRos2Dsr_msgs2SrvStartRtControl_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvStartRtControl_Request(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvStartRtControl_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    private static _Ros2Dsr_msgs2SrvStartRtControl_Request ReadRos2Dsr_msgs2SrvStartRtControl_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvStartRtControl_Request();
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvStartRtControl_Response
    {
        public bool @success = false;

        public _Ros2Dsr_msgs2SrvStartRtControl_Response()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvStartRtControl_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvStartRtControl_Response>
    {
        public static readonly Ros2Dsr_msgs2SrvStartRtControl_ResponseCodec Instance = new Ros2Dsr_msgs2SrvStartRtControl_ResponseCodec();

        private Ros2Dsr_msgs2SrvStartRtControl_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/StartRtControl_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_ac6ba957fb8ea8ec816adbf89dfd041181d8fc4d7d6e399aae04ee6efd2c9533";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros2Dsr_msgs2SrvStartRtControl_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvStartRtControl_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvStartRtControl_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvStartRtControl_Response value = ReadRos2Dsr_msgs2SrvStartRtControl_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvStartRtControl_Response(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvStartRtControl_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros2Dsr_msgs2SrvStartRtControl_Response ReadRos2Dsr_msgs2SrvStartRtControl_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvStartRtControl_Response();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvStopRtControl_Request
    {
        public _Ros2Dsr_msgs2SrvStopRtControl_Request()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvStopRtControl_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvStopRtControl_Request>
    {
        public static readonly Ros2Dsr_msgs2SrvStopRtControl_RequestCodec Instance = new Ros2Dsr_msgs2SrvStopRtControl_RequestCodec();

        private Ros2Dsr_msgs2SrvStopRtControl_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/StopRtControl_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_0f2a7b5fc3a8dcb9413a53410d3291d5148add2e64bf7654ed41ff2f626b7ef1";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public byte[] Encode(_Ros2Dsr_msgs2SrvStopRtControl_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvStopRtControl_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvStopRtControl_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvStopRtControl_Request value = ReadRos2Dsr_msgs2SrvStopRtControl_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvStopRtControl_Request(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvStopRtControl_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    private static _Ros2Dsr_msgs2SrvStopRtControl_Request ReadRos2Dsr_msgs2SrvStopRtControl_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvStopRtControl_Request();
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvStopRtControl_Response
    {
        public bool @success = false;

        public _Ros2Dsr_msgs2SrvStopRtControl_Response()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvStopRtControl_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvStopRtControl_Response>
    {
        public static readonly Ros2Dsr_msgs2SrvStopRtControl_ResponseCodec Instance = new Ros2Dsr_msgs2SrvStopRtControl_ResponseCodec();

        private Ros2Dsr_msgs2SrvStopRtControl_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/StopRtControl_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_a8754817156c23964f102f68eab7e19c603c8092334a239c669d4fce23cfcd89";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros2Dsr_msgs2SrvStopRtControl_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvStopRtControl_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvStopRtControl_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvStopRtControl_Response value = ReadRos2Dsr_msgs2SrvStopRtControl_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvStopRtControl_Response(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvStopRtControl_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros2Dsr_msgs2SrvStopRtControl_Response ReadRos2Dsr_msgs2SrvStopRtControl_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvStopRtControl_Response();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvTaskComplianceCtrl_Request
    {
        public double[] @stx = new double[6];
        public sbyte @ref = 0;
        public double @time = 0;

        public _Ros2Dsr_msgs2SrvTaskComplianceCtrl_Request()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvTaskComplianceCtrl_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvTaskComplianceCtrl_Request>
    {
        public static readonly Ros2Dsr_msgs2SrvTaskComplianceCtrl_RequestCodec Instance = new Ros2Dsr_msgs2SrvTaskComplianceCtrl_RequestCodec();

        private Ros2Dsr_msgs2SrvTaskComplianceCtrl_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/TaskComplianceCtrl_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_e1c8abe0594c9a4de2a8fa207cac4b898dad5c3148e4f5bd965a4acb1b0663e0";
        public const int MIN_WIRE_BYTES = 57, MAX_WIRE_BYTES = 57;

        public byte[] Encode(_Ros2Dsr_msgs2SrvTaskComplianceCtrl_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvTaskComplianceCtrl_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvTaskComplianceCtrl_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvTaskComplianceCtrl_Request value = ReadRos2Dsr_msgs2SrvTaskComplianceCtrl_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvTaskComplianceCtrl_Request(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvTaskComplianceCtrl_Request value)
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

    private static _Ros2Dsr_msgs2SrvTaskComplianceCtrl_Request ReadRos2Dsr_msgs2SrvTaskComplianceCtrl_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvTaskComplianceCtrl_Request();
        value.@stx = new double[6];
        for(int index = 0; index < value.@stx.Length; ++index)
            value.@stx[index] = reader.Float64();
        value.@ref = unchecked((sbyte)reader.Unsigned(1));
        value.@time = reader.Float64();
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvTaskComplianceCtrl_Response
    {
        public bool @success = false;

        public _Ros2Dsr_msgs2SrvTaskComplianceCtrl_Response()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvTaskComplianceCtrl_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvTaskComplianceCtrl_Response>
    {
        public static readonly Ros2Dsr_msgs2SrvTaskComplianceCtrl_ResponseCodec Instance = new Ros2Dsr_msgs2SrvTaskComplianceCtrl_ResponseCodec();

        private Ros2Dsr_msgs2SrvTaskComplianceCtrl_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/TaskComplianceCtrl_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_031919d7369a7e23da6eed0754cf7228ad0c6694b84651454d40dec76aff35bb";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros2Dsr_msgs2SrvTaskComplianceCtrl_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvTaskComplianceCtrl_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvTaskComplianceCtrl_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvTaskComplianceCtrl_Response value = ReadRos2Dsr_msgs2SrvTaskComplianceCtrl_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvTaskComplianceCtrl_Response(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvTaskComplianceCtrl_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros2Dsr_msgs2SrvTaskComplianceCtrl_Response ReadRos2Dsr_msgs2SrvTaskComplianceCtrl_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvTaskComplianceCtrl_Response();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvTrans_Request
    {
        public double[] @pos = new double[6];
        public double[] @delta = new double[6];
        public sbyte @ref = 0;
        public sbyte @ref_out = 0;

        public _Ros2Dsr_msgs2SrvTrans_Request()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvTrans_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvTrans_Request>
    {
        public static readonly Ros2Dsr_msgs2SrvTrans_RequestCodec Instance = new Ros2Dsr_msgs2SrvTrans_RequestCodec();

        private Ros2Dsr_msgs2SrvTrans_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/Trans_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_473706407758f61ca27a10aa6090859f97ffae55ad65abfd3dbf7a2bf31230f7";
        public const int MIN_WIRE_BYTES = 98, MAX_WIRE_BYTES = 98;

        public byte[] Encode(_Ros2Dsr_msgs2SrvTrans_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvTrans_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvTrans_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvTrans_Request value = ReadRos2Dsr_msgs2SrvTrans_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvTrans_Request(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvTrans_Request value)
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

    private static _Ros2Dsr_msgs2SrvTrans_Request ReadRos2Dsr_msgs2SrvTrans_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvTrans_Request();
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

    public sealed class _Ros2Dsr_msgs2SrvTrans_Response
    {
        public double[] @trans_pos = new double[6];
        public bool @success = false;

        public _Ros2Dsr_msgs2SrvTrans_Response()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvTrans_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvTrans_Response>
    {
        public static readonly Ros2Dsr_msgs2SrvTrans_ResponseCodec Instance = new Ros2Dsr_msgs2SrvTrans_ResponseCodec();

        private Ros2Dsr_msgs2SrvTrans_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/Trans_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_0900d0c0cda3b1b164384313039be345f26d7cebfe3918ed6d3d10eb6c5a2913";
        public const int MIN_WIRE_BYTES = 49, MAX_WIRE_BYTES = 49;

        public byte[] Encode(_Ros2Dsr_msgs2SrvTrans_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvTrans_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvTrans_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvTrans_Response value = ReadRos2Dsr_msgs2SrvTrans_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvTrans_Response(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvTrans_Response value)
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

    private static _Ros2Dsr_msgs2SrvTrans_Response ReadRos2Dsr_msgs2SrvTrans_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvTrans_Response();
        value.@trans_pos = new double[6];
        for(int index = 0; index < value.@trans_pos.Length; ++index)
            value.@trans_pos[index] = reader.Float64();
        value.@success = ReadBool(reader);
        return value;
    }

    public sealed class _Ros2Dsr_msgs2SrvWriteDataRt_Request
    {
        public double[] @external_force_torque = new double[6];
        public int @external_digital_input = 0;
        public int @external_digital_output = 0;
        public double[] @external_analog_input = new double[6];
        public double[] @external_analog_output = new double[6];

        public _Ros2Dsr_msgs2SrvWriteDataRt_Request()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvWriteDataRt_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvWriteDataRt_Request>
    {
        public static readonly Ros2Dsr_msgs2SrvWriteDataRt_RequestCodec Instance = new Ros2Dsr_msgs2SrvWriteDataRt_RequestCodec();

        private Ros2Dsr_msgs2SrvWriteDataRt_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/WriteDataRt_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_6936ab81238d05ed11cd9a372c08723a506f424bef7682cbd627295bd5b31f41";
        public const int MIN_WIRE_BYTES = 152, MAX_WIRE_BYTES = 152;

        public byte[] Encode(_Ros2Dsr_msgs2SrvWriteDataRt_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvWriteDataRt_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvWriteDataRt_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvWriteDataRt_Request value = ReadRos2Dsr_msgs2SrvWriteDataRt_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvWriteDataRt_Request(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvWriteDataRt_Request value)
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

    private static _Ros2Dsr_msgs2SrvWriteDataRt_Request ReadRos2Dsr_msgs2SrvWriteDataRt_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvWriteDataRt_Request();
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

    public sealed class _Ros2Dsr_msgs2SrvWriteDataRt_Response
    {
        public bool @success = false;

        public _Ros2Dsr_msgs2SrvWriteDataRt_Response()
        {
        }
    }

    public sealed class Ros2Dsr_msgs2SrvWriteDataRt_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Dsr_msgs2SrvWriteDataRt_Response>
    {
        public static readonly Ros2Dsr_msgs2SrvWriteDataRt_ResponseCodec Instance = new Ros2Dsr_msgs2SrvWriteDataRt_ResponseCodec();

        private Ros2Dsr_msgs2SrvWriteDataRt_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "dsr_msgs2/srv/WriteDataRt_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_a0c357cdc8525ce2c13210c5662fde3ff2bf89ac253a3ade7c0524af4879748e";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros2Dsr_msgs2SrvWriteDataRt_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Dsr_msgs2SrvWriteDataRt_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Dsr_msgs2SrvWriteDataRt_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Dsr_msgs2SrvWriteDataRt_Response value = ReadRos2Dsr_msgs2SrvWriteDataRt_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Dsr_msgs2SrvWriteDataRt_Response(_Codecs.Writer writer, _Ros2Dsr_msgs2SrvWriteDataRt_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros2Dsr_msgs2SrvWriteDataRt_Response ReadRos2Dsr_msgs2SrvWriteDataRt_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Dsr_msgs2SrvWriteDataRt_Response();
        value.@success = ReadBool(reader);
        return value;
    }
}
