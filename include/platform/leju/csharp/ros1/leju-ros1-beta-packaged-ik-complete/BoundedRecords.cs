/**
 * @file BoundedRecords.cs
 * @brief Full leju csharp codecs and original record metadata.
 * @details Complete leju ros1_beta_packaged_ik values in csharp. 17 original records retain 55 fields and 15
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

    public sealed class _Ros1Motion_capture_ikArmHandPose
    {
        public double[] @pos_xyz = new double[3];
        public double[] @quat_xyzw = new double[4];
        public double[] @elbow_pos_xyz = new double[3];
        public double[] @joint_angles = new double[7];

        public _Ros1Motion_capture_ikArmHandPose()
        {
        }
    }

    public sealed class Ros1Motion_capture_ikArmHandPoseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Motion_capture_ikArmHandPose>
    {
        public static readonly Ros1Motion_capture_ikArmHandPoseCodec Instance = new Ros1Motion_capture_ikArmHandPoseCodec();

        private Ros1Motion_capture_ikArmHandPoseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "motion_capture_ik/armHandPose";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_7cc97650a6f0bedb8bdbc0cc534eb422e8585c69f5b0ae92b6d4f213a2d90f08";
        public const int MIN_WIRE_BYTES = 136, MAX_WIRE_BYTES = 136;

        public byte[] Encode(_Ros1Motion_capture_ikArmHandPose value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Motion_capture_ikArmHandPose(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Motion_capture_ikArmHandPose Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Motion_capture_ikArmHandPose value = ReadRos1Motion_capture_ikArmHandPose(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Motion_capture_ikArmHandPose(_Codecs.Writer writer, _Ros1Motion_capture_ikArmHandPose value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        double[] part0 = value.@pos_xyz;
        if(part0 == null || part0.Length != 3)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part0.Length; ++index)
        {
            double element = part0[index];
            writer.Float64(element);
        }
        double[] part1 = value.@quat_xyzw;
        if(part1 == null || part1.Length != 4)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part1.Length; ++index)
        {
            double element = part1[index];
            writer.Float64(element);
        }
        double[] part2 = value.@elbow_pos_xyz;
        if(part2 == null || part2.Length != 3)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part2.Length; ++index)
        {
            double element = part2[index];
            writer.Float64(element);
        }
        double[] part3 = value.@joint_angles;
        if(part3 == null || part3.Length != 7)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part3.Length; ++index)
        {
            double element = part3[index];
            writer.Float64(element);
        }
    }

    private static _Ros1Motion_capture_ikArmHandPose ReadRos1Motion_capture_ikArmHandPose(_Codecs.Reader reader)
    {
        var value = new _Ros1Motion_capture_ikArmHandPose();
        value.@pos_xyz = new double[3];
        for(int index = 0; index < value.@pos_xyz.Length; ++index)
            value.@pos_xyz[index] = reader.Float64();
        value.@quat_xyzw = new double[4];
        for(int index = 0; index < value.@quat_xyzw.Length; ++index)
            value.@quat_xyzw[index] = reader.Float64();
        value.@elbow_pos_xyz = new double[3];
        for(int index = 0; index < value.@elbow_pos_xyz.Length; ++index)
            value.@elbow_pos_xyz[index] = reader.Float64();
        value.@joint_angles = new double[7];
        for(int index = 0; index < value.@joint_angles.Length; ++index)
            value.@joint_angles[index] = reader.Float64();
        return value;
    }

    public sealed class _Ros1Motion_capture_ikArmHandPoseFree
    {
        public double[] @pos_xyz = new double[3];
        public double[] @quat_xyzw = new double[4];
        public double[] @elbow_pos_xyz = new double[3];
        public double[] @joint_angles = new double[0];

        public _Ros1Motion_capture_ikArmHandPoseFree()
        {
        }
    }

    public sealed class Ros1Motion_capture_ikArmHandPoseFreeCodec : global::Uwvm.RosWasm.ICodec<_Ros1Motion_capture_ikArmHandPoseFree>
    {
        public static readonly Ros1Motion_capture_ikArmHandPoseFreeCodec Instance = new Ros1Motion_capture_ikArmHandPoseFreeCodec();

        private Ros1Motion_capture_ikArmHandPoseFreeCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "motion_capture_ik/armHandPoseFree";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_b46b274661ac382698a9bf1016ca647aecc41df8312020b740d73a87d2513caf";
        public const int MIN_WIRE_BYTES = 84, MAX_WIRE_BYTES = 212;

        public byte[] Encode(_Ros1Motion_capture_ikArmHandPoseFree value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Motion_capture_ikArmHandPoseFree(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Motion_capture_ikArmHandPoseFree Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Motion_capture_ikArmHandPoseFree value = ReadRos1Motion_capture_ikArmHandPoseFree(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Motion_capture_ikArmHandPoseFree(_Codecs.Writer writer, _Ros1Motion_capture_ikArmHandPoseFree value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        double[] part0 = value.@pos_xyz;
        if(part0 == null || part0.Length != 3)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part0.Length; ++index)
        {
            double element = part0[index];
            writer.Float64(element);
        }
        double[] part1 = value.@quat_xyzw;
        if(part1 == null || part1.Length != 4)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part1.Length; ++index)
        {
            double element = part1[index];
            writer.Float64(element);
        }
        double[] part2 = value.@elbow_pos_xyz;
        if(part2 == null || part2.Length != 3)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part2.Length; ++index)
        {
            double element = part2[index];
            writer.Float64(element);
        }
        double[] part3 = value.@joint_angles;
        if(part3 == null || part3.Length > 16)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part3.Length, 4);
        for(int index = 0; index < part3.Length; ++index)
        {
            double element = part3[index];
            writer.Float64(element);
        }
    }

    private static _Ros1Motion_capture_ikArmHandPoseFree ReadRos1Motion_capture_ikArmHandPoseFree(_Codecs.Reader reader)
    {
        var value = new _Ros1Motion_capture_ikArmHandPoseFree();
        value.@pos_xyz = new double[3];
        for(int index = 0; index < value.@pos_xyz.Length; ++index)
            value.@pos_xyz[index] = reader.Float64();
        value.@quat_xyzw = new double[4];
        for(int index = 0; index < value.@quat_xyzw.Length; ++index)
            value.@quat_xyzw[index] = reader.Float64();
        value.@elbow_pos_xyz = new double[3];
        for(int index = 0; index < value.@elbow_pos_xyz.Length; ++index)
            value.@elbow_pos_xyz[index] = reader.Float64();
        value.@joint_angles = new double[ReadCount(reader, 16, 8)];
        for(int index = 0; index < value.@joint_angles.Length; ++index)
            value.@joint_angles[index] = reader.Float64();
        return value;
    }

    public sealed class _Ros1Motion_capture_ikChangeArmCtrlModeRequest
    {
        public bool @control_mode = false;

        public _Ros1Motion_capture_ikChangeArmCtrlModeRequest()
        {
        }
    }

    public sealed class Ros1Motion_capture_ikChangeArmCtrlModeRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Motion_capture_ikChangeArmCtrlModeRequest>
    {
        public static readonly Ros1Motion_capture_ikChangeArmCtrlModeRequestCodec Instance = new Ros1Motion_capture_ikChangeArmCtrlModeRequestCodec();

        private Ros1Motion_capture_ikChangeArmCtrlModeRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "motion_capture_ik/changeArmCtrlModeRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_b73d3ed01f402673124afd1c6677ced89b5b55d207a1e8c4ff1312941fc00bbd";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros1Motion_capture_ikChangeArmCtrlModeRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Motion_capture_ikChangeArmCtrlModeRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Motion_capture_ikChangeArmCtrlModeRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Motion_capture_ikChangeArmCtrlModeRequest value = ReadRos1Motion_capture_ikChangeArmCtrlModeRequest(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Motion_capture_ikChangeArmCtrlModeRequest(_Codecs.Writer writer, _Ros1Motion_capture_ikChangeArmCtrlModeRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@control_mode;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros1Motion_capture_ikChangeArmCtrlModeRequest ReadRos1Motion_capture_ikChangeArmCtrlModeRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Motion_capture_ikChangeArmCtrlModeRequest();
        value.@control_mode = ReadBool(reader);
        return value;
    }

    public sealed class _Ros1Motion_capture_ikChangeArmCtrlModeResponse
    {
        public bool @result = false;

        public _Ros1Motion_capture_ikChangeArmCtrlModeResponse()
        {
        }
    }

    public sealed class Ros1Motion_capture_ikChangeArmCtrlModeResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Motion_capture_ikChangeArmCtrlModeResponse>
    {
        public static readonly Ros1Motion_capture_ikChangeArmCtrlModeResponseCodec Instance = new Ros1Motion_capture_ikChangeArmCtrlModeResponseCodec();

        private Ros1Motion_capture_ikChangeArmCtrlModeResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "motion_capture_ik/changeArmCtrlModeResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_aee11b3bf042b1e989f7ed00d2f8e72821cfd8b6ee8232e14848ccf8ee754aac";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        public byte[] Encode(_Ros1Motion_capture_ikChangeArmCtrlModeResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Motion_capture_ikChangeArmCtrlModeResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Motion_capture_ikChangeArmCtrlModeResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Motion_capture_ikChangeArmCtrlModeResponse value = ReadRos1Motion_capture_ikChangeArmCtrlModeResponse(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Motion_capture_ikChangeArmCtrlModeResponse(_Codecs.Writer writer, _Ros1Motion_capture_ikChangeArmCtrlModeResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@result;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    private static _Ros1Motion_capture_ikChangeArmCtrlModeResponse ReadRos1Motion_capture_ikChangeArmCtrlModeResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Motion_capture_ikChangeArmCtrlModeResponse();
        value.@result = ReadBool(reader);
        return value;
    }

    public sealed class _Ros1Motion_capture_ikHandPose
    {
        public double @x = 0;
        public double @y = 0;
        public double @z = 0;
        public double @roll = 0;
        public double @pitch = 0;
        public double @yaw = 0;

        public _Ros1Motion_capture_ikHandPose()
        {
        }
    }

    public sealed class Ros1Motion_capture_ikHandPoseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Motion_capture_ikHandPose>
    {
        public static readonly Ros1Motion_capture_ikHandPoseCodec Instance = new Ros1Motion_capture_ikHandPoseCodec();

        private Ros1Motion_capture_ikHandPoseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "motion_capture_ik/handPose";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_dc924e15f38aa45188532c325292b2f9e3827f3dfa94ff946e30aa51f4fbee5f";
        public const int MIN_WIRE_BYTES = 48, MAX_WIRE_BYTES = 48;

        public byte[] Encode(_Ros1Motion_capture_ikHandPose value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Motion_capture_ikHandPose(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Motion_capture_ikHandPose Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Motion_capture_ikHandPose value = ReadRos1Motion_capture_ikHandPose(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Motion_capture_ikHandPose(_Codecs.Writer writer, _Ros1Motion_capture_ikHandPose value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        double part0 = value.@x;
        writer.Float64(part0);
        double part1 = value.@y;
        writer.Float64(part1);
        double part2 = value.@z;
        writer.Float64(part2);
        double part3 = value.@roll;
        writer.Float64(part3);
        double part4 = value.@pitch;
        writer.Float64(part4);
        double part5 = value.@yaw;
        writer.Float64(part5);
    }

    private static _Ros1Motion_capture_ikHandPose ReadRos1Motion_capture_ikHandPose(_Codecs.Reader reader)
    {
        var value = new _Ros1Motion_capture_ikHandPose();
        value.@x = reader.Float64();
        value.@y = reader.Float64();
        value.@z = reader.Float64();
        value.@roll = reader.Float64();
        value.@pitch = reader.Float64();
        value.@yaw = reader.Float64();
        return value;
    }

    public sealed class _Ros1Motion_capture_ikIkSolveError
    {
        public string @ik_type = "";
        public _Ros1Motion_capture_ikHandPose @left_pose_error = new _Ros1Motion_capture_ikHandPose();
        public _Ros1Motion_capture_ikHandPose @right_pose_error = new _Ros1Motion_capture_ikHandPose();

        public _Ros1Motion_capture_ikIkSolveError()
        {
        }
    }

    public sealed class Ros1Motion_capture_ikIkSolveErrorCodec : global::Uwvm.RosWasm.ICodec<_Ros1Motion_capture_ikIkSolveError>
    {
        public static readonly Ros1Motion_capture_ikIkSolveErrorCodec Instance = new Ros1Motion_capture_ikIkSolveErrorCodec();

        private Ros1Motion_capture_ikIkSolveErrorCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "motion_capture_ik/ikSolveError";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_a20039cf8bf301a7ef643884130619c2ceb96c1c91ed15482dd6f582917e1e94";
        public const int MIN_WIRE_BYTES = 100, MAX_WIRE_BYTES = 356;

        public byte[] Encode(_Ros1Motion_capture_ikIkSolveError value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Motion_capture_ikIkSolveError(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Motion_capture_ikIkSolveError Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Motion_capture_ikIkSolveError value = ReadRos1Motion_capture_ikIkSolveError(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Motion_capture_ikIkSolveError(_Codecs.Writer writer, _Ros1Motion_capture_ikIkSolveError value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        string part0 = value.@ik_type;
        WriteText(writer, part0, 256);
        _Ros1Motion_capture_ikHandPose part1 = value.@left_pose_error;
        WriteRos1Motion_capture_ikHandPose(writer, part1);
        _Ros1Motion_capture_ikHandPose part2 = value.@right_pose_error;
        WriteRos1Motion_capture_ikHandPose(writer, part2);
    }

    private static _Ros1Motion_capture_ikIkSolveError ReadRos1Motion_capture_ikIkSolveError(_Codecs.Reader reader)
    {
        var value = new _Ros1Motion_capture_ikIkSolveError();
        value.@ik_type = ReadText(reader, 256);
        value.@left_pose_error = ReadRos1Motion_capture_ikHandPose(reader);
        value.@right_pose_error = ReadRos1Motion_capture_ikHandPose(reader);
        return value;
    }

    public sealed class _Ros1Motion_capture_ikIkSolveParam
    {
        public double @major_optimality_tol = 0;
        public double @major_feasibility_tol = 0;
        public double @minor_feasibility_tol = 0;
        public double @major_iterations_limit = 0;
        public double @oritation_constraint_tol = 0;
        public double @pos_constraint_tol = 0;
        public double @pos_cost_weight = 0;

        public _Ros1Motion_capture_ikIkSolveParam()
        {
        }
    }

    public sealed class Ros1Motion_capture_ikIkSolveParamCodec : global::Uwvm.RosWasm.ICodec<_Ros1Motion_capture_ikIkSolveParam>
    {
        public static readonly Ros1Motion_capture_ikIkSolveParamCodec Instance = new Ros1Motion_capture_ikIkSolveParamCodec();

        private Ros1Motion_capture_ikIkSolveParamCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "motion_capture_ik/ikSolveParam";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_8058ba64ed6070b821470b5560062e78f2ef0fa09169e7a249b584d2d158d981";
        public const int MIN_WIRE_BYTES = 56, MAX_WIRE_BYTES = 56;

        public byte[] Encode(_Ros1Motion_capture_ikIkSolveParam value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Motion_capture_ikIkSolveParam(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Motion_capture_ikIkSolveParam Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Motion_capture_ikIkSolveParam value = ReadRos1Motion_capture_ikIkSolveParam(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Motion_capture_ikIkSolveParam(_Codecs.Writer writer, _Ros1Motion_capture_ikIkSolveParam value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        double part0 = value.@major_optimality_tol;
        writer.Float64(part0);
        double part1 = value.@major_feasibility_tol;
        writer.Float64(part1);
        double part2 = value.@minor_feasibility_tol;
        writer.Float64(part2);
        double part3 = value.@major_iterations_limit;
        writer.Float64(part3);
        double part4 = value.@oritation_constraint_tol;
        writer.Float64(part4);
        double part5 = value.@pos_constraint_tol;
        writer.Float64(part5);
        double part6 = value.@pos_cost_weight;
        writer.Float64(part6);
    }

    private static _Ros1Motion_capture_ikIkSolveParam ReadRos1Motion_capture_ikIkSolveParam(_Codecs.Reader reader)
    {
        var value = new _Ros1Motion_capture_ikIkSolveParam();
        value.@major_optimality_tol = reader.Float64();
        value.@major_feasibility_tol = reader.Float64();
        value.@minor_feasibility_tol = reader.Float64();
        value.@major_iterations_limit = reader.Float64();
        value.@oritation_constraint_tol = reader.Float64();
        value.@pos_constraint_tol = reader.Float64();
        value.@pos_cost_weight = reader.Float64();
        return value;
    }

    public sealed class _Ros1Motion_capture_ikRecordArmHandPose
    {
        public _Ros1Motion_capture_ikArmHandPose @left_pose = new _Ros1Motion_capture_ikArmHandPose();
        public _Ros1Motion_capture_ikArmHandPose @right_pose = new _Ros1Motion_capture_ikArmHandPose();

        public _Ros1Motion_capture_ikRecordArmHandPose()
        {
        }
    }

    public sealed class Ros1Motion_capture_ikRecordArmHandPoseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Motion_capture_ikRecordArmHandPose>
    {
        public static readonly Ros1Motion_capture_ikRecordArmHandPoseCodec Instance = new Ros1Motion_capture_ikRecordArmHandPoseCodec();

        private Ros1Motion_capture_ikRecordArmHandPoseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "motion_capture_ik/recordArmHandPose";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_815baf88f4e7fdf82316c06aa2baacbc2f30160c53eb73de10dfcbc1ecda2b4a";
        public const int MIN_WIRE_BYTES = 272, MAX_WIRE_BYTES = 272;

        public byte[] Encode(_Ros1Motion_capture_ikRecordArmHandPose value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Motion_capture_ikRecordArmHandPose(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Motion_capture_ikRecordArmHandPose Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Motion_capture_ikRecordArmHandPose value = ReadRos1Motion_capture_ikRecordArmHandPose(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Motion_capture_ikRecordArmHandPose(_Codecs.Writer writer, _Ros1Motion_capture_ikRecordArmHandPose value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros1Motion_capture_ikArmHandPose part0 = value.@left_pose;
        WriteRos1Motion_capture_ikArmHandPose(writer, part0);
        _Ros1Motion_capture_ikArmHandPose part1 = value.@right_pose;
        WriteRos1Motion_capture_ikArmHandPose(writer, part1);
    }

    private static _Ros1Motion_capture_ikRecordArmHandPose ReadRos1Motion_capture_ikRecordArmHandPose(_Codecs.Reader reader)
    {
        var value = new _Ros1Motion_capture_ikRecordArmHandPose();
        value.@left_pose = ReadRos1Motion_capture_ikArmHandPose(reader);
        value.@right_pose = ReadRos1Motion_capture_ikArmHandPose(reader);
        return value;
    }

    public sealed class _Ros1Motion_capture_ikRecordArmHandPoseFree
    {
        public _Ros1Motion_capture_ikArmHandPoseFree @left_pose = new _Ros1Motion_capture_ikArmHandPoseFree();
        public _Ros1Motion_capture_ikArmHandPoseFree @right_pose = new _Ros1Motion_capture_ikArmHandPoseFree();

        public _Ros1Motion_capture_ikRecordArmHandPoseFree()
        {
        }
    }

    public sealed class Ros1Motion_capture_ikRecordArmHandPoseFreeCodec : global::Uwvm.RosWasm.ICodec<_Ros1Motion_capture_ikRecordArmHandPoseFree>
    {
        public static readonly Ros1Motion_capture_ikRecordArmHandPoseFreeCodec Instance = new Ros1Motion_capture_ikRecordArmHandPoseFreeCodec();

        private Ros1Motion_capture_ikRecordArmHandPoseFreeCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "motion_capture_ik/recordArmHandPoseFree";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_895dcfe228b573faa0911f4c5ca89094cae4497c06b57ba9b827356e62071811";
        public const int MIN_WIRE_BYTES = 168, MAX_WIRE_BYTES = 424;

        public byte[] Encode(_Ros1Motion_capture_ikRecordArmHandPoseFree value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Motion_capture_ikRecordArmHandPoseFree(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Motion_capture_ikRecordArmHandPoseFree Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Motion_capture_ikRecordArmHandPoseFree value = ReadRos1Motion_capture_ikRecordArmHandPoseFree(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Motion_capture_ikRecordArmHandPoseFree(_Codecs.Writer writer, _Ros1Motion_capture_ikRecordArmHandPoseFree value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros1Motion_capture_ikArmHandPoseFree part0 = value.@left_pose;
        WriteRos1Motion_capture_ikArmHandPoseFree(writer, part0);
        _Ros1Motion_capture_ikArmHandPoseFree part1 = value.@right_pose;
        WriteRos1Motion_capture_ikArmHandPoseFree(writer, part1);
    }

    private static _Ros1Motion_capture_ikRecordArmHandPoseFree ReadRos1Motion_capture_ikRecordArmHandPoseFree(_Codecs.Reader reader)
    {
        var value = new _Ros1Motion_capture_ikRecordArmHandPoseFree();
        value.@left_pose = ReadRos1Motion_capture_ikArmHandPoseFree(reader);
        value.@right_pose = ReadRos1Motion_capture_ikArmHandPoseFree(reader);
        return value;
    }

    public sealed class _Ros1Motion_capture_ikRobotArmQVVD
    {
        public double[] @q = new double[0];
        public double[] @v = new double[0];
        public double[] @vd = new double[0];

        public _Ros1Motion_capture_ikRobotArmQVVD()
        {
        }
    }

    public sealed class Ros1Motion_capture_ikRobotArmQVVDCodec : global::Uwvm.RosWasm.ICodec<_Ros1Motion_capture_ikRobotArmQVVD>
    {
        public static readonly Ros1Motion_capture_ikRobotArmQVVDCodec Instance = new Ros1Motion_capture_ikRobotArmQVVDCodec();

        private Ros1Motion_capture_ikRobotArmQVVDCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "motion_capture_ik/robotArmQVVD";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_c5cfc8e6be023981b9b846a4e676e456a407479a9428f4fbe43e1af9df17fbbb";
        public const int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 396;

        public byte[] Encode(_Ros1Motion_capture_ikRobotArmQVVD value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Motion_capture_ikRobotArmQVVD(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Motion_capture_ikRobotArmQVVD Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Motion_capture_ikRobotArmQVVD value = ReadRos1Motion_capture_ikRobotArmQVVD(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Motion_capture_ikRobotArmQVVD(_Codecs.Writer writer, _Ros1Motion_capture_ikRobotArmQVVD value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        double[] part0 = value.@q;
        if(part0 == null || part0.Length > 16)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part0.Length, 4);
        for(int index = 0; index < part0.Length; ++index)
        {
            double element = part0[index];
            writer.Float64(element);
        }
        double[] part1 = value.@v;
        if(part1 == null || part1.Length > 16)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part1.Length, 4);
        for(int index = 0; index < part1.Length; ++index)
        {
            double element = part1[index];
            writer.Float64(element);
        }
        double[] part2 = value.@vd;
        if(part2 == null || part2.Length > 16)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part2.Length, 4);
        for(int index = 0; index < part2.Length; ++index)
        {
            double element = part2[index];
            writer.Float64(element);
        }
    }

    private static _Ros1Motion_capture_ikRobotArmQVVD ReadRos1Motion_capture_ikRobotArmQVVD(_Codecs.Reader reader)
    {
        var value = new _Ros1Motion_capture_ikRobotArmQVVD();
        value.@q = new double[ReadCount(reader, 16, 8)];
        for(int index = 0; index < value.@q.Length; ++index)
            value.@q[index] = reader.Float64();
        value.@v = new double[ReadCount(reader, 16, 8)];
        for(int index = 0; index < value.@v.Length; ++index)
            value.@v[index] = reader.Float64();
        value.@vd = new double[ReadCount(reader, 16, 8)];
        for(int index = 0; index < value.@vd.Length; ++index)
            value.@vd[index] = reader.Float64();
        return value;
    }

    public sealed class _Ros1Time
    {
        public uint @sec = 0;
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

    public sealed class _Ros1Std_msgsHeader
    {
        public uint @seq = 0;
        public _Ros1Time @stamp = new _Ros1Time();
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
        public const string CODEC_IDENTITY = "UWVMROS1_5501bfd608c585c739688d051f0090563b3966c945bd84b7b2b3681fc61d47d7";
        public const int MIN_WIRE_BYTES = 16, MAX_WIRE_BYTES = 272;

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
        WriteText(writer, part2, 256);
    }

    private static _Ros1Std_msgsHeader ReadRos1Std_msgsHeader(_Codecs.Reader reader)
    {
        var value = new _Ros1Std_msgsHeader();
        value.@seq = unchecked((uint)reader.Unsigned(4));
        value.@stamp = ReadRos1Time(reader);
        value.@frame_id = ReadText(reader, 256);
        return value;
    }

    public sealed class _Ros1Motion_capture_ikRobotHandPosition
    {
        public _Ros1Std_msgsHeader @header = new _Ros1Std_msgsHeader();
        public byte[] @left_hand_position = new byte[0];
        public byte[] @right_hand_position = new byte[0];

        public _Ros1Motion_capture_ikRobotHandPosition()
        {
        }
    }

    public sealed class Ros1Motion_capture_ikRobotHandPositionCodec : global::Uwvm.RosWasm.ICodec<_Ros1Motion_capture_ikRobotHandPosition>
    {
        public static readonly Ros1Motion_capture_ikRobotHandPositionCodec Instance = new Ros1Motion_capture_ikRobotHandPositionCodec();

        private Ros1Motion_capture_ikRobotHandPositionCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "motion_capture_ik/robotHandPosition";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_16c4f8c128cde34eba2cf878bad0706916193ba3b54f02dcd1e4556128e3b0aa";
        public const int MIN_WIRE_BYTES = 24, MAX_WIRE_BYTES = 792;

        public byte[] Encode(_Ros1Motion_capture_ikRobotHandPosition value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Motion_capture_ikRobotHandPosition(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Motion_capture_ikRobotHandPosition Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Motion_capture_ikRobotHandPosition value = ReadRos1Motion_capture_ikRobotHandPosition(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Motion_capture_ikRobotHandPosition(_Codecs.Writer writer, _Ros1Motion_capture_ikRobotHandPosition value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros1Std_msgsHeader part0 = value.@header;
        WriteRos1Std_msgsHeader(writer, part0);
        byte[] part1 = value.@left_hand_position;
        if(part1 == null || part1.Length > 256)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part1.Length, 4);
        for(int index = 0; index < part1.Length; ++index)
        {
            byte element = part1[index];
            writer.Unsigned(element, 1);
        }
        byte[] part2 = value.@right_hand_position;
        if(part2 == null || part2.Length > 256)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part2.Length, 4);
        for(int index = 0; index < part2.Length; ++index)
        {
            byte element = part2[index];
            writer.Unsigned(element, 1);
        }
    }

    private static _Ros1Motion_capture_ikRobotHandPosition ReadRos1Motion_capture_ikRobotHandPosition(_Codecs.Reader reader)
    {
        var value = new _Ros1Motion_capture_ikRobotHandPosition();
        value.@header = ReadRos1Std_msgsHeader(reader);
        value.@left_hand_position = new byte[ReadCount(reader, 256, 1)];
        for(int index = 0; index < value.@left_hand_position.Length; ++index)
            value.@left_hand_position[index] = unchecked((byte)reader.Unsigned(1));
        value.@right_hand_position = new byte[ReadCount(reader, 256, 1)];
        for(int index = 0; index < value.@right_hand_position.Length; ++index)
            value.@right_hand_position[index] = unchecked((byte)reader.Unsigned(1));
        return value;
    }

    public sealed class _Ros1Motion_capture_ikTwoArmHandPose
    {
        public _Ros1Std_msgsHeader @header = new _Ros1Std_msgsHeader();
        public _Ros1Motion_capture_ikArmHandPose @left_pose = new _Ros1Motion_capture_ikArmHandPose();
        public _Ros1Motion_capture_ikArmHandPose @right_pose = new _Ros1Motion_capture_ikArmHandPose();

        public _Ros1Motion_capture_ikTwoArmHandPose()
        {
        }
    }

    public sealed class Ros1Motion_capture_ikTwoArmHandPoseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Motion_capture_ikTwoArmHandPose>
    {
        public static readonly Ros1Motion_capture_ikTwoArmHandPoseCodec Instance = new Ros1Motion_capture_ikTwoArmHandPoseCodec();

        private Ros1Motion_capture_ikTwoArmHandPoseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "motion_capture_ik/twoArmHandPose";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_12c87f2d727015a1dd0d5c344812528ae43bfd48168fdaa68bac006fe0bbc181";
        public const int MIN_WIRE_BYTES = 288, MAX_WIRE_BYTES = 544;

        public byte[] Encode(_Ros1Motion_capture_ikTwoArmHandPose value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Motion_capture_ikTwoArmHandPose(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Motion_capture_ikTwoArmHandPose Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Motion_capture_ikTwoArmHandPose value = ReadRos1Motion_capture_ikTwoArmHandPose(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Motion_capture_ikTwoArmHandPose(_Codecs.Writer writer, _Ros1Motion_capture_ikTwoArmHandPose value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros1Std_msgsHeader part0 = value.@header;
        WriteRos1Std_msgsHeader(writer, part0);
        _Ros1Motion_capture_ikArmHandPose part1 = value.@left_pose;
        WriteRos1Motion_capture_ikArmHandPose(writer, part1);
        _Ros1Motion_capture_ikArmHandPose part2 = value.@right_pose;
        WriteRos1Motion_capture_ikArmHandPose(writer, part2);
    }

    private static _Ros1Motion_capture_ikTwoArmHandPose ReadRos1Motion_capture_ikTwoArmHandPose(_Codecs.Reader reader)
    {
        var value = new _Ros1Motion_capture_ikTwoArmHandPose();
        value.@header = ReadRos1Std_msgsHeader(reader);
        value.@left_pose = ReadRos1Motion_capture_ikArmHandPose(reader);
        value.@right_pose = ReadRos1Motion_capture_ikArmHandPose(reader);
        return value;
    }

    public sealed class _Ros1Motion_capture_ikTwoArmHandPoseCmd
    {
        public _Ros1Motion_capture_ikTwoArmHandPose @hand_poses = new _Ros1Motion_capture_ikTwoArmHandPose();
        public bool @use_custom_ik_param = false;
        public bool @joint_angles_as_q0 = false;
        public _Ros1Motion_capture_ikIkSolveParam @ik_param = new _Ros1Motion_capture_ikIkSolveParam();

        public _Ros1Motion_capture_ikTwoArmHandPoseCmd()
        {
        }
    }

    public sealed class Ros1Motion_capture_ikTwoArmHandPoseCmdCodec : global::Uwvm.RosWasm.ICodec<_Ros1Motion_capture_ikTwoArmHandPoseCmd>
    {
        public static readonly Ros1Motion_capture_ikTwoArmHandPoseCmdCodec Instance = new Ros1Motion_capture_ikTwoArmHandPoseCmdCodec();

        private Ros1Motion_capture_ikTwoArmHandPoseCmdCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "motion_capture_ik/twoArmHandPoseCmd";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_aa53de9aca25b5e5ad518a3e3fd6a36f9501d620da4fbd56721a15b693ce6acc";
        public const int MIN_WIRE_BYTES = 346, MAX_WIRE_BYTES = 602;

        public byte[] Encode(_Ros1Motion_capture_ikTwoArmHandPoseCmd value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Motion_capture_ikTwoArmHandPoseCmd(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Motion_capture_ikTwoArmHandPoseCmd Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Motion_capture_ikTwoArmHandPoseCmd value = ReadRos1Motion_capture_ikTwoArmHandPoseCmd(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Motion_capture_ikTwoArmHandPoseCmd(_Codecs.Writer writer, _Ros1Motion_capture_ikTwoArmHandPoseCmd value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros1Motion_capture_ikTwoArmHandPose part0 = value.@hand_poses;
        WriteRos1Motion_capture_ikTwoArmHandPose(writer, part0);
        bool part1 = value.@use_custom_ik_param;
        writer.Unsigned(part1 ? 1UL : 0UL, 1);
        bool part2 = value.@joint_angles_as_q0;
        writer.Unsigned(part2 ? 1UL : 0UL, 1);
        _Ros1Motion_capture_ikIkSolveParam part3 = value.@ik_param;
        WriteRos1Motion_capture_ikIkSolveParam(writer, part3);
    }

    private static _Ros1Motion_capture_ikTwoArmHandPoseCmd ReadRos1Motion_capture_ikTwoArmHandPoseCmd(_Codecs.Reader reader)
    {
        var value = new _Ros1Motion_capture_ikTwoArmHandPoseCmd();
        value.@hand_poses = ReadRos1Motion_capture_ikTwoArmHandPose(reader);
        value.@use_custom_ik_param = ReadBool(reader);
        value.@joint_angles_as_q0 = ReadBool(reader);
        value.@ik_param = ReadRos1Motion_capture_ikIkSolveParam(reader);
        return value;
    }

    public sealed class _Ros1Motion_capture_ikTwoArmHandPoseFree
    {
        public _Ros1Std_msgsHeader @header = new _Ros1Std_msgsHeader();
        public _Ros1Motion_capture_ikArmHandPoseFree @left_pose = new _Ros1Motion_capture_ikArmHandPoseFree();
        public _Ros1Motion_capture_ikArmHandPoseFree @right_pose = new _Ros1Motion_capture_ikArmHandPoseFree();

        public _Ros1Motion_capture_ikTwoArmHandPoseFree()
        {
        }
    }

    public sealed class Ros1Motion_capture_ikTwoArmHandPoseFreeCodec : global::Uwvm.RosWasm.ICodec<_Ros1Motion_capture_ikTwoArmHandPoseFree>
    {
        public static readonly Ros1Motion_capture_ikTwoArmHandPoseFreeCodec Instance = new Ros1Motion_capture_ikTwoArmHandPoseFreeCodec();

        private Ros1Motion_capture_ikTwoArmHandPoseFreeCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "motion_capture_ik/twoArmHandPoseFree";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_2b0e1aadf4405084b26888548a9c33bb9be57ec8f606122857a3b18c2a6f572c";
        public const int MIN_WIRE_BYTES = 184, MAX_WIRE_BYTES = 696;

        public byte[] Encode(_Ros1Motion_capture_ikTwoArmHandPoseFree value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Motion_capture_ikTwoArmHandPoseFree(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Motion_capture_ikTwoArmHandPoseFree Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Motion_capture_ikTwoArmHandPoseFree value = ReadRos1Motion_capture_ikTwoArmHandPoseFree(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Motion_capture_ikTwoArmHandPoseFree(_Codecs.Writer writer, _Ros1Motion_capture_ikTwoArmHandPoseFree value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros1Std_msgsHeader part0 = value.@header;
        WriteRos1Std_msgsHeader(writer, part0);
        _Ros1Motion_capture_ikArmHandPoseFree part1 = value.@left_pose;
        WriteRos1Motion_capture_ikArmHandPoseFree(writer, part1);
        _Ros1Motion_capture_ikArmHandPoseFree part2 = value.@right_pose;
        WriteRos1Motion_capture_ikArmHandPoseFree(writer, part2);
    }

    private static _Ros1Motion_capture_ikTwoArmHandPoseFree ReadRos1Motion_capture_ikTwoArmHandPoseFree(_Codecs.Reader reader)
    {
        var value = new _Ros1Motion_capture_ikTwoArmHandPoseFree();
        value.@header = ReadRos1Std_msgsHeader(reader);
        value.@left_pose = ReadRos1Motion_capture_ikArmHandPoseFree(reader);
        value.@right_pose = ReadRos1Motion_capture_ikArmHandPoseFree(reader);
        return value;
    }

    public sealed class _Ros1Motion_capture_ikTwoArmHandPoseCmdFree
    {
        public _Ros1Motion_capture_ikTwoArmHandPoseFree @hand_poses = new _Ros1Motion_capture_ikTwoArmHandPoseFree();
        public bool @use_custom_ik_param = false;
        public bool @joint_angles_as_q0 = false;
        public _Ros1Motion_capture_ikIkSolveParam @ik_param = new _Ros1Motion_capture_ikIkSolveParam();

        public _Ros1Motion_capture_ikTwoArmHandPoseCmdFree()
        {
        }
    }

    public sealed class Ros1Motion_capture_ikTwoArmHandPoseCmdFreeCodec : global::Uwvm.RosWasm.ICodec<_Ros1Motion_capture_ikTwoArmHandPoseCmdFree>
    {
        public static readonly Ros1Motion_capture_ikTwoArmHandPoseCmdFreeCodec Instance = new Ros1Motion_capture_ikTwoArmHandPoseCmdFreeCodec();

        private Ros1Motion_capture_ikTwoArmHandPoseCmdFreeCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "motion_capture_ik/twoArmHandPoseCmdFree";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_425b1b5b856ec8d0d019829cf48728723199ff79e2b6fa5aaa3f045f1c4f8773";
        public const int MIN_WIRE_BYTES = 242, MAX_WIRE_BYTES = 754;

        public byte[] Encode(_Ros1Motion_capture_ikTwoArmHandPoseCmdFree value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);
            WriteRos1Motion_capture_ikTwoArmHandPoseCmdFree(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        public _Ros1Motion_capture_ikTwoArmHandPoseCmdFree Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Motion_capture_ikTwoArmHandPoseCmdFree value = ReadRos1Motion_capture_ikTwoArmHandPoseCmdFree(reader);
            reader.End();
            return value;
        }
    }

    private static void WriteRos1Motion_capture_ikTwoArmHandPoseCmdFree(_Codecs.Writer writer, _Ros1Motion_capture_ikTwoArmHandPoseCmdFree value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros1Motion_capture_ikTwoArmHandPoseFree part0 = value.@hand_poses;
        WriteRos1Motion_capture_ikTwoArmHandPoseFree(writer, part0);
        bool part1 = value.@use_custom_ik_param;
        writer.Unsigned(part1 ? 1UL : 0UL, 1);
        bool part2 = value.@joint_angles_as_q0;
        writer.Unsigned(part2 ? 1UL : 0UL, 1);
        _Ros1Motion_capture_ikIkSolveParam part3 = value.@ik_param;
        WriteRos1Motion_capture_ikIkSolveParam(writer, part3);
    }

    private static _Ros1Motion_capture_ikTwoArmHandPoseCmdFree ReadRos1Motion_capture_ikTwoArmHandPoseCmdFree(_Codecs.Reader reader)
    {
        var value = new _Ros1Motion_capture_ikTwoArmHandPoseCmdFree();
        value.@hand_poses = ReadRos1Motion_capture_ikTwoArmHandPoseFree(reader);
        value.@use_custom_ik_param = ReadBool(reader);
        value.@joint_angles_as_q0 = ReadBool(reader);
        value.@ik_param = ReadRos1Motion_capture_ikIkSolveParam(reader);
        return value;
    }
}
