// @brief Complete original flexiv ros2_foxy canonical values.
// @details UTF-8 limits count bytes and sequence limits count elements. Complete-value codecs retain
// every original field; native registration and manually granted ROS authority are separate. Caller-
// owned values and codec failures are described by each operation and the locale API reference.
// Generated complete canonical records; no native ABI, CDR or ROS grant.
#nullable enable
using System;
using _Codecs = global::Uwvm.RosWasm.Codecs;
namespace Uwvm.Flexiv.ros2foxy;

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

    // @brief Own every original field of flexiv_msgs/msg/JointPosVel.
    // @details Canonical extent 112..112 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public sealed class _Ros2Flexiv_msgsMsgJointPosVel
    {
        /**
         * @brief Retain the complete original float64 field.
         * @details Original flexiv_msgs/msg/JointPosVel.positions; native type float64. Exactly 7 elements.
         * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
         * no ROS resource.
         */
        public double[] @positions = new double[7];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original flexiv_msgs/msg/JointPosVel.velocities; native type float64. Exactly 7 elements.
         * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
         * no ROS resource.
         */
        public double[] @velocities = new double[7];

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
        public const string CODEC_IDENTITY = "UWVMROS1_c56feb3a74545187381d2d82c230038aaa70fca3a9243486374d69f3fc3103a8";
        public const int MIN_WIRE_BYTES = 112, MAX_WIRE_BYTES = 112;

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

    private static _Ros2Flexiv_msgsMsgJointPosVel ReadRos2Flexiv_msgsMsgJointPosVel(_Codecs.Reader reader)
    {
        var value = new _Ros2Flexiv_msgsMsgJointPosVel();
        value.@positions = new double[7];
        for(int index = 0; index < value.@positions.Length; ++index)
            value.@positions[index] = reader.Float64();
        value.@velocities = new double[7];
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
        public const string CODEC_IDENTITY = "UWVMROS1_285581852d18aa98aa5f42e3d920b263b9bc6907766f17daa503c58e81a2064f";
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

    // @brief Own every original field of flexiv_msgs/msg/RobotStates.
    // @details Canonical extent 864..864 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public sealed class _Ros2Flexiv_msgsMsgRobotStates
    {
        /**
         * @brief Retain the complete original float64 field.
         * @details Original flexiv_msgs/msg/RobotStates.q; native type float64. Exactly 7 elements. Finite
         * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double[] @q = new double[7];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original flexiv_msgs/msg/RobotStates.theta; native type float64. Exactly 7 elements. Finite
         * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double[] @theta = new double[7];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original flexiv_msgs/msg/RobotStates.dq; native type float64. Exactly 7 elements. Finite
         * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double[] @dq = new double[7];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original flexiv_msgs/msg/RobotStates.dtheta; native type float64. Exactly 7 elements.
         * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
         * no ROS resource.
         */
        public double[] @dtheta = new double[7];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original flexiv_msgs/msg/RobotStates.tau; native type float64. Exactly 7 elements. Finite
         * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public double[] @tau = new double[7];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original flexiv_msgs/msg/RobotStates.tau_des; native type float64. Exactly 7 elements.
         * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
         * no ROS resource.
         */
        public double[] @tau_des = new double[7];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original flexiv_msgs/msg/RobotStates.tau_dot; native type float64. Exactly 7 elements.
         * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
         * no ROS resource.
         */
        public double[] @tau_dot = new double[7];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original flexiv_msgs/msg/RobotStates.tau_ext; native type float64. Exactly 7 elements.
         * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
         * no ROS resource.
         */
        public double[] @tau_ext = new double[7];
        /**
         * @brief Retain the complete original geometry_msgs/msg/Pose field.
         * @details Original flexiv_msgs/msg/RobotStates.tcp_pose; native type geometry_msgs/msg/Pose. Scalar
         * value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public _Ros2Geometry_msgsMsgPose @tcp_pose = new _Ros2Geometry_msgsMsgPose();
        /**
         * @brief Retain the complete original geometry_msgs/msg/Pose field.
         * @details Original flexiv_msgs/msg/RobotStates.tcp_pose_des; native type geometry_msgs/msg/Pose.
         * Scalar value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public _Ros2Geometry_msgsMsgPose @tcp_pose_des = new _Ros2Geometry_msgsMsgPose();
        /**
         * @brief Retain the complete original geometry_msgs/msg/Accel field.
         * @details Original flexiv_msgs/msg/RobotStates.tcp_vel; native type geometry_msgs/msg/Accel. Scalar
         * value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public _Ros2Geometry_msgsMsgAccel @tcp_vel = new _Ros2Geometry_msgsMsgAccel();
        /**
         * @brief Retain the complete original geometry_msgs/msg/Pose field.
         * @details Original flexiv_msgs/msg/RobotStates.cam_pose; native type geometry_msgs/msg/Pose. Scalar
         * value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public _Ros2Geometry_msgsMsgPose @cam_pose = new _Ros2Geometry_msgsMsgPose();
        /**
         * @brief Retain the complete original geometry_msgs/msg/Pose field.
         * @details Original flexiv_msgs/msg/RobotStates.flange_pose; native type geometry_msgs/msg/Pose.
         * Scalar value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public _Ros2Geometry_msgsMsgPose @flange_pose = new _Ros2Geometry_msgsMsgPose();
        /**
         * @brief Retain the complete original geometry_msgs/msg/Wrench field.
         * @details Original flexiv_msgs/msg/RobotStates.ft_sensor_raw; native type geometry_msgs/msg/Wrench.
         * Scalar value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public _Ros2Geometry_msgsMsgWrench @ft_sensor_raw = new _Ros2Geometry_msgsMsgWrench();
        /**
         * @brief Retain the complete original geometry_msgs/msg/Wrench field.
         * @details Original flexiv_msgs/msg/RobotStates.ext_wrench_tcp_frame; native type
         * geometry_msgs/msg/Wrench. Scalar value. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public _Ros2Geometry_msgsMsgWrench @ext_wrench_tcp_frame = new _Ros2Geometry_msgsMsgWrench();
        /**
         * @brief Retain the complete original geometry_msgs/msg/Wrench field.
         * @details Original flexiv_msgs/msg/RobotStates.ext_wrench_base_frame; native type
         * geometry_msgs/msg/Wrench. Scalar value. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public _Ros2Geometry_msgsMsgWrench @ext_wrench_base_frame = new _Ros2Geometry_msgsMsgWrench();

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
        public const string CODEC_IDENTITY = "UWVMROS1_ce6c3a354edf285fa22f8cfb509c4a5f33c1ef82b7dc3d749ae1ecd29dde844b";
        public const int MIN_WIRE_BYTES = 864, MAX_WIRE_BYTES = 864;

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
        _Ros2Geometry_msgsMsgPose part8 = value.@tcp_pose;
        WriteRos2Geometry_msgsMsgPose(writer, part8);
        _Ros2Geometry_msgsMsgPose part9 = value.@tcp_pose_des;
        WriteRos2Geometry_msgsMsgPose(writer, part9);
        _Ros2Geometry_msgsMsgAccel part10 = value.@tcp_vel;
        WriteRos2Geometry_msgsMsgAccel(writer, part10);
        _Ros2Geometry_msgsMsgPose part11 = value.@cam_pose;
        WriteRos2Geometry_msgsMsgPose(writer, part11);
        _Ros2Geometry_msgsMsgPose part12 = value.@flange_pose;
        WriteRos2Geometry_msgsMsgPose(writer, part12);
        _Ros2Geometry_msgsMsgWrench part13 = value.@ft_sensor_raw;
        WriteRos2Geometry_msgsMsgWrench(writer, part13);
        _Ros2Geometry_msgsMsgWrench part14 = value.@ext_wrench_tcp_frame;
        WriteRos2Geometry_msgsMsgWrench(writer, part14);
        _Ros2Geometry_msgsMsgWrench part15 = value.@ext_wrench_base_frame;
        WriteRos2Geometry_msgsMsgWrench(writer, part15);
    }

    private static _Ros2Flexiv_msgsMsgRobotStates ReadRos2Flexiv_msgsMsgRobotStates(_Codecs.Reader reader)
    {
        var value = new _Ros2Flexiv_msgsMsgRobotStates();
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
        value.@tcp_pose = ReadRos2Geometry_msgsMsgPose(reader);
        value.@tcp_pose_des = ReadRos2Geometry_msgsMsgPose(reader);
        value.@tcp_vel = ReadRos2Geometry_msgsMsgAccel(reader);
        value.@cam_pose = ReadRos2Geometry_msgsMsgPose(reader);
        value.@flange_pose = ReadRos2Geometry_msgsMsgPose(reader);
        value.@ft_sensor_raw = ReadRos2Geometry_msgsMsgWrench(reader);
        value.@ext_wrench_tcp_frame = ReadRos2Geometry_msgsMsgWrench(reader);
        value.@ext_wrench_base_frame = ReadRos2Geometry_msgsMsgWrench(reader);
        return value;
    }
}
