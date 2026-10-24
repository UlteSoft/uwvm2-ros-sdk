// @brief Complete original flexiv controller_core_humble canonical values.
// @details UTF-8 limits count bytes and sequence limits count elements. Complete-value codecs retain
// every original field; native registration and manually granted ROS authority are separate. Caller-
// owned values and codec failures are described by each operation and the locale API reference.
// Generated complete canonical records; no native ABI, CDR or ROS grant.
#nullable enable
using System;
using _Codecs = global::Uwvm.RosWasm.Codecs;
namespace Uwvm.Flexiv.controllercorehumble;

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

    // @brief Own every original field of sensor_msgs/msg/JointState.
    // @details Canonical extent 28..9372 bytes. Native type identity is independent; constructing a value
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
         * @details Original sensor_msgs/msg/JointState.name; native type string. At most 32 elements. UTF-8
         * capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public string[] @name = new string[0];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original sensor_msgs/msg/JointState.position; native type float64. At most 32 elements.
         * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
         * no ROS resource.
         */
        public double[] @position = new double[0];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original sensor_msgs/msg/JointState.velocity; native type float64. At most 32 elements.
         * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
         * no ROS resource.
         */
        public double[] @velocity = new double[0];
        /**
         * @brief Retain the complete original float64 field.
         * @details Original sensor_msgs/msg/JointState.effort; native type float64. At most 32 elements.
         * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
         * no ROS resource.
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
        public const string CODEC_IDENTITY = "UWVMROS1_3faa9cdc746cb2cf7ac581bb2b0b6e32e2c6601d72043c7893249142730d8556";
        public const int MIN_WIRE_BYTES = 28, MAX_WIRE_BYTES = 9372;

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
        if(part1 == null || part1.Length > 32)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part1.Length, 4);
        for(int index = 0; index < part1.Length; ++index)
        {
            string element = part1[index];
            WriteText(writer, element, 256);
        }
        double[] part2 = value.@position;
        if(part2 == null || part2.Length > 32)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part2.Length, 4);
        for(int index = 0; index < part2.Length; ++index)
        {
            double element = part2[index];
            writer.Float64(element);
        }
        double[] part3 = value.@velocity;
        if(part3 == null || part3.Length > 32)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part3.Length, 4);
        for(int index = 0; index < part3.Length; ++index)
        {
            double element = part3[index];
            writer.Float64(element);
        }
        double[] part4 = value.@effort;
        if(part4 == null || part4.Length > 32)
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
        value.@name = new string[ReadCount(reader, 32, 4)];
        for(int index = 0; index < value.@name.Length; ++index)
            value.@name[index] = ReadText(reader, 256);
        value.@position = new double[ReadCount(reader, 32, 8)];
        for(int index = 0; index < value.@position.Length; ++index)
            value.@position[index] = reader.Float64();
        value.@velocity = new double[ReadCount(reader, 32, 8)];
        for(int index = 0; index < value.@velocity.Length; ++index)
            value.@velocity[index] = reader.Float64();
        value.@effort = new double[ReadCount(reader, 32, 8)];
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

    // @brief Own every original field of trajectory_msgs/msg/JointTrajectoryPoint.
    // @details Canonical extent 24..1048 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public sealed class _Ros2Trajectory_msgsMsgJointTrajectoryPoint
    {
        /**
         * @brief Each trajectory point specifies either positions[, velocities[, accelerations]] or
         * positions[, effort] for the trajectory to be executed. All specified values are in the same order as
         * the joint names in JointTrajectory.msg. Single DOF joint positions for each joint relative to their
         * "0" position. The units depend on the specific joint type: radians for revolute or continuous
         * joints, and meters for prismatic joints.
         * @details Original trajectory_msgs/msg/JointTrajectoryPoint.positions; native type float64. At most
         * 32 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value
         * and acquires no ROS resource.
         */
        public double[] @positions = new double[0];
        /**
         * @brief The rate of change in position of each joint. Units are joint type dependent. Radians/second
         * for revolute or continuous joints, and meters/second for prismatic joints.
         * @details Original trajectory_msgs/msg/JointTrajectoryPoint.velocities; native type float64. At most
         * 32 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value
         * and acquires no ROS resource.
         */
        public double[] @velocities = new double[0];
        /**
         * @brief Rate of change in velocity of each joint. Units are joint type dependent. Radians/second^2
         * for revolute or continuous joints, and meters/second^2 for prismatic joints.
         * @details Original trajectory_msgs/msg/JointTrajectoryPoint.accelerations; native type float64. At
         * most 32 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete
         * value and acquires no ROS resource.
         */
        public double[] @accelerations = new double[0];
        /**
         * @brief The torque or the force to be applied at each joint. For revolute/continuous joints effort
         * denotes a torque in newton-meters. For prismatic joints, effort denotes a force in newtons.
         * @details Original trajectory_msgs/msg/JointTrajectoryPoint.effort; native type float64. At most 32
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
        public const string CODEC_IDENTITY = "UWVMROS1_8320f791cea3b2edbbe7b78c9a3750708fb0284ae6a322058921c8c105f7130c";
        public const int MIN_WIRE_BYTES = 24, MAX_WIRE_BYTES = 1048;

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
        double[] part2 = value.@accelerations;
        if(part2 == null || part2.Length > 32)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part2.Length, 4);
        for(int index = 0; index < part2.Length; ++index)
        {
            double element = part2[index];
            writer.Float64(element);
        }
        double[] part3 = value.@effort;
        if(part3 == null || part3.Length > 32)
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
        value.@positions = new double[ReadCount(reader, 32, 8)];
        for(int index = 0; index < value.@positions.Length; ++index)
            value.@positions[index] = reader.Float64();
        value.@velocities = new double[ReadCount(reader, 32, 8)];
        for(int index = 0; index < value.@velocities.Length; ++index)
            value.@velocities[index] = reader.Float64();
        value.@accelerations = new double[ReadCount(reader, 32, 8)];
        for(int index = 0; index < value.@accelerations.Length; ++index)
            value.@accelerations[index] = reader.Float64();
        value.@effort = new double[ReadCount(reader, 32, 8)];
        for(int index = 0; index < value.@effort.Length; ++index)
            value.@effort[index] = reader.Float64();
        value.@time_from_start = ReadRos2Builtin_interfacesMsgDuration(reader);
        return value;
    }

    // @brief Own every original field of trajectory_msgs/msg/JointTrajectory.
    // @details Canonical extent 20..16980 bytes. Native type identity is independent; constructing a value
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
         * @details Original trajectory_msgs/msg/JointTrajectory.joint_names; native type string. At most 32
         * elements. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and
         * acquires no ROS resource.
         */
        public string[] @joint_names = new string[0];
        /**
         * @brief Array of trajectory points, which describe the positions, velocities, accelerations and/or
         * efforts of the joints at each time point.
         * @details Original trajectory_msgs/msg/JointTrajectory.points; native type
         * trajectory_msgs/msg/JointTrajectoryPoint. At most 8 elements. Storage belongs to the complete value
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
        public const string CODEC_IDENTITY = "UWVMROS1_0b691c3ed52f8cc3bf5e4c5a7cec1d82a15d08b7d2575bd30b34c49e37877af4";
        public const int MIN_WIRE_BYTES = 20, MAX_WIRE_BYTES = 16980;

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
        if(part1 == null || part1.Length > 32)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part1.Length, 4);
        for(int index = 0; index < part1.Length; ++index)
        {
            string element = part1[index];
            WriteText(writer, element, 256);
        }
        _Ros2Trajectory_msgsMsgJointTrajectoryPoint[] part2 = value.@points;
        if(part2 == null || part2.Length > 8)
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
        value.@joint_names = new string[ReadCount(reader, 32, 4)];
        for(int index = 0; index < value.@joint_names.Length; ++index)
            value.@joint_names[index] = ReadText(reader, 256);
        value.@points = new _Ros2Trajectory_msgsMsgJointTrajectoryPoint[ReadCount(reader, 8, 24)];
        for(int index = 0; index < value.@points.Length; ++index)
            value.@points[index] = ReadRos2Trajectory_msgsMsgJointTrajectoryPoint(reader);
        return value;
    }

    // @brief Own every original field of std_msgs/msg/MultiArrayDimension.
    // @details Canonical extent 12..268 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public sealed class _Ros2Std_msgsMsgMultiArrayDimension
    {
        /**
         * @brief This was originally provided as an example message. It is deprecated as of Foxy It is
         * recommended to create your own semantically meaningful message. However if you would like to
         * continue using this please use the equivalent in example_msgs. label of given dimension
         * @details Original std_msgs/msg/MultiArrayDimension.label; native type string. Scalar value. UTF-8
         * capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
         * resource.
         */
        public string @label = "";
        /**
         * @brief size of given dimension (in type units)
         * @details Original std_msgs/msg/MultiArrayDimension.size; native type uint32. Scalar value. Storage
         * belongs to the complete value and acquires no ROS resource.
         */
        public uint @size = 0;
        /**
         * @brief stride of given dimension
         * @details Original std_msgs/msg/MultiArrayDimension.stride; native type uint32. Scalar value. Storage
         * belongs to the complete value and acquires no ROS resource.
         */
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
        public const string CODEC_IDENTITY = "UWVMROS1_95110a90e1600af2696a69f4dec6bfde2afe315bfd453bda2e1c84f5984ae80d";
        public const int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 268;

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
        WriteText(writer, part0, 256);
        uint part1 = value.@size;
        writer.Unsigned(part1, 4);
        uint part2 = value.@stride;
        writer.Unsigned(part2, 4);
    }

    private static _Ros2Std_msgsMsgMultiArrayDimension ReadRos2Std_msgsMsgMultiArrayDimension(_Codecs.Reader reader)
    {
        var value = new _Ros2Std_msgsMsgMultiArrayDimension();
        value.@label = ReadText(reader, 256);
        value.@size = unchecked((uint)reader.Unsigned(4));
        value.@stride = unchecked((uint)reader.Unsigned(4));
        return value;
    }

    // @brief Own every original field of std_msgs/msg/MultiArrayLayout.
    // @details Canonical extent 8..2152 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public sealed class _Ros2Std_msgsMsgMultiArrayLayout
    {
        /**
         * @brief This was originally provided as an example message. It is deprecated as of Foxy It is
         * recommended to create your own semantically meaningful message. However if you would like to
         * continue using this please use the equivalent in example_msgs. The multiarray declares a generic
         * multi-dimensional array of a particular data type.  Dimensions are ordered from outer most to inner
         * most.  Accessors should ALWAYS be written in terms of dimension stride and specified outer-most
         * dimension first.  multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]  A
         * standard, 3-channel 640x480 image with interleaved color channels would be specified as:
         * dim[0].label  = "height" dim[0].size   = 480 dim[0].stride = 3*640*480 = 921600  (note dim[0] stride
         * is just size of image) dim[1].label  = "width" dim[1].size   = 640 dim[1].stride = 3*640 = 1920
         * dim[2].label  = "channel" dim[2].size   = 3 dim[2].stride = 3  multiarray(i,j,k) refers to the ith
         * row, jth column, and kth channel. Array of dimension properties
         * @details Original std_msgs/msg/MultiArrayLayout.dim; native type std_msgs/msg/MultiArrayDimension.
         * At most 8 elements. Storage belongs to the complete value and acquires no ROS resource.
         */
        public _Ros2Std_msgsMsgMultiArrayDimension[] @dim = new _Ros2Std_msgsMsgMultiArrayDimension[0];
        /**
         * @brief padding bytes at front of data
         * @details Original std_msgs/msg/MultiArrayLayout.data_offset; native type uint32. Scalar value.
         * Storage belongs to the complete value and acquires no ROS resource.
         */
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
        public const string CODEC_IDENTITY = "UWVMROS1_1e1ea54500602a3813c1cc3b5db7dfd9a7dd9260a3d5af43e8495f6b48e32f40";
        public const int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 2152;

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
        if(part0 == null || part0.Length > 8)
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
        value.@dim = new _Ros2Std_msgsMsgMultiArrayDimension[ReadCount(reader, 8, 12)];
        for(int index = 0; index < value.@dim.Length; ++index)
            value.@dim[index] = ReadRos2Std_msgsMsgMultiArrayDimension(reader);
        value.@data_offset = unchecked((uint)reader.Unsigned(4));
        return value;
    }

    // @brief Own every original field of std_msgs/msg/Float64MultiArray.
    // @details Canonical extent 12..2412 bytes. Native type identity is independent; constructing a value
    // opens no resource.
    public sealed class _Ros2Std_msgsMsgFloat64MultiArray
    {
        /**
         * @brief This was originally provided as an example message. It is deprecated as of Foxy It is
         * recommended to create your own semantically meaningful message. However if you would like to
         * continue using this please use the equivalent in example_msgs. Please look at the MultiArrayLayout
         * message definition for documentation on all multiarrays. specification of data layout
         * @details Original std_msgs/msg/Float64MultiArray.layout; native type std_msgs/msg/MultiArrayLayout.
         * Scalar value. Storage belongs to the complete value and acquires no ROS resource.
         */
        public _Ros2Std_msgsMsgMultiArrayLayout @layout = new _Ros2Std_msgsMsgMultiArrayLayout();
        /**
         * @brief array of data
         * @details Original std_msgs/msg/Float64MultiArray.data; native type float64. At most 32 elements.
         * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
         * no ROS resource.
         */
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
        public const string CODEC_IDENTITY = "UWVMROS1_9950573380aa134d889e1662549f28ffd493e8c4da68170fd076c4c9cc3db8c2";
        public const int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 2412;

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
        if(part1 == null || part1.Length > 32)
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
        value.@data = new double[ReadCount(reader, 32, 8)];
        for(int index = 0; index < value.@data.Length; ++index)
            value.@data[index] = reader.Float64();
        return value;
    }
}
