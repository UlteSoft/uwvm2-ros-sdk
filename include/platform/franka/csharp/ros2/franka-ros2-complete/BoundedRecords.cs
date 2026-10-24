// @brief Complete original franka ros2 canonical values.
// @details UTF-8 limits count bytes and sequence limits count elements. Complete-value codecs retain
// every original field; native registration and manually granted ROS authority are separate. Caller-
// owned values and codec failures are described by each operation and the locale API reference.
// Generated complete canonical records; no native ABI, CDR or ROS grant.
#nullable enable
using System;
using _Codecs = global::Uwvm.RosWasm.Codecs;
namespace Uwvm.Franka.ros2;

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

    // @brief Own every original field of builtin_interfaces/msg/Time.
    // @details Canonical extent 8..8 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public sealed class _Ros2Builtin_interfacesMsgTime
    {
        /**
         * @brief This message communicates ROS Time defined here:
         * https://design.ros2.org/articles/clock_and_time.html The seconds component, valid over all int32
         * values.
         * @details Original builtin_interfaces/msg/Time.sec; native type int32. Scalar value. Storage belongs
         * to the complete value and acquires no ROS resource.
         */
        public int @sec = 0;
        /**
         * @brief The nanoseconds component, valid in the range [0, 1e9), to be added to the seconds component.
         * e.g. The time -1.7 seconds is represented as {sec: -2, nanosec: 3e8} The time 1.7 seconds is
         * represented as {sec: 1, nanosec: 7e8}
         * @details Original builtin_interfaces/msg/Time.nanosec; native type uint32. Scalar value. Storage
         * belongs to the complete value and acquires no ROS resource.
         */
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

    // @brief Own every original field of franka_msgs/action/ErrorRecovery_Goal.
    // @details Canonical extent 0..0 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public sealed class _Ros2Franka_msgsActionErrorRecovery_Goal
    {
        public _Ros2Franka_msgsActionErrorRecovery_Goal()
        {
        }
    }

    public sealed class Ros2Franka_msgsActionErrorRecovery_GoalCodec : global::Uwvm.RosWasm.ICodec<_Ros2Franka_msgsActionErrorRecovery_Goal>
    {
        public static readonly Ros2Franka_msgsActionErrorRecovery_GoalCodec Instance = new Ros2Franka_msgsActionErrorRecovery_GoalCodec();

        private Ros2Franka_msgsActionErrorRecovery_GoalCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "franka_msgs/action/ErrorRecovery_Goal";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_2caee3e8d5c04f12239a71f6e9a9259b818b9f1ad75103442bfc9d2343a3a070";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public byte[] Encode(_Ros2Franka_msgsActionErrorRecovery_Goal value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Franka_msgsActionErrorRecovery_Goal(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Franka_msgsActionErrorRecovery_Goal Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Franka_msgsActionErrorRecovery_Goal value = ReadRos2Franka_msgsActionErrorRecovery_Goal(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Franka_msgsActionErrorRecovery_Goal(_Codecs.Writer writer, _Ros2Franka_msgsActionErrorRecovery_Goal value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    private static _Ros2Franka_msgsActionErrorRecovery_Goal ReadRos2Franka_msgsActionErrorRecovery_Goal(_Codecs.Reader reader)
    {
        var value = new _Ros2Franka_msgsActionErrorRecovery_Goal();
        return value;
    }

    // @brief Own every original field of franka_msgs/action/ErrorRecovery_Result.
    // @details Canonical extent 0..0 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public sealed class _Ros2Franka_msgsActionErrorRecovery_Result
    {
        public _Ros2Franka_msgsActionErrorRecovery_Result()
        {
        }
    }

    public sealed class Ros2Franka_msgsActionErrorRecovery_ResultCodec : global::Uwvm.RosWasm.ICodec<_Ros2Franka_msgsActionErrorRecovery_Result>
    {
        public static readonly Ros2Franka_msgsActionErrorRecovery_ResultCodec Instance = new Ros2Franka_msgsActionErrorRecovery_ResultCodec();

        private Ros2Franka_msgsActionErrorRecovery_ResultCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "franka_msgs/action/ErrorRecovery_Result";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_9112b16c42034737b96214f23249d499ab6a9f0aee529cfec34c67cdc76809e9";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public byte[] Encode(_Ros2Franka_msgsActionErrorRecovery_Result value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Franka_msgsActionErrorRecovery_Result(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Franka_msgsActionErrorRecovery_Result Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Franka_msgsActionErrorRecovery_Result value = ReadRos2Franka_msgsActionErrorRecovery_Result(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Franka_msgsActionErrorRecovery_Result(_Codecs.Writer writer, _Ros2Franka_msgsActionErrorRecovery_Result value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    private static _Ros2Franka_msgsActionErrorRecovery_Result ReadRos2Franka_msgsActionErrorRecovery_Result(_Codecs.Reader reader)
    {
        var value = new _Ros2Franka_msgsActionErrorRecovery_Result();
        return value;
    }

    // @brief Own every original field of franka_msgs/action/ErrorRecovery_Feedback.
    // @details Canonical extent 0..0 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public sealed class _Ros2Franka_msgsActionErrorRecovery_Feedback
    {
        public _Ros2Franka_msgsActionErrorRecovery_Feedback()
        {
        }
    }

    public sealed class Ros2Franka_msgsActionErrorRecovery_FeedbackCodec : global::Uwvm.RosWasm.ICodec<_Ros2Franka_msgsActionErrorRecovery_Feedback>
    {
        public static readonly Ros2Franka_msgsActionErrorRecovery_FeedbackCodec Instance = new Ros2Franka_msgsActionErrorRecovery_FeedbackCodec();

        private Ros2Franka_msgsActionErrorRecovery_FeedbackCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "franka_msgs/action/ErrorRecovery_Feedback";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_cc817bcbe5790860e83c71e50a8c3610cf3965e34036b3099712cdcdb426127f";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public byte[] Encode(_Ros2Franka_msgsActionErrorRecovery_Feedback value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Franka_msgsActionErrorRecovery_Feedback(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Franka_msgsActionErrorRecovery_Feedback Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Franka_msgsActionErrorRecovery_Feedback value = ReadRos2Franka_msgsActionErrorRecovery_Feedback(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Franka_msgsActionErrorRecovery_Feedback(_Codecs.Writer writer, _Ros2Franka_msgsActionErrorRecovery_Feedback value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    private static _Ros2Franka_msgsActionErrorRecovery_Feedback ReadRos2Franka_msgsActionErrorRecovery_Feedback(_Codecs.Reader reader)
    {
        var value = new _Ros2Franka_msgsActionErrorRecovery_Feedback();
        return value;
    }

    // @brief Own every original field of franka_msgs/msg/GraspEpsilon.
    // @details Canonical extent 16..16 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public sealed class _Ros2Franka_msgsMsgGraspEpsilon
    {
        /**
         * @brief Maximum tolerated deviation when the actual grasped width is smaller than the commanded grasp
         * width. Unit: [m]
         * @details Original franka_msgs/msg/GraspEpsilon.inner; native type float64. Scalar value. Declared
         * original default 0.005. Finite IEEE values; no implicit unit conversion. Storage belongs to the
         * complete value and acquires no ROS resource.
         */
        public double @inner = BitConverter.Int64BitsToDouble(unchecked((long)0x3f747ae147ae147bUL));
        /**
         * @brief Maximum tolerated deviation when the actual grasped width is larger than the commanded grasp
         * width. Unit: [m]
         * @details Original franka_msgs/msg/GraspEpsilon.outer; native type float64. Scalar value. Declared
         * original default 0.005. Finite IEEE values; no implicit unit conversion. Storage belongs to the
         * complete value and acquires no ROS resource.
         */
        public double @outer = BitConverter.Int64BitsToDouble(unchecked((long)0x3f747ae147ae147bUL));

        public _Ros2Franka_msgsMsgGraspEpsilon()
        {
        }
    }

    public sealed class Ros2Franka_msgsMsgGraspEpsilonCodec : global::Uwvm.RosWasm.ICodec<_Ros2Franka_msgsMsgGraspEpsilon>
    {
        public static readonly Ros2Franka_msgsMsgGraspEpsilonCodec Instance = new Ros2Franka_msgsMsgGraspEpsilonCodec();

        private Ros2Franka_msgsMsgGraspEpsilonCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "franka_msgs/msg/GraspEpsilon";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_21787ae5929dc83b9f644f4914e22da9ddd3e4f7ad3d8c6cda6bbcdfeba20c38";
        public const int MIN_WIRE_BYTES = 16, MAX_WIRE_BYTES = 16;

        public byte[] Encode(_Ros2Franka_msgsMsgGraspEpsilon value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Franka_msgsMsgGraspEpsilon(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Franka_msgsMsgGraspEpsilon Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Franka_msgsMsgGraspEpsilon value = ReadRos2Franka_msgsMsgGraspEpsilon(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Franka_msgsMsgGraspEpsilon(_Codecs.Writer writer, _Ros2Franka_msgsMsgGraspEpsilon value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        double part0 = value.@inner;
        writer.Float64(part0);
        double part1 = value.@outer;
        writer.Float64(part1);
    }

    private static _Ros2Franka_msgsMsgGraspEpsilon ReadRos2Franka_msgsMsgGraspEpsilon(_Codecs.Reader reader)
    {
        var value = new _Ros2Franka_msgsMsgGraspEpsilon();
        value.@inner = reader.Float64();
        value.@outer = reader.Float64();
        return value;
    }

    // @brief Own every original field of franka_msgs/action/Grasp_Goal.
    // @details Canonical extent 40..40 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public sealed class _Ros2Franka_msgsActionGrasp_Goal
    {
        /**
         * @brief [m]
         * @details Original franka_msgs/action/Grasp_Goal.width; native type float64. Scalar value. Finite
         * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double @width = 0;
        /**
         * @brief Retain the complete original franka_msgs/msg/GraspEpsilon field.
         * @details Original franka_msgs/action/Grasp_Goal.epsilon; native type franka_msgs/msg/GraspEpsilon.
         * Scalar value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public _Ros2Franka_msgsMsgGraspEpsilon @epsilon = new _Ros2Franka_msgsMsgGraspEpsilon();
        /**
         * @brief [m/s]
         * @details Original franka_msgs/action/Grasp_Goal.speed; native type float64. Scalar value. Finite
         * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double @speed = 0;
        /**
         * @brief [N]
         * @details Original franka_msgs/action/Grasp_Goal.force; native type float64. Scalar value. Finite
         * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double @force = 0;

        public _Ros2Franka_msgsActionGrasp_Goal()
        {
        }
    }

    public sealed class Ros2Franka_msgsActionGrasp_GoalCodec : global::Uwvm.RosWasm.ICodec<_Ros2Franka_msgsActionGrasp_Goal>
    {
        public static readonly Ros2Franka_msgsActionGrasp_GoalCodec Instance = new Ros2Franka_msgsActionGrasp_GoalCodec();

        private Ros2Franka_msgsActionGrasp_GoalCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "franka_msgs/action/Grasp_Goal";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_b7ef701e9fd93b5da9894499234d3647ecc4cea1936f637105c172f4579b6e1f";
        public const int MIN_WIRE_BYTES = 40, MAX_WIRE_BYTES = 40;

        public byte[] Encode(_Ros2Franka_msgsActionGrasp_Goal value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Franka_msgsActionGrasp_Goal(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Franka_msgsActionGrasp_Goal Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Franka_msgsActionGrasp_Goal value = ReadRos2Franka_msgsActionGrasp_Goal(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Franka_msgsActionGrasp_Goal(_Codecs.Writer writer, _Ros2Franka_msgsActionGrasp_Goal value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        double part0 = value.@width;
        writer.Float64(part0);
        _Ros2Franka_msgsMsgGraspEpsilon part1 = value.@epsilon;
        WriteRos2Franka_msgsMsgGraspEpsilon(writer, part1);
        double part2 = value.@speed;
        writer.Float64(part2);
        double part3 = value.@force;
        writer.Float64(part3);
    }

    private static _Ros2Franka_msgsActionGrasp_Goal ReadRos2Franka_msgsActionGrasp_Goal(_Codecs.Reader reader)
    {
        var value = new _Ros2Franka_msgsActionGrasp_Goal();
        value.@width = reader.Float64();
        value.@epsilon = ReadRos2Franka_msgsMsgGraspEpsilon(reader);
        value.@speed = reader.Float64();
        value.@force = reader.Float64();
        return value;
    }

    // @brief Own every original field of franka_msgs/action/Grasp_Result.
    // @details Canonical extent 5..261 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public sealed class _Ros2Franka_msgsActionGrasp_Result
    {
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/action/Grasp_Result.success; native type bool. Scalar value. Storage
         * belongs to the complete value and acquires no ROS resource.
         */
        public bool @success = false;
        /**
         * @brief Retain the complete original string field.
         * @details Original franka_msgs/action/Grasp_Result.error; native type string. Scalar value. UTF-8
         * capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public string @error = "";

        public _Ros2Franka_msgsActionGrasp_Result()
        {
        }
    }

    public sealed class Ros2Franka_msgsActionGrasp_ResultCodec : global::Uwvm.RosWasm.ICodec<_Ros2Franka_msgsActionGrasp_Result>
    {
        public static readonly Ros2Franka_msgsActionGrasp_ResultCodec Instance = new Ros2Franka_msgsActionGrasp_ResultCodec();

        private Ros2Franka_msgsActionGrasp_ResultCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "franka_msgs/action/Grasp_Result";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_9a4c3150c0c2d5eb8ff3dad403473a9546ee37cc3086a55a628a1a85b905b733";
        public const int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 261;

        public byte[] Encode(_Ros2Franka_msgsActionGrasp_Result value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Franka_msgsActionGrasp_Result(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Franka_msgsActionGrasp_Result Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Franka_msgsActionGrasp_Result value = ReadRos2Franka_msgsActionGrasp_Result(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Franka_msgsActionGrasp_Result(_Codecs.Writer writer, _Ros2Franka_msgsActionGrasp_Result value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
        string part1 = value.@error;
        WriteText(writer, part1, 256);
    }

    private static _Ros2Franka_msgsActionGrasp_Result ReadRos2Franka_msgsActionGrasp_Result(_Codecs.Reader reader)
    {
        var value = new _Ros2Franka_msgsActionGrasp_Result();
        value.@success = ReadBool(reader);
        value.@error = ReadText(reader, 256);
        return value;
    }

    // @brief Own every original field of franka_msgs/action/Grasp_Feedback.
    // @details Canonical extent 8..8 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public sealed class _Ros2Franka_msgsActionGrasp_Feedback
    {
        /**
         * @brief [m]
         * @details Original franka_msgs/action/Grasp_Feedback.current_width; native type float64. Scalar
         * value. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
         * acquires no ROS resource.
         */
        public double @current_width = 0;

        public _Ros2Franka_msgsActionGrasp_Feedback()
        {
        }
    }

    public sealed class Ros2Franka_msgsActionGrasp_FeedbackCodec : global::Uwvm.RosWasm.ICodec<_Ros2Franka_msgsActionGrasp_Feedback>
    {
        public static readonly Ros2Franka_msgsActionGrasp_FeedbackCodec Instance = new Ros2Franka_msgsActionGrasp_FeedbackCodec();

        private Ros2Franka_msgsActionGrasp_FeedbackCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "franka_msgs/action/Grasp_Feedback";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_2e7697286c002e2d891e9c3167aa0dd1664acfc66c649fff6e8f9101c42703fe";
        public const int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 8;

        public byte[] Encode(_Ros2Franka_msgsActionGrasp_Feedback value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Franka_msgsActionGrasp_Feedback(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Franka_msgsActionGrasp_Feedback Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Franka_msgsActionGrasp_Feedback value = ReadRos2Franka_msgsActionGrasp_Feedback(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Franka_msgsActionGrasp_Feedback(_Codecs.Writer writer, _Ros2Franka_msgsActionGrasp_Feedback value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        double part0 = value.@current_width;
        writer.Float64(part0);
    }

    private static _Ros2Franka_msgsActionGrasp_Feedback ReadRos2Franka_msgsActionGrasp_Feedback(_Codecs.Reader reader)
    {
        var value = new _Ros2Franka_msgsActionGrasp_Feedback();
        value.@current_width = reader.Float64();
        return value;
    }

    // @brief Own every original field of franka_msgs/action/Homing_Goal.
    // @details Canonical extent 0..0 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public sealed class _Ros2Franka_msgsActionHoming_Goal
    {
        public _Ros2Franka_msgsActionHoming_Goal()
        {
        }
    }

    public sealed class Ros2Franka_msgsActionHoming_GoalCodec : global::Uwvm.RosWasm.ICodec<_Ros2Franka_msgsActionHoming_Goal>
    {
        public static readonly Ros2Franka_msgsActionHoming_GoalCodec Instance = new Ros2Franka_msgsActionHoming_GoalCodec();

        private Ros2Franka_msgsActionHoming_GoalCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "franka_msgs/action/Homing_Goal";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_8008426ce3fa8c8d62133704f8738201b8154b324ba07e7b6f605cd3132a885d";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public byte[] Encode(_Ros2Franka_msgsActionHoming_Goal value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Franka_msgsActionHoming_Goal(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Franka_msgsActionHoming_Goal Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Franka_msgsActionHoming_Goal value = ReadRos2Franka_msgsActionHoming_Goal(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Franka_msgsActionHoming_Goal(_Codecs.Writer writer, _Ros2Franka_msgsActionHoming_Goal value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    private static _Ros2Franka_msgsActionHoming_Goal ReadRos2Franka_msgsActionHoming_Goal(_Codecs.Reader reader)
    {
        var value = new _Ros2Franka_msgsActionHoming_Goal();
        return value;
    }

    // @brief Own every original field of franka_msgs/action/Homing_Result.
    // @details Canonical extent 5..261 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public sealed class _Ros2Franka_msgsActionHoming_Result
    {
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/action/Homing_Result.success; native type bool. Scalar value. Storage
         * belongs to the complete value and acquires no ROS resource.
         */
        public bool @success = false;
        /**
         * @brief Retain the complete original string field.
         * @details Original franka_msgs/action/Homing_Result.error; native type string. Scalar value. UTF-8
         * capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public string @error = "";

        public _Ros2Franka_msgsActionHoming_Result()
        {
        }
    }

    public sealed class Ros2Franka_msgsActionHoming_ResultCodec : global::Uwvm.RosWasm.ICodec<_Ros2Franka_msgsActionHoming_Result>
    {
        public static readonly Ros2Franka_msgsActionHoming_ResultCodec Instance = new Ros2Franka_msgsActionHoming_ResultCodec();

        private Ros2Franka_msgsActionHoming_ResultCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "franka_msgs/action/Homing_Result";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_74a9677213ffa9ba3a26b3053956350b8f75d5d1769152e5e3d4d26370bcd77c";
        public const int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 261;

        public byte[] Encode(_Ros2Franka_msgsActionHoming_Result value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Franka_msgsActionHoming_Result(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Franka_msgsActionHoming_Result Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Franka_msgsActionHoming_Result value = ReadRos2Franka_msgsActionHoming_Result(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Franka_msgsActionHoming_Result(_Codecs.Writer writer, _Ros2Franka_msgsActionHoming_Result value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
        string part1 = value.@error;
        WriteText(writer, part1, 256);
    }

    private static _Ros2Franka_msgsActionHoming_Result ReadRos2Franka_msgsActionHoming_Result(_Codecs.Reader reader)
    {
        var value = new _Ros2Franka_msgsActionHoming_Result();
        value.@success = ReadBool(reader);
        value.@error = ReadText(reader, 256);
        return value;
    }

    // @brief Own every original field of franka_msgs/action/Homing_Feedback.
    // @details Canonical extent 8..8 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public sealed class _Ros2Franka_msgsActionHoming_Feedback
    {
        /**
         * @brief [m]
         * @details Original franka_msgs/action/Homing_Feedback.current_width; native type float64. Scalar
         * value. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
         * acquires no ROS resource.
         */
        public double @current_width = 0;

        public _Ros2Franka_msgsActionHoming_Feedback()
        {
        }
    }

    public sealed class Ros2Franka_msgsActionHoming_FeedbackCodec : global::Uwvm.RosWasm.ICodec<_Ros2Franka_msgsActionHoming_Feedback>
    {
        public static readonly Ros2Franka_msgsActionHoming_FeedbackCodec Instance = new Ros2Franka_msgsActionHoming_FeedbackCodec();

        private Ros2Franka_msgsActionHoming_FeedbackCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "franka_msgs/action/Homing_Feedback";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_2260e092d369a0d2e4bf97ca2dfa78c02b6836b8167e71d63e76b5c0c40a6b46";
        public const int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 8;

        public byte[] Encode(_Ros2Franka_msgsActionHoming_Feedback value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Franka_msgsActionHoming_Feedback(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Franka_msgsActionHoming_Feedback Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Franka_msgsActionHoming_Feedback value = ReadRos2Franka_msgsActionHoming_Feedback(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Franka_msgsActionHoming_Feedback(_Codecs.Writer writer, _Ros2Franka_msgsActionHoming_Feedback value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        double part0 = value.@current_width;
        writer.Float64(part0);
    }

    private static _Ros2Franka_msgsActionHoming_Feedback ReadRos2Franka_msgsActionHoming_Feedback(_Codecs.Reader reader)
    {
        var value = new _Ros2Franka_msgsActionHoming_Feedback();
        value.@current_width = reader.Float64();
        return value;
    }

    // @brief Own every original field of franka_msgs/action/Move_Goal.
    // @details Canonical extent 16..16 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public sealed class _Ros2Franka_msgsActionMove_Goal
    {
        /**
         * @brief [m]
         * @details Original franka_msgs/action/Move_Goal.width; native type float64. Scalar value. Finite IEEE
         * values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double @width = 0;
        /**
         * @brief [m/s]
         * @details Original franka_msgs/action/Move_Goal.speed; native type float64. Scalar value. Finite IEEE
         * values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double @speed = 0;

        public _Ros2Franka_msgsActionMove_Goal()
        {
        }
    }

    public sealed class Ros2Franka_msgsActionMove_GoalCodec : global::Uwvm.RosWasm.ICodec<_Ros2Franka_msgsActionMove_Goal>
    {
        public static readonly Ros2Franka_msgsActionMove_GoalCodec Instance = new Ros2Franka_msgsActionMove_GoalCodec();

        private Ros2Franka_msgsActionMove_GoalCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "franka_msgs/action/Move_Goal";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_9f9e308ebd034344ee73b22a07d005944975c037943279504b2414bdd9ad206f";
        public const int MIN_WIRE_BYTES = 16, MAX_WIRE_BYTES = 16;

        public byte[] Encode(_Ros2Franka_msgsActionMove_Goal value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Franka_msgsActionMove_Goal(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Franka_msgsActionMove_Goal Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Franka_msgsActionMove_Goal value = ReadRos2Franka_msgsActionMove_Goal(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Franka_msgsActionMove_Goal(_Codecs.Writer writer, _Ros2Franka_msgsActionMove_Goal value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        double part0 = value.@width;
        writer.Float64(part0);
        double part1 = value.@speed;
        writer.Float64(part1);
    }

    private static _Ros2Franka_msgsActionMove_Goal ReadRos2Franka_msgsActionMove_Goal(_Codecs.Reader reader)
    {
        var value = new _Ros2Franka_msgsActionMove_Goal();
        value.@width = reader.Float64();
        value.@speed = reader.Float64();
        return value;
    }

    // @brief Own every original field of franka_msgs/action/Move_Result.
    // @details Canonical extent 5..261 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public sealed class _Ros2Franka_msgsActionMove_Result
    {
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/action/Move_Result.success; native type bool. Scalar value. Storage
         * belongs to the complete value and acquires no ROS resource.
         */
        public bool @success = false;
        /**
         * @brief Retain the complete original string field.
         * @details Original franka_msgs/action/Move_Result.error; native type string. Scalar value. UTF-8
         * capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public string @error = "";

        public _Ros2Franka_msgsActionMove_Result()
        {
        }
    }

    public sealed class Ros2Franka_msgsActionMove_ResultCodec : global::Uwvm.RosWasm.ICodec<_Ros2Franka_msgsActionMove_Result>
    {
        public static readonly Ros2Franka_msgsActionMove_ResultCodec Instance = new Ros2Franka_msgsActionMove_ResultCodec();

        private Ros2Franka_msgsActionMove_ResultCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "franka_msgs/action/Move_Result";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_66aa505c035357274c68be773e1b502c7d77f195f3dca848e818811ce95dd266";
        public const int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 261;

        public byte[] Encode(_Ros2Franka_msgsActionMove_Result value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Franka_msgsActionMove_Result(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Franka_msgsActionMove_Result Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Franka_msgsActionMove_Result value = ReadRos2Franka_msgsActionMove_Result(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Franka_msgsActionMove_Result(_Codecs.Writer writer, _Ros2Franka_msgsActionMove_Result value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
        string part1 = value.@error;
        WriteText(writer, part1, 256);
    }

    private static _Ros2Franka_msgsActionMove_Result ReadRos2Franka_msgsActionMove_Result(_Codecs.Reader reader)
    {
        var value = new _Ros2Franka_msgsActionMove_Result();
        value.@success = ReadBool(reader);
        value.@error = ReadText(reader, 256);
        return value;
    }

    // @brief Own every original field of franka_msgs/action/Move_Feedback.
    // @details Canonical extent 8..8 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public sealed class _Ros2Franka_msgsActionMove_Feedback
    {
        /**
         * @brief [m]
         * @details Original franka_msgs/action/Move_Feedback.current_width; native type float64. Scalar value.
         * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
         * no ROS resource.
         */
        public double @current_width = 0;

        public _Ros2Franka_msgsActionMove_Feedback()
        {
        }
    }

    public sealed class Ros2Franka_msgsActionMove_FeedbackCodec : global::Uwvm.RosWasm.ICodec<_Ros2Franka_msgsActionMove_Feedback>
    {
        public static readonly Ros2Franka_msgsActionMove_FeedbackCodec Instance = new Ros2Franka_msgsActionMove_FeedbackCodec();

        private Ros2Franka_msgsActionMove_FeedbackCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "franka_msgs/action/Move_Feedback";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_18d0e658f109492380c135e787adbdcc026b051e9a547fcea70453bbd9750596";
        public const int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 8;

        public byte[] Encode(_Ros2Franka_msgsActionMove_Feedback value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Franka_msgsActionMove_Feedback(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Franka_msgsActionMove_Feedback Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Franka_msgsActionMove_Feedback value = ReadRos2Franka_msgsActionMove_Feedback(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Franka_msgsActionMove_Feedback(_Codecs.Writer writer, _Ros2Franka_msgsActionMove_Feedback value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        double part0 = value.@current_width;
        writer.Float64(part0);
    }

    private static _Ros2Franka_msgsActionMove_Feedback ReadRos2Franka_msgsActionMove_Feedback(_Codecs.Reader reader)
    {
        var value = new _Ros2Franka_msgsActionMove_Feedback();
        value.@current_width = reader.Float64();
        return value;
    }

    // @brief Own every original field of franka_msgs/action/PTPMotion_Goal.
    // @details Canonical extent 16..128 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public sealed class _Ros2Franka_msgsActionPTPMotion_Goal
    {
        /**
         * @brief ## This defines a PTPMotion action for controlling a Franka robot using point-to-point motion
         * commands. The goal_joint_configuration specifies the desired joint angles. [rad]
         * @details Original franka_msgs/action/PTPMotion_Goal.goal_joint_configuration; native type float64.
         * At most 7 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete
         * value and acquires no ROS resource.
         */
        public double[] @goal_joint_configuration = new double[0];
        /**
         * @brief The maximum allowed joint velocities for the motion. [rad/s]
         * @details Original franka_msgs/action/PTPMotion_Goal.maximum_joint_velocities; native type float64.
         * At most 7 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete
         * value and acquires no ROS resource.
         */
        public double[] @maximum_joint_velocities = new double[0];
        /**
         * @brief The acceptable goal tolerance for the motion. The 'target reached condition is met when - the
         * absolute difference between the current and goal joint positions is within this goal_tolerance - the
         * joint velocities are below a small threshold [rad]
         * @details Original franka_msgs/action/PTPMotion_Goal.goal_tolerance; native type float64. Scalar
         * value. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
         * acquires no ROS resource.
         */
        public double @goal_tolerance = 0;

        public _Ros2Franka_msgsActionPTPMotion_Goal()
        {
        }
    }

    public sealed class Ros2Franka_msgsActionPTPMotion_GoalCodec : global::Uwvm.RosWasm.ICodec<_Ros2Franka_msgsActionPTPMotion_Goal>
    {
        public static readonly Ros2Franka_msgsActionPTPMotion_GoalCodec Instance = new Ros2Franka_msgsActionPTPMotion_GoalCodec();

        private Ros2Franka_msgsActionPTPMotion_GoalCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "franka_msgs/action/PTPMotion_Goal";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_7e1b02257a7be37e7bccd0870ebced1e1560e7250eaeaa4547836e721f2ea2cc";
        public const int MIN_WIRE_BYTES = 16, MAX_WIRE_BYTES = 128;

        public byte[] Encode(_Ros2Franka_msgsActionPTPMotion_Goal value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Franka_msgsActionPTPMotion_Goal(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Franka_msgsActionPTPMotion_Goal Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Franka_msgsActionPTPMotion_Goal value = ReadRos2Franka_msgsActionPTPMotion_Goal(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Franka_msgsActionPTPMotion_Goal(_Codecs.Writer writer, _Ros2Franka_msgsActionPTPMotion_Goal value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        double[] part0 = value.@goal_joint_configuration;
        if(part0 == null || part0.Length > 7)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part0.Length, 4);
        for(int index = 0; index < part0.Length; ++index)
        {
            double element = part0[index];
            writer.Float64(element);
        }
        double[] part1 = value.@maximum_joint_velocities;
        if(part1 == null || part1.Length > 7)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part1.Length, 4);
        for(int index = 0; index < part1.Length; ++index)
        {
            double element = part1[index];
            writer.Float64(element);
        }
        double part2 = value.@goal_tolerance;
        writer.Float64(part2);
    }

    private static _Ros2Franka_msgsActionPTPMotion_Goal ReadRos2Franka_msgsActionPTPMotion_Goal(_Codecs.Reader reader)
    {
        var value = new _Ros2Franka_msgsActionPTPMotion_Goal();
        value.@goal_joint_configuration = new double[ReadCount(reader, 7, 8)];
        for(int index = 0; index < value.@goal_joint_configuration.Length; ++index)
            value.@goal_joint_configuration[index] = reader.Float64();
        value.@maximum_joint_velocities = new double[ReadCount(reader, 7, 8)];
        for(int index = 0; index < value.@maximum_joint_velocities.Length; ++index)
            value.@maximum_joint_velocities[index] = reader.Float64();
        value.@goal_tolerance = reader.Float64();
        return value;
    }

    // @brief Own every original field of franka_msgs/msg/TargetStatus.
    // @details Canonical extent 1..1 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public sealed class _Ros2Franka_msgsMsgTargetStatus
    {
        /**
         * @brief # The current status of the motion (one of the above states)
         * @details Original franka_msgs/msg/TargetStatus.status; native type uint8. Scalar value. Storage
         * belongs to the complete value and acquires no ROS resource.
         */
        public byte @status = 0;

        public _Ros2Franka_msgsMsgTargetStatus()
        {
        }
    }

    public sealed class Ros2Franka_msgsMsgTargetStatusCodec : global::Uwvm.RosWasm.ICodec<_Ros2Franka_msgsMsgTargetStatus>
    {
        public static readonly Ros2Franka_msgsMsgTargetStatusCodec Instance = new Ros2Franka_msgsMsgTargetStatusCodec();

        private Ros2Franka_msgsMsgTargetStatusCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "franka_msgs/msg/TargetStatus";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_df49eedc13cd8be2055361d8640c519bfa018ed2a421aa2b59b35c8828eac585";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros2Franka_msgsMsgTargetStatus value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Franka_msgsMsgTargetStatus(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Franka_msgsMsgTargetStatus Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Franka_msgsMsgTargetStatus value = ReadRos2Franka_msgsMsgTargetStatus(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Franka_msgsMsgTargetStatus(_Codecs.Writer writer, _Ros2Franka_msgsMsgTargetStatus value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        byte part0 = value.@status;
        writer.Unsigned(part0, 1);
    }

    private static _Ros2Franka_msgsMsgTargetStatus ReadRos2Franka_msgsMsgTargetStatus(_Codecs.Reader reader)
    {
        var value = new _Ros2Franka_msgsMsgTargetStatus();
        value.@status = unchecked((byte)reader.Unsigned(1));
        return value;
    }

    // @brief Own every original field of franka_msgs/action/PTPMotion_Result.
    // @details Canonical extent 5..261 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public sealed class _Ros2Franka_msgsActionPTPMotion_Result
    {
        /**
         * @brief Result of the point-to-point motion action
         * @details Original franka_msgs/action/PTPMotion_Result.target_status; native type
         * franka_msgs/msg/TargetStatus. Scalar value. Storage belongs to the complete value and acquires no
         * ROS resource.
         */
        public _Ros2Franka_msgsMsgTargetStatus @target_status = new _Ros2Franka_msgsMsgTargetStatus();
        /**
         * @brief In case of failure, an error message describing the issue
         * @details Original franka_msgs/action/PTPMotion_Result.error_message; native type string. Scalar
         * value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires
         * no ROS resource.
         */
        public string @error_message = "";

        public _Ros2Franka_msgsActionPTPMotion_Result()
        {
        }
    }

    public sealed class Ros2Franka_msgsActionPTPMotion_ResultCodec : global::Uwvm.RosWasm.ICodec<_Ros2Franka_msgsActionPTPMotion_Result>
    {
        public static readonly Ros2Franka_msgsActionPTPMotion_ResultCodec Instance = new Ros2Franka_msgsActionPTPMotion_ResultCodec();

        private Ros2Franka_msgsActionPTPMotion_ResultCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "franka_msgs/action/PTPMotion_Result";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_b61fabf13a3d8d910a35a5145e87b4dd80180b0678ef5580784f461e850fa4c1";
        public const int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 261;

        public byte[] Encode(_Ros2Franka_msgsActionPTPMotion_Result value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Franka_msgsActionPTPMotion_Result(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Franka_msgsActionPTPMotion_Result Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Franka_msgsActionPTPMotion_Result value = ReadRos2Franka_msgsActionPTPMotion_Result(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Franka_msgsActionPTPMotion_Result(_Codecs.Writer writer, _Ros2Franka_msgsActionPTPMotion_Result value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Franka_msgsMsgTargetStatus part0 = value.@target_status;
        WriteRos2Franka_msgsMsgTargetStatus(writer, part0);
        string part1 = value.@error_message;
        WriteText(writer, part1, 256);
    }

    private static _Ros2Franka_msgsActionPTPMotion_Result ReadRos2Franka_msgsActionPTPMotion_Result(_Codecs.Reader reader)
    {
        var value = new _Ros2Franka_msgsActionPTPMotion_Result();
        value.@target_status = ReadRos2Franka_msgsMsgTargetStatus(reader);
        value.@error_message = ReadText(reader, 256);
        return value;
    }

    // @brief Own every original field of franka_msgs/action/PTPMotion_Feedback.
    // @details Canonical extent 1..1 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public sealed class _Ros2Franka_msgsActionPTPMotion_Feedback
    {
        /**
         * @brief Feedback during the execution of the point-to-point motion
         * @details Original franka_msgs/action/PTPMotion_Feedback.target_status; native type
         * franka_msgs/msg/TargetStatus. Scalar value. Storage belongs to the complete value and acquires no
         * ROS resource.
         */
        public _Ros2Franka_msgsMsgTargetStatus @target_status = new _Ros2Franka_msgsMsgTargetStatus();

        public _Ros2Franka_msgsActionPTPMotion_Feedback()
        {
        }
    }

    public sealed class Ros2Franka_msgsActionPTPMotion_FeedbackCodec : global::Uwvm.RosWasm.ICodec<_Ros2Franka_msgsActionPTPMotion_Feedback>
    {
        public static readonly Ros2Franka_msgsActionPTPMotion_FeedbackCodec Instance = new Ros2Franka_msgsActionPTPMotion_FeedbackCodec();

        private Ros2Franka_msgsActionPTPMotion_FeedbackCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "franka_msgs/action/PTPMotion_Feedback";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_c4dcfeb668595ebc341d76b5cbc606c1ae4c38b28a1b329f8436e61f506a0300";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros2Franka_msgsActionPTPMotion_Feedback value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Franka_msgsActionPTPMotion_Feedback(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Franka_msgsActionPTPMotion_Feedback Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Franka_msgsActionPTPMotion_Feedback value = ReadRos2Franka_msgsActionPTPMotion_Feedback(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Franka_msgsActionPTPMotion_Feedback(_Codecs.Writer writer, _Ros2Franka_msgsActionPTPMotion_Feedback value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Franka_msgsMsgTargetStatus part0 = value.@target_status;
        WriteRos2Franka_msgsMsgTargetStatus(writer, part0);
    }

    private static _Ros2Franka_msgsActionPTPMotion_Feedback ReadRos2Franka_msgsActionPTPMotion_Feedback(_Codecs.Reader reader)
    {
        var value = new _Ros2Franka_msgsActionPTPMotion_Feedback();
        value.@target_status = ReadRos2Franka_msgsMsgTargetStatus(reader);
        return value;
    }

    // @brief Own every original field of geometry_msgs/msg/Vector3.
    // @details Canonical extent 24..24 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public sealed class _Ros2Geometry_msgsMsgVector3
    {
        /**
         * @brief This represents a vector in free space. This is semantically different than a point. A vector
         * is always anchored at the origin. When a transform is applied to a vector, only the rotational
         * component is applied.
         * @details Original geometry_msgs/msg/Vector3.x; native type float64. Scalar value. Finite IEEE
         * values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double @x = 0;
        /**
         * @brief Retain the complete original float64 field.
         * @details Original geometry_msgs/msg/Vector3.y; native type float64. Scalar value. Finite IEEE
         * values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double @y = 0;
        /**
         * @brief Retain the complete original float64 field.
         * @details Original geometry_msgs/msg/Vector3.z; native type float64. Scalar value. Finite IEEE
         * values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
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

    // @brief Own every original field of franka_msgs/msg/CollisionIndicators.
    // @details Canonical extent 208..208 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public sealed class _Ros2Franka_msgsMsgCollisionIndicators
    {
        /**
         * @brief ## Indicates which dimensions have an active contact/collision flag raised
         * @details Original franka_msgs/msg/CollisionIndicators.is_cartesian_linear_collision; native type
         * geometry_msgs/msg/Vector3. Scalar value. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public _Ros2Geometry_msgsMsgVector3 @is_cartesian_linear_collision = new _Ros2Geometry_msgsMsgVector3();
        /**
         * @brief Retain the complete original geometry_msgs/msg/Vector3 field.
         * @details Original franka_msgs/msg/CollisionIndicators.is_cartesian_angular_collision; native type
         * geometry_msgs/msg/Vector3. Scalar value. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public _Ros2Geometry_msgsMsgVector3 @is_cartesian_angular_collision = new _Ros2Geometry_msgsMsgVector3();
        /**
         * @brief Retain the complete original geometry_msgs/msg/Vector3 field.
         * @details Original franka_msgs/msg/CollisionIndicators.is_cartesian_linear_contact; native type
         * geometry_msgs/msg/Vector3. Scalar value. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public _Ros2Geometry_msgsMsgVector3 @is_cartesian_linear_contact = new _Ros2Geometry_msgsMsgVector3();
        /**
         * @brief Retain the complete original geometry_msgs/msg/Vector3 field.
         * @details Original franka_msgs/msg/CollisionIndicators.is_cartesian_angular_contact; native type
         * geometry_msgs/msg/Vector3. Scalar value. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public _Ros2Geometry_msgsMsgVector3 @is_cartesian_angular_contact = new _Ros2Geometry_msgsMsgVector3();
        /**
         * @brief Retain the complete original float64 field.
         * @details Original franka_msgs/msg/CollisionIndicators.is_joint_collision; native type float64.
         * Exactly 7 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete
         * value and acquires no ROS resource.
         */
        public double[] @is_joint_collision = new double[7];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original franka_msgs/msg/CollisionIndicators.is_joint_contact; native type float64. Exactly
         * 7 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value
         * and acquires no ROS resource.
         */
        public double[] @is_joint_contact = new double[7];

        public _Ros2Franka_msgsMsgCollisionIndicators()
        {
        }
    }

    public sealed class Ros2Franka_msgsMsgCollisionIndicatorsCodec : global::Uwvm.RosWasm.ICodec<_Ros2Franka_msgsMsgCollisionIndicators>
    {
        public static readonly Ros2Franka_msgsMsgCollisionIndicatorsCodec Instance = new Ros2Franka_msgsMsgCollisionIndicatorsCodec();

        private Ros2Franka_msgsMsgCollisionIndicatorsCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "franka_msgs/msg/CollisionIndicators";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_2bdfb3ece01b47b07fae84a998b23c56fc9482a0518969e43304b318d4ee0ce1";
        public const int MIN_WIRE_BYTES = 208, MAX_WIRE_BYTES = 208;

        public byte[] Encode(_Ros2Franka_msgsMsgCollisionIndicators value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Franka_msgsMsgCollisionIndicators(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Franka_msgsMsgCollisionIndicators Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Franka_msgsMsgCollisionIndicators value = ReadRos2Franka_msgsMsgCollisionIndicators(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Franka_msgsMsgCollisionIndicators(_Codecs.Writer writer, _Ros2Franka_msgsMsgCollisionIndicators value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Geometry_msgsMsgVector3 part0 = value.@is_cartesian_linear_collision;
        WriteRos2Geometry_msgsMsgVector3(writer, part0);
        _Ros2Geometry_msgsMsgVector3 part1 = value.@is_cartesian_angular_collision;
        WriteRos2Geometry_msgsMsgVector3(writer, part1);
        _Ros2Geometry_msgsMsgVector3 part2 = value.@is_cartesian_linear_contact;
        WriteRos2Geometry_msgsMsgVector3(writer, part2);
        _Ros2Geometry_msgsMsgVector3 part3 = value.@is_cartesian_angular_contact;
        WriteRos2Geometry_msgsMsgVector3(writer, part3);
        double[] part4 = value.@is_joint_collision;
        if(part4 == null || part4.Length != 7)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part4.Length; ++index)
        {
            double element = part4[index];
            writer.Float64(element);
        }
        double[] part5 = value.@is_joint_contact;
        if(part5 == null || part5.Length != 7)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part5.Length; ++index)
        {
            double element = part5[index];
            writer.Float64(element);
        }
    }

    private static _Ros2Franka_msgsMsgCollisionIndicators ReadRos2Franka_msgsMsgCollisionIndicators(_Codecs.Reader reader)
    {
        var value = new _Ros2Franka_msgsMsgCollisionIndicators();
        value.@is_cartesian_linear_collision = ReadRos2Geometry_msgsMsgVector3(reader);
        value.@is_cartesian_angular_collision = ReadRos2Geometry_msgsMsgVector3(reader);
        value.@is_cartesian_linear_contact = ReadRos2Geometry_msgsMsgVector3(reader);
        value.@is_cartesian_angular_contact = ReadRos2Geometry_msgsMsgVector3(reader);
        value.@is_joint_collision = new double[7];
        for(int index = 0; index < value.@is_joint_collision.Length; ++index)
            value.@is_joint_collision[index] = reader.Float64();
        value.@is_joint_contact = new double[7];
        for(int index = 0; index < value.@is_joint_contact.Length; ++index)
            value.@is_joint_contact[index] = reader.Float64();
        return value;
    }

    // @brief Own every original field of franka_msgs/msg/Elbow.
    // @details Canonical extent 80..80 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public sealed class _Ros2Franka_msgsMsgElbow
    {
        /**
         * @brief ## The state of the elbow
         * @details Original franka_msgs/msg/Elbow.position; native type float64. Exactly 2 elements. Finite
         * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double[] @position = new double[2];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original franka_msgs/msg/Elbow.desired_position; native type float64. Exactly 2 elements.
         * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
         * no ROS resource.
         */
        public double[] @desired_position = new double[2];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original franka_msgs/msg/Elbow.commanded_position; native type float64. Exactly 2 elements.
         * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
         * no ROS resource.
         */
        public double[] @commanded_position = new double[2];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original franka_msgs/msg/Elbow.commanded_velocity; native type float64. Exactly 2 elements.
         * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
         * no ROS resource.
         */
        public double[] @commanded_velocity = new double[2];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original franka_msgs/msg/Elbow.commanded_acceleration; native type float64. Exactly 2
         * elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
         * acquires no ROS resource.
         */
        public double[] @commanded_acceleration = new double[2];

        public _Ros2Franka_msgsMsgElbow()
        {
        }
    }

    public sealed class Ros2Franka_msgsMsgElbowCodec : global::Uwvm.RosWasm.ICodec<_Ros2Franka_msgsMsgElbow>
    {
        public static readonly Ros2Franka_msgsMsgElbowCodec Instance = new Ros2Franka_msgsMsgElbowCodec();

        private Ros2Franka_msgsMsgElbowCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "franka_msgs/msg/Elbow";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_686cf2da29007046f9855ffeecac304c159245ec3da153990ab83be4ffce53b6";
        public const int MIN_WIRE_BYTES = 80, MAX_WIRE_BYTES = 80;

        public byte[] Encode(_Ros2Franka_msgsMsgElbow value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Franka_msgsMsgElbow(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Franka_msgsMsgElbow Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Franka_msgsMsgElbow value = ReadRos2Franka_msgsMsgElbow(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Franka_msgsMsgElbow(_Codecs.Writer writer, _Ros2Franka_msgsMsgElbow value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        double[] part0 = value.@position;
        if(part0 == null || part0.Length != 2)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part0.Length; ++index)
        {
            double element = part0[index];
            writer.Float64(element);
        }
        double[] part1 = value.@desired_position;
        if(part1 == null || part1.Length != 2)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part1.Length; ++index)
        {
            double element = part1[index];
            writer.Float64(element);
        }
        double[] part2 = value.@commanded_position;
        if(part2 == null || part2.Length != 2)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part2.Length; ++index)
        {
            double element = part2[index];
            writer.Float64(element);
        }
        double[] part3 = value.@commanded_velocity;
        if(part3 == null || part3.Length != 2)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part3.Length; ++index)
        {
            double element = part3[index];
            writer.Float64(element);
        }
        double[] part4 = value.@commanded_acceleration;
        if(part4 == null || part4.Length != 2)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part4.Length; ++index)
        {
            double element = part4[index];
            writer.Float64(element);
        }
    }

    private static _Ros2Franka_msgsMsgElbow ReadRos2Franka_msgsMsgElbow(_Codecs.Reader reader)
    {
        var value = new _Ros2Franka_msgsMsgElbow();
        value.@position = new double[2];
        for(int index = 0; index < value.@position.Length; ++index)
            value.@position[index] = reader.Float64();
        value.@desired_position = new double[2];
        for(int index = 0; index < value.@desired_position.Length; ++index)
            value.@desired_position[index] = reader.Float64();
        value.@commanded_position = new double[2];
        for(int index = 0; index < value.@commanded_position.Length; ++index)
            value.@commanded_position[index] = reader.Float64();
        value.@commanded_velocity = new double[2];
        for(int index = 0; index < value.@commanded_velocity.Length; ++index)
            value.@commanded_velocity[index] = reader.Float64();
        value.@commanded_acceleration = new double[2];
        for(int index = 0; index < value.@commanded_acceleration.Length; ++index)
            value.@commanded_acceleration[index] = reader.Float64();
        return value;
    }

    // @brief Own every original field of franka_msgs/msg/Errors.
    // @details Canonical extent 36..36 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public sealed class _Ros2Franka_msgsMsgErrors
    {
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/msg/Errors.joint_position_limits_violation; native type bool. Scalar
         * value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public bool @joint_position_limits_violation = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/msg/Errors.cartesian_position_limits_violation; native type bool.
         * Scalar value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public bool @cartesian_position_limits_violation = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/msg/Errors.self_collision_avoidance_violation; native type bool.
         * Scalar value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public bool @self_collision_avoidance_violation = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/msg/Errors.joint_velocity_violation; native type bool. Scalar value.
         * Storage belongs to the complete value and acquires no ROS resource.
         */
        public bool @joint_velocity_violation = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/msg/Errors.cartesian_velocity_violation; native type bool. Scalar
         * value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public bool @cartesian_velocity_violation = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/msg/Errors.force_control_safety_violation; native type bool. Scalar
         * value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public bool @force_control_safety_violation = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/msg/Errors.joint_reflex; native type bool. Scalar value. Storage
         * belongs to the complete value and acquires no ROS resource.
         */
        public bool @joint_reflex = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/msg/Errors.cartesian_reflex; native type bool. Scalar value. Storage
         * belongs to the complete value and acquires no ROS resource.
         */
        public bool @cartesian_reflex = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/msg/Errors.max_goal_pose_deviation_violation; native type bool. Scalar
         * value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public bool @max_goal_pose_deviation_violation = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/msg/Errors.max_path_pose_deviation_violation; native type bool. Scalar
         * value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public bool @max_path_pose_deviation_violation = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/msg/Errors.cartesian_velocity_profile_safety_violation; native type
         * bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public bool @cartesian_velocity_profile_safety_violation = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/msg/Errors.joint_position_motion_generator_start_pose_invalid; native
         * type bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public bool @joint_position_motion_generator_start_pose_invalid = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/msg/Errors.joint_motion_generator_position_limits_violation; native
         * type bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public bool @joint_motion_generator_position_limits_violation = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/msg/Errors.joint_motion_generator_velocity_limits_violation; native
         * type bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public bool @joint_motion_generator_velocity_limits_violation = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/msg/Errors.joint_motion_generator_velocity_discontinuity; native type
         * bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public bool @joint_motion_generator_velocity_discontinuity = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/msg/Errors.joint_motion_generator_acceleration_discontinuity; native
         * type bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public bool @joint_motion_generator_acceleration_discontinuity = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/msg/Errors.cartesian_position_motion_generator_start_pose_invalid;
         * native type bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public bool @cartesian_position_motion_generator_start_pose_invalid = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/msg/Errors.cartesian_motion_generator_elbow_limit_violation; native
         * type bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public bool @cartesian_motion_generator_elbow_limit_violation = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/msg/Errors.cartesian_motion_generator_velocity_limits_violation;
         * native type bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public bool @cartesian_motion_generator_velocity_limits_violation = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/msg/Errors.cartesian_motion_generator_velocity_discontinuity; native
         * type bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public bool @cartesian_motion_generator_velocity_discontinuity = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/msg/Errors.cartesian_motion_generator_acceleration_discontinuity;
         * native type bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public bool @cartesian_motion_generator_acceleration_discontinuity = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/msg/Errors.cartesian_motion_generator_elbow_sign_inconsistent; native
         * type bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public bool @cartesian_motion_generator_elbow_sign_inconsistent = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/msg/Errors.cartesian_motion_generator_start_elbow_invalid; native type
         * bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public bool @cartesian_motion_generator_start_elbow_invalid = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/msg/Errors.cartesian_motion_generator_joint_position_limits_violation;
         * native type bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public bool @cartesian_motion_generator_joint_position_limits_violation = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/msg/Errors.cartesian_motion_generator_joint_velocity_limits_violation;
         * native type bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public bool @cartesian_motion_generator_joint_velocity_limits_violation = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/msg/Errors.cartesian_motion_generator_joint_velocity_discontinuity;
         * native type bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public bool @cartesian_motion_generator_joint_velocity_discontinuity = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original
         * franka_msgs/msg/Errors.cartesian_motion_generator_joint_acceleration_discontinuity; native type
         * bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public bool @cartesian_motion_generator_joint_acceleration_discontinuity = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/msg/Errors.cartesian_position_motion_generator_invalid_frame; native
         * type bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public bool @cartesian_position_motion_generator_invalid_frame = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/msg/Errors.force_controller_desired_force_tolerance_violation; native
         * type bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public bool @force_controller_desired_force_tolerance_violation = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/msg/Errors.controller_torque_discontinuity; native type bool. Scalar
         * value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public bool @controller_torque_discontinuity = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/msg/Errors.start_elbow_sign_inconsistent; native type bool. Scalar
         * value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public bool @start_elbow_sign_inconsistent = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/msg/Errors.communication_constraints_violation; native type bool.
         * Scalar value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public bool @communication_constraints_violation = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/msg/Errors.power_limit_violation; native type bool. Scalar value.
         * Storage belongs to the complete value and acquires no ROS resource.
         */
        public bool @power_limit_violation = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/msg/Errors.joint_p2p_insufficient_torque_for_planning; native type
         * bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public bool @joint_p2p_insufficient_torque_for_planning = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/msg/Errors.tau_j_range_violation; native type bool. Scalar value.
         * Storage belongs to the complete value and acquires no ROS resource.
         */
        public bool @tau_j_range_violation = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/msg/Errors.instability_detected; native type bool. Scalar value.
         * Storage belongs to the complete value and acquires no ROS resource.
         */
        public bool @instability_detected = false;

        public _Ros2Franka_msgsMsgErrors()
        {
        }
    }

    public sealed class Ros2Franka_msgsMsgErrorsCodec : global::Uwvm.RosWasm.ICodec<_Ros2Franka_msgsMsgErrors>
    {
        public static readonly Ros2Franka_msgsMsgErrorsCodec Instance = new Ros2Franka_msgsMsgErrorsCodec();

        private Ros2Franka_msgsMsgErrorsCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "franka_msgs/msg/Errors";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_c7927af1abe7710bb686574ad6f2459f8425af1d6cdb3189160bb732b5a6bc8c";
        public const int MIN_WIRE_BYTES = 36, MAX_WIRE_BYTES = 36;

        public byte[] Encode(_Ros2Franka_msgsMsgErrors value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Franka_msgsMsgErrors(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Franka_msgsMsgErrors Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Franka_msgsMsgErrors value = ReadRos2Franka_msgsMsgErrors(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Franka_msgsMsgErrors(_Codecs.Writer writer, _Ros2Franka_msgsMsgErrors value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@joint_position_limits_violation;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
        bool part1 = value.@cartesian_position_limits_violation;
        writer.Unsigned(part1 ? 1UL : 0UL, 1);
        bool part2 = value.@self_collision_avoidance_violation;
        writer.Unsigned(part2 ? 1UL : 0UL, 1);
        bool part3 = value.@joint_velocity_violation;
        writer.Unsigned(part3 ? 1UL : 0UL, 1);
        bool part4 = value.@cartesian_velocity_violation;
        writer.Unsigned(part4 ? 1UL : 0UL, 1);
        bool part5 = value.@force_control_safety_violation;
        writer.Unsigned(part5 ? 1UL : 0UL, 1);
        bool part6 = value.@joint_reflex;
        writer.Unsigned(part6 ? 1UL : 0UL, 1);
        bool part7 = value.@cartesian_reflex;
        writer.Unsigned(part7 ? 1UL : 0UL, 1);
        bool part8 = value.@max_goal_pose_deviation_violation;
        writer.Unsigned(part8 ? 1UL : 0UL, 1);
        bool part9 = value.@max_path_pose_deviation_violation;
        writer.Unsigned(part9 ? 1UL : 0UL, 1);
        bool part10 = value.@cartesian_velocity_profile_safety_violation;
        writer.Unsigned(part10 ? 1UL : 0UL, 1);
        bool part11 = value.@joint_position_motion_generator_start_pose_invalid;
        writer.Unsigned(part11 ? 1UL : 0UL, 1);
        bool part12 = value.@joint_motion_generator_position_limits_violation;
        writer.Unsigned(part12 ? 1UL : 0UL, 1);
        bool part13 = value.@joint_motion_generator_velocity_limits_violation;
        writer.Unsigned(part13 ? 1UL : 0UL, 1);
        bool part14 = value.@joint_motion_generator_velocity_discontinuity;
        writer.Unsigned(part14 ? 1UL : 0UL, 1);
        bool part15 = value.@joint_motion_generator_acceleration_discontinuity;
        writer.Unsigned(part15 ? 1UL : 0UL, 1);
        bool part16 = value.@cartesian_position_motion_generator_start_pose_invalid;
        writer.Unsigned(part16 ? 1UL : 0UL, 1);
        bool part17 = value.@cartesian_motion_generator_elbow_limit_violation;
        writer.Unsigned(part17 ? 1UL : 0UL, 1);
        bool part18 = value.@cartesian_motion_generator_velocity_limits_violation;
        writer.Unsigned(part18 ? 1UL : 0UL, 1);
        bool part19 = value.@cartesian_motion_generator_velocity_discontinuity;
        writer.Unsigned(part19 ? 1UL : 0UL, 1);
        bool part20 = value.@cartesian_motion_generator_acceleration_discontinuity;
        writer.Unsigned(part20 ? 1UL : 0UL, 1);
        bool part21 = value.@cartesian_motion_generator_elbow_sign_inconsistent;
        writer.Unsigned(part21 ? 1UL : 0UL, 1);
        bool part22 = value.@cartesian_motion_generator_start_elbow_invalid;
        writer.Unsigned(part22 ? 1UL : 0UL, 1);
        bool part23 = value.@cartesian_motion_generator_joint_position_limits_violation;
        writer.Unsigned(part23 ? 1UL : 0UL, 1);
        bool part24 = value.@cartesian_motion_generator_joint_velocity_limits_violation;
        writer.Unsigned(part24 ? 1UL : 0UL, 1);
        bool part25 = value.@cartesian_motion_generator_joint_velocity_discontinuity;
        writer.Unsigned(part25 ? 1UL : 0UL, 1);
        bool part26 = value.@cartesian_motion_generator_joint_acceleration_discontinuity;
        writer.Unsigned(part26 ? 1UL : 0UL, 1);
        bool part27 = value.@cartesian_position_motion_generator_invalid_frame;
        writer.Unsigned(part27 ? 1UL : 0UL, 1);
        bool part28 = value.@force_controller_desired_force_tolerance_violation;
        writer.Unsigned(part28 ? 1UL : 0UL, 1);
        bool part29 = value.@controller_torque_discontinuity;
        writer.Unsigned(part29 ? 1UL : 0UL, 1);
        bool part30 = value.@start_elbow_sign_inconsistent;
        writer.Unsigned(part30 ? 1UL : 0UL, 1);
        bool part31 = value.@communication_constraints_violation;
        writer.Unsigned(part31 ? 1UL : 0UL, 1);
        bool part32 = value.@power_limit_violation;
        writer.Unsigned(part32 ? 1UL : 0UL, 1);
        bool part33 = value.@joint_p2p_insufficient_torque_for_planning;
        writer.Unsigned(part33 ? 1UL : 0UL, 1);
        bool part34 = value.@tau_j_range_violation;
        writer.Unsigned(part34 ? 1UL : 0UL, 1);
        bool part35 = value.@instability_detected;
        writer.Unsigned(part35 ? 1UL : 0UL, 1);
    }

    private static _Ros2Franka_msgsMsgErrors ReadRos2Franka_msgsMsgErrors(_Codecs.Reader reader)
    {
        var value = new _Ros2Franka_msgsMsgErrors();
        value.@joint_position_limits_violation = ReadBool(reader);
        value.@cartesian_position_limits_violation = ReadBool(reader);
        value.@self_collision_avoidance_violation = ReadBool(reader);
        value.@joint_velocity_violation = ReadBool(reader);
        value.@cartesian_velocity_violation = ReadBool(reader);
        value.@force_control_safety_violation = ReadBool(reader);
        value.@joint_reflex = ReadBool(reader);
        value.@cartesian_reflex = ReadBool(reader);
        value.@max_goal_pose_deviation_violation = ReadBool(reader);
        value.@max_path_pose_deviation_violation = ReadBool(reader);
        value.@cartesian_velocity_profile_safety_violation = ReadBool(reader);
        value.@joint_position_motion_generator_start_pose_invalid = ReadBool(reader);
        value.@joint_motion_generator_position_limits_violation = ReadBool(reader);
        value.@joint_motion_generator_velocity_limits_violation = ReadBool(reader);
        value.@joint_motion_generator_velocity_discontinuity = ReadBool(reader);
        value.@joint_motion_generator_acceleration_discontinuity = ReadBool(reader);
        value.@cartesian_position_motion_generator_start_pose_invalid = ReadBool(reader);
        value.@cartesian_motion_generator_elbow_limit_violation = ReadBool(reader);
        value.@cartesian_motion_generator_velocity_limits_violation = ReadBool(reader);
        value.@cartesian_motion_generator_velocity_discontinuity = ReadBool(reader);
        value.@cartesian_motion_generator_acceleration_discontinuity = ReadBool(reader);
        value.@cartesian_motion_generator_elbow_sign_inconsistent = ReadBool(reader);
        value.@cartesian_motion_generator_start_elbow_invalid = ReadBool(reader);
        value.@cartesian_motion_generator_joint_position_limits_violation = ReadBool(reader);
        value.@cartesian_motion_generator_joint_velocity_limits_violation = ReadBool(reader);
        value.@cartesian_motion_generator_joint_velocity_discontinuity = ReadBool(reader);
        value.@cartesian_motion_generator_joint_acceleration_discontinuity = ReadBool(reader);
        value.@cartesian_position_motion_generator_invalid_frame = ReadBool(reader);
        value.@force_controller_desired_force_tolerance_violation = ReadBool(reader);
        value.@controller_torque_discontinuity = ReadBool(reader);
        value.@start_elbow_sign_inconsistent = ReadBool(reader);
        value.@communication_constraints_violation = ReadBool(reader);
        value.@power_limit_violation = ReadBool(reader);
        value.@joint_p2p_insufficient_torque_for_planning = ReadBool(reader);
        value.@tau_j_range_violation = ReadBool(reader);
        value.@instability_detected = ReadBool(reader);
        return value;
    }

    // @brief Own every original field of std_msgs/msg/Header.
    // @details Canonical extent 12..140 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public sealed class _Ros2Std_msgsMsgHeader
    {
        /**
         * @brief Standard metadata for higher-level stamped data types. This is generally used to communicate
         * timestamped data in a particular coordinate frame. Two-integer timestamp that is expressed as
         * seconds and nanoseconds.
         * @details Original std_msgs/msg/Header.stamp; native type builtin_interfaces/msg/Time. Scalar value.
         * Storage belongs to the complete value and acquires no ROS resource.
         */
        public _Ros2Builtin_interfacesMsgTime @stamp = new _Ros2Builtin_interfacesMsgTime();
        /**
         * @brief Transform frame with which this data is associated.
         * @details Original std_msgs/msg/Header.frame_id; native type string. Scalar value. UTF-8 capacity 128
         * bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS resource.
         */
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

    // @brief Own every original field of sensor_msgs/msg/JointState.
    // @details Canonical extent 28..1248 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public sealed class _Ros2Sensor_msgsMsgJointState
    {
        /**
         * @brief This is a message that holds data to describe the state of a set of torque controlled joints.
         * The state of each joint (revolute or prismatic) is defined by: * the position of the joint (rad or
         * m), * the velocity of the joint (rad/s or m/s) and * the effort that is applied in the joint (Nm or
         * N).  Each joint is uniquely identified by its name The header specifies the time at which the joint
         * states were recorded. All the joint states in one message have to be recorded at the same time.
         * This message consists of a multiple arrays, one for each part of the joint state. The goal is to
         * make each of the fields optional. When e.g. your joints have no effort associated with them, you can
         * leave the effort array empty.  All arrays in this message should have the same size, or be empty.
         * This is the only way to uniquely associate the joint name with the correct states.
         * @details Original sensor_msgs/msg/JointState.header; native type std_msgs/msg/Header. Scalar value.
         * Storage belongs to the complete value and acquires no ROS resource.
         */
        public _Ros2Std_msgsMsgHeader @header = new _Ros2Std_msgsMsgHeader();
        /**
         * @brief Retain the complete original string field.
         * @details Original sensor_msgs/msg/JointState.name; native type string. At most 7 elements. UTF-8
         * capacity 128 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public string[] @name = new string[0];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original sensor_msgs/msg/JointState.position; native type float64. At most 7 elements.
         * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
         * no ROS resource.
         */
        public double[] @position = new double[0];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original sensor_msgs/msg/JointState.velocity; native type float64. At most 7 elements.
         * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
         * no ROS resource.
         */
        public double[] @velocity = new double[0];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original sensor_msgs/msg/JointState.effort; native type float64. At most 7 elements. Finite
         * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double[] @effort = new double[0];

        public _Ros2Sensor_msgsMsgJointState()
        {
        }
    }

    public sealed class Ros2Sensor_msgsMsgJointStateCodec : global::Uwvm.RosWasm.ICodec<_Ros2Sensor_msgsMsgJointState>
    {
        public static readonly Ros2Sensor_msgsMsgJointStateCodec Instance = new Ros2Sensor_msgsMsgJointStateCodec();

        private Ros2Sensor_msgsMsgJointStateCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "sensor_msgs/msg/JointState";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_912ba4261e2dfbec0e4a543ea8e5d308ef1d26877b4a7d71162a981ac64c40a3";
        public const int MIN_WIRE_BYTES = 28, MAX_WIRE_BYTES = 1248;

        public byte[] Encode(_Ros2Sensor_msgsMsgJointState value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Sensor_msgsMsgJointState(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Sensor_msgsMsgJointState Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Sensor_msgsMsgJointState value = ReadRos2Sensor_msgsMsgJointState(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Sensor_msgsMsgJointState(_Codecs.Writer writer, _Ros2Sensor_msgsMsgJointState value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Std_msgsMsgHeader part0 = value.@header;
        WriteRos2Std_msgsMsgHeader(writer, part0);
        string[] part1 = value.@name;
        if(part1 == null || part1.Length > 7)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part1.Length, 4);
        for(int index = 0; index < part1.Length; ++index)
        {
            string element = part1[index];
            WriteText(writer, element, 128);
        }
        double[] part2 = value.@position;
        if(part2 == null || part2.Length > 7)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part2.Length, 4);
        for(int index = 0; index < part2.Length; ++index)
        {
            double element = part2[index];
            writer.Float64(element);
        }
        double[] part3 = value.@velocity;
        if(part3 == null || part3.Length > 7)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part3.Length, 4);
        for(int index = 0; index < part3.Length; ++index)
        {
            double element = part3[index];
            writer.Float64(element);
        }
        double[] part4 = value.@effort;
        if(part4 == null || part4.Length > 7)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part4.Length, 4);
        for(int index = 0; index < part4.Length; ++index)
        {
            double element = part4[index];
            writer.Float64(element);
        }
        if((part1.Length != 0 && part2.Length != 0 && part1.Length != part2.Length) ||
           (part1.Length != 0 && part3.Length != 0 && part1.Length != part3.Length) ||
           (part1.Length != 0 && part4.Length != 0 && part1.Length != part4.Length) ||
           (part2.Length != 0 && part3.Length != 0 && part2.Length != part3.Length) ||
           (part2.Length != 0 && part4.Length != 0 && part2.Length != part4.Length) || (part3.Length != 0 && part4.Length != 0 && part3.Length != part4.Length))
            throw new ArgumentException("nonempty JointState arrays must have equal length");
    }

    private static _Ros2Sensor_msgsMsgJointState ReadRos2Sensor_msgsMsgJointState(_Codecs.Reader reader)
    {
        var value = new _Ros2Sensor_msgsMsgJointState();
        value.@header = ReadRos2Std_msgsMsgHeader(reader);
        value.@name = new string[ReadCount(reader, 7, 4)];
        for(int index = 0; index < value.@name.Length; ++index)
            value.@name[index] = ReadText(reader, 128);
        value.@position = new double[ReadCount(reader, 7, 8)];
        for(int index = 0; index < value.@position.Length; ++index)
            value.@position[index] = reader.Float64();
        value.@velocity = new double[ReadCount(reader, 7, 8)];
        for(int index = 0; index < value.@velocity.Length; ++index)
            value.@velocity[index] = reader.Float64();
        value.@effort = new double[ReadCount(reader, 7, 8)];
        for(int index = 0; index < value.@effort.Length; ++index)
            value.@effort[index] = reader.Float64();
        if((value.@name.Length != 0 && value.@position.Length != 0 && value.@name.Length != value.@position.Length) ||
           (value.@name.Length != 0 && value.@velocity.Length != 0 && value.@name.Length != value.@velocity.Length) ||
           (value.@name.Length != 0 && value.@effort.Length != 0 && value.@name.Length != value.@effort.Length) ||
           (value.@position.Length != 0 && value.@velocity.Length != 0 && value.@position.Length != value.@velocity.Length) ||
           (value.@position.Length != 0 && value.@effort.Length != 0 && value.@position.Length != value.@effort.Length) ||
           (value.@velocity.Length != 0 && value.@effort.Length != 0 && value.@velocity.Length != value.@effort.Length))
            throw new ArgumentException("nonempty JointState arrays must have equal length");
        return value;
    }

    // @brief Own every original field of geometry_msgs/msg/Wrench.
    // @details Canonical extent 48..48 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public sealed class _Ros2Geometry_msgsMsgWrench
    {
        /**
         * @brief This represents force in free space, separated into its linear and angular parts.
         * @details Original geometry_msgs/msg/Wrench.force; native type geometry_msgs/msg/Vector3. Scalar
         * value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public _Ros2Geometry_msgsMsgVector3 @force = new _Ros2Geometry_msgsMsgVector3();
        /**
         * @brief Retain the complete original geometry_msgs/msg/Vector3 field.
         * @details Original geometry_msgs/msg/Wrench.torque; native type geometry_msgs/msg/Vector3. Scalar
         * value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public _Ros2Geometry_msgsMsgVector3 @torque = new _Ros2Geometry_msgsMsgVector3();

        public _Ros2Geometry_msgsMsgWrench()
        {
        }
    }

    public sealed class Ros2Geometry_msgsMsgWrenchCodec : global::Uwvm.RosWasm.ICodec<_Ros2Geometry_msgsMsgWrench>
    {
        public static readonly Ros2Geometry_msgsMsgWrenchCodec Instance = new Ros2Geometry_msgsMsgWrenchCodec();

        private Ros2Geometry_msgsMsgWrenchCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "geometry_msgs/msg/Wrench";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_fdfdf2474c0129b0ce1f85972cc87fd80478ac7d2429d9de1ec58951a82a11b6";
        public const int MIN_WIRE_BYTES = 48, MAX_WIRE_BYTES = 48;

        public byte[] Encode(_Ros2Geometry_msgsMsgWrench value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Geometry_msgsMsgWrench(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Geometry_msgsMsgWrench Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Geometry_msgsMsgWrench value = ReadRos2Geometry_msgsMsgWrench(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Geometry_msgsMsgWrench(_Codecs.Writer writer, _Ros2Geometry_msgsMsgWrench value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Geometry_msgsMsgVector3 part0 = value.@force;
        WriteRos2Geometry_msgsMsgVector3(writer, part0);
        _Ros2Geometry_msgsMsgVector3 part1 = value.@torque;
        WriteRos2Geometry_msgsMsgVector3(writer, part1);
    }

    private static _Ros2Geometry_msgsMsgWrench ReadRos2Geometry_msgsMsgWrench(_Codecs.Reader reader)
    {
        var value = new _Ros2Geometry_msgsMsgWrench();
        value.@force = ReadRos2Geometry_msgsMsgVector3(reader);
        value.@torque = ReadRos2Geometry_msgsMsgVector3(reader);
        return value;
    }

    // @brief Own every original field of geometry_msgs/msg/WrenchStamped.
    // @details Canonical extent 60..188 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public sealed class _Ros2Geometry_msgsMsgWrenchStamped
    {
        /**
         * @brief A wrench with reference coordinate frame and timestamp
         * @details Original geometry_msgs/msg/WrenchStamped.header; native type std_msgs/msg/Header. Scalar
         * value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public _Ros2Std_msgsMsgHeader @header = new _Ros2Std_msgsMsgHeader();
        /**
         * @brief Retain the complete original geometry_msgs/msg/Wrench field.
         * @details Original geometry_msgs/msg/WrenchStamped.wrench; native type geometry_msgs/msg/Wrench.
         * Scalar value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public _Ros2Geometry_msgsMsgWrench @wrench = new _Ros2Geometry_msgsMsgWrench();

        public _Ros2Geometry_msgsMsgWrenchStamped()
        {
        }
    }

    public sealed class Ros2Geometry_msgsMsgWrenchStampedCodec : global::Uwvm.RosWasm.ICodec<_Ros2Geometry_msgsMsgWrenchStamped>
    {
        public static readonly Ros2Geometry_msgsMsgWrenchStampedCodec Instance = new Ros2Geometry_msgsMsgWrenchStampedCodec();

        private Ros2Geometry_msgsMsgWrenchStampedCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "geometry_msgs/msg/WrenchStamped";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_e23600874a626ba9d52f043e14ed04beb3e316d47c3bca8bd87cfeed3f5d9d66";
        public const int MIN_WIRE_BYTES = 60, MAX_WIRE_BYTES = 188;

        public byte[] Encode(_Ros2Geometry_msgsMsgWrenchStamped value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Geometry_msgsMsgWrenchStamped(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Geometry_msgsMsgWrenchStamped Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Geometry_msgsMsgWrenchStamped value = ReadRos2Geometry_msgsMsgWrenchStamped(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Geometry_msgsMsgWrenchStamped(_Codecs.Writer writer, _Ros2Geometry_msgsMsgWrenchStamped value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Std_msgsMsgHeader part0 = value.@header;
        WriteRos2Std_msgsMsgHeader(writer, part0);
        _Ros2Geometry_msgsMsgWrench part1 = value.@wrench;
        WriteRos2Geometry_msgsMsgWrench(writer, part1);
    }

    private static _Ros2Geometry_msgsMsgWrenchStamped ReadRos2Geometry_msgsMsgWrenchStamped(_Codecs.Reader reader)
    {
        var value = new _Ros2Geometry_msgsMsgWrenchStamped();
        value.@header = ReadRos2Std_msgsMsgHeader(reader);
        value.@wrench = ReadRos2Geometry_msgsMsgWrench(reader);
        return value;
    }

    // @brief Own every original field of geometry_msgs/msg/Inertia.
    // @details Canonical extent 80..80 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public sealed class _Ros2Geometry_msgsMsgInertia
    {
        /**
         * @brief Mass [kg]
         * @details Original geometry_msgs/msg/Inertia.m; native type float64. Scalar value. Finite IEEE
         * values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double @m = 0;
        /**
         * @brief Center of mass [m]
         * @details Original geometry_msgs/msg/Inertia.com; native type geometry_msgs/msg/Vector3. Scalar
         * value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public _Ros2Geometry_msgsMsgVector3 @com = new _Ros2Geometry_msgsMsgVector3();
        /**
         * @brief Inertia Tensor [kg-m^2] about the center of mass | ixx ixy ixz | I = | ixy iyy iyz | | ixz
         * iyz izz |
         * @details Original geometry_msgs/msg/Inertia.ixx; native type float64. Scalar value. Finite IEEE
         * values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double @ixx = 0;
        /**
         * @brief Retain the complete original float64 field.
         * @details Original geometry_msgs/msg/Inertia.ixy; native type float64. Scalar value. Finite IEEE
         * values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double @ixy = 0;
        /**
         * @brief Retain the complete original float64 field.
         * @details Original geometry_msgs/msg/Inertia.ixz; native type float64. Scalar value. Finite IEEE
         * values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double @ixz = 0;
        /**
         * @brief Retain the complete original float64 field.
         * @details Original geometry_msgs/msg/Inertia.iyy; native type float64. Scalar value. Finite IEEE
         * values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double @iyy = 0;
        /**
         * @brief Retain the complete original float64 field.
         * @details Original geometry_msgs/msg/Inertia.iyz; native type float64. Scalar value. Finite IEEE
         * values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double @iyz = 0;
        /**
         * @brief Retain the complete original float64 field.
         * @details Original geometry_msgs/msg/Inertia.izz; native type float64. Scalar value. Finite IEEE
         * values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double @izz = 0;

        public _Ros2Geometry_msgsMsgInertia()
        {
        }
    }

    public sealed class Ros2Geometry_msgsMsgInertiaCodec : global::Uwvm.RosWasm.ICodec<_Ros2Geometry_msgsMsgInertia>
    {
        public static readonly Ros2Geometry_msgsMsgInertiaCodec Instance = new Ros2Geometry_msgsMsgInertiaCodec();

        private Ros2Geometry_msgsMsgInertiaCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "geometry_msgs/msg/Inertia";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_4a1b7a6a2516724a9a12e5eb166a85cd73d33fc6075c8d517ff2a279fd29e12a";
        public const int MIN_WIRE_BYTES = 80, MAX_WIRE_BYTES = 80;

        public byte[] Encode(_Ros2Geometry_msgsMsgInertia value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Geometry_msgsMsgInertia(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Geometry_msgsMsgInertia Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Geometry_msgsMsgInertia value = ReadRos2Geometry_msgsMsgInertia(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Geometry_msgsMsgInertia(_Codecs.Writer writer, _Ros2Geometry_msgsMsgInertia value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        double part0 = value.@m;
        writer.Float64(part0);
        _Ros2Geometry_msgsMsgVector3 part1 = value.@com;
        WriteRos2Geometry_msgsMsgVector3(writer, part1);
        double part2 = value.@ixx;
        writer.Float64(part2);
        double part3 = value.@ixy;
        writer.Float64(part3);
        double part4 = value.@ixz;
        writer.Float64(part4);
        double part5 = value.@iyy;
        writer.Float64(part5);
        double part6 = value.@iyz;
        writer.Float64(part6);
        double part7 = value.@izz;
        writer.Float64(part7);
    }

    private static _Ros2Geometry_msgsMsgInertia ReadRos2Geometry_msgsMsgInertia(_Codecs.Reader reader)
    {
        var value = new _Ros2Geometry_msgsMsgInertia();
        value.@m = reader.Float64();
        value.@com = ReadRos2Geometry_msgsMsgVector3(reader);
        value.@ixx = reader.Float64();
        value.@ixy = reader.Float64();
        value.@ixz = reader.Float64();
        value.@iyy = reader.Float64();
        value.@iyz = reader.Float64();
        value.@izz = reader.Float64();
        return value;
    }

    // @brief Own every original field of geometry_msgs/msg/InertiaStamped.
    // @details Canonical extent 92..220 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public sealed class _Ros2Geometry_msgsMsgInertiaStamped
    {
        /**
         * @brief An Inertia with a time stamp and reference frame.
         * @details Original geometry_msgs/msg/InertiaStamped.header; native type std_msgs/msg/Header. Scalar
         * value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public _Ros2Std_msgsMsgHeader @header = new _Ros2Std_msgsMsgHeader();
        /**
         * @brief Retain the complete original geometry_msgs/msg/Inertia field.
         * @details Original geometry_msgs/msg/InertiaStamped.inertia; native type geometry_msgs/msg/Inertia.
         * Scalar value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public _Ros2Geometry_msgsMsgInertia @inertia = new _Ros2Geometry_msgsMsgInertia();

        public _Ros2Geometry_msgsMsgInertiaStamped()
        {
        }
    }

    public sealed class Ros2Geometry_msgsMsgInertiaStampedCodec : global::Uwvm.RosWasm.ICodec<_Ros2Geometry_msgsMsgInertiaStamped>
    {
        public static readonly Ros2Geometry_msgsMsgInertiaStampedCodec Instance = new Ros2Geometry_msgsMsgInertiaStampedCodec();

        private Ros2Geometry_msgsMsgInertiaStampedCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "geometry_msgs/msg/InertiaStamped";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_19b0b442c5858ff1eee20e4658ecc3a2b76fdd64c4a21a1642fae5ab38198576";
        public const int MIN_WIRE_BYTES = 92, MAX_WIRE_BYTES = 220;

        public byte[] Encode(_Ros2Geometry_msgsMsgInertiaStamped value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Geometry_msgsMsgInertiaStamped(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Geometry_msgsMsgInertiaStamped Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Geometry_msgsMsgInertiaStamped value = ReadRos2Geometry_msgsMsgInertiaStamped(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Geometry_msgsMsgInertiaStamped(_Codecs.Writer writer, _Ros2Geometry_msgsMsgInertiaStamped value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Std_msgsMsgHeader part0 = value.@header;
        WriteRos2Std_msgsMsgHeader(writer, part0);
        _Ros2Geometry_msgsMsgInertia part1 = value.@inertia;
        WriteRos2Geometry_msgsMsgInertia(writer, part1);
    }

    private static _Ros2Geometry_msgsMsgInertiaStamped ReadRos2Geometry_msgsMsgInertiaStamped(_Codecs.Reader reader)
    {
        var value = new _Ros2Geometry_msgsMsgInertiaStamped();
        value.@header = ReadRos2Std_msgsMsgHeader(reader);
        value.@inertia = ReadRos2Geometry_msgsMsgInertia(reader);
        return value;
    }

    // @brief Own every original field of geometry_msgs/msg/Point.
    // @details Canonical extent 24..24 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public sealed class _Ros2Geometry_msgsMsgPoint
    {
        /**
         * @brief This contains the position of a point in free space
         * @details Original geometry_msgs/msg/Point.x; native type float64. Scalar value. Finite IEEE values;
         * no implicit unit conversion. Storage belongs to the complete value and acquires no ROS resource.
         */
        public double @x = 0;
        /**
         * @brief Retain the complete original float64 field.
         * @details Original geometry_msgs/msg/Point.y; native type float64. Scalar value. Finite IEEE values;
         * no implicit unit conversion. Storage belongs to the complete value and acquires no ROS resource.
         */
        public double @y = 0;
        /**
         * @brief Retain the complete original float64 field.
         * @details Original geometry_msgs/msg/Point.z; native type float64. Scalar value. Finite IEEE values;
         * no implicit unit conversion. Storage belongs to the complete value and acquires no ROS resource.
         */
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

    // @brief Own every original field of geometry_msgs/msg/Quaternion.
    // @details Canonical extent 32..32 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public sealed class _Ros2Geometry_msgsMsgQuaternion
    {
        /**
         * @brief This represents an orientation in free space in quaternion form.
         * @details Original geometry_msgs/msg/Quaternion.x; native type float64. Scalar value. Declared
         * original default 0.0. Finite IEEE values; no implicit unit conversion. Storage belongs to the
         * complete value and acquires no ROS resource.
         */
        public double @x = BitConverter.Int64BitsToDouble(unchecked((long)0x0000000000000000UL));
        /**
         * @brief Retain the complete original float64 field.
         * @details Original geometry_msgs/msg/Quaternion.y; native type float64. Scalar value. Declared
         * original default 0.0. Finite IEEE values; no implicit unit conversion. Storage belongs to the
         * complete value and acquires no ROS resource.
         */
        public double @y = BitConverter.Int64BitsToDouble(unchecked((long)0x0000000000000000UL));
        /**
         * @brief Retain the complete original float64 field.
         * @details Original geometry_msgs/msg/Quaternion.z; native type float64. Scalar value. Declared
         * original default 0.0. Finite IEEE values; no implicit unit conversion. Storage belongs to the
         * complete value and acquires no ROS resource.
         */
        public double @z = BitConverter.Int64BitsToDouble(unchecked((long)0x0000000000000000UL));
        /**
         * @brief Retain the complete original float64 field.
         * @details Original geometry_msgs/msg/Quaternion.w; native type float64. Scalar value. Declared
         * original default 1.0. Finite IEEE values; no implicit unit conversion. Storage belongs to the
         * complete value and acquires no ROS resource.
         */
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

    // @brief Own every original field of geometry_msgs/msg/Pose.
    // @details Canonical extent 56..56 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public sealed class _Ros2Geometry_msgsMsgPose
    {
        /**
         * @brief A representation of pose in free space, composed of position and orientation.
         * @details Original geometry_msgs/msg/Pose.position; native type geometry_msgs/msg/Point. Scalar
         * value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public _Ros2Geometry_msgsMsgPoint @position = new _Ros2Geometry_msgsMsgPoint();
        /**
         * @brief Retain the complete original geometry_msgs/msg/Quaternion field.
         * @details Original geometry_msgs/msg/Pose.orientation; native type geometry_msgs/msg/Quaternion.
         * Scalar value. Storage belongs to the complete value and acquires no ROS resource.
         */
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

    // @brief Own every original field of geometry_msgs/msg/PoseStamped.
    // @details Canonical extent 68..196 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public sealed class _Ros2Geometry_msgsMsgPoseStamped
    {
        /**
         * @brief A Pose with reference coordinate frame and timestamp
         * @details Original geometry_msgs/msg/PoseStamped.header; native type std_msgs/msg/Header. Scalar
         * value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public _Ros2Std_msgsMsgHeader @header = new _Ros2Std_msgsMsgHeader();
        /**
         * @brief Retain the complete original geometry_msgs/msg/Pose field.
         * @details Original geometry_msgs/msg/PoseStamped.pose; native type geometry_msgs/msg/Pose. Scalar
         * value. Storage belongs to the complete value and acquires no ROS resource.
         */
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

    // @brief Own every original field of geometry_msgs/msg/Twist.
    // @details Canonical extent 48..48 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public sealed class _Ros2Geometry_msgsMsgTwist
    {
        /**
         * @brief This expresses velocity in free space broken into its linear and angular parts.
         * @details Original geometry_msgs/msg/Twist.linear; native type geometry_msgs/msg/Vector3. Scalar
         * value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public _Ros2Geometry_msgsMsgVector3 @linear = new _Ros2Geometry_msgsMsgVector3();
        /**
         * @brief Retain the complete original geometry_msgs/msg/Vector3 field.
         * @details Original geometry_msgs/msg/Twist.angular; native type geometry_msgs/msg/Vector3. Scalar
         * value. Storage belongs to the complete value and acquires no ROS resource.
         */
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

    // @brief Own every original field of geometry_msgs/msg/TwistStamped.
    // @details Canonical extent 60..188 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public sealed class _Ros2Geometry_msgsMsgTwistStamped
    {
        /**
         * @brief A twist with reference coordinate frame and timestamp
         * @details Original geometry_msgs/msg/TwistStamped.header; native type std_msgs/msg/Header. Scalar
         * value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public _Ros2Std_msgsMsgHeader @header = new _Ros2Std_msgsMsgHeader();
        /**
         * @brief Retain the complete original geometry_msgs/msg/Twist field.
         * @details Original geometry_msgs/msg/TwistStamped.twist; native type geometry_msgs/msg/Twist. Scalar
         * value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public _Ros2Geometry_msgsMsgTwist @twist = new _Ros2Geometry_msgsMsgTwist();

        public _Ros2Geometry_msgsMsgTwistStamped()
        {
        }
    }

    public sealed class Ros2Geometry_msgsMsgTwistStampedCodec : global::Uwvm.RosWasm.ICodec<_Ros2Geometry_msgsMsgTwistStamped>
    {
        public static readonly Ros2Geometry_msgsMsgTwistStampedCodec Instance = new Ros2Geometry_msgsMsgTwistStampedCodec();

        private Ros2Geometry_msgsMsgTwistStampedCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "geometry_msgs/msg/TwistStamped";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_7448b885388ff3454de1a35b8c5c895ee58b791267b435df1e4cf7c1eee0f573";
        public const int MIN_WIRE_BYTES = 60, MAX_WIRE_BYTES = 188;

        public byte[] Encode(_Ros2Geometry_msgsMsgTwistStamped value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Geometry_msgsMsgTwistStamped(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Geometry_msgsMsgTwistStamped Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Geometry_msgsMsgTwistStamped value = ReadRos2Geometry_msgsMsgTwistStamped(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Geometry_msgsMsgTwistStamped(_Codecs.Writer writer, _Ros2Geometry_msgsMsgTwistStamped value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Std_msgsMsgHeader part0 = value.@header;
        WriteRos2Std_msgsMsgHeader(writer, part0);
        _Ros2Geometry_msgsMsgTwist part1 = value.@twist;
        WriteRos2Geometry_msgsMsgTwist(writer, part1);
    }

    private static _Ros2Geometry_msgsMsgTwistStamped ReadRos2Geometry_msgsMsgTwistStamped(_Codecs.Reader reader)
    {
        var value = new _Ros2Geometry_msgsMsgTwistStamped();
        value.@header = ReadRos2Std_msgsMsgHeader(reader);
        value.@twist = ReadRos2Geometry_msgsMsgTwist(reader);
        return value;
    }

    // @brief Own every original field of geometry_msgs/msg/Accel.
    // @details Canonical extent 48..48 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public sealed class _Ros2Geometry_msgsMsgAccel
    {
        /**
         * @brief This expresses acceleration in free space broken into its linear and angular parts.
         * @details Original geometry_msgs/msg/Accel.linear; native type geometry_msgs/msg/Vector3. Scalar
         * value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public _Ros2Geometry_msgsMsgVector3 @linear = new _Ros2Geometry_msgsMsgVector3();
        /**
         * @brief Retain the complete original geometry_msgs/msg/Vector3 field.
         * @details Original geometry_msgs/msg/Accel.angular; native type geometry_msgs/msg/Vector3. Scalar
         * value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public _Ros2Geometry_msgsMsgVector3 @angular = new _Ros2Geometry_msgsMsgVector3();

        public _Ros2Geometry_msgsMsgAccel()
        {
        }
    }

    public sealed class Ros2Geometry_msgsMsgAccelCodec : global::Uwvm.RosWasm.ICodec<_Ros2Geometry_msgsMsgAccel>
    {
        public static readonly Ros2Geometry_msgsMsgAccelCodec Instance = new Ros2Geometry_msgsMsgAccelCodec();

        private Ros2Geometry_msgsMsgAccelCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "geometry_msgs/msg/Accel";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_87264cb87970315248345c43cc629bbc0c9f9b2a8c6c4bc089da81c7af552fde";
        public const int MIN_WIRE_BYTES = 48, MAX_WIRE_BYTES = 48;

        public byte[] Encode(_Ros2Geometry_msgsMsgAccel value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Geometry_msgsMsgAccel(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Geometry_msgsMsgAccel Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Geometry_msgsMsgAccel value = ReadRos2Geometry_msgsMsgAccel(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Geometry_msgsMsgAccel(_Codecs.Writer writer, _Ros2Geometry_msgsMsgAccel value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Geometry_msgsMsgVector3 part0 = value.@linear;
        WriteRos2Geometry_msgsMsgVector3(writer, part0);
        _Ros2Geometry_msgsMsgVector3 part1 = value.@angular;
        WriteRos2Geometry_msgsMsgVector3(writer, part1);
    }

    private static _Ros2Geometry_msgsMsgAccel ReadRos2Geometry_msgsMsgAccel(_Codecs.Reader reader)
    {
        var value = new _Ros2Geometry_msgsMsgAccel();
        value.@linear = ReadRos2Geometry_msgsMsgVector3(reader);
        value.@angular = ReadRos2Geometry_msgsMsgVector3(reader);
        return value;
    }

    // @brief Own every original field of geometry_msgs/msg/AccelStamped.
    // @details Canonical extent 60..188 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public sealed class _Ros2Geometry_msgsMsgAccelStamped
    {
        /**
         * @brief An accel with reference coordinate frame and timestamp
         * @details Original geometry_msgs/msg/AccelStamped.header; native type std_msgs/msg/Header. Scalar
         * value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public _Ros2Std_msgsMsgHeader @header = new _Ros2Std_msgsMsgHeader();
        /**
         * @brief Retain the complete original geometry_msgs/msg/Accel field.
         * @details Original geometry_msgs/msg/AccelStamped.accel; native type geometry_msgs/msg/Accel. Scalar
         * value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public _Ros2Geometry_msgsMsgAccel @accel = new _Ros2Geometry_msgsMsgAccel();

        public _Ros2Geometry_msgsMsgAccelStamped()
        {
        }
    }

    public sealed class Ros2Geometry_msgsMsgAccelStampedCodec : global::Uwvm.RosWasm.ICodec<_Ros2Geometry_msgsMsgAccelStamped>
    {
        public static readonly Ros2Geometry_msgsMsgAccelStampedCodec Instance = new Ros2Geometry_msgsMsgAccelStampedCodec();

        private Ros2Geometry_msgsMsgAccelStampedCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "geometry_msgs/msg/AccelStamped";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_c04d3ae310bd82f7c4c9f30c2ff185ab54989aa3adcc759c7d3eb19853819899";
        public const int MIN_WIRE_BYTES = 60, MAX_WIRE_BYTES = 188;

        public byte[] Encode(_Ros2Geometry_msgsMsgAccelStamped value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Geometry_msgsMsgAccelStamped(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Geometry_msgsMsgAccelStamped Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Geometry_msgsMsgAccelStamped value = ReadRos2Geometry_msgsMsgAccelStamped(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Geometry_msgsMsgAccelStamped(_Codecs.Writer writer, _Ros2Geometry_msgsMsgAccelStamped value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Std_msgsMsgHeader part0 = value.@header;
        WriteRos2Std_msgsMsgHeader(writer, part0);
        _Ros2Geometry_msgsMsgAccel part1 = value.@accel;
        WriteRos2Geometry_msgsMsgAccel(writer, part1);
    }

    private static _Ros2Geometry_msgsMsgAccelStamped ReadRos2Geometry_msgsMsgAccelStamped(_Codecs.Reader reader)
    {
        var value = new _Ros2Geometry_msgsMsgAccelStamped();
        value.@header = ReadRos2Std_msgsMsgHeader(reader);
        value.@accel = ReadRos2Geometry_msgsMsgAccel(reader);
        return value;
    }

    // @brief Own every original field of geometry_msgs/msg/Vector3Stamped.
    // @details Canonical extent 36..164 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public sealed class _Ros2Geometry_msgsMsgVector3Stamped
    {
        /**
         * @brief This represents a Vector3 with reference coordinate frame and timestamp Note that this
         * follows vector semantics with it always anchored at the origin, so the rotational elements of a
         * transform are the only parts applied when transforming.
         * @details Original geometry_msgs/msg/Vector3Stamped.header; native type std_msgs/msg/Header. Scalar
         * value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public _Ros2Std_msgsMsgHeader @header = new _Ros2Std_msgsMsgHeader();
        /**
         * @brief Retain the complete original geometry_msgs/msg/Vector3 field.
         * @details Original geometry_msgs/msg/Vector3Stamped.vector; native type geometry_msgs/msg/Vector3.
         * Scalar value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public _Ros2Geometry_msgsMsgVector3 @vector = new _Ros2Geometry_msgsMsgVector3();

        public _Ros2Geometry_msgsMsgVector3Stamped()
        {
        }
    }

    public sealed class Ros2Geometry_msgsMsgVector3StampedCodec : global::Uwvm.RosWasm.ICodec<_Ros2Geometry_msgsMsgVector3Stamped>
    {
        public static readonly Ros2Geometry_msgsMsgVector3StampedCodec Instance = new Ros2Geometry_msgsMsgVector3StampedCodec();

        private Ros2Geometry_msgsMsgVector3StampedCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "geometry_msgs/msg/Vector3Stamped";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_c6b67646d3fc6d29c195637ea353dafa7085b2bdb55a15a8b65009200b5ed31b";
        public const int MIN_WIRE_BYTES = 36, MAX_WIRE_BYTES = 164;

        public byte[] Encode(_Ros2Geometry_msgsMsgVector3Stamped value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Geometry_msgsMsgVector3Stamped(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Geometry_msgsMsgVector3Stamped Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Geometry_msgsMsgVector3Stamped value = ReadRos2Geometry_msgsMsgVector3Stamped(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Geometry_msgsMsgVector3Stamped(_Codecs.Writer writer, _Ros2Geometry_msgsMsgVector3Stamped value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Std_msgsMsgHeader part0 = value.@header;
        WriteRos2Std_msgsMsgHeader(writer, part0);
        _Ros2Geometry_msgsMsgVector3 part1 = value.@vector;
        WriteRos2Geometry_msgsMsgVector3(writer, part1);
    }

    private static _Ros2Geometry_msgsMsgVector3Stamped ReadRos2Geometry_msgsMsgVector3Stamped(_Codecs.Reader reader)
    {
        var value = new _Ros2Geometry_msgsMsgVector3Stamped();
        value.@header = ReadRos2Std_msgsMsgHeader(reader);
        value.@vector = ReadRos2Geometry_msgsMsgVector3(reader);
        return value;
    }

    // @brief Own every original field of franka_msgs/msg/FrankaRobotState.
    // @details Canonical extent 1961..10169 bytes. Native type identity is independent; constructing a
    // value opens no resource.
    public sealed class _Ros2Franka_msgsMsgFrankaRobotState
    {
        /**
         * @brief ## Default parts of the message
         * @details Original franka_msgs/msg/FrankaRobotState.header; native type std_msgs/msg/Header. Scalar
         * value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public _Ros2Std_msgsMsgHeader @header = new _Ros2Std_msgsMsgHeader();
        /**
         * @brief ## Indicates which dimensions have an active contact/collision flag raised
         * @details Original franka_msgs/msg/FrankaRobotState.collision_indicators; native type
         * franka_msgs/msg/CollisionIndicators. Scalar value. Storage belongs to the complete value and
         * acquires no ROS resource.
         */
        public _Ros2Franka_msgsMsgCollisionIndicators @collision_indicators = new _Ros2Franka_msgsMsgCollisionIndicators();
        /**
         * @brief ## The state of the arm in joint space The joint state consisting out of position (q),
         * velocity (dq) and effort (tau_J)
         * @details Original franka_msgs/msg/FrankaRobotState.measured_joint_state; native type
         * sensor_msgs/msg/JointState. Scalar value. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public _Ros2Sensor_msgsMsgJointState @measured_joint_state = new _Ros2Sensor_msgsMsgJointState();
        /**
         * @brief The desired joint state consisting out of position (q_d), velocity (dq_d) and effort
         * (tau_J_d)
         * @details Original franka_msgs/msg/FrankaRobotState.desired_joint_state; native type
         * sensor_msgs/msg/JointState. Scalar value. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public _Ros2Sensor_msgsMsgJointState @desired_joint_state = new _Ros2Sensor_msgsMsgJointState();
        /**
         * @brief The measured motor state of the joints consisting out of position (theta) and velocity
         * (dtheta)
         * @details Original franka_msgs/msg/FrankaRobotState.measured_joint_motor_state; native type
         * sensor_msgs/msg/JointState. Scalar value. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public _Ros2Sensor_msgsMsgJointState @measured_joint_motor_state = new _Ros2Sensor_msgsMsgJointState();
        /**
         * @brief The desired joint acceleration
         * @details Original franka_msgs/msg/FrankaRobotState.ddq_d; native type float64. Exactly 7 elements.
         * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
         * no ROS resource.
         */
        public double[] @ddq_d = new double[7];
        /**
         * @brief The derivative of the measured torque signal
         * @details Original franka_msgs/msg/FrankaRobotState.dtau_j; native type float64. Exactly 7 elements.
         * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
         * no ROS resource.
         */
        public double[] @dtau_j = new double[7];
        /**
         * @brief Filtered external torque. The JointState consists out of effort (tau_ext_hat_filtered)
         * @details Original franka_msgs/msg/FrankaRobotState.tau_ext_hat_filtered; native type
         * sensor_msgs/msg/JointState. Scalar value. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public _Ros2Sensor_msgsMsgJointState @tau_ext_hat_filtered = new _Ros2Sensor_msgsMsgJointState();
        /**
         * @brief ## The state of the elbow
         * @details Original franka_msgs/msg/FrankaRobotState.elbow; native type franka_msgs/msg/Elbow. Scalar
         * value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public _Ros2Franka_msgsMsgElbow @elbow = new _Ros2Franka_msgsMsgElbow();
        /**
         * @brief ## The active wrenches acting on the stiffness frame expressed relative to stiffness frame
         * @details Original franka_msgs/msg/FrankaRobotState.k_f_ext_hat_k; native type
         * geometry_msgs/msg/WrenchStamped. Scalar value. Storage belongs to the complete value and acquires no
         * ROS resource.
         */
        public _Ros2Geometry_msgsMsgWrenchStamped @k_f_ext_hat_k = new _Ros2Geometry_msgsMsgWrenchStamped();
        /**
         * @brief base frame
         * @details Original franka_msgs/msg/FrankaRobotState.o_f_ext_hat_k; native type
         * geometry_msgs/msg/WrenchStamped. Scalar value. Storage belongs to the complete value and acquires no
         * ROS resource.
         */
        public _Ros2Geometry_msgsMsgWrenchStamped @o_f_ext_hat_k = new _Ros2Geometry_msgsMsgWrenchStamped();
        /**
         * @brief ## The different inertias of the arm The end-effector inertia
         * @details Original franka_msgs/msg/FrankaRobotState.inertia_ee; native type
         * geometry_msgs/msg/InertiaStamped. Scalar value. Storage belongs to the complete value and acquires
         * no ROS resource.
         */
        public _Ros2Geometry_msgsMsgInertiaStamped @inertia_ee = new _Ros2Geometry_msgsMsgInertiaStamped();
        /**
         * @brief The load inertia
         * @details Original franka_msgs/msg/FrankaRobotState.inertia_load; native type
         * geometry_msgs/msg/InertiaStamped. Scalar value. Storage belongs to the complete value and acquires
         * no ROS resource.
         */
        public _Ros2Geometry_msgsMsgInertiaStamped @inertia_load = new _Ros2Geometry_msgsMsgInertiaStamped();
        /**
         * @brief The total (end-effector + load) inertia
         * @details Original franka_msgs/msg/FrankaRobotState.inertia_total; native type
         * geometry_msgs/msg/InertiaStamped. Scalar value. Storage belongs to the complete value and acquires
         * no ROS resource.
         */
        public _Ros2Geometry_msgsMsgInertiaStamped @inertia_total = new _Ros2Geometry_msgsMsgInertiaStamped();
        /**
         * @brief ## The poses describing the transformations between different frames of the arm Measured end-
         * effector pose in base frame
         * @details Original franka_msgs/msg/FrankaRobotState.o_t_ee; native type
         * geometry_msgs/msg/PoseStamped. Scalar value. Storage belongs to the complete value and acquires no
         * ROS resource.
         */
        public _Ros2Geometry_msgsMsgPoseStamped @o_t_ee = new _Ros2Geometry_msgsMsgPoseStamped();
        /**
         * @brief Last desired end-effector pose of motion generation in base frame
         * @details Original franka_msgs/msg/FrankaRobotState.o_t_ee_d; native type
         * geometry_msgs/msg/PoseStamped. Scalar value. Storage belongs to the complete value and acquires no
         * ROS resource.
         */
        public _Ros2Geometry_msgsMsgPoseStamped @o_t_ee_d = new _Ros2Geometry_msgsMsgPoseStamped();
        /**
         * @brief Last commanded end-effector pose of motion generation in base frame
         * @details Original franka_msgs/msg/FrankaRobotState.o_t_ee_c; native type
         * geometry_msgs/msg/PoseStamped. Scalar value. Storage belongs to the complete value and acquires no
         * ROS resource.
         */
        public _Ros2Geometry_msgsMsgPoseStamped @o_t_ee_c = new _Ros2Geometry_msgsMsgPoseStamped();
        /**
         * @brief Flange to end-effector frame
         * @details Original franka_msgs/msg/FrankaRobotState.f_t_ee; native type
         * geometry_msgs/msg/PoseStamped. Scalar value. Storage belongs to the complete value and acquires no
         * ROS resource.
         */
        public _Ros2Geometry_msgsMsgPoseStamped @f_t_ee = new _Ros2Geometry_msgsMsgPoseStamped();
        /**
         * @brief End-effector to stiffness frame
         * @details Original franka_msgs/msg/FrankaRobotState.ee_t_k; native type
         * geometry_msgs/msg/PoseStamped. Scalar value. Storage belongs to the complete value and acquires no
         * ROS resource.
         */
        public _Ros2Geometry_msgsMsgPoseStamped @ee_t_k = new _Ros2Geometry_msgsMsgPoseStamped();
        /**
         * @brief Desired end effector twist in base frame
         * @details Original franka_msgs/msg/FrankaRobotState.o_dp_ee_d; native type
         * geometry_msgs/msg/TwistStamped. Scalar value. Storage belongs to the complete value and acquires no
         * ROS resource.
         */
        public _Ros2Geometry_msgsMsgTwistStamped @o_dp_ee_d = new _Ros2Geometry_msgsMsgTwistStamped();
        /**
         * @brief Last commanded end effector twist in base frame
         * @details Original franka_msgs/msg/FrankaRobotState.o_dp_ee_c; native type
         * geometry_msgs/msg/TwistStamped. Scalar value. Storage belongs to the complete value and acquires no
         * ROS resource.
         */
        public _Ros2Geometry_msgsMsgTwistStamped @o_dp_ee_c = new _Ros2Geometry_msgsMsgTwistStamped();
        /**
         * @brief Last commanded end effector acceleration in base frame
         * @details Original franka_msgs/msg/FrankaRobotState.o_ddp_ee_c; native type
         * geometry_msgs/msg/AccelStamped. Scalar value. Storage belongs to the complete value and acquires no
         * ROS resource.
         */
        public _Ros2Geometry_msgsMsgAccelStamped @o_ddp_ee_c = new _Ros2Geometry_msgsMsgAccelStamped();
        /**
         * @brief ## Additional information
         * @details Original franka_msgs/msg/FrankaRobotState.time; native type float64. Scalar value. Finite
         * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double @time = 0;
        /**
         * @brief Retain the complete original float64 field.
         * @details Original franka_msgs/msg/FrankaRobotState.control_command_success_rate; native type
         * float64. Scalar value. Finite IEEE values; no implicit unit conversion. Storage belongs to the
         * complete value and acquires no ROS resource.
         */
        public double @control_command_success_rate = 0;
        /**
         * @brief Retain the complete original uint8 field.
         * @details Original franka_msgs/msg/FrankaRobotState.robot_mode; native type uint8. Scalar value.
         * Storage belongs to the complete value and acquires no ROS resource.
         */
        public byte @robot_mode = 0;
        /**
         * @brief Retain the complete original franka_msgs/msg/Errors field.
         * @details Original franka_msgs/msg/FrankaRobotState.current_errors; native type
         * franka_msgs/msg/Errors. Scalar value. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public _Ros2Franka_msgsMsgErrors @current_errors = new _Ros2Franka_msgsMsgErrors();
        /**
         * @brief Retain the complete original franka_msgs/msg/Errors field.
         * @details Original franka_msgs/msg/FrankaRobotState.last_motion_errors; native type
         * franka_msgs/msg/Errors. Scalar value. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public _Ros2Franka_msgsMsgErrors @last_motion_errors = new _Ros2Franka_msgsMsgErrors();
        /**
         * @brief ## Translational acceleration data from the joint-mounted accelerometers, expressed in the
         * "<prefix>link<i>_accelerometer_<side>" frame named in each header (joints 1 through 6, mounted on
         * links 0 through 5; no accelerometer on joint 7)
         * @details Original franka_msgs/msg/FrankaRobotState.accelerometer_top; native type
         * geometry_msgs/msg/Vector3Stamped. Exactly 6 elements. Storage belongs to the complete value and
         * acquires no ROS resource.
         */
        public _Ros2Geometry_msgsMsgVector3Stamped[] @accelerometer_top = new _Ros2Geometry_msgsMsgVector3Stamped[6];
        /**
         * @brief Retain the complete original geometry_msgs/msg/Vector3Stamped field.
         * @details Original franka_msgs/msg/FrankaRobotState.accelerometer_bottom; native type
         * geometry_msgs/msg/Vector3Stamped. Exactly 6 elements. Storage belongs to the complete value and
         * acquires no ROS resource.
         */
        public _Ros2Geometry_msgsMsgVector3Stamped[] @accelerometer_bottom = new _Ros2Geometry_msgsMsgVector3Stamped[6];

        public _Ros2Franka_msgsMsgFrankaRobotState()
        {
            for(int index = 0; index < 6; ++index)
                this.@accelerometer_top[index] = new _Ros2Geometry_msgsMsgVector3Stamped();
            for(int index = 0; index < 6; ++index)
                this.@accelerometer_bottom[index] = new _Ros2Geometry_msgsMsgVector3Stamped();
        }
    }

    public sealed class Ros2Franka_msgsMsgFrankaRobotStateCodec : global::Uwvm.RosWasm.ICodec<_Ros2Franka_msgsMsgFrankaRobotState>
    {
        public static readonly Ros2Franka_msgsMsgFrankaRobotStateCodec Instance = new Ros2Franka_msgsMsgFrankaRobotStateCodec();

        private Ros2Franka_msgsMsgFrankaRobotStateCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "franka_msgs/msg/FrankaRobotState";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_0fdc5c99a098f4c891956bb6cd81505995d5dda41a740f88ee456f48f6e07282";
        public const int MIN_WIRE_BYTES = 1961, MAX_WIRE_BYTES = 10169;

        public byte[] Encode(_Ros2Franka_msgsMsgFrankaRobotState value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Franka_msgsMsgFrankaRobotState(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Franka_msgsMsgFrankaRobotState Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Franka_msgsMsgFrankaRobotState value = ReadRos2Franka_msgsMsgFrankaRobotState(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Franka_msgsMsgFrankaRobotState(_Codecs.Writer writer, _Ros2Franka_msgsMsgFrankaRobotState value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Std_msgsMsgHeader part0 = value.@header;
        WriteRos2Std_msgsMsgHeader(writer, part0);
        _Ros2Franka_msgsMsgCollisionIndicators part1 = value.@collision_indicators;
        WriteRos2Franka_msgsMsgCollisionIndicators(writer, part1);
        _Ros2Sensor_msgsMsgJointState part2 = value.@measured_joint_state;
        WriteRos2Sensor_msgsMsgJointState(writer, part2);
        _Ros2Sensor_msgsMsgJointState part3 = value.@desired_joint_state;
        WriteRos2Sensor_msgsMsgJointState(writer, part3);
        _Ros2Sensor_msgsMsgJointState part4 = value.@measured_joint_motor_state;
        WriteRos2Sensor_msgsMsgJointState(writer, part4);
        double[] part5 = value.@ddq_d;
        if(part5 == null || part5.Length != 7)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part5.Length; ++index)
        {
            double element = part5[index];
            writer.Float64(element);
        }
        double[] part6 = value.@dtau_j;
        if(part6 == null || part6.Length != 7)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part6.Length; ++index)
        {
            double element = part6[index];
            writer.Float64(element);
        }
        _Ros2Sensor_msgsMsgJointState part7 = value.@tau_ext_hat_filtered;
        WriteRos2Sensor_msgsMsgJointState(writer, part7);
        _Ros2Franka_msgsMsgElbow part8 = value.@elbow;
        WriteRos2Franka_msgsMsgElbow(writer, part8);
        _Ros2Geometry_msgsMsgWrenchStamped part9 = value.@k_f_ext_hat_k;
        WriteRos2Geometry_msgsMsgWrenchStamped(writer, part9);
        _Ros2Geometry_msgsMsgWrenchStamped part10 = value.@o_f_ext_hat_k;
        WriteRos2Geometry_msgsMsgWrenchStamped(writer, part10);
        _Ros2Geometry_msgsMsgInertiaStamped part11 = value.@inertia_ee;
        WriteRos2Geometry_msgsMsgInertiaStamped(writer, part11);
        _Ros2Geometry_msgsMsgInertiaStamped part12 = value.@inertia_load;
        WriteRos2Geometry_msgsMsgInertiaStamped(writer, part12);
        _Ros2Geometry_msgsMsgInertiaStamped part13 = value.@inertia_total;
        WriteRos2Geometry_msgsMsgInertiaStamped(writer, part13);
        _Ros2Geometry_msgsMsgPoseStamped part14 = value.@o_t_ee;
        WriteRos2Geometry_msgsMsgPoseStamped(writer, part14);
        _Ros2Geometry_msgsMsgPoseStamped part15 = value.@o_t_ee_d;
        WriteRos2Geometry_msgsMsgPoseStamped(writer, part15);
        _Ros2Geometry_msgsMsgPoseStamped part16 = value.@o_t_ee_c;
        WriteRos2Geometry_msgsMsgPoseStamped(writer, part16);
        _Ros2Geometry_msgsMsgPoseStamped part17 = value.@f_t_ee;
        WriteRos2Geometry_msgsMsgPoseStamped(writer, part17);
        _Ros2Geometry_msgsMsgPoseStamped part18 = value.@ee_t_k;
        WriteRos2Geometry_msgsMsgPoseStamped(writer, part18);
        _Ros2Geometry_msgsMsgTwistStamped part19 = value.@o_dp_ee_d;
        WriteRos2Geometry_msgsMsgTwistStamped(writer, part19);
        _Ros2Geometry_msgsMsgTwistStamped part20 = value.@o_dp_ee_c;
        WriteRos2Geometry_msgsMsgTwistStamped(writer, part20);
        _Ros2Geometry_msgsMsgAccelStamped part21 = value.@o_ddp_ee_c;
        WriteRos2Geometry_msgsMsgAccelStamped(writer, part21);
        double part22 = value.@time;
        writer.Float64(part22);
        double part23 = value.@control_command_success_rate;
        writer.Float64(part23);
        byte part24 = value.@robot_mode;
        writer.Unsigned(part24, 1);
        _Ros2Franka_msgsMsgErrors part25 = value.@current_errors;
        WriteRos2Franka_msgsMsgErrors(writer, part25);
        _Ros2Franka_msgsMsgErrors part26 = value.@last_motion_errors;
        WriteRos2Franka_msgsMsgErrors(writer, part26);
        _Ros2Geometry_msgsMsgVector3Stamped[] part27 = value.@accelerometer_top;
        if(part27 == null || part27.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part27.Length; ++index)
        {
            _Ros2Geometry_msgsMsgVector3Stamped element = part27[index];
            WriteRos2Geometry_msgsMsgVector3Stamped(writer, element);
        }
        _Ros2Geometry_msgsMsgVector3Stamped[] part28 = value.@accelerometer_bottom;
        if(part28 == null || part28.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part28.Length; ++index)
        {
            _Ros2Geometry_msgsMsgVector3Stamped element = part28[index];
            WriteRos2Geometry_msgsMsgVector3Stamped(writer, element);
        }
    }

    private static _Ros2Franka_msgsMsgFrankaRobotState ReadRos2Franka_msgsMsgFrankaRobotState(_Codecs.Reader reader)
    {
        var value = new _Ros2Franka_msgsMsgFrankaRobotState();
        value.@header = ReadRos2Std_msgsMsgHeader(reader);
        value.@collision_indicators = ReadRos2Franka_msgsMsgCollisionIndicators(reader);
        value.@measured_joint_state = ReadRos2Sensor_msgsMsgJointState(reader);
        value.@desired_joint_state = ReadRos2Sensor_msgsMsgJointState(reader);
        value.@measured_joint_motor_state = ReadRos2Sensor_msgsMsgJointState(reader);
        value.@ddq_d = new double[7];
        for(int index = 0; index < value.@ddq_d.Length; ++index)
            value.@ddq_d[index] = reader.Float64();
        value.@dtau_j = new double[7];
        for(int index = 0; index < value.@dtau_j.Length; ++index)
            value.@dtau_j[index] = reader.Float64();
        value.@tau_ext_hat_filtered = ReadRos2Sensor_msgsMsgJointState(reader);
        value.@elbow = ReadRos2Franka_msgsMsgElbow(reader);
        value.@k_f_ext_hat_k = ReadRos2Geometry_msgsMsgWrenchStamped(reader);
        value.@o_f_ext_hat_k = ReadRos2Geometry_msgsMsgWrenchStamped(reader);
        value.@inertia_ee = ReadRos2Geometry_msgsMsgInertiaStamped(reader);
        value.@inertia_load = ReadRos2Geometry_msgsMsgInertiaStamped(reader);
        value.@inertia_total = ReadRos2Geometry_msgsMsgInertiaStamped(reader);
        value.@o_t_ee = ReadRos2Geometry_msgsMsgPoseStamped(reader);
        value.@o_t_ee_d = ReadRos2Geometry_msgsMsgPoseStamped(reader);
        value.@o_t_ee_c = ReadRos2Geometry_msgsMsgPoseStamped(reader);
        value.@f_t_ee = ReadRos2Geometry_msgsMsgPoseStamped(reader);
        value.@ee_t_k = ReadRos2Geometry_msgsMsgPoseStamped(reader);
        value.@o_dp_ee_d = ReadRos2Geometry_msgsMsgTwistStamped(reader);
        value.@o_dp_ee_c = ReadRos2Geometry_msgsMsgTwistStamped(reader);
        value.@o_ddp_ee_c = ReadRos2Geometry_msgsMsgAccelStamped(reader);
        value.@time = reader.Float64();
        value.@control_command_success_rate = reader.Float64();
        value.@robot_mode = unchecked((byte)reader.Unsigned(1));
        value.@current_errors = ReadRos2Franka_msgsMsgErrors(reader);
        value.@last_motion_errors = ReadRos2Franka_msgsMsgErrors(reader);
        value.@accelerometer_top = new _Ros2Geometry_msgsMsgVector3Stamped[6];
        for(int index = 0; index < value.@accelerometer_top.Length; ++index)
            value.@accelerometer_top[index] = ReadRos2Geometry_msgsMsgVector3Stamped(reader);
        value.@accelerometer_bottom = new _Ros2Geometry_msgsMsgVector3Stamped[6];
        for(int index = 0; index < value.@accelerometer_bottom.Length; ++index)
            value.@accelerometer_bottom[index] = ReadRos2Geometry_msgsMsgVector3Stamped(reader);
        return value;
    }

    // @brief Own every original field of franka_msgs/srv/SetCartesianStiffness_Request.
    // @details Canonical extent 48..48 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public sealed class _Ros2Franka_msgsSrvSetCartesianStiffness_Request
    {
        /**
         * @brief Cartesian stiffness represented as (x, y, z, roll, pitch, yaw). The values are used in the
         * direction of the stiffness frame.
         * @details Original franka_msgs/srv/SetCartesianStiffness_Request.cartesian_stiffness; native type
         * float64. Exactly 6 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the
         * complete value and acquires no ROS resource.
         */
        public double[] @cartesian_stiffness = new double[6];

        public _Ros2Franka_msgsSrvSetCartesianStiffness_Request()
        {
        }
    }

    public sealed class Ros2Franka_msgsSrvSetCartesianStiffness_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Franka_msgsSrvSetCartesianStiffness_Request>
    {
        public static readonly Ros2Franka_msgsSrvSetCartesianStiffness_RequestCodec Instance = new Ros2Franka_msgsSrvSetCartesianStiffness_RequestCodec();

        private Ros2Franka_msgsSrvSetCartesianStiffness_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "franka_msgs/srv/SetCartesianStiffness_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_ae78b9887a5419225cfe0727bac83d8c53f789acd53bd47f024485b02aa98260";
        public const int MIN_WIRE_BYTES = 48, MAX_WIRE_BYTES = 48;

        public byte[] Encode(_Ros2Franka_msgsSrvSetCartesianStiffness_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Franka_msgsSrvSetCartesianStiffness_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Franka_msgsSrvSetCartesianStiffness_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Franka_msgsSrvSetCartesianStiffness_Request value = ReadRos2Franka_msgsSrvSetCartesianStiffness_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Franka_msgsSrvSetCartesianStiffness_Request(_Codecs.Writer writer, _Ros2Franka_msgsSrvSetCartesianStiffness_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        double[] part0 = value.@cartesian_stiffness;
        if(part0 == null || part0.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part0.Length; ++index)
        {
            double element = part0[index];
            writer.Float64(element);
        }
    }

    private static _Ros2Franka_msgsSrvSetCartesianStiffness_Request ReadRos2Franka_msgsSrvSetCartesianStiffness_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Franka_msgsSrvSetCartesianStiffness_Request();
        value.@cartesian_stiffness = new double[6];
        for(int index = 0; index < value.@cartesian_stiffness.Length; ++index)
            value.@cartesian_stiffness[index] = reader.Float64();
        return value;
    }

    // @brief Own every original field of franka_msgs/srv/SetCartesianStiffness_Response.
    // @details Canonical extent 5..261 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public sealed class _Ros2Franka_msgsSrvSetCartesianStiffness_Response
    {
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/srv/SetCartesianStiffness_Response.success; native type bool. Scalar
         * value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public bool @success = false;
        /**
         * @brief Retain the complete original string field.
         * @details Original franka_msgs/srv/SetCartesianStiffness_Response.error; native type string. Scalar
         * value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires
         * no ROS resource.
         */
        public string @error = "";

        public _Ros2Franka_msgsSrvSetCartesianStiffness_Response()
        {
        }
    }

    public sealed class Ros2Franka_msgsSrvSetCartesianStiffness_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Franka_msgsSrvSetCartesianStiffness_Response>
    {
        public static readonly Ros2Franka_msgsSrvSetCartesianStiffness_ResponseCodec Instance = new Ros2Franka_msgsSrvSetCartesianStiffness_ResponseCodec();

        private Ros2Franka_msgsSrvSetCartesianStiffness_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "franka_msgs/srv/SetCartesianStiffness_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_3194f7469bbf228e653f5a93336fd5de4a1b2d7c1fe9542f3fadc8ad4fd51afa";
        public const int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 261;

        public byte[] Encode(_Ros2Franka_msgsSrvSetCartesianStiffness_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Franka_msgsSrvSetCartesianStiffness_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Franka_msgsSrvSetCartesianStiffness_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Franka_msgsSrvSetCartesianStiffness_Response value = ReadRos2Franka_msgsSrvSetCartesianStiffness_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Franka_msgsSrvSetCartesianStiffness_Response(_Codecs.Writer writer, _Ros2Franka_msgsSrvSetCartesianStiffness_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
        string part1 = value.@error;
        WriteText(writer, part1, 256);
    }

    private static _Ros2Franka_msgsSrvSetCartesianStiffness_Response ReadRos2Franka_msgsSrvSetCartesianStiffness_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Franka_msgsSrvSetCartesianStiffness_Response();
        value.@success = ReadBool(reader);
        value.@error = ReadText(reader, 256);
        return value;
    }

    // @brief Own every original field of franka_msgs/srv/SetForceTorqueCollisionBehavior_Request.
    // @details Canonical extent 208..208 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public sealed class _Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request
    {
        /**
         * @brief Retain the complete original float64 field.
         * @details Original
         * franka_msgs/srv/SetForceTorqueCollisionBehavior_Request.lower_torque_thresholds_nominal; native type
         * float64. Exactly 7 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the
         * complete value and acquires no ROS resource.
         */
        public double[] @lower_torque_thresholds_nominal = new double[7];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original
         * franka_msgs/srv/SetForceTorqueCollisionBehavior_Request.upper_torque_thresholds_nominal; native type
         * float64. Exactly 7 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the
         * complete value and acquires no ROS resource.
         */
        public double[] @upper_torque_thresholds_nominal = new double[7];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original
         * franka_msgs/srv/SetForceTorqueCollisionBehavior_Request.lower_force_thresholds_nominal; native type
         * float64. Exactly 6 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the
         * complete value and acquires no ROS resource.
         */
        public double[] @lower_force_thresholds_nominal = new double[6];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original
         * franka_msgs/srv/SetForceTorqueCollisionBehavior_Request.upper_force_thresholds_nominal; native type
         * float64. Exactly 6 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the
         * complete value and acquires no ROS resource.
         */
        public double[] @upper_force_thresholds_nominal = new double[6];

        public _Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request()
        {
        }
    }

    public sealed class Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_RequestCodec :
        global::Uwvm.RosWasm.ICodec<_Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request>
    {
        public static readonly Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_RequestCodec Instance =
            new Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_RequestCodec();

        private Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "franka_msgs/srv/SetForceTorqueCollisionBehavior_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_829642a9ea418a53f7252f7489bd7f5ed976bf3689443012daf216db895cf99c";
        public const int MIN_WIRE_BYTES = 208, MAX_WIRE_BYTES = 208;

        public byte[] Encode(_Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request value = ReadRos2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request(_Codecs.Writer writer,
                                                                                       _Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        double[] part0 = value.@lower_torque_thresholds_nominal;
        if(part0 == null || part0.Length != 7)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part0.Length; ++index)
        {
            double element = part0[index];
            writer.Float64(element);
        }
        double[] part1 = value.@upper_torque_thresholds_nominal;
        if(part1 == null || part1.Length != 7)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part1.Length; ++index)
        {
            double element = part1[index];
            writer.Float64(element);
        }
        double[] part2 = value.@lower_force_thresholds_nominal;
        if(part2 == null || part2.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part2.Length; ++index)
        {
            double element = part2[index];
            writer.Float64(element);
        }
        double[] part3 = value.@upper_force_thresholds_nominal;
        if(part3 == null || part3.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part3.Length; ++index)
        {
            double element = part3[index];
            writer.Float64(element);
        }
    }

    private static _Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request
        ReadRos2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request();
        value.@lower_torque_thresholds_nominal = new double[7];
        for(int index = 0; index < value.@lower_torque_thresholds_nominal.Length; ++index)
            value.@lower_torque_thresholds_nominal[index] = reader.Float64();
        value.@upper_torque_thresholds_nominal = new double[7];
        for(int index = 0; index < value.@upper_torque_thresholds_nominal.Length; ++index)
            value.@upper_torque_thresholds_nominal[index] = reader.Float64();
        value.@lower_force_thresholds_nominal = new double[6];
        for(int index = 0; index < value.@lower_force_thresholds_nominal.Length; ++index)
            value.@lower_force_thresholds_nominal[index] = reader.Float64();
        value.@upper_force_thresholds_nominal = new double[6];
        for(int index = 0; index < value.@upper_force_thresholds_nominal.Length; ++index)
            value.@upper_force_thresholds_nominal[index] = reader.Float64();
        return value;
    }

    // @brief Own every original field of franka_msgs/srv/SetForceTorqueCollisionBehavior_Response.
    // @details Canonical extent 5..261 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public sealed class _Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response
    {
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/srv/SetForceTorqueCollisionBehavior_Response.success; native type
         * bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public bool @success = false;
        /**
         * @brief Retain the complete original string field.
         * @details Original franka_msgs/srv/SetForceTorqueCollisionBehavior_Response.error; native type
         * string. Scalar value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete
         * value and acquires no ROS resource.
         */
        public string @error = "";

        public _Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response()
        {
        }
    }

    public sealed class Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_ResponseCodec :
        global::Uwvm.RosWasm.ICodec<_Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response>
    {
        public static readonly Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_ResponseCodec Instance =
            new Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_ResponseCodec();

        private Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "franka_msgs/srv/SetForceTorqueCollisionBehavior_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_7d5640c34446e4262a8c00f0b242b68c0095688f0208fd692f21d855003eb47a";
        public const int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 261;

        public byte[] Encode(_Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response value = ReadRos2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response(_Codecs.Writer writer,
                                                                                        _Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
        string part1 = value.@error;
        WriteText(writer, part1, 256);
    }

    private static _Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response
        ReadRos2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response();
        value.@success = ReadBool(reader);
        value.@error = ReadText(reader, 256);
        return value;
    }

    // @brief Own every original field of franka_msgs/srv/SetFullCollisionBehavior_Request.
    // @details Canonical extent 416..416 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public sealed class _Ros2Franka_msgsSrvSetFullCollisionBehavior_Request
    {
        /**
         * @brief Retain the complete original float64 field.
         * @details Original
         * franka_msgs/srv/SetFullCollisionBehavior_Request.lower_torque_thresholds_acceleration; native type
         * float64. Exactly 7 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the
         * complete value and acquires no ROS resource.
         */
        public double[] @lower_torque_thresholds_acceleration = new double[7];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original
         * franka_msgs/srv/SetFullCollisionBehavior_Request.upper_torque_thresholds_acceleration; native type
         * float64. Exactly 7 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the
         * complete value and acquires no ROS resource.
         */
        public double[] @upper_torque_thresholds_acceleration = new double[7];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original franka_msgs/srv/SetFullCollisionBehavior_Request.lower_torque_thresholds_nominal;
         * native type float64. Exactly 7 elements. Finite IEEE values; no implicit unit conversion. Storage
         * belongs to the complete value and acquires no ROS resource.
         */
        public double[] @lower_torque_thresholds_nominal = new double[7];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original franka_msgs/srv/SetFullCollisionBehavior_Request.upper_torque_thresholds_nominal;
         * native type float64. Exactly 7 elements. Finite IEEE values; no implicit unit conversion. Storage
         * belongs to the complete value and acquires no ROS resource.
         */
        public double[] @upper_torque_thresholds_nominal = new double[7];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original
         * franka_msgs/srv/SetFullCollisionBehavior_Request.lower_force_thresholds_acceleration; native type
         * float64. Exactly 6 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the
         * complete value and acquires no ROS resource.
         */
        public double[] @lower_force_thresholds_acceleration = new double[6];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original
         * franka_msgs/srv/SetFullCollisionBehavior_Request.upper_force_thresholds_acceleration; native type
         * float64. Exactly 6 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the
         * complete value and acquires no ROS resource.
         */
        public double[] @upper_force_thresholds_acceleration = new double[6];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original franka_msgs/srv/SetFullCollisionBehavior_Request.lower_force_thresholds_nominal;
         * native type float64. Exactly 6 elements. Finite IEEE values; no implicit unit conversion. Storage
         * belongs to the complete value and acquires no ROS resource.
         */
        public double[] @lower_force_thresholds_nominal = new double[6];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original franka_msgs/srv/SetFullCollisionBehavior_Request.upper_force_thresholds_nominal;
         * native type float64. Exactly 6 elements. Finite IEEE values; no implicit unit conversion. Storage
         * belongs to the complete value and acquires no ROS resource.
         */
        public double[] @upper_force_thresholds_nominal = new double[6];

        public _Ros2Franka_msgsSrvSetFullCollisionBehavior_Request()
        {
        }
    }

    public sealed class Ros2Franka_msgsSrvSetFullCollisionBehavior_RequestCodec :
        global::Uwvm.RosWasm.ICodec<_Ros2Franka_msgsSrvSetFullCollisionBehavior_Request>
    {
        public static readonly Ros2Franka_msgsSrvSetFullCollisionBehavior_RequestCodec Instance = new Ros2Franka_msgsSrvSetFullCollisionBehavior_RequestCodec();

        private Ros2Franka_msgsSrvSetFullCollisionBehavior_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "franka_msgs/srv/SetFullCollisionBehavior_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_d6898555d931aee3a5b4f5f97830cb9982f2e378c59c40bcaa0201840d2f2824";
        public const int MIN_WIRE_BYTES = 416, MAX_WIRE_BYTES = 416;

        public byte[] Encode(_Ros2Franka_msgsSrvSetFullCollisionBehavior_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Franka_msgsSrvSetFullCollisionBehavior_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Franka_msgsSrvSetFullCollisionBehavior_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Franka_msgsSrvSetFullCollisionBehavior_Request value = ReadRos2Franka_msgsSrvSetFullCollisionBehavior_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Franka_msgsSrvSetFullCollisionBehavior_Request(_Codecs.Writer writer,
                                                                                _Ros2Franka_msgsSrvSetFullCollisionBehavior_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        double[] part0 = value.@lower_torque_thresholds_acceleration;
        if(part0 == null || part0.Length != 7)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part0.Length; ++index)
        {
            double element = part0[index];
            writer.Float64(element);
        }
        double[] part1 = value.@upper_torque_thresholds_acceleration;
        if(part1 == null || part1.Length != 7)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part1.Length; ++index)
        {
            double element = part1[index];
            writer.Float64(element);
        }
        double[] part2 = value.@lower_torque_thresholds_nominal;
        if(part2 == null || part2.Length != 7)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part2.Length; ++index)
        {
            double element = part2[index];
            writer.Float64(element);
        }
        double[] part3 = value.@upper_torque_thresholds_nominal;
        if(part3 == null || part3.Length != 7)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part3.Length; ++index)
        {
            double element = part3[index];
            writer.Float64(element);
        }
        double[] part4 = value.@lower_force_thresholds_acceleration;
        if(part4 == null || part4.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part4.Length; ++index)
        {
            double element = part4[index];
            writer.Float64(element);
        }
        double[] part5 = value.@upper_force_thresholds_acceleration;
        if(part5 == null || part5.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part5.Length; ++index)
        {
            double element = part5[index];
            writer.Float64(element);
        }
        double[] part6 = value.@lower_force_thresholds_nominal;
        if(part6 == null || part6.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part6.Length; ++index)
        {
            double element = part6[index];
            writer.Float64(element);
        }
        double[] part7 = value.@upper_force_thresholds_nominal;
        if(part7 == null || part7.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part7.Length; ++index)
        {
            double element = part7[index];
            writer.Float64(element);
        }
    }

    private static _Ros2Franka_msgsSrvSetFullCollisionBehavior_Request ReadRos2Franka_msgsSrvSetFullCollisionBehavior_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Franka_msgsSrvSetFullCollisionBehavior_Request();
        value.@lower_torque_thresholds_acceleration = new double[7];
        for(int index = 0; index < value.@lower_torque_thresholds_acceleration.Length; ++index)
            value.@lower_torque_thresholds_acceleration[index] = reader.Float64();
        value.@upper_torque_thresholds_acceleration = new double[7];
        for(int index = 0; index < value.@upper_torque_thresholds_acceleration.Length; ++index)
            value.@upper_torque_thresholds_acceleration[index] = reader.Float64();
        value.@lower_torque_thresholds_nominal = new double[7];
        for(int index = 0; index < value.@lower_torque_thresholds_nominal.Length; ++index)
            value.@lower_torque_thresholds_nominal[index] = reader.Float64();
        value.@upper_torque_thresholds_nominal = new double[7];
        for(int index = 0; index < value.@upper_torque_thresholds_nominal.Length; ++index)
            value.@upper_torque_thresholds_nominal[index] = reader.Float64();
        value.@lower_force_thresholds_acceleration = new double[6];
        for(int index = 0; index < value.@lower_force_thresholds_acceleration.Length; ++index)
            value.@lower_force_thresholds_acceleration[index] = reader.Float64();
        value.@upper_force_thresholds_acceleration = new double[6];
        for(int index = 0; index < value.@upper_force_thresholds_acceleration.Length; ++index)
            value.@upper_force_thresholds_acceleration[index] = reader.Float64();
        value.@lower_force_thresholds_nominal = new double[6];
        for(int index = 0; index < value.@lower_force_thresholds_nominal.Length; ++index)
            value.@lower_force_thresholds_nominal[index] = reader.Float64();
        value.@upper_force_thresholds_nominal = new double[6];
        for(int index = 0; index < value.@upper_force_thresholds_nominal.Length; ++index)
            value.@upper_force_thresholds_nominal[index] = reader.Float64();
        return value;
    }

    // @brief Own every original field of franka_msgs/srv/SetFullCollisionBehavior_Response.
    // @details Canonical extent 5..261 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public sealed class _Ros2Franka_msgsSrvSetFullCollisionBehavior_Response
    {
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/srv/SetFullCollisionBehavior_Response.success; native type bool.
         * Scalar value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public bool @success = false;
        /**
         * @brief Retain the complete original string field.
         * @details Original franka_msgs/srv/SetFullCollisionBehavior_Response.error; native type string.
         * Scalar value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and
         * acquires no ROS resource.
         */
        public string @error = "";

        public _Ros2Franka_msgsSrvSetFullCollisionBehavior_Response()
        {
        }
    }

    public sealed class Ros2Franka_msgsSrvSetFullCollisionBehavior_ResponseCodec :
        global::Uwvm.RosWasm.ICodec<_Ros2Franka_msgsSrvSetFullCollisionBehavior_Response>
    {
        public static readonly Ros2Franka_msgsSrvSetFullCollisionBehavior_ResponseCodec Instance =
            new Ros2Franka_msgsSrvSetFullCollisionBehavior_ResponseCodec();

        private Ros2Franka_msgsSrvSetFullCollisionBehavior_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "franka_msgs/srv/SetFullCollisionBehavior_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_76430e384e9ad8b3f3c937e3004e8dc15a51d28abecd108c698e60d39c54f300";
        public const int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 261;

        public byte[] Encode(_Ros2Franka_msgsSrvSetFullCollisionBehavior_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Franka_msgsSrvSetFullCollisionBehavior_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Franka_msgsSrvSetFullCollisionBehavior_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Franka_msgsSrvSetFullCollisionBehavior_Response value = ReadRos2Franka_msgsSrvSetFullCollisionBehavior_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Franka_msgsSrvSetFullCollisionBehavior_Response(_Codecs.Writer writer,
                                                                                 _Ros2Franka_msgsSrvSetFullCollisionBehavior_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
        string part1 = value.@error;
        WriteText(writer, part1, 256);
    }

    private static _Ros2Franka_msgsSrvSetFullCollisionBehavior_Response ReadRos2Franka_msgsSrvSetFullCollisionBehavior_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Franka_msgsSrvSetFullCollisionBehavior_Response();
        value.@success = ReadBool(reader);
        value.@error = ReadText(reader, 256);
        return value;
    }

    // @brief Own every original field of franka_msgs/srv/SetJointStiffness_Request.
    // @details Canonical extent 56..56 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public sealed class _Ros2Franka_msgsSrvSetJointStiffness_Request
    {
        /**
         * @brief Impedance for each joint in the internal controller
         * @details Original franka_msgs/srv/SetJointStiffness_Request.joint_stiffness; native type float64.
         * Exactly 7 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete
         * value and acquires no ROS resource.
         */
        public double[] @joint_stiffness = new double[7];

        public _Ros2Franka_msgsSrvSetJointStiffness_Request()
        {
        }
    }

    public sealed class Ros2Franka_msgsSrvSetJointStiffness_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Franka_msgsSrvSetJointStiffness_Request>
    {
        public static readonly Ros2Franka_msgsSrvSetJointStiffness_RequestCodec Instance = new Ros2Franka_msgsSrvSetJointStiffness_RequestCodec();

        private Ros2Franka_msgsSrvSetJointStiffness_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "franka_msgs/srv/SetJointStiffness_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_65b5d6599d1b97a0356f599102c22e0ae8c33b85f14c5a49b6c097eb227d334c";
        public const int MIN_WIRE_BYTES = 56, MAX_WIRE_BYTES = 56;

        public byte[] Encode(_Ros2Franka_msgsSrvSetJointStiffness_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Franka_msgsSrvSetJointStiffness_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Franka_msgsSrvSetJointStiffness_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Franka_msgsSrvSetJointStiffness_Request value = ReadRos2Franka_msgsSrvSetJointStiffness_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Franka_msgsSrvSetJointStiffness_Request(_Codecs.Writer writer, _Ros2Franka_msgsSrvSetJointStiffness_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        double[] part0 = value.@joint_stiffness;
        if(part0 == null || part0.Length != 7)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part0.Length; ++index)
        {
            double element = part0[index];
            writer.Float64(element);
        }
    }

    private static _Ros2Franka_msgsSrvSetJointStiffness_Request ReadRos2Franka_msgsSrvSetJointStiffness_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Franka_msgsSrvSetJointStiffness_Request();
        value.@joint_stiffness = new double[7];
        for(int index = 0; index < value.@joint_stiffness.Length; ++index)
            value.@joint_stiffness[index] = reader.Float64();
        return value;
    }

    // @brief Own every original field of franka_msgs/srv/SetJointStiffness_Response.
    // @details Canonical extent 5..261 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public sealed class _Ros2Franka_msgsSrvSetJointStiffness_Response
    {
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/srv/SetJointStiffness_Response.success; native type bool. Scalar
         * value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public bool @success = false;
        /**
         * @brief Retain the complete original string field.
         * @details Original franka_msgs/srv/SetJointStiffness_Response.error; native type string. Scalar
         * value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires
         * no ROS resource.
         */
        public string @error = "";

        public _Ros2Franka_msgsSrvSetJointStiffness_Response()
        {
        }
    }

    public sealed class Ros2Franka_msgsSrvSetJointStiffness_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Franka_msgsSrvSetJointStiffness_Response>
    {
        public static readonly Ros2Franka_msgsSrvSetJointStiffness_ResponseCodec Instance = new Ros2Franka_msgsSrvSetJointStiffness_ResponseCodec();

        private Ros2Franka_msgsSrvSetJointStiffness_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "franka_msgs/srv/SetJointStiffness_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_1a857ab809079e0eec664250a9521ddc1cdf66e61aa2e0f22eae8442f5231c4d";
        public const int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 261;

        public byte[] Encode(_Ros2Franka_msgsSrvSetJointStiffness_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Franka_msgsSrvSetJointStiffness_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Franka_msgsSrvSetJointStiffness_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Franka_msgsSrvSetJointStiffness_Response value = ReadRos2Franka_msgsSrvSetJointStiffness_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Franka_msgsSrvSetJointStiffness_Response(_Codecs.Writer writer, _Ros2Franka_msgsSrvSetJointStiffness_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
        string part1 = value.@error;
        WriteText(writer, part1, 256);
    }

    private static _Ros2Franka_msgsSrvSetJointStiffness_Response ReadRos2Franka_msgsSrvSetJointStiffness_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Franka_msgsSrvSetJointStiffness_Response();
        value.@success = ReadBool(reader);
        value.@error = ReadText(reader, 256);
        return value;
    }

    // @brief Own every original field of franka_msgs/srv/SetLoad_Request.
    // @details Canonical extent 104..104 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public sealed class _Ros2Franka_msgsSrvSetLoad_Request
    {
        /**
         * @brief The mass of the object
         * @details Original franka_msgs/srv/SetLoad_Request.mass; native type float64. Scalar value. Finite
         * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double @mass = 0;
        /**
         * @brief Position of the center of mass
         * @details Original franka_msgs/srv/SetLoad_Request.center_of_mass; native type float64. Exactly 3
         * elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
         * acquires no ROS resource.
         */
        public double[] @center_of_mass = new double[3];
        /**
         * @brief Inertia of the object - the provided 3x3 matrix is in column major form.
         * @details Original franka_msgs/srv/SetLoad_Request.load_inertia; native type float64. Exactly 9
         * elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
         * acquires no ROS resource.
         */
        public double[] @load_inertia = new double[9];

        public _Ros2Franka_msgsSrvSetLoad_Request()
        {
        }
    }

    public sealed class Ros2Franka_msgsSrvSetLoad_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Franka_msgsSrvSetLoad_Request>
    {
        public static readonly Ros2Franka_msgsSrvSetLoad_RequestCodec Instance = new Ros2Franka_msgsSrvSetLoad_RequestCodec();

        private Ros2Franka_msgsSrvSetLoad_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "franka_msgs/srv/SetLoad_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_a616a844864b7bbf4ee18ac481ddd8406bec47354b4519a0e17f8a305635b7f8";
        public const int MIN_WIRE_BYTES = 104, MAX_WIRE_BYTES = 104;

        public byte[] Encode(_Ros2Franka_msgsSrvSetLoad_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Franka_msgsSrvSetLoad_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Franka_msgsSrvSetLoad_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Franka_msgsSrvSetLoad_Request value = ReadRos2Franka_msgsSrvSetLoad_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Franka_msgsSrvSetLoad_Request(_Codecs.Writer writer, _Ros2Franka_msgsSrvSetLoad_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        double part0 = value.@mass;
        writer.Float64(part0);
        double[] part1 = value.@center_of_mass;
        if(part1 == null || part1.Length != 3)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part1.Length; ++index)
        {
            double element = part1[index];
            writer.Float64(element);
        }
        double[] part2 = value.@load_inertia;
        if(part2 == null || part2.Length != 9)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part2.Length; ++index)
        {
            double element = part2[index];
            writer.Float64(element);
        }
    }

    private static _Ros2Franka_msgsSrvSetLoad_Request ReadRos2Franka_msgsSrvSetLoad_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Franka_msgsSrvSetLoad_Request();
        value.@mass = reader.Float64();
        value.@center_of_mass = new double[3];
        for(int index = 0; index < value.@center_of_mass.Length; ++index)
            value.@center_of_mass[index] = reader.Float64();
        value.@load_inertia = new double[9];
        for(int index = 0; index < value.@load_inertia.Length; ++index)
            value.@load_inertia[index] = reader.Float64();
        return value;
    }

    // @brief Own every original field of franka_msgs/srv/SetLoad_Response.
    // @details Canonical extent 5..261 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public sealed class _Ros2Franka_msgsSrvSetLoad_Response
    {
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/srv/SetLoad_Response.success; native type bool. Scalar value. Storage
         * belongs to the complete value and acquires no ROS resource.
         */
        public bool @success = false;
        /**
         * @brief Retain the complete original string field.
         * @details Original franka_msgs/srv/SetLoad_Response.error; native type string. Scalar value. UTF-8
         * capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public string @error = "";

        public _Ros2Franka_msgsSrvSetLoad_Response()
        {
        }
    }

    public sealed class Ros2Franka_msgsSrvSetLoad_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Franka_msgsSrvSetLoad_Response>
    {
        public static readonly Ros2Franka_msgsSrvSetLoad_ResponseCodec Instance = new Ros2Franka_msgsSrvSetLoad_ResponseCodec();

        private Ros2Franka_msgsSrvSetLoad_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "franka_msgs/srv/SetLoad_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_991ff575719ef9442063a13c45a9660c672f5607e6e40cf6ab5c7a3173fa00bf";
        public const int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 261;

        public byte[] Encode(_Ros2Franka_msgsSrvSetLoad_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Franka_msgsSrvSetLoad_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Franka_msgsSrvSetLoad_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Franka_msgsSrvSetLoad_Response value = ReadRos2Franka_msgsSrvSetLoad_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Franka_msgsSrvSetLoad_Response(_Codecs.Writer writer, _Ros2Franka_msgsSrvSetLoad_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
        string part1 = value.@error;
        WriteText(writer, part1, 256);
    }

    private static _Ros2Franka_msgsSrvSetLoad_Response ReadRos2Franka_msgsSrvSetLoad_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Franka_msgsSrvSetLoad_Response();
        value.@success = ReadBool(reader);
        value.@error = ReadText(reader, 256);
        return value;
    }

    // @brief Own every original field of franka_msgs/srv/SetStiffnessFrame_Request.
    // @details Canonical extent 128..128 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public sealed class _Ros2Franka_msgsSrvSetStiffnessFrame_Request
    {
        /**
         * @brief Sets the transformation matrix describing the stiffness frame relative to the TCP frame. A
         * 4x4 column-major transformation matrix representing the position and orientation.
         * @details Original franka_msgs/srv/SetStiffnessFrame_Request.transformation; native type float64.
         * Exactly 16 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the
         * complete value and acquires no ROS resource.
         */
        public double[] @transformation = new double[16];

        public _Ros2Franka_msgsSrvSetStiffnessFrame_Request()
        {
        }
    }

    public sealed class Ros2Franka_msgsSrvSetStiffnessFrame_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Franka_msgsSrvSetStiffnessFrame_Request>
    {
        public static readonly Ros2Franka_msgsSrvSetStiffnessFrame_RequestCodec Instance = new Ros2Franka_msgsSrvSetStiffnessFrame_RequestCodec();

        private Ros2Franka_msgsSrvSetStiffnessFrame_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "franka_msgs/srv/SetStiffnessFrame_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_f8ee91daba1642286b63178c18bf2a005597e94951f11a185241193132c9f402";
        public const int MIN_WIRE_BYTES = 128, MAX_WIRE_BYTES = 128;

        public byte[] Encode(_Ros2Franka_msgsSrvSetStiffnessFrame_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Franka_msgsSrvSetStiffnessFrame_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Franka_msgsSrvSetStiffnessFrame_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Franka_msgsSrvSetStiffnessFrame_Request value = ReadRos2Franka_msgsSrvSetStiffnessFrame_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Franka_msgsSrvSetStiffnessFrame_Request(_Codecs.Writer writer, _Ros2Franka_msgsSrvSetStiffnessFrame_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        double[] part0 = value.@transformation;
        if(part0 == null || part0.Length != 16)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part0.Length; ++index)
        {
            double element = part0[index];
            writer.Float64(element);
        }
    }

    private static _Ros2Franka_msgsSrvSetStiffnessFrame_Request ReadRos2Franka_msgsSrvSetStiffnessFrame_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Franka_msgsSrvSetStiffnessFrame_Request();
        value.@transformation = new double[16];
        for(int index = 0; index < value.@transformation.Length; ++index)
            value.@transformation[index] = reader.Float64();
        return value;
    }

    // @brief Own every original field of franka_msgs/srv/SetStiffnessFrame_Response.
    // @details Canonical extent 5..261 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public sealed class _Ros2Franka_msgsSrvSetStiffnessFrame_Response
    {
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/srv/SetStiffnessFrame_Response.success; native type bool. Scalar
         * value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public bool @success = false;
        /**
         * @brief Retain the complete original string field.
         * @details Original franka_msgs/srv/SetStiffnessFrame_Response.error; native type string. Scalar
         * value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires
         * no ROS resource.
         */
        public string @error = "";

        public _Ros2Franka_msgsSrvSetStiffnessFrame_Response()
        {
        }
    }

    public sealed class Ros2Franka_msgsSrvSetStiffnessFrame_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Franka_msgsSrvSetStiffnessFrame_Response>
    {
        public static readonly Ros2Franka_msgsSrvSetStiffnessFrame_ResponseCodec Instance = new Ros2Franka_msgsSrvSetStiffnessFrame_ResponseCodec();

        private Ros2Franka_msgsSrvSetStiffnessFrame_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "franka_msgs/srv/SetStiffnessFrame_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_e32cb83b1f0f3cda363566525c0b1fe367190f2e66f68282b330f4517f6ea744";
        public const int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 261;

        public byte[] Encode(_Ros2Franka_msgsSrvSetStiffnessFrame_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Franka_msgsSrvSetStiffnessFrame_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Franka_msgsSrvSetStiffnessFrame_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Franka_msgsSrvSetStiffnessFrame_Response value = ReadRos2Franka_msgsSrvSetStiffnessFrame_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Franka_msgsSrvSetStiffnessFrame_Response(_Codecs.Writer writer, _Ros2Franka_msgsSrvSetStiffnessFrame_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
        string part1 = value.@error;
        WriteText(writer, part1, 256);
    }

    private static _Ros2Franka_msgsSrvSetStiffnessFrame_Response ReadRos2Franka_msgsSrvSetStiffnessFrame_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Franka_msgsSrvSetStiffnessFrame_Response();
        value.@success = ReadBool(reader);
        value.@error = ReadText(reader, 256);
        return value;
    }

    // @brief Own every original field of franka_msgs/srv/SetTCPFrame_Request.
    // @details Canonical extent 128..128 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public sealed class _Ros2Franka_msgsSrvSetTCPFrame_Request
    {
        /**
         * @brief Sets the transformation matrix describing the tcp frame to the end-effector frame. A 4x4
         * column-major transformation matrix representing the position and orientation.
         * @details Original franka_msgs/srv/SetTCPFrame_Request.transformation; native type float64. Exactly
         * 16 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value
         * and acquires no ROS resource.
         */
        public double[] @transformation = new double[16];

        public _Ros2Franka_msgsSrvSetTCPFrame_Request()
        {
        }
    }

    public sealed class Ros2Franka_msgsSrvSetTCPFrame_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Franka_msgsSrvSetTCPFrame_Request>
    {
        public static readonly Ros2Franka_msgsSrvSetTCPFrame_RequestCodec Instance = new Ros2Franka_msgsSrvSetTCPFrame_RequestCodec();

        private Ros2Franka_msgsSrvSetTCPFrame_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "franka_msgs/srv/SetTCPFrame_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_2ef445bfa494a6bc50ee3337695562255c06890216c30ba17df95e691871441f";
        public const int MIN_WIRE_BYTES = 128, MAX_WIRE_BYTES = 128;

        public byte[] Encode(_Ros2Franka_msgsSrvSetTCPFrame_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Franka_msgsSrvSetTCPFrame_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Franka_msgsSrvSetTCPFrame_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Franka_msgsSrvSetTCPFrame_Request value = ReadRos2Franka_msgsSrvSetTCPFrame_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Franka_msgsSrvSetTCPFrame_Request(_Codecs.Writer writer, _Ros2Franka_msgsSrvSetTCPFrame_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        double[] part0 = value.@transformation;
        if(part0 == null || part0.Length != 16)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part0.Length; ++index)
        {
            double element = part0[index];
            writer.Float64(element);
        }
    }

    private static _Ros2Franka_msgsSrvSetTCPFrame_Request ReadRos2Franka_msgsSrvSetTCPFrame_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Franka_msgsSrvSetTCPFrame_Request();
        value.@transformation = new double[16];
        for(int index = 0; index < value.@transformation.Length; ++index)
            value.@transformation[index] = reader.Float64();
        return value;
    }

    // @brief Own every original field of franka_msgs/srv/SetTCPFrame_Response.
    // @details Canonical extent 5..261 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public sealed class _Ros2Franka_msgsSrvSetTCPFrame_Response
    {
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/srv/SetTCPFrame_Response.success; native type bool. Scalar value.
         * Storage belongs to the complete value and acquires no ROS resource.
         */
        public bool @success = false;
        /**
         * @brief Retain the complete original string field.
         * @details Original franka_msgs/srv/SetTCPFrame_Response.error; native type string. Scalar value.
         * UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public string @error = "";

        public _Ros2Franka_msgsSrvSetTCPFrame_Response()
        {
        }
    }

    public sealed class Ros2Franka_msgsSrvSetTCPFrame_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Franka_msgsSrvSetTCPFrame_Response>
    {
        public static readonly Ros2Franka_msgsSrvSetTCPFrame_ResponseCodec Instance = new Ros2Franka_msgsSrvSetTCPFrame_ResponseCodec();

        private Ros2Franka_msgsSrvSetTCPFrame_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "franka_msgs/srv/SetTCPFrame_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_87e4f5556c292289fe17898a40f1f5dd6161e7cc87ca570c86e9f69080d1df38";
        public const int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 261;

        public byte[] Encode(_Ros2Franka_msgsSrvSetTCPFrame_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Franka_msgsSrvSetTCPFrame_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Franka_msgsSrvSetTCPFrame_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Franka_msgsSrvSetTCPFrame_Response value = ReadRos2Franka_msgsSrvSetTCPFrame_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Franka_msgsSrvSetTCPFrame_Response(_Codecs.Writer writer, _Ros2Franka_msgsSrvSetTCPFrame_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
        string part1 = value.@error;
        WriteText(writer, part1, 256);
    }

    private static _Ros2Franka_msgsSrvSetTCPFrame_Response ReadRos2Franka_msgsSrvSetTCPFrame_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Franka_msgsSrvSetTCPFrame_Response();
        value.@success = ReadBool(reader);
        value.@error = ReadText(reader, 256);
        return value;
    }

    // @brief Own every original field of franka_spine_msgs/action/MoveAbsolute_Goal.
    // @details Canonical extent 32..32 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public sealed class _Ros2Franka_spine_msgsActionMoveAbsolute_Goal
    {
        /**
         * @brief Command an absolute move of the Franka Spine. Target position [m]
         * @details Original franka_spine_msgs/action/MoveAbsolute_Goal.position; native type float64. Scalar
         * value. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
         * acquires no ROS resource.
         */
        public double @position = 0;
        /**
         * @brief Motion velocity [m/s], must be > 0
         * @details Original franka_spine_msgs/action/MoveAbsolute_Goal.velocity; native type float64. Scalar
         * value. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
         * acquires no ROS resource.
         */
        public double @velocity = 0;
        /**
         * @brief Motion acceleration [m/s²], must be > 0
         * @details Original franka_spine_msgs/action/MoveAbsolute_Goal.acceleration; native type float64.
         * Scalar value. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value
         * and acquires no ROS resource.
         */
        public double @acceleration = 0;
        /**
         * @brief Motion deceleration [m/s²], must be > 0
         * @details Original franka_spine_msgs/action/MoveAbsolute_Goal.deceleration; native type float64.
         * Scalar value. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value
         * and acquires no ROS resource.
         */
        public double @deceleration = 0;

        public _Ros2Franka_spine_msgsActionMoveAbsolute_Goal()
        {
        }
    }

    public sealed class Ros2Franka_spine_msgsActionMoveAbsolute_GoalCodec : global::Uwvm.RosWasm.ICodec<_Ros2Franka_spine_msgsActionMoveAbsolute_Goal>
    {
        public static readonly Ros2Franka_spine_msgsActionMoveAbsolute_GoalCodec Instance = new Ros2Franka_spine_msgsActionMoveAbsolute_GoalCodec();

        private Ros2Franka_spine_msgsActionMoveAbsolute_GoalCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "franka_spine_msgs/action/MoveAbsolute_Goal";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_a0c2f9037fd6730641b19b6da6ce1c6ca03bbd517fdd791c159effc93290cf13";
        public const int MIN_WIRE_BYTES = 32, MAX_WIRE_BYTES = 32;

        public byte[] Encode(_Ros2Franka_spine_msgsActionMoveAbsolute_Goal value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Franka_spine_msgsActionMoveAbsolute_Goal(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Franka_spine_msgsActionMoveAbsolute_Goal Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Franka_spine_msgsActionMoveAbsolute_Goal value = ReadRos2Franka_spine_msgsActionMoveAbsolute_Goal(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Franka_spine_msgsActionMoveAbsolute_Goal(_Codecs.Writer writer, _Ros2Franka_spine_msgsActionMoveAbsolute_Goal value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        double part0 = value.@position;
        writer.Float64(part0);
        double part1 = value.@velocity;
        writer.Float64(part1);
        double part2 = value.@acceleration;
        writer.Float64(part2);
        double part3 = value.@deceleration;
        writer.Float64(part3);
    }

    private static _Ros2Franka_spine_msgsActionMoveAbsolute_Goal ReadRos2Franka_spine_msgsActionMoveAbsolute_Goal(_Codecs.Reader reader)
    {
        var value = new _Ros2Franka_spine_msgsActionMoveAbsolute_Goal();
        value.@position = reader.Float64();
        value.@velocity = reader.Float64();
        value.@acceleration = reader.Float64();
        value.@deceleration = reader.Float64();
        return value;
    }

    // @brief Own every original field of franka_spine_msgs/action/MoveAbsolute_Result.
    // @details Canonical extent 9..521 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public sealed class _Ros2Franka_spine_msgsActionMoveAbsolute_Result
    {
        /**
         * @brief True if the target position was reached
         * @details Original franka_spine_msgs/action/MoveAbsolute_Result.success; native type bool. Scalar
         * value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public bool @success = false;
        /**
         * @brief How the motion was stopped (from spine response)
         * @details Original franka_spine_msgs/action/MoveAbsolute_Result.stop_by; native type string. Scalar
         * value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires
         * no ROS resource.
         */
        public string @stop_by = "";
        /**
         * @brief Error description if success is false
         * @details Original franka_spine_msgs/action/MoveAbsolute_Result.error; native type string. Scalar
         * value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires
         * no ROS resource.
         */
        public string @error = "";

        public _Ros2Franka_spine_msgsActionMoveAbsolute_Result()
        {
        }
    }

    public sealed class Ros2Franka_spine_msgsActionMoveAbsolute_ResultCodec : global::Uwvm.RosWasm.ICodec<_Ros2Franka_spine_msgsActionMoveAbsolute_Result>
    {
        public static readonly Ros2Franka_spine_msgsActionMoveAbsolute_ResultCodec Instance = new Ros2Franka_spine_msgsActionMoveAbsolute_ResultCodec();

        private Ros2Franka_spine_msgsActionMoveAbsolute_ResultCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "franka_spine_msgs/action/MoveAbsolute_Result";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_86b5c823e6e6604595462a76cd259daef420b2dff169f6dbe00f742f079155d5";
        public const int MIN_WIRE_BYTES = 9, MAX_WIRE_BYTES = 521;

        public byte[] Encode(_Ros2Franka_spine_msgsActionMoveAbsolute_Result value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Franka_spine_msgsActionMoveAbsolute_Result(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Franka_spine_msgsActionMoveAbsolute_Result Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Franka_spine_msgsActionMoveAbsolute_Result value = ReadRos2Franka_spine_msgsActionMoveAbsolute_Result(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Franka_spine_msgsActionMoveAbsolute_Result(_Codecs.Writer writer, _Ros2Franka_spine_msgsActionMoveAbsolute_Result value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
        string part1 = value.@stop_by;
        WriteText(writer, part1, 256);
        string part2 = value.@error;
        WriteText(writer, part2, 256);
    }

    private static _Ros2Franka_spine_msgsActionMoveAbsolute_Result ReadRos2Franka_spine_msgsActionMoveAbsolute_Result(_Codecs.Reader reader)
    {
        var value = new _Ros2Franka_spine_msgsActionMoveAbsolute_Result();
        value.@success = ReadBool(reader);
        value.@stop_by = ReadText(reader, 256);
        value.@error = ReadText(reader, 256);
        return value;
    }

    // @brief Own every original field of franka_spine_msgs/action/MoveAbsolute_Feedback.
    // @details Canonical extent 8..8 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public sealed class _Ros2Franka_spine_msgsActionMoveAbsolute_Feedback
    {
        /**
         * @brief Current spine position [m]
         * @details Original franka_spine_msgs/action/MoveAbsolute_Feedback.current_position; native type
         * float64. Scalar value. Finite IEEE values; no implicit unit conversion. Storage belongs to the
         * complete value and acquires no ROS resource.
         */
        public double @current_position = 0;

        public _Ros2Franka_spine_msgsActionMoveAbsolute_Feedback()
        {
        }
    }

    public sealed class Ros2Franka_spine_msgsActionMoveAbsolute_FeedbackCodec : global::Uwvm.RosWasm.ICodec<_Ros2Franka_spine_msgsActionMoveAbsolute_Feedback>
    {
        public static readonly Ros2Franka_spine_msgsActionMoveAbsolute_FeedbackCodec Instance = new Ros2Franka_spine_msgsActionMoveAbsolute_FeedbackCodec();

        private Ros2Franka_spine_msgsActionMoveAbsolute_FeedbackCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "franka_spine_msgs/action/MoveAbsolute_Feedback";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_cf2f760313ab8c6cc01dd79271619926320021746451f376e56d18f63ffad929";
        public const int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 8;

        public byte[] Encode(_Ros2Franka_spine_msgsActionMoveAbsolute_Feedback value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Franka_spine_msgsActionMoveAbsolute_Feedback(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Franka_spine_msgsActionMoveAbsolute_Feedback Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Franka_spine_msgsActionMoveAbsolute_Feedback value = ReadRos2Franka_spine_msgsActionMoveAbsolute_Feedback(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Franka_spine_msgsActionMoveAbsolute_Feedback(_Codecs.Writer writer, _Ros2Franka_spine_msgsActionMoveAbsolute_Feedback value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        double part0 = value.@current_position;
        writer.Float64(part0);
    }

    private static _Ros2Franka_spine_msgsActionMoveAbsolute_Feedback ReadRos2Franka_spine_msgsActionMoveAbsolute_Feedback(_Codecs.Reader reader)
    {
        var value = new _Ros2Franka_spine_msgsActionMoveAbsolute_Feedback();
        value.@current_position = reader.Float64();
        return value;
    }

    // @brief Own every original field of franka_spine_msgs/msg/UserLimits.
    // @details Canonical extent 16..16 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public sealed class _Ros2Franka_spine_msgsMsgUserLimits
    {
        /**
         * @brief User-defined soft motion limits for the spine. Lower motion limit [m]
         * @details Original franka_spine_msgs/msg/UserLimits.lower_limit; native type float64. Scalar value.
         * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
         * no ROS resource.
         */
        public double @lower_limit = 0;
        /**
         * @brief Upper motion limit [m]
         * @details Original franka_spine_msgs/msg/UserLimits.upper_limit; native type float64. Scalar value.
         * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
         * no ROS resource.
         */
        public double @upper_limit = 0;

        public _Ros2Franka_spine_msgsMsgUserLimits()
        {
        }
    }

    public sealed class Ros2Franka_spine_msgsMsgUserLimitsCodec : global::Uwvm.RosWasm.ICodec<_Ros2Franka_spine_msgsMsgUserLimits>
    {
        public static readonly Ros2Franka_spine_msgsMsgUserLimitsCodec Instance = new Ros2Franka_spine_msgsMsgUserLimitsCodec();

        private Ros2Franka_spine_msgsMsgUserLimitsCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "franka_spine_msgs/msg/UserLimits";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_20256e37f0ae710b5cb9ab9438b5ff8144ce2ab6fc606c5335d0f5de5384e368";
        public const int MIN_WIRE_BYTES = 16, MAX_WIRE_BYTES = 16;

        public byte[] Encode(_Ros2Franka_spine_msgsMsgUserLimits value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Franka_spine_msgsMsgUserLimits(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Franka_spine_msgsMsgUserLimits Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Franka_spine_msgsMsgUserLimits value = ReadRos2Franka_spine_msgsMsgUserLimits(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Franka_spine_msgsMsgUserLimits(_Codecs.Writer writer, _Ros2Franka_spine_msgsMsgUserLimits value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        double part0 = value.@lower_limit;
        writer.Float64(part0);
        double part1 = value.@upper_limit;
        writer.Float64(part1);
    }

    private static _Ros2Franka_spine_msgsMsgUserLimits ReadRos2Franka_spine_msgsMsgUserLimits(_Codecs.Reader reader)
    {
        var value = new _Ros2Franka_spine_msgsMsgUserLimits();
        value.@lower_limit = reader.Float64();
        value.@upper_limit = reader.Float64();
        return value;
    }

    // @brief Own every original field of franka_spine_msgs/msg/SpineParameters.
    // @details Canonical extent 16..16 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public sealed class _Ros2Franka_spine_msgsMsgSpineParameters
    {
        /**
         * @brief Aggregated spine parameters returned by the GetParameters service. User-defined motion limits
         * @details Original franka_spine_msgs/msg/SpineParameters.user_limits; native type
         * franka_spine_msgs/msg/UserLimits. Scalar value. Storage belongs to the complete value and acquires
         * no ROS resource.
         */
        public _Ros2Franka_spine_msgsMsgUserLimits @user_limits = new _Ros2Franka_spine_msgsMsgUserLimits();

        public _Ros2Franka_spine_msgsMsgSpineParameters()
        {
        }
    }

    public sealed class Ros2Franka_spine_msgsMsgSpineParametersCodec : global::Uwvm.RosWasm.ICodec<_Ros2Franka_spine_msgsMsgSpineParameters>
    {
        public static readonly Ros2Franka_spine_msgsMsgSpineParametersCodec Instance = new Ros2Franka_spine_msgsMsgSpineParametersCodec();

        private Ros2Franka_spine_msgsMsgSpineParametersCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "franka_spine_msgs/msg/SpineParameters";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_4d4c45cfccf278c99a189e92d438d0b11b2b693012cb0f76b65b6822eb816223";
        public const int MIN_WIRE_BYTES = 16, MAX_WIRE_BYTES = 16;

        public byte[] Encode(_Ros2Franka_spine_msgsMsgSpineParameters value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Franka_spine_msgsMsgSpineParameters(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Franka_spine_msgsMsgSpineParameters Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Franka_spine_msgsMsgSpineParameters value = ReadRos2Franka_spine_msgsMsgSpineParameters(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Franka_spine_msgsMsgSpineParameters(_Codecs.Writer writer, _Ros2Franka_spine_msgsMsgSpineParameters value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Franka_spine_msgsMsgUserLimits part0 = value.@user_limits;
        WriteRos2Franka_spine_msgsMsgUserLimits(writer, part0);
    }

    private static _Ros2Franka_spine_msgsMsgSpineParameters ReadRos2Franka_spine_msgsMsgSpineParameters(_Codecs.Reader reader)
    {
        var value = new _Ros2Franka_spine_msgsMsgSpineParameters();
        value.@user_limits = ReadRos2Franka_spine_msgsMsgUserLimits(reader);
        return value;
    }

    // @brief Own every original field of franka_spine_msgs/msg/SpinePosition.
    // @details Canonical extent 21..149 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public sealed class _Ros2Franka_spine_msgsMsgSpinePosition
    {
        /**
         * @brief Periodic spine position sample published on ~/position. Subscribe to this instead of polling
         * the GetPosition service in a loop.
         * @details Original franka_spine_msgs/msg/SpinePosition.header; native type std_msgs/msg/Header.
         * Scalar value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public _Ros2Std_msgsMsgHeader @header = new _Ros2Std_msgsMsgHeader();
        /**
         * @brief Last known position [m]
         * @details Original franka_spine_msgs/msg/SpinePosition.position; native type float64. Scalar value.
         * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
         * no ROS resource.
         */
        public double @position = 0;
        /**
         * @brief False when the sample is stale because the REST read failed
         * @details Original franka_spine_msgs/msg/SpinePosition.valid; native type bool. Scalar value. Storage
         * belongs to the complete value and acquires no ROS resource.
         */
        public bool @valid = false;

        public _Ros2Franka_spine_msgsMsgSpinePosition()
        {
        }
    }

    public sealed class Ros2Franka_spine_msgsMsgSpinePositionCodec : global::Uwvm.RosWasm.ICodec<_Ros2Franka_spine_msgsMsgSpinePosition>
    {
        public static readonly Ros2Franka_spine_msgsMsgSpinePositionCodec Instance = new Ros2Franka_spine_msgsMsgSpinePositionCodec();

        private Ros2Franka_spine_msgsMsgSpinePositionCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "franka_spine_msgs/msg/SpinePosition";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_71be15c40f39074dfdbe79a3587847ae512c5a3c8df23cc9415d5bfe59d05775";
        public const int MIN_WIRE_BYTES = 21, MAX_WIRE_BYTES = 149;

        public byte[] Encode(_Ros2Franka_spine_msgsMsgSpinePosition value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Franka_spine_msgsMsgSpinePosition(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Franka_spine_msgsMsgSpinePosition Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Franka_spine_msgsMsgSpinePosition value = ReadRos2Franka_spine_msgsMsgSpinePosition(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Franka_spine_msgsMsgSpinePosition(_Codecs.Writer writer, _Ros2Franka_spine_msgsMsgSpinePosition value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Std_msgsMsgHeader part0 = value.@header;
        WriteRos2Std_msgsMsgHeader(writer, part0);
        double part1 = value.@position;
        writer.Float64(part1);
        bool part2 = value.@valid;
        writer.Unsigned(part2 ? 1UL : 0UL, 1);
    }

    private static _Ros2Franka_spine_msgsMsgSpinePosition ReadRos2Franka_spine_msgsMsgSpinePosition(_Codecs.Reader reader)
    {
        var value = new _Ros2Franka_spine_msgsMsgSpinePosition();
        value.@header = ReadRos2Std_msgsMsgHeader(reader);
        value.@position = reader.Float64();
        value.@valid = ReadBool(reader);
        return value;
    }

    // @brief Own every original field of franka_spine_msgs/msg/SpineState.
    // @details Canonical extent 25..921 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public sealed class _Ros2Franka_spine_msgsMsgSpineState
    {
        /**
         * @brief Periodic spine state sample published on ~/state. Subscribe to this instead of polling the
         * GetSpineState service in a loop. Possible states: NotReadyToSwitchOn, SwitchedOff, ReadyToSwitchOn,
         * MotorOff, SwitchedOn, QuickStopActive, FaultReactionActive, Fault, Unknown.
         * @details Original franka_spine_msgs/msg/SpineState.header; native type std_msgs/msg/Header. Scalar
         * value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public _Ros2Std_msgsMsgHeader @header = new _Ros2Std_msgsMsgHeader();
        /**
         * @brief Current spine state
         * @details Original franka_spine_msgs/msg/SpineState.state; native type string. Scalar value. UTF-8
         * capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public string @state = "";
        /**
         * @brief Error code (empty when no error)
         * @details Original franka_spine_msgs/msg/SpineState.error_code; native type string. Scalar value.
         * UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public string @error_code = "";
        /**
         * @brief Human-readable error description
         * @details Original franka_spine_msgs/msg/SpineState.error_description; native type string. Scalar
         * value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires
         * no ROS resource.
         */
        public string @error_description = "";
        /**
         * @brief False when the sample is stale because the REST read failed
         * @details Original franka_spine_msgs/msg/SpineState.valid; native type bool. Scalar value. Storage
         * belongs to the complete value and acquires no ROS resource.
         */
        public bool @valid = false;

        public _Ros2Franka_spine_msgsMsgSpineState()
        {
        }
    }

    public sealed class Ros2Franka_spine_msgsMsgSpineStateCodec : global::Uwvm.RosWasm.ICodec<_Ros2Franka_spine_msgsMsgSpineState>
    {
        public static readonly Ros2Franka_spine_msgsMsgSpineStateCodec Instance = new Ros2Franka_spine_msgsMsgSpineStateCodec();

        private Ros2Franka_spine_msgsMsgSpineStateCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "franka_spine_msgs/msg/SpineState";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_ad0b5dc5d79956da854582765c147d3d33edab569c4829e69cc7990edfb89441";
        public const int MIN_WIRE_BYTES = 25, MAX_WIRE_BYTES = 921;

        public byte[] Encode(_Ros2Franka_spine_msgsMsgSpineState value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Franka_spine_msgsMsgSpineState(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Franka_spine_msgsMsgSpineState Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Franka_spine_msgsMsgSpineState value = ReadRos2Franka_spine_msgsMsgSpineState(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Franka_spine_msgsMsgSpineState(_Codecs.Writer writer, _Ros2Franka_spine_msgsMsgSpineState value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Std_msgsMsgHeader part0 = value.@header;
        WriteRos2Std_msgsMsgHeader(writer, part0);
        string part1 = value.@state;
        WriteText(writer, part1, 256);
        string part2 = value.@error_code;
        WriteText(writer, part2, 256);
        string part3 = value.@error_description;
        WriteText(writer, part3, 256);
        bool part4 = value.@valid;
        writer.Unsigned(part4 ? 1UL : 0UL, 1);
    }

    private static _Ros2Franka_spine_msgsMsgSpineState ReadRos2Franka_spine_msgsMsgSpineState(_Codecs.Reader reader)
    {
        var value = new _Ros2Franka_spine_msgsMsgSpineState();
        value.@header = ReadRos2Std_msgsMsgHeader(reader);
        value.@state = ReadText(reader, 256);
        value.@error_code = ReadText(reader, 256);
        value.@error_description = ReadText(reader, 256);
        value.@valid = ReadBool(reader);
        return value;
    }

    // @brief Own every original field of franka_spine_msgs/srv/FaultReset_Request.
    // @details Canonical extent 0..0 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public sealed class _Ros2Franka_spine_msgsSrvFaultReset_Request
    {
        public _Ros2Franka_spine_msgsSrvFaultReset_Request()
        {
        }
    }

    public sealed class Ros2Franka_spine_msgsSrvFaultReset_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Franka_spine_msgsSrvFaultReset_Request>
    {
        public static readonly Ros2Franka_spine_msgsSrvFaultReset_RequestCodec Instance = new Ros2Franka_spine_msgsSrvFaultReset_RequestCodec();

        private Ros2Franka_spine_msgsSrvFaultReset_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "franka_spine_msgs/srv/FaultReset_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_0f836229e8e8a1713b9e9a8d7f0f43677ad93380e1f7350ff1597d25067b7f33";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public byte[] Encode(_Ros2Franka_spine_msgsSrvFaultReset_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Franka_spine_msgsSrvFaultReset_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Franka_spine_msgsSrvFaultReset_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Franka_spine_msgsSrvFaultReset_Request value = ReadRos2Franka_spine_msgsSrvFaultReset_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Franka_spine_msgsSrvFaultReset_Request(_Codecs.Writer writer, _Ros2Franka_spine_msgsSrvFaultReset_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    private static _Ros2Franka_spine_msgsSrvFaultReset_Request ReadRos2Franka_spine_msgsSrvFaultReset_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Franka_spine_msgsSrvFaultReset_Request();
        return value;
    }

    // @brief Own every original field of franka_spine_msgs/srv/FaultReset_Response.
    // @details Canonical extent 9..521 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public sealed class _Ros2Franka_spine_msgsSrvFaultReset_Response
    {
        /**
         * @brief Spine state after the reset
         * @details Original franka_spine_msgs/srv/FaultReset_Response.state; native type string. Scalar value.
         * UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public string @state = "";
        /**
         * @brief True if the fault was cleared
         * @details Original franka_spine_msgs/srv/FaultReset_Response.success; native type bool. Scalar value.
         * Storage belongs to the complete value and acquires no ROS resource.
         */
        public bool @success = false;
        /**
         * @brief Human-readable status or error description
         * @details Original franka_spine_msgs/srv/FaultReset_Response.message; native type string. Scalar
         * value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires
         * no ROS resource.
         */
        public string @message = "";

        public _Ros2Franka_spine_msgsSrvFaultReset_Response()
        {
        }
    }

    public sealed class Ros2Franka_spine_msgsSrvFaultReset_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Franka_spine_msgsSrvFaultReset_Response>
    {
        public static readonly Ros2Franka_spine_msgsSrvFaultReset_ResponseCodec Instance = new Ros2Franka_spine_msgsSrvFaultReset_ResponseCodec();

        private Ros2Franka_spine_msgsSrvFaultReset_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "franka_spine_msgs/srv/FaultReset_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_1ebeded0dbe4a4197a52de3fa43dc57fa372bd4e6ef5e2ded2558ccbf691410c";
        public const int MIN_WIRE_BYTES = 9, MAX_WIRE_BYTES = 521;

        public byte[] Encode(_Ros2Franka_spine_msgsSrvFaultReset_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Franka_spine_msgsSrvFaultReset_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Franka_spine_msgsSrvFaultReset_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Franka_spine_msgsSrvFaultReset_Response value = ReadRos2Franka_spine_msgsSrvFaultReset_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Franka_spine_msgsSrvFaultReset_Response(_Codecs.Writer writer, _Ros2Franka_spine_msgsSrvFaultReset_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        string part0 = value.@state;
        WriteText(writer, part0, 256);
        bool part1 = value.@success;
        writer.Unsigned(part1 ? 1UL : 0UL, 1);
        string part2 = value.@message;
        WriteText(writer, part2, 256);
    }

    private static _Ros2Franka_spine_msgsSrvFaultReset_Response ReadRos2Franka_spine_msgsSrvFaultReset_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Franka_spine_msgsSrvFaultReset_Response();
        value.@state = ReadText(reader, 256);
        value.@success = ReadBool(reader);
        value.@message = ReadText(reader, 256);
        return value;
    }

    // @brief Own every original field of franka_spine_msgs/srv/GetParameters_Request.
    // @details Canonical extent 0..0 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public sealed class _Ros2Franka_spine_msgsSrvGetParameters_Request
    {
        public _Ros2Franka_spine_msgsSrvGetParameters_Request()
        {
        }
    }

    public sealed class Ros2Franka_spine_msgsSrvGetParameters_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Franka_spine_msgsSrvGetParameters_Request>
    {
        public static readonly Ros2Franka_spine_msgsSrvGetParameters_RequestCodec Instance = new Ros2Franka_spine_msgsSrvGetParameters_RequestCodec();

        private Ros2Franka_spine_msgsSrvGetParameters_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "franka_spine_msgs/srv/GetParameters_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_80ef5d2ef6ff2df9d14f29417d1928429315c0b7be9ec59513b9b3943a970b14";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public byte[] Encode(_Ros2Franka_spine_msgsSrvGetParameters_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Franka_spine_msgsSrvGetParameters_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Franka_spine_msgsSrvGetParameters_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Franka_spine_msgsSrvGetParameters_Request value = ReadRos2Franka_spine_msgsSrvGetParameters_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Franka_spine_msgsSrvGetParameters_Request(_Codecs.Writer writer, _Ros2Franka_spine_msgsSrvGetParameters_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    private static _Ros2Franka_spine_msgsSrvGetParameters_Request ReadRos2Franka_spine_msgsSrvGetParameters_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Franka_spine_msgsSrvGetParameters_Request();
        return value;
    }

    // @brief Own every original field of franka_spine_msgs/srv/GetParameters_Response.
    // @details Canonical extent 21..277 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public sealed class _Ros2Franka_spine_msgsSrvGetParameters_Response
    {
        /**
         * @brief Calibration and limit values
         * @details Original franka_spine_msgs/srv/GetParameters_Response.parameters; native type
         * franka_spine_msgs/msg/SpineParameters. Scalar value. Storage belongs to the complete value and
         * acquires no ROS resource.
         */
        public _Ros2Franka_spine_msgsMsgSpineParameters @parameters = new _Ros2Franka_spine_msgsMsgSpineParameters();
        /**
         * @brief True if the REST call succeeded
         * @details Original franka_spine_msgs/srv/GetParameters_Response.success; native type bool. Scalar
         * value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public bool @success = false;
        /**
         * @brief Human-readable status or error description
         * @details Original franka_spine_msgs/srv/GetParameters_Response.message; native type string. Scalar
         * value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires
         * no ROS resource.
         */
        public string @message = "";

        public _Ros2Franka_spine_msgsSrvGetParameters_Response()
        {
        }
    }

    public sealed class Ros2Franka_spine_msgsSrvGetParameters_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Franka_spine_msgsSrvGetParameters_Response>
    {
        public static readonly Ros2Franka_spine_msgsSrvGetParameters_ResponseCodec Instance = new Ros2Franka_spine_msgsSrvGetParameters_ResponseCodec();

        private Ros2Franka_spine_msgsSrvGetParameters_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "franka_spine_msgs/srv/GetParameters_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_8e648792534d7f4996179f31d353d2594cf63031edef4451fd20a3838dc896ed";
        public const int MIN_WIRE_BYTES = 21, MAX_WIRE_BYTES = 277;

        public byte[] Encode(_Ros2Franka_spine_msgsSrvGetParameters_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Franka_spine_msgsSrvGetParameters_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Franka_spine_msgsSrvGetParameters_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Franka_spine_msgsSrvGetParameters_Response value = ReadRos2Franka_spine_msgsSrvGetParameters_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Franka_spine_msgsSrvGetParameters_Response(_Codecs.Writer writer, _Ros2Franka_spine_msgsSrvGetParameters_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Franka_spine_msgsMsgSpineParameters part0 = value.@parameters;
        WriteRos2Franka_spine_msgsMsgSpineParameters(writer, part0);
        bool part1 = value.@success;
        writer.Unsigned(part1 ? 1UL : 0UL, 1);
        string part2 = value.@message;
        WriteText(writer, part2, 256);
    }

    private static _Ros2Franka_spine_msgsSrvGetParameters_Response ReadRos2Franka_spine_msgsSrvGetParameters_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Franka_spine_msgsSrvGetParameters_Response();
        value.@parameters = ReadRos2Franka_spine_msgsMsgSpineParameters(reader);
        value.@success = ReadBool(reader);
        value.@message = ReadText(reader, 256);
        return value;
    }

    // @brief Own every original field of franka_spine_msgs/srv/GetPosition_Request.
    // @details Canonical extent 0..0 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public sealed class _Ros2Franka_spine_msgsSrvGetPosition_Request
    {
        public _Ros2Franka_spine_msgsSrvGetPosition_Request()
        {
        }
    }

    public sealed class Ros2Franka_spine_msgsSrvGetPosition_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Franka_spine_msgsSrvGetPosition_Request>
    {
        public static readonly Ros2Franka_spine_msgsSrvGetPosition_RequestCodec Instance = new Ros2Franka_spine_msgsSrvGetPosition_RequestCodec();

        private Ros2Franka_spine_msgsSrvGetPosition_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "franka_spine_msgs/srv/GetPosition_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_66b05d1f08331161cafed301b3ab95a60dbb16aeb1a930ee780db163cb37c6c2";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public byte[] Encode(_Ros2Franka_spine_msgsSrvGetPosition_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Franka_spine_msgsSrvGetPosition_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Franka_spine_msgsSrvGetPosition_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Franka_spine_msgsSrvGetPosition_Request value = ReadRos2Franka_spine_msgsSrvGetPosition_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Franka_spine_msgsSrvGetPosition_Request(_Codecs.Writer writer, _Ros2Franka_spine_msgsSrvGetPosition_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    private static _Ros2Franka_spine_msgsSrvGetPosition_Request ReadRos2Franka_spine_msgsSrvGetPosition_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Franka_spine_msgsSrvGetPosition_Request();
        return value;
    }

    // @brief Own every original field of franka_spine_msgs/srv/GetPosition_Response.
    // @details Canonical extent 9..9 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public sealed class _Ros2Franka_spine_msgsSrvGetPosition_Response
    {
        /**
         * @brief Current position [m]
         * @details Original franka_spine_msgs/srv/GetPosition_Response.position; native type float64. Scalar
         * value. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
         * acquires no ROS resource.
         */
        public double @position = 0;
        /**
         * @brief True if the REST call succeeded
         * @details Original franka_spine_msgs/srv/GetPosition_Response.success; native type bool. Scalar
         * value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public bool @success = false;

        public _Ros2Franka_spine_msgsSrvGetPosition_Response()
        {
        }
    }

    public sealed class Ros2Franka_spine_msgsSrvGetPosition_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Franka_spine_msgsSrvGetPosition_Response>
    {
        public static readonly Ros2Franka_spine_msgsSrvGetPosition_ResponseCodec Instance = new Ros2Franka_spine_msgsSrvGetPosition_ResponseCodec();

        private Ros2Franka_spine_msgsSrvGetPosition_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "franka_spine_msgs/srv/GetPosition_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_18d9af57cc9f82c3c03d01e850da254e9431820b8291f03dafd2e8f74e849ab8";
        public const int MIN_WIRE_BYTES = 9, MAX_WIRE_BYTES = 9;

        public byte[] Encode(_Ros2Franka_spine_msgsSrvGetPosition_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Franka_spine_msgsSrvGetPosition_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Franka_spine_msgsSrvGetPosition_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Franka_spine_msgsSrvGetPosition_Response value = ReadRos2Franka_spine_msgsSrvGetPosition_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Franka_spine_msgsSrvGetPosition_Response(_Codecs.Writer writer, _Ros2Franka_spine_msgsSrvGetPosition_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        double part0 = value.@position;
        writer.Float64(part0);
        bool part1 = value.@success;
        writer.Unsigned(part1 ? 1UL : 0UL, 1);
    }

    private static _Ros2Franka_spine_msgsSrvGetPosition_Response ReadRos2Franka_spine_msgsSrvGetPosition_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Franka_spine_msgsSrvGetPosition_Response();
        value.@position = reader.Float64();
        value.@success = ReadBool(reader);
        return value;
    }

    // @brief Own every original field of franka_spine_msgs/srv/GetSpineState_Request.
    // @details Canonical extent 0..0 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public sealed class _Ros2Franka_spine_msgsSrvGetSpineState_Request
    {
        public _Ros2Franka_spine_msgsSrvGetSpineState_Request()
        {
        }
    }

    public sealed class Ros2Franka_spine_msgsSrvGetSpineState_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Franka_spine_msgsSrvGetSpineState_Request>
    {
        public static readonly Ros2Franka_spine_msgsSrvGetSpineState_RequestCodec Instance = new Ros2Franka_spine_msgsSrvGetSpineState_RequestCodec();

        private Ros2Franka_spine_msgsSrvGetSpineState_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "franka_spine_msgs/srv/GetSpineState_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_c4c456174d7b6647d09d986d37c041b942418941a5e01c447486727e919b8a67";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public byte[] Encode(_Ros2Franka_spine_msgsSrvGetSpineState_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Franka_spine_msgsSrvGetSpineState_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Franka_spine_msgsSrvGetSpineState_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Franka_spine_msgsSrvGetSpineState_Request value = ReadRos2Franka_spine_msgsSrvGetSpineState_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Franka_spine_msgsSrvGetSpineState_Request(_Codecs.Writer writer, _Ros2Franka_spine_msgsSrvGetSpineState_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    private static _Ros2Franka_spine_msgsSrvGetSpineState_Request ReadRos2Franka_spine_msgsSrvGetSpineState_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Franka_spine_msgsSrvGetSpineState_Request();
        return value;
    }

    // @brief Own every original field of franka_spine_msgs/srv/GetSpineState_Response.
    // @details Canonical extent 13..781 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public sealed class _Ros2Franka_spine_msgsSrvGetSpineState_Response
    {
        /**
         * @brief Current spine state
         * @details Original franka_spine_msgs/srv/GetSpineState_Response.state; native type string. Scalar
         * value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires
         * no ROS resource.
         */
        public string @state = "";
        /**
         * @brief Error code (empty when no error)
         * @details Original franka_spine_msgs/srv/GetSpineState_Response.error_code; native type string.
         * Scalar value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and
         * acquires no ROS resource.
         */
        public string @error_code = "";
        /**
         * @brief Human-readable error description
         * @details Original franka_spine_msgs/srv/GetSpineState_Response.error_description; native type
         * string. Scalar value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete
         * value and acquires no ROS resource.
         */
        public string @error_description = "";
        /**
         * @brief True if the REST call succeeded
         * @details Original franka_spine_msgs/srv/GetSpineState_Response.success; native type bool. Scalar
         * value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public bool @success = false;

        public _Ros2Franka_spine_msgsSrvGetSpineState_Response()
        {
        }
    }

    public sealed class Ros2Franka_spine_msgsSrvGetSpineState_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Franka_spine_msgsSrvGetSpineState_Response>
    {
        public static readonly Ros2Franka_spine_msgsSrvGetSpineState_ResponseCodec Instance = new Ros2Franka_spine_msgsSrvGetSpineState_ResponseCodec();

        private Ros2Franka_spine_msgsSrvGetSpineState_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "franka_spine_msgs/srv/GetSpineState_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_297d70e2c5c24dcea4bdf8c5f9e5c8c32256e8f35f1900d8afd914ab2acfdcd1";
        public const int MIN_WIRE_BYTES = 13, MAX_WIRE_BYTES = 781;

        public byte[] Encode(_Ros2Franka_spine_msgsSrvGetSpineState_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Franka_spine_msgsSrvGetSpineState_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Franka_spine_msgsSrvGetSpineState_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Franka_spine_msgsSrvGetSpineState_Response value = ReadRos2Franka_spine_msgsSrvGetSpineState_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Franka_spine_msgsSrvGetSpineState_Response(_Codecs.Writer writer, _Ros2Franka_spine_msgsSrvGetSpineState_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        string part0 = value.@state;
        WriteText(writer, part0, 256);
        string part1 = value.@error_code;
        WriteText(writer, part1, 256);
        string part2 = value.@error_description;
        WriteText(writer, part2, 256);
        bool part3 = value.@success;
        writer.Unsigned(part3 ? 1UL : 0UL, 1);
    }

    private static _Ros2Franka_spine_msgsSrvGetSpineState_Response ReadRos2Franka_spine_msgsSrvGetSpineState_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Franka_spine_msgsSrvGetSpineState_Response();
        value.@state = ReadText(reader, 256);
        value.@error_code = ReadText(reader, 256);
        value.@error_description = ReadText(reader, 256);
        value.@success = ReadBool(reader);
        return value;
    }

    // @brief Own every original field of franka_spine_msgs/srv/Halt_Request.
    // @details Canonical extent 0..0 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public sealed class _Ros2Franka_spine_msgsSrvHalt_Request
    {
        public _Ros2Franka_spine_msgsSrvHalt_Request()
        {
        }
    }

    public sealed class Ros2Franka_spine_msgsSrvHalt_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Franka_spine_msgsSrvHalt_Request>
    {
        public static readonly Ros2Franka_spine_msgsSrvHalt_RequestCodec Instance = new Ros2Franka_spine_msgsSrvHalt_RequestCodec();

        private Ros2Franka_spine_msgsSrvHalt_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "franka_spine_msgs/srv/Halt_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_50af7625abf7ec20a30ec49b01e8d32de2ee0d4710820c8de659df211be8c111";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public byte[] Encode(_Ros2Franka_spine_msgsSrvHalt_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Franka_spine_msgsSrvHalt_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Franka_spine_msgsSrvHalt_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Franka_spine_msgsSrvHalt_Request value = ReadRos2Franka_spine_msgsSrvHalt_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Franka_spine_msgsSrvHalt_Request(_Codecs.Writer writer, _Ros2Franka_spine_msgsSrvHalt_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    private static _Ros2Franka_spine_msgsSrvHalt_Request ReadRos2Franka_spine_msgsSrvHalt_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Franka_spine_msgsSrvHalt_Request();
        return value;
    }

    // @brief Own every original field of franka_spine_msgs/srv/Halt_Response.
    // @details Canonical extent 9..521 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public sealed class _Ros2Franka_spine_msgsSrvHalt_Response
    {
        /**
         * @brief Spine state after the halt
         * @details Original franka_spine_msgs/srv/Halt_Response.state; native type string. Scalar value. UTF-8
         * capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public string @state = "";
        /**
         * @brief True if the halt was executed
         * @details Original franka_spine_msgs/srv/Halt_Response.success; native type bool. Scalar value.
         * Storage belongs to the complete value and acquires no ROS resource.
         */
        public bool @success = false;
        /**
         * @brief Human-readable status or error description
         * @details Original franka_spine_msgs/srv/Halt_Response.message; native type string. Scalar value.
         * UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public string @message = "";

        public _Ros2Franka_spine_msgsSrvHalt_Response()
        {
        }
    }

    public sealed class Ros2Franka_spine_msgsSrvHalt_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Franka_spine_msgsSrvHalt_Response>
    {
        public static readonly Ros2Franka_spine_msgsSrvHalt_ResponseCodec Instance = new Ros2Franka_spine_msgsSrvHalt_ResponseCodec();

        private Ros2Franka_spine_msgsSrvHalt_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "franka_spine_msgs/srv/Halt_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_150e1d90b485a6ddf79f771379a0e1d3f99a77f88ab1cf1f569d614a63ac3d77";
        public const int MIN_WIRE_BYTES = 9, MAX_WIRE_BYTES = 521;

        public byte[] Encode(_Ros2Franka_spine_msgsSrvHalt_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Franka_spine_msgsSrvHalt_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Franka_spine_msgsSrvHalt_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Franka_spine_msgsSrvHalt_Response value = ReadRos2Franka_spine_msgsSrvHalt_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Franka_spine_msgsSrvHalt_Response(_Codecs.Writer writer, _Ros2Franka_spine_msgsSrvHalt_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        string part0 = value.@state;
        WriteText(writer, part0, 256);
        bool part1 = value.@success;
        writer.Unsigned(part1 ? 1UL : 0UL, 1);
        string part2 = value.@message;
        WriteText(writer, part2, 256);
    }

    private static _Ros2Franka_spine_msgsSrvHalt_Response ReadRos2Franka_spine_msgsSrvHalt_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Franka_spine_msgsSrvHalt_Response();
        value.@state = ReadText(reader, 256);
        value.@success = ReadBool(reader);
        value.@message = ReadText(reader, 256);
        return value;
    }

    // @brief Own every original field of franka_spine_msgs/srv/SwitchOff_Request.
    // @details Canonical extent 0..0 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public sealed class _Ros2Franka_spine_msgsSrvSwitchOff_Request
    {
        public _Ros2Franka_spine_msgsSrvSwitchOff_Request()
        {
        }
    }

    public sealed class Ros2Franka_spine_msgsSrvSwitchOff_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Franka_spine_msgsSrvSwitchOff_Request>
    {
        public static readonly Ros2Franka_spine_msgsSrvSwitchOff_RequestCodec Instance = new Ros2Franka_spine_msgsSrvSwitchOff_RequestCodec();

        private Ros2Franka_spine_msgsSrvSwitchOff_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "franka_spine_msgs/srv/SwitchOff_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_097f00adfdc8d1a49615792158a36052917c41385683b39de6686f591964fc16";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public byte[] Encode(_Ros2Franka_spine_msgsSrvSwitchOff_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Franka_spine_msgsSrvSwitchOff_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Franka_spine_msgsSrvSwitchOff_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Franka_spine_msgsSrvSwitchOff_Request value = ReadRos2Franka_spine_msgsSrvSwitchOff_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Franka_spine_msgsSrvSwitchOff_Request(_Codecs.Writer writer, _Ros2Franka_spine_msgsSrvSwitchOff_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    private static _Ros2Franka_spine_msgsSrvSwitchOff_Request ReadRos2Franka_spine_msgsSrvSwitchOff_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Franka_spine_msgsSrvSwitchOff_Request();
        return value;
    }

    // @brief Own every original field of franka_spine_msgs/srv/SwitchOff_Response.
    // @details Canonical extent 9..521 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public sealed class _Ros2Franka_spine_msgsSrvSwitchOff_Response
    {
        /**
         * @brief Spine state after switching off
         * @details Original franka_spine_msgs/srv/SwitchOff_Response.state; native type string. Scalar value.
         * UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public string @state = "";
        /**
         * @brief True if the transition succeeded
         * @details Original franka_spine_msgs/srv/SwitchOff_Response.success; native type bool. Scalar value.
         * Storage belongs to the complete value and acquires no ROS resource.
         */
        public bool @success = false;
        /**
         * @brief Human-readable status or error description
         * @details Original franka_spine_msgs/srv/SwitchOff_Response.message; native type string. Scalar
         * value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires
         * no ROS resource.
         */
        public string @message = "";

        public _Ros2Franka_spine_msgsSrvSwitchOff_Response()
        {
        }
    }

    public sealed class Ros2Franka_spine_msgsSrvSwitchOff_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Franka_spine_msgsSrvSwitchOff_Response>
    {
        public static readonly Ros2Franka_spine_msgsSrvSwitchOff_ResponseCodec Instance = new Ros2Franka_spine_msgsSrvSwitchOff_ResponseCodec();

        private Ros2Franka_spine_msgsSrvSwitchOff_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "franka_spine_msgs/srv/SwitchOff_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_d3ab8516e62428b2caf71673f398ccc7199b7b25aac4c37b42c15a79878e54ad";
        public const int MIN_WIRE_BYTES = 9, MAX_WIRE_BYTES = 521;

        public byte[] Encode(_Ros2Franka_spine_msgsSrvSwitchOff_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Franka_spine_msgsSrvSwitchOff_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Franka_spine_msgsSrvSwitchOff_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Franka_spine_msgsSrvSwitchOff_Response value = ReadRos2Franka_spine_msgsSrvSwitchOff_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Franka_spine_msgsSrvSwitchOff_Response(_Codecs.Writer writer, _Ros2Franka_spine_msgsSrvSwitchOff_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        string part0 = value.@state;
        WriteText(writer, part0, 256);
        bool part1 = value.@success;
        writer.Unsigned(part1 ? 1UL : 0UL, 1);
        string part2 = value.@message;
        WriteText(writer, part2, 256);
    }

    private static _Ros2Franka_spine_msgsSrvSwitchOff_Response ReadRos2Franka_spine_msgsSrvSwitchOff_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Franka_spine_msgsSrvSwitchOff_Response();
        value.@state = ReadText(reader, 256);
        value.@success = ReadBool(reader);
        value.@message = ReadText(reader, 256);
        return value;
    }

    // @brief Own every original field of franka_spine_msgs/srv/SwitchOn_Request.
    // @details Canonical extent 0..0 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public sealed class _Ros2Franka_spine_msgsSrvSwitchOn_Request
    {
        public _Ros2Franka_spine_msgsSrvSwitchOn_Request()
        {
        }
    }

    public sealed class Ros2Franka_spine_msgsSrvSwitchOn_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Franka_spine_msgsSrvSwitchOn_Request>
    {
        public static readonly Ros2Franka_spine_msgsSrvSwitchOn_RequestCodec Instance = new Ros2Franka_spine_msgsSrvSwitchOn_RequestCodec();

        private Ros2Franka_spine_msgsSrvSwitchOn_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "franka_spine_msgs/srv/SwitchOn_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_840d12dbe4d4a8558e72c2facbccfc547de35536f749573b6de60ce9a9238a56";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public byte[] Encode(_Ros2Franka_spine_msgsSrvSwitchOn_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Franka_spine_msgsSrvSwitchOn_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Franka_spine_msgsSrvSwitchOn_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Franka_spine_msgsSrvSwitchOn_Request value = ReadRos2Franka_spine_msgsSrvSwitchOn_Request(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Franka_spine_msgsSrvSwitchOn_Request(_Codecs.Writer writer, _Ros2Franka_spine_msgsSrvSwitchOn_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    private static _Ros2Franka_spine_msgsSrvSwitchOn_Request ReadRos2Franka_spine_msgsSrvSwitchOn_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Franka_spine_msgsSrvSwitchOn_Request();
        return value;
    }

    // @brief Own every original field of franka_spine_msgs/srv/SwitchOn_Response.
    // @details Canonical extent 9..521 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public sealed class _Ros2Franka_spine_msgsSrvSwitchOn_Response
    {
        /**
         * @brief Spine state after switching on
         * @details Original franka_spine_msgs/srv/SwitchOn_Response.state; native type string. Scalar value.
         * UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public string @state = "";
        /**
         * @brief True if the transition succeeded
         * @details Original franka_spine_msgs/srv/SwitchOn_Response.success; native type bool. Scalar value.
         * Storage belongs to the complete value and acquires no ROS resource.
         */
        public bool @success = false;
        /**
         * @brief Human-readable status or error description
         * @details Original franka_spine_msgs/srv/SwitchOn_Response.message; native type string. Scalar value.
         * UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public string @message = "";

        public _Ros2Franka_spine_msgsSrvSwitchOn_Response()
        {
        }
    }

    public sealed class Ros2Franka_spine_msgsSrvSwitchOn_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Franka_spine_msgsSrvSwitchOn_Response>
    {
        public static readonly Ros2Franka_spine_msgsSrvSwitchOn_ResponseCodec Instance = new Ros2Franka_spine_msgsSrvSwitchOn_ResponseCodec();

        private Ros2Franka_spine_msgsSrvSwitchOn_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "franka_spine_msgs/srv/SwitchOn_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_8c58d63385a5fc6f160585504b3c9c5ca5375c6187f7a494c3db696c5cc7a37d";
        public const int MIN_WIRE_BYTES = 9, MAX_WIRE_BYTES = 521;

        public byte[] Encode(_Ros2Franka_spine_msgsSrvSwitchOn_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Franka_spine_msgsSrvSwitchOn_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Franka_spine_msgsSrvSwitchOn_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Franka_spine_msgsSrvSwitchOn_Response value = ReadRos2Franka_spine_msgsSrvSwitchOn_Response(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Franka_spine_msgsSrvSwitchOn_Response(_Codecs.Writer writer, _Ros2Franka_spine_msgsSrvSwitchOn_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        string part0 = value.@state;
        WriteText(writer, part0, 256);
        bool part1 = value.@success;
        writer.Unsigned(part1 ? 1UL : 0UL, 1);
        string part2 = value.@message;
        WriteText(writer, part2, 256);
    }

    private static _Ros2Franka_spine_msgsSrvSwitchOn_Response ReadRos2Franka_spine_msgsSrvSwitchOn_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Franka_spine_msgsSrvSwitchOn_Response();
        value.@state = ReadText(reader, 256);
        value.@success = ReadBool(reader);
        value.@message = ReadText(reader, 256);
        return value;
    }
}
