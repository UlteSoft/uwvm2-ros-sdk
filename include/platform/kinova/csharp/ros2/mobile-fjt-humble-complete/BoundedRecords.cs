// @brief Complete original kinova ros2_humble canonical values.
// @details UTF-8 limits count bytes and sequence limits count elements. Complete-value codecs retain
// every original field; native registration and manually granted ROS authority are separate. Caller-
// owned values and codec failures are described by each operation and the locale API reference.
// Generated complete canonical records; no native ABI, CDR or ROS grant.
#nullable enable
using System;
using _Codecs = global::Uwvm.RosWasm.Codecs;
namespace Uwvm.Kinova.ros2humble;

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

    // @brief Own every original field of builtin_interfaces/msg/Duration.
    // @details Canonical extent 8..8 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public sealed class _Ros2Builtin_interfacesMsgDuration
    {
        /**
         * @brief Duration defines a period between two time points. Messages of this datatype are of ROS Time
         * following this design: https://design.ros2.org/articles/clock_and_time.html The seconds component,
         * valid over all int32 values.
         * @details Original builtin_interfaces/msg/Duration.sec; native type int32. Scalar value. Storage
         * belongs to the complete value and acquires no ROS resource.
         */
        public int @sec = 0;
        /**
         * @brief The nanoseconds component, valid in the range [0, 1e9), to be added to the seconds component.
         * e.g. The duration -1.7 seconds is represented as {sec: -2, nanosec: 3e8} The duration 1.7 seconds is
         * represented as {sec: 1, nanosec: 7e8}
         * @details Original builtin_interfaces/msg/Duration.nanosec; native type uint32. Scalar value. Storage
         * belongs to the complete value and acquires no ROS resource.
         */
        public uint @nanosec = 0;

        public _Ros2Builtin_interfacesMsgDuration()
        {
        }
    }

    public sealed class Ros2Builtin_interfacesMsgDurationCodec : global::Uwvm.RosWasm.ICodec<_Ros2Builtin_interfacesMsgDuration>
    {
        public static readonly Ros2Builtin_interfacesMsgDurationCodec Instance = new Ros2Builtin_interfacesMsgDurationCodec();

        private Ros2Builtin_interfacesMsgDurationCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "builtin_interfaces/msg/Duration";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_3804444fae7a82a57907d25c2c3dc54d9a42dcd305f41ca073b1221dca7d36e4";
        public const int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 8;

        public byte[] Encode(_Ros2Builtin_interfacesMsgDuration value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Builtin_interfacesMsgDuration(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Builtin_interfacesMsgDuration Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Builtin_interfacesMsgDuration value = ReadRos2Builtin_interfacesMsgDuration(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Builtin_interfacesMsgDuration(_Codecs.Writer writer, _Ros2Builtin_interfacesMsgDuration value)
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

    private static _Ros2Builtin_interfacesMsgDuration ReadRos2Builtin_interfacesMsgDuration(_Codecs.Reader reader)
    {
        var value = new _Ros2Builtin_interfacesMsgDuration();
        value.@sec = unchecked((int)reader.Unsigned(4));
        value.@nanosec = unchecked((uint)reader.Unsigned(4));
        if((long)value.@nanosec < 0 || (long)value.@nanosec >= 1000000000L)
            throw new ArgumentException("normalized subsecond field required");
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

    // @brief Own every original field of trajectory_msgs/msg/JointTrajectoryPoint.
    // @details Canonical extent 24..280 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public sealed class _Ros2Trajectory_msgsMsgJointTrajectoryPoint
    {
        /**
         * @brief Each trajectory point specifies either positions[, velocities[, accelerations]] or
         * positions[, effort] for the trajectory to be executed. All specified values are in the same order as
         * the joint names in JointTrajectory.msg. Single DOF joint positions for each joint relative to their
         * "0" position. The units depend on the specific joint type: radians for revolute or continuous
         * joints, and meters for prismatic joints.
         * @details Original trajectory_msgs/msg/JointTrajectoryPoint.positions; native type float64. At most 8
         * elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
         * acquires no ROS resource.
         */
        public double[] @positions = new double[0];
        /**
         * @brief The rate of change in position of each joint. Units are joint type dependent. Radians/second
         * for revolute or continuous joints, and meters/second for prismatic joints.
         * @details Original trajectory_msgs/msg/JointTrajectoryPoint.velocities; native type float64. At most
         * 8 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value
         * and acquires no ROS resource.
         */
        public double[] @velocities = new double[0];
        /**
         * @brief Rate of change in velocity of each joint. Units are joint type dependent. Radians/second^2
         * for revolute or continuous joints, and meters/second^2 for prismatic joints.
         * @details Original trajectory_msgs/msg/JointTrajectoryPoint.accelerations; native type float64. At
         * most 8 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete
         * value and acquires no ROS resource.
         */
        public double[] @accelerations = new double[0];
        /**
         * @brief The torque or the force to be applied at each joint. For revolute/continuous joints effort
         * denotes a torque in newton-meters. For prismatic joints, effort denotes a force in newtons.
         * @details Original trajectory_msgs/msg/JointTrajectoryPoint.effort; native type float64. At most 8
         * elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
         * acquires no ROS resource.
         */
        public double[] @effort = new double[0];
        /**
         * @brief Desired time from the trajectory start to arrive at this trajectory point.
         * @details Original trajectory_msgs/msg/JointTrajectoryPoint.time_from_start; native type
         * builtin_interfaces/msg/Duration. Scalar value. Storage belongs to the complete value and acquires no
         * ROS resource.
         */
        public _Ros2Builtin_interfacesMsgDuration @time_from_start = new _Ros2Builtin_interfacesMsgDuration();

        public _Ros2Trajectory_msgsMsgJointTrajectoryPoint()
        {
        }
    }

    public sealed class Ros2Trajectory_msgsMsgJointTrajectoryPointCodec : global::Uwvm.RosWasm.ICodec<_Ros2Trajectory_msgsMsgJointTrajectoryPoint>
    {
        public static readonly Ros2Trajectory_msgsMsgJointTrajectoryPointCodec Instance = new Ros2Trajectory_msgsMsgJointTrajectoryPointCodec();

        private Ros2Trajectory_msgsMsgJointTrajectoryPointCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "trajectory_msgs/msg/JointTrajectoryPoint";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_a512b971211baa8604440e02a046b586e7970293242607002ceb89196c9d99b1";
        public const int MIN_WIRE_BYTES = 24, MAX_WIRE_BYTES = 280;

        public byte[] Encode(_Ros2Trajectory_msgsMsgJointTrajectoryPoint value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Trajectory_msgsMsgJointTrajectoryPoint(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Trajectory_msgsMsgJointTrajectoryPoint Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Trajectory_msgsMsgJointTrajectoryPoint value = ReadRos2Trajectory_msgsMsgJointTrajectoryPoint(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Trajectory_msgsMsgJointTrajectoryPoint(_Codecs.Writer writer, _Ros2Trajectory_msgsMsgJointTrajectoryPoint value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        double[] part0 = value.@positions;
        if(part0 == null || part0.Length > 8)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part0.Length, 4);
        for(int index = 0; index < part0.Length; ++index)
        {
            double element = part0[index];
            writer.Float64(element);
        }
        double[] part1 = value.@velocities;
        if(part1 == null || part1.Length > 8)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part1.Length, 4);
        for(int index = 0; index < part1.Length; ++index)
        {
            double element = part1[index];
            writer.Float64(element);
        }
        double[] part2 = value.@accelerations;
        if(part2 == null || part2.Length > 8)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part2.Length, 4);
        for(int index = 0; index < part2.Length; ++index)
        {
            double element = part2[index];
            writer.Float64(element);
        }
        double[] part3 = value.@effort;
        if(part3 == null || part3.Length > 8)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part3.Length, 4);
        for(int index = 0; index < part3.Length; ++index)
        {
            double element = part3[index];
            writer.Float64(element);
        }
        _Ros2Builtin_interfacesMsgDuration part4 = value.@time_from_start;
        WriteRos2Builtin_interfacesMsgDuration(writer, part4);
    }

    private static _Ros2Trajectory_msgsMsgJointTrajectoryPoint ReadRos2Trajectory_msgsMsgJointTrajectoryPoint(_Codecs.Reader reader)
    {
        var value = new _Ros2Trajectory_msgsMsgJointTrajectoryPoint();
        value.@positions = new double[ReadCount(reader, 8, 8)];
        for(int index = 0; index < value.@positions.Length; ++index)
            value.@positions[index] = reader.Float64();
        value.@velocities = new double[ReadCount(reader, 8, 8)];
        for(int index = 0; index < value.@velocities.Length; ++index)
            value.@velocities[index] = reader.Float64();
        value.@accelerations = new double[ReadCount(reader, 8, 8)];
        for(int index = 0; index < value.@accelerations.Length; ++index)
            value.@accelerations[index] = reader.Float64();
        value.@effort = new double[ReadCount(reader, 8, 8)];
        for(int index = 0; index < value.@effort.Length; ++index)
            value.@effort[index] = reader.Float64();
        value.@time_from_start = ReadRos2Builtin_interfacesMsgDuration(reader);
        return value;
    }

    // @brief Own every original field of trajectory_msgs/msg/JointTrajectory.
    // @details Canonical extent 20..1484 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public sealed class _Ros2Trajectory_msgsMsgJointTrajectory
    {
        /**
         * @brief The header is used to specify the coordinate frame and the reference time for the trajectory
         * durations
         * @details Original trajectory_msgs/msg/JointTrajectory.header; native type std_msgs/msg/Header.
         * Scalar value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public _Ros2Std_msgsMsgHeader @header = new _Ros2Std_msgsMsgHeader();
        /**
         * @brief The names of the active joints in each trajectory point. These names are ordered and must
         * correspond to the values in each trajectory point.
         * @details Original trajectory_msgs/msg/JointTrajectory.joint_names; native type string. At most 8
         * elements. UTF-8 capacity 128 bytes; no embedded NUL. Storage belongs to the complete value and
         * acquires no ROS resource.
         */
        public string[] @joint_names = new string[0];
        /**
         * @brief Array of trajectory points, which describe the positions, velocities, accelerations and/or
         * efforts of the joints at each time point.
         * @details Original trajectory_msgs/msg/JointTrajectory.points; native type
         * trajectory_msgs/msg/JointTrajectoryPoint. At most 1 elements. Storage belongs to the complete value
         * and acquires no ROS resource.
         */
        public _Ros2Trajectory_msgsMsgJointTrajectoryPoint[] @points = new _Ros2Trajectory_msgsMsgJointTrajectoryPoint[0];

        public _Ros2Trajectory_msgsMsgJointTrajectory()
        {
        }
    }

    public sealed class Ros2Trajectory_msgsMsgJointTrajectoryCodec : global::Uwvm.RosWasm.ICodec<_Ros2Trajectory_msgsMsgJointTrajectory>
    {
        public static readonly Ros2Trajectory_msgsMsgJointTrajectoryCodec Instance = new Ros2Trajectory_msgsMsgJointTrajectoryCodec();

        private Ros2Trajectory_msgsMsgJointTrajectoryCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "trajectory_msgs/msg/JointTrajectory";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_e32bd7016b5fefcab6adeb42072e2d56c45d4b9f7cb372bdb5bfac97abf8cb77";
        public const int MIN_WIRE_BYTES = 20, MAX_WIRE_BYTES = 1484;

        public byte[] Encode(_Ros2Trajectory_msgsMsgJointTrajectory value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Trajectory_msgsMsgJointTrajectory(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Trajectory_msgsMsgJointTrajectory Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Trajectory_msgsMsgJointTrajectory value = ReadRos2Trajectory_msgsMsgJointTrajectory(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Trajectory_msgsMsgJointTrajectory(_Codecs.Writer writer, _Ros2Trajectory_msgsMsgJointTrajectory value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Std_msgsMsgHeader part0 = value.@header;
        WriteRos2Std_msgsMsgHeader(writer, part0);
        string[] part1 = value.@joint_names;
        if(part1 == null || part1.Length > 8)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part1.Length, 4);
        for(int index = 0; index < part1.Length; ++index)
        {
            string element = part1[index];
            WriteText(writer, element, 128);
        }
        _Ros2Trajectory_msgsMsgJointTrajectoryPoint[] part2 = value.@points;
        if(part2 == null || part2.Length > 1)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part2.Length, 4);
        for(int index = 0; index < part2.Length; ++index)
        {
            _Ros2Trajectory_msgsMsgJointTrajectoryPoint element = part2[index];
            WriteRos2Trajectory_msgsMsgJointTrajectoryPoint(writer, element);
        }
    }

    private static _Ros2Trajectory_msgsMsgJointTrajectory ReadRos2Trajectory_msgsMsgJointTrajectory(_Codecs.Reader reader)
    {
        var value = new _Ros2Trajectory_msgsMsgJointTrajectory();
        value.@header = ReadRos2Std_msgsMsgHeader(reader);
        value.@joint_names = new string[ReadCount(reader, 8, 4)];
        for(int index = 0; index < value.@joint_names.Length; ++index)
            value.@joint_names[index] = ReadText(reader, 128);
        value.@points = new _Ros2Trajectory_msgsMsgJointTrajectoryPoint[ReadCount(reader, 1, 24)];
        for(int index = 0; index < value.@points.Length; ++index)
            value.@points[index] = ReadRos2Trajectory_msgsMsgJointTrajectoryPoint(reader);
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

    // @brief Own every original field of geometry_msgs/msg/Transform.
    // @details Canonical extent 56..56 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public sealed class _Ros2Geometry_msgsMsgTransform
    {
        /**
         * @brief This represents the transform between two coordinate frames in free space.
         * @details Original geometry_msgs/msg/Transform.translation; native type geometry_msgs/msg/Vector3.
         * Scalar value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public _Ros2Geometry_msgsMsgVector3 @translation = new _Ros2Geometry_msgsMsgVector3();
        /**
         * @brief Retain the complete original geometry_msgs/msg/Quaternion field.
         * @details Original geometry_msgs/msg/Transform.rotation; native type geometry_msgs/msg/Quaternion.
         * Scalar value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public _Ros2Geometry_msgsMsgQuaternion @rotation = new _Ros2Geometry_msgsMsgQuaternion();

        public _Ros2Geometry_msgsMsgTransform()
        {
        }
    }

    public sealed class Ros2Geometry_msgsMsgTransformCodec : global::Uwvm.RosWasm.ICodec<_Ros2Geometry_msgsMsgTransform>
    {
        public static readonly Ros2Geometry_msgsMsgTransformCodec Instance = new Ros2Geometry_msgsMsgTransformCodec();

        private Ros2Geometry_msgsMsgTransformCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "geometry_msgs/msg/Transform";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_7ddcb1c3fca43f4a0299d43fb6fac1b77a8f26001af809dc13307f4f9c61d65b";
        public const int MIN_WIRE_BYTES = 56, MAX_WIRE_BYTES = 56;

        public byte[] Encode(_Ros2Geometry_msgsMsgTransform value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Geometry_msgsMsgTransform(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Geometry_msgsMsgTransform Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Geometry_msgsMsgTransform value = ReadRos2Geometry_msgsMsgTransform(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Geometry_msgsMsgTransform(_Codecs.Writer writer, _Ros2Geometry_msgsMsgTransform value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Geometry_msgsMsgVector3 part0 = value.@translation;
        WriteRos2Geometry_msgsMsgVector3(writer, part0);
        _Ros2Geometry_msgsMsgQuaternion part1 = value.@rotation;
        WriteRos2Geometry_msgsMsgQuaternion(writer, part1);
    }

    private static _Ros2Geometry_msgsMsgTransform ReadRos2Geometry_msgsMsgTransform(_Codecs.Reader reader)
    {
        var value = new _Ros2Geometry_msgsMsgTransform();
        value.@translation = ReadRos2Geometry_msgsMsgVector3(reader);
        value.@rotation = ReadRos2Geometry_msgsMsgQuaternion(reader);
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

    // @brief Own every original field of trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.
    // @details Canonical extent 20..844 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public sealed class _Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint
    {
        /**
         * @brief Each multi-dof joint can specify a transform (up to 6 DOF).
         * @details Original trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.transforms; native type
         * geometry_msgs/msg/Transform. At most 1 elements. Storage belongs to the complete value and acquires
         * no ROS resource.
         */
        public _Ros2Geometry_msgsMsgTransform[] @transforms = new _Ros2Geometry_msgsMsgTransform[0];
        /**
         * @brief There can be a velocity specified for the origin of the joint.
         * @details Original trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.velocities; native type
         * geometry_msgs/msg/Twist. At most 8 elements. Storage belongs to the complete value and acquires no
         * ROS resource.
         */
        public _Ros2Geometry_msgsMsgTwist[] @velocities = new _Ros2Geometry_msgsMsgTwist[0];
        /**
         * @brief There can be an acceleration specified for the origin of the joint.
         * @details Original trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.accelerations; native type
         * geometry_msgs/msg/Twist. At most 8 elements. Storage belongs to the complete value and acquires no
         * ROS resource.
         */
        public _Ros2Geometry_msgsMsgTwist[] @accelerations = new _Ros2Geometry_msgsMsgTwist[0];
        /**
         * @brief Desired time from the trajectory start to arrive at this trajectory point.
         * @details Original trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.time_from_start; native type
         * builtin_interfaces/msg/Duration. Scalar value. Storage belongs to the complete value and acquires no
         * ROS resource.
         */
        public _Ros2Builtin_interfacesMsgDuration @time_from_start = new _Ros2Builtin_interfacesMsgDuration();

        public _Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint()
        {
        }
    }

    public sealed class Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPointCodec :
        global::Uwvm.RosWasm.ICodec<_Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint>
    {
        public static readonly Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPointCodec Instance = new Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPointCodec();

        private Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPointCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "trajectory_msgs/msg/MultiDOFJointTrajectoryPoint";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_4b4b6ba78f11918fcdc138544f7ef1a140d1fc51b385349ab1ad5716472c3daf";
        public const int MIN_WIRE_BYTES = 20, MAX_WIRE_BYTES = 844;

        public byte[] Encode(_Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint value = ReadRos2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint(_Codecs.Writer writer,
                                                                                _Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Geometry_msgsMsgTransform[] part0 = value.@transforms;
        if(part0 == null || part0.Length > 1)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part0.Length, 4);
        for(int index = 0; index < part0.Length; ++index)
        {
            _Ros2Geometry_msgsMsgTransform element = part0[index];
            WriteRos2Geometry_msgsMsgTransform(writer, element);
        }
        _Ros2Geometry_msgsMsgTwist[] part1 = value.@velocities;
        if(part1 == null || part1.Length > 8)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part1.Length, 4);
        for(int index = 0; index < part1.Length; ++index)
        {
            _Ros2Geometry_msgsMsgTwist element = part1[index];
            WriteRos2Geometry_msgsMsgTwist(writer, element);
        }
        _Ros2Geometry_msgsMsgTwist[] part2 = value.@accelerations;
        if(part2 == null || part2.Length > 8)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part2.Length, 4);
        for(int index = 0; index < part2.Length; ++index)
        {
            _Ros2Geometry_msgsMsgTwist element = part2[index];
            WriteRos2Geometry_msgsMsgTwist(writer, element);
        }
        _Ros2Builtin_interfacesMsgDuration part3 = value.@time_from_start;
        WriteRos2Builtin_interfacesMsgDuration(writer, part3);
    }

    private static _Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint ReadRos2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint(_Codecs.Reader reader)
    {
        var value = new _Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint();
        value.@transforms = new _Ros2Geometry_msgsMsgTransform[ReadCount(reader, 1, 56)];
        for(int index = 0; index < value.@transforms.Length; ++index)
            value.@transforms[index] = ReadRos2Geometry_msgsMsgTransform(reader);
        value.@velocities = new _Ros2Geometry_msgsMsgTwist[ReadCount(reader, 8, 48)];
        for(int index = 0; index < value.@velocities.Length; ++index)
            value.@velocities[index] = ReadRos2Geometry_msgsMsgTwist(reader);
        value.@accelerations = new _Ros2Geometry_msgsMsgTwist[ReadCount(reader, 8, 48)];
        for(int index = 0; index < value.@accelerations.Length; ++index)
            value.@accelerations[index] = ReadRos2Geometry_msgsMsgTwist(reader);
        value.@time_from_start = ReadRos2Builtin_interfacesMsgDuration(reader);
        return value;
    }

    // @brief Own every original field of trajectory_msgs/msg/MultiDOFJointTrajectory.
    // @details Canonical extent 20..2048 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public sealed class _Ros2Trajectory_msgsMsgMultiDOFJointTrajectory
    {
        /**
         * @brief The header is used to specify the coordinate frame and the reference time for the trajectory
         * durations
         * @details Original trajectory_msgs/msg/MultiDOFJointTrajectory.header; native type
         * std_msgs/msg/Header. Scalar value. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public _Ros2Std_msgsMsgHeader @header = new _Ros2Std_msgsMsgHeader();
        /**
         * @brief A representation of a multi-dof joint trajectory (each point is a transformation) Each point
         * along the trajectory will include an array of positions/velocities/accelerations that has the same
         * length as the array of joint names, and has the same order of joints as the joint names array.
         * @details Original trajectory_msgs/msg/MultiDOFJointTrajectory.joint_names; native type string. At
         * most 8 elements. UTF-8 capacity 128 bytes; no embedded NUL. Storage belongs to the complete value
         * and acquires no ROS resource.
         */
        public string[] @joint_names = new string[0];
        /**
         * @brief Retain the complete original trajectory_msgs/msg/MultiDOFJointTrajectoryPoint field.
         * @details Original trajectory_msgs/msg/MultiDOFJointTrajectory.points; native type
         * trajectory_msgs/msg/MultiDOFJointTrajectoryPoint. At most 1 elements. Storage belongs to the
         * complete value and acquires no ROS resource.
         */
        public _Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint[] @points = new _Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint[0];

        public _Ros2Trajectory_msgsMsgMultiDOFJointTrajectory()
        {
        }
    }

    public sealed class Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryCodec : global::Uwvm.RosWasm.ICodec<_Ros2Trajectory_msgsMsgMultiDOFJointTrajectory>
    {
        public static readonly Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryCodec Instance = new Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryCodec();

        private Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "trajectory_msgs/msg/MultiDOFJointTrajectory";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_b822a2d5db9b83e916dcc9db4932952a314773ef53c9fbaf825902e0eb7c8cb5";
        public const int MIN_WIRE_BYTES = 20, MAX_WIRE_BYTES = 2048;

        public byte[] Encode(_Ros2Trajectory_msgsMsgMultiDOFJointTrajectory value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Trajectory_msgsMsgMultiDOFJointTrajectory(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Trajectory_msgsMsgMultiDOFJointTrajectory Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Trajectory_msgsMsgMultiDOFJointTrajectory value = ReadRos2Trajectory_msgsMsgMultiDOFJointTrajectory(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Trajectory_msgsMsgMultiDOFJointTrajectory(_Codecs.Writer writer, _Ros2Trajectory_msgsMsgMultiDOFJointTrajectory value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Std_msgsMsgHeader part0 = value.@header;
        WriteRos2Std_msgsMsgHeader(writer, part0);
        string[] part1 = value.@joint_names;
        if(part1 == null || part1.Length > 8)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part1.Length, 4);
        for(int index = 0; index < part1.Length; ++index)
        {
            string element = part1[index];
            WriteText(writer, element, 128);
        }
        _Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint[] part2 = value.@points;
        if(part2 == null || part2.Length > 1)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part2.Length, 4);
        for(int index = 0; index < part2.Length; ++index)
        {
            _Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint element = part2[index];
            WriteRos2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint(writer, element);
        }
    }

    private static _Ros2Trajectory_msgsMsgMultiDOFJointTrajectory ReadRos2Trajectory_msgsMsgMultiDOFJointTrajectory(_Codecs.Reader reader)
    {
        var value = new _Ros2Trajectory_msgsMsgMultiDOFJointTrajectory();
        value.@header = ReadRos2Std_msgsMsgHeader(reader);
        value.@joint_names = new string[ReadCount(reader, 8, 4)];
        for(int index = 0; index < value.@joint_names.Length; ++index)
            value.@joint_names[index] = ReadText(reader, 128);
        value.@points = new _Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint[ReadCount(reader, 1, 20)];
        for(int index = 0; index < value.@points.Length; ++index)
            value.@points[index] = ReadRos2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint(reader);
        return value;
    }

    // @brief Own every original field of control_msgs/msg/JointTolerance.
    // @details Canonical extent 28..156 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public sealed class _Ros2Control_msgsMsgJointTolerance
    {
        /**
         * @brief The tolerances specify the amount the position, velocity, and accelerations can vary from the
         * setpoints.  For example, in the case of trajectory control, when the actual position varies beyond
         * (desired position + position tolerance), the trajectory goal may abort.  There are two special
         * values for tolerances: * 0 - The tolerance is unspecified and will remain at whatever the default is
         * * -1 - The tolerance is "erased".  If there was a default, the joint will be allowed to move without
         * restriction.
         * @details Original control_msgs/msg/JointTolerance.name; native type string. Scalar value. UTF-8
         * capacity 128 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public string @name = "";
        /**
         * @brief in radians or meters (for a revolute or prismatic joint, respectively)
         * @details Original control_msgs/msg/JointTolerance.position; native type float64. Scalar value.
         * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
         * no ROS resource.
         */
        public double @position = 0;
        /**
         * @brief in rad/sec or m/sec
         * @details Original control_msgs/msg/JointTolerance.velocity; native type float64. Scalar value.
         * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
         * no ROS resource.
         */
        public double @velocity = 0;
        /**
         * @brief in rad/sec^2 or m/sec^2
         * @details Original control_msgs/msg/JointTolerance.acceleration; native type float64. Scalar value.
         * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
         * no ROS resource.
         */
        public double @acceleration = 0;

        public _Ros2Control_msgsMsgJointTolerance()
        {
        }
    }

    public sealed class Ros2Control_msgsMsgJointToleranceCodec : global::Uwvm.RosWasm.ICodec<_Ros2Control_msgsMsgJointTolerance>
    {
        public static readonly Ros2Control_msgsMsgJointToleranceCodec Instance = new Ros2Control_msgsMsgJointToleranceCodec();

        private Ros2Control_msgsMsgJointToleranceCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "control_msgs/msg/JointTolerance";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_3864af88029b3b1f51907b3da63d2d821104c29b9469a146a5a34f73f3598b8a";
        public const int MIN_WIRE_BYTES = 28, MAX_WIRE_BYTES = 156;

        public byte[] Encode(_Ros2Control_msgsMsgJointTolerance value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Control_msgsMsgJointTolerance(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Control_msgsMsgJointTolerance Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Control_msgsMsgJointTolerance value = ReadRos2Control_msgsMsgJointTolerance(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Control_msgsMsgJointTolerance(_Codecs.Writer writer, _Ros2Control_msgsMsgJointTolerance value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        string part0 = value.@name;
        WriteText(writer, part0, 128);
        double part1 = value.@position;
        writer.Float64(part1);
        double part2 = value.@velocity;
        writer.Float64(part2);
        double part3 = value.@acceleration;
        writer.Float64(part3);
    }

    private static _Ros2Control_msgsMsgJointTolerance ReadRos2Control_msgsMsgJointTolerance(_Codecs.Reader reader)
    {
        var value = new _Ros2Control_msgsMsgJointTolerance();
        value.@name = ReadText(reader, 128);
        value.@position = reader.Float64();
        value.@velocity = reader.Float64();
        value.@acceleration = reader.Float64();
        return value;
    }

    // @brief Own every original field of control_msgs/msg/JointComponentTolerance.
    // @details Canonical extent 30..158 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public sealed class _Ros2Control_msgsMsgJointComponentTolerance
    {
        /**
         * @brief Retain the complete original string field.
         * @details Original control_msgs/msg/JointComponentTolerance.joint_name; native type string. Scalar
         * value. UTF-8 capacity 128 bytes; no embedded NUL. Storage belongs to the complete value and acquires
         * no ROS resource.
         */
        public string @joint_name = "";
        /**
         * @brief Retain the complete original uint16 field.
         * @details Original control_msgs/msg/JointComponentTolerance.component; native type uint16. Scalar
         * value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public ushort @component = 0;
        /**
         * @brief Retain the complete original float64 field.
         * @details Original control_msgs/msg/JointComponentTolerance.position; native type float64. Scalar
         * value. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
         * acquires no ROS resource.
         */
        public double @position = 0;
        /**
         * @brief Retain the complete original float64 field.
         * @details Original control_msgs/msg/JointComponentTolerance.velocity; native type float64. Scalar
         * value. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
         * acquires no ROS resource.
         */
        public double @velocity = 0;
        /**
         * @brief Retain the complete original float64 field.
         * @details Original control_msgs/msg/JointComponentTolerance.acceleration; native type float64. Scalar
         * value. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
         * acquires no ROS resource.
         */
        public double @acceleration = 0;

        public _Ros2Control_msgsMsgJointComponentTolerance()
        {
        }
    }

    public sealed class Ros2Control_msgsMsgJointComponentToleranceCodec : global::Uwvm.RosWasm.ICodec<_Ros2Control_msgsMsgJointComponentTolerance>
    {
        public static readonly Ros2Control_msgsMsgJointComponentToleranceCodec Instance = new Ros2Control_msgsMsgJointComponentToleranceCodec();

        private Ros2Control_msgsMsgJointComponentToleranceCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "control_msgs/msg/JointComponentTolerance";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_8a10f659b38feae6dfcf89818d35a164743b02c0e5cfe2d86aae7eda56e914fb";
        public const int MIN_WIRE_BYTES = 30, MAX_WIRE_BYTES = 158;

        public byte[] Encode(_Ros2Control_msgsMsgJointComponentTolerance value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Control_msgsMsgJointComponentTolerance(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Control_msgsMsgJointComponentTolerance Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Control_msgsMsgJointComponentTolerance value = ReadRos2Control_msgsMsgJointComponentTolerance(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Control_msgsMsgJointComponentTolerance(_Codecs.Writer writer, _Ros2Control_msgsMsgJointComponentTolerance value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        string part0 = value.@joint_name;
        WriteText(writer, part0, 128);
        ushort part1 = value.@component;
        writer.Unsigned(part1, 2);
        double part2 = value.@position;
        writer.Float64(part2);
        double part3 = value.@velocity;
        writer.Float64(part3);
        double part4 = value.@acceleration;
        writer.Float64(part4);
    }

    private static _Ros2Control_msgsMsgJointComponentTolerance ReadRos2Control_msgsMsgJointComponentTolerance(_Codecs.Reader reader)
    {
        var value = new _Ros2Control_msgsMsgJointComponentTolerance();
        value.@joint_name = ReadText(reader, 128);
        value.@component = unchecked((ushort)reader.Unsigned(2));
        value.@position = reader.Float64();
        value.@velocity = reader.Float64();
        value.@acceleration = reader.Float64();
        return value;
    }

    // @brief Own every original field of control_msgs/action/FollowJointTrajectory_Goal.
    // @details Canonical extent 64..8580 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public sealed class _Ros2Control_msgsActionFollowJointTrajectory_Goal
    {
        /**
         * @brief The trajectory for all revolute, continuous or prismatic joints
         * @details Original control_msgs/action/FollowJointTrajectory_Goal.trajectory; native type
         * trajectory_msgs/msg/JointTrajectory. Scalar value. Storage belongs to the complete value and
         * acquires no ROS resource.
         */
        public _Ros2Trajectory_msgsMsgJointTrajectory @trajectory = new _Ros2Trajectory_msgsMsgJointTrajectory();
        /**
         * @brief The trajectory for all planar or floating joints (i.e. individual joints with more than one
         * DOF)
         * @details Original control_msgs/action/FollowJointTrajectory_Goal.multi_dof_trajectory; native type
         * trajectory_msgs/msg/MultiDOFJointTrajectory. Scalar value. Storage belongs to the complete value and
         * acquires no ROS resource.
         */
        public _Ros2Trajectory_msgsMsgMultiDOFJointTrajectory @multi_dof_trajectory = new _Ros2Trajectory_msgsMsgMultiDOFJointTrajectory();
        /**
         * @brief Tolerances for the trajectory.  If the measured joint values fall outside the tolerances the
         * trajectory goal is aborted.  Any tolerances that are not specified (by being omitted or set to 0)
         * are set to the defaults for the action server (often taken from the parameter server). Tolerances
         * applied to the joints as the trajectory is executed.  If violated, the goal aborts with error_code
         * set to PATH_TOLERANCE_VIOLATED.
         * @details Original control_msgs/action/FollowJointTrajectory_Goal.path_tolerance; native type
         * control_msgs/msg/JointTolerance. At most 8 elements. Storage belongs to the complete value and
         * acquires no ROS resource.
         */
        public _Ros2Control_msgsMsgJointTolerance[] @path_tolerance = new _Ros2Control_msgsMsgJointTolerance[0];
        /**
         * @brief Retain the complete original control_msgs/msg/JointComponentTolerance field.
         * @details Original control_msgs/action/FollowJointTrajectory_Goal.component_path_tolerance; native
         * type control_msgs/msg/JointComponentTolerance. At most 8 elements. Storage belongs to the complete
         * value and acquires no ROS resource.
         */
        public _Ros2Control_msgsMsgJointComponentTolerance[] @component_path_tolerance = new _Ros2Control_msgsMsgJointComponentTolerance[0];
        /**
         * @brief To report success, the joints must be within goal_tolerance of the final trajectory value.
         * The goal must be achieved by time the trajectory ends plus goal_time_tolerance.
         * (goal_time_tolerance allows some leeway in time, so that the trajectory goal can still succeed even
         * if the joints reach the goal some time after the precise end time of the trajectory).  If the joints
         * are not within goal_tolerance after "trajectory finish time" + goal_time_tolerance, the goal aborts
         * with error_code set to GOAL_TOLERANCE_VIOLATED
         * @details Original control_msgs/action/FollowJointTrajectory_Goal.goal_tolerance; native type
         * control_msgs/msg/JointTolerance. At most 8 elements. Storage belongs to the complete value and
         * acquires no ROS resource.
         */
        public _Ros2Control_msgsMsgJointTolerance[] @goal_tolerance = new _Ros2Control_msgsMsgJointTolerance[0];
        /**
         * @brief Retain the complete original control_msgs/msg/JointComponentTolerance field.
         * @details Original control_msgs/action/FollowJointTrajectory_Goal.component_goal_tolerance; native
         * type control_msgs/msg/JointComponentTolerance. At most 8 elements. Storage belongs to the complete
         * value and acquires no ROS resource.
         */
        public _Ros2Control_msgsMsgJointComponentTolerance[] @component_goal_tolerance = new _Ros2Control_msgsMsgJointComponentTolerance[0];
        /**
         * @brief Retain the complete original builtin_interfaces/msg/Duration field.
         * @details Original control_msgs/action/FollowJointTrajectory_Goal.goal_time_tolerance; native type
         * builtin_interfaces/msg/Duration. Scalar value. Storage belongs to the complete value and acquires no
         * ROS resource.
         */
        public _Ros2Builtin_interfacesMsgDuration @goal_time_tolerance = new _Ros2Builtin_interfacesMsgDuration();

        public _Ros2Control_msgsActionFollowJointTrajectory_Goal()
        {
        }
    }

    public sealed class Ros2Control_msgsActionFollowJointTrajectory_GoalCodec : global::Uwvm.RosWasm.ICodec<_Ros2Control_msgsActionFollowJointTrajectory_Goal>
    {
        public static readonly Ros2Control_msgsActionFollowJointTrajectory_GoalCodec Instance = new Ros2Control_msgsActionFollowJointTrajectory_GoalCodec();

        private Ros2Control_msgsActionFollowJointTrajectory_GoalCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "control_msgs/action/FollowJointTrajectory_Goal";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_fa8334eb129cc91c50febaccfebb371f6fbdd82188d6301823344d6664300018";
        public const int MIN_WIRE_BYTES = 64, MAX_WIRE_BYTES = 8580;

        public byte[] Encode(_Ros2Control_msgsActionFollowJointTrajectory_Goal value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Control_msgsActionFollowJointTrajectory_Goal(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Control_msgsActionFollowJointTrajectory_Goal Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Control_msgsActionFollowJointTrajectory_Goal value = ReadRos2Control_msgsActionFollowJointTrajectory_Goal(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Control_msgsActionFollowJointTrajectory_Goal(_Codecs.Writer writer, _Ros2Control_msgsActionFollowJointTrajectory_Goal value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Trajectory_msgsMsgJointTrajectory part0 = value.@trajectory;
        WriteRos2Trajectory_msgsMsgJointTrajectory(writer, part0);
        _Ros2Trajectory_msgsMsgMultiDOFJointTrajectory part1 = value.@multi_dof_trajectory;
        WriteRos2Trajectory_msgsMsgMultiDOFJointTrajectory(writer, part1);
        _Ros2Control_msgsMsgJointTolerance[] part2 = value.@path_tolerance;
        if(part2 == null || part2.Length > 8)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part2.Length, 4);
        for(int index = 0; index < part2.Length; ++index)
        {
            _Ros2Control_msgsMsgJointTolerance element = part2[index];
            WriteRos2Control_msgsMsgJointTolerance(writer, element);
        }
        _Ros2Control_msgsMsgJointComponentTolerance[] part3 = value.@component_path_tolerance;
        if(part3 == null || part3.Length > 8)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part3.Length, 4);
        for(int index = 0; index < part3.Length; ++index)
        {
            _Ros2Control_msgsMsgJointComponentTolerance element = part3[index];
            WriteRos2Control_msgsMsgJointComponentTolerance(writer, element);
        }
        _Ros2Control_msgsMsgJointTolerance[] part4 = value.@goal_tolerance;
        if(part4 == null || part4.Length > 8)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part4.Length, 4);
        for(int index = 0; index < part4.Length; ++index)
        {
            _Ros2Control_msgsMsgJointTolerance element = part4[index];
            WriteRos2Control_msgsMsgJointTolerance(writer, element);
        }
        _Ros2Control_msgsMsgJointComponentTolerance[] part5 = value.@component_goal_tolerance;
        if(part5 == null || part5.Length > 8)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part5.Length, 4);
        for(int index = 0; index < part5.Length; ++index)
        {
            _Ros2Control_msgsMsgJointComponentTolerance element = part5[index];
            WriteRos2Control_msgsMsgJointComponentTolerance(writer, element);
        }
        _Ros2Builtin_interfacesMsgDuration part6 = value.@goal_time_tolerance;
        WriteRos2Builtin_interfacesMsgDuration(writer, part6);
    }

    private static _Ros2Control_msgsActionFollowJointTrajectory_Goal ReadRos2Control_msgsActionFollowJointTrajectory_Goal(_Codecs.Reader reader)
    {
        var value = new _Ros2Control_msgsActionFollowJointTrajectory_Goal();
        value.@trajectory = ReadRos2Trajectory_msgsMsgJointTrajectory(reader);
        value.@multi_dof_trajectory = ReadRos2Trajectory_msgsMsgMultiDOFJointTrajectory(reader);
        value.@path_tolerance = new _Ros2Control_msgsMsgJointTolerance[ReadCount(reader, 8, 28)];
        for(int index = 0; index < value.@path_tolerance.Length; ++index)
            value.@path_tolerance[index] = ReadRos2Control_msgsMsgJointTolerance(reader);
        value.@component_path_tolerance = new _Ros2Control_msgsMsgJointComponentTolerance[ReadCount(reader, 8, 30)];
        for(int index = 0; index < value.@component_path_tolerance.Length; ++index)
            value.@component_path_tolerance[index] = ReadRos2Control_msgsMsgJointComponentTolerance(reader);
        value.@goal_tolerance = new _Ros2Control_msgsMsgJointTolerance[ReadCount(reader, 8, 28)];
        for(int index = 0; index < value.@goal_tolerance.Length; ++index)
            value.@goal_tolerance[index] = ReadRos2Control_msgsMsgJointTolerance(reader);
        value.@component_goal_tolerance = new _Ros2Control_msgsMsgJointComponentTolerance[ReadCount(reader, 8, 30)];
        for(int index = 0; index < value.@component_goal_tolerance.Length; ++index)
            value.@component_goal_tolerance[index] = ReadRos2Control_msgsMsgJointComponentTolerance(reader);
        value.@goal_time_tolerance = ReadRos2Builtin_interfacesMsgDuration(reader);
        return value;
    }

    // @brief Own every original field of control_msgs/action/FollowJointTrajectory_Result.
    // @details Canonical extent 8..264 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public sealed class _Ros2Control_msgsActionFollowJointTrajectory_Result
    {
        /**
         * @brief Retain the complete original int32 field.
         * @details Original control_msgs/action/FollowJointTrajectory_Result.error_code; native type int32.
         * Scalar value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public int @error_code = 0;
        /**
         * @brief Human readable description of the error code. Contains complementary information that is
         * especially useful when execution fails, for instance: - INVALID_GOAL: The reason for the invalid
         * goal (e.g., the requested trajectory is in the past). - INVALID_JOINTS: The mismatch between the
         * expected controller joints and those provided in the goal. - PATH_TOLERANCE_VIOLATED and
         * GOAL_TOLERANCE_VIOLATED: Which joint violated which tolerance, and by how much.
         * @details Original control_msgs/action/FollowJointTrajectory_Result.error_string; native type string.
         * Scalar value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and
         * acquires no ROS resource.
         */
        public string @error_string = "";

        public _Ros2Control_msgsActionFollowJointTrajectory_Result()
        {
        }
    }

    public sealed class Ros2Control_msgsActionFollowJointTrajectory_ResultCodec :
        global::Uwvm.RosWasm.ICodec<_Ros2Control_msgsActionFollowJointTrajectory_Result>
    {
        public static readonly Ros2Control_msgsActionFollowJointTrajectory_ResultCodec Instance = new Ros2Control_msgsActionFollowJointTrajectory_ResultCodec();

        private Ros2Control_msgsActionFollowJointTrajectory_ResultCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "control_msgs/action/FollowJointTrajectory_Result";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_df1e08076a5c725b865cc8807462d9ccf9577df11cbb71fcc0d280d77d0e5649";
        public const int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 264;

        public byte[] Encode(_Ros2Control_msgsActionFollowJointTrajectory_Result value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Control_msgsActionFollowJointTrajectory_Result(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Control_msgsActionFollowJointTrajectory_Result Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Control_msgsActionFollowJointTrajectory_Result value = ReadRos2Control_msgsActionFollowJointTrajectory_Result(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Control_msgsActionFollowJointTrajectory_Result(_Codecs.Writer writer,
                                                                                _Ros2Control_msgsActionFollowJointTrajectory_Result value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        int part0 = value.@error_code;
        writer.Unsigned(unchecked((uint)part0), 4);
        string part1 = value.@error_string;
        WriteText(writer, part1, 256);
    }

    private static _Ros2Control_msgsActionFollowJointTrajectory_Result ReadRos2Control_msgsActionFollowJointTrajectory_Result(_Codecs.Reader reader)
    {
        var value = new _Ros2Control_msgsActionFollowJointTrajectory_Result();
        value.@error_code = unchecked((int)reader.Unsigned(4));
        value.@error_string = ReadText(reader, 256);
        return value;
    }

    // @brief Own every original field of control_msgs/action/FollowJointTrajectory_Feedback.
    // @details Canonical extent 152..4708 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public sealed class _Ros2Control_msgsActionFollowJointTrajectory_Feedback
    {
        /**
         * @brief Retain the complete original std_msgs/msg/Header field.
         * @details Original control_msgs/action/FollowJointTrajectory_Feedback.header; native type
         * std_msgs/msg/Header. Scalar value. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public _Ros2Std_msgsMsgHeader @header = new _Ros2Std_msgsMsgHeader();
        /**
         * @brief Retain the complete original string field.
         * @details Original control_msgs/action/FollowJointTrajectory_Feedback.joint_names; native type
         * string. At most 8 elements. UTF-8 capacity 128 bytes; no embedded NUL. Storage belongs to the
         * complete value and acquires no ROS resource.
         */
        public string[] @joint_names = new string[0];
        /**
         * @brief Retain the complete original trajectory_msgs/msg/JointTrajectoryPoint field.
         * @details Original control_msgs/action/FollowJointTrajectory_Feedback.desired; native type
         * trajectory_msgs/msg/JointTrajectoryPoint. Scalar value. Storage belongs to the complete value and
         * acquires no ROS resource.
         */
        public _Ros2Trajectory_msgsMsgJointTrajectoryPoint @desired = new _Ros2Trajectory_msgsMsgJointTrajectoryPoint();
        /**
         * @brief Retain the complete original trajectory_msgs/msg/JointTrajectoryPoint field.
         * @details Original control_msgs/action/FollowJointTrajectory_Feedback.actual; native type
         * trajectory_msgs/msg/JointTrajectoryPoint. Scalar value. Storage belongs to the complete value and
         * acquires no ROS resource.
         */
        public _Ros2Trajectory_msgsMsgJointTrajectoryPoint @actual = new _Ros2Trajectory_msgsMsgJointTrajectoryPoint();
        /**
         * @brief Retain the complete original trajectory_msgs/msg/JointTrajectoryPoint field.
         * @details Original control_msgs/action/FollowJointTrajectory_Feedback.error; native type
         * trajectory_msgs/msg/JointTrajectoryPoint. Scalar value. Storage belongs to the complete value and
         * acquires no ROS resource.
         */
        public _Ros2Trajectory_msgsMsgJointTrajectoryPoint @error = new _Ros2Trajectory_msgsMsgJointTrajectoryPoint();
        /**
         * @brief Retain the complete original string field.
         * @details Original control_msgs/action/FollowJointTrajectory_Feedback.multi_dof_joint_names; native
         * type string. At most 1 elements. UTF-8 capacity 128 bytes; no embedded NUL. Storage belongs to the
         * complete value and acquires no ROS resource.
         */
        public string[] @multi_dof_joint_names = new string[0];
        /**
         * @brief Retain the complete original trajectory_msgs/msg/MultiDOFJointTrajectoryPoint field.
         * @details Original control_msgs/action/FollowJointTrajectory_Feedback.multi_dof_desired; native type
         * trajectory_msgs/msg/MultiDOFJointTrajectoryPoint. Scalar value. Storage belongs to the complete
         * value and acquires no ROS resource.
         */
        public _Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint @multi_dof_desired = new _Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint();
        /**
         * @brief Retain the complete original trajectory_msgs/msg/MultiDOFJointTrajectoryPoint field.
         * @details Original control_msgs/action/FollowJointTrajectory_Feedback.multi_dof_actual; native type
         * trajectory_msgs/msg/MultiDOFJointTrajectoryPoint. Scalar value. Storage belongs to the complete
         * value and acquires no ROS resource.
         */
        public _Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint @multi_dof_actual = new _Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint();
        /**
         * @brief Retain the complete original trajectory_msgs/msg/MultiDOFJointTrajectoryPoint field.
         * @details Original control_msgs/action/FollowJointTrajectory_Feedback.multi_dof_error; native type
         * trajectory_msgs/msg/MultiDOFJointTrajectoryPoint. Scalar value. Storage belongs to the complete
         * value and acquires no ROS resource.
         */
        public _Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint @multi_dof_error = new _Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint();

        public _Ros2Control_msgsActionFollowJointTrajectory_Feedback()
        {
        }
    }

    public sealed class Ros2Control_msgsActionFollowJointTrajectory_FeedbackCodec :
        global::Uwvm.RosWasm.ICodec<_Ros2Control_msgsActionFollowJointTrajectory_Feedback>
    {
        public static readonly Ros2Control_msgsActionFollowJointTrajectory_FeedbackCodec Instance =
            new Ros2Control_msgsActionFollowJointTrajectory_FeedbackCodec();

        private Ros2Control_msgsActionFollowJointTrajectory_FeedbackCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "control_msgs/action/FollowJointTrajectory_Feedback";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_ae2175027c3e45997d272b9610d15ef52cc665d23c0a371892d10b3d100e3529";
        public const int MIN_WIRE_BYTES = 152, MAX_WIRE_BYTES = 4708;

        public byte[] Encode(_Ros2Control_msgsActionFollowJointTrajectory_Feedback value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos2Control_msgsActionFollowJointTrajectory_Feedback(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros2Control_msgsActionFollowJointTrajectory_Feedback Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Control_msgsActionFollowJointTrajectory_Feedback value = ReadRos2Control_msgsActionFollowJointTrajectory_Feedback(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos2Control_msgsActionFollowJointTrajectory_Feedback(_Codecs.Writer writer,
                                                                                  _Ros2Control_msgsActionFollowJointTrajectory_Feedback value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Std_msgsMsgHeader part0 = value.@header;
        WriteRos2Std_msgsMsgHeader(writer, part0);
        string[] part1 = value.@joint_names;
        if(part1 == null || part1.Length > 8)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part1.Length, 4);
        for(int index = 0; index < part1.Length; ++index)
        {
            string element = part1[index];
            WriteText(writer, element, 128);
        }
        _Ros2Trajectory_msgsMsgJointTrajectoryPoint part2 = value.@desired;
        WriteRos2Trajectory_msgsMsgJointTrajectoryPoint(writer, part2);
        _Ros2Trajectory_msgsMsgJointTrajectoryPoint part3 = value.@actual;
        WriteRos2Trajectory_msgsMsgJointTrajectoryPoint(writer, part3);
        _Ros2Trajectory_msgsMsgJointTrajectoryPoint part4 = value.@error;
        WriteRos2Trajectory_msgsMsgJointTrajectoryPoint(writer, part4);
        string[] part5 = value.@multi_dof_joint_names;
        if(part5 == null || part5.Length > 1)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part5.Length, 4);
        for(int index = 0; index < part5.Length; ++index)
        {
            string element = part5[index];
            WriteText(writer, element, 128);
        }
        _Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint part6 = value.@multi_dof_desired;
        WriteRos2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint(writer, part6);
        _Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint part7 = value.@multi_dof_actual;
        WriteRos2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint(writer, part7);
        _Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint part8 = value.@multi_dof_error;
        WriteRos2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint(writer, part8);
    }

    private static _Ros2Control_msgsActionFollowJointTrajectory_Feedback ReadRos2Control_msgsActionFollowJointTrajectory_Feedback(_Codecs.Reader reader)
    {
        var value = new _Ros2Control_msgsActionFollowJointTrajectory_Feedback();
        value.@header = ReadRos2Std_msgsMsgHeader(reader);
        value.@joint_names = new string[ReadCount(reader, 8, 4)];
        for(int index = 0; index < value.@joint_names.Length; ++index)
            value.@joint_names[index] = ReadText(reader, 128);
        value.@desired = ReadRos2Trajectory_msgsMsgJointTrajectoryPoint(reader);
        value.@actual = ReadRos2Trajectory_msgsMsgJointTrajectoryPoint(reader);
        value.@error = ReadRos2Trajectory_msgsMsgJointTrajectoryPoint(reader);
        value.@multi_dof_joint_names = new string[ReadCount(reader, 1, 4)];
        for(int index = 0; index < value.@multi_dof_joint_names.Length; ++index)
            value.@multi_dof_joint_names[index] = ReadText(reader, 128);
        value.@multi_dof_desired = ReadRos2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint(reader);
        value.@multi_dof_actual = ReadRos2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint(reader);
        value.@multi_dof_error = ReadRos2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint(reader);
        return value;
    }

    // @brief Own every original field of sensor_msgs/msg/JointState.
    // @details Canonical extent 28..1404 bytes. Native type identity is independent; constructing a value
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
         * @details Original sensor_msgs/msg/JointState.name; native type string. At most 8 elements. UTF-8
         * capacity 128 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public string[] @name = new string[0];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original sensor_msgs/msg/JointState.position; native type float64. At most 8 elements.
         * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
         * no ROS resource.
         */
        public double[] @position = new double[0];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original sensor_msgs/msg/JointState.velocity; native type float64. At most 8 elements.
         * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
         * no ROS resource.
         */
        public double[] @velocity = new double[0];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original sensor_msgs/msg/JointState.effort; native type float64. At most 8 elements. Finite
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
        public const string CODEC_IDENTITY = "UWVMROS1_bba20c36db70a98b594ba603d05b8a979038fb95b701221ba3b8689f55b06b11";
        public const int MIN_WIRE_BYTES = 28, MAX_WIRE_BYTES = 1404;

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
        if(part1 == null || part1.Length > 8)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part1.Length, 4);
        for(int index = 0; index < part1.Length; ++index)
        {
            string element = part1[index];
            WriteText(writer, element, 128);
        }
        double[] part2 = value.@position;
        if(part2 == null || part2.Length > 8)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part2.Length, 4);
        for(int index = 0; index < part2.Length; ++index)
        {
            double element = part2[index];
            writer.Float64(element);
        }
        double[] part3 = value.@velocity;
        if(part3 == null || part3.Length > 8)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part3.Length, 4);
        for(int index = 0; index < part3.Length; ++index)
        {
            double element = part3[index];
            writer.Float64(element);
        }
        double[] part4 = value.@effort;
        if(part4 == null || part4.Length > 8)
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
        value.@name = new string[ReadCount(reader, 8, 4)];
        for(int index = 0; index < value.@name.Length; ++index)
            value.@name[index] = ReadText(reader, 128);
        value.@position = new double[ReadCount(reader, 8, 8)];
        for(int index = 0; index < value.@position.Length; ++index)
            value.@position[index] = reader.Float64();
        value.@velocity = new double[ReadCount(reader, 8, 8)];
        for(int index = 0; index < value.@velocity.Length; ++index)
            value.@velocity[index] = reader.Float64();
        value.@effort = new double[ReadCount(reader, 8, 8)];
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
}
