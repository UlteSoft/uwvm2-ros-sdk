// @brief Complete original flexiv ros1_noetic canonical values.
// @details UTF-8 limits count bytes and sequence limits count elements. Complete-value codecs retain
// every original field; native registration and manually granted ROS authority are separate. Caller-
// owned values and codec failures are described by each operation and the locale API reference.
// Generated complete canonical records; no native ABI, CDR or ROS grant.
#nullable enable
using System;
using _Codecs = global::Uwvm.RosWasm.Codecs;
namespace Uwvm.Flexiv.ros1noetic;

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

    // @brief Own every original field of flexiv_msgs/JointPosVel.
    // @details Canonical extent 112..112 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public sealed class _Ros1Flexiv_msgsJointPosVel
    {
        /**
         * @brief Retain the complete original float64 field.
         * @details Original flexiv_msgs/JointPosVel.positions; native type float64. Exactly 7 elements. Finite
         * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double[] @positions = new double[7];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original flexiv_msgs/JointPosVel.velocities; native type float64. Exactly 7 elements.
         * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
         * no ROS resource.
         */
        public double[] @velocities = new double[7];

        public _Ros1Flexiv_msgsJointPosVel()
        {
        }
    }

    public sealed class Ros1Flexiv_msgsJointPosVelCodec : global::Uwvm.RosWasm.ICodec<_Ros1Flexiv_msgsJointPosVel>
    {
        public static readonly Ros1Flexiv_msgsJointPosVelCodec Instance = new Ros1Flexiv_msgsJointPosVelCodec();

        private Ros1Flexiv_msgsJointPosVelCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "flexiv_msgs/JointPosVel";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_60868295fe1798f349d7f675035bd476f0f6caa8b7568e7a66487c32459fdfaa";
        public const int MIN_WIRE_BYTES = 112, MAX_WIRE_BYTES = 112;

        public byte[] Encode(_Ros1Flexiv_msgsJointPosVel value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Flexiv_msgsJointPosVel(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Flexiv_msgsJointPosVel Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Flexiv_msgsJointPosVel value = ReadRos1Flexiv_msgsJointPosVel(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Flexiv_msgsJointPosVel(_Codecs.Writer writer, _Ros1Flexiv_msgsJointPosVel value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        double[] part0 = value.@positions;
        if(part0 == null || part0.Length != 7)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part0.Length; ++index)
        {
            double element = part0[index];
            writer.Float64(element);
        }
        double[] part1 = value.@velocities;
        if(part1 == null || part1.Length != 7)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part1.Length; ++index)
        {
            double element = part1[index];
            writer.Float64(element);
        }
    }

    private static _Ros1Flexiv_msgsJointPosVel ReadRos1Flexiv_msgsJointPosVel(_Codecs.Reader reader)
    {
        var value = new _Ros1Flexiv_msgsJointPosVel();
        value.@positions = new double[7];
        for(int index = 0; index < value.@positions.Length; ++index)
            value.@positions[index] = reader.Float64();
        value.@velocities = new double[7];
        for(int index = 0; index < value.@velocities.Length; ++index)
            value.@velocities[index] = reader.Float64();
        return value;
    }

    // @brief Own every original field of flexiv_msgs/Mode.
    // @details Canonical extent 1..1 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public sealed class _Ros1Flexiv_msgsMode
    {
        /**
         * @brief Retain the complete original int8 field.
         * @details Original flexiv_msgs/Mode.mode; native type int8. Scalar value. Storage belongs to the
         * complete value and acquires no ROS resource.
         */
        public sbyte @mode = 0;

        public _Ros1Flexiv_msgsMode()
        {
        }
    }

    public sealed class Ros1Flexiv_msgsModeCodec : global::Uwvm.RosWasm.ICodec<_Ros1Flexiv_msgsMode>
    {
        public static readonly Ros1Flexiv_msgsModeCodec Instance = new Ros1Flexiv_msgsModeCodec();

        private Ros1Flexiv_msgsModeCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "flexiv_msgs/Mode";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_85789f97962c70edfe4703d5a78ed198655e3ebe300f5a9c588d739bae87f422";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros1Flexiv_msgsMode value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Flexiv_msgsMode(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Flexiv_msgsMode Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Flexiv_msgsMode value = ReadRos1Flexiv_msgsMode(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Flexiv_msgsMode(_Codecs.Writer writer, _Ros1Flexiv_msgsMode value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        sbyte part0 = value.@mode;
        writer.Unsigned(unchecked((byte)part0), 1);
    }

    private static _Ros1Flexiv_msgsMode ReadRos1Flexiv_msgsMode(_Codecs.Reader reader)
    {
        var value = new _Ros1Flexiv_msgsMode();
        value.@mode = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    // @brief Own every original field of geometry_msgs/Point.
    // @details Canonical extent 24..24 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public sealed class _Ros1Geometry_msgsPoint
    {
        /**
         * @brief This contains the position of a point in free space
         * @details Original geometry_msgs/Point.x; native type float64. Scalar value. Finite IEEE values; no
         * implicit unit conversion. Storage belongs to the complete value and acquires no ROS resource.
         */
        public double @x = 0;
        /**
         * @brief Retain the complete original float64 field.
         * @details Original geometry_msgs/Point.y; native type float64. Scalar value. Finite IEEE values; no
         * implicit unit conversion. Storage belongs to the complete value and acquires no ROS resource.
         */
        public double @y = 0;
        /**
         * @brief Retain the complete original float64 field.
         * @details Original geometry_msgs/Point.z; native type float64. Scalar value. Finite IEEE values; no
         * implicit unit conversion. Storage belongs to the complete value and acquires no ROS resource.
         */
        public double @z = 0;

        public _Ros1Geometry_msgsPoint()
        {
        }
    }

    public sealed class Ros1Geometry_msgsPointCodec : global::Uwvm.RosWasm.ICodec<_Ros1Geometry_msgsPoint>
    {
        public static readonly Ros1Geometry_msgsPointCodec Instance = new Ros1Geometry_msgsPointCodec();

        private Ros1Geometry_msgsPointCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "geometry_msgs/Point";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_b55e2bde60f6cedb426cada54bc7baefc536c7bc731bd49fb152d89a892de62b";
        public const int MIN_WIRE_BYTES = 24, MAX_WIRE_BYTES = 24;

        public byte[] Encode(_Ros1Geometry_msgsPoint value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Geometry_msgsPoint(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Geometry_msgsPoint Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Geometry_msgsPoint value = ReadRos1Geometry_msgsPoint(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Geometry_msgsPoint(_Codecs.Writer writer, _Ros1Geometry_msgsPoint value)
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

    private static _Ros1Geometry_msgsPoint ReadRos1Geometry_msgsPoint(_Codecs.Reader reader)
    {
        var value = new _Ros1Geometry_msgsPoint();
        value.@x = reader.Float64();
        value.@y = reader.Float64();
        value.@z = reader.Float64();
        return value;
    }

    // @brief Own every original field of geometry_msgs/Quaternion.
    // @details Canonical extent 32..32 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public sealed class _Ros1Geometry_msgsQuaternion
    {
        /**
         * @brief This represents an orientation in free space in quaternion form.
         * @details Original geometry_msgs/Quaternion.x; native type float64. Scalar value. Finite IEEE values;
         * no implicit unit conversion. Storage belongs to the complete value and acquires no ROS resource.
         */
        public double @x = 0;
        /**
         * @brief Retain the complete original float64 field.
         * @details Original geometry_msgs/Quaternion.y; native type float64. Scalar value. Finite IEEE values;
         * no implicit unit conversion. Storage belongs to the complete value and acquires no ROS resource.
         */
        public double @y = 0;
        /**
         * @brief Retain the complete original float64 field.
         * @details Original geometry_msgs/Quaternion.z; native type float64. Scalar value. Finite IEEE values;
         * no implicit unit conversion. Storage belongs to the complete value and acquires no ROS resource.
         */
        public double @z = 0;
        /**
         * @brief Retain the complete original float64 field.
         * @details Original geometry_msgs/Quaternion.w; native type float64. Scalar value. Finite IEEE values;
         * no implicit unit conversion. Storage belongs to the complete value and acquires no ROS resource.
         */
        public double @w = 0;

        public _Ros1Geometry_msgsQuaternion()
        {
        }
    }

    public sealed class Ros1Geometry_msgsQuaternionCodec : global::Uwvm.RosWasm.ICodec<_Ros1Geometry_msgsQuaternion>
    {
        public static readonly Ros1Geometry_msgsQuaternionCodec Instance = new Ros1Geometry_msgsQuaternionCodec();

        private Ros1Geometry_msgsQuaternionCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "geometry_msgs/Quaternion";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_48fe20d5d29a8ca1a630605a58f80baacc52d9a65b1ca87efd50ffdd52882934";
        public const int MIN_WIRE_BYTES = 32, MAX_WIRE_BYTES = 32;

        public byte[] Encode(_Ros1Geometry_msgsQuaternion value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Geometry_msgsQuaternion(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Geometry_msgsQuaternion Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Geometry_msgsQuaternion value = ReadRos1Geometry_msgsQuaternion(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Geometry_msgsQuaternion(_Codecs.Writer writer, _Ros1Geometry_msgsQuaternion value)
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

    private static _Ros1Geometry_msgsQuaternion ReadRos1Geometry_msgsQuaternion(_Codecs.Reader reader)
    {
        var value = new _Ros1Geometry_msgsQuaternion();
        value.@x = reader.Float64();
        value.@y = reader.Float64();
        value.@z = reader.Float64();
        value.@w = reader.Float64();
        return value;
    }

    // @brief Own every original field of geometry_msgs/Pose.
    // @details Canonical extent 56..56 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public sealed class _Ros1Geometry_msgsPose
    {
        /**
         * @brief A representation of pose in free space, composed of position and orientation.
         * @details Original geometry_msgs/Pose.position; native type geometry_msgs/Point. Scalar value.
         * Storage belongs to the complete value and acquires no ROS resource.
         */
        public _Ros1Geometry_msgsPoint @position = new _Ros1Geometry_msgsPoint();
        /**
         * @brief Retain the complete original geometry_msgs/Quaternion field.
         * @details Original geometry_msgs/Pose.orientation; native type geometry_msgs/Quaternion. Scalar
         * value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public _Ros1Geometry_msgsQuaternion @orientation = new _Ros1Geometry_msgsQuaternion();

        public _Ros1Geometry_msgsPose()
        {
        }
    }

    public sealed class Ros1Geometry_msgsPoseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Geometry_msgsPose>
    {
        public static readonly Ros1Geometry_msgsPoseCodec Instance = new Ros1Geometry_msgsPoseCodec();

        private Ros1Geometry_msgsPoseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "geometry_msgs/Pose";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_e49ed287cd0de31a16c8cd49ad8f41f81d44e23306b8dcb61da6e0e789595471";
        public const int MIN_WIRE_BYTES = 56, MAX_WIRE_BYTES = 56;

        public byte[] Encode(_Ros1Geometry_msgsPose value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Geometry_msgsPose(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Geometry_msgsPose Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Geometry_msgsPose value = ReadRos1Geometry_msgsPose(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Geometry_msgsPose(_Codecs.Writer writer, _Ros1Geometry_msgsPose value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros1Geometry_msgsPoint part0 = value.@position;
        WriteRos1Geometry_msgsPoint(writer, part0);
        _Ros1Geometry_msgsQuaternion part1 = value.@orientation;
        WriteRos1Geometry_msgsQuaternion(writer, part1);
    }

    private static _Ros1Geometry_msgsPose ReadRos1Geometry_msgsPose(_Codecs.Reader reader)
    {
        var value = new _Ros1Geometry_msgsPose();
        value.@position = ReadRos1Geometry_msgsPoint(reader);
        value.@orientation = ReadRos1Geometry_msgsQuaternion(reader);
        return value;
    }

    // @brief Own every original field of geometry_msgs/Vector3.
    // @details Canonical extent 24..24 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public sealed class _Ros1Geometry_msgsVector3
    {
        /**
         * @brief This represents a vector in free space. It is only meant to represent a direction. Therefore,
         * it does not make sense to apply a translation to it (e.g., when applying a generic rigid
         * transformation to a Vector3, tf2 will only apply the rotation). If you want your data to be
         * translatable too, use the geometry_msgs/Point message instead.
         * @details Original geometry_msgs/Vector3.x; native type float64. Scalar value. Finite IEEE values; no
         * implicit unit conversion. Storage belongs to the complete value and acquires no ROS resource.
         */
        public double @x = 0;
        /**
         * @brief Retain the complete original float64 field.
         * @details Original geometry_msgs/Vector3.y; native type float64. Scalar value. Finite IEEE values; no
         * implicit unit conversion. Storage belongs to the complete value and acquires no ROS resource.
         */
        public double @y = 0;
        /**
         * @brief Retain the complete original float64 field.
         * @details Original geometry_msgs/Vector3.z; native type float64. Scalar value. Finite IEEE values; no
         * implicit unit conversion. Storage belongs to the complete value and acquires no ROS resource.
         */
        public double @z = 0;

        public _Ros1Geometry_msgsVector3()
        {
        }
    }

    public sealed class Ros1Geometry_msgsVector3Codec : global::Uwvm.RosWasm.ICodec<_Ros1Geometry_msgsVector3>
    {
        public static readonly Ros1Geometry_msgsVector3Codec Instance = new Ros1Geometry_msgsVector3Codec();

        private Ros1Geometry_msgsVector3Codec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "geometry_msgs/Vector3";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_e90efcf4803d82763e0b83f8ef5502b5d042158873fcc91be32543d25d7632bc";
        public const int MIN_WIRE_BYTES = 24, MAX_WIRE_BYTES = 24;

        public byte[] Encode(_Ros1Geometry_msgsVector3 value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Geometry_msgsVector3(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Geometry_msgsVector3 Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Geometry_msgsVector3 value = ReadRos1Geometry_msgsVector3(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Geometry_msgsVector3(_Codecs.Writer writer, _Ros1Geometry_msgsVector3 value)
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

    private static _Ros1Geometry_msgsVector3 ReadRos1Geometry_msgsVector3(_Codecs.Reader reader)
    {
        var value = new _Ros1Geometry_msgsVector3();
        value.@x = reader.Float64();
        value.@y = reader.Float64();
        value.@z = reader.Float64();
        return value;
    }

    // @brief Own every original field of geometry_msgs/Accel.
    // @details Canonical extent 48..48 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public sealed class _Ros1Geometry_msgsAccel
    {
        /**
         * @brief This expresses acceleration in free space broken into its linear and angular parts.
         * @details Original geometry_msgs/Accel.linear; native type geometry_msgs/Vector3. Scalar value.
         * Storage belongs to the complete value and acquires no ROS resource.
         */
        public _Ros1Geometry_msgsVector3 @linear = new _Ros1Geometry_msgsVector3();
        /**
         * @brief Retain the complete original geometry_msgs/Vector3 field.
         * @details Original geometry_msgs/Accel.angular; native type geometry_msgs/Vector3. Scalar value.
         * Storage belongs to the complete value and acquires no ROS resource.
         */
        public _Ros1Geometry_msgsVector3 @angular = new _Ros1Geometry_msgsVector3();

        public _Ros1Geometry_msgsAccel()
        {
        }
    }

    public sealed class Ros1Geometry_msgsAccelCodec : global::Uwvm.RosWasm.ICodec<_Ros1Geometry_msgsAccel>
    {
        public static readonly Ros1Geometry_msgsAccelCodec Instance = new Ros1Geometry_msgsAccelCodec();

        private Ros1Geometry_msgsAccelCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "geometry_msgs/Accel";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_3345762fc354a5698d41098276702c7d3cee87fe9a531b0229111b9b3bf700ed";
        public const int MIN_WIRE_BYTES = 48, MAX_WIRE_BYTES = 48;

        public byte[] Encode(_Ros1Geometry_msgsAccel value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Geometry_msgsAccel(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Geometry_msgsAccel Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Geometry_msgsAccel value = ReadRos1Geometry_msgsAccel(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Geometry_msgsAccel(_Codecs.Writer writer, _Ros1Geometry_msgsAccel value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros1Geometry_msgsVector3 part0 = value.@linear;
        WriteRos1Geometry_msgsVector3(writer, part0);
        _Ros1Geometry_msgsVector3 part1 = value.@angular;
        WriteRos1Geometry_msgsVector3(writer, part1);
    }

    private static _Ros1Geometry_msgsAccel ReadRos1Geometry_msgsAccel(_Codecs.Reader reader)
    {
        var value = new _Ros1Geometry_msgsAccel();
        value.@linear = ReadRos1Geometry_msgsVector3(reader);
        value.@angular = ReadRos1Geometry_msgsVector3(reader);
        return value;
    }

    // @brief Own every original field of geometry_msgs/Wrench.
    // @details Canonical extent 48..48 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public sealed class _Ros1Geometry_msgsWrench
    {
        /**
         * @brief This represents force in free space, separated into its linear and angular parts.
         * @details Original geometry_msgs/Wrench.force; native type geometry_msgs/Vector3. Scalar value.
         * Storage belongs to the complete value and acquires no ROS resource.
         */
        public _Ros1Geometry_msgsVector3 @force = new _Ros1Geometry_msgsVector3();
        /**
         * @brief Retain the complete original geometry_msgs/Vector3 field.
         * @details Original geometry_msgs/Wrench.torque; native type geometry_msgs/Vector3. Scalar value.
         * Storage belongs to the complete value and acquires no ROS resource.
         */
        public _Ros1Geometry_msgsVector3 @torque = new _Ros1Geometry_msgsVector3();

        public _Ros1Geometry_msgsWrench()
        {
        }
    }

    public sealed class Ros1Geometry_msgsWrenchCodec : global::Uwvm.RosWasm.ICodec<_Ros1Geometry_msgsWrench>
    {
        public static readonly Ros1Geometry_msgsWrenchCodec Instance = new Ros1Geometry_msgsWrenchCodec();

        private Ros1Geometry_msgsWrenchCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "geometry_msgs/Wrench";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_b0938c4e084df68cf7c46445070ac3e9305d06f678275845aec6055db77617c3";
        public const int MIN_WIRE_BYTES = 48, MAX_WIRE_BYTES = 48;

        public byte[] Encode(_Ros1Geometry_msgsWrench value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Geometry_msgsWrench(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Geometry_msgsWrench Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Geometry_msgsWrench value = ReadRos1Geometry_msgsWrench(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Geometry_msgsWrench(_Codecs.Writer writer, _Ros1Geometry_msgsWrench value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros1Geometry_msgsVector3 part0 = value.@force;
        WriteRos1Geometry_msgsVector3(writer, part0);
        _Ros1Geometry_msgsVector3 part1 = value.@torque;
        WriteRos1Geometry_msgsVector3(writer, part1);
    }

    private static _Ros1Geometry_msgsWrench ReadRos1Geometry_msgsWrench(_Codecs.Reader reader)
    {
        var value = new _Ros1Geometry_msgsWrench();
        value.@force = ReadRos1Geometry_msgsVector3(reader);
        value.@torque = ReadRos1Geometry_msgsVector3(reader);
        return value;
    }

    // @brief Own every original field of flexiv_msgs/RobotStates.
    // @details Canonical extent 864..864 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public sealed class _Ros1Flexiv_msgsRobotStates
    {
        /**
         * @brief Retain the complete original float64 field.
         * @details Original flexiv_msgs/RobotStates.q; native type float64. Exactly 7 elements. Finite IEEE
         * values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double[] @q = new double[7];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original flexiv_msgs/RobotStates.theta; native type float64. Exactly 7 elements. Finite
         * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double[] @theta = new double[7];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original flexiv_msgs/RobotStates.dq; native type float64. Exactly 7 elements. Finite IEEE
         * values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double[] @dq = new double[7];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original flexiv_msgs/RobotStates.dtheta; native type float64. Exactly 7 elements. Finite
         * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double[] @dtheta = new double[7];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original flexiv_msgs/RobotStates.tau; native type float64. Exactly 7 elements. Finite IEEE
         * values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double[] @tau = new double[7];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original flexiv_msgs/RobotStates.tau_des; native type float64. Exactly 7 elements. Finite
         * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double[] @tau_des = new double[7];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original flexiv_msgs/RobotStates.tau_dot; native type float64. Exactly 7 elements. Finite
         * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double[] @tau_dot = new double[7];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original flexiv_msgs/RobotStates.tau_ext; native type float64. Exactly 7 elements. Finite
         * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double[] @tau_ext = new double[7];
        /**
         * @brief Retain the complete original geometry_msgs/Pose field.
         * @details Original flexiv_msgs/RobotStates.tcp_pose; native type geometry_msgs/Pose. Scalar value.
         * Storage belongs to the complete value and acquires no ROS resource.
         */
        public _Ros1Geometry_msgsPose @tcp_pose = new _Ros1Geometry_msgsPose();
        /**
         * @brief Retain the complete original geometry_msgs/Pose field.
         * @details Original flexiv_msgs/RobotStates.tcp_pose_des; native type geometry_msgs/Pose. Scalar
         * value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public _Ros1Geometry_msgsPose @tcp_pose_des = new _Ros1Geometry_msgsPose();
        /**
         * @brief Retain the complete original geometry_msgs/Accel field.
         * @details Original flexiv_msgs/RobotStates.tcp_vel; native type geometry_msgs/Accel. Scalar value.
         * Storage belongs to the complete value and acquires no ROS resource.
         */
        public _Ros1Geometry_msgsAccel @tcp_vel = new _Ros1Geometry_msgsAccel();
        /**
         * @brief Retain the complete original geometry_msgs/Pose field.
         * @details Original flexiv_msgs/RobotStates.cam_pose; native type geometry_msgs/Pose. Scalar value.
         * Storage belongs to the complete value and acquires no ROS resource.
         */
        public _Ros1Geometry_msgsPose @cam_pose = new _Ros1Geometry_msgsPose();
        /**
         * @brief Retain the complete original geometry_msgs/Pose field.
         * @details Original flexiv_msgs/RobotStates.flange_pose; native type geometry_msgs/Pose. Scalar value.
         * Storage belongs to the complete value and acquires no ROS resource.
         */
        public _Ros1Geometry_msgsPose @flange_pose = new _Ros1Geometry_msgsPose();
        /**
         * @brief Retain the complete original geometry_msgs/Wrench field.
         * @details Original flexiv_msgs/RobotStates.ft_sensor_raw; native type geometry_msgs/Wrench. Scalar
         * value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public _Ros1Geometry_msgsWrench @ft_sensor_raw = new _Ros1Geometry_msgsWrench();
        /**
         * @brief Retain the complete original geometry_msgs/Wrench field.
         * @details Original flexiv_msgs/RobotStates.ext_wrench_tcp_frame; native type geometry_msgs/Wrench.
         * Scalar value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public _Ros1Geometry_msgsWrench @ext_wrench_tcp_frame = new _Ros1Geometry_msgsWrench();
        /**
         * @brief Retain the complete original geometry_msgs/Wrench field.
         * @details Original flexiv_msgs/RobotStates.ext_wrench_base_frame; native type geometry_msgs/Wrench.
         * Scalar value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public _Ros1Geometry_msgsWrench @ext_wrench_base_frame = new _Ros1Geometry_msgsWrench();

        public _Ros1Flexiv_msgsRobotStates()
        {
        }
    }

    public sealed class Ros1Flexiv_msgsRobotStatesCodec : global::Uwvm.RosWasm.ICodec<_Ros1Flexiv_msgsRobotStates>
    {
        public static readonly Ros1Flexiv_msgsRobotStatesCodec Instance = new Ros1Flexiv_msgsRobotStatesCodec();

        private Ros1Flexiv_msgsRobotStatesCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "flexiv_msgs/RobotStates";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_a64419da913e6fafce645177a491cc77a1dcee9ef785bc04380e7aebaeeb12a8";
        public const int MIN_WIRE_BYTES = 864, MAX_WIRE_BYTES = 864;

        public byte[] Encode(_Ros1Flexiv_msgsRobotStates value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Flexiv_msgsRobotStates(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Flexiv_msgsRobotStates Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Flexiv_msgsRobotStates value = ReadRos1Flexiv_msgsRobotStates(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Flexiv_msgsRobotStates(_Codecs.Writer writer, _Ros1Flexiv_msgsRobotStates value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        double[] part0 = value.@q;
        if(part0 == null || part0.Length != 7)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part0.Length; ++index)
        {
            double element = part0[index];
            writer.Float64(element);
        }
        double[] part1 = value.@theta;
        if(part1 == null || part1.Length != 7)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part1.Length; ++index)
        {
            double element = part1[index];
            writer.Float64(element);
        }
        double[] part2 = value.@dq;
        if(part2 == null || part2.Length != 7)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part2.Length; ++index)
        {
            double element = part2[index];
            writer.Float64(element);
        }
        double[] part3 = value.@dtheta;
        if(part3 == null || part3.Length != 7)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part3.Length; ++index)
        {
            double element = part3[index];
            writer.Float64(element);
        }
        double[] part4 = value.@tau;
        if(part4 == null || part4.Length != 7)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part4.Length; ++index)
        {
            double element = part4[index];
            writer.Float64(element);
        }
        double[] part5 = value.@tau_des;
        if(part5 == null || part5.Length != 7)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part5.Length; ++index)
        {
            double element = part5[index];
            writer.Float64(element);
        }
        double[] part6 = value.@tau_dot;
        if(part6 == null || part6.Length != 7)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part6.Length; ++index)
        {
            double element = part6[index];
            writer.Float64(element);
        }
        double[] part7 = value.@tau_ext;
        if(part7 == null || part7.Length != 7)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part7.Length; ++index)
        {
            double element = part7[index];
            writer.Float64(element);
        }
        _Ros1Geometry_msgsPose part8 = value.@tcp_pose;
        WriteRos1Geometry_msgsPose(writer, part8);
        _Ros1Geometry_msgsPose part9 = value.@tcp_pose_des;
        WriteRos1Geometry_msgsPose(writer, part9);
        _Ros1Geometry_msgsAccel part10 = value.@tcp_vel;
        WriteRos1Geometry_msgsAccel(writer, part10);
        _Ros1Geometry_msgsPose part11 = value.@cam_pose;
        WriteRos1Geometry_msgsPose(writer, part11);
        _Ros1Geometry_msgsPose part12 = value.@flange_pose;
        WriteRos1Geometry_msgsPose(writer, part12);
        _Ros1Geometry_msgsWrench part13 = value.@ft_sensor_raw;
        WriteRos1Geometry_msgsWrench(writer, part13);
        _Ros1Geometry_msgsWrench part14 = value.@ext_wrench_tcp_frame;
        WriteRos1Geometry_msgsWrench(writer, part14);
        _Ros1Geometry_msgsWrench part15 = value.@ext_wrench_base_frame;
        WriteRos1Geometry_msgsWrench(writer, part15);
    }

    private static _Ros1Flexiv_msgsRobotStates ReadRos1Flexiv_msgsRobotStates(_Codecs.Reader reader)
    {
        var value = new _Ros1Flexiv_msgsRobotStates();
        value.@q = new double[7];
        for(int index = 0; index < value.@q.Length; ++index)
            value.@q[index] = reader.Float64();
        value.@theta = new double[7];
        for(int index = 0; index < value.@theta.Length; ++index)
            value.@theta[index] = reader.Float64();
        value.@dq = new double[7];
        for(int index = 0; index < value.@dq.Length; ++index)
            value.@dq[index] = reader.Float64();
        value.@dtheta = new double[7];
        for(int index = 0; index < value.@dtheta.Length; ++index)
            value.@dtheta[index] = reader.Float64();
        value.@tau = new double[7];
        for(int index = 0; index < value.@tau.Length; ++index)
            value.@tau[index] = reader.Float64();
        value.@tau_des = new double[7];
        for(int index = 0; index < value.@tau_des.Length; ++index)
            value.@tau_des[index] = reader.Float64();
        value.@tau_dot = new double[7];
        for(int index = 0; index < value.@tau_dot.Length; ++index)
            value.@tau_dot[index] = reader.Float64();
        value.@tau_ext = new double[7];
        for(int index = 0; index < value.@tau_ext.Length; ++index)
            value.@tau_ext[index] = reader.Float64();
        value.@tcp_pose = ReadRos1Geometry_msgsPose(reader);
        value.@tcp_pose_des = ReadRos1Geometry_msgsPose(reader);
        value.@tcp_vel = ReadRos1Geometry_msgsAccel(reader);
        value.@cam_pose = ReadRos1Geometry_msgsPose(reader);
        value.@flange_pose = ReadRos1Geometry_msgsPose(reader);
        value.@ft_sensor_raw = ReadRos1Geometry_msgsWrench(reader);
        value.@ext_wrench_tcp_frame = ReadRos1Geometry_msgsWrench(reader);
        value.@ext_wrench_base_frame = ReadRos1Geometry_msgsWrench(reader);
        return value;
    }
}
