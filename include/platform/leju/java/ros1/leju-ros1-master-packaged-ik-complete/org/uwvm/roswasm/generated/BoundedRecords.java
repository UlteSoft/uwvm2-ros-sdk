/**
 * @file BoundedRecords.java
 * @brief Full leju java codecs and original record metadata.
 * @details Complete leju ros1_master_packaged_ik values in java. 17 original records retain 55 fields and 15
 * interface descriptions. Scalar widths, bounds, units, defaults and identities follow the pinned native
 * definitions. Encoding is local; compiler, guest and native ROS acceptance require separate receipts. See the
 * profile API manual under document/platform/leju/en_US/catalog/.
 */
package org.uwvm.roswasm.generated;

import org.uwvm.roswasm.Codec;
import org.uwvm.roswasm.Codecs;

/** Generated complete canonical records; no CDR/native registration or ROS authority. */
public final class BoundedRecords
{
    private BoundedRecords()
    {
    }

    private static void writeText(Codecs.Writer writer, String value, int maximum)
    {
        if(value == null || value.length() > maximum || value.indexOf('\0') >= 0)
            throw new IllegalArgumentException("bounded custom string without NUL required");
        byte[] bytes = Codecs.utf8(value);
        if(bytes.length > maximum)
            throw new IllegalArgumentException("custom UTF-8 byte bound");
        writer.integer(bytes.length, 4, false).raw(bytes);
    }

    private static String readText(Codecs.Reader reader, int maximum)
    {
        long count = reader.integer(4, false);
        if(count > maximum || count > reader.remaining())
            throw new IllegalArgumentException("custom UTF-8 extent");
        String value = Codecs.text(reader.take((int)count));
        if(value.indexOf('\0') >= 0)
            throw new IllegalArgumentException("NUL in custom string");
        return value;
    }

    private static int readCount(Codecs.Reader reader, int maximum, int elementMinimum)
    {
        long count = reader.integer(4, false);
        if(count > maximum || (elementMinimum != 0 && count > reader.remaining() / elementMinimum))
            throw new IllegalArgumentException("sequence count/remaining extent");
        return (int)count;
    }

    private static boolean readBool(Codecs.Reader reader)
    {
        long value = reader.integer(1, false);
        if(value > 1)
            throw new IllegalArgumentException("canonical bool must be0/1");
        return value == 1;
    }

    private static byte[] ownedWire(byte[] value, int minimum, int maximum)
    {
        if(value == null || value.length < minimum || value.length > maximum)
            throw new IllegalArgumentException("complete bounded wire required");
        return value.clone();
    }

    public static final class Ros1Motion_capture_ikArmHandPose
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "motion_capture_ik/armHandPose";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_7cc97650a6f0bedb8bdbc0cc534eb422e8585c69f5b0ae92b6d4f213a2d90f08";
        public static final int MIN_WIRE_BYTES = 136, MAX_WIRE_BYTES = 136;
        public double[] pos_xyz = new double[3];
        public double[] quat_xyzw = new double[4];
        public double[] elbow_pos_xyz = new double[3];
        public double[] joint_angles = new double[7];

        public Ros1Motion_capture_ikArmHandPose()
        {
        }

        public static final Codec<Ros1Motion_capture_ikArmHandPose> CODEC = new Codec<Ros1Motion_capture_ikArmHandPose>() {
            public byte[] encode(Ros1Motion_capture_ikArmHandPose value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Motion_capture_ikArmHandPose(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Motion_capture_ikArmHandPose decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Motion_capture_ikArmHandPose value = readRos1Motion_capture_ikArmHandPose(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Motion_capture_ikArmHandPose(Codecs.Writer writer, Ros1Motion_capture_ikArmHandPose value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        double[] part0 = value.pos_xyz;
        if(part0 == null || part0.length != 3)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part0.length; ++i)
        {
            writer.f64(part0[i]);
        }
        double[] part1 = value.quat_xyzw;
        if(part1 == null || part1.length != 4)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part1.length; ++i)
        {
            writer.f64(part1[i]);
        }
        double[] part2 = value.elbow_pos_xyz;
        if(part2 == null || part2.length != 3)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part2.length; ++i)
        {
            writer.f64(part2[i]);
        }
        double[] part3 = value.joint_angles;
        if(part3 == null || part3.length != 7)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part3.length; ++i)
        {
            writer.f64(part3[i]);
        }
    }

    private static Ros1Motion_capture_ikArmHandPose readRos1Motion_capture_ikArmHandPose(Codecs.Reader reader)
    {
        Ros1Motion_capture_ikArmHandPose value = new Ros1Motion_capture_ikArmHandPose();
        value.pos_xyz = new double[3];
        for(int i = 0; i < value.pos_xyz.length; ++i)
            value.pos_xyz[i] = reader.f64();
        value.quat_xyzw = new double[4];
        for(int i = 0; i < value.quat_xyzw.length; ++i)
            value.quat_xyzw[i] = reader.f64();
        value.elbow_pos_xyz = new double[3];
        for(int i = 0; i < value.elbow_pos_xyz.length; ++i)
            value.elbow_pos_xyz[i] = reader.f64();
        value.joint_angles = new double[7];
        for(int i = 0; i < value.joint_angles.length; ++i)
            value.joint_angles[i] = reader.f64();
        return value;
    }

    public static final class Ros1Motion_capture_ikArmHandPoseFree
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "motion_capture_ik/armHandPoseFree";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_b46b274661ac382698a9bf1016ca647aecc41df8312020b740d73a87d2513caf";
        public static final int MIN_WIRE_BYTES = 84, MAX_WIRE_BYTES = 212;
        public double[] pos_xyz = new double[3];
        public double[] quat_xyzw = new double[4];
        public double[] elbow_pos_xyz = new double[3];
        public double[] joint_angles = new double[0];

        public Ros1Motion_capture_ikArmHandPoseFree()
        {
        }

        public static final Codec<Ros1Motion_capture_ikArmHandPoseFree> CODEC = new Codec<Ros1Motion_capture_ikArmHandPoseFree>() {
            public byte[] encode(Ros1Motion_capture_ikArmHandPoseFree value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Motion_capture_ikArmHandPoseFree(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Motion_capture_ikArmHandPoseFree decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Motion_capture_ikArmHandPoseFree value = readRos1Motion_capture_ikArmHandPoseFree(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Motion_capture_ikArmHandPoseFree(Codecs.Writer writer, Ros1Motion_capture_ikArmHandPoseFree value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        double[] part0 = value.pos_xyz;
        if(part0 == null || part0.length != 3)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part0.length; ++i)
        {
            writer.f64(part0[i]);
        }
        double[] part1 = value.quat_xyzw;
        if(part1 == null || part1.length != 4)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part1.length; ++i)
        {
            writer.f64(part1[i]);
        }
        double[] part2 = value.elbow_pos_xyz;
        if(part2 == null || part2.length != 3)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part2.length; ++i)
        {
            writer.f64(part2[i]);
        }
        double[] part3 = value.joint_angles;
        if(part3 == null || part3.length > 16)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part3.length, 4, false);
        for(int i = 0; i < part3.length; ++i)
        {
            writer.f64(part3[i]);
        }
    }

    private static Ros1Motion_capture_ikArmHandPoseFree readRos1Motion_capture_ikArmHandPoseFree(Codecs.Reader reader)
    {
        Ros1Motion_capture_ikArmHandPoseFree value = new Ros1Motion_capture_ikArmHandPoseFree();
        value.pos_xyz = new double[3];
        for(int i = 0; i < value.pos_xyz.length; ++i)
            value.pos_xyz[i] = reader.f64();
        value.quat_xyzw = new double[4];
        for(int i = 0; i < value.quat_xyzw.length; ++i)
            value.quat_xyzw[i] = reader.f64();
        value.elbow_pos_xyz = new double[3];
        for(int i = 0; i < value.elbow_pos_xyz.length; ++i)
            value.elbow_pos_xyz[i] = reader.f64();
        value.joint_angles = new double[readCount(reader, 16, 8)];
        for(int i = 0; i < value.joint_angles.length; ++i)
            value.joint_angles[i] = reader.f64();
        return value;
    }

    public static final class Ros1Motion_capture_ikChangeArmCtrlModeRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "motion_capture_ik/changeArmCtrlModeRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_b73d3ed01f402673124afd1c6677ced89b5b55d207a1e8c4ff1312941fc00bbd";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean control_mode = false;

        public Ros1Motion_capture_ikChangeArmCtrlModeRequest()
        {
        }

        public static final Codec<Ros1Motion_capture_ikChangeArmCtrlModeRequest> CODEC = new Codec<Ros1Motion_capture_ikChangeArmCtrlModeRequest>() {
            public byte[] encode(Ros1Motion_capture_ikChangeArmCtrlModeRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Motion_capture_ikChangeArmCtrlModeRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Motion_capture_ikChangeArmCtrlModeRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Motion_capture_ikChangeArmCtrlModeRequest value = readRos1Motion_capture_ikChangeArmCtrlModeRequest(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Motion_capture_ikChangeArmCtrlModeRequest(Codecs.Writer writer, Ros1Motion_capture_ikChangeArmCtrlModeRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.control_mode;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros1Motion_capture_ikChangeArmCtrlModeRequest readRos1Motion_capture_ikChangeArmCtrlModeRequest(Codecs.Reader reader)
    {
        Ros1Motion_capture_ikChangeArmCtrlModeRequest value = new Ros1Motion_capture_ikChangeArmCtrlModeRequest();
        value.control_mode = readBool(reader);
        return value;
    }

    public static final class Ros1Motion_capture_ikChangeArmCtrlModeResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "motion_capture_ik/changeArmCtrlModeResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_aee11b3bf042b1e989f7ed00d2f8e72821cfd8b6ee8232e14848ccf8ee754aac";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        public boolean result = false;

        public Ros1Motion_capture_ikChangeArmCtrlModeResponse()
        {
        }

        public static final Codec<Ros1Motion_capture_ikChangeArmCtrlModeResponse> CODEC = new Codec<Ros1Motion_capture_ikChangeArmCtrlModeResponse>() {
            public byte[] encode(Ros1Motion_capture_ikChangeArmCtrlModeResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Motion_capture_ikChangeArmCtrlModeResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Motion_capture_ikChangeArmCtrlModeResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Motion_capture_ikChangeArmCtrlModeResponse value = readRos1Motion_capture_ikChangeArmCtrlModeResponse(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Motion_capture_ikChangeArmCtrlModeResponse(Codecs.Writer writer, Ros1Motion_capture_ikChangeArmCtrlModeResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.result;
        writer.integer(part0 ? 1 : 0, 1, false);
    }

    private static Ros1Motion_capture_ikChangeArmCtrlModeResponse readRos1Motion_capture_ikChangeArmCtrlModeResponse(Codecs.Reader reader)
    {
        Ros1Motion_capture_ikChangeArmCtrlModeResponse value = new Ros1Motion_capture_ikChangeArmCtrlModeResponse();
        value.result = readBool(reader);
        return value;
    }

    public static final class Ros1Motion_capture_ikHandPose
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "motion_capture_ik/handPose";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_dc924e15f38aa45188532c325292b2f9e3827f3dfa94ff946e30aa51f4fbee5f";
        public static final int MIN_WIRE_BYTES = 48, MAX_WIRE_BYTES = 48;
        public double x = 0;
        public double y = 0;
        public double z = 0;
        public double roll = 0;
        public double pitch = 0;
        public double yaw = 0;

        public Ros1Motion_capture_ikHandPose()
        {
        }

        public static final Codec<Ros1Motion_capture_ikHandPose> CODEC = new Codec<Ros1Motion_capture_ikHandPose>() {
            public byte[] encode(Ros1Motion_capture_ikHandPose value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Motion_capture_ikHandPose(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Motion_capture_ikHandPose decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Motion_capture_ikHandPose value = readRos1Motion_capture_ikHandPose(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Motion_capture_ikHandPose(Codecs.Writer writer, Ros1Motion_capture_ikHandPose value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        double part0 = value.x;
        writer.f64(part0);
        double part1 = value.y;
        writer.f64(part1);
        double part2 = value.z;
        writer.f64(part2);
        double part3 = value.roll;
        writer.f64(part3);
        double part4 = value.pitch;
        writer.f64(part4);
        double part5 = value.yaw;
        writer.f64(part5);
    }

    private static Ros1Motion_capture_ikHandPose readRos1Motion_capture_ikHandPose(Codecs.Reader reader)
    {
        Ros1Motion_capture_ikHandPose value = new Ros1Motion_capture_ikHandPose();
        value.x = reader.f64();
        value.y = reader.f64();
        value.z = reader.f64();
        value.roll = reader.f64();
        value.pitch = reader.f64();
        value.yaw = reader.f64();
        return value;
    }

    public static final class Ros1Motion_capture_ikIkSolveError
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "motion_capture_ik/ikSolveError";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_a20039cf8bf301a7ef643884130619c2ceb96c1c91ed15482dd6f582917e1e94";
        public static final int MIN_WIRE_BYTES = 100, MAX_WIRE_BYTES = 356;
        public String ik_type = "";
        public Ros1Motion_capture_ikHandPose left_pose_error = new Ros1Motion_capture_ikHandPose();
        public Ros1Motion_capture_ikHandPose right_pose_error = new Ros1Motion_capture_ikHandPose();

        public Ros1Motion_capture_ikIkSolveError()
        {
        }

        public static final Codec<Ros1Motion_capture_ikIkSolveError> CODEC = new Codec<Ros1Motion_capture_ikIkSolveError>() {
            public byte[] encode(Ros1Motion_capture_ikIkSolveError value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Motion_capture_ikIkSolveError(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Motion_capture_ikIkSolveError decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Motion_capture_ikIkSolveError value = readRos1Motion_capture_ikIkSolveError(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Motion_capture_ikIkSolveError(Codecs.Writer writer, Ros1Motion_capture_ikIkSolveError value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String part0 = value.ik_type;
        writeText(writer, part0, 256);
        Ros1Motion_capture_ikHandPose part1 = value.left_pose_error;
        writeRos1Motion_capture_ikHandPose(writer, part1);
        Ros1Motion_capture_ikHandPose part2 = value.right_pose_error;
        writeRos1Motion_capture_ikHandPose(writer, part2);
    }

    private static Ros1Motion_capture_ikIkSolveError readRos1Motion_capture_ikIkSolveError(Codecs.Reader reader)
    {
        Ros1Motion_capture_ikIkSolveError value = new Ros1Motion_capture_ikIkSolveError();
        value.ik_type = readText(reader, 256);
        value.left_pose_error = readRos1Motion_capture_ikHandPose(reader);
        value.right_pose_error = readRos1Motion_capture_ikHandPose(reader);
        return value;
    }

    public static final class Ros1Motion_capture_ikIkSolveParam
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "motion_capture_ik/ikSolveParam";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_8058ba64ed6070b821470b5560062e78f2ef0fa09169e7a249b584d2d158d981";
        public static final int MIN_WIRE_BYTES = 56, MAX_WIRE_BYTES = 56;
        public double major_optimality_tol = 0;
        public double major_feasibility_tol = 0;
        public double minor_feasibility_tol = 0;
        public double major_iterations_limit = 0;
        public double oritation_constraint_tol = 0;
        public double pos_constraint_tol = 0;
        public double pos_cost_weight = 0;

        public Ros1Motion_capture_ikIkSolveParam()
        {
        }

        public static final Codec<Ros1Motion_capture_ikIkSolveParam> CODEC = new Codec<Ros1Motion_capture_ikIkSolveParam>() {
            public byte[] encode(Ros1Motion_capture_ikIkSolveParam value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Motion_capture_ikIkSolveParam(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Motion_capture_ikIkSolveParam decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Motion_capture_ikIkSolveParam value = readRos1Motion_capture_ikIkSolveParam(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Motion_capture_ikIkSolveParam(Codecs.Writer writer, Ros1Motion_capture_ikIkSolveParam value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        double part0 = value.major_optimality_tol;
        writer.f64(part0);
        double part1 = value.major_feasibility_tol;
        writer.f64(part1);
        double part2 = value.minor_feasibility_tol;
        writer.f64(part2);
        double part3 = value.major_iterations_limit;
        writer.f64(part3);
        double part4 = value.oritation_constraint_tol;
        writer.f64(part4);
        double part5 = value.pos_constraint_tol;
        writer.f64(part5);
        double part6 = value.pos_cost_weight;
        writer.f64(part6);
    }

    private static Ros1Motion_capture_ikIkSolveParam readRos1Motion_capture_ikIkSolveParam(Codecs.Reader reader)
    {
        Ros1Motion_capture_ikIkSolveParam value = new Ros1Motion_capture_ikIkSolveParam();
        value.major_optimality_tol = reader.f64();
        value.major_feasibility_tol = reader.f64();
        value.minor_feasibility_tol = reader.f64();
        value.major_iterations_limit = reader.f64();
        value.oritation_constraint_tol = reader.f64();
        value.pos_constraint_tol = reader.f64();
        value.pos_cost_weight = reader.f64();
        return value;
    }

    public static final class Ros1Motion_capture_ikRecordArmHandPose
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "motion_capture_ik/recordArmHandPose";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_815baf88f4e7fdf82316c06aa2baacbc2f30160c53eb73de10dfcbc1ecda2b4a";
        public static final int MIN_WIRE_BYTES = 272, MAX_WIRE_BYTES = 272;
        public Ros1Motion_capture_ikArmHandPose left_pose = new Ros1Motion_capture_ikArmHandPose();
        public Ros1Motion_capture_ikArmHandPose right_pose = new Ros1Motion_capture_ikArmHandPose();

        public Ros1Motion_capture_ikRecordArmHandPose()
        {
        }

        public static final Codec<Ros1Motion_capture_ikRecordArmHandPose> CODEC = new Codec<Ros1Motion_capture_ikRecordArmHandPose>() {
            public byte[] encode(Ros1Motion_capture_ikRecordArmHandPose value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Motion_capture_ikRecordArmHandPose(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Motion_capture_ikRecordArmHandPose decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Motion_capture_ikRecordArmHandPose value = readRos1Motion_capture_ikRecordArmHandPose(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Motion_capture_ikRecordArmHandPose(Codecs.Writer writer, Ros1Motion_capture_ikRecordArmHandPose value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros1Motion_capture_ikArmHandPose part0 = value.left_pose;
        writeRos1Motion_capture_ikArmHandPose(writer, part0);
        Ros1Motion_capture_ikArmHandPose part1 = value.right_pose;
        writeRos1Motion_capture_ikArmHandPose(writer, part1);
    }

    private static Ros1Motion_capture_ikRecordArmHandPose readRos1Motion_capture_ikRecordArmHandPose(Codecs.Reader reader)
    {
        Ros1Motion_capture_ikRecordArmHandPose value = new Ros1Motion_capture_ikRecordArmHandPose();
        value.left_pose = readRos1Motion_capture_ikArmHandPose(reader);
        value.right_pose = readRos1Motion_capture_ikArmHandPose(reader);
        return value;
    }

    public static final class Ros1Motion_capture_ikRecordArmHandPoseFree
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "motion_capture_ik/recordArmHandPoseFree";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_895dcfe228b573faa0911f4c5ca89094cae4497c06b57ba9b827356e62071811";
        public static final int MIN_WIRE_BYTES = 168, MAX_WIRE_BYTES = 424;
        public Ros1Motion_capture_ikArmHandPoseFree left_pose = new Ros1Motion_capture_ikArmHandPoseFree();
        public Ros1Motion_capture_ikArmHandPoseFree right_pose = new Ros1Motion_capture_ikArmHandPoseFree();

        public Ros1Motion_capture_ikRecordArmHandPoseFree()
        {
        }

        public static final Codec<Ros1Motion_capture_ikRecordArmHandPoseFree> CODEC = new Codec<Ros1Motion_capture_ikRecordArmHandPoseFree>() {
            public byte[] encode(Ros1Motion_capture_ikRecordArmHandPoseFree value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Motion_capture_ikRecordArmHandPoseFree(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Motion_capture_ikRecordArmHandPoseFree decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Motion_capture_ikRecordArmHandPoseFree value = readRos1Motion_capture_ikRecordArmHandPoseFree(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Motion_capture_ikRecordArmHandPoseFree(Codecs.Writer writer, Ros1Motion_capture_ikRecordArmHandPoseFree value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros1Motion_capture_ikArmHandPoseFree part0 = value.left_pose;
        writeRos1Motion_capture_ikArmHandPoseFree(writer, part0);
        Ros1Motion_capture_ikArmHandPoseFree part1 = value.right_pose;
        writeRos1Motion_capture_ikArmHandPoseFree(writer, part1);
    }

    private static Ros1Motion_capture_ikRecordArmHandPoseFree readRos1Motion_capture_ikRecordArmHandPoseFree(Codecs.Reader reader)
    {
        Ros1Motion_capture_ikRecordArmHandPoseFree value = new Ros1Motion_capture_ikRecordArmHandPoseFree();
        value.left_pose = readRos1Motion_capture_ikArmHandPoseFree(reader);
        value.right_pose = readRos1Motion_capture_ikArmHandPoseFree(reader);
        return value;
    }

    public static final class Ros1Motion_capture_ikRobotArmQVVD
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "motion_capture_ik/robotArmQVVD";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_c5cfc8e6be023981b9b846a4e676e456a407479a9428f4fbe43e1af9df17fbbb";
        public static final int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 396;
        public double[] q = new double[0];
        public double[] v = new double[0];
        public double[] vd = new double[0];

        public Ros1Motion_capture_ikRobotArmQVVD()
        {
        }

        public static final Codec<Ros1Motion_capture_ikRobotArmQVVD> CODEC = new Codec<Ros1Motion_capture_ikRobotArmQVVD>() {
            public byte[] encode(Ros1Motion_capture_ikRobotArmQVVD value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Motion_capture_ikRobotArmQVVD(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Motion_capture_ikRobotArmQVVD decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Motion_capture_ikRobotArmQVVD value = readRos1Motion_capture_ikRobotArmQVVD(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Motion_capture_ikRobotArmQVVD(Codecs.Writer writer, Ros1Motion_capture_ikRobotArmQVVD value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        double[] part0 = value.q;
        if(part0 == null || part0.length > 16)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part0.length, 4, false);
        for(int i = 0; i < part0.length; ++i)
        {
            writer.f64(part0[i]);
        }
        double[] part1 = value.v;
        if(part1 == null || part1.length > 16)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part1.length, 4, false);
        for(int i = 0; i < part1.length; ++i)
        {
            writer.f64(part1[i]);
        }
        double[] part2 = value.vd;
        if(part2 == null || part2.length > 16)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part2.length, 4, false);
        for(int i = 0; i < part2.length; ++i)
        {
            writer.f64(part2[i]);
        }
    }

    private static Ros1Motion_capture_ikRobotArmQVVD readRos1Motion_capture_ikRobotArmQVVD(Codecs.Reader reader)
    {
        Ros1Motion_capture_ikRobotArmQVVD value = new Ros1Motion_capture_ikRobotArmQVVD();
        value.q = new double[readCount(reader, 16, 8)];
        for(int i = 0; i < value.q.length; ++i)
            value.q[i] = reader.f64();
        value.v = new double[readCount(reader, 16, 8)];
        for(int i = 0; i < value.v.length; ++i)
            value.v[i] = reader.f64();
        value.vd = new double[readCount(reader, 16, 8)];
        for(int i = 0; i < value.vd.length; ++i)
            value.vd[i] = reader.f64();
        return value;
    }

    public static final class Ros1Time
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "time";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_90b75571d2bcc21b824eb993b485a001bf97e281adda7907e1b2e3357e4804b0";
        public static final int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 8;
        public long sec = 0;
        public long nsec = 0;

        public Ros1Time()
        {
        }

        public static final Codec<Ros1Time> CODEC = new Codec<Ros1Time>() {
            public byte[] encode(Ros1Time value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Time(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Time decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Time value = readRos1Time(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Time(Codecs.Writer writer, Ros1Time value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        long part0 = value.sec;
        writer.integer(part0, 4, false);
        long part1 = value.nsec;
        writer.integer(part1, 4, false);
        if(part1 < 0 || part1 >= 1000000000L)
            throw new IllegalArgumentException("normalized subsecond field required");
    }

    private static Ros1Time readRos1Time(Codecs.Reader reader)
    {
        Ros1Time value = new Ros1Time();
        value.sec = reader.integer(4, false);
        value.nsec = reader.integer(4, false);
        if(value.nsec < 0 || value.nsec >= 1000000000L)
            throw new IllegalArgumentException("normalized subsecond field required");
        return value;
    }

    public static final class Ros1Std_msgsHeader
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "std_msgs/Header";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_5501bfd608c585c739688d051f0090563b3966c945bd84b7b2b3681fc61d47d7";
        public static final int MIN_WIRE_BYTES = 16, MAX_WIRE_BYTES = 272;
        public long seq = 0;
        public Ros1Time stamp = new Ros1Time();
        public String frame_id = "";

        public Ros1Std_msgsHeader()
        {
        }

        public static final Codec<Ros1Std_msgsHeader> CODEC = new Codec<Ros1Std_msgsHeader>() {
            public byte[] encode(Ros1Std_msgsHeader value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Std_msgsHeader(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Std_msgsHeader decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Std_msgsHeader value = readRos1Std_msgsHeader(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Std_msgsHeader(Codecs.Writer writer, Ros1Std_msgsHeader value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        long part0 = value.seq;
        writer.integer(part0, 4, false);
        Ros1Time part1 = value.stamp;
        writeRos1Time(writer, part1);
        String part2 = value.frame_id;
        writeText(writer, part2, 256);
    }

    private static Ros1Std_msgsHeader readRos1Std_msgsHeader(Codecs.Reader reader)
    {
        Ros1Std_msgsHeader value = new Ros1Std_msgsHeader();
        value.seq = reader.integer(4, false);
        value.stamp = readRos1Time(reader);
        value.frame_id = readText(reader, 256);
        return value;
    }

    public static final class Ros1Motion_capture_ikRobotHandPosition
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "motion_capture_ik/robotHandPosition";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_16c4f8c128cde34eba2cf878bad0706916193ba3b54f02dcd1e4556128e3b0aa";
        public static final int MIN_WIRE_BYTES = 24, MAX_WIRE_BYTES = 792;
        public Ros1Std_msgsHeader header = new Ros1Std_msgsHeader();
        public int[] left_hand_position = new int[0];
        public int[] right_hand_position = new int[0];

        public Ros1Motion_capture_ikRobotHandPosition()
        {
        }

        public static final Codec<Ros1Motion_capture_ikRobotHandPosition> CODEC = new Codec<Ros1Motion_capture_ikRobotHandPosition>() {
            public byte[] encode(Ros1Motion_capture_ikRobotHandPosition value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Motion_capture_ikRobotHandPosition(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Motion_capture_ikRobotHandPosition decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Motion_capture_ikRobotHandPosition value = readRos1Motion_capture_ikRobotHandPosition(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Motion_capture_ikRobotHandPosition(Codecs.Writer writer, Ros1Motion_capture_ikRobotHandPosition value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros1Std_msgsHeader part0 = value.header;
        writeRos1Std_msgsHeader(writer, part0);
        int[] part1 = value.left_hand_position;
        if(part1 == null || part1.length > 256)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part1.length, 4, false);
        for(int i = 0; i < part1.length; ++i)
        {
            writer.integer(part1[i], 1, false);
        }
        int[] part2 = value.right_hand_position;
        if(part2 == null || part2.length > 256)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part2.length, 4, false);
        for(int i = 0; i < part2.length; ++i)
        {
            writer.integer(part2[i], 1, false);
        }
    }

    private static Ros1Motion_capture_ikRobotHandPosition readRos1Motion_capture_ikRobotHandPosition(Codecs.Reader reader)
    {
        Ros1Motion_capture_ikRobotHandPosition value = new Ros1Motion_capture_ikRobotHandPosition();
        value.header = readRos1Std_msgsHeader(reader);
        value.left_hand_position = new int[readCount(reader, 256, 1)];
        for(int i = 0; i < value.left_hand_position.length; ++i)
            value.left_hand_position[i] = (int)reader.integer(1, false);
        value.right_hand_position = new int[readCount(reader, 256, 1)];
        for(int i = 0; i < value.right_hand_position.length; ++i)
            value.right_hand_position[i] = (int)reader.integer(1, false);
        return value;
    }

    public static final class Ros1Motion_capture_ikTwoArmHandPose
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "motion_capture_ik/twoArmHandPose";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_12c87f2d727015a1dd0d5c344812528ae43bfd48168fdaa68bac006fe0bbc181";
        public static final int MIN_WIRE_BYTES = 288, MAX_WIRE_BYTES = 544;
        public Ros1Std_msgsHeader header = new Ros1Std_msgsHeader();
        public Ros1Motion_capture_ikArmHandPose left_pose = new Ros1Motion_capture_ikArmHandPose();
        public Ros1Motion_capture_ikArmHandPose right_pose = new Ros1Motion_capture_ikArmHandPose();

        public Ros1Motion_capture_ikTwoArmHandPose()
        {
        }

        public static final Codec<Ros1Motion_capture_ikTwoArmHandPose> CODEC = new Codec<Ros1Motion_capture_ikTwoArmHandPose>() {
            public byte[] encode(Ros1Motion_capture_ikTwoArmHandPose value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Motion_capture_ikTwoArmHandPose(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Motion_capture_ikTwoArmHandPose decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Motion_capture_ikTwoArmHandPose value = readRos1Motion_capture_ikTwoArmHandPose(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Motion_capture_ikTwoArmHandPose(Codecs.Writer writer, Ros1Motion_capture_ikTwoArmHandPose value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros1Std_msgsHeader part0 = value.header;
        writeRos1Std_msgsHeader(writer, part0);
        Ros1Motion_capture_ikArmHandPose part1 = value.left_pose;
        writeRos1Motion_capture_ikArmHandPose(writer, part1);
        Ros1Motion_capture_ikArmHandPose part2 = value.right_pose;
        writeRos1Motion_capture_ikArmHandPose(writer, part2);
    }

    private static Ros1Motion_capture_ikTwoArmHandPose readRos1Motion_capture_ikTwoArmHandPose(Codecs.Reader reader)
    {
        Ros1Motion_capture_ikTwoArmHandPose value = new Ros1Motion_capture_ikTwoArmHandPose();
        value.header = readRos1Std_msgsHeader(reader);
        value.left_pose = readRos1Motion_capture_ikArmHandPose(reader);
        value.right_pose = readRos1Motion_capture_ikArmHandPose(reader);
        return value;
    }

    public static final class Ros1Motion_capture_ikTwoArmHandPoseCmd
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "motion_capture_ik/twoArmHandPoseCmd";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_aa53de9aca25b5e5ad518a3e3fd6a36f9501d620da4fbd56721a15b693ce6acc";
        public static final int MIN_WIRE_BYTES = 346, MAX_WIRE_BYTES = 602;
        public Ros1Motion_capture_ikTwoArmHandPose hand_poses = new Ros1Motion_capture_ikTwoArmHandPose();
        public boolean use_custom_ik_param = false;
        public boolean joint_angles_as_q0 = false;
        public Ros1Motion_capture_ikIkSolveParam ik_param = new Ros1Motion_capture_ikIkSolveParam();

        public Ros1Motion_capture_ikTwoArmHandPoseCmd()
        {
        }

        public static final Codec<Ros1Motion_capture_ikTwoArmHandPoseCmd> CODEC = new Codec<Ros1Motion_capture_ikTwoArmHandPoseCmd>() {
            public byte[] encode(Ros1Motion_capture_ikTwoArmHandPoseCmd value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Motion_capture_ikTwoArmHandPoseCmd(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Motion_capture_ikTwoArmHandPoseCmd decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Motion_capture_ikTwoArmHandPoseCmd value = readRos1Motion_capture_ikTwoArmHandPoseCmd(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Motion_capture_ikTwoArmHandPoseCmd(Codecs.Writer writer, Ros1Motion_capture_ikTwoArmHandPoseCmd value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros1Motion_capture_ikTwoArmHandPose part0 = value.hand_poses;
        writeRos1Motion_capture_ikTwoArmHandPose(writer, part0);
        boolean part1 = value.use_custom_ik_param;
        writer.integer(part1 ? 1 : 0, 1, false);
        boolean part2 = value.joint_angles_as_q0;
        writer.integer(part2 ? 1 : 0, 1, false);
        Ros1Motion_capture_ikIkSolveParam part3 = value.ik_param;
        writeRos1Motion_capture_ikIkSolveParam(writer, part3);
    }

    private static Ros1Motion_capture_ikTwoArmHandPoseCmd readRos1Motion_capture_ikTwoArmHandPoseCmd(Codecs.Reader reader)
    {
        Ros1Motion_capture_ikTwoArmHandPoseCmd value = new Ros1Motion_capture_ikTwoArmHandPoseCmd();
        value.hand_poses = readRos1Motion_capture_ikTwoArmHandPose(reader);
        value.use_custom_ik_param = readBool(reader);
        value.joint_angles_as_q0 = readBool(reader);
        value.ik_param = readRos1Motion_capture_ikIkSolveParam(reader);
        return value;
    }

    public static final class Ros1Motion_capture_ikTwoArmHandPoseFree
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "motion_capture_ik/twoArmHandPoseFree";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_2b0e1aadf4405084b26888548a9c33bb9be57ec8f606122857a3b18c2a6f572c";
        public static final int MIN_WIRE_BYTES = 184, MAX_WIRE_BYTES = 696;
        public Ros1Std_msgsHeader header = new Ros1Std_msgsHeader();
        public Ros1Motion_capture_ikArmHandPoseFree left_pose = new Ros1Motion_capture_ikArmHandPoseFree();
        public Ros1Motion_capture_ikArmHandPoseFree right_pose = new Ros1Motion_capture_ikArmHandPoseFree();

        public Ros1Motion_capture_ikTwoArmHandPoseFree()
        {
        }

        public static final Codec<Ros1Motion_capture_ikTwoArmHandPoseFree> CODEC = new Codec<Ros1Motion_capture_ikTwoArmHandPoseFree>() {
            public byte[] encode(Ros1Motion_capture_ikTwoArmHandPoseFree value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Motion_capture_ikTwoArmHandPoseFree(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Motion_capture_ikTwoArmHandPoseFree decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Motion_capture_ikTwoArmHandPoseFree value = readRos1Motion_capture_ikTwoArmHandPoseFree(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Motion_capture_ikTwoArmHandPoseFree(Codecs.Writer writer, Ros1Motion_capture_ikTwoArmHandPoseFree value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros1Std_msgsHeader part0 = value.header;
        writeRos1Std_msgsHeader(writer, part0);
        Ros1Motion_capture_ikArmHandPoseFree part1 = value.left_pose;
        writeRos1Motion_capture_ikArmHandPoseFree(writer, part1);
        Ros1Motion_capture_ikArmHandPoseFree part2 = value.right_pose;
        writeRos1Motion_capture_ikArmHandPoseFree(writer, part2);
    }

    private static Ros1Motion_capture_ikTwoArmHandPoseFree readRos1Motion_capture_ikTwoArmHandPoseFree(Codecs.Reader reader)
    {
        Ros1Motion_capture_ikTwoArmHandPoseFree value = new Ros1Motion_capture_ikTwoArmHandPoseFree();
        value.header = readRos1Std_msgsHeader(reader);
        value.left_pose = readRos1Motion_capture_ikArmHandPoseFree(reader);
        value.right_pose = readRos1Motion_capture_ikArmHandPoseFree(reader);
        return value;
    }

    public static final class Ros1Motion_capture_ikTwoArmHandPoseCmdFree
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "motion_capture_ik/twoArmHandPoseCmdFree";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_425b1b5b856ec8d0d019829cf48728723199ff79e2b6fa5aaa3f045f1c4f8773";
        public static final int MIN_WIRE_BYTES = 242, MAX_WIRE_BYTES = 754;
        public Ros1Motion_capture_ikTwoArmHandPoseFree hand_poses = new Ros1Motion_capture_ikTwoArmHandPoseFree();
        public boolean use_custom_ik_param = false;
        public boolean joint_angles_as_q0 = false;
        public Ros1Motion_capture_ikIkSolveParam ik_param = new Ros1Motion_capture_ikIkSolveParam();

        public Ros1Motion_capture_ikTwoArmHandPoseCmdFree()
        {
        }

        public static final Codec<Ros1Motion_capture_ikTwoArmHandPoseCmdFree> CODEC = new Codec<Ros1Motion_capture_ikTwoArmHandPoseCmdFree>() {
            public byte[] encode(Ros1Motion_capture_ikTwoArmHandPoseCmdFree value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);
                writeRos1Motion_capture_ikTwoArmHandPoseCmdFree(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            public Ros1Motion_capture_ikTwoArmHandPoseCmdFree decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Motion_capture_ikTwoArmHandPoseCmdFree value = readRos1Motion_capture_ikTwoArmHandPoseCmdFree(reader);
                reader.end();
                return value;
            }
        };
    }

    private static void writeRos1Motion_capture_ikTwoArmHandPoseCmdFree(Codecs.Writer writer, Ros1Motion_capture_ikTwoArmHandPoseCmdFree value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros1Motion_capture_ikTwoArmHandPoseFree part0 = value.hand_poses;
        writeRos1Motion_capture_ikTwoArmHandPoseFree(writer, part0);
        boolean part1 = value.use_custom_ik_param;
        writer.integer(part1 ? 1 : 0, 1, false);
        boolean part2 = value.joint_angles_as_q0;
        writer.integer(part2 ? 1 : 0, 1, false);
        Ros1Motion_capture_ikIkSolveParam part3 = value.ik_param;
        writeRos1Motion_capture_ikIkSolveParam(writer, part3);
    }

    private static Ros1Motion_capture_ikTwoArmHandPoseCmdFree readRos1Motion_capture_ikTwoArmHandPoseCmdFree(Codecs.Reader reader)
    {
        Ros1Motion_capture_ikTwoArmHandPoseCmdFree value = new Ros1Motion_capture_ikTwoArmHandPoseCmdFree();
        value.hand_poses = readRos1Motion_capture_ikTwoArmHandPoseFree(reader);
        value.use_custom_ik_param = readBool(reader);
        value.joint_angles_as_q0 = readBool(reader);
        value.ik_param = readRos1Motion_capture_ikIkSolveParam(reader);
        return value;
    }
}
