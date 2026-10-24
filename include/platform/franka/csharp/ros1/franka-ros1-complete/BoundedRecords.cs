// @brief Complete original franka ros1 canonical values.
// @details UTF-8 limits count bytes and sequence limits count elements. Complete-value codecs retain
// every original field; native registration and manually granted ROS authority are separate. Caller-
// owned values and codec failures are described by each operation and the locale API reference.
// Generated complete canonical records; no native ABI, CDR or ROS grant.
#nullable enable
using System;
using _Codecs = global::Uwvm.RosWasm.Codecs;
namespace Uwvm.Franka.ros1;

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

    // @brief Own every original field of franka_example_controllers/JointTorqueComparison.
    // @details Canonical extent 176..176 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public sealed class _Ros1Franka_example_controllersJointTorqueComparison
    {
        /**
         * @brief Retain the complete original float64 field.
         * @details Original franka_example_controllers/JointTorqueComparison.tau_error; native type float64.
         * Exactly 7 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete
         * value and acquires no ROS resource.
         */
        public double[] @tau_error = new double[7];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original franka_example_controllers/JointTorqueComparison.tau_commanded; native type
         * float64. Exactly 7 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the
         * complete value and acquires no ROS resource.
         */
        public double[] @tau_commanded = new double[7];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original franka_example_controllers/JointTorqueComparison.tau_measured; native type
         * float64. Exactly 7 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the
         * complete value and acquires no ROS resource.
         */
        public double[] @tau_measured = new double[7];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original franka_example_controllers/JointTorqueComparison.root_mean_square_error; native
         * type float64. Scalar value. Finite IEEE values; no implicit unit conversion. Storage belongs to the
         * complete value and acquires no ROS resource.
         */
        public double @root_mean_square_error = 0;

        public _Ros1Franka_example_controllersJointTorqueComparison()
        {
        }
    }

    public sealed class Ros1Franka_example_controllersJointTorqueComparisonCodec :
        global::Uwvm.RosWasm.ICodec<_Ros1Franka_example_controllersJointTorqueComparison>
    {
        public static readonly Ros1Franka_example_controllersJointTorqueComparisonCodec Instance =
            new Ros1Franka_example_controllersJointTorqueComparisonCodec();

        private Ros1Franka_example_controllersJointTorqueComparisonCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "franka_example_controllers/JointTorqueComparison";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_dde6eaf404002642e64af59eb5367948b00bc07c0b2fd8a57e359e9df3084254";
        public const int MIN_WIRE_BYTES = 176, MAX_WIRE_BYTES = 176;

        public byte[] Encode(_Ros1Franka_example_controllersJointTorqueComparison value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Franka_example_controllersJointTorqueComparison(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Franka_example_controllersJointTorqueComparison Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Franka_example_controllersJointTorqueComparison value = ReadRos1Franka_example_controllersJointTorqueComparison(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Franka_example_controllersJointTorqueComparison(_Codecs.Writer writer,
                                                                                 _Ros1Franka_example_controllersJointTorqueComparison value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        double[] part0 = value.@tau_error;
        if(part0 == null || part0.Length != 7)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part0.Length; ++index)
        {
            double element = part0[index];
            writer.Float64(element);
        }
        double[] part1 = value.@tau_commanded;
        if(part1 == null || part1.Length != 7)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part1.Length; ++index)
        {
            double element = part1[index];
            writer.Float64(element);
        }
        double[] part2 = value.@tau_measured;
        if(part2 == null || part2.Length != 7)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part2.Length; ++index)
        {
            double element = part2[index];
            writer.Float64(element);
        }
        double part3 = value.@root_mean_square_error;
        writer.Float64(part3);
    }

    private static _Ros1Franka_example_controllersJointTorqueComparison ReadRos1Franka_example_controllersJointTorqueComparison(_Codecs.Reader reader)
    {
        var value = new _Ros1Franka_example_controllersJointTorqueComparison();
        value.@tau_error = new double[7];
        for(int index = 0; index < value.@tau_error.Length; ++index)
            value.@tau_error[index] = reader.Float64();
        value.@tau_commanded = new double[7];
        for(int index = 0; index < value.@tau_commanded.Length; ++index)
            value.@tau_commanded[index] = reader.Float64();
        value.@tau_measured = new double[7];
        for(int index = 0; index < value.@tau_measured.Length; ++index)
            value.@tau_measured[index] = reader.Float64();
        value.@root_mean_square_error = reader.Float64();
        return value;
    }

    // @brief Own every original field of franka_gripper/GraspEpsilon.
    // @details Canonical extent 16..16 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public sealed class _Ros1Franka_gripperGraspEpsilon
    {
        /**
         * @brief [m]
         * @details Original franka_gripper/GraspEpsilon.inner; native type float64. Scalar value. Finite IEEE
         * values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double @inner = 0;
        /**
         * @brief [m]
         * @details Original franka_gripper/GraspEpsilon.outer; native type float64. Scalar value. Finite IEEE
         * values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double @outer = 0;

        public _Ros1Franka_gripperGraspEpsilon()
        {
        }
    }

    public sealed class Ros1Franka_gripperGraspEpsilonCodec : global::Uwvm.RosWasm.ICodec<_Ros1Franka_gripperGraspEpsilon>
    {
        public static readonly Ros1Franka_gripperGraspEpsilonCodec Instance = new Ros1Franka_gripperGraspEpsilonCodec();

        private Ros1Franka_gripperGraspEpsilonCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "franka_gripper/GraspEpsilon";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_538ac801e9874841f232909d2d9a16893a8d29c8380cd623c00c408690f978f9";
        public const int MIN_WIRE_BYTES = 16, MAX_WIRE_BYTES = 16;

        public byte[] Encode(_Ros1Franka_gripperGraspEpsilon value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Franka_gripperGraspEpsilon(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Franka_gripperGraspEpsilon Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Franka_gripperGraspEpsilon value = ReadRos1Franka_gripperGraspEpsilon(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Franka_gripperGraspEpsilon(_Codecs.Writer writer, _Ros1Franka_gripperGraspEpsilon value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        double part0 = value.@inner;
        writer.Float64(part0);
        double part1 = value.@outer;
        writer.Float64(part1);
    }

    private static _Ros1Franka_gripperGraspEpsilon ReadRos1Franka_gripperGraspEpsilon(_Codecs.Reader reader)
    {
        var value = new _Ros1Franka_gripperGraspEpsilon();
        value.@inner = reader.Float64();
        value.@outer = reader.Float64();
        return value;
    }

    // @brief Own every original field of franka_gripper/GraspGoal.
    // @details Canonical extent 40..40 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public sealed class _Ros1Franka_gripperGraspGoal
    {
        /**
         * @brief [m]
         * @details Original franka_gripper/GraspGoal.width; native type float64. Scalar value. Finite IEEE
         * values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double @width = 0;
        /**
         * @brief Retain the complete original franka_gripper/GraspEpsilon field.
         * @details Original franka_gripper/GraspGoal.epsilon; native type franka_gripper/GraspEpsilon. Scalar
         * value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public _Ros1Franka_gripperGraspEpsilon @epsilon = new _Ros1Franka_gripperGraspEpsilon();
        /**
         * @brief [m/s]
         * @details Original franka_gripper/GraspGoal.speed; native type float64. Scalar value. Finite IEEE
         * values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double @speed = 0;
        /**
         * @brief [N]
         * @details Original franka_gripper/GraspGoal.force; native type float64. Scalar value. Finite IEEE
         * values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double @force = 0;

        public _Ros1Franka_gripperGraspGoal()
        {
        }
    }

    public sealed class Ros1Franka_gripperGraspGoalCodec : global::Uwvm.RosWasm.ICodec<_Ros1Franka_gripperGraspGoal>
    {
        public static readonly Ros1Franka_gripperGraspGoalCodec Instance = new Ros1Franka_gripperGraspGoalCodec();

        private Ros1Franka_gripperGraspGoalCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "franka_gripper/GraspGoal";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_d3dd0d3f47e49e06a95d907a6219335b35234749518ab645e102257595ed7bcf";
        public const int MIN_WIRE_BYTES = 40, MAX_WIRE_BYTES = 40;

        public byte[] Encode(_Ros1Franka_gripperGraspGoal value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Franka_gripperGraspGoal(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Franka_gripperGraspGoal Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Franka_gripperGraspGoal value = ReadRos1Franka_gripperGraspGoal(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Franka_gripperGraspGoal(_Codecs.Writer writer, _Ros1Franka_gripperGraspGoal value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        double part0 = value.@width;
        writer.Float64(part0);
        _Ros1Franka_gripperGraspEpsilon part1 = value.@epsilon;
        WriteRos1Franka_gripperGraspEpsilon(writer, part1);
        double part2 = value.@speed;
        writer.Float64(part2);
        double part3 = value.@force;
        writer.Float64(part3);
    }

    private static _Ros1Franka_gripperGraspGoal ReadRos1Franka_gripperGraspGoal(_Codecs.Reader reader)
    {
        var value = new _Ros1Franka_gripperGraspGoal();
        value.@width = reader.Float64();
        value.@epsilon = ReadRos1Franka_gripperGraspEpsilon(reader);
        value.@speed = reader.Float64();
        value.@force = reader.Float64();
        return value;
    }

    // @brief Own every original field of franka_gripper/GraspResult.
    // @details Canonical extent 5..261 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public sealed class _Ros1Franka_gripperGraspResult
    {
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_gripper/GraspResult.success; native type bool. Scalar value. Storage
         * belongs to the complete value and acquires no ROS resource.
         */
        public bool @success = false;
        /**
         * @brief Retain the complete original string field.
         * @details Original franka_gripper/GraspResult.error; native type string. Scalar value. UTF-8 capacity
         * 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS resource.
         */
        public string @error = "";

        public _Ros1Franka_gripperGraspResult()
        {
        }
    }

    public sealed class Ros1Franka_gripperGraspResultCodec : global::Uwvm.RosWasm.ICodec<_Ros1Franka_gripperGraspResult>
    {
        public static readonly Ros1Franka_gripperGraspResultCodec Instance = new Ros1Franka_gripperGraspResultCodec();

        private Ros1Franka_gripperGraspResultCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "franka_gripper/GraspResult";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_9ce1e4f95f16fd6c1603f0b30a9fcc33e4f8436cdb96710ea91eb20b38a1e02e";
        public const int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 261;

        public byte[] Encode(_Ros1Franka_gripperGraspResult value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Franka_gripperGraspResult(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Franka_gripperGraspResult Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Franka_gripperGraspResult value = ReadRos1Franka_gripperGraspResult(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Franka_gripperGraspResult(_Codecs.Writer writer, _Ros1Franka_gripperGraspResult value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
        string part1 = value.@error;
        WriteText(writer, part1, 256);
    }

    private static _Ros1Franka_gripperGraspResult ReadRos1Franka_gripperGraspResult(_Codecs.Reader reader)
    {
        var value = new _Ros1Franka_gripperGraspResult();
        value.@success = ReadBool(reader);
        value.@error = ReadText(reader, 256);
        return value;
    }

    // @brief Own every original field of franka_gripper/GraspFeedback.
    // @details Canonical extent 0..0 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public sealed class _Ros1Franka_gripperGraspFeedback
    {
        public _Ros1Franka_gripperGraspFeedback()
        {
        }
    }

    public sealed class Ros1Franka_gripperGraspFeedbackCodec : global::Uwvm.RosWasm.ICodec<_Ros1Franka_gripperGraspFeedback>
    {
        public static readonly Ros1Franka_gripperGraspFeedbackCodec Instance = new Ros1Franka_gripperGraspFeedbackCodec();

        private Ros1Franka_gripperGraspFeedbackCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "franka_gripper/GraspFeedback";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_24ca23625df0bd9fb984e65c8ecd7a3af162a3db00c15951225df5e18d3a4d0d";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public byte[] Encode(_Ros1Franka_gripperGraspFeedback value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Franka_gripperGraspFeedback(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Franka_gripperGraspFeedback Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Franka_gripperGraspFeedback value = ReadRos1Franka_gripperGraspFeedback(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Franka_gripperGraspFeedback(_Codecs.Writer writer, _Ros1Franka_gripperGraspFeedback value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    private static _Ros1Franka_gripperGraspFeedback ReadRos1Franka_gripperGraspFeedback(_Codecs.Reader reader)
    {
        var value = new _Ros1Franka_gripperGraspFeedback();
        return value;
    }

    // @brief Own every original field of franka_gripper/HomingGoal.
    // @details Canonical extent 0..0 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public sealed class _Ros1Franka_gripperHomingGoal
    {
        public _Ros1Franka_gripperHomingGoal()
        {
        }
    }

    public sealed class Ros1Franka_gripperHomingGoalCodec : global::Uwvm.RosWasm.ICodec<_Ros1Franka_gripperHomingGoal>
    {
        public static readonly Ros1Franka_gripperHomingGoalCodec Instance = new Ros1Franka_gripperHomingGoalCodec();

        private Ros1Franka_gripperHomingGoalCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "franka_gripper/HomingGoal";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_4b4f861fa9ff44afda4217cf613720e90353b0d43c1fc3425d5937157353910f";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public byte[] Encode(_Ros1Franka_gripperHomingGoal value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Franka_gripperHomingGoal(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Franka_gripperHomingGoal Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Franka_gripperHomingGoal value = ReadRos1Franka_gripperHomingGoal(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Franka_gripperHomingGoal(_Codecs.Writer writer, _Ros1Franka_gripperHomingGoal value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    private static _Ros1Franka_gripperHomingGoal ReadRos1Franka_gripperHomingGoal(_Codecs.Reader reader)
    {
        var value = new _Ros1Franka_gripperHomingGoal();
        return value;
    }

    // @brief Own every original field of franka_gripper/HomingResult.
    // @details Canonical extent 5..261 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public sealed class _Ros1Franka_gripperHomingResult
    {
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_gripper/HomingResult.success; native type bool. Scalar value. Storage
         * belongs to the complete value and acquires no ROS resource.
         */
        public bool @success = false;
        /**
         * @brief Retain the complete original string field.
         * @details Original franka_gripper/HomingResult.error; native type string. Scalar value. UTF-8
         * capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public string @error = "";

        public _Ros1Franka_gripperHomingResult()
        {
        }
    }

    public sealed class Ros1Franka_gripperHomingResultCodec : global::Uwvm.RosWasm.ICodec<_Ros1Franka_gripperHomingResult>
    {
        public static readonly Ros1Franka_gripperHomingResultCodec Instance = new Ros1Franka_gripperHomingResultCodec();

        private Ros1Franka_gripperHomingResultCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "franka_gripper/HomingResult";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_1ddf202b4e7dbf100d304b4eb32aa0ce8dca6ffadcf720820f2d7932af056477";
        public const int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 261;

        public byte[] Encode(_Ros1Franka_gripperHomingResult value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Franka_gripperHomingResult(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Franka_gripperHomingResult Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Franka_gripperHomingResult value = ReadRos1Franka_gripperHomingResult(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Franka_gripperHomingResult(_Codecs.Writer writer, _Ros1Franka_gripperHomingResult value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
        string part1 = value.@error;
        WriteText(writer, part1, 256);
    }

    private static _Ros1Franka_gripperHomingResult ReadRos1Franka_gripperHomingResult(_Codecs.Reader reader)
    {
        var value = new _Ros1Franka_gripperHomingResult();
        value.@success = ReadBool(reader);
        value.@error = ReadText(reader, 256);
        return value;
    }

    // @brief Own every original field of franka_gripper/HomingFeedback.
    // @details Canonical extent 0..0 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public sealed class _Ros1Franka_gripperHomingFeedback
    {
        public _Ros1Franka_gripperHomingFeedback()
        {
        }
    }

    public sealed class Ros1Franka_gripperHomingFeedbackCodec : global::Uwvm.RosWasm.ICodec<_Ros1Franka_gripperHomingFeedback>
    {
        public static readonly Ros1Franka_gripperHomingFeedbackCodec Instance = new Ros1Franka_gripperHomingFeedbackCodec();

        private Ros1Franka_gripperHomingFeedbackCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "franka_gripper/HomingFeedback";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_4a1118d8ab544b2bc99ff878356aae49b4d3ecb4cb5ba7e2f93f7c0c7a29512e";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public byte[] Encode(_Ros1Franka_gripperHomingFeedback value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Franka_gripperHomingFeedback(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Franka_gripperHomingFeedback Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Franka_gripperHomingFeedback value = ReadRos1Franka_gripperHomingFeedback(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Franka_gripperHomingFeedback(_Codecs.Writer writer, _Ros1Franka_gripperHomingFeedback value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    private static _Ros1Franka_gripperHomingFeedback ReadRos1Franka_gripperHomingFeedback(_Codecs.Reader reader)
    {
        var value = new _Ros1Franka_gripperHomingFeedback();
        return value;
    }

    // @brief Own every original field of franka_gripper/MoveGoal.
    // @details Canonical extent 16..16 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public sealed class _Ros1Franka_gripperMoveGoal
    {
        /**
         * @brief [m]
         * @details Original franka_gripper/MoveGoal.width; native type float64. Scalar value. Finite IEEE
         * values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double @width = 0;
        /**
         * @brief [m/s]
         * @details Original franka_gripper/MoveGoal.speed; native type float64. Scalar value. Finite IEEE
         * values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double @speed = 0;

        public _Ros1Franka_gripperMoveGoal()
        {
        }
    }

    public sealed class Ros1Franka_gripperMoveGoalCodec : global::Uwvm.RosWasm.ICodec<_Ros1Franka_gripperMoveGoal>
    {
        public static readonly Ros1Franka_gripperMoveGoalCodec Instance = new Ros1Franka_gripperMoveGoalCodec();

        private Ros1Franka_gripperMoveGoalCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "franka_gripper/MoveGoal";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_c83296f2540854e78cc159691c229f5d50267b3fdb31789e325a55fcd7d6830a";
        public const int MIN_WIRE_BYTES = 16, MAX_WIRE_BYTES = 16;

        public byte[] Encode(_Ros1Franka_gripperMoveGoal value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Franka_gripperMoveGoal(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Franka_gripperMoveGoal Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Franka_gripperMoveGoal value = ReadRos1Franka_gripperMoveGoal(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Franka_gripperMoveGoal(_Codecs.Writer writer, _Ros1Franka_gripperMoveGoal value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        double part0 = value.@width;
        writer.Float64(part0);
        double part1 = value.@speed;
        writer.Float64(part1);
    }

    private static _Ros1Franka_gripperMoveGoal ReadRos1Franka_gripperMoveGoal(_Codecs.Reader reader)
    {
        var value = new _Ros1Franka_gripperMoveGoal();
        value.@width = reader.Float64();
        value.@speed = reader.Float64();
        return value;
    }

    // @brief Own every original field of franka_gripper/MoveResult.
    // @details Canonical extent 5..261 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public sealed class _Ros1Franka_gripperMoveResult
    {
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_gripper/MoveResult.success; native type bool. Scalar value. Storage belongs
         * to the complete value and acquires no ROS resource.
         */
        public bool @success = false;
        /**
         * @brief Retain the complete original string field.
         * @details Original franka_gripper/MoveResult.error; native type string. Scalar value. UTF-8 capacity
         * 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS resource.
         */
        public string @error = "";

        public _Ros1Franka_gripperMoveResult()
        {
        }
    }

    public sealed class Ros1Franka_gripperMoveResultCodec : global::Uwvm.RosWasm.ICodec<_Ros1Franka_gripperMoveResult>
    {
        public static readonly Ros1Franka_gripperMoveResultCodec Instance = new Ros1Franka_gripperMoveResultCodec();

        private Ros1Franka_gripperMoveResultCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "franka_gripper/MoveResult";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_527adf0720dabcc91866a0858cddfbfae1ed4203d4eb34a3965ebe085d0ac3b3";
        public const int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 261;

        public byte[] Encode(_Ros1Franka_gripperMoveResult value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Franka_gripperMoveResult(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Franka_gripperMoveResult Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Franka_gripperMoveResult value = ReadRos1Franka_gripperMoveResult(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Franka_gripperMoveResult(_Codecs.Writer writer, _Ros1Franka_gripperMoveResult value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
        string part1 = value.@error;
        WriteText(writer, part1, 256);
    }

    private static _Ros1Franka_gripperMoveResult ReadRos1Franka_gripperMoveResult(_Codecs.Reader reader)
    {
        var value = new _Ros1Franka_gripperMoveResult();
        value.@success = ReadBool(reader);
        value.@error = ReadText(reader, 256);
        return value;
    }

    // @brief Own every original field of franka_gripper/MoveFeedback.
    // @details Canonical extent 0..0 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public sealed class _Ros1Franka_gripperMoveFeedback
    {
        public _Ros1Franka_gripperMoveFeedback()
        {
        }
    }

    public sealed class Ros1Franka_gripperMoveFeedbackCodec : global::Uwvm.RosWasm.ICodec<_Ros1Franka_gripperMoveFeedback>
    {
        public static readonly Ros1Franka_gripperMoveFeedbackCodec Instance = new Ros1Franka_gripperMoveFeedbackCodec();

        private Ros1Franka_gripperMoveFeedbackCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "franka_gripper/MoveFeedback";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_8e02ca1d66ae38a5d71ca5f708aa2c57bb3df573d37b692e24986dba384c5f80";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public byte[] Encode(_Ros1Franka_gripperMoveFeedback value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Franka_gripperMoveFeedback(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Franka_gripperMoveFeedback Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Franka_gripperMoveFeedback value = ReadRos1Franka_gripperMoveFeedback(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Franka_gripperMoveFeedback(_Codecs.Writer writer, _Ros1Franka_gripperMoveFeedback value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    private static _Ros1Franka_gripperMoveFeedback ReadRos1Franka_gripperMoveFeedback(_Codecs.Reader reader)
    {
        var value = new _Ros1Franka_gripperMoveFeedback();
        return value;
    }

    // @brief Own every original field of franka_gripper/StopGoal.
    // @details Canonical extent 0..0 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public sealed class _Ros1Franka_gripperStopGoal
    {
        public _Ros1Franka_gripperStopGoal()
        {
        }
    }

    public sealed class Ros1Franka_gripperStopGoalCodec : global::Uwvm.RosWasm.ICodec<_Ros1Franka_gripperStopGoal>
    {
        public static readonly Ros1Franka_gripperStopGoalCodec Instance = new Ros1Franka_gripperStopGoalCodec();

        private Ros1Franka_gripperStopGoalCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "franka_gripper/StopGoal";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_ecb09ccc03cb2140a457a11c174a614392ce1f9263e46c5b82427a99f7ff0245";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public byte[] Encode(_Ros1Franka_gripperStopGoal value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Franka_gripperStopGoal(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Franka_gripperStopGoal Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Franka_gripperStopGoal value = ReadRos1Franka_gripperStopGoal(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Franka_gripperStopGoal(_Codecs.Writer writer, _Ros1Franka_gripperStopGoal value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    private static _Ros1Franka_gripperStopGoal ReadRos1Franka_gripperStopGoal(_Codecs.Reader reader)
    {
        var value = new _Ros1Franka_gripperStopGoal();
        return value;
    }

    // @brief Own every original field of franka_gripper/StopResult.
    // @details Canonical extent 5..261 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public sealed class _Ros1Franka_gripperStopResult
    {
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_gripper/StopResult.success; native type bool. Scalar value. Storage belongs
         * to the complete value and acquires no ROS resource.
         */
        public bool @success = false;
        /**
         * @brief Retain the complete original string field.
         * @details Original franka_gripper/StopResult.error; native type string. Scalar value. UTF-8 capacity
         * 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS resource.
         */
        public string @error = "";

        public _Ros1Franka_gripperStopResult()
        {
        }
    }

    public sealed class Ros1Franka_gripperStopResultCodec : global::Uwvm.RosWasm.ICodec<_Ros1Franka_gripperStopResult>
    {
        public static readonly Ros1Franka_gripperStopResultCodec Instance = new Ros1Franka_gripperStopResultCodec();

        private Ros1Franka_gripperStopResultCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "franka_gripper/StopResult";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_343e16d9b839b61ed8f8c1ce93005cb3a21511a220095200eb075dfb62a40c61";
        public const int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 261;

        public byte[] Encode(_Ros1Franka_gripperStopResult value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Franka_gripperStopResult(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Franka_gripperStopResult Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Franka_gripperStopResult value = ReadRos1Franka_gripperStopResult(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Franka_gripperStopResult(_Codecs.Writer writer, _Ros1Franka_gripperStopResult value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
        string part1 = value.@error;
        WriteText(writer, part1, 256);
    }

    private static _Ros1Franka_gripperStopResult ReadRos1Franka_gripperStopResult(_Codecs.Reader reader)
    {
        var value = new _Ros1Franka_gripperStopResult();
        value.@success = ReadBool(reader);
        value.@error = ReadText(reader, 256);
        return value;
    }

    // @brief Own every original field of franka_gripper/StopFeedback.
    // @details Canonical extent 0..0 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public sealed class _Ros1Franka_gripperStopFeedback
    {
        public _Ros1Franka_gripperStopFeedback()
        {
        }
    }

    public sealed class Ros1Franka_gripperStopFeedbackCodec : global::Uwvm.RosWasm.ICodec<_Ros1Franka_gripperStopFeedback>
    {
        public static readonly Ros1Franka_gripperStopFeedbackCodec Instance = new Ros1Franka_gripperStopFeedbackCodec();

        private Ros1Franka_gripperStopFeedbackCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "franka_gripper/StopFeedback";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_62b637081e95f59df491f71b0ca84394a7e1f36137ca389a8f6d0d3a0f19038d";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public byte[] Encode(_Ros1Franka_gripperStopFeedback value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Franka_gripperStopFeedback(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Franka_gripperStopFeedback Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Franka_gripperStopFeedback value = ReadRos1Franka_gripperStopFeedback(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Franka_gripperStopFeedback(_Codecs.Writer writer, _Ros1Franka_gripperStopFeedback value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    private static _Ros1Franka_gripperStopFeedback ReadRos1Franka_gripperStopFeedback(_Codecs.Reader reader)
    {
        var value = new _Ros1Franka_gripperStopFeedback();
        return value;
    }

    // @brief Own every original field of franka_msgs/ErrorRecoveryGoal.
    // @details Canonical extent 0..0 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public sealed class _Ros1Franka_msgsErrorRecoveryGoal
    {
        public _Ros1Franka_msgsErrorRecoveryGoal()
        {
        }
    }

    public sealed class Ros1Franka_msgsErrorRecoveryGoalCodec : global::Uwvm.RosWasm.ICodec<_Ros1Franka_msgsErrorRecoveryGoal>
    {
        public static readonly Ros1Franka_msgsErrorRecoveryGoalCodec Instance = new Ros1Franka_msgsErrorRecoveryGoalCodec();

        private Ros1Franka_msgsErrorRecoveryGoalCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "franka_msgs/ErrorRecoveryGoal";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_b4f11555bc4919bf59aa548bd21046bdc7b1e2ed5cce6dc46298eb7486ef7b64";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public byte[] Encode(_Ros1Franka_msgsErrorRecoveryGoal value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Franka_msgsErrorRecoveryGoal(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Franka_msgsErrorRecoveryGoal Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Franka_msgsErrorRecoveryGoal value = ReadRos1Franka_msgsErrorRecoveryGoal(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Franka_msgsErrorRecoveryGoal(_Codecs.Writer writer, _Ros1Franka_msgsErrorRecoveryGoal value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    private static _Ros1Franka_msgsErrorRecoveryGoal ReadRos1Franka_msgsErrorRecoveryGoal(_Codecs.Reader reader)
    {
        var value = new _Ros1Franka_msgsErrorRecoveryGoal();
        return value;
    }

    // @brief Own every original field of franka_msgs/ErrorRecoveryResult.
    // @details Canonical extent 0..0 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public sealed class _Ros1Franka_msgsErrorRecoveryResult
    {
        public _Ros1Franka_msgsErrorRecoveryResult()
        {
        }
    }

    public sealed class Ros1Franka_msgsErrorRecoveryResultCodec : global::Uwvm.RosWasm.ICodec<_Ros1Franka_msgsErrorRecoveryResult>
    {
        public static readonly Ros1Franka_msgsErrorRecoveryResultCodec Instance = new Ros1Franka_msgsErrorRecoveryResultCodec();

        private Ros1Franka_msgsErrorRecoveryResultCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "franka_msgs/ErrorRecoveryResult";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_6f06297f59f06dc46e3f983b72101ae3c25cd054bca44cea1f6dd11a9aaa7794";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public byte[] Encode(_Ros1Franka_msgsErrorRecoveryResult value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Franka_msgsErrorRecoveryResult(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Franka_msgsErrorRecoveryResult Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Franka_msgsErrorRecoveryResult value = ReadRos1Franka_msgsErrorRecoveryResult(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Franka_msgsErrorRecoveryResult(_Codecs.Writer writer, _Ros1Franka_msgsErrorRecoveryResult value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    private static _Ros1Franka_msgsErrorRecoveryResult ReadRos1Franka_msgsErrorRecoveryResult(_Codecs.Reader reader)
    {
        var value = new _Ros1Franka_msgsErrorRecoveryResult();
        return value;
    }

    // @brief Own every original field of franka_msgs/ErrorRecoveryFeedback.
    // @details Canonical extent 0..0 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public sealed class _Ros1Franka_msgsErrorRecoveryFeedback
    {
        public _Ros1Franka_msgsErrorRecoveryFeedback()
        {
        }
    }

    public sealed class Ros1Franka_msgsErrorRecoveryFeedbackCodec : global::Uwvm.RosWasm.ICodec<_Ros1Franka_msgsErrorRecoveryFeedback>
    {
        public static readonly Ros1Franka_msgsErrorRecoveryFeedbackCodec Instance = new Ros1Franka_msgsErrorRecoveryFeedbackCodec();

        private Ros1Franka_msgsErrorRecoveryFeedbackCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "franka_msgs/ErrorRecoveryFeedback";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_3faee6d8afdc0524598cec0fe30fd51bd723e8e44849f035368723e59be87a21";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        public byte[] Encode(_Ros1Franka_msgsErrorRecoveryFeedback value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Franka_msgsErrorRecoveryFeedback(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Franka_msgsErrorRecoveryFeedback Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Franka_msgsErrorRecoveryFeedback value = ReadRos1Franka_msgsErrorRecoveryFeedback(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Franka_msgsErrorRecoveryFeedback(_Codecs.Writer writer, _Ros1Franka_msgsErrorRecoveryFeedback value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    private static _Ros1Franka_msgsErrorRecoveryFeedback ReadRos1Franka_msgsErrorRecoveryFeedback(_Codecs.Reader reader)
    {
        var value = new _Ros1Franka_msgsErrorRecoveryFeedback();
        return value;
    }

    // @brief Own every original field of franka_msgs/Errors.
    // @details Canonical extent 41..41 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public sealed class _Ros1Franka_msgsErrors
    {
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/Errors.joint_position_limits_violation; native type bool. Scalar
         * value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public bool @joint_position_limits_violation = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/Errors.cartesian_position_limits_violation; native type bool. Scalar
         * value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public bool @cartesian_position_limits_violation = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/Errors.self_collision_avoidance_violation; native type bool. Scalar
         * value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public bool @self_collision_avoidance_violation = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/Errors.joint_velocity_violation; native type bool. Scalar value.
         * Storage belongs to the complete value and acquires no ROS resource.
         */
        public bool @joint_velocity_violation = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/Errors.cartesian_velocity_violation; native type bool. Scalar value.
         * Storage belongs to the complete value and acquires no ROS resource.
         */
        public bool @cartesian_velocity_violation = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/Errors.force_control_safety_violation; native type bool. Scalar value.
         * Storage belongs to the complete value and acquires no ROS resource.
         */
        public bool @force_control_safety_violation = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/Errors.joint_reflex; native type bool. Scalar value. Storage belongs
         * to the complete value and acquires no ROS resource.
         */
        public bool @joint_reflex = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/Errors.cartesian_reflex; native type bool. Scalar value. Storage
         * belongs to the complete value and acquires no ROS resource.
         */
        public bool @cartesian_reflex = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/Errors.max_goal_pose_deviation_violation; native type bool. Scalar
         * value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public bool @max_goal_pose_deviation_violation = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/Errors.max_path_pose_deviation_violation; native type bool. Scalar
         * value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public bool @max_path_pose_deviation_violation = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/Errors.cartesian_velocity_profile_safety_violation; native type bool.
         * Scalar value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public bool @cartesian_velocity_profile_safety_violation = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/Errors.joint_position_motion_generator_start_pose_invalid; native type
         * bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public bool @joint_position_motion_generator_start_pose_invalid = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/Errors.joint_motion_generator_position_limits_violation; native type
         * bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public bool @joint_motion_generator_position_limits_violation = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/Errors.joint_motion_generator_velocity_limits_violation; native type
         * bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public bool @joint_motion_generator_velocity_limits_violation = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/Errors.joint_motion_generator_velocity_discontinuity; native type
         * bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public bool @joint_motion_generator_velocity_discontinuity = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/Errors.joint_motion_generator_acceleration_discontinuity; native type
         * bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public bool @joint_motion_generator_acceleration_discontinuity = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/Errors.cartesian_position_motion_generator_start_pose_invalid; native
         * type bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public bool @cartesian_position_motion_generator_start_pose_invalid = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/Errors.cartesian_motion_generator_elbow_limit_violation; native type
         * bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public bool @cartesian_motion_generator_elbow_limit_violation = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/Errors.cartesian_motion_generator_velocity_limits_violation; native
         * type bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public bool @cartesian_motion_generator_velocity_limits_violation = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/Errors.cartesian_motion_generator_velocity_discontinuity; native type
         * bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public bool @cartesian_motion_generator_velocity_discontinuity = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/Errors.cartesian_motion_generator_acceleration_discontinuity; native
         * type bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public bool @cartesian_motion_generator_acceleration_discontinuity = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/Errors.cartesian_motion_generator_elbow_sign_inconsistent; native type
         * bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public bool @cartesian_motion_generator_elbow_sign_inconsistent = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/Errors.cartesian_motion_generator_start_elbow_invalid; native type
         * bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public bool @cartesian_motion_generator_start_elbow_invalid = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/Errors.cartesian_motion_generator_joint_position_limits_violation;
         * native type bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public bool @cartesian_motion_generator_joint_position_limits_violation = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/Errors.cartesian_motion_generator_joint_velocity_limits_violation;
         * native type bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public bool @cartesian_motion_generator_joint_velocity_limits_violation = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/Errors.cartesian_motion_generator_joint_velocity_discontinuity; native
         * type bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public bool @cartesian_motion_generator_joint_velocity_discontinuity = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/Errors.cartesian_motion_generator_joint_acceleration_discontinuity;
         * native type bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public bool @cartesian_motion_generator_joint_acceleration_discontinuity = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/Errors.cartesian_position_motion_generator_invalid_frame; native type
         * bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public bool @cartesian_position_motion_generator_invalid_frame = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/Errors.force_controller_desired_force_tolerance_violation; native type
         * bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public bool @force_controller_desired_force_tolerance_violation = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/Errors.controller_torque_discontinuity; native type bool. Scalar
         * value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public bool @controller_torque_discontinuity = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/Errors.start_elbow_sign_inconsistent; native type bool. Scalar value.
         * Storage belongs to the complete value and acquires no ROS resource.
         */
        public bool @start_elbow_sign_inconsistent = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/Errors.communication_constraints_violation; native type bool. Scalar
         * value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public bool @communication_constraints_violation = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/Errors.power_limit_violation; native type bool. Scalar value. Storage
         * belongs to the complete value and acquires no ROS resource.
         */
        public bool @power_limit_violation = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/Errors.joint_p2p_insufficient_torque_for_planning; native type bool.
         * Scalar value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public bool @joint_p2p_insufficient_torque_for_planning = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/Errors.tau_j_range_violation; native type bool. Scalar value. Storage
         * belongs to the complete value and acquires no ROS resource.
         */
        public bool @tau_j_range_violation = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/Errors.instability_detected; native type bool. Scalar value. Storage
         * belongs to the complete value and acquires no ROS resource.
         */
        public bool @instability_detected = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/Errors.joint_move_in_wrong_direction; native type bool. Scalar value.
         * Storage belongs to the complete value and acquires no ROS resource.
         */
        public bool @joint_move_in_wrong_direction = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/Errors.cartesian_spline_motion_generator_violation; native type bool.
         * Scalar value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public bool @cartesian_spline_motion_generator_violation = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/Errors.joint_via_motion_generator_planning_joint_limit_violation;
         * native type bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public bool @joint_via_motion_generator_planning_joint_limit_violation = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/Errors.base_acceleration_initialization_timeout; native type bool.
         * Scalar value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public bool @base_acceleration_initialization_timeout = false;
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/Errors.base_acceleration_invalid_reading; native type bool. Scalar
         * value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public bool @base_acceleration_invalid_reading = false;

        public _Ros1Franka_msgsErrors()
        {
        }
    }

    public sealed class Ros1Franka_msgsErrorsCodec : global::Uwvm.RosWasm.ICodec<_Ros1Franka_msgsErrors>
    {
        public static readonly Ros1Franka_msgsErrorsCodec Instance = new Ros1Franka_msgsErrorsCodec();

        private Ros1Franka_msgsErrorsCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "franka_msgs/Errors";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_80e3d1157d53bf80d4db3621f9f22b35a1ef665382974599ff016709c6a629ca";
        public const int MIN_WIRE_BYTES = 41, MAX_WIRE_BYTES = 41;

        public byte[] Encode(_Ros1Franka_msgsErrors value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Franka_msgsErrors(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Franka_msgsErrors Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Franka_msgsErrors value = ReadRos1Franka_msgsErrors(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Franka_msgsErrors(_Codecs.Writer writer, _Ros1Franka_msgsErrors value)
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
        bool part36 = value.@joint_move_in_wrong_direction;
        writer.Unsigned(part36 ? 1UL : 0UL, 1);
        bool part37 = value.@cartesian_spline_motion_generator_violation;
        writer.Unsigned(part37 ? 1UL : 0UL, 1);
        bool part38 = value.@joint_via_motion_generator_planning_joint_limit_violation;
        writer.Unsigned(part38 ? 1UL : 0UL, 1);
        bool part39 = value.@base_acceleration_initialization_timeout;
        writer.Unsigned(part39 ? 1UL : 0UL, 1);
        bool part40 = value.@base_acceleration_invalid_reading;
        writer.Unsigned(part40 ? 1UL : 0UL, 1);
    }

    private static _Ros1Franka_msgsErrors ReadRos1Franka_msgsErrors(_Codecs.Reader reader)
    {
        var value = new _Ros1Franka_msgsErrors();
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
        value.@joint_move_in_wrong_direction = ReadBool(reader);
        value.@cartesian_spline_motion_generator_violation = ReadBool(reader);
        value.@joint_via_motion_generator_planning_joint_limit_violation = ReadBool(reader);
        value.@base_acceleration_initialization_timeout = ReadBool(reader);
        value.@base_acceleration_invalid_reading = ReadBool(reader);
        return value;
    }

    // @brief Own every original field of time.
    // @details Canonical extent 8..8 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public sealed class _Ros1Time
    {
        /**
         * @brief Retain the complete original uint32 field.
         * @details Original time.sec; native type uint32. Scalar value. Storage belongs to the complete value
         * and acquires no ROS resource.
         */
        public uint @sec = 0;
        /**
         * @brief Retain the complete original uint32 field.
         * @details Original time.nsec; native type uint32. Scalar value. Storage belongs to the complete value
         * and acquires no ROS resource.
         */
        public uint @nsec = 0;

        public _Ros1Time()
        {
        }
    }

    public sealed class Ros1TimeCodec : global::Uwvm.RosWasm.ICodec<_Ros1Time>
    {
        public static readonly Ros1TimeCodec Instance = new Ros1TimeCodec();

        private Ros1TimeCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "time";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_90b75571d2bcc21b824eb993b485a001bf97e281adda7907e1b2e3357e4804b0";
        public const int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 8;

        public byte[] Encode(_Ros1Time value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Time(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Time Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Time value = ReadRos1Time(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Time(_Codecs.Writer writer, _Ros1Time value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        uint part0 = value.@sec;
        writer.Unsigned(part0, 4);
        uint part1 = value.@nsec;
        writer.Unsigned(part1, 4);
        if((long)part1 < 0 || (long)part1 >= 1000000000L)
            throw new ArgumentException("normalized subsecond field required");
    }

    private static _Ros1Time ReadRos1Time(_Codecs.Reader reader)
    {
        var value = new _Ros1Time();
        value.@sec = unchecked((uint)reader.Unsigned(4));
        value.@nsec = unchecked((uint)reader.Unsigned(4));
        if((long)value.@nsec < 0 || (long)value.@nsec >= 1000000000L)
            throw new ArgumentException("normalized subsecond field required");
        return value;
    }

    // @brief Own every original field of std_msgs/Header.
    // @details Canonical extent 16..144 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public sealed class _Ros1Std_msgsHeader
    {
        /**
         * @brief Standard metadata for higher-level stamped data types. This is generally used to communicate
         * timestamped data in a particular coordinate frame.  sequence ID: consecutively increasing ID
         * @details Original std_msgs/Header.seq; native type uint32. Scalar value. Storage belongs to the
         * complete value and acquires no ROS resource.
         */
        public uint @seq = 0;
        /**
         * @brief Two-integer timestamp that is expressed as: * stamp.sec: seconds (stamp_secs) since epoch (in
         * Python the variable is called 'secs') * stamp.nsec: nanoseconds since stamp_secs (in Python the
         * variable is called 'nsecs') time-handling sugar is provided by the client library
         * @details Original std_msgs/Header.stamp; native type time. Scalar value. Storage belongs to the
         * complete value and acquires no ROS resource.
         */
        public _Ros1Time @stamp = new _Ros1Time();
        /**
         * @brief Frame this data is associated with
         * @details Original std_msgs/Header.frame_id; native type string. Scalar value. UTF-8 capacity 128
         * bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS resource.
         */
        public string @frame_id = "";

        public _Ros1Std_msgsHeader()
        {
        }
    }

    public sealed class Ros1Std_msgsHeaderCodec : global::Uwvm.RosWasm.ICodec<_Ros1Std_msgsHeader>
    {
        public static readonly Ros1Std_msgsHeaderCodec Instance = new Ros1Std_msgsHeaderCodec();

        private Ros1Std_msgsHeaderCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "std_msgs/Header";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_ee2b4e736d36ebcdb562d3ef7832777233d39d366837e9148a76aa2c36756435";
        public const int MIN_WIRE_BYTES = 16, MAX_WIRE_BYTES = 144;

        public byte[] Encode(_Ros1Std_msgsHeader value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Std_msgsHeader(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Std_msgsHeader Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Std_msgsHeader value = ReadRos1Std_msgsHeader(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Std_msgsHeader(_Codecs.Writer writer, _Ros1Std_msgsHeader value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        uint part0 = value.@seq;
        writer.Unsigned(part0, 4);
        _Ros1Time part1 = value.@stamp;
        WriteRos1Time(writer, part1);
        string part2 = value.@frame_id;
        WriteText(writer, part2, 128);
    }

    private static _Ros1Std_msgsHeader ReadRos1Std_msgsHeader(_Codecs.Reader reader)
    {
        var value = new _Ros1Std_msgsHeader();
        value.@seq = unchecked((uint)reader.Unsigned(4));
        value.@stamp = ReadRos1Time(reader);
        value.@frame_id = ReadText(reader, 128);
        return value;
    }

    // @brief Own every original field of franka_msgs/FrankaState.
    // @details Canonical extent 2491..2619 bytes. Native type identity is independent; constructing a
    // value opens no resource.
    public sealed class _Ros1Franka_msgsFrankaState
    {
        /**
         * @brief Retain the complete original std_msgs/Header field.
         * @details Original franka_msgs/FrankaState.header; native type std_msgs/Header. Scalar value. Storage
         * belongs to the complete value and acquires no ROS resource.
         */
        public _Ros1Std_msgsHeader @header = new _Ros1Std_msgsHeader();
        /**
         * @brief Retain the complete original float64 field.
         * @details Original franka_msgs/FrankaState.cartesian_collision; native type float64. Exactly 6
         * elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
         * acquires no ROS resource.
         */
        public double[] @cartesian_collision = new double[6];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original franka_msgs/FrankaState.cartesian_contact; native type float64. Exactly 6
         * elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
         * acquires no ROS resource.
         */
        public double[] @cartesian_contact = new double[6];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original franka_msgs/FrankaState.q; native type float64. Exactly 7 elements. Finite IEEE
         * values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double[] @q = new double[7];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original franka_msgs/FrankaState.q_d; native type float64. Exactly 7 elements. Finite IEEE
         * values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double[] @q_d = new double[7];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original franka_msgs/FrankaState.dq; native type float64. Exactly 7 elements. Finite IEEE
         * values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double[] @dq = new double[7];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original franka_msgs/FrankaState.dq_d; native type float64. Exactly 7 elements. Finite IEEE
         * values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double[] @dq_d = new double[7];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original franka_msgs/FrankaState.ddq_d; native type float64. Exactly 7 elements. Finite
         * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double[] @ddq_d = new double[7];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original franka_msgs/FrankaState.theta; native type float64. Exactly 7 elements. Finite
         * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double[] @theta = new double[7];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original franka_msgs/FrankaState.dtheta; native type float64. Exactly 7 elements. Finite
         * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double[] @dtheta = new double[7];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original franka_msgs/FrankaState.tau_J; native type float64. Exactly 7 elements. Finite
         * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double[] @tau_J = new double[7];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original franka_msgs/FrankaState.dtau_J; native type float64. Exactly 7 elements. Finite
         * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double[] @dtau_J = new double[7];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original franka_msgs/FrankaState.tau_J_d; native type float64. Exactly 7 elements. Finite
         * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double[] @tau_J_d = new double[7];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original franka_msgs/FrankaState.K_F_ext_hat_K; native type float64. Exactly 6 elements.
         * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
         * no ROS resource.
         */
        public double[] @K_F_ext_hat_K = new double[6];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original franka_msgs/FrankaState.elbow; native type float64. Exactly 2 elements. Finite
         * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double[] @elbow = new double[2];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original franka_msgs/FrankaState.elbow_d; native type float64. Exactly 2 elements. Finite
         * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double[] @elbow_d = new double[2];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original franka_msgs/FrankaState.elbow_c; native type float64. Exactly 2 elements. Finite
         * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double[] @elbow_c = new double[2];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original franka_msgs/FrankaState.delbow_c; native type float64. Exactly 2 elements. Finite
         * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double[] @delbow_c = new double[2];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original franka_msgs/FrankaState.ddelbow_c; native type float64. Exactly 2 elements. Finite
         * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double[] @ddelbow_c = new double[2];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original franka_msgs/FrankaState.joint_collision; native type float64. Exactly 7 elements.
         * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
         * no ROS resource.
         */
        public double[] @joint_collision = new double[7];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original franka_msgs/FrankaState.joint_contact; native type float64. Exactly 7 elements.
         * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
         * no ROS resource.
         */
        public double[] @joint_contact = new double[7];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original franka_msgs/FrankaState.O_F_ext_hat_K; native type float64. Exactly 6 elements.
         * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
         * no ROS resource.
         */
        public double[] @O_F_ext_hat_K = new double[6];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original franka_msgs/FrankaState.O_dP_EE_d; native type float64. Exactly 6 elements. Finite
         * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double[] @O_dP_EE_d = new double[6];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original franka_msgs/FrankaState.O_ddP_O; native type float64. Exactly 3 elements. Finite
         * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double[] @O_ddP_O = new double[3];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original franka_msgs/FrankaState.O_dP_EE_c; native type float64. Exactly 6 elements. Finite
         * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double[] @O_dP_EE_c = new double[6];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original franka_msgs/FrankaState.O_ddP_EE_c; native type float64. Exactly 6 elements.
         * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
         * no ROS resource.
         */
        public double[] @O_ddP_EE_c = new double[6];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original franka_msgs/FrankaState.tau_ext_hat_filtered; native type float64. Exactly 7
         * elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
         * acquires no ROS resource.
         */
        public double[] @tau_ext_hat_filtered = new double[7];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original franka_msgs/FrankaState.m_ee; native type float64. Scalar value. Finite IEEE
         * values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double @m_ee = 0;
        /**
         * @brief Retain the complete original float64 field.
         * @details Original franka_msgs/FrankaState.F_x_Cee; native type float64. Exactly 3 elements. Finite
         * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double[] @F_x_Cee = new double[3];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original franka_msgs/FrankaState.I_ee; native type float64. Exactly 9 elements. Finite IEEE
         * values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double[] @I_ee = new double[9];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original franka_msgs/FrankaState.m_load; native type float64. Scalar value. Finite IEEE
         * values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double @m_load = 0;
        /**
         * @brief Retain the complete original float64 field.
         * @details Original franka_msgs/FrankaState.F_x_Cload; native type float64. Exactly 3 elements. Finite
         * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double[] @F_x_Cload = new double[3];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original franka_msgs/FrankaState.I_load; native type float64. Exactly 9 elements. Finite
         * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double[] @I_load = new double[9];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original franka_msgs/FrankaState.m_total; native type float64. Scalar value. Finite IEEE
         * values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double @m_total = 0;
        /**
         * @brief Retain the complete original float64 field.
         * @details Original franka_msgs/FrankaState.F_x_Ctotal; native type float64. Exactly 3 elements.
         * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
         * no ROS resource.
         */
        public double[] @F_x_Ctotal = new double[3];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original franka_msgs/FrankaState.I_total; native type float64. Exactly 9 elements. Finite
         * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double[] @I_total = new double[9];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original franka_msgs/FrankaState.O_T_EE; native type float64. Exactly 16 elements. Finite
         * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double[] @O_T_EE = new double[16];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original franka_msgs/FrankaState.O_T_EE_d; native type float64. Exactly 16 elements. Finite
         * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double[] @O_T_EE_d = new double[16];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original franka_msgs/FrankaState.O_T_EE_c; native type float64. Exactly 16 elements. Finite
         * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double[] @O_T_EE_c = new double[16];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original franka_msgs/FrankaState.F_T_EE; native type float64. Exactly 16 elements. Finite
         * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double[] @F_T_EE = new double[16];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original franka_msgs/FrankaState.F_T_NE; native type float64. Exactly 16 elements. Finite
         * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double[] @F_T_NE = new double[16];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original franka_msgs/FrankaState.NE_T_EE; native type float64. Exactly 16 elements. Finite
         * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double[] @NE_T_EE = new double[16];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original franka_msgs/FrankaState.EE_T_K; native type float64. Exactly 16 elements. Finite
         * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double[] @EE_T_K = new double[16];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original franka_msgs/FrankaState.time; native type float64. Scalar value. Finite IEEE
         * values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double @time = 0;
        /**
         * @brief Retain the complete original float64 field.
         * @details Original franka_msgs/FrankaState.control_command_success_rate; native type float64. Scalar
         * value. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
         * acquires no ROS resource.
         */
        public double @control_command_success_rate = 0;
        /**
         * @brief Retain the complete original uint8 field.
         * @details Original franka_msgs/FrankaState.robot_mode; native type uint8. Scalar value. Storage
         * belongs to the complete value and acquires no ROS resource.
         */
        public byte @robot_mode = 0;
        /**
         * @brief Retain the complete original franka_msgs/Errors field.
         * @details Original franka_msgs/FrankaState.current_errors; native type franka_msgs/Errors. Scalar
         * value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public _Ros1Franka_msgsErrors @current_errors = new _Ros1Franka_msgsErrors();
        /**
         * @brief Retain the complete original franka_msgs/Errors field.
         * @details Original franka_msgs/FrankaState.last_motion_errors; native type franka_msgs/Errors. Scalar
         * value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public _Ros1Franka_msgsErrors @last_motion_errors = new _Ros1Franka_msgsErrors();

        public _Ros1Franka_msgsFrankaState()
        {
        }
    }

    public sealed class Ros1Franka_msgsFrankaStateCodec : global::Uwvm.RosWasm.ICodec<_Ros1Franka_msgsFrankaState>
    {
        public static readonly Ros1Franka_msgsFrankaStateCodec Instance = new Ros1Franka_msgsFrankaStateCodec();

        private Ros1Franka_msgsFrankaStateCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "franka_msgs/FrankaState";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_79f22f36ce2c11f519ee29e65a248ec1b67240e27712b2667e9b803a2562ee71";
        public const int MIN_WIRE_BYTES = 2491, MAX_WIRE_BYTES = 2619;

        public byte[] Encode(_Ros1Franka_msgsFrankaState value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Franka_msgsFrankaState(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Franka_msgsFrankaState Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Franka_msgsFrankaState value = ReadRos1Franka_msgsFrankaState(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Franka_msgsFrankaState(_Codecs.Writer writer, _Ros1Franka_msgsFrankaState value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros1Std_msgsHeader part0 = value.@header;
        WriteRos1Std_msgsHeader(writer, part0);
        double[] part1 = value.@cartesian_collision;
        if(part1 == null || part1.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part1.Length; ++index)
        {
            double element = part1[index];
            writer.Float64(element);
        }
        double[] part2 = value.@cartesian_contact;
        if(part2 == null || part2.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part2.Length; ++index)
        {
            double element = part2[index];
            writer.Float64(element);
        }
        double[] part3 = value.@q;
        if(part3 == null || part3.Length != 7)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part3.Length; ++index)
        {
            double element = part3[index];
            writer.Float64(element);
        }
        double[] part4 = value.@q_d;
        if(part4 == null || part4.Length != 7)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part4.Length; ++index)
        {
            double element = part4[index];
            writer.Float64(element);
        }
        double[] part5 = value.@dq;
        if(part5 == null || part5.Length != 7)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part5.Length; ++index)
        {
            double element = part5[index];
            writer.Float64(element);
        }
        double[] part6 = value.@dq_d;
        if(part6 == null || part6.Length != 7)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part6.Length; ++index)
        {
            double element = part6[index];
            writer.Float64(element);
        }
        double[] part7 = value.@ddq_d;
        if(part7 == null || part7.Length != 7)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part7.Length; ++index)
        {
            double element = part7[index];
            writer.Float64(element);
        }
        double[] part8 = value.@theta;
        if(part8 == null || part8.Length != 7)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part8.Length; ++index)
        {
            double element = part8[index];
            writer.Float64(element);
        }
        double[] part9 = value.@dtheta;
        if(part9 == null || part9.Length != 7)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part9.Length; ++index)
        {
            double element = part9[index];
            writer.Float64(element);
        }
        double[] part10 = value.@tau_J;
        if(part10 == null || part10.Length != 7)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part10.Length; ++index)
        {
            double element = part10[index];
            writer.Float64(element);
        }
        double[] part11 = value.@dtau_J;
        if(part11 == null || part11.Length != 7)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part11.Length; ++index)
        {
            double element = part11[index];
            writer.Float64(element);
        }
        double[] part12 = value.@tau_J_d;
        if(part12 == null || part12.Length != 7)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part12.Length; ++index)
        {
            double element = part12[index];
            writer.Float64(element);
        }
        double[] part13 = value.@K_F_ext_hat_K;
        if(part13 == null || part13.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part13.Length; ++index)
        {
            double element = part13[index];
            writer.Float64(element);
        }
        double[] part14 = value.@elbow;
        if(part14 == null || part14.Length != 2)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part14.Length; ++index)
        {
            double element = part14[index];
            writer.Float64(element);
        }
        double[] part15 = value.@elbow_d;
        if(part15 == null || part15.Length != 2)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part15.Length; ++index)
        {
            double element = part15[index];
            writer.Float64(element);
        }
        double[] part16 = value.@elbow_c;
        if(part16 == null || part16.Length != 2)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part16.Length; ++index)
        {
            double element = part16[index];
            writer.Float64(element);
        }
        double[] part17 = value.@delbow_c;
        if(part17 == null || part17.Length != 2)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part17.Length; ++index)
        {
            double element = part17[index];
            writer.Float64(element);
        }
        double[] part18 = value.@ddelbow_c;
        if(part18 == null || part18.Length != 2)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part18.Length; ++index)
        {
            double element = part18[index];
            writer.Float64(element);
        }
        double[] part19 = value.@joint_collision;
        if(part19 == null || part19.Length != 7)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part19.Length; ++index)
        {
            double element = part19[index];
            writer.Float64(element);
        }
        double[] part20 = value.@joint_contact;
        if(part20 == null || part20.Length != 7)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part20.Length; ++index)
        {
            double element = part20[index];
            writer.Float64(element);
        }
        double[] part21 = value.@O_F_ext_hat_K;
        if(part21 == null || part21.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part21.Length; ++index)
        {
            double element = part21[index];
            writer.Float64(element);
        }
        double[] part22 = value.@O_dP_EE_d;
        if(part22 == null || part22.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part22.Length; ++index)
        {
            double element = part22[index];
            writer.Float64(element);
        }
        double[] part23 = value.@O_ddP_O;
        if(part23 == null || part23.Length != 3)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part23.Length; ++index)
        {
            double element = part23[index];
            writer.Float64(element);
        }
        double[] part24 = value.@O_dP_EE_c;
        if(part24 == null || part24.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part24.Length; ++index)
        {
            double element = part24[index];
            writer.Float64(element);
        }
        double[] part25 = value.@O_ddP_EE_c;
        if(part25 == null || part25.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part25.Length; ++index)
        {
            double element = part25[index];
            writer.Float64(element);
        }
        double[] part26 = value.@tau_ext_hat_filtered;
        if(part26 == null || part26.Length != 7)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part26.Length; ++index)
        {
            double element = part26[index];
            writer.Float64(element);
        }
        double part27 = value.@m_ee;
        writer.Float64(part27);
        double[] part28 = value.@F_x_Cee;
        if(part28 == null || part28.Length != 3)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part28.Length; ++index)
        {
            double element = part28[index];
            writer.Float64(element);
        }
        double[] part29 = value.@I_ee;
        if(part29 == null || part29.Length != 9)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part29.Length; ++index)
        {
            double element = part29[index];
            writer.Float64(element);
        }
        double part30 = value.@m_load;
        writer.Float64(part30);
        double[] part31 = value.@F_x_Cload;
        if(part31 == null || part31.Length != 3)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part31.Length; ++index)
        {
            double element = part31[index];
            writer.Float64(element);
        }
        double[] part32 = value.@I_load;
        if(part32 == null || part32.Length != 9)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part32.Length; ++index)
        {
            double element = part32[index];
            writer.Float64(element);
        }
        double part33 = value.@m_total;
        writer.Float64(part33);
        double[] part34 = value.@F_x_Ctotal;
        if(part34 == null || part34.Length != 3)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part34.Length; ++index)
        {
            double element = part34[index];
            writer.Float64(element);
        }
        double[] part35 = value.@I_total;
        if(part35 == null || part35.Length != 9)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part35.Length; ++index)
        {
            double element = part35[index];
            writer.Float64(element);
        }
        double[] part36 = value.@O_T_EE;
        if(part36 == null || part36.Length != 16)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part36.Length; ++index)
        {
            double element = part36[index];
            writer.Float64(element);
        }
        double[] part37 = value.@O_T_EE_d;
        if(part37 == null || part37.Length != 16)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part37.Length; ++index)
        {
            double element = part37[index];
            writer.Float64(element);
        }
        double[] part38 = value.@O_T_EE_c;
        if(part38 == null || part38.Length != 16)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part38.Length; ++index)
        {
            double element = part38[index];
            writer.Float64(element);
        }
        double[] part39 = value.@F_T_EE;
        if(part39 == null || part39.Length != 16)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part39.Length; ++index)
        {
            double element = part39[index];
            writer.Float64(element);
        }
        double[] part40 = value.@F_T_NE;
        if(part40 == null || part40.Length != 16)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part40.Length; ++index)
        {
            double element = part40[index];
            writer.Float64(element);
        }
        double[] part41 = value.@NE_T_EE;
        if(part41 == null || part41.Length != 16)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part41.Length; ++index)
        {
            double element = part41[index];
            writer.Float64(element);
        }
        double[] part42 = value.@EE_T_K;
        if(part42 == null || part42.Length != 16)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part42.Length; ++index)
        {
            double element = part42[index];
            writer.Float64(element);
        }
        double part43 = value.@time;
        writer.Float64(part43);
        double part44 = value.@control_command_success_rate;
        writer.Float64(part44);
        byte part45 = value.@robot_mode;
        writer.Unsigned(part45, 1);
        _Ros1Franka_msgsErrors part46 = value.@current_errors;
        WriteRos1Franka_msgsErrors(writer, part46);
        _Ros1Franka_msgsErrors part47 = value.@last_motion_errors;
        WriteRos1Franka_msgsErrors(writer, part47);
    }

    private static _Ros1Franka_msgsFrankaState ReadRos1Franka_msgsFrankaState(_Codecs.Reader reader)
    {
        var value = new _Ros1Franka_msgsFrankaState();
        value.@header = ReadRos1Std_msgsHeader(reader);
        value.@cartesian_collision = new double[6];
        for(int index = 0; index < value.@cartesian_collision.Length; ++index)
            value.@cartesian_collision[index] = reader.Float64();
        value.@cartesian_contact = new double[6];
        for(int index = 0; index < value.@cartesian_contact.Length; ++index)
            value.@cartesian_contact[index] = reader.Float64();
        value.@q = new double[7];
        for(int index = 0; index < value.@q.Length; ++index)
            value.@q[index] = reader.Float64();
        value.@q_d = new double[7];
        for(int index = 0; index < value.@q_d.Length; ++index)
            value.@q_d[index] = reader.Float64();
        value.@dq = new double[7];
        for(int index = 0; index < value.@dq.Length; ++index)
            value.@dq[index] = reader.Float64();
        value.@dq_d = new double[7];
        for(int index = 0; index < value.@dq_d.Length; ++index)
            value.@dq_d[index] = reader.Float64();
        value.@ddq_d = new double[7];
        for(int index = 0; index < value.@ddq_d.Length; ++index)
            value.@ddq_d[index] = reader.Float64();
        value.@theta = new double[7];
        for(int index = 0; index < value.@theta.Length; ++index)
            value.@theta[index] = reader.Float64();
        value.@dtheta = new double[7];
        for(int index = 0; index < value.@dtheta.Length; ++index)
            value.@dtheta[index] = reader.Float64();
        value.@tau_J = new double[7];
        for(int index = 0; index < value.@tau_J.Length; ++index)
            value.@tau_J[index] = reader.Float64();
        value.@dtau_J = new double[7];
        for(int index = 0; index < value.@dtau_J.Length; ++index)
            value.@dtau_J[index] = reader.Float64();
        value.@tau_J_d = new double[7];
        for(int index = 0; index < value.@tau_J_d.Length; ++index)
            value.@tau_J_d[index] = reader.Float64();
        value.@K_F_ext_hat_K = new double[6];
        for(int index = 0; index < value.@K_F_ext_hat_K.Length; ++index)
            value.@K_F_ext_hat_K[index] = reader.Float64();
        value.@elbow = new double[2];
        for(int index = 0; index < value.@elbow.Length; ++index)
            value.@elbow[index] = reader.Float64();
        value.@elbow_d = new double[2];
        for(int index = 0; index < value.@elbow_d.Length; ++index)
            value.@elbow_d[index] = reader.Float64();
        value.@elbow_c = new double[2];
        for(int index = 0; index < value.@elbow_c.Length; ++index)
            value.@elbow_c[index] = reader.Float64();
        value.@delbow_c = new double[2];
        for(int index = 0; index < value.@delbow_c.Length; ++index)
            value.@delbow_c[index] = reader.Float64();
        value.@ddelbow_c = new double[2];
        for(int index = 0; index < value.@ddelbow_c.Length; ++index)
            value.@ddelbow_c[index] = reader.Float64();
        value.@joint_collision = new double[7];
        for(int index = 0; index < value.@joint_collision.Length; ++index)
            value.@joint_collision[index] = reader.Float64();
        value.@joint_contact = new double[7];
        for(int index = 0; index < value.@joint_contact.Length; ++index)
            value.@joint_contact[index] = reader.Float64();
        value.@O_F_ext_hat_K = new double[6];
        for(int index = 0; index < value.@O_F_ext_hat_K.Length; ++index)
            value.@O_F_ext_hat_K[index] = reader.Float64();
        value.@O_dP_EE_d = new double[6];
        for(int index = 0; index < value.@O_dP_EE_d.Length; ++index)
            value.@O_dP_EE_d[index] = reader.Float64();
        value.@O_ddP_O = new double[3];
        for(int index = 0; index < value.@O_ddP_O.Length; ++index)
            value.@O_ddP_O[index] = reader.Float64();
        value.@O_dP_EE_c = new double[6];
        for(int index = 0; index < value.@O_dP_EE_c.Length; ++index)
            value.@O_dP_EE_c[index] = reader.Float64();
        value.@O_ddP_EE_c = new double[6];
        for(int index = 0; index < value.@O_ddP_EE_c.Length; ++index)
            value.@O_ddP_EE_c[index] = reader.Float64();
        value.@tau_ext_hat_filtered = new double[7];
        for(int index = 0; index < value.@tau_ext_hat_filtered.Length; ++index)
            value.@tau_ext_hat_filtered[index] = reader.Float64();
        value.@m_ee = reader.Float64();
        value.@F_x_Cee = new double[3];
        for(int index = 0; index < value.@F_x_Cee.Length; ++index)
            value.@F_x_Cee[index] = reader.Float64();
        value.@I_ee = new double[9];
        for(int index = 0; index < value.@I_ee.Length; ++index)
            value.@I_ee[index] = reader.Float64();
        value.@m_load = reader.Float64();
        value.@F_x_Cload = new double[3];
        for(int index = 0; index < value.@F_x_Cload.Length; ++index)
            value.@F_x_Cload[index] = reader.Float64();
        value.@I_load = new double[9];
        for(int index = 0; index < value.@I_load.Length; ++index)
            value.@I_load[index] = reader.Float64();
        value.@m_total = reader.Float64();
        value.@F_x_Ctotal = new double[3];
        for(int index = 0; index < value.@F_x_Ctotal.Length; ++index)
            value.@F_x_Ctotal[index] = reader.Float64();
        value.@I_total = new double[9];
        for(int index = 0; index < value.@I_total.Length; ++index)
            value.@I_total[index] = reader.Float64();
        value.@O_T_EE = new double[16];
        for(int index = 0; index < value.@O_T_EE.Length; ++index)
            value.@O_T_EE[index] = reader.Float64();
        value.@O_T_EE_d = new double[16];
        for(int index = 0; index < value.@O_T_EE_d.Length; ++index)
            value.@O_T_EE_d[index] = reader.Float64();
        value.@O_T_EE_c = new double[16];
        for(int index = 0; index < value.@O_T_EE_c.Length; ++index)
            value.@O_T_EE_c[index] = reader.Float64();
        value.@F_T_EE = new double[16];
        for(int index = 0; index < value.@F_T_EE.Length; ++index)
            value.@F_T_EE[index] = reader.Float64();
        value.@F_T_NE = new double[16];
        for(int index = 0; index < value.@F_T_NE.Length; ++index)
            value.@F_T_NE[index] = reader.Float64();
        value.@NE_T_EE = new double[16];
        for(int index = 0; index < value.@NE_T_EE.Length; ++index)
            value.@NE_T_EE[index] = reader.Float64();
        value.@EE_T_K = new double[16];
        for(int index = 0; index < value.@EE_T_K.Length; ++index)
            value.@EE_T_K[index] = reader.Float64();
        value.@time = reader.Float64();
        value.@control_command_success_rate = reader.Float64();
        value.@robot_mode = unchecked((byte)reader.Unsigned(1));
        value.@current_errors = ReadRos1Franka_msgsErrors(reader);
        value.@last_motion_errors = ReadRos1Franka_msgsErrors(reader);
        return value;
    }

    // @brief Own every original field of franka_msgs/SetCartesianImpedanceRequest.
    // @details Canonical extent 48..48 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public sealed class _Ros1Franka_msgsSetCartesianImpedanceRequest
    {
        /**
         * @brief Retain the complete original float64 field.
         * @details Original franka_msgs/SetCartesianImpedanceRequest.cartesian_stiffness; native type float64.
         * Exactly 6 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete
         * value and acquires no ROS resource.
         */
        public double[] @cartesian_stiffness = new double[6];

        public _Ros1Franka_msgsSetCartesianImpedanceRequest()
        {
        }
    }

    public sealed class Ros1Franka_msgsSetCartesianImpedanceRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Franka_msgsSetCartesianImpedanceRequest>
    {
        public static readonly Ros1Franka_msgsSetCartesianImpedanceRequestCodec Instance = new Ros1Franka_msgsSetCartesianImpedanceRequestCodec();

        private Ros1Franka_msgsSetCartesianImpedanceRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "franka_msgs/SetCartesianImpedanceRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_ff604aae9ab1ef36b5af107966e64ee2115ee17618a4ece6f15997c889cacbdf";
        public const int MIN_WIRE_BYTES = 48, MAX_WIRE_BYTES = 48;

        public byte[] Encode(_Ros1Franka_msgsSetCartesianImpedanceRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Franka_msgsSetCartesianImpedanceRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Franka_msgsSetCartesianImpedanceRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Franka_msgsSetCartesianImpedanceRequest value = ReadRos1Franka_msgsSetCartesianImpedanceRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Franka_msgsSetCartesianImpedanceRequest(_Codecs.Writer writer, _Ros1Franka_msgsSetCartesianImpedanceRequest value)
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

    private static _Ros1Franka_msgsSetCartesianImpedanceRequest ReadRos1Franka_msgsSetCartesianImpedanceRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Franka_msgsSetCartesianImpedanceRequest();
        value.@cartesian_stiffness = new double[6];
        for(int index = 0; index < value.@cartesian_stiffness.Length; ++index)
            value.@cartesian_stiffness[index] = reader.Float64();
        return value;
    }

    // @brief Own every original field of franka_msgs/SetCartesianImpedanceResponse.
    // @details Canonical extent 5..261 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public sealed class _Ros1Franka_msgsSetCartesianImpedanceResponse
    {
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/SetCartesianImpedanceResponse.success; native type bool. Scalar value.
         * Storage belongs to the complete value and acquires no ROS resource.
         */
        public bool @success = false;
        /**
         * @brief Retain the complete original string field.
         * @details Original franka_msgs/SetCartesianImpedanceResponse.error; native type string. Scalar value.
         * UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public string @error = "";

        public _Ros1Franka_msgsSetCartesianImpedanceResponse()
        {
        }
    }

    public sealed class Ros1Franka_msgsSetCartesianImpedanceResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Franka_msgsSetCartesianImpedanceResponse>
    {
        public static readonly Ros1Franka_msgsSetCartesianImpedanceResponseCodec Instance = new Ros1Franka_msgsSetCartesianImpedanceResponseCodec();

        private Ros1Franka_msgsSetCartesianImpedanceResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "franka_msgs/SetCartesianImpedanceResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_b091d2fe98c84528460ba3d84524c38355e725c161456edf0034e62c6f63ab5b";
        public const int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 261;

        public byte[] Encode(_Ros1Franka_msgsSetCartesianImpedanceResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Franka_msgsSetCartesianImpedanceResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Franka_msgsSetCartesianImpedanceResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Franka_msgsSetCartesianImpedanceResponse value = ReadRos1Franka_msgsSetCartesianImpedanceResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Franka_msgsSetCartesianImpedanceResponse(_Codecs.Writer writer, _Ros1Franka_msgsSetCartesianImpedanceResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
        string part1 = value.@error;
        WriteText(writer, part1, 256);
    }

    private static _Ros1Franka_msgsSetCartesianImpedanceResponse ReadRos1Franka_msgsSetCartesianImpedanceResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Franka_msgsSetCartesianImpedanceResponse();
        value.@success = ReadBool(reader);
        value.@error = ReadText(reader, 256);
        return value;
    }

    // @brief Own every original field of franka_msgs/SetEEFrameRequest.
    // @details Canonical extent 128..128 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public sealed class _Ros1Franka_msgsSetEEFrameRequest
    {
        /**
         * @brief Retain the complete original float64 field.
         * @details Original franka_msgs/SetEEFrameRequest.NE_T_EE; native type float64. Exactly 16 elements.
         * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
         * no ROS resource.
         */
        public double[] @NE_T_EE = new double[16];

        public _Ros1Franka_msgsSetEEFrameRequest()
        {
        }
    }

    public sealed class Ros1Franka_msgsSetEEFrameRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Franka_msgsSetEEFrameRequest>
    {
        public static readonly Ros1Franka_msgsSetEEFrameRequestCodec Instance = new Ros1Franka_msgsSetEEFrameRequestCodec();

        private Ros1Franka_msgsSetEEFrameRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "franka_msgs/SetEEFrameRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_1bc740d3998a14dd6c0604d5024ebda2b4916a8497950841b14a8073c6c1ecfc";
        public const int MIN_WIRE_BYTES = 128, MAX_WIRE_BYTES = 128;

        public byte[] Encode(_Ros1Franka_msgsSetEEFrameRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Franka_msgsSetEEFrameRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Franka_msgsSetEEFrameRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Franka_msgsSetEEFrameRequest value = ReadRos1Franka_msgsSetEEFrameRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Franka_msgsSetEEFrameRequest(_Codecs.Writer writer, _Ros1Franka_msgsSetEEFrameRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        double[] part0 = value.@NE_T_EE;
        if(part0 == null || part0.Length != 16)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part0.Length; ++index)
        {
            double element = part0[index];
            writer.Float64(element);
        }
    }

    private static _Ros1Franka_msgsSetEEFrameRequest ReadRos1Franka_msgsSetEEFrameRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Franka_msgsSetEEFrameRequest();
        value.@NE_T_EE = new double[16];
        for(int index = 0; index < value.@NE_T_EE.Length; ++index)
            value.@NE_T_EE[index] = reader.Float64();
        return value;
    }

    // @brief Own every original field of franka_msgs/SetEEFrameResponse.
    // @details Canonical extent 5..261 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public sealed class _Ros1Franka_msgsSetEEFrameResponse
    {
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/SetEEFrameResponse.success; native type bool. Scalar value. Storage
         * belongs to the complete value and acquires no ROS resource.
         */
        public bool @success = false;
        /**
         * @brief Retain the complete original string field.
         * @details Original franka_msgs/SetEEFrameResponse.error; native type string. Scalar value. UTF-8
         * capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public string @error = "";

        public _Ros1Franka_msgsSetEEFrameResponse()
        {
        }
    }

    public sealed class Ros1Franka_msgsSetEEFrameResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Franka_msgsSetEEFrameResponse>
    {
        public static readonly Ros1Franka_msgsSetEEFrameResponseCodec Instance = new Ros1Franka_msgsSetEEFrameResponseCodec();

        private Ros1Franka_msgsSetEEFrameResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "franka_msgs/SetEEFrameResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_b40c9595d57d6ed52ea4eca78e21f2c3d81f5a0afaad2420511211931f7d1c67";
        public const int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 261;

        public byte[] Encode(_Ros1Franka_msgsSetEEFrameResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Franka_msgsSetEEFrameResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Franka_msgsSetEEFrameResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Franka_msgsSetEEFrameResponse value = ReadRos1Franka_msgsSetEEFrameResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Franka_msgsSetEEFrameResponse(_Codecs.Writer writer, _Ros1Franka_msgsSetEEFrameResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
        string part1 = value.@error;
        WriteText(writer, part1, 256);
    }

    private static _Ros1Franka_msgsSetEEFrameResponse ReadRos1Franka_msgsSetEEFrameResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Franka_msgsSetEEFrameResponse();
        value.@success = ReadBool(reader);
        value.@error = ReadText(reader, 256);
        return value;
    }

    // @brief Own every original field of franka_msgs/SetForceTorqueCollisionBehaviorRequest.
    // @details Canonical extent 208..208 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public sealed class _Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest
    {
        /**
         * @brief Retain the complete original float64 field.
         * @details Original
         * franka_msgs/SetForceTorqueCollisionBehaviorRequest.lower_torque_thresholds_nominal; native type
         * float64. Exactly 7 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the
         * complete value and acquires no ROS resource.
         */
        public double[] @lower_torque_thresholds_nominal = new double[7];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original
         * franka_msgs/SetForceTorqueCollisionBehaviorRequest.upper_torque_thresholds_nominal; native type
         * float64. Exactly 7 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the
         * complete value and acquires no ROS resource.
         */
        public double[] @upper_torque_thresholds_nominal = new double[7];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original franka_msgs/SetForceTorqueCollisionBehaviorRequest.lower_force_thresholds_nominal;
         * native type float64. Exactly 6 elements. Finite IEEE values; no implicit unit conversion. Storage
         * belongs to the complete value and acquires no ROS resource.
         */
        public double[] @lower_force_thresholds_nominal = new double[6];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original franka_msgs/SetForceTorqueCollisionBehaviorRequest.upper_force_thresholds_nominal;
         * native type float64. Exactly 6 elements. Finite IEEE values; no implicit unit conversion. Storage
         * belongs to the complete value and acquires no ROS resource.
         */
        public double[] @upper_force_thresholds_nominal = new double[6];

        public _Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest()
        {
        }
    }

    public sealed class Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequestCodec :
        global::Uwvm.RosWasm.ICodec<_Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest>
    {
        public static readonly Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequestCodec Instance =
            new Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequestCodec();

        private Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "franka_msgs/SetForceTorqueCollisionBehaviorRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_2513f0ea74bf6a871a85ce00c0f822891f2c0bed890b87e35d25a637aa62c4b5";
        public const int MIN_WIRE_BYTES = 208, MAX_WIRE_BYTES = 208;

        public byte[] Encode(_Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Franka_msgsSetForceTorqueCollisionBehaviorRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest value = ReadRos1Franka_msgsSetForceTorqueCollisionBehaviorRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Franka_msgsSetForceTorqueCollisionBehaviorRequest(_Codecs.Writer writer,
                                                                                   _Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest value)
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

    private static _Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest ReadRos1Franka_msgsSetForceTorqueCollisionBehaviorRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest();
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

    // @brief Own every original field of franka_msgs/SetForceTorqueCollisionBehaviorResponse.
    // @details Canonical extent 5..261 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public sealed class _Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse
    {
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/SetForceTorqueCollisionBehaviorResponse.success; native type bool.
         * Scalar value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public bool @success = false;
        /**
         * @brief Retain the complete original string field.
         * @details Original franka_msgs/SetForceTorqueCollisionBehaviorResponse.error; native type string.
         * Scalar value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and
         * acquires no ROS resource.
         */
        public string @error = "";

        public _Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse()
        {
        }
    }

    public sealed class Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponseCodec :
        global::Uwvm.RosWasm.ICodec<_Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse>
    {
        public static readonly Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponseCodec Instance =
            new Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponseCodec();

        private Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "franka_msgs/SetForceTorqueCollisionBehaviorResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_72418d73d504ae385d7ddce7e3cef859a104346dbfea7fc9da82e0f7e33ca2f5";
        public const int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 261;

        public byte[] Encode(_Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Franka_msgsSetForceTorqueCollisionBehaviorResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse value = ReadRos1Franka_msgsSetForceTorqueCollisionBehaviorResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Franka_msgsSetForceTorqueCollisionBehaviorResponse(_Codecs.Writer writer,
                                                                                    _Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
        string part1 = value.@error;
        WriteText(writer, part1, 256);
    }

    private static _Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse ReadRos1Franka_msgsSetForceTorqueCollisionBehaviorResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse();
        value.@success = ReadBool(reader);
        value.@error = ReadText(reader, 256);
        return value;
    }

    // @brief Own every original field of franka_msgs/SetFullCollisionBehaviorRequest.
    // @details Canonical extent 416..416 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public sealed class _Ros1Franka_msgsSetFullCollisionBehaviorRequest
    {
        /**
         * @brief Retain the complete original float64 field.
         * @details Original franka_msgs/SetFullCollisionBehaviorRequest.lower_torque_thresholds_acceleration;
         * native type float64. Exactly 7 elements. Finite IEEE values; no implicit unit conversion. Storage
         * belongs to the complete value and acquires no ROS resource.
         */
        public double[] @lower_torque_thresholds_acceleration = new double[7];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original franka_msgs/SetFullCollisionBehaviorRequest.upper_torque_thresholds_acceleration;
         * native type float64. Exactly 7 elements. Finite IEEE values; no implicit unit conversion. Storage
         * belongs to the complete value and acquires no ROS resource.
         */
        public double[] @upper_torque_thresholds_acceleration = new double[7];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original franka_msgs/SetFullCollisionBehaviorRequest.lower_torque_thresholds_nominal;
         * native type float64. Exactly 7 elements. Finite IEEE values; no implicit unit conversion. Storage
         * belongs to the complete value and acquires no ROS resource.
         */
        public double[] @lower_torque_thresholds_nominal = new double[7];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original franka_msgs/SetFullCollisionBehaviorRequest.upper_torque_thresholds_nominal;
         * native type float64. Exactly 7 elements. Finite IEEE values; no implicit unit conversion. Storage
         * belongs to the complete value and acquires no ROS resource.
         */
        public double[] @upper_torque_thresholds_nominal = new double[7];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original franka_msgs/SetFullCollisionBehaviorRequest.lower_force_thresholds_acceleration;
         * native type float64. Exactly 6 elements. Finite IEEE values; no implicit unit conversion. Storage
         * belongs to the complete value and acquires no ROS resource.
         */
        public double[] @lower_force_thresholds_acceleration = new double[6];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original franka_msgs/SetFullCollisionBehaviorRequest.upper_force_thresholds_acceleration;
         * native type float64. Exactly 6 elements. Finite IEEE values; no implicit unit conversion. Storage
         * belongs to the complete value and acquires no ROS resource.
         */
        public double[] @upper_force_thresholds_acceleration = new double[6];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original franka_msgs/SetFullCollisionBehaviorRequest.lower_force_thresholds_nominal; native
         * type float64. Exactly 6 elements. Finite IEEE values; no implicit unit conversion. Storage belongs
         * to the complete value and acquires no ROS resource.
         */
        public double[] @lower_force_thresholds_nominal = new double[6];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original franka_msgs/SetFullCollisionBehaviorRequest.upper_force_thresholds_nominal; native
         * type float64. Exactly 6 elements. Finite IEEE values; no implicit unit conversion. Storage belongs
         * to the complete value and acquires no ROS resource.
         */
        public double[] @upper_force_thresholds_nominal = new double[6];

        public _Ros1Franka_msgsSetFullCollisionBehaviorRequest()
        {
        }
    }

    public sealed class Ros1Franka_msgsSetFullCollisionBehaviorRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Franka_msgsSetFullCollisionBehaviorRequest>
    {
        public static readonly Ros1Franka_msgsSetFullCollisionBehaviorRequestCodec Instance = new Ros1Franka_msgsSetFullCollisionBehaviorRequestCodec();

        private Ros1Franka_msgsSetFullCollisionBehaviorRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "franka_msgs/SetFullCollisionBehaviorRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_47a86620ec5abdd6cc820b095d8f5f4214c1d9af00ac1ff0740137bbdda7217c";
        public const int MIN_WIRE_BYTES = 416, MAX_WIRE_BYTES = 416;

        public byte[] Encode(_Ros1Franka_msgsSetFullCollisionBehaviorRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Franka_msgsSetFullCollisionBehaviorRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Franka_msgsSetFullCollisionBehaviorRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Franka_msgsSetFullCollisionBehaviorRequest value = ReadRos1Franka_msgsSetFullCollisionBehaviorRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Franka_msgsSetFullCollisionBehaviorRequest(_Codecs.Writer writer, _Ros1Franka_msgsSetFullCollisionBehaviorRequest value)
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

    private static _Ros1Franka_msgsSetFullCollisionBehaviorRequest ReadRos1Franka_msgsSetFullCollisionBehaviorRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Franka_msgsSetFullCollisionBehaviorRequest();
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

    // @brief Own every original field of franka_msgs/SetFullCollisionBehaviorResponse.
    // @details Canonical extent 5..261 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public sealed class _Ros1Franka_msgsSetFullCollisionBehaviorResponse
    {
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/SetFullCollisionBehaviorResponse.success; native type bool. Scalar
         * value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public bool @success = false;
        /**
         * @brief Retain the complete original string field.
         * @details Original franka_msgs/SetFullCollisionBehaviorResponse.error; native type string. Scalar
         * value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires
         * no ROS resource.
         */
        public string @error = "";

        public _Ros1Franka_msgsSetFullCollisionBehaviorResponse()
        {
        }
    }

    public sealed class Ros1Franka_msgsSetFullCollisionBehaviorResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Franka_msgsSetFullCollisionBehaviorResponse>
    {
        public static readonly Ros1Franka_msgsSetFullCollisionBehaviorResponseCodec Instance = new Ros1Franka_msgsSetFullCollisionBehaviorResponseCodec();

        private Ros1Franka_msgsSetFullCollisionBehaviorResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "franka_msgs/SetFullCollisionBehaviorResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_26f46e286c42d51a8ef45db7c8b3bf315fb02faf7b2be5d3741563d43169a0e2";
        public const int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 261;

        public byte[] Encode(_Ros1Franka_msgsSetFullCollisionBehaviorResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Franka_msgsSetFullCollisionBehaviorResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Franka_msgsSetFullCollisionBehaviorResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Franka_msgsSetFullCollisionBehaviorResponse value = ReadRos1Franka_msgsSetFullCollisionBehaviorResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Franka_msgsSetFullCollisionBehaviorResponse(_Codecs.Writer writer, _Ros1Franka_msgsSetFullCollisionBehaviorResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
        string part1 = value.@error;
        WriteText(writer, part1, 256);
    }

    private static _Ros1Franka_msgsSetFullCollisionBehaviorResponse ReadRos1Franka_msgsSetFullCollisionBehaviorResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Franka_msgsSetFullCollisionBehaviorResponse();
        value.@success = ReadBool(reader);
        value.@error = ReadText(reader, 256);
        return value;
    }

    // @brief Own every original field of franka_msgs/SetJointImpedanceRequest.
    // @details Canonical extent 56..56 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public sealed class _Ros1Franka_msgsSetJointImpedanceRequest
    {
        /**
         * @brief Retain the complete original float64 field.
         * @details Original franka_msgs/SetJointImpedanceRequest.joint_stiffness; native type float64. Exactly
         * 7 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value
         * and acquires no ROS resource.
         */
        public double[] @joint_stiffness = new double[7];

        public _Ros1Franka_msgsSetJointImpedanceRequest()
        {
        }
    }

    public sealed class Ros1Franka_msgsSetJointImpedanceRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Franka_msgsSetJointImpedanceRequest>
    {
        public static readonly Ros1Franka_msgsSetJointImpedanceRequestCodec Instance = new Ros1Franka_msgsSetJointImpedanceRequestCodec();

        private Ros1Franka_msgsSetJointImpedanceRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "franka_msgs/SetJointImpedanceRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_29b5419f698b39452d38fbc58a0e3c572b8d285b70c8acf7d326c440eb417c53";
        public const int MIN_WIRE_BYTES = 56, MAX_WIRE_BYTES = 56;

        public byte[] Encode(_Ros1Franka_msgsSetJointImpedanceRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Franka_msgsSetJointImpedanceRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Franka_msgsSetJointImpedanceRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Franka_msgsSetJointImpedanceRequest value = ReadRos1Franka_msgsSetJointImpedanceRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Franka_msgsSetJointImpedanceRequest(_Codecs.Writer writer, _Ros1Franka_msgsSetJointImpedanceRequest value)
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

    private static _Ros1Franka_msgsSetJointImpedanceRequest ReadRos1Franka_msgsSetJointImpedanceRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Franka_msgsSetJointImpedanceRequest();
        value.@joint_stiffness = new double[7];
        for(int index = 0; index < value.@joint_stiffness.Length; ++index)
            value.@joint_stiffness[index] = reader.Float64();
        return value;
    }

    // @brief Own every original field of franka_msgs/SetJointImpedanceResponse.
    // @details Canonical extent 5..261 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public sealed class _Ros1Franka_msgsSetJointImpedanceResponse
    {
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/SetJointImpedanceResponse.success; native type bool. Scalar value.
         * Storage belongs to the complete value and acquires no ROS resource.
         */
        public bool @success = false;
        /**
         * @brief Retain the complete original string field.
         * @details Original franka_msgs/SetJointImpedanceResponse.error; native type string. Scalar value.
         * UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public string @error = "";

        public _Ros1Franka_msgsSetJointImpedanceResponse()
        {
        }
    }

    public sealed class Ros1Franka_msgsSetJointImpedanceResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Franka_msgsSetJointImpedanceResponse>
    {
        public static readonly Ros1Franka_msgsSetJointImpedanceResponseCodec Instance = new Ros1Franka_msgsSetJointImpedanceResponseCodec();

        private Ros1Franka_msgsSetJointImpedanceResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "franka_msgs/SetJointImpedanceResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_1ae0cd7c4ad89de09ccffd6c4999435fa6965509e99a9adb98b7f3ebb3ea4c55";
        public const int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 261;

        public byte[] Encode(_Ros1Franka_msgsSetJointImpedanceResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Franka_msgsSetJointImpedanceResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Franka_msgsSetJointImpedanceResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Franka_msgsSetJointImpedanceResponse value = ReadRos1Franka_msgsSetJointImpedanceResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Franka_msgsSetJointImpedanceResponse(_Codecs.Writer writer, _Ros1Franka_msgsSetJointImpedanceResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
        string part1 = value.@error;
        WriteText(writer, part1, 256);
    }

    private static _Ros1Franka_msgsSetJointImpedanceResponse ReadRos1Franka_msgsSetJointImpedanceResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Franka_msgsSetJointImpedanceResponse();
        value.@success = ReadBool(reader);
        value.@error = ReadText(reader, 256);
        return value;
    }

    // @brief Own every original field of franka_msgs/SetKFrameRequest.
    // @details Canonical extent 128..128 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public sealed class _Ros1Franka_msgsSetKFrameRequest
    {
        /**
         * @brief Retain the complete original float64 field.
         * @details Original franka_msgs/SetKFrameRequest.EE_T_K; native type float64. Exactly 16 elements.
         * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
         * no ROS resource.
         */
        public double[] @EE_T_K = new double[16];

        public _Ros1Franka_msgsSetKFrameRequest()
        {
        }
    }

    public sealed class Ros1Franka_msgsSetKFrameRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Franka_msgsSetKFrameRequest>
    {
        public static readonly Ros1Franka_msgsSetKFrameRequestCodec Instance = new Ros1Franka_msgsSetKFrameRequestCodec();

        private Ros1Franka_msgsSetKFrameRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "franka_msgs/SetKFrameRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_36afcdc6402259fb5a71ae1b27be0bb8623a64dd93caffa376adea7862c86446";
        public const int MIN_WIRE_BYTES = 128, MAX_WIRE_BYTES = 128;

        public byte[] Encode(_Ros1Franka_msgsSetKFrameRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Franka_msgsSetKFrameRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Franka_msgsSetKFrameRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Franka_msgsSetKFrameRequest value = ReadRos1Franka_msgsSetKFrameRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Franka_msgsSetKFrameRequest(_Codecs.Writer writer, _Ros1Franka_msgsSetKFrameRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        double[] part0 = value.@EE_T_K;
        if(part0 == null || part0.Length != 16)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part0.Length; ++index)
        {
            double element = part0[index];
            writer.Float64(element);
        }
    }

    private static _Ros1Franka_msgsSetKFrameRequest ReadRos1Franka_msgsSetKFrameRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Franka_msgsSetKFrameRequest();
        value.@EE_T_K = new double[16];
        for(int index = 0; index < value.@EE_T_K.Length; ++index)
            value.@EE_T_K[index] = reader.Float64();
        return value;
    }

    // @brief Own every original field of franka_msgs/SetKFrameResponse.
    // @details Canonical extent 5..261 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public sealed class _Ros1Franka_msgsSetKFrameResponse
    {
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/SetKFrameResponse.success; native type bool. Scalar value. Storage
         * belongs to the complete value and acquires no ROS resource.
         */
        public bool @success = false;
        /**
         * @brief Retain the complete original string field.
         * @details Original franka_msgs/SetKFrameResponse.error; native type string. Scalar value. UTF-8
         * capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public string @error = "";

        public _Ros1Franka_msgsSetKFrameResponse()
        {
        }
    }

    public sealed class Ros1Franka_msgsSetKFrameResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Franka_msgsSetKFrameResponse>
    {
        public static readonly Ros1Franka_msgsSetKFrameResponseCodec Instance = new Ros1Franka_msgsSetKFrameResponseCodec();

        private Ros1Franka_msgsSetKFrameResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "franka_msgs/SetKFrameResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_4ea77d3e827a9b9eaf3c3f9805f78c38bfe91789555d0469cffd4ff4266cd443";
        public const int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 261;

        public byte[] Encode(_Ros1Franka_msgsSetKFrameResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Franka_msgsSetKFrameResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Franka_msgsSetKFrameResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Franka_msgsSetKFrameResponse value = ReadRos1Franka_msgsSetKFrameResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Franka_msgsSetKFrameResponse(_Codecs.Writer writer, _Ros1Franka_msgsSetKFrameResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
        string part1 = value.@error;
        WriteText(writer, part1, 256);
    }

    private static _Ros1Franka_msgsSetKFrameResponse ReadRos1Franka_msgsSetKFrameResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Franka_msgsSetKFrameResponse();
        value.@success = ReadBool(reader);
        value.@error = ReadText(reader, 256);
        return value;
    }

    // @brief Own every original field of franka_msgs/SetLoadRequest.
    // @details Canonical extent 104..104 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public sealed class _Ros1Franka_msgsSetLoadRequest
    {
        /**
         * @brief Retain the complete original float64 field.
         * @details Original franka_msgs/SetLoadRequest.mass; native type float64. Scalar value. Finite IEEE
         * values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double @mass = 0;
        /**
         * @brief Retain the complete original float64 field.
         * @details Original franka_msgs/SetLoadRequest.F_x_center_load; native type float64. Exactly 3
         * elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
         * acquires no ROS resource.
         */
        public double[] @F_x_center_load = new double[3];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original franka_msgs/SetLoadRequest.load_inertia; native type float64. Exactly 9 elements.
         * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
         * no ROS resource.
         */
        public double[] @load_inertia = new double[9];

        public _Ros1Franka_msgsSetLoadRequest()
        {
        }
    }

    public sealed class Ros1Franka_msgsSetLoadRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Franka_msgsSetLoadRequest>
    {
        public static readonly Ros1Franka_msgsSetLoadRequestCodec Instance = new Ros1Franka_msgsSetLoadRequestCodec();

        private Ros1Franka_msgsSetLoadRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "franka_msgs/SetLoadRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_d7c08dd9105cb7b83cb251e80c7d2dd1e9f7bb2a43f614bff6d00d808cccbcb5";
        public const int MIN_WIRE_BYTES = 104, MAX_WIRE_BYTES = 104;

        public byte[] Encode(_Ros1Franka_msgsSetLoadRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Franka_msgsSetLoadRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Franka_msgsSetLoadRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Franka_msgsSetLoadRequest value = ReadRos1Franka_msgsSetLoadRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Franka_msgsSetLoadRequest(_Codecs.Writer writer, _Ros1Franka_msgsSetLoadRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        double part0 = value.@mass;
        writer.Float64(part0);
        double[] part1 = value.@F_x_center_load;
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

    private static _Ros1Franka_msgsSetLoadRequest ReadRos1Franka_msgsSetLoadRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Franka_msgsSetLoadRequest();
        value.@mass = reader.Float64();
        value.@F_x_center_load = new double[3];
        for(int index = 0; index < value.@F_x_center_load.Length; ++index)
            value.@F_x_center_load[index] = reader.Float64();
        value.@load_inertia = new double[9];
        for(int index = 0; index < value.@load_inertia.Length; ++index)
            value.@load_inertia[index] = reader.Float64();
        return value;
    }

    // @brief Own every original field of franka_msgs/SetLoadResponse.
    // @details Canonical extent 5..261 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public sealed class _Ros1Franka_msgsSetLoadResponse
    {
        /**
         * @brief Retain the complete original bool field.
         * @details Original franka_msgs/SetLoadResponse.success; native type bool. Scalar value. Storage
         * belongs to the complete value and acquires no ROS resource.
         */
        public bool @success = false;
        /**
         * @brief Retain the complete original string field.
         * @details Original franka_msgs/SetLoadResponse.error; native type string. Scalar value. UTF-8
         * capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public string @error = "";

        public _Ros1Franka_msgsSetLoadResponse()
        {
        }
    }

    public sealed class Ros1Franka_msgsSetLoadResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Franka_msgsSetLoadResponse>
    {
        public static readonly Ros1Franka_msgsSetLoadResponseCodec Instance = new Ros1Franka_msgsSetLoadResponseCodec();

        private Ros1Franka_msgsSetLoadResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "franka_msgs/SetLoadResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_f18952407bf9e2813deeaa3734a781e90b74cb79892919c1218812ad71255cf3";
        public const int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 261;

        public byte[] Encode(_Ros1Franka_msgsSetLoadResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Franka_msgsSetLoadResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Franka_msgsSetLoadResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Franka_msgsSetLoadResponse value = ReadRos1Franka_msgsSetLoadResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Franka_msgsSetLoadResponse(_Codecs.Writer writer, _Ros1Franka_msgsSetLoadResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
        string part1 = value.@error;
        WriteText(writer, part1, 256);
    }

    private static _Ros1Franka_msgsSetLoadResponse ReadRos1Franka_msgsSetLoadResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Franka_msgsSetLoadResponse();
        value.@success = ReadBool(reader);
        value.@error = ReadText(reader, 256);
        return value;
    }
}
