// @brief Complete original flexiv ros2_humble_v2 canonical values.
// @details UTF-8 limits count bytes and sequence limits count elements. Complete-value codecs retain
// every original field; native registration and manually granted ROS authority are separate. Caller-
// owned values and codec failures are described by each operation and the locale API reference.
// Generated complete canonical records; no native ABI, CDR or ROS grant.
#nullable enable
using System;
using _Codecs = global::Uwvm.RosWasm.Codecs;
namespace Uwvm.Flexiv.ros2humblev2;

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

    // @brief Own every original field of flexiv_msgs/action/Grasp_Goal.
    // @details Canonical extent 8..8 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public sealed class _Ros2Flexiv_msgsActionGrasp_Goal
    {
        /**
         * @brief N
         * @details Original flexiv_msgs/action/Grasp_Goal.force; native type float64. Scalar value. Finite
         * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double @force = 0;

        public _Ros2Flexiv_msgsActionGrasp_Goal()
        {
        }
    }

    public sealed class Ros2Flexiv_msgsActionGrasp_GoalCodec : global::Uwvm.RosWasm.ICodec<_Ros2Flexiv_msgsActionGrasp_Goal>
    {
        public static readonly Ros2Flexiv_msgsActionGrasp_GoalCodec Instance = new Ros2Flexiv_msgsActionGrasp_GoalCodec();

        private Ros2Flexiv_msgsActionGrasp_GoalCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "flexiv_msgs/action/Grasp_Goal";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_43565e364b5b889f4afe37a991d7b42a2b045737ead93475f771995882eb67ce";
        public const int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 8;

        public byte[] Encode(_Ros2Flexiv_msgsActionGrasp_Goal value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Flexiv_msgsActionGrasp_Goal(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Flexiv_msgsActionGrasp_Goal Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Flexiv_msgsActionGrasp_Goal value = ReadRos2Flexiv_msgsActionGrasp_Goal(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Flexiv_msgsActionGrasp_Goal(_Codecs.Writer writer, _Ros2Flexiv_msgsActionGrasp_Goal value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        double part0 = value.@force;
        writer.Float64(part0);
    }

    private static _Ros2Flexiv_msgsActionGrasp_Goal ReadRos2Flexiv_msgsActionGrasp_Goal(_Codecs.Reader reader)
    {
        var value = new _Ros2Flexiv_msgsActionGrasp_Goal();
        value.@force = reader.Float64();
        return value;
    }

    // @brief Own every original field of flexiv_msgs/action/Grasp_Result.
    // @details Canonical extent 5..261 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public sealed class _Ros2Flexiv_msgsActionGrasp_Result
    {
        /**
         * @brief Retain the complete original bool field.
         * @details Original flexiv_msgs/action/Grasp_Result.success; native type bool. Scalar value. Storage
         * belongs to the complete value and acquires no ROS resource.
         */
        public bool @success = false;
        /**
         * @brief Retain the complete original string field.
         * @details Original flexiv_msgs/action/Grasp_Result.error; native type string. Scalar value. UTF-8
         * capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public string @error = "";

        public _Ros2Flexiv_msgsActionGrasp_Result()
        {
        }
    }

    public sealed class Ros2Flexiv_msgsActionGrasp_ResultCodec : global::Uwvm.RosWasm.ICodec<_Ros2Flexiv_msgsActionGrasp_Result>
    {
        public static readonly Ros2Flexiv_msgsActionGrasp_ResultCodec Instance = new Ros2Flexiv_msgsActionGrasp_ResultCodec();

        private Ros2Flexiv_msgsActionGrasp_ResultCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "flexiv_msgs/action/Grasp_Result";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_76337e629cae7403379d16725f13850a1d38a2bc53d1bd478e79f8139484341a";
        public const int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 261;

        public byte[] Encode(_Ros2Flexiv_msgsActionGrasp_Result value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Flexiv_msgsActionGrasp_Result(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Flexiv_msgsActionGrasp_Result Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Flexiv_msgsActionGrasp_Result value = ReadRos2Flexiv_msgsActionGrasp_Result(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Flexiv_msgsActionGrasp_Result(_Codecs.Writer writer, _Ros2Flexiv_msgsActionGrasp_Result value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
        string part1 = value.@error;
        WriteText(writer, part1, 256);
    }

    private static _Ros2Flexiv_msgsActionGrasp_Result ReadRos2Flexiv_msgsActionGrasp_Result(_Codecs.Reader reader)
    {
        var value = new _Ros2Flexiv_msgsActionGrasp_Result();
        value.@success = ReadBool(reader);
        value.@error = ReadText(reader, 256);
        return value;
    }

    // @brief Own every original field of flexiv_msgs/action/Grasp_Feedback.
    // @details Canonical extent 17..17 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public sealed class _Ros2Flexiv_msgsActionGrasp_Feedback
    {
        /**
         * @brief m
         * @details Original flexiv_msgs/action/Grasp_Feedback.current_width; native type float64. Scalar
         * value. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
         * acquires no ROS resource.
         */
        public double @current_width = 0;
        /**
         * @brief N
         * @details Original flexiv_msgs/action/Grasp_Feedback.current_force; native type float64. Scalar
         * value. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
         * acquires no ROS resource.
         */
        public double @current_force = 0;
        /**
         * @brief Retain the complete original bool field.
         * @details Original flexiv_msgs/action/Grasp_Feedback.moving; native type bool. Scalar value. Storage
         * belongs to the complete value and acquires no ROS resource.
         */
        public bool @moving = false;

        public _Ros2Flexiv_msgsActionGrasp_Feedback()
        {
        }
    }

    public sealed class Ros2Flexiv_msgsActionGrasp_FeedbackCodec : global::Uwvm.RosWasm.ICodec<_Ros2Flexiv_msgsActionGrasp_Feedback>
    {
        public static readonly Ros2Flexiv_msgsActionGrasp_FeedbackCodec Instance = new Ros2Flexiv_msgsActionGrasp_FeedbackCodec();

        private Ros2Flexiv_msgsActionGrasp_FeedbackCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "flexiv_msgs/action/Grasp_Feedback";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_f546cfb58043f2dd44da229d9b5687e88d2712378aa6e1db8cf0082c07e96c05";
        public const int MIN_WIRE_BYTES = 17, MAX_WIRE_BYTES = 17;

        public byte[] Encode(_Ros2Flexiv_msgsActionGrasp_Feedback value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Flexiv_msgsActionGrasp_Feedback(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Flexiv_msgsActionGrasp_Feedback Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Flexiv_msgsActionGrasp_Feedback value = ReadRos2Flexiv_msgsActionGrasp_Feedback(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Flexiv_msgsActionGrasp_Feedback(_Codecs.Writer writer, _Ros2Flexiv_msgsActionGrasp_Feedback value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        double part0 = value.@current_width;
        writer.Float64(part0);
        double part1 = value.@current_force;
        writer.Float64(part1);
        bool part2 = value.@moving;
        writer.Unsigned(part2 ? 1UL : 0UL, 1);
    }

    private static _Ros2Flexiv_msgsActionGrasp_Feedback ReadRos2Flexiv_msgsActionGrasp_Feedback(_Codecs.Reader reader)
    {
        var value = new _Ros2Flexiv_msgsActionGrasp_Feedback();
        value.@current_width = reader.Float64();
        value.@current_force = reader.Float64();
        value.@moving = ReadBool(reader);
        return value;
    }

    // @brief Own every original field of flexiv_msgs/action/Move_Goal.
    // @details Canonical extent 24..24 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public sealed class _Ros2Flexiv_msgsActionMove_Goal
    {
        /**
         * @brief m
         * @details Original flexiv_msgs/action/Move_Goal.width; native type float64. Scalar value. Finite IEEE
         * values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double @width = 0;
        /**
         * @brief m/s
         * @details Original flexiv_msgs/action/Move_Goal.velocity; native type float64. Scalar value. Finite
         * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double @velocity = 0;
        /**
         * @brief N
         * @details Original flexiv_msgs/action/Move_Goal.max_force; native type float64. Scalar value. Finite
         * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double @max_force = 0;

        public _Ros2Flexiv_msgsActionMove_Goal()
        {
        }
    }

    public sealed class Ros2Flexiv_msgsActionMove_GoalCodec : global::Uwvm.RosWasm.ICodec<_Ros2Flexiv_msgsActionMove_Goal>
    {
        public static readonly Ros2Flexiv_msgsActionMove_GoalCodec Instance = new Ros2Flexiv_msgsActionMove_GoalCodec();

        private Ros2Flexiv_msgsActionMove_GoalCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "flexiv_msgs/action/Move_Goal";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_aea1dfd4e0fe2ea72865a4f9e4408564fe63c7eff23cc9eaefdedbb4a3b87ce2";
        public const int MIN_WIRE_BYTES = 24, MAX_WIRE_BYTES = 24;

        public byte[] Encode(_Ros2Flexiv_msgsActionMove_Goal value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Flexiv_msgsActionMove_Goal(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Flexiv_msgsActionMove_Goal Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Flexiv_msgsActionMove_Goal value = ReadRos2Flexiv_msgsActionMove_Goal(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Flexiv_msgsActionMove_Goal(_Codecs.Writer writer, _Ros2Flexiv_msgsActionMove_Goal value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        double part0 = value.@width;
        writer.Float64(part0);
        double part1 = value.@velocity;
        writer.Float64(part1);
        double part2 = value.@max_force;
        writer.Float64(part2);
    }

    private static _Ros2Flexiv_msgsActionMove_Goal ReadRos2Flexiv_msgsActionMove_Goal(_Codecs.Reader reader)
    {
        var value = new _Ros2Flexiv_msgsActionMove_Goal();
        value.@width = reader.Float64();
        value.@velocity = reader.Float64();
        value.@max_force = reader.Float64();
        return value;
    }

    // @brief Own every original field of flexiv_msgs/action/Move_Result.
    // @details Canonical extent 5..261 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public sealed class _Ros2Flexiv_msgsActionMove_Result
    {
        /**
         * @brief Retain the complete original bool field.
         * @details Original flexiv_msgs/action/Move_Result.success; native type bool. Scalar value. Storage
         * belongs to the complete value and acquires no ROS resource.
         */
        public bool @success = false;
        /**
         * @brief Retain the complete original string field.
         * @details Original flexiv_msgs/action/Move_Result.error; native type string. Scalar value. UTF-8
         * capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public string @error = "";

        public _Ros2Flexiv_msgsActionMove_Result()
        {
        }
    }

    public sealed class Ros2Flexiv_msgsActionMove_ResultCodec : global::Uwvm.RosWasm.ICodec<_Ros2Flexiv_msgsActionMove_Result>
    {
        public static readonly Ros2Flexiv_msgsActionMove_ResultCodec Instance = new Ros2Flexiv_msgsActionMove_ResultCodec();

        private Ros2Flexiv_msgsActionMove_ResultCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "flexiv_msgs/action/Move_Result";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_c95a78a3b488d7f47101110729258fcc28450dee51ab7666114da77ad139709d";
        public const int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 261;

        public byte[] Encode(_Ros2Flexiv_msgsActionMove_Result value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Flexiv_msgsActionMove_Result(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Flexiv_msgsActionMove_Result Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Flexiv_msgsActionMove_Result value = ReadRos2Flexiv_msgsActionMove_Result(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Flexiv_msgsActionMove_Result(_Codecs.Writer writer, _Ros2Flexiv_msgsActionMove_Result value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
        string part1 = value.@error;
        WriteText(writer, part1, 256);
    }

    private static _Ros2Flexiv_msgsActionMove_Result ReadRos2Flexiv_msgsActionMove_Result(_Codecs.Reader reader)
    {
        var value = new _Ros2Flexiv_msgsActionMove_Result();
        value.@success = ReadBool(reader);
        value.@error = ReadText(reader, 256);
        return value;
    }

    // @brief Own every original field of flexiv_msgs/action/Move_Feedback.
    // @details Canonical extent 17..17 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public sealed class _Ros2Flexiv_msgsActionMove_Feedback
    {
        /**
         * @brief m
         * @details Original flexiv_msgs/action/Move_Feedback.current_width; native type float64. Scalar value.
         * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
         * no ROS resource.
         */
        public double @current_width = 0;
        /**
         * @brief N
         * @details Original flexiv_msgs/action/Move_Feedback.current_force; native type float64. Scalar value.
         * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
         * no ROS resource.
         */
        public double @current_force = 0;
        /**
         * @brief Retain the complete original bool field.
         * @details Original flexiv_msgs/action/Move_Feedback.moving; native type bool. Scalar value. Storage
         * belongs to the complete value and acquires no ROS resource.
         */
        public bool @moving = false;

        public _Ros2Flexiv_msgsActionMove_Feedback()
        {
        }
    }

    public sealed class Ros2Flexiv_msgsActionMove_FeedbackCodec : global::Uwvm.RosWasm.ICodec<_Ros2Flexiv_msgsActionMove_Feedback>
    {
        public static readonly Ros2Flexiv_msgsActionMove_FeedbackCodec Instance = new Ros2Flexiv_msgsActionMove_FeedbackCodec();

        private Ros2Flexiv_msgsActionMove_FeedbackCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "flexiv_msgs/action/Move_Feedback";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_b28cc267ea6cd964fb24bff71d4e6e8da37fae383f437aeec8afb01431a5cd38";
        public const int MIN_WIRE_BYTES = 17, MAX_WIRE_BYTES = 17;

        public byte[] Encode(_Ros2Flexiv_msgsActionMove_Feedback value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Flexiv_msgsActionMove_Feedback(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Flexiv_msgsActionMove_Feedback Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Flexiv_msgsActionMove_Feedback value = ReadRos2Flexiv_msgsActionMove_Feedback(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Flexiv_msgsActionMove_Feedback(_Codecs.Writer writer, _Ros2Flexiv_msgsActionMove_Feedback value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        double part0 = value.@current_width;
        writer.Float64(part0);
        double part1 = value.@current_force;
        writer.Float64(part1);
        bool part2 = value.@moving;
        writer.Unsigned(part2 ? 1UL : 0UL, 1);
    }

    private static _Ros2Flexiv_msgsActionMove_Feedback ReadRos2Flexiv_msgsActionMove_Feedback(_Codecs.Reader reader)
    {
        var value = new _Ros2Flexiv_msgsActionMove_Feedback();
        value.@current_width = reader.Float64();
        value.@current_force = reader.Float64();
        value.@moving = ReadBool(reader);
        return value;
    }

    // @brief Own every original field of flexiv_msgs/msg/Digital.
    // @details Canonical extent 2..2 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public sealed class _Ros2Flexiv_msgsMsgDigital
    {
        /**
         * @brief Retain the complete original uint8 field.
         * @details Original flexiv_msgs/msg/Digital.pin; native type uint8. Scalar value. Storage belongs to
         * the complete value and acquires no ROS resource.
         */
        public byte @pin = 0;
        /**
         * @brief Retain the complete original bool field.
         * @details Original flexiv_msgs/msg/Digital.state; native type bool. Scalar value. Storage belongs to
         * the complete value and acquires no ROS resource.
         */
        public bool @state = false;

        public _Ros2Flexiv_msgsMsgDigital()
        {
        }
    }

    public sealed class Ros2Flexiv_msgsMsgDigitalCodec : global::Uwvm.RosWasm.ICodec<_Ros2Flexiv_msgsMsgDigital>
    {
        public static readonly Ros2Flexiv_msgsMsgDigitalCodec Instance = new Ros2Flexiv_msgsMsgDigitalCodec();

        private Ros2Flexiv_msgsMsgDigitalCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "flexiv_msgs/msg/Digital";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_88d2ffaf88359d000dbb247773404361a70fbc86b08a6fad118a73723f2c6fbf";
        public const int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;

        public byte[] Encode(_Ros2Flexiv_msgsMsgDigital value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Flexiv_msgsMsgDigital(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Flexiv_msgsMsgDigital Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Flexiv_msgsMsgDigital value = ReadRos2Flexiv_msgsMsgDigital(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Flexiv_msgsMsgDigital(_Codecs.Writer writer, _Ros2Flexiv_msgsMsgDigital value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        byte part0 = value.@pin;
        writer.Unsigned(part0, 1);
        bool part1 = value.@state;
        writer.Unsigned(part1 ? 1UL : 0UL, 1);
    }

    private static _Ros2Flexiv_msgsMsgDigital ReadRos2Flexiv_msgsMsgDigital(_Codecs.Reader reader)
    {
        var value = new _Ros2Flexiv_msgsMsgDigital();
        value.@pin = unchecked((byte)reader.Unsigned(1));
        value.@state = ReadBool(reader);
        return value;
    }

    // @brief Own every original field of flexiv_msgs/msg/GPIOStates.
    // @details Canonical extent 4..68 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public sealed class _Ros2Flexiv_msgsMsgGPIOStates
    {
        /**
         * @brief Retain the complete original flexiv_msgs/msg/Digital field.
         * @details Original flexiv_msgs/msg/GPIOStates.states; native type flexiv_msgs/msg/Digital. At most 32
         * elements. Storage belongs to the complete value and acquires no ROS resource.
         */
        public _Ros2Flexiv_msgsMsgDigital[] @states = new _Ros2Flexiv_msgsMsgDigital[0];

        public _Ros2Flexiv_msgsMsgGPIOStates()
        {
        }
    }

    public sealed class Ros2Flexiv_msgsMsgGPIOStatesCodec : global::Uwvm.RosWasm.ICodec<_Ros2Flexiv_msgsMsgGPIOStates>
    {
        public static readonly Ros2Flexiv_msgsMsgGPIOStatesCodec Instance = new Ros2Flexiv_msgsMsgGPIOStatesCodec();

        private Ros2Flexiv_msgsMsgGPIOStatesCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "flexiv_msgs/msg/GPIOStates";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_befebf3e30b73f80820c51af2339e0c5a86bef6b155f42fd538540c3fbbd7b14";
        public const int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 68;

        public byte[] Encode(_Ros2Flexiv_msgsMsgGPIOStates value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Flexiv_msgsMsgGPIOStates(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Flexiv_msgsMsgGPIOStates Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Flexiv_msgsMsgGPIOStates value = ReadRos2Flexiv_msgsMsgGPIOStates(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Flexiv_msgsMsgGPIOStates(_Codecs.Writer writer, _Ros2Flexiv_msgsMsgGPIOStates value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Flexiv_msgsMsgDigital[] part0 = value.@states;
        if(part0 == null || part0.Length > 32)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part0.Length, 4);
        for(int index = 0; index < part0.Length; ++index)
        {
            _Ros2Flexiv_msgsMsgDigital element = part0[index];
            WriteRos2Flexiv_msgsMsgDigital(writer, element);
        }
    }

    private static _Ros2Flexiv_msgsMsgGPIOStates ReadRos2Flexiv_msgsMsgGPIOStates(_Codecs.Reader reader)
    {
        var value = new _Ros2Flexiv_msgsMsgGPIOStates();
        value.@states = new _Ros2Flexiv_msgsMsgDigital[ReadCount(reader, 32, 2)];
        for(int index = 0; index < value.@states.Length; ++index)
            value.@states[index] = ReadRos2Flexiv_msgsMsgDigital(reader);
        return value;
    }

    // @brief Own every original field of flexiv_msgs/msg/JointPosVel.
    // @details Canonical extent 8..520 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public sealed class _Ros2Flexiv_msgsMsgJointPosVel
    {
        /**
         * @brief Retain the complete original float64 field.
         * @details Original flexiv_msgs/msg/JointPosVel.positions; native type float64. At most 32 elements.
         * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
         * no ROS resource.
         */
        public double[] @positions = new double[0];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original flexiv_msgs/msg/JointPosVel.velocities; native type float64. At most 32 elements.
         * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
         * no ROS resource.
         */
        public double[] @velocities = new double[0];

        public _Ros2Flexiv_msgsMsgJointPosVel()
        {
        }
    }

    public sealed class Ros2Flexiv_msgsMsgJointPosVelCodec : global::Uwvm.RosWasm.ICodec<_Ros2Flexiv_msgsMsgJointPosVel>
    {
        public static readonly Ros2Flexiv_msgsMsgJointPosVelCodec Instance = new Ros2Flexiv_msgsMsgJointPosVelCodec();

        private Ros2Flexiv_msgsMsgJointPosVelCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "flexiv_msgs/msg/JointPosVel";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_ab1060b13eacca41febd2b58a61f0b93df867a9d6579b4f2b43bf5280f2df4ca";
        public const int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 520;

        public byte[] Encode(_Ros2Flexiv_msgsMsgJointPosVel value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Flexiv_msgsMsgJointPosVel(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Flexiv_msgsMsgJointPosVel Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Flexiv_msgsMsgJointPosVel value = ReadRos2Flexiv_msgsMsgJointPosVel(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Flexiv_msgsMsgJointPosVel(_Codecs.Writer writer, _Ros2Flexiv_msgsMsgJointPosVel value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        double[] part0 = value.@positions;
        if(part0 == null || part0.Length > 32)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part0.Length, 4);
        for(int index = 0; index < part0.Length; ++index)
        {
            double element = part0[index];
            writer.Float64(element);
        }
        double[] part1 = value.@velocities;
        if(part1 == null || part1.Length > 32)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part1.Length, 4);
        for(int index = 0; index < part1.Length; ++index)
        {
            double element = part1[index];
            writer.Float64(element);
        }
    }

    private static _Ros2Flexiv_msgsMsgJointPosVel ReadRos2Flexiv_msgsMsgJointPosVel(_Codecs.Reader reader)
    {
        var value = new _Ros2Flexiv_msgsMsgJointPosVel();
        value.@positions = new double[ReadCount(reader, 32, 8)];
        for(int index = 0; index < value.@positions.Length; ++index)
            value.@positions[index] = reader.Float64();
        value.@velocities = new double[ReadCount(reader, 32, 8)];
        for(int index = 0; index < value.@velocities.Length; ++index)
            value.@velocities[index] = reader.Float64();
        return value;
    }

    // @brief Own every original field of flexiv_msgs/msg/Mode.
    // @details Canonical extent 1..1 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public sealed class _Ros2Flexiv_msgsMsgMode
    {
        /**
         * @brief Retain the complete original int8 field.
         * @details Original flexiv_msgs/msg/Mode.mode; native type int8. Scalar value. Storage belongs to the
         * complete value and acquires no ROS resource.
         */
        public sbyte @mode = 0;

        public _Ros2Flexiv_msgsMsgMode()
        {
        }
    }

    public sealed class Ros2Flexiv_msgsMsgModeCodec : global::Uwvm.RosWasm.ICodec<_Ros2Flexiv_msgsMsgMode>
    {
        public static readonly Ros2Flexiv_msgsMsgModeCodec Instance = new Ros2Flexiv_msgsMsgModeCodec();

        private Ros2Flexiv_msgsMsgModeCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "flexiv_msgs/msg/Mode";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_cccac829b8021d3eed69844ee81fbef0b785486d73a16ac212fd38b8100eb6d6";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros2Flexiv_msgsMsgMode value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Flexiv_msgsMsgMode(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Flexiv_msgsMsgMode Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Flexiv_msgsMsgMode value = ReadRos2Flexiv_msgsMsgMode(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Flexiv_msgsMsgMode(_Codecs.Writer writer, _Ros2Flexiv_msgsMsgMode value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        sbyte part0 = value.@mode;
        writer.Unsigned(unchecked((byte)part0), 1);
    }

    private static _Ros2Flexiv_msgsMsgMode ReadRos2Flexiv_msgsMsgMode(_Codecs.Reader reader)
    {
        var value = new _Ros2Flexiv_msgsMsgMode();
        value.@mode = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    // @brief Own every original field of std_msgs/msg/Header.
    // @details Canonical extent 12..268 bytes. Native type identity is independent; constructing a value
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
         * @details Original std_msgs/msg/Header.frame_id; native type string. Scalar value. UTF-8 capacity 256
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
        public const string CODEC_IDENTITY = "UWVMROS1_2f4f374a97a14337b36f87987a2c2fe2fba6dc9597fa4455029ba3bef65c1c2b";
        public const int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 268;

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
        WriteText(writer, part1, 256);
    }

    private static _Ros2Std_msgsMsgHeader ReadRos2Std_msgsMsgHeader(_Codecs.Reader reader)
    {
        var value = new _Ros2Std_msgsMsgHeader();
        value.@stamp = ReadRos2Builtin_interfacesMsgTime(reader);
        value.@frame_id = ReadText(reader, 256);
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
    // @details Canonical extent 68..324 bytes. Native type identity is independent; constructing a value
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
        public const string CODEC_IDENTITY = "UWVMROS1_a8495b0ebccf56849f2c0f798064894dde7c4eb15988d22b3a684a9fd18d05ad";
        public const int MIN_WIRE_BYTES = 68, MAX_WIRE_BYTES = 324;

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
    // @details Canonical extent 60..316 bytes. Native type identity is independent; constructing a value
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
        public const string CODEC_IDENTITY = "UWVMROS1_e26c5749f60e59245f541ae7c9d66b0d5fc47eef38fa163338aa39316751e308";
        public const int MIN_WIRE_BYTES = 60, MAX_WIRE_BYTES = 316;

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
    // @details Canonical extent 60..316 bytes. Native type identity is independent; constructing a value
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
        public const string CODEC_IDENTITY = "UWVMROS1_b9573c0cc3e84b6782f303e91813d65244f61e9f58639477158795d710127177";
        public const int MIN_WIRE_BYTES = 60, MAX_WIRE_BYTES = 316;

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

    // @brief Own every original field of flexiv_msgs/msg/RobotStates.
    // @details Canonical extent 552..5160 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public sealed class _Ros2Flexiv_msgsMsgRobotStates
    {
        /**
         * @brief Header
         * @details Original flexiv_msgs/msg/RobotStates.header; native type std_msgs/msg/Header. Scalar value.
         * Storage belongs to the complete value and acquires no ROS resource.
         */
        public _Ros2Std_msgsMsgHeader @header = new _Ros2Std_msgsMsgHeader();
        /**
         * @brief Robot system timestamp
         * @details Original flexiv_msgs/msg/RobotStates.robot_timestamp; native type
         * builtin_interfaces/msg/Time. Scalar value. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public _Ros2Builtin_interfacesMsgTime @robot_timestamp = new _Ros2Builtin_interfacesMsgTime();
        /**
         * @brief Measured joint positions using link-side encoder
         * @details Original flexiv_msgs/msg/RobotStates.q; native type float64. At most 32 elements. Finite
         * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double[] @q = new double[0];
        /**
         * @brief Measured joint positions using motor-side encoder
         * @details Original flexiv_msgs/msg/RobotStates.theta; native type float64. At most 32 elements.
         * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
         * no ROS resource.
         */
        public double[] @theta = new double[0];
        /**
         * @brief Measured joint velocities using link-side encoder
         * @details Original flexiv_msgs/msg/RobotStates.dq; native type float64. At most 32 elements. Finite
         * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double[] @dq = new double[0];
        /**
         * @brief Measured joint velocities using motor-side encoder
         * @details Original flexiv_msgs/msg/RobotStates.dtheta; native type float64. At most 32 elements.
         * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
         * no ROS resource.
         */
        public double[] @dtheta = new double[0];
        /**
         * @brief Measured joint torques
         * @details Original flexiv_msgs/msg/RobotStates.tau; native type float64. At most 32 elements. Finite
         * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double[] @tau = new double[0];
        /**
         * @brief Numerical derivative of measured joint torques
         * @details Original flexiv_msgs/msg/RobotStates.tau_dot; native type float64. At most 32 elements.
         * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
         * no ROS resource.
         */
        public double[] @tau_dot = new double[0];
        /**
         * @brief Estimated external joint torques
         * @details Original flexiv_msgs/msg/RobotStates.tau_ext; native type float64. At most 32 elements.
         * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
         * no ROS resource.
         */
        public double[] @tau_ext = new double[0];
        /**
         * @brief Estimated interaction joint torques
         * @details Original flexiv_msgs/msg/RobotStates.tau_interact; native type float64. At most 32
         * elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
         * acquires no ROS resource.
         */
        public double[] @tau_interact = new double[0];
        /**
         * @brief Measured joint temperatures
         * @details Original flexiv_msgs/msg/RobotStates.temperature; native type float64. At most 32 elements.
         * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
         * no ROS resource.
         */
        public double[] @temperature = new double[0];
        /**
         * @brief Measured TCP pose expressed in world frame
         * @details Original flexiv_msgs/msg/RobotStates.tcp_pose; native type geometry_msgs/msg/PoseStamped.
         * Scalar value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public _Ros2Geometry_msgsMsgPoseStamped @tcp_pose = new _Ros2Geometry_msgsMsgPoseStamped();
        /**
         * @brief Measured TCP twist expressed in world frame
         * @details Original flexiv_msgs/msg/RobotStates.tcp_twist; native type geometry_msgs/msg/TwistStamped.
         * Scalar value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public _Ros2Geometry_msgsMsgTwistStamped @tcp_twist = new _Ros2Geometry_msgsMsgTwistStamped();
        /**
         * @brief Measured flange pose expressed in world frame
         * @details Original flexiv_msgs/msg/RobotStates.flange_pose; native type
         * geometry_msgs/msg/PoseStamped. Scalar value. Storage belongs to the complete value and acquires no
         * ROS resource.
         */
        public _Ros2Geometry_msgsMsgPoseStamped @flange_pose = new _Ros2Geometry_msgsMsgPoseStamped();
        /**
         * @brief Raw force-torque (FT) sensor reading in flange frame
         * @details Original flexiv_msgs/msg/RobotStates.raw_ft_sensor; native type
         * geometry_msgs/msg/WrenchStamped. Scalar value. Storage belongs to the complete value and acquires no
         * ROS resource.
         */
        public _Ros2Geometry_msgsMsgWrenchStamped @raw_ft_sensor = new _Ros2Geometry_msgsMsgWrenchStamped();
        /**
         * @brief Estimated external wrench applied on TCP and expressed in TCP frame
         * @details Original flexiv_msgs/msg/RobotStates.tcp_wrench_local; native type
         * geometry_msgs/msg/WrenchStamped. Scalar value. Storage belongs to the complete value and acquires no
         * ROS resource.
         */
        public _Ros2Geometry_msgsMsgWrenchStamped @tcp_wrench_local = new _Ros2Geometry_msgsMsgWrenchStamped();
        /**
         * @brief Estimated external wrench applied on TCP and expressed in world frame
         * @details Original flexiv_msgs/msg/RobotStates.tcp_wrench; native type
         * geometry_msgs/msg/WrenchStamped. Scalar value. Storage belongs to the complete value and acquires no
         * ROS resource.
         */
        public _Ros2Geometry_msgsMsgWrenchStamped @tcp_wrench = new _Ros2Geometry_msgsMsgWrenchStamped();
        /**
         * @brief Unfiltered external wrench applied on TCP and expressed in TCP frame
         * @details Original flexiv_msgs/msg/RobotStates.raw_tcp_wrench_local; native type
         * geometry_msgs/msg/WrenchStamped. Scalar value. Storage belongs to the complete value and acquires no
         * ROS resource.
         */
        public _Ros2Geometry_msgsMsgWrenchStamped @raw_tcp_wrench_local = new _Ros2Geometry_msgsMsgWrenchStamped();
        /**
         * @brief Unfiltered external wrench applied on TCP and expressed in world frame
         * @details Original flexiv_msgs/msg/RobotStates.raw_tcp_wrench; native type
         * geometry_msgs/msg/WrenchStamped. Scalar value. Storage belongs to the complete value and acquires no
         * ROS resource.
         */
        public _Ros2Geometry_msgsMsgWrenchStamped @raw_tcp_wrench = new _Ros2Geometry_msgsMsgWrenchStamped();

        public _Ros2Flexiv_msgsMsgRobotStates()
        {
        }
    }

    public sealed class Ros2Flexiv_msgsMsgRobotStatesCodec : global::Uwvm.RosWasm.ICodec<_Ros2Flexiv_msgsMsgRobotStates>
    {
        public static readonly Ros2Flexiv_msgsMsgRobotStatesCodec Instance = new Ros2Flexiv_msgsMsgRobotStatesCodec();

        private Ros2Flexiv_msgsMsgRobotStatesCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "flexiv_msgs/msg/RobotStates";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_3faeb145bd2ce50b6478e44c55400cc484e619eb66783f56a4a0801d51af708a";
        public const int MIN_WIRE_BYTES = 552, MAX_WIRE_BYTES = 5160;

        public byte[] Encode(_Ros2Flexiv_msgsMsgRobotStates value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Flexiv_msgsMsgRobotStates(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Flexiv_msgsMsgRobotStates Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Flexiv_msgsMsgRobotStates value = ReadRos2Flexiv_msgsMsgRobotStates(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Flexiv_msgsMsgRobotStates(_Codecs.Writer writer, _Ros2Flexiv_msgsMsgRobotStates value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Std_msgsMsgHeader part0 = value.@header;
        WriteRos2Std_msgsMsgHeader(writer, part0);
        _Ros2Builtin_interfacesMsgTime part1 = value.@robot_timestamp;
        WriteRos2Builtin_interfacesMsgTime(writer, part1);
        double[] part2 = value.@q;
        if(part2 == null || part2.Length > 32)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part2.Length, 4);
        for(int index = 0; index < part2.Length; ++index)
        {
            double element = part2[index];
            writer.Float64(element);
        }
        double[] part3 = value.@theta;
        if(part3 == null || part3.Length > 32)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part3.Length, 4);
        for(int index = 0; index < part3.Length; ++index)
        {
            double element = part3[index];
            writer.Float64(element);
        }
        double[] part4 = value.@dq;
        if(part4 == null || part4.Length > 32)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part4.Length, 4);
        for(int index = 0; index < part4.Length; ++index)
        {
            double element = part4[index];
            writer.Float64(element);
        }
        double[] part5 = value.@dtheta;
        if(part5 == null || part5.Length > 32)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part5.Length, 4);
        for(int index = 0; index < part5.Length; ++index)
        {
            double element = part5[index];
            writer.Float64(element);
        }
        double[] part6 = value.@tau;
        if(part6 == null || part6.Length > 32)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part6.Length, 4);
        for(int index = 0; index < part6.Length; ++index)
        {
            double element = part6[index];
            writer.Float64(element);
        }
        double[] part7 = value.@tau_dot;
        if(part7 == null || part7.Length > 32)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part7.Length, 4);
        for(int index = 0; index < part7.Length; ++index)
        {
            double element = part7[index];
            writer.Float64(element);
        }
        double[] part8 = value.@tau_ext;
        if(part8 == null || part8.Length > 32)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part8.Length, 4);
        for(int index = 0; index < part8.Length; ++index)
        {
            double element = part8[index];
            writer.Float64(element);
        }
        double[] part9 = value.@tau_interact;
        if(part9 == null || part9.Length > 32)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part9.Length, 4);
        for(int index = 0; index < part9.Length; ++index)
        {
            double element = part9[index];
            writer.Float64(element);
        }
        double[] part10 = value.@temperature;
        if(part10 == null || part10.Length > 32)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part10.Length, 4);
        for(int index = 0; index < part10.Length; ++index)
        {
            double element = part10[index];
            writer.Float64(element);
        }
        _Ros2Geometry_msgsMsgPoseStamped part11 = value.@tcp_pose;
        WriteRos2Geometry_msgsMsgPoseStamped(writer, part11);
        _Ros2Geometry_msgsMsgTwistStamped part12 = value.@tcp_twist;
        WriteRos2Geometry_msgsMsgTwistStamped(writer, part12);
        _Ros2Geometry_msgsMsgPoseStamped part13 = value.@flange_pose;
        WriteRos2Geometry_msgsMsgPoseStamped(writer, part13);
        _Ros2Geometry_msgsMsgWrenchStamped part14 = value.@raw_ft_sensor;
        WriteRos2Geometry_msgsMsgWrenchStamped(writer, part14);
        _Ros2Geometry_msgsMsgWrenchStamped part15 = value.@tcp_wrench_local;
        WriteRos2Geometry_msgsMsgWrenchStamped(writer, part15);
        _Ros2Geometry_msgsMsgWrenchStamped part16 = value.@tcp_wrench;
        WriteRos2Geometry_msgsMsgWrenchStamped(writer, part16);
        _Ros2Geometry_msgsMsgWrenchStamped part17 = value.@raw_tcp_wrench_local;
        WriteRos2Geometry_msgsMsgWrenchStamped(writer, part17);
        _Ros2Geometry_msgsMsgWrenchStamped part18 = value.@raw_tcp_wrench;
        WriteRos2Geometry_msgsMsgWrenchStamped(writer, part18);
    }

    private static _Ros2Flexiv_msgsMsgRobotStates ReadRos2Flexiv_msgsMsgRobotStates(_Codecs.Reader reader)
    {
        var value = new _Ros2Flexiv_msgsMsgRobotStates();
        value.@header = ReadRos2Std_msgsMsgHeader(reader);
        value.@robot_timestamp = ReadRos2Builtin_interfacesMsgTime(reader);
        value.@q = new double[ReadCount(reader, 32, 8)];
        for(int index = 0; index < value.@q.Length; ++index)
            value.@q[index] = reader.Float64();
        value.@theta = new double[ReadCount(reader, 32, 8)];
        for(int index = 0; index < value.@theta.Length; ++index)
            value.@theta[index] = reader.Float64();
        value.@dq = new double[ReadCount(reader, 32, 8)];
        for(int index = 0; index < value.@dq.Length; ++index)
            value.@dq[index] = reader.Float64();
        value.@dtheta = new double[ReadCount(reader, 32, 8)];
        for(int index = 0; index < value.@dtheta.Length; ++index)
            value.@dtheta[index] = reader.Float64();
        value.@tau = new double[ReadCount(reader, 32, 8)];
        for(int index = 0; index < value.@tau.Length; ++index)
            value.@tau[index] = reader.Float64();
        value.@tau_dot = new double[ReadCount(reader, 32, 8)];
        for(int index = 0; index < value.@tau_dot.Length; ++index)
            value.@tau_dot[index] = reader.Float64();
        value.@tau_ext = new double[ReadCount(reader, 32, 8)];
        for(int index = 0; index < value.@tau_ext.Length; ++index)
            value.@tau_ext[index] = reader.Float64();
        value.@tau_interact = new double[ReadCount(reader, 32, 8)];
        for(int index = 0; index < value.@tau_interact.Length; ++index)
            value.@tau_interact[index] = reader.Float64();
        value.@temperature = new double[ReadCount(reader, 32, 8)];
        for(int index = 0; index < value.@temperature.Length; ++index)
            value.@temperature[index] = reader.Float64();
        value.@tcp_pose = ReadRos2Geometry_msgsMsgPoseStamped(reader);
        value.@tcp_twist = ReadRos2Geometry_msgsMsgTwistStamped(reader);
        value.@flange_pose = ReadRos2Geometry_msgsMsgPoseStamped(reader);
        value.@raw_ft_sensor = ReadRos2Geometry_msgsMsgWrenchStamped(reader);
        value.@tcp_wrench_local = ReadRos2Geometry_msgsMsgWrenchStamped(reader);
        value.@tcp_wrench = ReadRos2Geometry_msgsMsgWrenchStamped(reader);
        value.@raw_tcp_wrench_local = ReadRos2Geometry_msgsMsgWrenchStamped(reader);
        value.@raw_tcp_wrench = ReadRos2Geometry_msgsMsgWrenchStamped(reader);
        return value;
    }
}
