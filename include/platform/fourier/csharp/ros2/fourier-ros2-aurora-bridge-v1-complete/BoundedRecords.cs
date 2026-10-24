/**
 * @file BoundedRecords.cs
 * @brief Full fourier csharp codecs and original record metadata.
 * @details Complete fourier ros2_aurora_bridge_v1 values in csharp. 51 original records retain 138 fields and 28
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

    public sealed class _Ros2Uwvm_fourier_bridgeMsgGroupState
    {
        public string @group = "";
        public double[] @position = new double[0];
        public double[] @velocity = new double[0];
        public double[] @effort = new double[0];
        public int @motion_state = 0;

        public _Ros2Uwvm_fourier_bridgeMsgGroupState()
        {
        }
    }

    public sealed class Ros2Uwvm_fourier_bridgeMsgGroupStateCodec : global::Uwvm.RosWasm.ICodec<_Ros2Uwvm_fourier_bridgeMsgGroupState>
    {
        public static readonly Ros2Uwvm_fourier_bridgeMsgGroupStateCodec Instance = new Ros2Uwvm_fourier_bridgeMsgGroupStateCodec();

        private Ros2Uwvm_fourier_bridgeMsgGroupStateCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "uwvm_fourier_bridge/msg/GroupState";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_f33e483ea4f7b9326e43f82c92f948ce6d47f16fb34e463ba25f3ec01d5e0bf4";
        public const int MIN_WIRE_BYTES = 20, MAX_WIRE_BYTES = 1684;

        public byte[] Encode(_Ros2Uwvm_fourier_bridgeMsgGroupState value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Uwvm_fourier_bridgeMsgGroupState(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Uwvm_fourier_bridgeMsgGroupState Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Uwvm_fourier_bridgeMsgGroupState value = ReadRos2Uwvm_fourier_bridgeMsgGroupState(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Uwvm_fourier_bridgeMsgGroupState(_Codecs.Writer writer, _Ros2Uwvm_fourier_bridgeMsgGroupState value)
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

    private static _Ros2Uwvm_fourier_bridgeMsgGroupState ReadRos2Uwvm_fourier_bridgeMsgGroupState(_Codecs.Reader reader)
    {
        var value = new _Ros2Uwvm_fourier_bridgeMsgGroupState();
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

    public sealed class _Ros2Uwvm_fourier_bridgeMsgGroupValues
    {
        public string @group = "";
        public double[] @values = new double[0];

        public _Ros2Uwvm_fourier_bridgeMsgGroupValues()
        {
        }
    }

    public sealed class Ros2Uwvm_fourier_bridgeMsgGroupValuesCodec : global::Uwvm.RosWasm.ICodec<_Ros2Uwvm_fourier_bridgeMsgGroupValues>
    {
        public static readonly Ros2Uwvm_fourier_bridgeMsgGroupValuesCodec Instance = new Ros2Uwvm_fourier_bridgeMsgGroupValuesCodec();

        private Ros2Uwvm_fourier_bridgeMsgGroupValuesCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "uwvm_fourier_bridge/msg/GroupValues";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_3c69f73f7b6d1d4a8a6b5006f6dbe9a74021b10a0d3b493251f0085cb06d57f3";
        public const int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 648;

        public byte[] Encode(_Ros2Uwvm_fourier_bridgeMsgGroupValues value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Uwvm_fourier_bridgeMsgGroupValues(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Uwvm_fourier_bridgeMsgGroupValues Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Uwvm_fourier_bridgeMsgGroupValues value = ReadRos2Uwvm_fourier_bridgeMsgGroupValues(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Uwvm_fourier_bridgeMsgGroupValues(_Codecs.Writer writer, _Ros2Uwvm_fourier_bridgeMsgGroupValues value)
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

    private static _Ros2Uwvm_fourier_bridgeMsgGroupValues ReadRos2Uwvm_fourier_bridgeMsgGroupValues(_Codecs.Reader reader)
    {
        var value = new _Ros2Uwvm_fourier_bridgeMsgGroupValues();
        value.@group = ReadText(reader, 128);
        value.@values = new double[ReadCount(reader, 64, 8)];
        for(int index = 0; index < value.@values.Length; ++index)
            value.@values[index] = reader.Float64();
        return value;
    }

    public sealed class _Ros2Uwvm_fourier_bridgeMsgMotionRecipe
    {
        public byte @move_type = 0;
        public string @group = "";
        public double[] @position = new double[0];
        public bool @has_velocity = false;
        public double[] @velocity = new double[0];
        public int @expected_velocity = 0;

        public _Ros2Uwvm_fourier_bridgeMsgMotionRecipe()
        {
        }
    }

    public sealed class Ros2Uwvm_fourier_bridgeMsgMotionRecipeCodec : global::Uwvm.RosWasm.ICodec<_Ros2Uwvm_fourier_bridgeMsgMotionRecipe>
    {
        public static readonly Ros2Uwvm_fourier_bridgeMsgMotionRecipeCodec Instance = new Ros2Uwvm_fourier_bridgeMsgMotionRecipeCodec();

        private Ros2Uwvm_fourier_bridgeMsgMotionRecipeCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "uwvm_fourier_bridge/msg/MotionRecipe";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_bc50051a3fd81e146ad97200427b3b673081f817a20dbc38de1533dc0a9bee14";
        public const int MIN_WIRE_BYTES = 18, MAX_WIRE_BYTES = 1170;

        public byte[] Encode(_Ros2Uwvm_fourier_bridgeMsgMotionRecipe value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Uwvm_fourier_bridgeMsgMotionRecipe(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Uwvm_fourier_bridgeMsgMotionRecipe Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Uwvm_fourier_bridgeMsgMotionRecipe value = ReadRos2Uwvm_fourier_bridgeMsgMotionRecipe(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Uwvm_fourier_bridgeMsgMotionRecipe(_Codecs.Writer writer, _Ros2Uwvm_fourier_bridgeMsgMotionRecipe value)
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

    private static _Ros2Uwvm_fourier_bridgeMsgMotionRecipe ReadRos2Uwvm_fourier_bridgeMsgMotionRecipe(_Codecs.Reader reader)
    {
        var value = new _Ros2Uwvm_fourier_bridgeMsgMotionRecipe();
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

    public sealed class _Ros2Uwvm_fourier_bridgeMsgStatus
    {
        public int @fsm_state = 0;
        public string @fsm_name = "";
        public int @upper_fsm_state = 0;
        public string @upper_fsm_name = "";
        public int @velocity_source = 0;
        public string @velocity_source_name = "";
        public double[] @stand_pose = new double[0];
        public _Ros2Uwvm_fourier_bridgeMsgGroupState[] @groups = new _Ros2Uwvm_fourier_bridgeMsgGroupState[0];

        public _Ros2Uwvm_fourier_bridgeMsgStatus()
        {
        }
    }

    public sealed class Ros2Uwvm_fourier_bridgeMsgStatusCodec : global::Uwvm.RosWasm.ICodec<_Ros2Uwvm_fourier_bridgeMsgStatus>
    {
        public static readonly Ros2Uwvm_fourier_bridgeMsgStatusCodec Instance = new Ros2Uwvm_fourier_bridgeMsgStatusCodec();

        private Ros2Uwvm_fourier_bridgeMsgStatusCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "uwvm_fourier_bridge/msg/Status";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_f251a6d2da8a35e9b49c1341ffda12f809186d845eb076d225ed274da7b4165e";
        public const int MIN_WIRE_BYTES = 32, MAX_WIRE_BYTES = 14400;

        public byte[] Encode(_Ros2Uwvm_fourier_bridgeMsgStatus value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Uwvm_fourier_bridgeMsgStatus(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Uwvm_fourier_bridgeMsgStatus Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Uwvm_fourier_bridgeMsgStatus value = ReadRos2Uwvm_fourier_bridgeMsgStatus(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Uwvm_fourier_bridgeMsgStatus(_Codecs.Writer writer, _Ros2Uwvm_fourier_bridgeMsgStatus value)
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
        _Ros2Uwvm_fourier_bridgeMsgGroupState[] part7 = value.@groups;
        if(part7 == null || part7.Length > 8)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part7.Length, 4);
        for(int index = 0; index < part7.Length; ++index)
        {
            _Ros2Uwvm_fourier_bridgeMsgGroupState element = part7[index];
            WriteRos2Uwvm_fourier_bridgeMsgGroupState(writer, element);
        }
    }

    private static _Ros2Uwvm_fourier_bridgeMsgStatus ReadRos2Uwvm_fourier_bridgeMsgStatus(_Codecs.Reader reader)
    {
        var value = new _Ros2Uwvm_fourier_bridgeMsgStatus();
        value.@fsm_state = unchecked((int)reader.Unsigned(4));
        value.@fsm_name = ReadText(reader, 128);
        value.@upper_fsm_state = unchecked((int)reader.Unsigned(4));
        value.@upper_fsm_name = ReadText(reader, 128);
        value.@velocity_source = unchecked((int)reader.Unsigned(4));
        value.@velocity_source_name = ReadText(reader, 128);
        value.@stand_pose = new double[ReadCount(reader, 64, 8)];
        for(int index = 0; index < value.@stand_pose.Length; ++index)
            value.@stand_pose[index] = reader.Float64();
        value.@groups = new _Ros2Uwvm_fourier_bridgeMsgGroupState[ReadCount(reader, 8, 20)];
        for(int index = 0; index < value.@groups.Length; ++index)
            value.@groups[index] = ReadRos2Uwvm_fourier_bridgeMsgGroupState(reader);
        return value;
    }

    public sealed class _Ros2Uwvm_fourier_bridgeMsgVelocityCommand
    {
        public ulong @sequence = 0;
        public double @vx = 0;
        public double @vy = 0;
        public double @yaw = 0;
        public double @duration = 0;

        public _Ros2Uwvm_fourier_bridgeMsgVelocityCommand()
        {
        }
    }

    public sealed class Ros2Uwvm_fourier_bridgeMsgVelocityCommandCodec : global::Uwvm.RosWasm.ICodec<_Ros2Uwvm_fourier_bridgeMsgVelocityCommand>
    {
        public static readonly Ros2Uwvm_fourier_bridgeMsgVelocityCommandCodec Instance = new Ros2Uwvm_fourier_bridgeMsgVelocityCommandCodec();

        private Ros2Uwvm_fourier_bridgeMsgVelocityCommandCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "uwvm_fourier_bridge/msg/VelocityCommand";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_9b0a6facfb591afb82a34bb01b058f340626eba26619b8b686a52c6319e11d3d";
        public const int MIN_WIRE_BYTES = 40, MAX_WIRE_BYTES = 40;

        public byte[] Encode(_Ros2Uwvm_fourier_bridgeMsgVelocityCommand value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Uwvm_fourier_bridgeMsgVelocityCommand(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Uwvm_fourier_bridgeMsgVelocityCommand Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Uwvm_fourier_bridgeMsgVelocityCommand value = ReadRos2Uwvm_fourier_bridgeMsgVelocityCommand(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Uwvm_fourier_bridgeMsgVelocityCommand(_Codecs.Writer writer, _Ros2Uwvm_fourier_bridgeMsgVelocityCommand value)
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

    private static _Ros2Uwvm_fourier_bridgeMsgVelocityCommand ReadRos2Uwvm_fourier_bridgeMsgVelocityCommand(_Codecs.Reader reader)
    {
        var value = new _Ros2Uwvm_fourier_bridgeMsgVelocityCommand();
        value.@sequence = unchecked((ulong)reader.Unsigned(8));
        value.@vx = reader.Float64();
        value.@vy = reader.Float64();
        value.@yaw = reader.Float64();
        value.@duration = reader.Float64();
        return value;
    }

    public sealed class _Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request
    {
        public ulong @sequence = 0;
        public _Ros2Uwvm_fourier_bridgeMsgMotionRecipe[] @moves = new _Ros2Uwvm_fourier_bridgeMsgMotionRecipe[0];

        public _Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request()
        {
        }
    }

    public sealed class Ros2Uwvm_fourier_bridgeSrvExecuteMove_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request>
    {
        public static readonly Ros2Uwvm_fourier_bridgeSrvExecuteMove_RequestCodec Instance = new Ros2Uwvm_fourier_bridgeSrvExecuteMove_RequestCodec();

        private Ros2Uwvm_fourier_bridgeSrvExecuteMove_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "uwvm_fourier_bridge/srv/ExecuteMove_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_4f306d8dc39d1aec7cb634df8a1b3573996440cbdd390ad7447edfd93e0d626b";
        public const int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 9372;

        public byte[] Encode(_Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Uwvm_fourier_bridgeSrvExecuteMove_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request value = ReadRos2Uwvm_fourier_bridgeSrvExecuteMove_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Uwvm_fourier_bridgeSrvExecuteMove_Request(_Codecs.Writer writer, _Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        ulong part0 = value.@sequence;
        writer.Unsigned(part0, 8);
        _Ros2Uwvm_fourier_bridgeMsgMotionRecipe[] part1 = value.@moves;
        if(part1 == null || part1.Length > 8)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part1.Length, 4);
        for(int index = 0; index < part1.Length; ++index)
        {
            _Ros2Uwvm_fourier_bridgeMsgMotionRecipe element = part1[index];
            WriteRos2Uwvm_fourier_bridgeMsgMotionRecipe(writer, element);
        }
    }

    private static _Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request ReadRos2Uwvm_fourier_bridgeSrvExecuteMove_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request();
        value.@sequence = unchecked((ulong)reader.Unsigned(8));
        value.@moves = new _Ros2Uwvm_fourier_bridgeMsgMotionRecipe[ReadCount(reader, 8, 18)];
        for(int index = 0; index < value.@moves.Length; ++index)
            value.@moves[index] = ReadRos2Uwvm_fourier_bridgeMsgMotionRecipe(reader);
        return value;
    }

    public sealed class _Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response
    {
        public uint @status = 0;
        public string @error = "";

        public _Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response()
        {
        }
    }

    public sealed class Ros2Uwvm_fourier_bridgeSrvExecuteMove_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response>
    {
        public static readonly Ros2Uwvm_fourier_bridgeSrvExecuteMove_ResponseCodec Instance = new Ros2Uwvm_fourier_bridgeSrvExecuteMove_ResponseCodec();

        private Ros2Uwvm_fourier_bridgeSrvExecuteMove_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "uwvm_fourier_bridge/srv/ExecuteMove_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_16cd03eb2e730dcd9eda47be3a506298f9369f0f61bcddd634a06295f902dcab";
        public const int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 136;

        public byte[] Encode(_Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Uwvm_fourier_bridgeSrvExecuteMove_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response value = ReadRos2Uwvm_fourier_bridgeSrvExecuteMove_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Uwvm_fourier_bridgeSrvExecuteMove_Response(_Codecs.Writer writer, _Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        uint part0 = value.@status;
        writer.Unsigned(part0, 4);
        string part1 = value.@error;
        WriteText(writer, part1, 128);
    }

    private static _Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response ReadRos2Uwvm_fourier_bridgeSrvExecuteMove_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response();
        value.@status = unchecked((uint)reader.Unsigned(4));
        value.@error = ReadText(reader, 128);
        return value;
    }

    public sealed class _Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request
    {
        public ulong @sequence = 0;
        public string @key = "";

        public _Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request()
        {
        }
    }

    public sealed class Ros2Uwvm_fourier_bridgeSrvGetBaseData_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request>
    {
        public static readonly Ros2Uwvm_fourier_bridgeSrvGetBaseData_RequestCodec Instance = new Ros2Uwvm_fourier_bridgeSrvGetBaseData_RequestCodec();

        private Ros2Uwvm_fourier_bridgeSrvGetBaseData_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "uwvm_fourier_bridge/srv/GetBaseData_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_19cfad0a79a7703b8dd5d9215a705026eaff78ef1794bda704f52a1e70d2dd5f";
        public const int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 140;

        public byte[] Encode(_Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Uwvm_fourier_bridgeSrvGetBaseData_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request value = ReadRos2Uwvm_fourier_bridgeSrvGetBaseData_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Uwvm_fourier_bridgeSrvGetBaseData_Request(_Codecs.Writer writer, _Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        ulong part0 = value.@sequence;
        writer.Unsigned(part0, 8);
        string part1 = value.@key;
        WriteText(writer, part1, 128);
    }

    private static _Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request ReadRos2Uwvm_fourier_bridgeSrvGetBaseData_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request();
        value.@sequence = unchecked((ulong)reader.Unsigned(8));
        value.@key = ReadText(reader, 128);
        return value;
    }

    public sealed class _Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response
    {
        public uint @status = 0;
        public string @error = "";
        public double[] @values = new double[0];

        public _Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response()
        {
        }
    }

    public sealed class Ros2Uwvm_fourier_bridgeSrvGetBaseData_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response>
    {
        public static readonly Ros2Uwvm_fourier_bridgeSrvGetBaseData_ResponseCodec Instance = new Ros2Uwvm_fourier_bridgeSrvGetBaseData_ResponseCodec();

        private Ros2Uwvm_fourier_bridgeSrvGetBaseData_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "uwvm_fourier_bridge/srv/GetBaseData_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_4c632e4c71f87f82064078b2936c9af2be87f56e44014e029470748c14614804";
        public const int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 652;

        public byte[] Encode(_Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Uwvm_fourier_bridgeSrvGetBaseData_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response value = ReadRos2Uwvm_fourier_bridgeSrvGetBaseData_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Uwvm_fourier_bridgeSrvGetBaseData_Response(_Codecs.Writer writer, _Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response value)
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

    private static _Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response ReadRos2Uwvm_fourier_bridgeSrvGetBaseData_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response();
        value.@status = unchecked((uint)reader.Unsigned(4));
        value.@error = ReadText(reader, 128);
        value.@values = new double[ReadCount(reader, 64, 8)];
        for(int index = 0; index < value.@values.Length; ++index)
            value.@values[index] = reader.Float64();
        return value;
    }

    public sealed class _Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request
    {
        public ulong @sequence = 0;
        public string @group = "";
        public string @key = "";

        public _Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request()
        {
        }
    }

    public sealed class Ros2Uwvm_fourier_bridgeSrvGetCartesianState_RequestCodec :
        global::Uwvm.RosWasm.ICodec<_Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request>
    {
        public static readonly Ros2Uwvm_fourier_bridgeSrvGetCartesianState_RequestCodec Instance =
            new Ros2Uwvm_fourier_bridgeSrvGetCartesianState_RequestCodec();

        private Ros2Uwvm_fourier_bridgeSrvGetCartesianState_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "uwvm_fourier_bridge/srv/GetCartesianState_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_2255ca1da45c891d1a3f8c8f77f1f6c5b9380d5ac5250a5d522ab581c4df7eee";
        public const int MIN_WIRE_BYTES = 16, MAX_WIRE_BYTES = 272;

        public byte[] Encode(_Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Uwvm_fourier_bridgeSrvGetCartesianState_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request value = ReadRos2Uwvm_fourier_bridgeSrvGetCartesianState_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Uwvm_fourier_bridgeSrvGetCartesianState_Request(_Codecs.Writer writer,
                                                                                 _Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request value)
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

    private static _Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request ReadRos2Uwvm_fourier_bridgeSrvGetCartesianState_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request();
        value.@sequence = unchecked((ulong)reader.Unsigned(8));
        value.@group = ReadText(reader, 128);
        value.@key = ReadText(reader, 128);
        return value;
    }

    public sealed class _Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response
    {
        public uint @status = 0;
        public string @error = "";
        public double[] @values = new double[0];

        public _Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response()
        {
        }
    }

    public sealed class Ros2Uwvm_fourier_bridgeSrvGetCartesianState_ResponseCodec :
        global::Uwvm.RosWasm.ICodec<_Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response>
    {
        public static readonly Ros2Uwvm_fourier_bridgeSrvGetCartesianState_ResponseCodec Instance =
            new Ros2Uwvm_fourier_bridgeSrvGetCartesianState_ResponseCodec();

        private Ros2Uwvm_fourier_bridgeSrvGetCartesianState_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "uwvm_fourier_bridge/srv/GetCartesianState_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_8adfef323b2635fd716d7121496c091656bc76bce2b320479345ef94bdc62a40";
        public const int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 652;

        public byte[] Encode(_Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Uwvm_fourier_bridgeSrvGetCartesianState_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response value = ReadRos2Uwvm_fourier_bridgeSrvGetCartesianState_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Uwvm_fourier_bridgeSrvGetCartesianState_Response(_Codecs.Writer writer,
                                                                                  _Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response value)
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

    private static _Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response ReadRos2Uwvm_fourier_bridgeSrvGetCartesianState_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response();
        value.@status = unchecked((uint)reader.Unsigned(4));
        value.@error = ReadText(reader, 128);
        value.@values = new double[ReadCount(reader, 64, 8)];
        for(int index = 0; index < value.@values.Length; ++index)
            value.@values[index] = reader.Float64();
        return value;
    }

    public sealed class _Ros2Uwvm_fourier_bridgeSrvGetContactData_Request
    {
        public ulong @sequence = 0;
        public string @key = "";

        public _Ros2Uwvm_fourier_bridgeSrvGetContactData_Request()
        {
        }
    }

    public sealed class Ros2Uwvm_fourier_bridgeSrvGetContactData_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Uwvm_fourier_bridgeSrvGetContactData_Request>
    {
        public static readonly Ros2Uwvm_fourier_bridgeSrvGetContactData_RequestCodec Instance = new Ros2Uwvm_fourier_bridgeSrvGetContactData_RequestCodec();

        private Ros2Uwvm_fourier_bridgeSrvGetContactData_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "uwvm_fourier_bridge/srv/GetContactData_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_52cf1fcf2036a4aa97ec902842838707ee1c96c63f6466165af5d1f3cde5f4e0";
        public const int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 140;

        public byte[] Encode(_Ros2Uwvm_fourier_bridgeSrvGetContactData_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Uwvm_fourier_bridgeSrvGetContactData_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Uwvm_fourier_bridgeSrvGetContactData_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Uwvm_fourier_bridgeSrvGetContactData_Request value = ReadRos2Uwvm_fourier_bridgeSrvGetContactData_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Uwvm_fourier_bridgeSrvGetContactData_Request(_Codecs.Writer writer, _Ros2Uwvm_fourier_bridgeSrvGetContactData_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        ulong part0 = value.@sequence;
        writer.Unsigned(part0, 8);
        string part1 = value.@key;
        WriteText(writer, part1, 128);
    }

    private static _Ros2Uwvm_fourier_bridgeSrvGetContactData_Request ReadRos2Uwvm_fourier_bridgeSrvGetContactData_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Uwvm_fourier_bridgeSrvGetContactData_Request();
        value.@sequence = unchecked((ulong)reader.Unsigned(8));
        value.@key = ReadText(reader, 128);
        return value;
    }

    public sealed class _Ros2Uwvm_fourier_bridgeSrvGetContactData_Response
    {
        public uint @status = 0;
        public string @error = "";
        public double[] @values = new double[0];

        public _Ros2Uwvm_fourier_bridgeSrvGetContactData_Response()
        {
        }
    }

    public sealed class Ros2Uwvm_fourier_bridgeSrvGetContactData_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Uwvm_fourier_bridgeSrvGetContactData_Response>
    {
        public static readonly Ros2Uwvm_fourier_bridgeSrvGetContactData_ResponseCodec Instance = new Ros2Uwvm_fourier_bridgeSrvGetContactData_ResponseCodec();

        private Ros2Uwvm_fourier_bridgeSrvGetContactData_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "uwvm_fourier_bridge/srv/GetContactData_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_504e7cc1bcb1c9a649cda204bbfbf8c6735fc5d71466b8a72d0536f0d3746b2e";
        public const int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 652;

        public byte[] Encode(_Ros2Uwvm_fourier_bridgeSrvGetContactData_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Uwvm_fourier_bridgeSrvGetContactData_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Uwvm_fourier_bridgeSrvGetContactData_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Uwvm_fourier_bridgeSrvGetContactData_Response value = ReadRos2Uwvm_fourier_bridgeSrvGetContactData_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Uwvm_fourier_bridgeSrvGetContactData_Response(_Codecs.Writer writer, _Ros2Uwvm_fourier_bridgeSrvGetContactData_Response value)
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

    private static _Ros2Uwvm_fourier_bridgeSrvGetContactData_Response ReadRos2Uwvm_fourier_bridgeSrvGetContactData_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Uwvm_fourier_bridgeSrvGetContactData_Response();
        value.@status = unchecked((uint)reader.Unsigned(4));
        value.@error = ReadText(reader, 128);
        value.@values = new double[ReadCount(reader, 64, 8)];
        for(int index = 0; index < value.@values.Length; ++index)
            value.@values[index] = reader.Float64();
        return value;
    }

    public sealed class _Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request
    {
        public ulong @sequence = 0;

        public _Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request()
        {
        }
    }

    public sealed class Ros2Uwvm_fourier_bridgeSrvGetFsmName_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request>
    {
        public static readonly Ros2Uwvm_fourier_bridgeSrvGetFsmName_RequestCodec Instance = new Ros2Uwvm_fourier_bridgeSrvGetFsmName_RequestCodec();

        private Ros2Uwvm_fourier_bridgeSrvGetFsmName_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "uwvm_fourier_bridge/srv/GetFsmName_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_d8a11bb7eee1af0c138ec4f934610c4b88d817be25992cb854100cb61d8d6100";
        public const int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 8;

        public byte[] Encode(_Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Uwvm_fourier_bridgeSrvGetFsmName_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request value = ReadRos2Uwvm_fourier_bridgeSrvGetFsmName_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Uwvm_fourier_bridgeSrvGetFsmName_Request(_Codecs.Writer writer, _Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        ulong part0 = value.@sequence;
        writer.Unsigned(part0, 8);
    }

    private static _Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request ReadRos2Uwvm_fourier_bridgeSrvGetFsmName_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request();
        value.@sequence = unchecked((ulong)reader.Unsigned(8));
        return value;
    }

    public sealed class _Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response
    {
        public uint @status = 0;
        public string @error = "";
        public string @value = "";

        public _Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response()
        {
        }
    }

    public sealed class Ros2Uwvm_fourier_bridgeSrvGetFsmName_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response>
    {
        public static readonly Ros2Uwvm_fourier_bridgeSrvGetFsmName_ResponseCodec Instance = new Ros2Uwvm_fourier_bridgeSrvGetFsmName_ResponseCodec();

        private Ros2Uwvm_fourier_bridgeSrvGetFsmName_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "uwvm_fourier_bridge/srv/GetFsmName_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_6ac4c78b17f0a366274f7fc74e981e95e605040937a78b3e328836f781c6886e";
        public const int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 268;

        public byte[] Encode(_Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Uwvm_fourier_bridgeSrvGetFsmName_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response value = ReadRos2Uwvm_fourier_bridgeSrvGetFsmName_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Uwvm_fourier_bridgeSrvGetFsmName_Response(_Codecs.Writer writer, _Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response value)
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

    private static _Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response ReadRos2Uwvm_fourier_bridgeSrvGetFsmName_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response();
        value.@status = unchecked((uint)reader.Unsigned(4));
        value.@error = ReadText(reader, 128);
        value.@value = ReadText(reader, 128);
        return value;
    }

    public sealed class _Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request
    {
        public ulong @sequence = 0;

        public _Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request()
        {
        }
    }

    public sealed class Ros2Uwvm_fourier_bridgeSrvGetFsmState_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request>
    {
        public static readonly Ros2Uwvm_fourier_bridgeSrvGetFsmState_RequestCodec Instance = new Ros2Uwvm_fourier_bridgeSrvGetFsmState_RequestCodec();

        private Ros2Uwvm_fourier_bridgeSrvGetFsmState_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "uwvm_fourier_bridge/srv/GetFsmState_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_061098411a7d26f31dd31957b34190e798305289bad558d351ee81df810e3bd0";
        public const int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 8;

        public byte[] Encode(_Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Uwvm_fourier_bridgeSrvGetFsmState_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request value = ReadRos2Uwvm_fourier_bridgeSrvGetFsmState_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Uwvm_fourier_bridgeSrvGetFsmState_Request(_Codecs.Writer writer, _Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        ulong part0 = value.@sequence;
        writer.Unsigned(part0, 8);
    }

    private static _Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request ReadRos2Uwvm_fourier_bridgeSrvGetFsmState_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request();
        value.@sequence = unchecked((ulong)reader.Unsigned(8));
        return value;
    }

    public sealed class _Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response
    {
        public uint @status = 0;
        public string @error = "";
        public int @value = 0;

        public _Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response()
        {
        }
    }

    public sealed class Ros2Uwvm_fourier_bridgeSrvGetFsmState_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response>
    {
        public static readonly Ros2Uwvm_fourier_bridgeSrvGetFsmState_ResponseCodec Instance = new Ros2Uwvm_fourier_bridgeSrvGetFsmState_ResponseCodec();

        private Ros2Uwvm_fourier_bridgeSrvGetFsmState_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "uwvm_fourier_bridge/srv/GetFsmState_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_1ac3b816f0e4aa4e769bd74d67274b85a8d9bf5ca7f8a359179280970b7e19e4";
        public const int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 140;

        public byte[] Encode(_Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Uwvm_fourier_bridgeSrvGetFsmState_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response value = ReadRos2Uwvm_fourier_bridgeSrvGetFsmState_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Uwvm_fourier_bridgeSrvGetFsmState_Response(_Codecs.Writer writer, _Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response value)
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

    private static _Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response ReadRos2Uwvm_fourier_bridgeSrvGetFsmState_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response();
        value.@status = unchecked((uint)reader.Unsigned(4));
        value.@error = ReadText(reader, 128);
        value.@value = unchecked((int)reader.Unsigned(4));
        return value;
    }

    public sealed class _Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request
    {
        public ulong @sequence = 0;
        public string @group = "";

        public _Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request()
        {
        }
    }

    public sealed class Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_RequestCodec :
        global::Uwvm.RosWasm.ICodec<_Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request>
    {
        public static readonly Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_RequestCodec Instance =
            new Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_RequestCodec();

        private Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "uwvm_fourier_bridge/srv/GetGroupMotionState_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_32606cb0ba540db0ce680716059ef3a7b4ad1277216fab4254521071cc0ea9ae";
        public const int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 140;

        public byte[] Encode(_Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request value = ReadRos2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request(_Codecs.Writer writer,
                                                                                   _Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        ulong part0 = value.@sequence;
        writer.Unsigned(part0, 8);
        string part1 = value.@group;
        WriteText(writer, part1, 128);
    }

    private static _Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request ReadRos2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request();
        value.@sequence = unchecked((ulong)reader.Unsigned(8));
        value.@group = ReadText(reader, 128);
        return value;
    }

    public sealed class _Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response
    {
        public uint @status = 0;
        public string @error = "";
        public int @value = 0;

        public _Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response()
        {
        }
    }

    public sealed class Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_ResponseCodec :
        global::Uwvm.RosWasm.ICodec<_Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response>
    {
        public static readonly Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_ResponseCodec Instance =
            new Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_ResponseCodec();

        private Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "uwvm_fourier_bridge/srv/GetGroupMotionState_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_192bd0770ca8e95e171fdbf9ef393bfc5e845a38d2a0c48f7846f3e080e219d7";
        public const int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 140;

        public byte[] Encode(_Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response value = ReadRos2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response(_Codecs.Writer writer,
                                                                                    _Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response value)
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

    private static _Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response ReadRos2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response();
        value.@status = unchecked((uint)reader.Unsigned(4));
        value.@error = ReadText(reader, 128);
        value.@value = unchecked((int)reader.Unsigned(4));
        return value;
    }

    public sealed class _Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request
    {
        public ulong @sequence = 0;
        public string @group = "";
        public string @key = "";

        public _Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request()
        {
        }
    }

    public sealed class Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_RequestCodec :
        global::Uwvm.RosWasm.ICodec<_Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request>
    {
        public static readonly Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_RequestCodec Instance = new Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_RequestCodec();

        private Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "uwvm_fourier_bridge/srv/GetGroupMotorCfg_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_7edceab07d5c5c571bce51ea7f82f0695df7e07ad8584d7219b7db36b697959a";
        public const int MIN_WIRE_BYTES = 16, MAX_WIRE_BYTES = 272;

        public byte[] Encode(_Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request value = ReadRos2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request(_Codecs.Writer writer,
                                                                                _Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request value)
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

    private static _Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request ReadRos2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request();
        value.@sequence = unchecked((ulong)reader.Unsigned(8));
        value.@group = ReadText(reader, 128);
        value.@key = ReadText(reader, 128);
        return value;
    }

    public sealed class _Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response
    {
        public uint @status = 0;
        public string @error = "";
        public double[] @values = new double[0];

        public _Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response()
        {
        }
    }

    public sealed class Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_ResponseCodec :
        global::Uwvm.RosWasm.ICodec<_Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response>
    {
        public static readonly Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_ResponseCodec Instance =
            new Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_ResponseCodec();

        private Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "uwvm_fourier_bridge/srv/GetGroupMotorCfg_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_783f925c3b1030dec4d4a0172b4916c1cdbf72ec5e0da29167064ae754929868";
        public const int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 652;

        public byte[] Encode(_Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response value = ReadRos2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response(_Codecs.Writer writer,
                                                                                 _Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response value)
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

    private static _Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response ReadRos2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response();
        value.@status = unchecked((uint)reader.Unsigned(4));
        value.@error = ReadText(reader, 128);
        value.@values = new double[ReadCount(reader, 64, 8)];
        for(int index = 0; index < value.@values.Length; ++index)
            value.@values[index] = reader.Float64();
        return value;
    }

    public sealed class _Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request
    {
        public ulong @sequence = 0;
        public string @group = "";
        public string @key = "";

        public _Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request()
        {
        }
    }

    public sealed class Ros2Uwvm_fourier_bridgeSrvGetGroupState_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request>
    {
        public static readonly Ros2Uwvm_fourier_bridgeSrvGetGroupState_RequestCodec Instance = new Ros2Uwvm_fourier_bridgeSrvGetGroupState_RequestCodec();

        private Ros2Uwvm_fourier_bridgeSrvGetGroupState_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "uwvm_fourier_bridge/srv/GetGroupState_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_8ad802cc56a28a603ea0b4e705a80aafeda7657757a36e1bbe452b85b5035fa9";
        public const int MIN_WIRE_BYTES = 16, MAX_WIRE_BYTES = 272;

        public byte[] Encode(_Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Uwvm_fourier_bridgeSrvGetGroupState_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request value = ReadRos2Uwvm_fourier_bridgeSrvGetGroupState_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Uwvm_fourier_bridgeSrvGetGroupState_Request(_Codecs.Writer writer, _Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request value)
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

    private static _Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request ReadRos2Uwvm_fourier_bridgeSrvGetGroupState_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request();
        value.@sequence = unchecked((ulong)reader.Unsigned(8));
        value.@group = ReadText(reader, 128);
        value.@key = ReadText(reader, 128);
        return value;
    }

    public sealed class _Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response
    {
        public uint @status = 0;
        public string @error = "";
        public double[] @values = new double[0];

        public _Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response()
        {
        }
    }

    public sealed class Ros2Uwvm_fourier_bridgeSrvGetGroupState_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response>
    {
        public static readonly Ros2Uwvm_fourier_bridgeSrvGetGroupState_ResponseCodec Instance = new Ros2Uwvm_fourier_bridgeSrvGetGroupState_ResponseCodec();

        private Ros2Uwvm_fourier_bridgeSrvGetGroupState_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "uwvm_fourier_bridge/srv/GetGroupState_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_22b934422928c57570784ac2100bf5fd5ca941ea59aea72b442ec7205ed2c96d";
        public const int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 652;

        public byte[] Encode(_Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Uwvm_fourier_bridgeSrvGetGroupState_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response value = ReadRos2Uwvm_fourier_bridgeSrvGetGroupState_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Uwvm_fourier_bridgeSrvGetGroupState_Response(_Codecs.Writer writer, _Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response value)
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

    private static _Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response ReadRos2Uwvm_fourier_bridgeSrvGetGroupState_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response();
        value.@status = unchecked((uint)reader.Unsigned(4));
        value.@error = ReadText(reader, 128);
        value.@values = new double[ReadCount(reader, 64, 8)];
        for(int index = 0; index < value.@values.Length; ++index)
            value.@values[index] = reader.Float64();
        return value;
    }

    public sealed class _Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request
    {
        public ulong @sequence = 0;

        public _Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request()
        {
        }
    }

    public sealed class Ros2Uwvm_fourier_bridgeSrvGetSnapshot_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request>
    {
        public static readonly Ros2Uwvm_fourier_bridgeSrvGetSnapshot_RequestCodec Instance = new Ros2Uwvm_fourier_bridgeSrvGetSnapshot_RequestCodec();

        private Ros2Uwvm_fourier_bridgeSrvGetSnapshot_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "uwvm_fourier_bridge/srv/GetSnapshot_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_4c3003f85c4bc3c17e2e4bd4fd965fe52099a0a4a9f2c0320d165ec3db51bb58";
        public const int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 8;

        public byte[] Encode(_Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Uwvm_fourier_bridgeSrvGetSnapshot_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request value = ReadRos2Uwvm_fourier_bridgeSrvGetSnapshot_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Uwvm_fourier_bridgeSrvGetSnapshot_Request(_Codecs.Writer writer, _Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        ulong part0 = value.@sequence;
        writer.Unsigned(part0, 8);
    }

    private static _Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request ReadRos2Uwvm_fourier_bridgeSrvGetSnapshot_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request();
        value.@sequence = unchecked((ulong)reader.Unsigned(8));
        return value;
    }

    public sealed class _Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response
    {
        public uint @status = 0;
        public string @error = "";
        public _Ros2Uwvm_fourier_bridgeMsgStatus @value = new _Ros2Uwvm_fourier_bridgeMsgStatus();

        public _Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response()
        {
        }
    }

    public sealed class Ros2Uwvm_fourier_bridgeSrvGetSnapshot_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response>
    {
        public static readonly Ros2Uwvm_fourier_bridgeSrvGetSnapshot_ResponseCodec Instance = new Ros2Uwvm_fourier_bridgeSrvGetSnapshot_ResponseCodec();

        private Ros2Uwvm_fourier_bridgeSrvGetSnapshot_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "uwvm_fourier_bridge/srv/GetSnapshot_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_bf4456397ae5115bf88b49c5568b8f289d6aefe3266f5e4d12b86d0f992de6a3";
        public const int MIN_WIRE_BYTES = 40, MAX_WIRE_BYTES = 14536;

        public byte[] Encode(_Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Uwvm_fourier_bridgeSrvGetSnapshot_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response value = ReadRos2Uwvm_fourier_bridgeSrvGetSnapshot_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Uwvm_fourier_bridgeSrvGetSnapshot_Response(_Codecs.Writer writer, _Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        uint part0 = value.@status;
        writer.Unsigned(part0, 4);
        string part1 = value.@error;
        WriteText(writer, part1, 128);
        _Ros2Uwvm_fourier_bridgeMsgStatus part2 = value.@value;
        WriteRos2Uwvm_fourier_bridgeMsgStatus(writer, part2);
    }

    private static _Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response ReadRos2Uwvm_fourier_bridgeSrvGetSnapshot_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response();
        value.@status = unchecked((uint)reader.Unsigned(4));
        value.@error = ReadText(reader, 128);
        value.@value = ReadRos2Uwvm_fourier_bridgeMsgStatus(reader);
        return value;
    }

    public sealed class _Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request
    {
        public ulong @sequence = 0;

        public _Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request()
        {
        }
    }

    public sealed class Ros2Uwvm_fourier_bridgeSrvGetStandPose_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request>
    {
        public static readonly Ros2Uwvm_fourier_bridgeSrvGetStandPose_RequestCodec Instance = new Ros2Uwvm_fourier_bridgeSrvGetStandPose_RequestCodec();

        private Ros2Uwvm_fourier_bridgeSrvGetStandPose_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "uwvm_fourier_bridge/srv/GetStandPose_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_22c044b91db36a82bb825a556c41f9ae0139fb652ade47ac10aedf701ba0e044";
        public const int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 8;

        public byte[] Encode(_Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Uwvm_fourier_bridgeSrvGetStandPose_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request value = ReadRos2Uwvm_fourier_bridgeSrvGetStandPose_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Uwvm_fourier_bridgeSrvGetStandPose_Request(_Codecs.Writer writer, _Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        ulong part0 = value.@sequence;
        writer.Unsigned(part0, 8);
    }

    private static _Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request ReadRos2Uwvm_fourier_bridgeSrvGetStandPose_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request();
        value.@sequence = unchecked((ulong)reader.Unsigned(8));
        return value;
    }

    public sealed class _Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response
    {
        public uint @status = 0;
        public string @error = "";
        public double[] @values = new double[0];

        public _Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response()
        {
        }
    }

    public sealed class Ros2Uwvm_fourier_bridgeSrvGetStandPose_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response>
    {
        public static readonly Ros2Uwvm_fourier_bridgeSrvGetStandPose_ResponseCodec Instance = new Ros2Uwvm_fourier_bridgeSrvGetStandPose_ResponseCodec();

        private Ros2Uwvm_fourier_bridgeSrvGetStandPose_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "uwvm_fourier_bridge/srv/GetStandPose_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_b25c3c0cf5fa810e367b46ad2d20d7446ffc4f67b8fb77493060ca62017ef4e2";
        public const int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 652;

        public byte[] Encode(_Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Uwvm_fourier_bridgeSrvGetStandPose_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response value = ReadRos2Uwvm_fourier_bridgeSrvGetStandPose_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Uwvm_fourier_bridgeSrvGetStandPose_Response(_Codecs.Writer writer, _Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response value)
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

    private static _Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response ReadRos2Uwvm_fourier_bridgeSrvGetStandPose_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response();
        value.@status = unchecked((uint)reader.Unsigned(4));
        value.@error = ReadText(reader, 128);
        value.@values = new double[ReadCount(reader, 64, 8)];
        for(int index = 0; index < value.@values.Length; ++index)
            value.@values[index] = reader.Float64();
        return value;
    }

    public sealed class _Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request
    {
        public ulong @sequence = 0;

        public _Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request()
        {
        }
    }

    public sealed class Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request>
    {
        public static readonly Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_RequestCodec Instance = new Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_RequestCodec();

        private Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "uwvm_fourier_bridge/srv/GetUpperFsmName_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_83187e2bc41361d7a7aef57d1458f4017a3ca4235b82c290dd80c1f58611e412";
        public const int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 8;

        public byte[] Encode(_Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request value = ReadRos2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request(_Codecs.Writer writer, _Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        ulong part0 = value.@sequence;
        writer.Unsigned(part0, 8);
    }

    private static _Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request ReadRos2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request();
        value.@sequence = unchecked((ulong)reader.Unsigned(8));
        return value;
    }

    public sealed class _Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response
    {
        public uint @status = 0;
        public string @error = "";
        public string @value = "";

        public _Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response()
        {
        }
    }

    public sealed class Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_ResponseCodec :
        global::Uwvm.RosWasm.ICodec<_Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response>
    {
        public static readonly Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_ResponseCodec Instance = new Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_ResponseCodec();

        private Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "uwvm_fourier_bridge/srv/GetUpperFsmName_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_ad6e25b9363bcadb517e96e5a1615c5ce36719542b2b32c4fb16f69ab102daed";
        public const int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 268;

        public byte[] Encode(_Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response value = ReadRos2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response(_Codecs.Writer writer,
                                                                                _Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response value)
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

    private static _Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response ReadRos2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response();
        value.@status = unchecked((uint)reader.Unsigned(4));
        value.@error = ReadText(reader, 128);
        value.@value = ReadText(reader, 128);
        return value;
    }

    public sealed class _Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request
    {
        public ulong @sequence = 0;

        public _Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request()
        {
        }
    }

    public sealed class Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_RequestCodec :
        global::Uwvm.RosWasm.ICodec<_Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request>
    {
        public static readonly Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_RequestCodec Instance = new Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_RequestCodec();

        private Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "uwvm_fourier_bridge/srv/GetUpperFsmState_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_9981500b7a9dacf167baf5d8dce45820a1424a7b7fbe960c0d1b37751d1dda98";
        public const int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 8;

        public byte[] Encode(_Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request value = ReadRos2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request(_Codecs.Writer writer,
                                                                                _Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        ulong part0 = value.@sequence;
        writer.Unsigned(part0, 8);
    }

    private static _Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request ReadRos2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request();
        value.@sequence = unchecked((ulong)reader.Unsigned(8));
        return value;
    }

    public sealed class _Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response
    {
        public uint @status = 0;
        public string @error = "";
        public int @value = 0;

        public _Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response()
        {
        }
    }

    public sealed class Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_ResponseCodec :
        global::Uwvm.RosWasm.ICodec<_Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response>
    {
        public static readonly Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_ResponseCodec Instance =
            new Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_ResponseCodec();

        private Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "uwvm_fourier_bridge/srv/GetUpperFsmState_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_dc699f01c04f01c7ad2e71daea02ffd80f368d4d066d5d280fcf0a2abfa126a9";
        public const int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 140;

        public byte[] Encode(_Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response value = ReadRos2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response(_Codecs.Writer writer,
                                                                                 _Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response value)
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

    private static _Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response ReadRos2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response();
        value.@status = unchecked((uint)reader.Unsigned(4));
        value.@error = ReadText(reader, 128);
        value.@value = unchecked((int)reader.Unsigned(4));
        return value;
    }

    public sealed class _Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request
    {
        public ulong @sequence = 0;

        public _Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request()
        {
        }
    }

    public sealed class Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_RequestCodec :
        global::Uwvm.RosWasm.ICodec<_Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request>
    {
        public static readonly Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_RequestCodec Instance =
            new Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_RequestCodec();

        private Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "uwvm_fourier_bridge/srv/GetVelocitySource_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_c11f2de346de2adac1cdf07c795d7746436851322e591a33d75c8226f75d5d4c";
        public const int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 8;

        public byte[] Encode(_Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Uwvm_fourier_bridgeSrvGetVelocitySource_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request value = ReadRos2Uwvm_fourier_bridgeSrvGetVelocitySource_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Uwvm_fourier_bridgeSrvGetVelocitySource_Request(_Codecs.Writer writer,
                                                                                 _Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        ulong part0 = value.@sequence;
        writer.Unsigned(part0, 8);
    }

    private static _Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request ReadRos2Uwvm_fourier_bridgeSrvGetVelocitySource_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request();
        value.@sequence = unchecked((ulong)reader.Unsigned(8));
        return value;
    }

    public sealed class _Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response
    {
        public uint @status = 0;
        public string @error = "";
        public int @value = 0;

        public _Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response()
        {
        }
    }

    public sealed class Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_ResponseCodec :
        global::Uwvm.RosWasm.ICodec<_Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response>
    {
        public static readonly Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_ResponseCodec Instance =
            new Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_ResponseCodec();

        private Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "uwvm_fourier_bridge/srv/GetVelocitySource_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_dedb7a6119ec7ed97a0924ff58585da8569acf3026bf0c21bbb0a43bd2094e53";
        public const int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 140;

        public byte[] Encode(_Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Uwvm_fourier_bridgeSrvGetVelocitySource_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response value = ReadRos2Uwvm_fourier_bridgeSrvGetVelocitySource_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Uwvm_fourier_bridgeSrvGetVelocitySource_Response(_Codecs.Writer writer,
                                                                                  _Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response value)
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

    private static _Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response ReadRos2Uwvm_fourier_bridgeSrvGetVelocitySource_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response();
        value.@status = unchecked((uint)reader.Unsigned(4));
        value.@error = ReadText(reader, 128);
        value.@value = unchecked((int)reader.Unsigned(4));
        return value;
    }

    public sealed class _Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request
    {
        public ulong @sequence = 0;

        public _Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request()
        {
        }
    }

    public sealed class Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_RequestCodec :
        global::Uwvm.RosWasm.ICodec<_Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request>
    {
        public static readonly Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_RequestCodec Instance =
            new Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_RequestCodec();

        private Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "uwvm_fourier_bridge/srv/GetVelocitySourceName_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_e1bc07b31243e938bd0fe61b1a8a7c788be7442ee978bdc0e0f3da128f1986d1";
        public const int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 8;

        public byte[] Encode(_Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request value = ReadRos2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request(_Codecs.Writer writer,
                                                                                     _Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        ulong part0 = value.@sequence;
        writer.Unsigned(part0, 8);
    }

    private static _Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request ReadRos2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request();
        value.@sequence = unchecked((ulong)reader.Unsigned(8));
        return value;
    }

    public sealed class _Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response
    {
        public uint @status = 0;
        public string @error = "";
        public string @value = "";

        public _Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response()
        {
        }
    }

    public sealed class Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_ResponseCodec :
        global::Uwvm.RosWasm.ICodec<_Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response>
    {
        public static readonly Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_ResponseCodec Instance =
            new Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_ResponseCodec();

        private Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "uwvm_fourier_bridge/srv/GetVelocitySourceName_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_a79939894c6e446a7ee1b4af1270aa7bb72a8d54f543e82299a869b0a317ab40";
        public const int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 268;

        public byte[] Encode(_Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response value = ReadRos2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response(_Codecs.Writer writer,
                                                                                      _Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response value)
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

    private static _Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response ReadRos2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response();
        value.@status = unchecked((uint)reader.Unsigned(4));
        value.@error = ReadText(reader, 128);
        value.@value = ReadText(reader, 128);
        return value;
    }

    public sealed class _Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request
    {
        public ulong @sequence = 0;
        public int @state = 0;

        public _Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request()
        {
        }
    }

    public sealed class Ros2Uwvm_fourier_bridgeSrvSetFsmState_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request>
    {
        public static readonly Ros2Uwvm_fourier_bridgeSrvSetFsmState_RequestCodec Instance = new Ros2Uwvm_fourier_bridgeSrvSetFsmState_RequestCodec();

        private Ros2Uwvm_fourier_bridgeSrvSetFsmState_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "uwvm_fourier_bridge/srv/SetFsmState_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_a479783bb0f94bf69a62333235049ee7692f618ae255edbefaa9cf9f110e090d";
        public const int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 12;

        public byte[] Encode(_Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Uwvm_fourier_bridgeSrvSetFsmState_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request value = ReadRos2Uwvm_fourier_bridgeSrvSetFsmState_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Uwvm_fourier_bridgeSrvSetFsmState_Request(_Codecs.Writer writer, _Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        ulong part0 = value.@sequence;
        writer.Unsigned(part0, 8);
        int part1 = value.@state;
        writer.Unsigned(unchecked((uint)part1), 4);
    }

    private static _Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request ReadRos2Uwvm_fourier_bridgeSrvSetFsmState_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request();
        value.@sequence = unchecked((ulong)reader.Unsigned(8));
        value.@state = unchecked((int)reader.Unsigned(4));
        return value;
    }

    public sealed class _Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response
    {
        public uint @status = 0;
        public string @error = "";

        public _Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response()
        {
        }
    }

    public sealed class Ros2Uwvm_fourier_bridgeSrvSetFsmState_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response>
    {
        public static readonly Ros2Uwvm_fourier_bridgeSrvSetFsmState_ResponseCodec Instance = new Ros2Uwvm_fourier_bridgeSrvSetFsmState_ResponseCodec();

        private Ros2Uwvm_fourier_bridgeSrvSetFsmState_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "uwvm_fourier_bridge/srv/SetFsmState_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_35161a47d290454d74849c87e6333379e93454fe070c21a4ad6175c5da715e70";
        public const int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 136;

        public byte[] Encode(_Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Uwvm_fourier_bridgeSrvSetFsmState_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response value = ReadRos2Uwvm_fourier_bridgeSrvSetFsmState_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Uwvm_fourier_bridgeSrvSetFsmState_Response(_Codecs.Writer writer, _Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        uint part0 = value.@status;
        writer.Unsigned(part0, 4);
        string part1 = value.@error;
        WriteText(writer, part1, 128);
    }

    private static _Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response ReadRos2Uwvm_fourier_bridgeSrvSetFsmState_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response();
        value.@status = unchecked((uint)reader.Unsigned(4));
        value.@error = ReadText(reader, 128);
        return value;
    }

    public sealed class _Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request
    {
        public ulong @sequence = 0;
        public _Ros2Uwvm_fourier_bridgeMsgGroupValues[] @position = new _Ros2Uwvm_fourier_bridgeMsgGroupValues[0];
        public _Ros2Uwvm_fourier_bridgeMsgGroupValues[] @velocity = new _Ros2Uwvm_fourier_bridgeMsgGroupValues[0];
        public _Ros2Uwvm_fourier_bridgeMsgGroupValues[] @torque = new _Ros2Uwvm_fourier_bridgeMsgGroupValues[0];

        public _Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request()
        {
        }
    }

    public sealed class Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request>
    {
        public static readonly Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_RequestCodec Instance = new Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_RequestCodec();

        private Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "uwvm_fourier_bridge/srv/SetGroupCommand_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_b0b7d59e3985faf7a7c3e186e0556059b479e624c799f20dafb973e774ae3be9";
        public const int MIN_WIRE_BYTES = 20, MAX_WIRE_BYTES = 15572;

        public byte[] Encode(_Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Uwvm_fourier_bridgeSrvSetGroupCommand_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request value = ReadRos2Uwvm_fourier_bridgeSrvSetGroupCommand_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Uwvm_fourier_bridgeSrvSetGroupCommand_Request(_Codecs.Writer writer, _Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        ulong part0 = value.@sequence;
        writer.Unsigned(part0, 8);
        _Ros2Uwvm_fourier_bridgeMsgGroupValues[] part1 = value.@position;
        if(part1 == null || part1.Length > 8)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part1.Length, 4);
        for(int index = 0; index < part1.Length; ++index)
        {
            _Ros2Uwvm_fourier_bridgeMsgGroupValues element = part1[index];
            WriteRos2Uwvm_fourier_bridgeMsgGroupValues(writer, element);
        }
        _Ros2Uwvm_fourier_bridgeMsgGroupValues[] part2 = value.@velocity;
        if(part2 == null || part2.Length > 8)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part2.Length, 4);
        for(int index = 0; index < part2.Length; ++index)
        {
            _Ros2Uwvm_fourier_bridgeMsgGroupValues element = part2[index];
            WriteRos2Uwvm_fourier_bridgeMsgGroupValues(writer, element);
        }
        _Ros2Uwvm_fourier_bridgeMsgGroupValues[] part3 = value.@torque;
        if(part3 == null || part3.Length > 8)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part3.Length, 4);
        for(int index = 0; index < part3.Length; ++index)
        {
            _Ros2Uwvm_fourier_bridgeMsgGroupValues element = part3[index];
            WriteRos2Uwvm_fourier_bridgeMsgGroupValues(writer, element);
        }
    }

    private static _Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request ReadRos2Uwvm_fourier_bridgeSrvSetGroupCommand_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request();
        value.@sequence = unchecked((ulong)reader.Unsigned(8));
        value.@position = new _Ros2Uwvm_fourier_bridgeMsgGroupValues[ReadCount(reader, 8, 8)];
        for(int index = 0; index < value.@position.Length; ++index)
            value.@position[index] = ReadRos2Uwvm_fourier_bridgeMsgGroupValues(reader);
        value.@velocity = new _Ros2Uwvm_fourier_bridgeMsgGroupValues[ReadCount(reader, 8, 8)];
        for(int index = 0; index < value.@velocity.Length; ++index)
            value.@velocity[index] = ReadRos2Uwvm_fourier_bridgeMsgGroupValues(reader);
        value.@torque = new _Ros2Uwvm_fourier_bridgeMsgGroupValues[ReadCount(reader, 8, 8)];
        for(int index = 0; index < value.@torque.Length; ++index)
            value.@torque[index] = ReadRos2Uwvm_fourier_bridgeMsgGroupValues(reader);
        return value;
    }

    public sealed class _Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response
    {
        public uint @status = 0;
        public string @error = "";

        public _Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response()
        {
        }
    }

    public sealed class Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_ResponseCodec :
        global::Uwvm.RosWasm.ICodec<_Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response>
    {
        public static readonly Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_ResponseCodec Instance = new Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_ResponseCodec();

        private Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "uwvm_fourier_bridge/srv/SetGroupCommand_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_53dc9e28bf3c95b193748d49c2796f5a936815f654863d326b6536a44077d290";
        public const int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 136;

        public byte[] Encode(_Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Uwvm_fourier_bridgeSrvSetGroupCommand_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response value = ReadRos2Uwvm_fourier_bridgeSrvSetGroupCommand_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Uwvm_fourier_bridgeSrvSetGroupCommand_Response(_Codecs.Writer writer,
                                                                                _Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        uint part0 = value.@status;
        writer.Unsigned(part0, 4);
        string part1 = value.@error;
        WriteText(writer, part1, 128);
    }

    private static _Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response ReadRos2Uwvm_fourier_bridgeSrvSetGroupCommand_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response();
        value.@status = unchecked((uint)reader.Unsigned(4));
        value.@error = ReadText(reader, 128);
        return value;
    }

    public sealed class _Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request
    {
        public ulong @sequence = 0;
        public _Ros2Uwvm_fourier_bridgeMsgGroupValues[] @kp = new _Ros2Uwvm_fourier_bridgeMsgGroupValues[0];
        public _Ros2Uwvm_fourier_bridgeMsgGroupValues[] @kd = new _Ros2Uwvm_fourier_bridgeMsgGroupValues[0];

        public _Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request()
        {
        }
    }

    public sealed class Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request>
    {
        public static readonly Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_RequestCodec Instance = new Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_RequestCodec();

        private Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "uwvm_fourier_bridge/srv/SetMotorCfgPd_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_0e5ee74f7eaed206d45a883b2fe8ddeda407edf921aa31c4f2d04462479324de";
        public const int MIN_WIRE_BYTES = 16, MAX_WIRE_BYTES = 10384;

        public byte[] Encode(_Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request value = ReadRos2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request(_Codecs.Writer writer, _Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        ulong part0 = value.@sequence;
        writer.Unsigned(part0, 8);
        _Ros2Uwvm_fourier_bridgeMsgGroupValues[] part1 = value.@kp;
        if(part1 == null || part1.Length > 8)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part1.Length, 4);
        for(int index = 0; index < part1.Length; ++index)
        {
            _Ros2Uwvm_fourier_bridgeMsgGroupValues element = part1[index];
            WriteRos2Uwvm_fourier_bridgeMsgGroupValues(writer, element);
        }
        _Ros2Uwvm_fourier_bridgeMsgGroupValues[] part2 = value.@kd;
        if(part2 == null || part2.Length > 8)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part2.Length, 4);
        for(int index = 0; index < part2.Length; ++index)
        {
            _Ros2Uwvm_fourier_bridgeMsgGroupValues element = part2[index];
            WriteRos2Uwvm_fourier_bridgeMsgGroupValues(writer, element);
        }
    }

    private static _Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request ReadRos2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request();
        value.@sequence = unchecked((ulong)reader.Unsigned(8));
        value.@kp = new _Ros2Uwvm_fourier_bridgeMsgGroupValues[ReadCount(reader, 8, 8)];
        for(int index = 0; index < value.@kp.Length; ++index)
            value.@kp[index] = ReadRos2Uwvm_fourier_bridgeMsgGroupValues(reader);
        value.@kd = new _Ros2Uwvm_fourier_bridgeMsgGroupValues[ReadCount(reader, 8, 8)];
        for(int index = 0; index < value.@kd.Length; ++index)
            value.@kd[index] = ReadRos2Uwvm_fourier_bridgeMsgGroupValues(reader);
        return value;
    }

    public sealed class _Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response
    {
        public uint @status = 0;
        public string @error = "";

        public _Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response()
        {
        }
    }

    public sealed class Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response>
    {
        public static readonly Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_ResponseCodec Instance = new Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_ResponseCodec();

        private Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "uwvm_fourier_bridge/srv/SetMotorCfgPd_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_dc86ac23016dc2d81dd5a69d3a6bcd96db09e1012f8f86e9fe4adcb38dabc804";
        public const int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 136;

        public byte[] Encode(_Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response value = ReadRos2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response(_Codecs.Writer writer, _Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        uint part0 = value.@status;
        writer.Unsigned(part0, 4);
        string part1 = value.@error;
        WriteText(writer, part1, 128);
    }

    private static _Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response ReadRos2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response();
        value.@status = unchecked((uint)reader.Unsigned(4));
        value.@error = ReadText(reader, 128);
        return value;
    }

    public sealed class _Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request
    {
        public ulong @sequence = 0;
        public double @delta_z = 0;
        public double @delta_pitch = 0;
        public double @delta_yaw = 0;

        public _Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request()
        {
        }
    }

    public sealed class Ros2Uwvm_fourier_bridgeSrvSetStandPose_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request>
    {
        public static readonly Ros2Uwvm_fourier_bridgeSrvSetStandPose_RequestCodec Instance = new Ros2Uwvm_fourier_bridgeSrvSetStandPose_RequestCodec();

        private Ros2Uwvm_fourier_bridgeSrvSetStandPose_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "uwvm_fourier_bridge/srv/SetStandPose_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_21e410d17dac9b44b02507adc3752236def8ad2bc9e251b64114a7f757577211";
        public const int MIN_WIRE_BYTES = 32, MAX_WIRE_BYTES = 32;

        public byte[] Encode(_Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Uwvm_fourier_bridgeSrvSetStandPose_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request value = ReadRos2Uwvm_fourier_bridgeSrvSetStandPose_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Uwvm_fourier_bridgeSrvSetStandPose_Request(_Codecs.Writer writer, _Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request value)
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

    private static _Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request ReadRos2Uwvm_fourier_bridgeSrvSetStandPose_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request();
        value.@sequence = unchecked((ulong)reader.Unsigned(8));
        value.@delta_z = reader.Float64();
        value.@delta_pitch = reader.Float64();
        value.@delta_yaw = reader.Float64();
        return value;
    }

    public sealed class _Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response
    {
        public uint @status = 0;
        public string @error = "";

        public _Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response()
        {
        }
    }

    public sealed class Ros2Uwvm_fourier_bridgeSrvSetStandPose_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response>
    {
        public static readonly Ros2Uwvm_fourier_bridgeSrvSetStandPose_ResponseCodec Instance = new Ros2Uwvm_fourier_bridgeSrvSetStandPose_ResponseCodec();

        private Ros2Uwvm_fourier_bridgeSrvSetStandPose_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "uwvm_fourier_bridge/srv/SetStandPose_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_9b3ea0a1868a4672f1ca95ac2cd43e31eeaa9f059c4194a2205b5df1cf09291f";
        public const int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 136;

        public byte[] Encode(_Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Uwvm_fourier_bridgeSrvSetStandPose_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response value = ReadRos2Uwvm_fourier_bridgeSrvSetStandPose_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Uwvm_fourier_bridgeSrvSetStandPose_Response(_Codecs.Writer writer, _Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        uint part0 = value.@status;
        writer.Unsigned(part0, 4);
        string part1 = value.@error;
        WriteText(writer, part1, 128);
    }

    private static _Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response ReadRos2Uwvm_fourier_bridgeSrvSetStandPose_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response();
        value.@status = unchecked((uint)reader.Unsigned(4));
        value.@error = ReadText(reader, 128);
        return value;
    }

    public sealed class _Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request
    {
        public ulong @sequence = 0;
        public int @state = 0;

        public _Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request()
        {
        }
    }

    public sealed class Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_RequestCodec :
        global::Uwvm.RosWasm.ICodec<_Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request>
    {
        public static readonly Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_RequestCodec Instance = new Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_RequestCodec();

        private Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "uwvm_fourier_bridge/srv/SetUpperFsmState_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_9742535e908c4d9640af2c7432a91e65e76f3a442c265ef9255df599227a4182";
        public const int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 12;

        public byte[] Encode(_Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request value = ReadRos2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request(_Codecs.Writer writer,
                                                                                _Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        ulong part0 = value.@sequence;
        writer.Unsigned(part0, 8);
        int part1 = value.@state;
        writer.Unsigned(unchecked((uint)part1), 4);
    }

    private static _Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request ReadRos2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request();
        value.@sequence = unchecked((ulong)reader.Unsigned(8));
        value.@state = unchecked((int)reader.Unsigned(4));
        return value;
    }

    public sealed class _Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response
    {
        public uint @status = 0;
        public string @error = "";

        public _Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response()
        {
        }
    }

    public sealed class Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_ResponseCodec :
        global::Uwvm.RosWasm.ICodec<_Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response>
    {
        public static readonly Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_ResponseCodec Instance =
            new Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_ResponseCodec();

        private Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "uwvm_fourier_bridge/srv/SetUpperFsmState_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_8247b198b8a857c16d15f248da2ac705ff2fd6b596f8c148c316025cd917c9f8";
        public const int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 136;

        public byte[] Encode(_Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response value = ReadRos2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response(_Codecs.Writer writer,
                                                                                 _Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        uint part0 = value.@status;
        writer.Unsigned(part0, 4);
        string part1 = value.@error;
        WriteText(writer, part1, 128);
    }

    private static _Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response ReadRos2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response();
        value.@status = unchecked((uint)reader.Unsigned(4));
        value.@error = ReadText(reader, 128);
        return value;
    }

    public sealed class _Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request
    {
        public ulong @sequence = 0;
        public double @vx = 0;
        public double @vy = 0;
        public double @yaw = 0;
        public double @duration = 0;

        public _Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request()
        {
        }
    }

    public sealed class Ros2Uwvm_fourier_bridgeSrvSetVelocity_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request>
    {
        public static readonly Ros2Uwvm_fourier_bridgeSrvSetVelocity_RequestCodec Instance = new Ros2Uwvm_fourier_bridgeSrvSetVelocity_RequestCodec();

        private Ros2Uwvm_fourier_bridgeSrvSetVelocity_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "uwvm_fourier_bridge/srv/SetVelocity_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_7d81116c1df184dc948db4bcba368ae3ea118f3c27418ee44bd0ceb6347cee44";
        public const int MIN_WIRE_BYTES = 40, MAX_WIRE_BYTES = 40;

        public byte[] Encode(_Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Uwvm_fourier_bridgeSrvSetVelocity_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request value = ReadRos2Uwvm_fourier_bridgeSrvSetVelocity_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Uwvm_fourier_bridgeSrvSetVelocity_Request(_Codecs.Writer writer, _Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request value)
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

    private static _Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request ReadRos2Uwvm_fourier_bridgeSrvSetVelocity_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request();
        value.@sequence = unchecked((ulong)reader.Unsigned(8));
        value.@vx = reader.Float64();
        value.@vy = reader.Float64();
        value.@yaw = reader.Float64();
        value.@duration = reader.Float64();
        return value;
    }

    public sealed class _Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response
    {
        public uint @status = 0;
        public string @error = "";

        public _Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response()
        {
        }
    }

    public sealed class Ros2Uwvm_fourier_bridgeSrvSetVelocity_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response>
    {
        public static readonly Ros2Uwvm_fourier_bridgeSrvSetVelocity_ResponseCodec Instance = new Ros2Uwvm_fourier_bridgeSrvSetVelocity_ResponseCodec();

        private Ros2Uwvm_fourier_bridgeSrvSetVelocity_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "uwvm_fourier_bridge/srv/SetVelocity_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_fa76b58061fed9672c09c5a110ebd3dc3dcdfde38da662338a48c0cf00250307";
        public const int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 136;

        public byte[] Encode(_Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Uwvm_fourier_bridgeSrvSetVelocity_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response value = ReadRos2Uwvm_fourier_bridgeSrvSetVelocity_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Uwvm_fourier_bridgeSrvSetVelocity_Response(_Codecs.Writer writer, _Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        uint part0 = value.@status;
        writer.Unsigned(part0, 4);
        string part1 = value.@error;
        WriteText(writer, part1, 128);
    }

    private static _Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response ReadRos2Uwvm_fourier_bridgeSrvSetVelocity_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response();
        value.@status = unchecked((uint)reader.Unsigned(4));
        value.@error = ReadText(reader, 128);
        return value;
    }

    public sealed class _Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request
    {
        public ulong @sequence = 0;
        public int @source = 0;

        public _Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request()
        {
        }
    }

    public sealed class Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_RequestCodec :
        global::Uwvm.RosWasm.ICodec<_Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request>
    {
        public static readonly Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_RequestCodec Instance =
            new Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_RequestCodec();

        private Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "uwvm_fourier_bridge/srv/SetVelocitySource_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_5e31cdd231ecbb30ece49edc211860b6be67c9e74839a328f37a46231e41271c";
        public const int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 12;

        public byte[] Encode(_Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Uwvm_fourier_bridgeSrvSetVelocitySource_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request value = ReadRos2Uwvm_fourier_bridgeSrvSetVelocitySource_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Uwvm_fourier_bridgeSrvSetVelocitySource_Request(_Codecs.Writer writer,
                                                                                 _Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        ulong part0 = value.@sequence;
        writer.Unsigned(part0, 8);
        int part1 = value.@source;
        writer.Unsigned(unchecked((uint)part1), 4);
    }

    private static _Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request ReadRos2Uwvm_fourier_bridgeSrvSetVelocitySource_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request();
        value.@sequence = unchecked((ulong)reader.Unsigned(8));
        value.@source = unchecked((int)reader.Unsigned(4));
        return value;
    }

    public sealed class _Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response
    {
        public uint @status = 0;
        public string @error = "";

        public _Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response()
        {
        }
    }

    public sealed class Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_ResponseCodec :
        global::Uwvm.RosWasm.ICodec<_Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response>
    {
        public static readonly Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_ResponseCodec Instance =
            new Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_ResponseCodec();

        private Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "uwvm_fourier_bridge/srv/SetVelocitySource_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_9eb723e979b56e4a2dff53e026a3cab3cd0ddd4752c85e9b3ca08332e7a0eea7";
        public const int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 136;

        public byte[] Encode(_Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Uwvm_fourier_bridgeSrvSetVelocitySource_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response value = ReadRos2Uwvm_fourier_bridgeSrvSetVelocitySource_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Uwvm_fourier_bridgeSrvSetVelocitySource_Response(_Codecs.Writer writer,
                                                                                  _Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        uint part0 = value.@status;
        writer.Unsigned(part0, 4);
        string part1 = value.@error;
        WriteText(writer, part1, 128);
    }

    private static _Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response ReadRos2Uwvm_fourier_bridgeSrvSetVelocitySource_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response();
        value.@status = unchecked((uint)reader.Unsigned(4));
        value.@error = ReadText(reader, 128);
        return value;
    }

    public sealed class _Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request
    {
        public ulong @sequence = 0;
        public string[] @groups = new string[0];
        public double @timeout_seconds = 0;
        public double @poll_seconds = 0;

        public _Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request()
        {
        }
    }

    public sealed class Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_RequestCodec :
        global::Uwvm.RosWasm.ICodec<_Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request>
    {
        public static readonly Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_RequestCodec Instance =
            new Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_RequestCodec();

        private Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "uwvm_fourier_bridge/srv/WaitGroupsMotionComplete_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_c6abe539be15088e34d76cb243ddd814fd6781baa7bf623949f1fb03651ef202";
        public const int MIN_WIRE_BYTES = 28, MAX_WIRE_BYTES = 1084;

        public byte[] Encode(_Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request value = ReadRos2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request(_Codecs.Writer writer,
                                                                                        _Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request value)
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

    private static _Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request
        ReadRos2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request();
        value.@sequence = unchecked((ulong)reader.Unsigned(8));
        value.@groups = new string[ReadCount(reader, 8, 4)];
        for(int index = 0; index < value.@groups.Length; ++index)
            value.@groups[index] = ReadText(reader, 128);
        value.@timeout_seconds = reader.Float64();
        value.@poll_seconds = reader.Float64();
        return value;
    }

    public sealed class _Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response
    {
        public uint @status = 0;
        public string @error = "";
        public bool @complete = false;

        public _Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response()
        {
        }
    }

    public sealed class Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_ResponseCodec :
        global::Uwvm.RosWasm.ICodec<_Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response>
    {
        public static readonly Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_ResponseCodec Instance =
            new Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_ResponseCodec();

        private Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "uwvm_fourier_bridge/srv/WaitGroupsMotionComplete_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_19184faa294d8dae790908044ff067851cde1074e1228a32b19320b6cc94a74f";
        public const int MIN_WIRE_BYTES = 9, MAX_WIRE_BYTES = 137;

        public byte[] Encode(_Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response value = ReadRos2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response(_Codecs.Writer writer,
                                                                                         _Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response value)
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

    private static _Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response
        ReadRos2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response();
        value.@status = unchecked((uint)reader.Unsigned(4));
        value.@error = ReadText(reader, 128);
        value.@complete = ReadBool(reader);
        return value;
    }
}
